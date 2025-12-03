@interface PUCropButtonTileViewController
+ (BOOL)shouldShowCropButtonTileForAsset:(id)asset;
- (BOOL)_canShowButton;
- (BOOL)_hasUserZoomedIn;
- (CGSize)oneUpCropButtonBoundingSize:(id)size;
- (CGSize)oneUpCropButtonCurrentAspectRatio:(id)ratio;
- (CGSize)oneUpCropButtonOriginalAspectRatio:(id)ratio;
- (PUCropButtonTileViewControllerDelegate)delegate;
- (UIView)cropButton;
- (void)_3DToggleDidChange:(id)change;
- (void)_createButtonIfNeeded;
- (void)_didChangeChromeVisible:(BOOL)visible;
- (void)_didChangeCurrentAsset;
- (void)_didChangeModelTileTransform:(id)transform;
- (void)_dismissButtonAfterDelay;
- (void)_invalidateTimers;
- (void)_layoutSubviews;
- (void)_showButton:(BOOL)button animated:(BOOL)animated;
- (void)_updateApplyEDRGainToButton;
- (void)_updatePreventDismissalReason:(unint64_t)reason activate:(BOOL)activate;
- (void)_updatePreventDismissalReasons;
- (void)becomeReusable;
- (void)dealloc;
- (void)didChangeVisibleRect;
- (void)oneUpCropButton:(id)button didSelectAspectRatio:(CGSize)ratio;
- (void)setAssetViewModel:(id)model;
- (void)setBrowsingViewModel:(id)model;
- (void)setPresentingTip:(BOOL)tip;
- (void)setPreventDismissal:(BOOL)dismissal;
- (void)setPreventDismissalReasons:(unint64_t)reasons;
- (void)viewDidLoad;
- (void)viewModel:(id)model didChange:(id)change;
@end

@implementation PUCropButtonTileViewController

- (PUCropButtonTileViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)oneUpCropButtonOriginalAspectRatio:(id)ratio
{
  ratioCopy = ratio;
  assetViewModel = [(PUCropButtonTileViewController *)self assetViewModel];
  asset = [assetViewModel asset];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = asset;
    [v7 fetchPropertySetsIfNeeded];
    originalMetadataProperties = [v7 originalMetadataProperties];

    [originalMetadataProperties originalWidth];
    [originalMetadataProperties originalHeight];
    [originalMetadataProperties originalExifOrientation];
    PLOrientationTransformImageSize();
    v10 = v9;
    v12 = v11;
  }

  else
  {
    [(PUCropButtonTileViewController *)self oneUpCropButtonCurrentAspectRatio:ratioCopy];
    v10 = v13;
    v12 = v14;
  }

  v15 = v10;
  v16 = v12;
  result.height = v16;
  result.width = v15;
  return result;
}

- (CGSize)oneUpCropButtonCurrentAspectRatio:(id)ratio
{
  assetViewModel = [(PUCropButtonTileViewController *)self assetViewModel];
  asset = [assetViewModel asset];

  pixelWidth = [asset pixelWidth];
  pixelHeight = [asset pixelHeight];

  v7 = pixelWidth;
  v8 = pixelHeight;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)oneUpCropButtonBoundingSize:(id)size
{
  tilingView = [(PUTileController *)self tilingView];
  [tilingView frame];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)oneUpCropButton:(id)button didSelectAspectRatio:(CGSize)ratio
{
  height = ratio.height;
  width = ratio.width;
  v14[1] = *MEMORY[0x1E69E9840];
  if ([(PUCropButtonTileViewController *)self presentMenuForTip])
  {
    [(PUCropButtonTileViewController *)self setPresentMenuForTip:0];
    button = [(PUCropButtonTileViewController *)self button];
    [button presentMenu];
  }

  else
  {
    v7 = MEMORY[0x1E6991F28];
    v13 = *MEMORY[0x1E6991E18];
    assetViewModel = [(PUCropButtonTileViewController *)self assetViewModel];
    asset = [assetViewModel asset];
    v14[0] = asset;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [v7 sendEvent:@"com.apple.photos.CPAnalytics.cropButtonPressed" withPayload:v10];

    [(PUCropButtonTileViewController *)self _showButton:0 animated:0];
    delegate = [(PUCropButtonTileViewController *)self delegate];
    [delegate cropButtonTileViewController:self didSelectAspectRatio:{width, height}];
  }
}

- (void)setPreventDismissal:(BOOL)dismissal
{
  if (self->_preventDismissal != dismissal)
  {
    self->_preventDismissal = dismissal;
    if (!dismissal)
    {
      [(PUCropButtonTileViewController *)self _dismissButtonAfterDelay];
    }
  }
}

- (void)setPreventDismissalReasons:(unint64_t)reasons
{
  if (self->_preventDismissalReasons != reasons)
  {
    self->_preventDismissalReasons = reasons;
    [(PUCropButtonTileViewController *)self setPreventDismissal:reasons != 0];
  }
}

- (void)_updatePreventDismissalReason:(unint64_t)reason activate:(BOOL)activate
{
  if (activate)
  {
    v5 = [(PUCropButtonTileViewController *)self preventDismissalReasons]| reason;
  }

  else
  {
    v5 = [(PUCropButtonTileViewController *)self preventDismissalReasons]& ~reason;
  }

  [(PUCropButtonTileViewController *)self setPreventDismissalReasons:v5];
}

- (void)_updatePreventDismissalReasons
{
  button = [(PUCropButtonTileViewController *)self button];
  -[PUCropButtonTileViewController _updatePreventDismissalReason:activate:](self, "_updatePreventDismissalReason:activate:", 1, [button presentingMenu]);

  button2 = [(PUCropButtonTileViewController *)self button];
  -[PUCropButtonTileViewController _updatePreventDismissalReason:activate:](self, "_updatePreventDismissalReason:activate:", 2, [button2 targeted]);

  presentingTip = [(PUCropButtonTileViewController *)self presentingTip];

  [(PUCropButtonTileViewController *)self _updatePreventDismissalReason:4 activate:presentingTip];
}

- (void)viewModel:(id)model didChange:(id)change
{
  modelCopy = model;
  changeCopy = change;
  assetViewModel = [(PUCropButtonTileViewController *)self assetViewModel];
  browsingViewModel = [(PUCropButtonTileViewController *)self browsingViewModel];
  if (assetViewModel == modelCopy)
  {
    v16 = changeCopy;
    if ([v16 modelTileTransformChanged])
    {
      modelTileTransform = [assetViewModel modelTileTransform];
      [(PUCropButtonTileViewController *)self _didChangeModelTileTransform:modelTileTransform];
    }

    if ([v16 isIrisPlayingChanged])
    {
      [(PUCropButtonTileViewController *)self _didChangeIrisPlaying];
    }
  }

  else
  {
    if (browsingViewModel != modelCopy)
    {
      goto LABEL_14;
    }

    v9 = changeCopy;
    currentAssetReference = [browsingViewModel currentAssetReference];
    asset = [currentAssetReference asset];
    uuid = [asset uuid];

    assetBeforeLastViewedAssetReference = [browsingViewModel assetBeforeLastViewedAssetReference];
    asset2 = [assetBeforeLastViewedAssetReference asset];
    uuid2 = [asset2 uuid];

    if ([v9 chromeVisibilityDidChange])
    {
      -[PUCropButtonTileViewController _didChangeChromeVisible:](self, "_didChangeChromeVisible:", [browsingViewModel isChromeVisible]);
    }

    else if ([v9 currentAssetDidChange] && (objc_msgSend(uuid, "isEqualToString:", uuid2) & 1) == 0)
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

- (void)_didChangeChromeVisible:(BOOL)visible
{
  if (visible)
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

- (void)_3DToggleDidChange:(id)change
{
  assetViewModel = [(PUCropButtonTileViewController *)self assetViewModel];
  modelTileTransform = [assetViewModel modelTileTransform];
  [(PUCropButtonTileViewController *)self _didChangeModelTileTransform:modelTileTransform];
}

- (void)_didChangeModelTileTransform:(id)transform
{
  transformCopy = transform;
  assetViewModel = [(PUCropButtonTileViewController *)self assetViewModel];
  if ([assetViewModel isUserTransformingTile] && (objc_msgSend(transformCopy, "isZoomedOut") & 1) == 0)
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
  assetViewModel = [(PUCropButtonTileViewController *)self assetViewModel];
  isHDR = [assetViewModel isHDR];
  button = [(PUCropButtonTileViewController *)self button];
  [button setApplyEDRBoost:isHDR];
}

- (BOOL)_hasUserZoomedIn
{
  assetViewModel = [(PUCropButtonTileViewController *)self assetViewModel];
  modelTileTransform = [assetViewModel modelTileTransform];
  [modelTileTransform scale];
  v5 = v4 > 1.4;

  return v5;
}

- (BOOL)_canShowButton
{
  browsingViewModel = [(PUCropButtonTileViewController *)self browsingViewModel];
  v4 = ([browsingViewModel isChromeVisible] & 1) == 0 && -[PUCropButtonTileViewController _hasUserZoomedIn](self, "_hasUserZoomedIn");

  return v4;
}

- (void)_invalidateTimers
{
  invisibilityTimer = [(PUCropButtonTileViewController *)self invisibilityTimer];
  [invisibilityTimer invalidate];

  [(PUCropButtonTileViewController *)self setInvisibilityTimer:0];
}

- (void)_showButton:(BOOL)button animated:(BOOL)animated
{
  animatedCopy = animated;
  buttonCopy = button;
  [(PUCropButtonTileViewController *)self _invalidateTimers];
  if ((!buttonCopy || [(PUCropButtonTileViewController *)self _canShowButton]) && [(PUCropButtonTileViewController *)self isShowingButton]!= buttonCopy)
  {
    button = [(PUCropButtonTileViewController *)self button];
    v8 = button;
    if (buttonCopy || button)
    {
      if (buttonCopy)
      {
        [(PUCropButtonTileViewController *)self _createButtonIfNeeded];
        [(PUCropButtonTileViewController *)self _updateApplyEDRGainToButton];
      }

      [(PUCropButtonTileViewController *)self _layoutSubviews];
      [(PUCropButtonTileViewController *)self setShowingButton:buttonCopy];
      view = [(PUTileViewController *)self view];
      [view setUserInteractionEnabled:buttonCopy];

      button2 = [(PUCropButtonTileViewController *)self button];

      [button2 setEnabled:buttonCopy];
      objc_initWeak(&location, self);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __55__PUCropButtonTileViewController__showButton_animated___block_invoke;
      aBlock[3] = &unk_1E7B77048;
      objc_copyWeak(&v22, &location);
      v23 = buttonCopy;
      v11 = _Block_copy(aBlock);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __55__PUCropButtonTileViewController__showButton_animated___block_invoke_2;
      v18[3] = &unk_1E7B7FF98;
      v12 = button2;
      v19 = v12;
      v20 = buttonCopy;
      v13 = _Block_copy(v18);
      v14 = v13;
      if (animatedCopy)
      {
        +[PUOneUpSettings sharedInstance];
        if (buttonCopy)
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
  button = [(PUCropButtonTileViewController *)self button];

  if (!button)
  {
    view = [(PUTileViewController *)self view];
    v4 = objc_alloc_init(PUOneUpCropButton);
    [(PUOneUpCropButton *)v4 setDelegate:self];
    [view addSubview:v4];
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
  view = [(PUTileViewController *)self view];
  window = [view window];
  [PUOneUpCropButton frameForWindow:window];
  [window convertRect:view toView:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  button = [(PUCropButtonTileViewController *)self button];
  [button setFrame:{v5, v7, v9, v11}];
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
  view = [(PUTileViewController *)self view];
  [view setUserInteractionEnabled:0];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  notificationName3DBadgeToggled = [MEMORY[0x1E69C3740] notificationName3DBadgeToggled];
  [defaultCenter addObserver:self selector:sel__3DToggleDidChange_ name:notificationName3DBadgeToggled object:0];
}

- (void)setPresentingTip:(BOOL)tip
{
  if (self->_presentingTip != tip)
  {
    self->_presentingTip = tip;
    [(PUCropButtonTileViewController *)self _updatePreventDismissalReasons];
    if (!tip)
    {
      button = [(PUCropButtonTileViewController *)self button];
      isBeingTouched = [button isBeingTouched];

      if (isBeingTouched)
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
    button = [(PUCropButtonTileViewController *)self button];
  }

  else
  {
    button = 0;
  }

  return button;
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

- (void)setAssetViewModel:(id)model
{
  modelCopy = model;
  assetViewModel = self->_assetViewModel;
  if (assetViewModel != modelCopy)
  {
    v7 = modelCopy;
    [(PUAssetViewModel *)assetViewModel unregisterChangeObserver:self];
    objc_storeStrong(&self->_assetViewModel, model);
    assetViewModel = [(PUAssetViewModel *)self->_assetViewModel registerChangeObserver:self];
    modelCopy = v7;
  }

  MEMORY[0x1EEE66BB8](assetViewModel, modelCopy);
}

+ (BOOL)shouldShowCropButtonTileForAsset:(id)asset
{
  assetCopy = asset;
  v4 = +[PUPhotoEditProtoSettings sharedInstance];
  enableSpatialMediaEditing = [v4 enableSpatialMediaEditing];

  v6 = [assetCopy mediaType] == 1 || objc_msgSend(assetCopy, "mediaType") == 2;
  v7 = v6 & ~[assetCopy px_isSharedAlbumAsset];
  v8 = v7 & ([assetCopy isAnimatedGIF] ^ 1);
  if (enableSpatialMediaEditing && [assetCopy mediaType] == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = [assetCopy isSpatialMedia] ^ 1;
  }

  v10 = v8 & v9;
  v11 = [assetCopy canPerformEditOperation:2];
  v12 = 0;
  if (v10 == 1 && v11)
  {
    v12 = [MEMORY[0x1E69C4320] canPerformEditOnAsset:assetCopy];
  }

  return v12;
}

@end