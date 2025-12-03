@interface PUOneUpImageTileViewController
- (id)dismissalProgressBlock;
- (id)presentationProgressBlock;
- (void)_3DToggleDidChange:(id)change;
- (void)_reportZoomAnalyticsForViewModel:(id)model;
- (void)_updateAssetViewModelBestImage;
- (void)_updateAssetViewModelContentsRect;
- (void)_updateAssetViewModelHDRState;
- (void)_updateInteractionHostViewRegistration;
- (void)_updateSpatialOverlayView;
- (void)applyLayoutInfo:(id)info;
- (void)assetViewModelDidChange:(id)change;
- (void)browsingViewModelDidChange:(id)change;
- (void)didChangeIsOnPrimaryDisplay;
- (void)displayedImageRequestResultDidChange;
- (void)viewDidLoad;
- (void)viewModel:(id)model didChange:(id)change;
@end

@implementation PUOneUpImageTileViewController

- (id)dismissalProgressBlock
{
  imageView = [(PUImageTileViewController *)self imageView];
  layer = [imageView layer];
  preferredDynamicRange = [layer preferredDynamicRange];
  v6 = *MEMORY[0x1E69792A8];

  if (preferredDynamicRange == v6)
  {
    v7 = 0;
  }

  else
  {
    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__PUOneUpImageTileViewController_dismissalProgressBlock__block_invoke;
    v10[3] = &unk_1E7B804D0;
    objc_copyWeak(&v11, &location);
    v7 = _Block_copy(v10);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  v8 = _Block_copy(v7);

  return v8;
}

void __56__PUOneUpImageTileViewController_dismissalProgressBlock__block_invoke(uint64_t a1, double a2)
{
  v2 = 1.0 - a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained imageView];
  v4 = [v3 layer];
  [v4 setContentsEDRStrength:v2];
}

- (id)presentationProgressBlock
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__PUOneUpImageTileViewController_presentationProgressBlock__block_invoke;
  v5[3] = &unk_1E7B804D0;
  objc_copyWeak(&v6, &location);
  v2 = _Block_copy(v5);
  v3 = _Block_copy(v2);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

void __59__PUOneUpImageTileViewController_presentationProgressBlock__block_invoke(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained imageView];
  v4 = [v3 layer];
  [v4 setContentsEDRStrength:a2];
}

- (void)_reportZoomAnalyticsForViewModel:(id)model
{
  v12[1] = *MEMORY[0x1E69E9840];
  modelCopy = model;
  if ([modelCopy isUserTransformingTile])
  {
    modelTileTransform = [modelCopy modelTileTransform];
    isZoomedOut = [modelTileTransform isZoomedOut];
  }

  else
  {
    isZoomedOut = 1;
  }

  if ([MEMORY[0x1E69C3740] enabled] && (isZoomedOut & 1) == 0)
  {
    assetViewModel = [(PUImageTileViewController *)self assetViewModel];
    asset = [assetViewModel asset];

    if (asset && ![(PUOneUpImageTileViewController *)self hasReportedSpatialZoomForCurrentAsset])
    {
      [(PUOneUpImageTileViewController *)self setHasReportedSpatialZoomForCurrentAsset:1];
      v9 = MEMORY[0x1E6991F28];
      v11 = *MEMORY[0x1E6991E18];
      v12[0] = asset;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      [v9 sendEvent:@"com.apple.photos.CPAnalytics.zoomedWithSpatialEnabled" withPayload:v10];
    }
  }
}

- (void)_updateAssetViewModelBestImage
{
  displayedImageRequestResult = [(PUImageTileViewController *)self displayedImageRequestResult];
  assetViewModel = [(PUImageTileViewController *)self assetViewModel];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__PUOneUpImageTileViewController__updateAssetViewModelBestImage__block_invoke;
  v7[3] = &unk_1E7B80C38;
  v8 = displayedImageRequestResult;
  v9 = assetViewModel;
  v5 = assetViewModel;
  v6 = displayedImageRequestResult;
  [v5 performChanges:v7];
}

void __64__PUOneUpImageTileViewController__updateAssetViewModelBestImage__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) imageIsFullQuality])
  {
    v2 = [*(a1 + 32) image];
    [*(a1 + 40) setBestImage:v2];
  }
}

- (void)_updateInteractionHostViewRegistration
{
  if ([(PUTileViewController *)self isOnPrimaryDisplay])
  {
    assetViewModel = [(PUImageTileViewController *)self assetViewModel];
    imageView = [(PUImageTileViewController *)self imageView];
    [assetViewModel registerView:imageView forImageAnalysisInteractionHostMode:2];
  }
}

- (void)_updateAssetViewModelContentsRect
{
  assetViewModel = [(PUImageTileViewController *)self assetViewModel];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__PUOneUpImageTileViewController__updateAssetViewModelContentsRect__block_invoke;
  v4[3] = &unk_1E7B80DD0;
  v4[4] = self;
  [assetViewModel performChanges:v4];
}

void __67__PUOneUpImageTileViewController__updateAssetViewModelContentsRect__block_invoke(uint64_t a1)
{
  v12 = [*(a1 + 32) imageView];
  v2 = [v12 layer];
  [v2 contentsRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [*(a1 + 32) assetViewModel];
  [v11 setMainImageContentsRect:{v4, v6, v8, v10}];
}

- (void)_updateSpatialOverlayView
{
  assetViewModel = [(PUImageTileViewController *)self assetViewModel];
  assetViewModel2 = [(PUImageTileViewController *)self assetViewModel];
  asset = [assetViewModel2 asset];

  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = asset;
  }

  else
  {
    v5 = 0;
  }

  if ([MEMORY[0x1E69C3740] enabled])
  {
    isFullyInFocus = [assetViewModel isFullyInFocus];
    v7 = assetViewModel;
    if (v5)
    {
      v8 = isFullyInFocus;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v7 = assetViewModel;
  }

  isFullyOutOfFocus = [v7 isFullyOutOfFocus];
  browsingViewModel = [(PUImageTileViewController *)self browsingViewModel];

  if (browsingViewModel)
  {
    browsingViewModel2 = [(PUImageTileViewController *)self browsingViewModel];
    spatialOverlayController = [browsingViewModel2 spatialOverlayController];
    imageView = [(PUImageTileViewController *)self imageView];
    if (v8)
    {
      [spatialOverlayController addOverlayViewForAsset:v5 toView:imageView animated:isFullyOutOfFocus ^ 1u];
    }

    else
    {
      [spatialOverlayController removeOverlayViewFromView:imageView animated:isFullyOutOfFocus ^ 1u];
    }
  }
}

- (void)_updateAssetViewModelHDRState
{
  if ([(PUTileViewController *)self isOnPrimaryDisplay])
  {
    displayedImageRequestResult = [(PUImageTileViewController *)self displayedImageRequestResult];
    image = [displayedImageRequestResult image];
    isHighDynamicRange = [image isHighDynamicRange];

    assetViewModel = [(PUImageTileViewController *)self assetViewModel];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __63__PUOneUpImageTileViewController__updateAssetViewModelHDRState__block_invoke;
    v8[3] = &unk_1E7B7FF98;
    v9 = assetViewModel;
    v10 = isHighDynamicRange;
    v7 = assetViewModel;
    [v7 performChanges:v8];
  }
}

- (void)viewModel:(id)model didChange:(id)change
{
  modelCopy = model;
  changeCopy = change;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = changeCopy;

    if (v8 && (([v8 isFullyInFocusChanged] & 1) != 0 || objc_msgSend(v8, "isFullyOutOfFocusChanged")))
    {
      [(PUOneUpImageTileViewController *)self _updateSpatialOverlayView];
    }
  }

  else
  {

    v8 = 0;
  }

  if ([v8 modelTileTransformChanged])
  {
    [(PUOneUpImageTileViewController *)self _reportZoomAnalyticsForViewModel:modelCopy];
  }

  v9.receiver = self;
  v9.super_class = PUOneUpImageTileViewController;
  [(PUImageTileViewController *)&v9 viewModel:modelCopy didChange:changeCopy];
}

- (void)_3DToggleDidChange:(id)change
{
  [(PUOneUpImageTileViewController *)self _updateSpatialOverlayView];

  [(PUImageTileViewController *)self suppressHighDynamicRangeDisplayDidChange];
}

- (void)didChangeIsOnPrimaryDisplay
{
  v3.receiver = self;
  v3.super_class = PUOneUpImageTileViewController;
  [(PUTileViewController *)&v3 didChangeIsOnPrimaryDisplay];
  [(PUOneUpImageTileViewController *)self _updateInteractionHostViewRegistration];
  [(PUOneUpImageTileViewController *)self _updateAssetViewModelHDRState];
}

- (void)displayedImageRequestResultDidChange
{
  v3.receiver = self;
  v3.super_class = PUOneUpImageTileViewController;
  [(PUImageTileViewController *)&v3 displayedImageRequestResultDidChange];
  [(PUOneUpImageTileViewController *)self _updateAssetViewModelBestImage];
  [(PUOneUpImageTileViewController *)self _updateAssetViewModelHDRState];
}

- (void)assetViewModelDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = PUOneUpImageTileViewController;
  changeCopy = change;
  [(PUImageTileViewController *)&v6 assetViewModelDidChange:changeCopy];
  v5 = [(PUImageTileViewController *)self imageView:v6.receiver];
  [changeCopy unregisterView:v5 forImageAnalysisInteractionHostMode:2];

  [(PUOneUpImageTileViewController *)self _updateInteractionHostViewRegistration];
  [(PUOneUpImageTileViewController *)self _updateSpatialOverlayView];
}

- (void)browsingViewModelDidChange:(id)change
{
  v12.receiver = self;
  v12.super_class = PUOneUpImageTileViewController;
  [(PUImageTileViewController *)&v12 browsingViewModelDidChange:change];
  browsingViewModel = [(PUImageTileViewController *)self browsingViewModel];
  currentAssetReference = [browsingViewModel currentAssetReference];
  asset = [currentAssetReference asset];
  uuid = [asset uuid];

  browsingViewModel2 = [(PUImageTileViewController *)self browsingViewModel];
  assetBeforeLastViewedAssetReference = [browsingViewModel2 assetBeforeLastViewedAssetReference];
  asset2 = [assetBeforeLastViewedAssetReference asset];
  uuid2 = [asset2 uuid];

  if (([uuid isEqualToString:uuid2] & 1) == 0)
  {
    [(PUOneUpImageTileViewController *)self _didChangeCurrentAsset];
  }

  [(PUOneUpImageTileViewController *)self _updateSpatialOverlayView];
}

- (void)applyLayoutInfo:(id)info
{
  v4.receiver = self;
  v4.super_class = PUOneUpImageTileViewController;
  [(PUImageTileViewController *)&v4 applyLayoutInfo:info];
  [(PUOneUpImageTileViewController *)self _updateAssetViewModelContentsRect];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = PUOneUpImageTileViewController;
  [(PUTileViewController *)&v6 viewDidLoad];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  notificationName3DBadgeToggled = [MEMORY[0x1E69C3740] notificationName3DBadgeToggled];
  [defaultCenter addObserver:self selector:sel__3DToggleDidChange_ name:notificationName3DBadgeToggled object:0];

  [(PUOneUpImageTileViewController *)self _updateInteractionHostViewRegistration];
  imageView = [(PUImageTileViewController *)self imageView];
  [imageView setUserInteractionEnabled:1];
}

@end