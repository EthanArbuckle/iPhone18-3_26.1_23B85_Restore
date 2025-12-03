@interface PXPlacesMapFetchResultViewController
- (BOOL)prefersStatusBarHidden;
- (PXPhotosViewConfigurationPresentationDelegate)photosViewConfigurationPresentationDelegate;
- (PXPlacesAssetsSelectionDelegate)assetSelectionDelegate;
- (PXPlacesMapBarButtonsDelegate)barButtonsDelegate;
- (PXPlacesMapFetchResultViewController)init;
- (PXPlacesMapFetchResultViewController)initWithCoder:(id)coder;
- (PXPlacesMapFetchResultViewController)initWithInitialCenterCoordinate:(CLLocationCoordinate2D)coordinate enableNearbyAssetsAffordance:(BOOL)affordance wantsMapOptionsView:(BOOL)view photoLibrary:(id)library mapFetchResultController:(id)controller;
- (PXPlacesMapFetchResultViewController)initWithInitialCoordinateRegion:(id *)region enableNearbyAssetsAffordance:(BOOL)affordance wantsMapOptionsView:(BOOL)view photoLibrary:(id)library mapFetchResultController:(id)controller;
- (PXPlacesMapFetchResultViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PXPlacesMapLocationEditDelegate)editLocationDelegate;
- (UIBarButtonItem)filterAssetsBtn;
- (UIViewController)pxOneUpPresentationViewController;
- (id)_fetchHydratedAssetForPlacesAsset:(id)asset;
- (id)dataSourceForAssets:(id)assets;
- (id)oneUpPresentationInitialAssetReference:(id)reference;
- (id)oneUpPresentationMediaProvider:(id)provider;
- (void)_placeToolbarItems:(id)items;
- (void)_reloadContentModeDisplay:(unint64_t)display;
- (void)_selectedGeotaggables:(id)geotaggables;
- (void)_setupMapModeControlsOverlay;
- (void)_updateMapOptionsView;
- (void)dataSourceDidChange:(id)change;
- (void)dealloc;
- (void)didSelectGeotaggableItems:(id)items fromMapView:(id)view;
- (void)loadView;
- (void)ppt_performPlacesScrollTest:(id)test iterations:(int64_t)iterations screenDelta:(int64_t)delta delay:(double)delay completion:(id)completion;
- (void)ppt_performPlacesZoomTest:(id)test iterations:(int64_t)iterations delay:(double)delay completion:(id)completion;
- (void)setShowNavigationBar:(BOOL)bar;
- (void)setStyle:(unint64_t)style;
- (void)tapFilterAssetsBtn:(id)btn;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
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

- (void)ppt_performPlacesZoomTest:(id)test iterations:(int64_t)iterations delay:(double)delay completion:(id)completion
{
  completionCopy = completion;
  testCopy = test;
  mapFetchResultsController = [(PXPlacesMapFetchResultViewController *)self mapFetchResultsController];
  mapView = [mapFetchResultsController mapView];

  [mapView ppt_performPlacesZoomTest:testCopy iterations:iterations delay:completionCopy completion:delay];
}

- (void)ppt_performPlacesScrollTest:(id)test iterations:(int64_t)iterations screenDelta:(int64_t)delta delay:(double)delay completion:(id)completion
{
  completionCopy = completion;
  testCopy = test;
  mapFetchResultsController = [(PXPlacesMapFetchResultViewController *)self mapFetchResultsController];
  mapView = [mapFetchResultsController mapView];

  [mapView ppt_performPlacesScrollTest:testCopy iterations:iterations screenDelta:delta delay:completionCopy completion:delay];
}

- (void)_updateMapOptionsView
{
  if ([(PXPlacesMapFetchResultViewController *)self wantsMapOptionsView])
  {
    mapOptionsView = [(PXPlacesMapFetchResultViewController *)self mapOptionsView];
    mapOptionsController = [(PXPlacesMapFetchResultViewController *)self mapOptionsController];
    [mapOptionsView setPerspectiveButtonState:objc_msgSend(mapOptionsController animated:{"perspectiveButtonState"), 1}];

    mapOptionsController2 = [(PXPlacesMapFetchResultViewController *)self mapOptionsController];
    mapStyle = [mapOptionsController2 mapStyle];
    mapOptionsView2 = [(PXPlacesMapFetchResultViewController *)self mapOptionsView];
    [mapOptionsView2 setMapStyle:mapStyle];

    mapOptionsController3 = [(PXPlacesMapFetchResultViewController *)self mapOptionsController];
    enableUserTrackingButton = [mapOptionsController3 enableUserTrackingButton];
    mapOptionsView3 = [(PXPlacesMapFetchResultViewController *)self mapOptionsView];
    [mapOptionsView3 setEnableUserTrackingButton:enableUserTrackingButton];
  }
}

- (id)oneUpPresentationInitialAssetReference:(id)reference
{
  oneUpDataSourceManager = [(PXPlacesMapFetchResultViewController *)self oneUpDataSourceManager];
  dataSource = [oneUpDataSourceManager dataSource];
  startingAssetReference = [dataSource startingAssetReference];

  return startingAssetReference;
}

- (id)oneUpPresentationMediaProvider:(id)provider
{
  v3 = objc_alloc_init(PXPhotoKitUIMediaProvider);

  return v3;
}

- (void)didSelectGeotaggableItems:(id)items fromMapView:(id)view
{
  v5 = [items set];
  [(PXPlacesMapFetchResultViewController *)self _selectedGeotaggables:v5];
}

- (void)dataSourceDidChange:(id)change
{
  if ([(PXPlacesMapFetchResultViewController *)self autoRefocusOnDataChange])
  {
    mapFetchResultsController = [(PXPlacesMapFetchResultViewController *)self mapFetchResultsController];
    mapController = [mapFetchResultsController mapController];
    mapViewIsVisible = [mapController mapViewIsVisible];

    if (mapViewIsVisible)
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

- (id)dataSourceForAssets:(id)assets
{
  v5 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  PXMap();
}

- (id)_fetchHydratedAssetForPlacesAsset:(id)asset
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AE18];
  v14[0] = asset;
  v4 = MEMORY[0x1E695DEC8];
  assetCopy = asset;
  v6 = [v4 arrayWithObjects:v14 count:1];
  v7 = [v3 predicateWithFormat:@"SELF in %@", v6];

  photoLibrary = [assetCopy photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setPredicate:v7];
  v10 = [MEMORY[0x1E6978830] px_placesFetchOptionsWith:librarySpecificFetchOptions];

  v11 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:v10];

  if ([v11 count])
  {
    firstObject = [v11 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (void)_selectedGeotaggables:(id)geotaggables
{
  v36[1] = *MEMORY[0x1E69E9840];
  geotaggablesCopy = geotaggables;
  if ([geotaggablesCopy count])
  {
    if ([geotaggablesCopy count] == 1)
    {
      allObjects = [geotaggablesCopy allObjects];
      firstObject = [allObjects firstObject];

      v8 = [(PXPlacesMapFetchResultViewController *)self _fetchHydratedAssetForPlacesAsset:firstObject];
      [(PXPlacesMapFetchResultViewController *)self setSelectedGeotaggable:v8];

      selectedGeotaggable = [(PXPlacesMapFetchResultViewController *)self selectedGeotaggable];

      if (selectedGeotaggable)
      {
        selfCopy = self;
        pxOneUpPresentationViewController = [(PXPlacesMapFetchResultViewController *)selfCopy pxOneUpPresentationViewController];

        pxOneUpPresentationViewController2 = selfCopy;
        if (pxOneUpPresentationViewController)
        {
          pxOneUpPresentationViewController2 = [(PXPlacesMapFetchResultViewController *)selfCopy pxOneUpPresentationViewController];
        }

        [pxOneUpPresentationViewController2 px_enableOneUpPresentation];
        px_oneUpPresentation = [pxOneUpPresentationViewController2 px_oneUpPresentation];
        selectedGeotaggable2 = [(PXPlacesMapFetchResultViewController *)selfCopy selectedGeotaggable];
        v36[0] = selectedGeotaggable2;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
        v16 = [(PXPlacesMapFetchResultViewController *)selfCopy dataSourceForAssets:v15];

        v17 = [[PXPhotoKitAssetsDataSourceManager alloc] initWithPhotosDataSource:v16];
        [(PXPlacesMapFetchResultViewController *)selfCopy setOneUpDataSourceManager:v17];

        [px_oneUpPresentation setDelegate:selfCopy];
        [px_oneUpPresentation startWithConfigurationHandler:0];
      }

      goto LABEL_19;
    }

    anyObject = [geotaggablesCopy anyObject];
    if (anyObject)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_9;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v28 = objc_opt_class();
      v27 = NSStringFromClass(v28);
      px_descriptionForAssertionMessage = [anyObject px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPlacesMapFetchResultViewController.m" lineNumber:399 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"selectedGeotaggables.anyObject", v27, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPlacesMapFetchResultViewController.m" lineNumber:399 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"selectedGeotaggables.anyObject", v27}];
    }

LABEL_9:
    firstObject = [anyObject photoLibrary];

    if (!firstObject)
    {
      v23 = PLUIGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3C1C000, v23, OS_LOG_TYPE_ERROR, "Missing photoLibrary to show selectedGeotaggables", buf, 2u);
      }

      firstObject = 0;
      goto LABEL_19;
    }

    v19 = geotaggablesCopy;
    if (v19)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_12:
        v20 = PXPhotosViewConfigurationForPlacesGridWithAssetSet(v19, firstObject);
        [v20 setOneUpPresentationOrigin:7];
        photosViewConfigurationPresentationDelegate = [(PXPlacesMapFetchResultViewController *)self photosViewConfigurationPresentationDelegate];
        v22 = photosViewConfigurationPresentationDelegate;
        if (photosViewConfigurationPresentationDelegate)
        {
          [photosViewConfigurationPresentationDelegate presentPhotosViewControllerWithConfiguration:v20];
        }

        else
        {
          v24 = [PXLemonadeDetailsViewFactory makeDetailsViewControllerWithPhotosViewConfiguration:v20];
          [(PXPlacesMapFetchResultViewController *)self presentViewController:v24 animated:1 completion:0];
        }

LABEL_19:
        goto LABEL_20;
      }

      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v33 = objc_opt_class();
      v32 = NSStringFromClass(v33);
      px_descriptionForAssertionMessage2 = [v19 px_descriptionForAssertionMessage];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPlacesMapFetchResultViewController.m" lineNumber:401 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"selectedGeotaggables", v32, px_descriptionForAssertionMessage2}];
    }

    else
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPlacesMapFetchResultViewController.m" lineNumber:401 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"selectedGeotaggables", v32}];
    }

    goto LABEL_12;
  }

LABEL_20:
}

- (void)tapFilterAssetsBtn:(id)btn
{
  mapFetchResultsController = [(PXPlacesMapFetchResultViewController *)self mapFetchResultsController];
  contentMode = [mapFetchResultsController contentMode];

  [(PXPlacesMapFetchResultViewController *)self _reloadContentModeDisplay:contentMode == 0];
  mapFetchResultsController2 = [(PXPlacesMapFetchResultViewController *)self mapFetchResultsController];
  [mapFetchResultsController2 setContentMode:contentMode == 0];
  [mapFetchResultsController2 reloadContentModeWithCompletion:0];
}

- (void)_reloadContentModeDisplay:(unint64_t)display
{
  if (display)
  {
    if (display != 1)
    {
      return;
    }

    v3 = @"PXPlacesShowNearbyAssets";
  }

  else
  {
    v3 = @"PXPlacesHideNearbyAssets";
  }

  filterAssetsBtn = [(PXPlacesMapFetchResultViewController *)self filterAssetsBtn];
  v4 = PXLocalizedStringFromTable(v3, @"PhotosUICore");
  [filterAssetsBtn setTitle:v4];
}

- (void)_placeToolbarItems:(id)items
{
  itemsCopy = items;
  barButtonsDelegate = [(PXPlacesMapFetchResultViewController *)self barButtonsDelegate];

  if (barButtonsDelegate)
  {
    barButtonsDelegate2 = [(PXPlacesMapFetchResultViewController *)self barButtonsDelegate];
    [barButtonsDelegate2 setToolbarButtons:itemsCopy];
  }

  else
  {
    [(PXPlacesMapFetchResultViewController *)self setToolbarItems:itemsCopy];
  }
}

- (void)setShowNavigationBar:(BOOL)bar
{
  if (self->_showNavigationBar != bar)
  {
    v7[7] = v3;
    v7[8] = v4;
    self->_showNavigationBar = bar;
    px_barAppearance = [(UIViewController *)self px_barAppearance];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61__PXPlacesMapFetchResultViewController_setShowNavigationBar___block_invoke;
    v7[3] = &unk_1E7738840;
    v7[4] = self;
    [px_barAppearance performChangesWithAnimationOptions:0 changes:v7];
  }
}

void __61__PXPlacesMapFetchResultViewController_setShowNavigationBar___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setPrefersNavigationBarVisible:{objc_msgSend(v2, "showNavigationBar")}];
}

- (void)setStyle:(unint64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
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
  mapFetchResultsController = [(PXPlacesMapFetchResultViewController *)self mapFetchResultsController];
  mapView = [mapFetchResultsController mapView];

  v35 = mapView;
  v36 = [[PXPlacesMapModeController alloc] initWithMapView:mapView prefersRealisticElevationStyle:1];
  v5 = [PXPlacesMapOptionsController alloc];
  mapFetchResultsController2 = [(PXPlacesMapFetchResultViewController *)self mapFetchResultsController];
  v7 = +[PXPlacesLocationAuthorizationMonitor sharedInstance];
  v8 = [(PXPlacesMapOptionsController *)v5 initWithMapModeController:v36 mapFetchResultController:mapFetchResultsController2 locationAuthorizationMonitor:v7];
  [(PXPlacesMapFetchResultViewController *)self setMapOptionsController:v8];

  mapOptionsController = [(PXPlacesMapFetchResultViewController *)self mapOptionsController];
  [mapOptionsController setDelegate:self];
  v9 = [[PXMapOptionsView alloc] initWithMapView:mapView];
  [(PXPlacesMapFetchResultViewController *)self setMapOptionsView:v9];

  mapOptionsView = [(PXPlacesMapFetchResultViewController *)self mapOptionsView];
  [mapOptionsView setDelegate:mapOptionsController];
  [(PXPlacesMapFetchResultViewController *)self _updateMapOptionsView];
  [mapOptionsView setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(PXPlacesMapFetchResultViewController *)self view];
  [view addSubview:mapOptionsView];

  v25 = MEMORY[0x1E696ACD8];
  topAnchor = [mapOptionsView topAnchor];
  view2 = [(PXPlacesMapFetchResultViewController *)self view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v29 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:8.0];
  v37[0] = v29;
  trailingAnchor = [mapOptionsView trailingAnchor];
  view3 = [(PXPlacesMapFetchResultViewController *)self view];
  safeAreaLayoutGuide2 = [view3 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-8.0];
  v37[1] = v23;
  leadingAnchor = [mapOptionsView leadingAnchor];
  view4 = [(PXPlacesMapFetchResultViewController *)self view];
  safeAreaLayoutGuide3 = [view4 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide3 leadingAnchor];
  v14 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:8.0];
  v37[2] = v14;
  bottomAnchor = [mapOptionsView bottomAnchor];
  view5 = [(PXPlacesMapFetchResultViewController *)self view];
  safeAreaLayoutGuide4 = [view5 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide4 bottomAnchor];
  v19 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2 constant:-8.0];
  v37[3] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:4];
  [v25 activateConstraints:v20];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = PXPlacesMapFetchResultViewController;
  [(PXPlacesMapFetchResultViewController *)&v7 viewDidDisappear:disappear];
  navigationBarTintColor = [(PXPlacesMapFetchResultViewController *)self navigationBarTintColor];

  if (navigationBarTintColor)
  {
    navigationController = [(PXPlacesMapFetchResultViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];
    [navigationBar setTintColor:0];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v11.receiver = self;
  v11.super_class = PXPlacesMapFetchResultViewController;
  [(PXPlacesMapFetchResultViewController *)&v11 viewWillAppear:appear];
  navigationBarTintColor = [(PXPlacesMapFetchResultViewController *)self navigationBarTintColor];
  if (navigationBarTintColor)
  {
    navigationController = [(PXPlacesMapFetchResultViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55__PXPlacesMapFetchResultViewController_viewWillAppear___block_invoke;
    v8[3] = &unk_1E774C620;
    v9 = navigationBar;
    v10 = navigationBarTintColor;
    v7 = navigationBar;
    dispatch_async(MEMORY[0x1E69E96A0], v8);
  }
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = PXPlacesMapFetchResultViewController;
  [(PXPlacesMapFetchResultViewController *)&v19 viewDidLoad];
  navigationItem = [(PXPlacesMapFetchResultViewController *)self navigationItem];
  v4 = PXLocalizedStringFromTable(@"PXPlacesWidgetTitle", @"PhotosUICore");
  [navigationItem setTitle:v4];

  v5 = PXLocalizedStringFromTable(@"PXPlacesFullSizeViewTitle", @"PhotosUICore");
  [(PXPlacesMapFetchResultViewController *)self setTitle:v5];

  view = [(PXPlacesMapFetchResultViewController *)self view];
  mapFetchResultsController = [(PXPlacesMapFetchResultViewController *)self mapFetchResultsController];
  mapViewController = [mapFetchResultsController mapViewController];

  view2 = [mapViewController view];
  [view bounds];
  [view2 setFrame:?];
  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:view2];
  v10 = _NSDictionaryOfVariableBindings(&cfstr_Mapcontainervi.isa, view2, 0);
  v11 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[mapContainerView]|" options:0 metrics:0 views:v10];
  [view addConstraints:v11];

  v12 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[mapContainerView]|" options:0 metrics:0 views:v10];
  [view addConstraints:v12];

  if ([(PXPlacesMapFetchResultViewController *)self wantsMapOptionsView])
  {
    [(PXPlacesMapFetchResultViewController *)self _setupMapModeControlsOverlay];
  }

  [mapViewController didMoveToParentViewController:self];
  [(PXPlacesMapFetchResultViewController *)self reloadStyle];
  objc_initWeak(&location, self);
  mapFetchResultsController2 = [(PXPlacesMapFetchResultViewController *)self mapFetchResultsController];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __51__PXPlacesMapFetchResultViewController_viewDidLoad__block_invoke;
  v15[3] = &unk_1E774B248;
  v14 = mapFetchResultsController2;
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
  prefersStatusBarHidden = [(PXPlacesMapFetchResultViewController *)&v5 prefersStatusBarHidden];
  return PXShouldHideStatusBarWithCameraWorkaround(self, prefersStatusBarHidden);
}

- (void)loadView
{
  nibName = [(PXPlacesMapFetchResultViewController *)self nibName];

  if (nibName)
  {
    v6.receiver = self;
    v6.super_class = PXPlacesMapFetchResultViewController;
    [(PXPlacesMapFetchResultViewController *)&v6 loadView];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [v5 setBackgroundColor:whiteColor];

    [(PXPlacesMapFetchResultViewController *)self setView:v5];
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PXPlacesMapFetchResultViewController;
  [(PXPlacesMapFetchResultViewController *)&v4 dealloc];
}

- (PXPlacesMapFetchResultViewController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPlacesMapFetchResultViewController.m" lineNumber:130 description:{@"%s is not available as initializer", "-[PXPlacesMapFetchResultViewController init]"}];

  abort();
}

- (PXPlacesMapFetchResultViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPlacesMapFetchResultViewController.m" lineNumber:126 description:{@"%s is not available as initializer", "-[PXPlacesMapFetchResultViewController initWithCoder:]"}];

  abort();
}

- (PXPlacesMapFetchResultViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPlacesMapFetchResultViewController.m" lineNumber:122 description:{@"%s is not available as initializer", "-[PXPlacesMapFetchResultViewController initWithNibName:bundle:]"}];

  abort();
}

- (PXPlacesMapFetchResultViewController)initWithInitialCenterCoordinate:(CLLocationCoordinate2D)coordinate enableNearbyAssetsAffordance:(BOOL)affordance wantsMapOptionsView:(BOOL)view photoLibrary:(id)library mapFetchResultController:(id)controller
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v9 = [(PXPlacesMapFetchResultViewController *)self initWithInitialCoordinateRegion:affordance enableNearbyAssetsAffordance:view wantsMapOptionsView:library photoLibrary:controller mapFetchResultController:*MEMORY[0x1E696F068], *(MEMORY[0x1E696F068] + 8), *(MEMORY[0x1E696F068] + 16), *(MEMORY[0x1E696F068] + 24)];
  mapController = [(PXPlacesMapFetchResultController *)v9->_mapFetchResultsController mapController];
  [mapController setInitialCenterCoordinate:{latitude, longitude}];

  return v9;
}

- (PXPlacesMapFetchResultViewController)initWithInitialCoordinateRegion:(id *)region enableNearbyAssetsAffordance:(BOOL)affordance wantsMapOptionsView:(BOOL)view photoLibrary:(id)library mapFetchResultController:(id)controller
{
  viewCopy = view;
  regionCopy = region;
  v15 = v10;
  v16 = v9;
  v17 = v8;
  v18 = v7;
  viewCopy2 = view;
  libraryCopy = library;
  if (!viewCopy2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPlacesMapFetchResultViewController.m" lineNumber:86 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v34.receiver = self;
  v34.super_class = PXPlacesMapFetchResultViewController;
  v23 = [(PXPlacesMapFetchResultViewController *)&v34 initWithNibName:0 bundle:0];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_photoLibrary, viewCopy);
    v24->_style = 0;
    v24->_enableNearbyAssetsAffordance = regionCopy;
    v24->_wantsMapOptionsView = affordance;
    objc_storeStrong(&v24->_mapFetchResultsController, library);
    v24->_showNavigationBar = 1;
    mapViewController = [libraryCopy mapViewController];
    [(PXPlacesMapFetchResultViewController *)v24 addChildViewController:mapViewController];

    mapController = [(PXPlacesMapFetchResultController *)v24->_mapFetchResultsController mapController];
    [mapController setChangeDelegate:v24];

    mapController2 = [(PXPlacesMapFetchResultController *)v24->_mapFetchResultsController mapController];
    [mapController2 setSelectionDelegate:v24];

    mapController3 = [(PXPlacesMapFetchResultController *)v24->_mapFetchResultsController mapController];
    [mapController3 setInitialCoordinateRegion:{v18, v17, v16, v15}];

    v29 = objc_alloc_init(PXPlacesMapThumbnailLocationCurator);
    thumbnailLocationCurator = v24->_thumbnailLocationCurator;
    v24->_thumbnailLocationCurator = v29;

    thumbnailLocationCurator = [(PXPlacesMapFetchResultViewController *)v24 thumbnailLocationCurator];
    [(PXPlacesMapFetchResultController *)v24->_mapFetchResultsController setThumbnailLocationCurator:thumbnailLocationCurator];
  }

  return v24;
}

@end