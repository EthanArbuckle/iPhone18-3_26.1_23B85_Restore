@interface PUOneUpImageTileViewController
- (id)dismissalProgressBlock;
- (id)presentationProgressBlock;
- (void)_3DToggleDidChange:(id)a3;
- (void)_reportZoomAnalyticsForViewModel:(id)a3;
- (void)_updateAssetViewModelBestImage;
- (void)_updateAssetViewModelContentsRect;
- (void)_updateAssetViewModelHDRState;
- (void)_updateInteractionHostViewRegistration;
- (void)_updateSpatialOverlayView;
- (void)applyLayoutInfo:(id)a3;
- (void)assetViewModelDidChange:(id)a3;
- (void)browsingViewModelDidChange:(id)a3;
- (void)didChangeIsOnPrimaryDisplay;
- (void)displayedImageRequestResultDidChange;
- (void)viewDidLoad;
- (void)viewModel:(id)a3 didChange:(id)a4;
@end

@implementation PUOneUpImageTileViewController

- (id)dismissalProgressBlock
{
  v3 = [(PUImageTileViewController *)self imageView];
  v4 = [v3 layer];
  v5 = [v4 preferredDynamicRange];
  v6 = *MEMORY[0x1E69792A8];

  if (v5 == v6)
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

- (void)_reportZoomAnalyticsForViewModel:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 isUserTransformingTile])
  {
    v5 = [v4 modelTileTransform];
    v6 = [v5 isZoomedOut];
  }

  else
  {
    v6 = 1;
  }

  if ([MEMORY[0x1E69C3740] enabled] && (v6 & 1) == 0)
  {
    v7 = [(PUImageTileViewController *)self assetViewModel];
    v8 = [v7 asset];

    if (v8 && ![(PUOneUpImageTileViewController *)self hasReportedSpatialZoomForCurrentAsset])
    {
      [(PUOneUpImageTileViewController *)self setHasReportedSpatialZoomForCurrentAsset:1];
      v9 = MEMORY[0x1E6991F28];
      v11 = *MEMORY[0x1E6991E18];
      v12[0] = v8;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      [v9 sendEvent:@"com.apple.photos.CPAnalytics.zoomedWithSpatialEnabled" withPayload:v10];
    }
  }
}

- (void)_updateAssetViewModelBestImage
{
  v3 = [(PUImageTileViewController *)self displayedImageRequestResult];
  v4 = [(PUImageTileViewController *)self assetViewModel];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__PUOneUpImageTileViewController__updateAssetViewModelBestImage__block_invoke;
  v7[3] = &unk_1E7B80C38;
  v8 = v3;
  v9 = v4;
  v5 = v4;
  v6 = v3;
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
    v4 = [(PUImageTileViewController *)self assetViewModel];
    v3 = [(PUImageTileViewController *)self imageView];
    [v4 registerView:v3 forImageAnalysisInteractionHostMode:2];
  }
}

- (void)_updateAssetViewModelContentsRect
{
  v3 = [(PUImageTileViewController *)self assetViewModel];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__PUOneUpImageTileViewController__updateAssetViewModelContentsRect__block_invoke;
  v4[3] = &unk_1E7B80DD0;
  v4[4] = self;
  [v3 performChanges:v4];
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
  v14 = [(PUImageTileViewController *)self assetViewModel];
  v3 = [(PUImageTileViewController *)self assetViewModel];
  v4 = [v3 asset];

  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if ([MEMORY[0x1E69C3740] enabled])
  {
    v6 = [v14 isFullyInFocus];
    v7 = v14;
    if (v5)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v7 = v14;
  }

  v9 = [v7 isFullyOutOfFocus];
  v10 = [(PUImageTileViewController *)self browsingViewModel];

  if (v10)
  {
    v11 = [(PUImageTileViewController *)self browsingViewModel];
    v12 = [v11 spatialOverlayController];
    v13 = [(PUImageTileViewController *)self imageView];
    if (v8)
    {
      [v12 addOverlayViewForAsset:v5 toView:v13 animated:v9 ^ 1u];
    }

    else
    {
      [v12 removeOverlayViewFromView:v13 animated:v9 ^ 1u];
    }
  }
}

- (void)_updateAssetViewModelHDRState
{
  if ([(PUTileViewController *)self isOnPrimaryDisplay])
  {
    v3 = [(PUImageTileViewController *)self displayedImageRequestResult];
    v4 = [v3 image];
    v5 = [v4 isHighDynamicRange];

    v6 = [(PUImageTileViewController *)self assetViewModel];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __63__PUOneUpImageTileViewController__updateAssetViewModelHDRState__block_invoke;
    v8[3] = &unk_1E7B7FF98;
    v9 = v6;
    v10 = v5;
    v7 = v6;
    [v7 performChanges:v8];
  }
}

- (void)viewModel:(id)a3 didChange:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = v7;

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
    [(PUOneUpImageTileViewController *)self _reportZoomAnalyticsForViewModel:v6];
  }

  v9.receiver = self;
  v9.super_class = PUOneUpImageTileViewController;
  [(PUImageTileViewController *)&v9 viewModel:v6 didChange:v7];
}

- (void)_3DToggleDidChange:(id)a3
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

- (void)assetViewModelDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = PUOneUpImageTileViewController;
  v4 = a3;
  [(PUImageTileViewController *)&v6 assetViewModelDidChange:v4];
  v5 = [(PUImageTileViewController *)self imageView:v6.receiver];
  [v4 unregisterView:v5 forImageAnalysisInteractionHostMode:2];

  [(PUOneUpImageTileViewController *)self _updateInteractionHostViewRegistration];
  [(PUOneUpImageTileViewController *)self _updateSpatialOverlayView];
}

- (void)browsingViewModelDidChange:(id)a3
{
  v12.receiver = self;
  v12.super_class = PUOneUpImageTileViewController;
  [(PUImageTileViewController *)&v12 browsingViewModelDidChange:a3];
  v4 = [(PUImageTileViewController *)self browsingViewModel];
  v5 = [v4 currentAssetReference];
  v6 = [v5 asset];
  v7 = [v6 uuid];

  v8 = [(PUImageTileViewController *)self browsingViewModel];
  v9 = [v8 assetBeforeLastViewedAssetReference];
  v10 = [v9 asset];
  v11 = [v10 uuid];

  if (([v7 isEqualToString:v11] & 1) == 0)
  {
    [(PUOneUpImageTileViewController *)self _didChangeCurrentAsset];
  }

  [(PUOneUpImageTileViewController *)self _updateSpatialOverlayView];
}

- (void)applyLayoutInfo:(id)a3
{
  v4.receiver = self;
  v4.super_class = PUOneUpImageTileViewController;
  [(PUImageTileViewController *)&v4 applyLayoutInfo:a3];
  [(PUOneUpImageTileViewController *)self _updateAssetViewModelContentsRect];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = PUOneUpImageTileViewController;
  [(PUTileViewController *)&v6 viewDidLoad];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = [MEMORY[0x1E69C3740] notificationName3DBadgeToggled];
  [v3 addObserver:self selector:sel__3DToggleDidChange_ name:v4 object:0];

  [(PUOneUpImageTileViewController *)self _updateInteractionHostViewRegistration];
  v5 = [(PUImageTileViewController *)self imageView];
  [v5 setUserInteractionEnabled:1];
}

@end