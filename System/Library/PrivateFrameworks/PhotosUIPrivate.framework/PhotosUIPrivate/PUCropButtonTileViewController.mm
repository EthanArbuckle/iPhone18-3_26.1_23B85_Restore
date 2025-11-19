@interface PUCropButtonTileViewController
+ (BOOL)shouldShowCropButtonTileForAsset:(id)a3;
- (BOOL)_canShowButton;
- (BOOL)_hasUserZoomedIn;
- (CGSize)oneUpCropButtonBoundingSize:(id)a3;
- (CGSize)oneUpCropButtonCurrentAspectRatio:(id)a3;
- (CGSize)oneUpCropButtonOriginalAspectRatio:(id)a3;
- (PUCropButtonTileViewControllerDelegate)delegate;
- (UIView)cropButton;
- (void)_3DToggleDidChange:(id)a3;
- (void)_createButtonIfNeeded;
- (void)_didChangeChromeVisible:(BOOL)a3;
- (void)_didChangeCurrentAsset;
- (void)_didChangeModelTileTransform:(id)a3;
- (void)_dismissButtonAfterDelay;
- (void)_invalidateTimers;
- (void)_layoutSubviews;
- (void)_showButton:(BOOL)a3 animated:(BOOL)a4;
- (void)_updateApplyEDRGainToButton;
- (void)_updatePreventDismissalReason:(unint64_t)a3 activate:(BOOL)a4;
- (void)_updatePreventDismissalReasons;
- (void)becomeReusable;
- (void)dealloc;
- (void)didChangeVisibleRect;
- (void)oneUpCropButton:(id)a3 didSelectAspectRatio:(CGSize)a4;
- (void)setAssetViewModel:(id)a3;
- (void)setBrowsingViewModel:(id)a3;
- (void)setPresentingTip:(BOOL)a3;
- (void)setPreventDismissal:(BOOL)a3;
- (void)setPreventDismissalReasons:(unint64_t)a3;
- (void)viewDidLoad;
- (void)viewModel:(id)a3 didChange:(id)a4;
@end

@implementation PUCropButtonTileViewController

- (PUCropButtonTileViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)oneUpCropButtonOriginalAspectRatio:(id)a3
{
  v4 = a3;
  v5 = [(PUCropButtonTileViewController *)self assetViewModel];
  v6 = [v5 asset];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    [v7 fetchPropertySetsIfNeeded];
    v8 = [v7 originalMetadataProperties];

    [v8 originalWidth];
    [v8 originalHeight];
    [v8 originalExifOrientation];
    PLOrientationTransformImageSize();
    v10 = v9;
    v12 = v11;
  }

  else
  {
    [(PUCropButtonTileViewController *)self oneUpCropButtonCurrentAspectRatio:v4];
    v10 = v13;
    v12 = v14;
  }

  v15 = v10;
  v16 = v12;
  result.height = v16;
  result.width = v15;
  return result;
}

- (CGSize)oneUpCropButtonCurrentAspectRatio:(id)a3
{
  v3 = [(PUCropButtonTileViewController *)self assetViewModel];
  v4 = [v3 asset];

  v5 = [v4 pixelWidth];
  v6 = [v4 pixelHeight];

  v7 = v5;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)oneUpCropButtonBoundingSize:(id)a3
{
  v3 = [(PUTileController *)self tilingView];
  [v3 frame];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)oneUpCropButton:(id)a3 didSelectAspectRatio:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v14[1] = *MEMORY[0x1E69E9840];
  if ([(PUCropButtonTileViewController *)self presentMenuForTip])
  {
    [(PUCropButtonTileViewController *)self setPresentMenuForTip:0];
    v12 = [(PUCropButtonTileViewController *)self button];
    [v12 presentMenu];
  }

  else
  {
    v7 = MEMORY[0x1E6991F28];
    v13 = *MEMORY[0x1E6991E18];
    v8 = [(PUCropButtonTileViewController *)self assetViewModel];
    v9 = [v8 asset];
    v14[0] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [v7 sendEvent:@"com.apple.photos.CPAnalytics.cropButtonPressed" withPayload:v10];

    [(PUCropButtonTileViewController *)self _showButton:0 animated:0];
    v11 = [(PUCropButtonTileViewController *)self delegate];
    [v11 cropButtonTileViewController:self didSelectAspectRatio:{width, height}];
  }
}

- (void)setPreventDismissal:(BOOL)a3
{
  if (self->_preventDismissal != a3)
  {
    self->_preventDismissal = a3;
    if (!a3)
    {
      [(PUCropButtonTileViewController *)self _dismissButtonAfterDelay];
    }
  }
}

- (void)setPreventDismissalReasons:(unint64_t)a3
{
  if (self->_preventDismissalReasons != a3)
  {
    self->_preventDismissalReasons = a3;
    [(PUCropButtonTileViewController *)self setPreventDismissal:a3 != 0];
  }
}

- (void)_updatePreventDismissalReason:(unint64_t)a3 activate:(BOOL)a4
{
  if (a4)
  {
    v5 = [(PUCropButtonTileViewController *)self preventDismissalReasons]| a3;
  }

  else
  {
    v5 = [(PUCropButtonTileViewController *)self preventDismissalReasons]& ~a3;
  }

  [(PUCropButtonTileViewController *)self setPreventDismissalReasons:v5];
}

- (void)_updatePreventDismissalReasons
{
  v3 = [(PUCropButtonTileViewController *)self button];
  -[PUCropButtonTileViewController _updatePreventDismissalReason:activate:](self, "_updatePreventDismissalReason:activate:", 1, [v3 presentingMenu]);

  v4 = [(PUCropButtonTileViewController *)self button];
  -[PUCropButtonTileViewController _updatePreventDismissalReason:activate:](self, "_updatePreventDismissalReason:activate:", 2, [v4 targeted]);

  v5 = [(PUCropButtonTileViewController *)self presentingTip];

  [(PUCropButtonTileViewController *)self _updatePreventDismissalReason:4 activate:v5];
}

- (void)viewModel:(id)a3 didChange:(id)a4
{
  v18 = a3;
  v6 = a4;
  v7 = [(PUCropButtonTileViewController *)self assetViewModel];
  v8 = [(PUCropButtonTileViewController *)self browsingViewModel];
  if (v7 == v18)
  {
    v16 = v6;
    if ([v16 modelTileTransformChanged])
    {
      v17 = [v7 modelTileTransform];
      [(PUCropButtonTileViewController *)self _didChangeModelTileTransform:v17];
    }

    if ([v16 isIrisPlayingChanged])
    {
      [(PUCropButtonTileViewController *)self _didChangeIrisPlaying];
    }
  }

  else
  {
    if (v8 != v18)
    {
      goto LABEL_14;
    }

    v9 = v6;
    v10 = [v8 currentAssetReference];
    v11 = [v10 asset];
    v12 = [v11 uuid];

    v13 = [v8 assetBeforeLastViewedAssetReference];
    v14 = [v13 asset];
    v15 = [v14 uuid];

    if ([v9 chromeVisibilityDidChange])
    {
      -[PUCropButtonTileViewController _didChangeChromeVisible:](self, "_didChangeChromeVisible:", [v8 isChromeVisible]);
    }

    else if ([v9 currentAssetDidChange] && (objc_msgSend(v12, "isEqualToString:", v15) & 1) == 0)
    {
      [(PUCropButtonTileViewController *)self _didChangeCurrentAsset];
    }
  }

LABEL_14:
}

- (void)_didChangeCurrentAsset
{
  [(PUCropButtonTileViewController *)self _showButton:0 animated:1];
  [(PUCropButtonTileViewController *)self setHasShownButtonForCurrentAsset:0];

  [(PUCropButtonTileViewController *)self setPresentMenuForTip:0];
}

- (void)_didChangeChromeVisible:(BOOL)a3
{
  if (a3)
  {
    [(PUCropButtonTileViewController *)self _showButton:0 animated:1];
  }

  [(PUCropButtonTileViewController *)self setPresentMenuForTip:0];
}

- (void)_dismissButtonAfterDelay
{
  v3 = +[PUOneUpSettings sharedInstance];
  [v3 quickCropInvisibilityTimer];
  v5 = v4;

  if (v5 != 0.0)
  {
    if ([(PUCropButtonTileViewController *)self isShowingButton])
    {
      [(PUCropButtonTileViewController *)self _invalidateTimers];
      objc_initWeak(&location, self);
      v6 = MEMORY[0x1E695DFF0];
      v8 = MEMORY[0x1E69E9820];
      v9 = 3221225472;
      v10 = __58__PUCropButtonTileViewController__dismissButtonAfterDelay__block_invoke;
      v11 = &unk_1E7B7B020;
      objc_copyWeak(&v12, &location);
      v7 = [v6 scheduledTimerWithTimeInterval:0 repeats:&v8 block:v5];
      [(PUCropButtonTileViewController *)self setInvisibilityTimer:v7, v8, v9, v10, v11];

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }
  }
}

void __58__PUCropButtonTileViewController__dismissButtonAfterDelay__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained preventDismissal];

  if ((v3 & 1) == 0)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    [v4 _showButton:0 animated:1];
  }
}

- (void)_3DToggleDidChange:(id)a3
{
  v5 = [(PUCropButtonTileViewController *)self assetViewModel];
  v4 = [v5 modelTileTransform];
  [(PUCropButtonTileViewController *)self _didChangeModelTileTransform:v4];
}

- (void)_didChangeModelTileTransform:(id)a3
{
  v6 = a3;
  v4 = [(PUCropButtonTileViewController *)self assetViewModel];
  if ([v4 isUserTransformingTile] && (objc_msgSend(v6, "isZoomedOut") & 1) == 0)
  {
    v5 = [MEMORY[0x1E69C3740] enabled] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  [(PUCropButtonTileViewController *)self _showButton:v5 animated:1];
  [(PUCropButtonTileViewController *)self _dismissButtonAfterDelay];
  [(PUCropButtonTileViewController *)self setPresentMenuForTip:0];
}

- (void)_updateApplyEDRGainToButton
{
  v5 = [(PUCropButtonTileViewController *)self assetViewModel];
  v3 = [v5 isHDR];
  v4 = [(PUCropButtonTileViewController *)self button];
  [v4 setApplyEDRBoost:v3];
}

- (BOOL)_hasUserZoomedIn
{
  v2 = [(PUCropButtonTileViewController *)self assetViewModel];
  v3 = [v2 modelTileTransform];
  [v3 scale];
  v5 = v4 > 1.4;

  return v5;
}

- (BOOL)_canShowButton
{
  v3 = [(PUCropButtonTileViewController *)self browsingViewModel];
  v4 = ([v3 isChromeVisible] & 1) == 0 && -[PUCropButtonTileViewController _hasUserZoomedIn](self, "_hasUserZoomedIn");

  return v4;
}

- (void)_invalidateTimers
{
  v3 = [(PUCropButtonTileViewController *)self invisibilityTimer];
  [v3 invalidate];

  [(PUCropButtonTileViewController *)self setInvisibilityTimer:0];
}

- (void)_showButton:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [(PUCropButtonTileViewController *)self _invalidateTimers];
  if ((!v5 || [(PUCropButtonTileViewController *)self _canShowButton]) && [(PUCropButtonTileViewController *)self isShowingButton]!= v5)
  {
    v7 = [(PUCropButtonTileViewController *)self button];
    v8 = v7;
    if (v5 || v7)
    {
      if (v5)
      {
        [(PUCropButtonTileViewController *)self _createButtonIfNeeded];
        [(PUCropButtonTileViewController *)self _updateApplyEDRGainToButton];
      }

      [(PUCropButtonTileViewController *)self _layoutSubviews];
      [(PUCropButtonTileViewController *)self setShowingButton:v5];
      v9 = [(PUTileViewController *)self view];
      [v9 setUserInteractionEnabled:v5];

      v10 = [(PUCropButtonTileViewController *)self button];

      [v10 setEnabled:v5];
      objc_initWeak(&location, self);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __55__PUCropButtonTileViewController__showButton_animated___block_invoke;
      aBlock[3] = &unk_1E7B77048;
      objc_copyWeak(&v22, &location);
      v23 = v5;
      v11 = _Block_copy(aBlock);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __55__PUCropButtonTileViewController__showButton_animated___block_invoke_2;
      v18[3] = &unk_1E7B7FF98;
      v12 = v10;
      v19 = v12;
      v20 = v5;
      v13 = _Block_copy(v18);
      v14 = v13;
      if (v4)
      {
        +[PUOneUpSettings sharedInstance];
        if (v5)
          v15 = {;
          [v15 quickCropFadeIn];
        }

        else
          v15 = {;
          [v15 quickCropFadeOut];
        }

        v17 = v16;

        [MEMORY[0x1E69DD250] animateWithDuration:v14 animations:v11 completion:v17];
      }

      else
      {
        (*(v13 + 2))(v13);
        v11[2](v11, 1);
      }

      [(PUCropButtonTileViewController *)self setPresentMenuForTip:0];

      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
    }
  }
}

void __55__PUCropButtonTileViewController__showButton_animated___block_invoke(uint64_t a1, int a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = [WeakRetained delegate];
    v5 = objc_loadWeakRetained((a1 + 32));
    [v4 cropButtonTileViewController:v5 buttonVisibilityDidChange:*(a1 + 40)];

    if (*(a1 + 40) == 1)
    {
      v6 = objc_loadWeakRetained((a1 + 32));
      v7 = [v6 hasShownButtonForCurrentAsset];

      if ((v7 & 1) == 0)
      {
        v8 = objc_loadWeakRetained((a1 + 32));
        [v8 setHasShownButtonForCurrentAsset:1];

        v9 = objc_loadWeakRetained((a1 + 32));
        v10 = [v9 assetViewModel];
        v11 = [v10 asset];

        if (v11)
        {
          v12 = MEMORY[0x1E6991F28];
          v14 = *MEMORY[0x1E6991E18];
          v15[0] = v11;
          v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
          [v12 sendEvent:@"com.apple.photos.CPAnalytics.cropButtonEnabled" withPayload:v13];
        }
      }
    }
  }
}

uint64_t __55__PUCropButtonTileViewController__showButton_animated___block_invoke_2(uint64_t a1)
{
  v1 = 0.0;
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  return [*(a1 + 32) setAlpha:v1];
}

- (void)_createButtonIfNeeded
{
  v3 = [(PUCropButtonTileViewController *)self button];

  if (!v3)
  {
    v5 = [(PUTileViewController *)self view];
    v4 = objc_alloc_init(PUOneUpCropButton);
    [(PUOneUpCropButton *)v4 setDelegate:self];
    [v5 addSubview:v4];
    [(PUCropButtonTileViewController *)self setButton:v4];
    [(PUCropButtonTileViewController *)self setShowingButton:1];
    [(PUCropButtonTileViewController *)self _showButton:0 animated:0];
    [(PUCropButtonTileViewController *)self _layoutSubviews];
    [(PUCropButtonTileViewController *)self _updatePreventDismissalReasons];
  }
}

- (void)dealloc
{
  [(PUAssetViewModel *)self->_assetViewModel unregisterChangeObserver:self];
  [(PUBrowsingViewModel *)self->_browsingViewModel unregisterChangeObserver:self];
  v3.receiver = self;
  v3.super_class = PUCropButtonTileViewController;
  [(PUTileViewController *)&v3 dealloc];
}

- (void)_layoutSubviews
{
  v13 = [(PUTileViewController *)self view];
  v3 = [v13 window];
  [PUOneUpCropButton frameForWindow:v3];
  [v3 convertRect:v13 toView:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(PUCropButtonTileViewController *)self button];
  [v12 setFrame:{v5, v7, v9, v11}];
}

- (void)didChangeVisibleRect
{
  v3.receiver = self;
  v3.super_class = PUCropButtonTileViewController;
  [(PUTileViewController *)&v3 didChangeVisibleRect];
  [(PUCropButtonTileViewController *)self _layoutSubviews];
}

- (void)becomeReusable
{
  v3.receiver = self;
  v3.super_class = PUCropButtonTileViewController;
  [(PUTileViewController *)&v3 becomeReusable];
  [(PUCropButtonTileViewController *)self setAssetViewModel:0];
  [(PUCropButtonTileViewController *)self setBrowsingViewModel:0];
  [(PUCropButtonTileViewController *)self _showButton:0 animated:0];
  [(PUCropButtonTileViewController *)self _updatePreventDismissalReasons];
  [(PUCropButtonTileViewController *)self setPresentMenuForTip:0];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = PUCropButtonTileViewController;
  [(PUTileViewController *)&v6 viewDidLoad];
  v3 = [(PUTileViewController *)self view];
  [v3 setUserInteractionEnabled:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v5 = [MEMORY[0x1E69C3740] notificationName3DBadgeToggled];
  [v4 addObserver:self selector:sel__3DToggleDidChange_ name:v5 object:0];
}

- (void)setPresentingTip:(BOOL)a3
{
  if (self->_presentingTip != a3)
  {
    self->_presentingTip = a3;
    [(PUCropButtonTileViewController *)self _updatePreventDismissalReasons];
    if (!a3)
    {
      v5 = [(PUCropButtonTileViewController *)self button];
      v6 = [v5 isBeingTouched];

      if (v6)
      {

        [(PUCropButtonTileViewController *)self setPresentMenuForTip:1];
      }
    }
  }
}

- (UIView)cropButton
{
  if ([(PUCropButtonTileViewController *)self isShowingButton])
  {
    v3 = [(PUCropButtonTileViewController *)self button];
  }

  else
  {
    v3 = 0;
  }

  return v3;
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

- (void)setAssetViewModel:(id)a3
{
  v5 = a3;
  assetViewModel = self->_assetViewModel;
  if (assetViewModel != v5)
  {
    v7 = v5;
    [(PUAssetViewModel *)assetViewModel unregisterChangeObserver:self];
    objc_storeStrong(&self->_assetViewModel, a3);
    assetViewModel = [(PUAssetViewModel *)self->_assetViewModel registerChangeObserver:self];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](assetViewModel, v5);
}

+ (BOOL)shouldShowCropButtonTileForAsset:(id)a3
{
  v3 = a3;
  v4 = +[PUPhotoEditProtoSettings sharedInstance];
  v5 = [v4 enableSpatialMediaEditing];

  v6 = [v3 mediaType] == 1 || objc_msgSend(v3, "mediaType") == 2;
  v7 = v6 & ~[v3 px_isSharedAlbumAsset];
  v8 = v7 & ([v3 isAnimatedGIF] ^ 1);
  if (v5 && [v3 mediaType] == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = [v3 isSpatialMedia] ^ 1;
  }

  v10 = v8 & v9;
  v11 = [v3 canPerformEditOperation:2];
  v12 = 0;
  if (v10 == 1 && v11)
  {
    v12 = [MEMORY[0x1E69C4320] canPerformEditOnAsset:v3];
  }

  return v12;
}

@end