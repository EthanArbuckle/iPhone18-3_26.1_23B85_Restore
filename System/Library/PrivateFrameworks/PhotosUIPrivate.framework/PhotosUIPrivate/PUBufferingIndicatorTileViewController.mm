@interface PUBufferingIndicatorTileViewController
+ (BOOL)canShowBufferingIndicatorTileForAsset:(id)asset;
+ (CGSize)bufferingIndicatorTileSize;
- (void)_handleErrorButton:(id)button;
- (void)_setIndicatorStyle:(int64_t)style animated:(BOOL)animated;
- (void)_setVideoPlayer:(id)player;
- (void)_updateIndicator;
- (void)becomeReusable;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setAssetViewModel:(id)model;
- (void)setBrowsingViewModel:(id)model;
- (void)setMergedVideoProvider:(id)provider;
- (void)viewModel:(id)model didChange:(id)change;
@end

@implementation PUBufferingIndicatorTileViewController

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if (MergedVideoProviderContext == context)
  {
    changeCopy = change;
    observableCopy = observable;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      if ((changeCopy & 1) == 0)
      {
        return;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUBufferingIndicatorTileViewController.m" lineNumber:268 description:{@"Invalid parameter not satisfying: %@", @"[observable isKindOfClass:[PUOneUpMergedVideoProvider class]]"}];

      if ((changeCopy & 1) == 0)
      {
        return;
      }
    }

    px_dispatch_on_main_queue();
  }
}

- (void)viewModel:(id)model didChange:(id)change
{
  modelCopy = model;
  changeCopy = change;
  _videoPlayer = [(PUBufferingIndicatorTileViewController *)self _videoPlayer];

  if (_videoPlayer == modelCopy)
  {
    assetViewModel2 = changeCopy;
    if (([assetViewModel2 playStateDidChange] & 1) != 0 || (objc_msgSend(assetViewModel2, "isStalledDidChange") & 1) != 0 || (objc_msgSend(assetViewModel2, "errorDidChange") & 1) != 0 || (objc_msgSend(assetViewModel2, "isActivatedDidChange") & 1) != 0 || objc_msgSend(assetViewModel2, "desiredPlayStateDidChange"))
    {
      [(PUBufferingIndicatorTileViewController *)self _updateIndicator];
    }

    goto LABEL_12;
  }

  browsingViewModel = [(PUBufferingIndicatorTileViewController *)self browsingViewModel];

  if (browsingViewModel == modelCopy)
  {
    if ([changeCopy isAttemptingToPlayVideoOverlayDidChange])
    {
      [(PUBufferingIndicatorTileViewController *)self _updateIndicator];
    }
  }

  else
  {
    assetViewModel = [(PUBufferingIndicatorTileViewController *)self assetViewModel];

    if (assetViewModel == modelCopy && [changeCopy videoPlayerDidChange])
    {
      assetViewModel2 = [(PUBufferingIndicatorTileViewController *)self assetViewModel];
      videoPlayer = [assetViewModel2 videoPlayer];
      [(PUBufferingIndicatorTileViewController *)self _setVideoPlayer:videoPlayer];

LABEL_12:
    }
  }
}

- (void)_updateIndicator
{
  v19 = *MEMORY[0x1E69E9840];
  _videoPlayer = [(PUBufferingIndicatorTileViewController *)self _videoPlayer];
  playState = [_videoPlayer playState];
  browsingViewModel = [(PUBufferingIndicatorTileViewController *)self browsingViewModel];
  isAttemptingToPlayVideoOverlay = [browsingViewModel isAttemptingToPlayVideoOverlay];

  mergedVideoProvider = [(PUBufferingIndicatorTileViewController *)self mergedVideoProvider];
  state = [mergedVideoProvider state];
  assetSharedViewModel = [(PUAssetViewModel *)self->_assetViewModel assetSharedViewModel];
  if (playState == 5)
  {
    v10 = 0;
  }

  else if ((([_videoPlayer isStalled] & 1) != 0 || playState == 1 && objc_msgSend(_videoPlayer, "isPlaybackDesired")) && !objc_msgSend(assetSharedViewModel, "needsDeferredProcessing"))
  {
    v10 = 1;
  }

  else
  {
    if (state == 3)
    {
      v11 = isAttemptingToPlayVideoOverlay;
    }

    else
    {
      v11 = 0;
    }

    if (v11 == 1)
    {
      v12 = PLOneUpGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        error = [mergedVideoProvider error];
        v17 = 138412290;
        v18 = error;
        _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_ERROR, "Showing live photo playback error indicator: %@", &v17, 0xCu);
      }

      v10 = 2;
    }

    else if (state == 1)
    {
      v10 = isAttemptingToPlayVideoOverlay;
    }

    else
    {
      v10 = 0;
    }
  }

  v14 = +[PUOneUpSettings sharedInstance];
  showBufferingIndicatorDuringPlay = [v14 showBufferingIndicatorDuringPlay];

  if ((showBufferingIndicatorDuringPlay & (playState == 3)) != 0)
  {
    v16 = 1;
  }

  else
  {
    v16 = v10;
  }

  [(PUBufferingIndicatorTileViewController *)self _setIndicatorStyle:v16 animated:1];
}

- (void)_handleErrorButton:(id)button
{
  errorAlertControllerDisplayer = [(PUBufferingIndicatorTileViewController *)self errorAlertControllerDisplayer];

  if (!errorAlertControllerDisplayer)
  {
    return;
  }

  _videoPlayer = [(PUBufferingIndicatorTileViewController *)self _videoPlayer];
  mergedVideoProvider = [(PUBufferingIndicatorTileViewController *)self mergedVideoProvider];
  if ([_videoPlayer playState] == 5)
  {
    v7 = @"VIDEO_PLAYBACK_ERROR_TITLE";
    v8 = _videoPlayer;
  }

  else
  {
    if ([mergedVideoProvider state] != 3)
    {
      localizedDescription = 0;
LABEL_13:
      v12 = PULocalizedString(@"GENERAL_PLAYBACK_ERROR_TITLE");
      if (localizedDescription)
      {
        goto LABEL_9;
      }

LABEL_14:
      localizedDescription = PULocalizedString(@"GENERAL_PLAYBACK_ERROR_MESSAGE");
      goto LABEL_9;
    }

    v7 = @"LIVE_PHOTO_PLAYBACK_ERROR_TITLE";
    v8 = mergedVideoProvider;
  }

  v12 = PULocalizedString(v7);
  error = [v8 error];
  localizedDescription = [error localizedDescription];

  if (!v12)
  {
    goto LABEL_13;
  }

  if (!localizedDescription)
  {
    goto LABEL_14;
  }

LABEL_9:
  errorAlertControllerDisplayer2 = [(PUBufferingIndicatorTileViewController *)self errorAlertControllerDisplayer];
  (errorAlertControllerDisplayer2)[2](errorAlertControllerDisplayer2, v12, localizedDescription);
}

- (void)_setIndicatorStyle:(int64_t)style animated:(BOOL)animated
{
  if (self->__indicatorStyle != style)
  {
    v61 = v11;
    v62 = v10;
    v63 = v9;
    v64 = v8;
    v65 = v7;
    v66 = v6;
    v67 = v4;
    v68 = v5;
    animatedCopy = animated;
    self->__indicatorStyle = style;
    _spinner = [(PUBufferingIndicatorTileViewController *)self _spinner];
    v16 = _spinner;
    v17 = style == 1;
    if (style == 1 && !_spinner)
    {
      v16 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:101];
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      [v16 setColor:whiteColor];

      [v16 setAlpha:0.0];
      [v16 setAutoresizingMask:45];
      view = [(PUTileViewController *)self view];
      [view bounds];
      x = v69.origin.x;
      y = v69.origin.y;
      width = v69.size.width;
      height = v69.size.height;
      MidX = CGRectGetMidX(v69);
      v70.origin.x = x;
      v70.origin.y = y;
      v70.size.width = width;
      v70.size.height = height;
      [v16 setCenter:{MidX, CGRectGetMidY(v70)}];
      [view addSubview:v16];
      [(PUBufferingIndicatorTileViewController *)self _setSpinner:v16];
    }

    v25 = [v16 tag] + 1;
    [v16 setTag:v25];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __70__PUBufferingIndicatorTileViewController__setIndicatorStyle_animated___block_invoke;
    aBlock[3] = &unk_1E7B7FA58;
    v26 = v16;
    v58 = v26;
    v59 = v25;
    v60 = style == 1;
    v27 = _Block_copy(aBlock);
    _errorButton = [(PUBufferingIndicatorTileViewController *)self _errorButton];
    v29 = _errorButton;
    if (style == 2 && !_errorButton)
    {
      v29 = [MEMORY[0x1E69DC738] buttonWithType:0];
      [v29 addTarget:self action:sel__handleErrorButton_ forControlEvents:0x2000];
      v30 = +[PUInterfaceManager currentTheme];
      regularLoadErrorIcon = [v30 regularLoadErrorIcon];
      [v29 setImage:regularLoadErrorIcon forState:0];

      [v29 sizeToFit];
      [v29 setAlpha:0.0];
      [v29 setAutoresizingMask:45];
      view2 = [(PUTileViewController *)self view];
      [view2 bounds];
      v33 = v71.origin.x;
      v34 = v71.origin.y;
      v35 = v71.size.width;
      v36 = v71.size.height;
      v37 = CGRectGetMidX(v71);
      v72.origin.x = v33;
      v72.origin.y = v34;
      v72.size.width = v35;
      v72.size.height = v36;
      [v29 setCenter:{v37, CGRectGetMidY(v72)}];
      [view2 addSubview:v29];
      [(PUBufferingIndicatorTileViewController *)self _setErrorButton:v29];
    }

    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __70__PUBufferingIndicatorTileViewController__setIndicatorStyle_animated___block_invoke_2;
    v52[3] = &unk_1E7B75FA8;
    v38 = v26;
    v53 = v38;
    v55 = style == 1;
    v39 = v29;
    v54 = v39;
    v56 = style == 2;
    v40 = _Block_copy(v52);
    v41 = v40;
    if (animatedCopy)
    {
      browsingViewModel = [(PUBufferingIndicatorTileViewController *)self browsingViewModel];
      isAttemptingToPlayVideoOverlay = [browsingViewModel isAttemptingToPlayVideoOverlay];

      if (((style == 1) & (isAttemptingToPlayVideoOverlay ^ 1)) != 0)
      {
        v44 = 1.0;
      }

      else
      {
        v44 = 0.0;
      }

      v45 = dbl_1B3D0CE60[style == 1];
      if (style == 1)
      {
        v27[2](v27);
      }

      v46 = MEMORY[0x1E69DD250];
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __70__PUBufferingIndicatorTileViewController__setIndicatorStyle_animated___block_invoke_3;
      v50[3] = &unk_1E7B80C88;
      v51 = v41;
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __70__PUBufferingIndicatorTileViewController__setIndicatorStyle_animated___block_invoke_4;
      v47[3] = &unk_1E7B75FD0;
      v49 = v17;
      v48 = v27;
      [v46 animateWithDuration:4 delay:v50 options:v47 animations:v45 completion:v44];
    }

    else
    {
      (*(v40 + 2))(v40);
      v27[2](v27);
    }
  }
}

uint64_t __70__PUBufferingIndicatorTileViewController__setIndicatorStyle_animated___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) tag];
  if (result == *(a1 + 40))
  {
    v3 = *(a1 + 32);
    if (*(a1 + 48) == 1)
    {

      return [v3 startAnimating];
    }

    else
    {

      return [v3 stopAnimating];
    }
  }

  return result;
}

uint64_t __70__PUBufferingIndicatorTileViewController__setIndicatorStyle_animated___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 48))
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  [v2 setAlpha:v3];
  v4 = *(a1 + 40);
  if (*(a1 + 49))
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  return [v4 setAlpha:v5];
}

uint64_t __70__PUBufferingIndicatorTileViewController__setIndicatorStyle_animated___block_invoke_4(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)setMergedVideoProvider:(id)provider
{
  providerCopy = provider;
  mergedVideoProvider = self->_mergedVideoProvider;
  if (mergedVideoProvider != providerCopy)
  {
    v7 = providerCopy;
    [(PUOneUpMergedVideoProvider *)mergedVideoProvider unregisterChangeObserver:self context:MergedVideoProviderContext];
    objc_storeStrong(&self->_mergedVideoProvider, provider);
    [(PUOneUpMergedVideoProvider *)self->_mergedVideoProvider registerChangeObserver:self context:MergedVideoProviderContext];
    mergedVideoProvider = [(PUBufferingIndicatorTileViewController *)self _updateIndicator];
    providerCopy = v7;
  }

  MEMORY[0x1EEE66BB8](mergedVideoProvider, providerCopy);
}

- (void)setBrowsingViewModel:(id)model
{
  modelCopy = model;
  browsingViewModel = self->_browsingViewModel;
  if (browsingViewModel != modelCopy)
  {
    v7 = modelCopy;
    [(PUBrowsingViewModel *)browsingViewModel unregisterChangeObserver:self];
    objc_storeStrong(&self->_browsingViewModel, model);
    browsingViewModel = [(PUBrowsingViewModel *)self->_browsingViewModel registerChangeObserver:self];
    modelCopy = v7;
  }

  MEMORY[0x1EEE66BB8](browsingViewModel, modelCopy);
}

- (void)_setVideoPlayer:(id)player
{
  playerCopy = player;
  videoPlayer = self->__videoPlayer;
  if (videoPlayer != playerCopy)
  {
    v7 = playerCopy;
    [(PUBrowsingVideoPlayer *)videoPlayer unregisterChangeObserver:self];
    objc_storeStrong(&self->__videoPlayer, player);
    [(PUBrowsingVideoPlayer *)self->__videoPlayer registerChangeObserver:self];
    videoPlayer = [(PUBufferingIndicatorTileViewController *)self _updateIndicator];
    playerCopy = v7;
  }

  MEMORY[0x1EEE66BB8](videoPlayer, playerCopy);
}

- (void)setAssetViewModel:(id)model
{
  modelCopy = model;
  assetViewModel = self->_assetViewModel;
  if (assetViewModel != modelCopy)
  {
    v8 = modelCopy;
    [(PUAssetViewModel *)assetViewModel unregisterChangeObserver:self];
    objc_storeStrong(&self->_assetViewModel, model);
    [(PUAssetViewModel *)self->_assetViewModel registerChangeObserver:self];
    videoPlayer = [(PUAssetViewModel *)v8 videoPlayer];
    [(PUBufferingIndicatorTileViewController *)self _setVideoPlayer:videoPlayer];

    modelCopy = v8;
  }

  MEMORY[0x1EEE66BB8](assetViewModel, modelCopy);
}

- (void)becomeReusable
{
  v3.receiver = self;
  v3.super_class = PUBufferingIndicatorTileViewController;
  [(PUTileViewController *)&v3 becomeReusable];
  [(PUBufferingIndicatorTileViewController *)self setBrowsingViewModel:0];
  [(PUBufferingIndicatorTileViewController *)self setAssetViewModel:0];
  [(PUBufferingIndicatorTileViewController *)self setErrorAlertControllerDisplayer:0];
  [(PUBufferingIndicatorTileViewController *)self setMergedVideoProvider:0];
  [(PUBufferingIndicatorTileViewController *)self _setIndicatorStyle:0 animated:0];
}

+ (CGSize)bufferingIndicatorTileSize
{
  v2 = 100.0;
  v3 = 100.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (BOOL)canShowBufferingIndicatorTileForAsset:(id)asset
{
  assetCopy = asset;
  v4 = [assetCopy mediaType] == 2 || objc_msgSend(assetCopy, "playbackStyle") == 3 || objc_msgSend(assetCopy, "playbackStyle") == 5;

  return v4;
}

@end