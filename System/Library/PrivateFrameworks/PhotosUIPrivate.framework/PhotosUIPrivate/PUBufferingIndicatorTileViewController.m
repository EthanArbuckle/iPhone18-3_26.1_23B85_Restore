@interface PUBufferingIndicatorTileViewController
+ (BOOL)canShowBufferingIndicatorTileForAsset:(id)a3;
+ (CGSize)bufferingIndicatorTileSize;
- (void)_handleErrorButton:(id)a3;
- (void)_setIndicatorStyle:(int64_t)a3 animated:(BOOL)a4;
- (void)_setVideoPlayer:(id)a3;
- (void)_updateIndicator;
- (void)becomeReusable;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setAssetViewModel:(id)a3;
- (void)setBrowsingViewModel:(id)a3;
- (void)setMergedVideoProvider:(id)a3;
- (void)viewModel:(id)a3 didChange:(id)a4;
@end

@implementation PUBufferingIndicatorTileViewController

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  if (MergedVideoProviderContext == a5)
  {
    v5 = a4;
    v8 = a3;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      if ((v5 & 1) == 0)
      {
        return;
      }
    }

    else
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"PUBufferingIndicatorTileViewController.m" lineNumber:268 description:{@"Invalid parameter not satisfying: %@", @"[observable isKindOfClass:[PUOneUpMergedVideoProvider class]]"}];

      if ((v5 & 1) == 0)
      {
        return;
      }
    }

    px_dispatch_on_main_queue();
  }
}

- (void)viewModel:(id)a3 didChange:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(PUBufferingIndicatorTileViewController *)self _videoPlayer];

  if (v7 == v12)
  {
    v10 = v6;
    if (([v10 playStateDidChange] & 1) != 0 || (objc_msgSend(v10, "isStalledDidChange") & 1) != 0 || (objc_msgSend(v10, "errorDidChange") & 1) != 0 || (objc_msgSend(v10, "isActivatedDidChange") & 1) != 0 || objc_msgSend(v10, "desiredPlayStateDidChange"))
    {
      [(PUBufferingIndicatorTileViewController *)self _updateIndicator];
    }

    goto LABEL_12;
  }

  v8 = [(PUBufferingIndicatorTileViewController *)self browsingViewModel];

  if (v8 == v12)
  {
    if ([v6 isAttemptingToPlayVideoOverlayDidChange])
    {
      [(PUBufferingIndicatorTileViewController *)self _updateIndicator];
    }
  }

  else
  {
    v9 = [(PUBufferingIndicatorTileViewController *)self assetViewModel];

    if (v9 == v12 && [v6 videoPlayerDidChange])
    {
      v10 = [(PUBufferingIndicatorTileViewController *)self assetViewModel];
      v11 = [v10 videoPlayer];
      [(PUBufferingIndicatorTileViewController *)self _setVideoPlayer:v11];

LABEL_12:
    }
  }
}

- (void)_updateIndicator
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(PUBufferingIndicatorTileViewController *)self _videoPlayer];
  v4 = [v3 playState];
  v5 = [(PUBufferingIndicatorTileViewController *)self browsingViewModel];
  v6 = [v5 isAttemptingToPlayVideoOverlay];

  v7 = [(PUBufferingIndicatorTileViewController *)self mergedVideoProvider];
  v8 = [v7 state];
  v9 = [(PUAssetViewModel *)self->_assetViewModel assetSharedViewModel];
  if (v4 == 5)
  {
    v10 = 0;
  }

  else if ((([v3 isStalled] & 1) != 0 || v4 == 1 && objc_msgSend(v3, "isPlaybackDesired")) && !objc_msgSend(v9, "needsDeferredProcessing"))
  {
    v10 = 1;
  }

  else
  {
    if (v8 == 3)
    {
      v11 = v6;
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
        v13 = [v7 error];
        v17 = 138412290;
        v18 = v13;
        _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_ERROR, "Showing live photo playback error indicator: %@", &v17, 0xCu);
      }

      v10 = 2;
    }

    else if (v8 == 1)
    {
      v10 = v6;
    }

    else
    {
      v10 = 0;
    }
  }

  v14 = +[PUOneUpSettings sharedInstance];
  v15 = [v14 showBufferingIndicatorDuringPlay];

  if ((v15 & (v4 == 3)) != 0)
  {
    v16 = 1;
  }

  else
  {
    v16 = v10;
  }

  [(PUBufferingIndicatorTileViewController *)self _setIndicatorStyle:v16 animated:1];
}

- (void)_handleErrorButton:(id)a3
{
  v4 = [(PUBufferingIndicatorTileViewController *)self errorAlertControllerDisplayer];

  if (!v4)
  {
    return;
  }

  v5 = [(PUBufferingIndicatorTileViewController *)self _videoPlayer];
  v6 = [(PUBufferingIndicatorTileViewController *)self mergedVideoProvider];
  if ([v5 playState] == 5)
  {
    v7 = @"VIDEO_PLAYBACK_ERROR_TITLE";
    v8 = v5;
  }

  else
  {
    if ([v6 state] != 3)
    {
      v10 = 0;
LABEL_13:
      v12 = PULocalizedString(@"GENERAL_PLAYBACK_ERROR_TITLE");
      if (v10)
      {
        goto LABEL_9;
      }

LABEL_14:
      v10 = PULocalizedString(@"GENERAL_PLAYBACK_ERROR_MESSAGE");
      goto LABEL_9;
    }

    v7 = @"LIVE_PHOTO_PLAYBACK_ERROR_TITLE";
    v8 = v6;
  }

  v12 = PULocalizedString(v7);
  v9 = [v8 error];
  v10 = [v9 localizedDescription];

  if (!v12)
  {
    goto LABEL_13;
  }

  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_9:
  v11 = [(PUBufferingIndicatorTileViewController *)self errorAlertControllerDisplayer];
  (v11)[2](v11, v12, v10);
}

- (void)_setIndicatorStyle:(int64_t)a3 animated:(BOOL)a4
{
  if (self->__indicatorStyle != a3)
  {
    v61 = v11;
    v62 = v10;
    v63 = v9;
    v64 = v8;
    v65 = v7;
    v66 = v6;
    v67 = v4;
    v68 = v5;
    v12 = a4;
    self->__indicatorStyle = a3;
    v15 = [(PUBufferingIndicatorTileViewController *)self _spinner];
    v16 = v15;
    v17 = a3 == 1;
    if (a3 == 1 && !v15)
    {
      v16 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:101];
      v18 = [MEMORY[0x1E69DC888] whiteColor];
      [v16 setColor:v18];

      [v16 setAlpha:0.0];
      [v16 setAutoresizingMask:45];
      v19 = [(PUTileViewController *)self view];
      [v19 bounds];
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
      [v19 addSubview:v16];
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
    v60 = a3 == 1;
    v27 = _Block_copy(aBlock);
    v28 = [(PUBufferingIndicatorTileViewController *)self _errorButton];
    v29 = v28;
    if (a3 == 2 && !v28)
    {
      v29 = [MEMORY[0x1E69DC738] buttonWithType:0];
      [v29 addTarget:self action:sel__handleErrorButton_ forControlEvents:0x2000];
      v30 = +[PUInterfaceManager currentTheme];
      v31 = [v30 regularLoadErrorIcon];
      [v29 setImage:v31 forState:0];

      [v29 sizeToFit];
      [v29 setAlpha:0.0];
      [v29 setAutoresizingMask:45];
      v32 = [(PUTileViewController *)self view];
      [v32 bounds];
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
      [v32 addSubview:v29];
      [(PUBufferingIndicatorTileViewController *)self _setErrorButton:v29];
    }

    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __70__PUBufferingIndicatorTileViewController__setIndicatorStyle_animated___block_invoke_2;
    v52[3] = &unk_1E7B75FA8;
    v38 = v26;
    v53 = v38;
    v55 = a3 == 1;
    v39 = v29;
    v54 = v39;
    v56 = a3 == 2;
    v40 = _Block_copy(v52);
    v41 = v40;
    if (v12)
    {
      v42 = [(PUBufferingIndicatorTileViewController *)self browsingViewModel];
      v43 = [v42 isAttemptingToPlayVideoOverlay];

      if (((a3 == 1) & (v43 ^ 1)) != 0)
      {
        v44 = 1.0;
      }

      else
      {
        v44 = 0.0;
      }

      v45 = dbl_1B3D0CE60[a3 == 1];
      if (a3 == 1)
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

- (void)setMergedVideoProvider:(id)a3
{
  v5 = a3;
  mergedVideoProvider = self->_mergedVideoProvider;
  if (mergedVideoProvider != v5)
  {
    v7 = v5;
    [(PUOneUpMergedVideoProvider *)mergedVideoProvider unregisterChangeObserver:self context:MergedVideoProviderContext];
    objc_storeStrong(&self->_mergedVideoProvider, a3);
    [(PUOneUpMergedVideoProvider *)self->_mergedVideoProvider registerChangeObserver:self context:MergedVideoProviderContext];
    mergedVideoProvider = [(PUBufferingIndicatorTileViewController *)self _updateIndicator];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](mergedVideoProvider, v5);
}

- (void)setBrowsingViewModel:(id)a3
{
  v5 = a3;
  browsingViewModel = self->_browsingViewModel;
  if (browsingViewModel != v5)
  {
    v7 = v5;
    [(PUBrowsingViewModel *)browsingViewModel unregisterChangeObserver:self];
    objc_storeStrong(&self->_browsingViewModel, a3);
    browsingViewModel = [(PUBrowsingViewModel *)self->_browsingViewModel registerChangeObserver:self];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](browsingViewModel, v5);
}

- (void)_setVideoPlayer:(id)a3
{
  v5 = a3;
  videoPlayer = self->__videoPlayer;
  if (videoPlayer != v5)
  {
    v7 = v5;
    [(PUBrowsingVideoPlayer *)videoPlayer unregisterChangeObserver:self];
    objc_storeStrong(&self->__videoPlayer, a3);
    [(PUBrowsingVideoPlayer *)self->__videoPlayer registerChangeObserver:self];
    videoPlayer = [(PUBufferingIndicatorTileViewController *)self _updateIndicator];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](videoPlayer, v5);
}

- (void)setAssetViewModel:(id)a3
{
  v5 = a3;
  assetViewModel = self->_assetViewModel;
  if (assetViewModel != v5)
  {
    v8 = v5;
    [(PUAssetViewModel *)assetViewModel unregisterChangeObserver:self];
    objc_storeStrong(&self->_assetViewModel, a3);
    [(PUAssetViewModel *)self->_assetViewModel registerChangeObserver:self];
    v7 = [(PUAssetViewModel *)v8 videoPlayer];
    [(PUBufferingIndicatorTileViewController *)self _setVideoPlayer:v7];

    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](assetViewModel, v5);
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

+ (BOOL)canShowBufferingIndicatorTileForAsset:(id)a3
{
  v3 = a3;
  v4 = [v3 mediaType] == 2 || objc_msgSend(v3, "playbackStyle") == 3 || objc_msgSend(v3, "playbackStyle") == 5;

  return v4;
}

@end