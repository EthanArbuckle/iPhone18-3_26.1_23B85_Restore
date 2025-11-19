@interface PXPlacesMapFetchResultViewController
- (BOOL)prefersStatusBarHidden;
- (PXPhotosViewConfigurationPresentationDelegate)photosViewConfigurationPresentationDelegate;
- (PXPlacesAssetsSelectionDelegate)assetSelectionDelegate;
- (PXPlacesMapBarButtonsDelegate)barButtonsDelegate;
- (PXPlacesMapFetchResultViewController)init;
- (PXPlacesMapFetchResultViewController)initWithCoder:(id)a3;
- (PXPlacesMapFetchResultViewController)initWithInitialCenterCoordinate:(CLLocationCoordinate2D)a3 enableNearbyAssetsAffordance:(BOOL)a4 wantsMapOptionsView:(BOOL)a5 photoLibrary:(id)a6 mapFetchResultController:(id)a7;
- (PXPlacesMapFetchResultViewController)initWithInitialCoordinateRegion:(id *)a3 enableNearbyAssetsAffordance:(BOOL)a4 wantsMapOptionsView:(BOOL)a5 photoLibrary:(id)a6 mapFetchResultController:(id)a7;
- (PXPlacesMapFetchResultViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PXPlacesMapLocationEditDelegate)editLocationDelegate;
- (UIBarButtonItem)filterAssetsBtn;
- (UIViewController)pxOneUpPresentationViewController;
- (id)_fetchHydratedAssetForPlacesAsset:(id)a3;
- (id)dataSourceForAssets:(id)a3;
- (id)oneUpPresentationInitialAssetReference:(id)a3;
- (id)oneUpPresentationMediaProvider:(id)a3;
- (void)_placeToolbarItems:(id)a3;
- (void)_reloadContentModeDisplay:(unint64_t)a3;
- (void)_selectedGeotaggables:(id)a3;
- (void)_setupMapModeControlsOverlay;
- (void)_updateMapOptionsView;
- (void)dataSourceDidChange:(id)a3;
- (void)dealloc;
- (void)didSelectGeotaggableItems:(id)a3 fromMapView:(id)a4;
- (void)loadView;
- (void)ppt_performPlacesScrollTest:(id)a3 iterations:(int64_t)a4 screenDelta:(int64_t)a5 delay:(double)a6 completion:(id)a7;
- (void)ppt_performPlacesZoomTest:(id)a3 iterations:(int64_t)a4 delay:(double)a5 completion:(id)a6;
- (void)setShowNavigationBar:(BOOL)a3;
- (void)setStyle:(unint64_t)a3;
- (void)tapFilterAssetsBtn:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PXPlacesMapFetchResultViewController

- (PXPhotosViewConfigurationPresentationDelegate)photosViewConfigurationPresentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_photosViewConfigurationPresentationDelegate);

  return WeakRetained;
}

- (UIViewController)pxOneUpPresentationViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_pxOneUpPresentationViewController);

  return WeakRetained;
}

- (PXPlacesMapLocationEditDelegate)editLocationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_editLocationDelegate);

  return WeakRetained;
}

- (PXPlacesMapBarButtonsDelegate)barButtonsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_barButtonsDelegate);

  return WeakRetained;
}

- (PXPlacesAssetsSelectionDelegate)assetSelectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_assetSelectionDelegate);

  return WeakRetained;
}

- (void)ppt_performPlacesZoomTest:(id)a3 iterations:(int64_t)a4 delay:(double)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a3;
  v12 = [(PXPlacesMapFetchResultViewController *)self mapFetchResultsController];
  v13 = [v12 mapView];

  [v13 ppt_performPlacesZoomTest:v11 iterations:a4 delay:v10 completion:a5];
}

- (void)ppt_performPlacesScrollTest:(id)a3 iterations:(int64_t)a4 screenDelta:(int64_t)a5 delay:(double)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a3;
  v14 = [(PXPlacesMapFetchResultViewController *)self mapFetchResultsController];
  v15 = [v14 mapView];

  [v15 ppt_performPlacesScrollTest:v13 iterations:a4 screenDelta:a5 delay:v12 completion:a6];
}

- (void)_updateMapOptionsView
{
  if ([(PXPlacesMapFetchResultViewController *)self wantsMapOptionsView])
  {
    v3 = [(PXPlacesMapFetchResultViewController *)self mapOptionsView];
    v4 = [(PXPlacesMapFetchResultViewController *)self mapOptionsController];
    [v3 setPerspectiveButtonState:objc_msgSend(v4 animated:{"perspectiveButtonState"), 1}];

    v5 = [(PXPlacesMapFetchResultViewController *)self mapOptionsController];
    v6 = [v5 mapStyle];
    v7 = [(PXPlacesMapFetchResultViewController *)self mapOptionsView];
    [v7 setMapStyle:v6];

    v10 = [(PXPlacesMapFetchResultViewController *)self mapOptionsController];
    v8 = [v10 enableUserTrackingButton];
    v9 = [(PXPlacesMapFetchResultViewController *)self mapOptionsView];
    [v9 setEnableUserTrackingButton:v8];
  }
}

- (id)oneUpPresentationInitialAssetReference:(id)a3
{
  v3 = [(PXPlacesMapFetchResultViewController *)self oneUpDataSourceManager];
  v4 = [v3 dataSource];
  v5 = [v4 startingAssetReference];

  return v5;
}

- (id)oneUpPresentationMediaProvider:(id)a3
{
  v3 = objc_alloc_init(PXPhotoKitUIMediaProvider);

  return v3;
}

- (void)didSelectGeotaggableItems:(id)a3 fromMapView:(id)a4
{
  v5 = [a3 set];
  [(PXPlacesMapFetchResultViewController *)self _selectedGeotaggables:v5];
}

- (void)dataSourceDidChange:(id)a3
{
  if ([(PXPlacesMapFetchResultViewController *)self autoRefocusOnDataChange])
  {
    v4 = [(PXPlacesMapFetchResultViewController *)self mapFetchResultsController];
    v5 = [v4 mapController];
    v6 = [v5 mapViewIsVisible];

    if (v6)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __60__PXPlacesMapFetchResultViewController_dataSourceDidChange___block_invoke;
      block[3] = &unk_1E774C648;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

void __60__PXPlacesMapFetchResultViewController_dataSourceDidChange___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mapFetchResultsController];
  [v1 focusOnGeotaggablesAnimated:1];
}

- (id)dataSourceForAssets:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = a3;
  PXMap();
}

- (id)_fetchHydratedAssetForPlacesAsset:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AE18];
  v14[0] = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:v14 count:1];
  v7 = [v3 predicateWithFormat:@"SELF in %@", v6];

  v8 = [v5 photoLibrary];
  v9 = [v8 librarySpecificFetchOptions];

  [v9 setPredicate:v7];
  v10 = [MEMORY[0x1E6978830] px_placesFetchOptionsWith:v9];

  v11 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:v10];

  if ([v11 count])
  {
    v12 = [v11 firstObject];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_selectedGeotaggables:(id)a3
{
  v36[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([v5 count])
  {
    if ([v5 count] == 1)
    {
      v6 = [v5 allObjects];
      v7 = [v6 firstObject];

      v8 = [(PXPlacesMapFetchResultViewController *)self _fetchHydratedAssetForPlacesAsset:v7];
      [(PXPlacesMapFetchResultViewController *)self setSelectedGeotaggable:v8];

      v9 = [(PXPlacesMapFetchResultViewController *)self selectedGeotaggable];

      if (v9)
      {
        v10 = self;
        v11 = [(PXPlacesMapFetchResultViewController *)v10 pxOneUpPresentationViewController];

        v12 = v10;
        if (v11)
        {
          v12 = [(PXPlacesMapFetchResultViewController *)v10 pxOneUpPresentationViewController];
        }

        [v12 px_enableOneUpPresentation];
        v13 = [v12 px_oneUpPresentation];
        v14 = [(PXPlacesMapFetchResultViewController *)v10 selectedGeotaggable];
        v36[0] = v14;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
        v16 = [(PXPlacesMapFetchResultViewController *)v10 dataSourceForAssets:v15];

        v17 = [[PXPhotoKitAssetsDataSourceManager alloc] initWithPhotosDataSource:v16];
        [(PXPlacesMapFetchResultViewController *)v10 setOneUpDataSourceManager:v17];

        [v13 setDelegate:v10];
        [v13 startWithConfigurationHandler:0];
      }

      goto LABEL_19;
    }

    v18 = [v5 anyObject];
    if (v18)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_9;
      }

      v25 = [MEMORY[0x1E696AAA8] currentHandler];
      v28 = objc_opt_class();
      v27 = NSStringFromClass(v28);
      v29 = [v18 px_descriptionForAssertionMessage];
      [v25 handleFailureInMethod:a2 object:self file:@"PXPlacesMapFetchResultViewController.m" lineNumber:399 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"selectedGeotaggables.anyObject", v27, v29}];
    }

    else
    {
      v25 = [MEMORY[0x1E696AAA8] currentHandler];
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      [v25 handleFailureInMethod:a2 object:self file:@"PXPlacesMapFetchResultViewController.m" lineNumber:399 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"selectedGeotaggables.anyObject", v27}];
    }

LABEL_9:
    v7 = [v18 photoLibrary];

    if (!v7)
    {
      v23 = PLUIGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3C1C000, v23, OS_LOG_TYPE_ERROR, "Missing photoLibrary to show selectedGeotaggables", buf, 2u);
      }

      v7 = 0;
      goto LABEL_19;
    }

    v19 = v5;
    if (v19)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_12:
        v20 = PXPhotosViewConfigurationForPlacesGridWithAssetSet(v19, v7);
        [v20 setOneUpPresentationOrigin:7];
        v21 = [(PXPlacesMapFetchResultViewController *)self photosViewConfigurationPresentationDelegate];
        v22 = v21;
        if (v21)
        {
          [v21 presentPhotosViewControllerWithConfiguration:v20];
        }

        else
        {
          v24 = [PXLemonadeDetailsViewFactory makeDetailsViewControllerWithPhotosViewConfiguration:v20];
          [(PXPlacesMapFetchResultViewController *)self presentViewController:v24 animated:1 completion:0];
        }

LABEL_19:
        goto LABEL_20;
      }

      v30 = [MEMORY[0x1E696AAA8] currentHandler];
      v33 = objc_opt_class();
      v32 = NSStringFromClass(v33);
      v34 = [v19 px_descriptionForAssertionMessage];
      [v30 handleFailureInMethod:a2 object:self file:@"PXPlacesMapFetchResultViewController.m" lineNumber:401 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"selectedGeotaggables", v32, v34}];
    }

    else
    {
      v30 = [MEMORY[0x1E696AAA8] currentHandler];
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      [v30 handleFailureInMethod:a2 object:self file:@"PXPlacesMapFetchResultViewController.m" lineNumber:401 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"selectedGeotaggables", v32}];
    }

    goto LABEL_12;
  }

LABEL_20:
}

- (void)tapFilterAssetsBtn:(id)a3
{
  v4 = [(PXPlacesMapFetchResultViewController *)self mapFetchResultsController];
  v5 = [v4 contentMode];

  [(PXPlacesMapFetchResultViewController *)self _reloadContentModeDisplay:v5 == 0];
  v6 = [(PXPlacesMapFetchResultViewController *)self mapFetchResultsController];
  [v6 setContentMode:v5 == 0];
  [v6 reloadContentModeWithCompletion:0];
}

- (void)_reloadContentModeDisplay:(unint64_t)a3
{
  if (a3)
  {
    if (a3 != 1)
    {
      return;
    }

    v3 = @"PXPlacesShowNearbyAssets";
  }

  else
  {
    v3 = @"PXPlacesHideNearbyAssets";
  }

  v5 = [(PXPlacesMapFetchResultViewController *)self filterAssetsBtn];
  v4 = PXLocalizedStringFromTable(v3, @"PhotosUICore");
  [v5 setTitle:v4];
}

- (void)_placeToolbarItems:(id)a3
{
  v6 = a3;
  v4 = [(PXPlacesMapFetchResultViewController *)self barButtonsDelegate];

  if (v4)
  {
    v5 = [(PXPlacesMapFetchResultViewController *)self barButtonsDelegate];
    [v5 setToolbarButtons:v6];
  }

  else
  {
    [(PXPlacesMapFetchResultViewController *)self setToolbarItems:v6];
  }
}

- (void)setShowNavigationBar:(BOOL)a3
{
  if (self->_showNavigationBar != a3)
  {
    v7[7] = v3;
    v7[8] = v4;
    self->_showNavigationBar = a3;
    v6 = [(UIViewController *)self px_barAppearance];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61__PXPlacesMapFetchResultViewController_setShowNavigationBar___block_invoke;
    v7[3] = &unk_1E7738840;
    v7[4] = self;
    [v6 performChangesWithAnimationOptions:0 changes:v7];
  }
}

void __61__PXPlacesMapFetchResultViewController_setShowNavigationBar___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setPrefersNavigationBarVisible:{objc_msgSend(v2, "showNavigationBar")}];
}

- (void)setStyle:(unint64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
    [(PXPlacesMapFetchResultViewController *)self reloadStyle];
  }
}

- (UIBarButtonItem)filterAssetsBtn
{
  filterAssetsBtn = self->_filterAssetsBtn;
  if (!filterAssetsBtn)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:0 style:0 target:self action:sel_tapFilterAssetsBtn_];
    v5 = self->_filterAssetsBtn;
    self->_filterAssetsBtn = v4;

    filterAssetsBtn = self->_filterAssetsBtn;
  }

  return filterAssetsBtn;
}

- (void)_setupMapModeControlsOverlay
{
  v37[4] = *MEMORY[0x1E69E9840];
  v3 = [(PXPlacesMapFetchResultViewController *)self mapFetchResultsController];
  v4 = [v3 mapView];

  v35 = v4;
  v36 = [[PXPlacesMapModeController alloc] initWithMapView:v4 prefersRealisticElevationStyle:1];
  v5 = [PXPlacesMapOptionsController alloc];
  v6 = [(PXPlacesMapFetchResultViewController *)self mapFetchResultsController];
  v7 = +[PXPlacesLocationAuthorizationMonitor sharedInstance];
  v8 = [(PXPlacesMapOptionsController *)v5 initWithMapModeController:v36 mapFetchResultController:v6 locationAuthorizationMonitor:v7];
  [(PXPlacesMapFetchResultViewController *)self setMapOptionsController:v8];

  v34 = [(PXPlacesMapFetchResultViewController *)self mapOptionsController];
  [v34 setDelegate:self];
  v9 = [[PXMapOptionsView alloc] initWithMapView:v4];
  [(PXPlacesMapFetchResultViewController *)self setMapOptionsView:v9];

  v10 = [(PXPlacesMapFetchResultViewController *)self mapOptionsView];
  [v10 setDelegate:v34];
  [(PXPlacesMapFetchResultViewController *)self _updateMapOptionsView];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [(PXPlacesMapFetchResultViewController *)self view];
  [v11 addSubview:v10];

  v25 = MEMORY[0x1E696ACD8];
  v32 = [v10 topAnchor];
  v33 = [(PXPlacesMapFetchResultViewController *)self view];
  v31 = [v33 safeAreaLayoutGuide];
  v30 = [v31 topAnchor];
  v29 = [v32 constraintEqualToAnchor:v30 constant:8.0];
  v37[0] = v29;
  v27 = [v10 trailingAnchor];
  v28 = [(PXPlacesMapFetchResultViewController *)self view];
  v26 = [v28 safeAreaLayoutGuide];
  v24 = [v26 trailingAnchor];
  v23 = [v27 constraintEqualToAnchor:v24 constant:-8.0];
  v37[1] = v23;
  v21 = [v10 leadingAnchor];
  v22 = [(PXPlacesMapFetchResultViewController *)self view];
  v12 = [v22 safeAreaLayoutGuide];
  v13 = [v12 leadingAnchor];
  v14 = [v21 constraintGreaterThanOrEqualToAnchor:v13 constant:8.0];
  v37[2] = v14;
  v15 = [v10 bottomAnchor];
  v16 = [(PXPlacesMapFetchResultViewController *)self view];
  v17 = [v16 safeAreaLayoutGuide];
  v18 = [v17 bottomAnchor];
  v19 = [v15 constraintLessThanOrEqualToAnchor:v18 constant:-8.0];
  v37[3] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:4];
  [v25 activateConstraints:v20];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = PXPlacesMapFetchResultViewController;
  [(PXPlacesMapFetchResultViewController *)&v7 viewDidDisappear:a3];
  v4 = [(PXPlacesMapFetchResultViewController *)self navigationBarTintColor];

  if (v4)
  {
    v5 = [(PXPlacesMapFetchResultViewController *)self navigationController];
    v6 = [v5 navigationBar];
    [v6 setTintColor:0];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = PXPlacesMapFetchResultViewController;
  [(PXPlacesMapFetchResultViewController *)&v11 viewWillAppear:a3];
  v4 = [(PXPlacesMapFetchResultViewController *)self navigationBarTintColor];
  if (v4)
  {
    v5 = [(PXPlacesMapFetchResultViewController *)self navigationController];
    v6 = [v5 navigationBar];

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55__PXPlacesMapFetchResultViewController_viewWillAppear___block_invoke;
    v8[3] = &unk_1E774C620;
    v9 = v6;
    v10 = v4;
    v7 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], v8);
  }
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = PXPlacesMapFetchResultViewController;
  [(PXPlacesMapFetchResultViewController *)&v19 viewDidLoad];
  v3 = [(PXPlacesMapFetchResultViewController *)self navigationItem];
  v4 = PXLocalizedStringFromTable(@"PXPlacesWidgetTitle", @"PhotosUICore");
  [v3 setTitle:v4];

  v5 = PXLocalizedStringFromTable(@"PXPlacesFullSizeViewTitle", @"PhotosUICore");
  [(PXPlacesMapFetchResultViewController *)self setTitle:v5];

  v6 = [(PXPlacesMapFetchResultViewController *)self view];
  v7 = [(PXPlacesMapFetchResultViewController *)self mapFetchResultsController];
  v8 = [v7 mapViewController];

  v9 = [v8 view];
  [v6 bounds];
  [v9 setFrame:?];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 addSubview:v9];
  v10 = _NSDictionaryOfVariableBindings(&cfstr_Mapcontainervi.isa, v9, 0);
  v11 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[mapContainerView]|" options:0 metrics:0 views:v10];
  [v6 addConstraints:v11];

  v12 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[mapContainerView]|" options:0 metrics:0 views:v10];
  [v6 addConstraints:v12];

  if ([(PXPlacesMapFetchResultViewController *)self wantsMapOptionsView])
  {
    [(PXPlacesMapFetchResultViewController *)self _setupMapModeControlsOverlay];
  }

  [v8 didMoveToParentViewController:self];
  [(PXPlacesMapFetchResultViewController *)self reloadStyle];
  objc_initWeak(&location, self);
  v13 = [(PXPlacesMapFetchResultViewController *)self mapFetchResultsController];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __51__PXPlacesMapFetchResultViewController_viewDidLoad__block_invoke;
  v15[3] = &unk_1E774B248;
  v14 = v13;
  v16 = v14;
  objc_copyWeak(&v17, &location);
  [v14 reloadContentModeWithCompletion:v15];
  objc_destroyWeak(&v17);

  objc_destroyWeak(&location);
}

void __51__PXPlacesMapFetchResultViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__PXPlacesMapFetchResultViewController_viewDidLoad__block_invoke_2;
  v3[3] = &unk_1E774B248;
  objc_copyWeak(&v5, (a1 + 40));
  v4 = *(a1 + 32);
  [v2 resumeWithCompletion:v3];

  objc_destroyWeak(&v5);
}

void __51__PXPlacesMapFetchResultViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __51__PXPlacesMapFetchResultViewController_viewDidLoad__block_invoke_3;
  v2[3] = &unk_1E774B248;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);

  objc_destroyWeak(&v4);
}

void __51__PXPlacesMapFetchResultViewController_viewDidLoad__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained style];

  if (v3)
  {
    v4 = *(a1 + 32);

    [v4 focusOnProvidedAssetsAnimated:0];
  }
}

- (BOOL)prefersStatusBarHidden
{
  v5.receiver = self;
  v5.super_class = PXPlacesMapFetchResultViewController;
  v3 = [(PXPlacesMapFetchResultViewController *)&v5 prefersStatusBarHidden];
  return PXShouldHideStatusBarWithCameraWorkaround(self, v3);
}

- (void)loadView
{
  v3 = [(PXPlacesMapFetchResultViewController *)self nibName];

  if (v3)
  {
    v6.receiver = self;
    v6.super_class = PXPlacesMapFetchResultViewController;
    [(PXPlacesMapFetchResultViewController *)&v6 loadView];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v4 = [MEMORY[0x1E69DC888] whiteColor];
    [v5 setBackgroundColor:v4];

    [(PXPlacesMapFetchResultViewController *)self setView:v5];
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PXPlacesMapFetchResultViewController;
  [(PXPlacesMapFetchResultViewController *)&v4 dealloc];
}

- (PXPlacesMapFetchResultViewController)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXPlacesMapFetchResultViewController.m" lineNumber:130 description:{@"%s is not available as initializer", "-[PXPlacesMapFetchResultViewController init]"}];

  abort();
}

- (PXPlacesMapFetchResultViewController)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXPlacesMapFetchResultViewController.m" lineNumber:126 description:{@"%s is not available as initializer", "-[PXPlacesMapFetchResultViewController initWithCoder:]"}];

  abort();
}

- (PXPlacesMapFetchResultViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"PXPlacesMapFetchResultViewController.m" lineNumber:122 description:{@"%s is not available as initializer", "-[PXPlacesMapFetchResultViewController initWithNibName:bundle:]"}];

  abort();
}

- (PXPlacesMapFetchResultViewController)initWithInitialCenterCoordinate:(CLLocationCoordinate2D)a3 enableNearbyAssetsAffordance:(BOOL)a4 wantsMapOptionsView:(BOOL)a5 photoLibrary:(id)a6 mapFetchResultController:(id)a7
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v9 = [(PXPlacesMapFetchResultViewController *)self initWithInitialCoordinateRegion:a4 enableNearbyAssetsAffordance:a5 wantsMapOptionsView:a6 photoLibrary:a7 mapFetchResultController:*MEMORY[0x1E696F068], *(MEMORY[0x1E696F068] + 8), *(MEMORY[0x1E696F068] + 16), *(MEMORY[0x1E696F068] + 24)];
  v10 = [(PXPlacesMapFetchResultController *)v9->_mapFetchResultsController mapController];
  [v10 setInitialCenterCoordinate:{latitude, longitude}];

  return v9;
}

- (PXPlacesMapFetchResultViewController)initWithInitialCoordinateRegion:(id *)a3 enableNearbyAssetsAffordance:(BOOL)a4 wantsMapOptionsView:(BOOL)a5 photoLibrary:(id)a6 mapFetchResultController:(id)a7
{
  v12 = a5;
  v14 = a3;
  v15 = v10;
  v16 = v9;
  v17 = v8;
  v18 = v7;
  v21 = a5;
  v22 = a6;
  if (!v21)
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"PXPlacesMapFetchResultViewController.m" lineNumber:86 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v34.receiver = self;
  v34.super_class = PXPlacesMapFetchResultViewController;
  v23 = [(PXPlacesMapFetchResultViewController *)&v34 initWithNibName:0 bundle:0];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_photoLibrary, v12);
    v24->_style = 0;
    v24->_enableNearbyAssetsAffordance = v14;
    v24->_wantsMapOptionsView = a4;
    objc_storeStrong(&v24->_mapFetchResultsController, a6);
    v24->_showNavigationBar = 1;
    v25 = [v22 mapViewController];
    [(PXPlacesMapFetchResultViewController *)v24 addChildViewController:v25];

    v26 = [(PXPlacesMapFetchResultController *)v24->_mapFetchResultsController mapController];
    [v26 setChangeDelegate:v24];

    v27 = [(PXPlacesMapFetchResultController *)v24->_mapFetchResultsController mapController];
    [v27 setSelectionDelegate:v24];

    v28 = [(PXPlacesMapFetchResultController *)v24->_mapFetchResultsController mapController];
    [v28 setInitialCoordinateRegion:{v18, v17, v16, v15}];

    v29 = objc_alloc_init(PXPlacesMapThumbnailLocationCurator);
    thumbnailLocationCurator = v24->_thumbnailLocationCurator;
    v24->_thumbnailLocationCurator = v29;

    v31 = [(PXPlacesMapFetchResultViewController *)v24 thumbnailLocationCurator];
    [(PXPlacesMapFetchResultController *)v24->_mapFetchResultsController setThumbnailLocationCurator:v31];
  }

  return v24;
}

@end