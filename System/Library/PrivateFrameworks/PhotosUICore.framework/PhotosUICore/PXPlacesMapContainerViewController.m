@interface PXPlacesMapContainerViewController
- (PXPlacesMapContainerViewController)init;
- (PXPlacesMapContainerViewController)initWithCoder:(id)a3;
- (PXPlacesMapContainerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PXPlacesMapContainerViewController)initWithPhotoLibrary:(id)a3 configuration:(id)a4;
- (id)px_navigationDestination;
- (unint64_t)routingOptionsForDestination:(id)a3;
- (void)_resetNavigationItem;
- (void)_switchToLegacyGridController;
- (void)_switchToMapController;
- (void)_updateNavigationItemTitleWithConfigurationIfPossible;
- (void)_updateShouldOptOutFromChromelessBars;
- (void)legacyStrategyForHandleViewController:(id)a3 didUpdateBarsAnimated:(BOOL)a4 isSelecting:(BOOL)a5;
- (void)loadView;
- (void)navigateToDestination:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)setNavigationBarButtons:(id)a3;
- (void)subviewControlChanged:(id)a3;
- (void)viewControllerDidUpdateNavigationItemAppearance:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PXPlacesMapContainerViewController

- (id)px_navigationDestination
{
  px_navigationDestination = self->_px_navigationDestination;
  if (!px_navigationDestination)
  {
    v4 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    v5 = [v4 px_assetCollectionForSmartAlbumWithSubtype:1000000203];
    v6 = [[PXProgrammaticNavigationDestination alloc] initWithObject:v5 revealMode:0];
    v7 = self->_px_navigationDestination;
    self->_px_navigationDestination = v6;

    px_navigationDestination = self->_px_navigationDestination;
  }

  return px_navigationDestination;
}

- (void)navigateToDestination:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v15 = a5;
  v7 = a3;
  v8 = [(PXPlacesMapContainerViewController *)self routingOptionsForDestination:v7];
  v9 = [v7 sidebarBackNavigationRootDestination];

  v10 = [v9 collection];
  v11 = [v10 px_isPlacesSmartAlbum];

  if (v11)
  {
    v12 = [(PXPlacesMapContainerViewController *)self navigationItem];
    [v12 px_setHidesBackButtonInRegularWidth:1];
    v13 = [(PXPlacesMapContainerViewController *)self traitCollection];
    [v12 px_updateBackButtonVisibilityForTraitCollection:v13];
  }

  if (v8 == 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  v15[2](v15, v14, 0);
}

- (unint64_t)routingOptionsForDestination:(id)a3
{
  v3 = a3;
  if ([v3 type] == 8)
  {
    v4 = [v3 collection];
    v5 = [v4 px_isPlacesSmartAlbum];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setNavigationBarButtons:(id)a3
{
  v4 = a3;
  v5 = [(PXPlacesMapContainerViewController *)self navigationItem];
  [v5 setRightBarButtonItems:v4];
}

- (void)_updateNavigationItemTitleWithConfigurationIfPossible
{
  v6 = [(PXPlacesMapContainerViewController *)self configuration];
  v3 = [v6 localizedNavigationItemTitle];
  v4 = v3;
  if (!v3)
  {
    v4 = PXLocalizedStringFromTable(@"PXPlacesFullSizeViewTitle", @"PhotosUICore");
  }

  v5 = [(PXPlacesMapContainerViewController *)self navigationItem];
  [v5 setTitle:v4];

  if (!v3)
  {
  }
}

- (void)_resetNavigationItem
{
  v5 = [(PXPlacesMapContainerViewController *)self navigationItem];
  v3 = [(PXPlacesMapContainerViewController *)self initialLeftBarButtonItems];
  [v5 setLeftBarButtonItems:v3];

  [v5 setRightBarButtonItems:0];
  v4 = [(PXPlacesMapContainerViewController *)self subviewControl];
  [v5 setTitleView:v4];

  [v5 setStandardAppearance:0];
  [v5 setCompactAppearance:0];
  [v5 setScrollEdgeAppearance:0];
}

- (void)viewControllerDidUpdateNavigationItemAppearance:(id)a3
{
  v4 = a3;
  v9 = [(PXPlacesMapContainerViewController *)self navigationItem];
  v5 = [v4 navigationItem];

  v6 = [v5 standardAppearance];
  [v9 setStandardAppearance:v6];

  v7 = [v5 compactAppearance];
  [v9 setCompactAppearance:v7];

  v8 = [v5 scrollEdgeAppearance];
  [v9 setScrollEdgeAppearance:v8];
}

- (void)legacyStrategyForHandleViewController:(id)a3 didUpdateBarsAnimated:(BOOL)a4 isSelecting:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v18 = a3;
  v8 = [(PXPlacesMapContainerViewController *)self navigationItem];
  v9 = [v18 navigationItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [(PXPlacesMapContainerViewController *)self gridControllerEditing];
    [(PXPlacesMapContainerViewController *)self setGridControllerEditing:v5];
    if (v5)
    {
      [v8 setTitleView:0];
      v11 = [v9 title];
      [v8 setTitle:v11];

      v12 = [v9 leftBarButtonItems];
      [v8 setLeftBarButtonItems:v12 animated:v6];
    }

    else if (v10)
    {
      v15 = [(PXPlacesMapContainerViewController *)self subviewControl];
      [v8 setTitleView:v15];

      [v8 setLeftBarButtonItems:MEMORY[0x1E695E0F0] animated:v6];
    }

    v16 = [v9 rightBarButtonItems];
    [v8 setRightBarButtonItems:v16 animated:v6];

    v14 = [v18 toolbarItems];
    [(PXPlacesMapContainerViewController *)self setToolbarItems:v14 animated:v6];
  }

  else if (v5)
  {
    [(PXPlacesMapContainerViewController *)self setGridControllerEditing:1];
    [v8 setTitleView:0];
    v13 = [v9 title];
    [v8 setTitle:v13];

    v14 = [v9 leftBarButtonItems];
    [v8 setLeftBarButtonItems:v14 animated:v6];
  }

  else
  {
    if ([(PXPlacesMapContainerViewController *)self gridControllerEditing])
    {
      v17 = [(PXPlacesMapContainerViewController *)self subviewControl];
      [v8 setTitleView:v17];
    }

    v14 = [v9 rightBarButtonItems];
    [v8 setRightBarButtonItems:v14 animated:v6];
  }
}

- (void)_updateShouldOptOutFromChromelessBars
{
  v2 = self;
  v3 = [(PXPlacesMapContainerViewController *)self pu_shouldOptOutFromChromelessBars];
  v4 = [v2 navigationController];
  v9 = v4;
  if (v3)
  {
    v2 = [v4 navigationBar];
    v5 = [v2 standardAppearance];
    v4 = v9;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v4 navigationBar];
  [v6 setScrollEdgeAppearance:v5];

  if (v3)
  {

    v2 = [v9 toolbar];
    v7 = [v2 standardAppearance];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v9 toolbar];
  [v8 setScrollEdgeAppearance:v7];

  if (v3)
  {
  }
}

- (void)_switchToLegacyGridController
{
  v3 = [(PXPlacesMapContainerViewController *)self fetchResultViewController];
  v4 = [v3 mapFetchResultsController];
  v9 = [v4 visibleGeotaggables];

  v5 = [(PXPlacesMapContainerViewController *)self photoLibrary];
  v6 = PXPhotosViewConfigurationForPlacesMomentsWithAllowedAssets(v9, v5);

  v7 = PXLocalizedStringFromTable(@"PXPlacesFullSizeViewTitle", @"PhotosUICore");
  [v6 setTitle:v7];

  [v6 setOneUpPresentationOrigin:7];
  v8 = [[PXPhotosUIViewController alloc] initWithConfiguration:v6];
  [(PXPhotosUIViewController *)v8 setContainerViewController:self];
  [(PXPhotosUIViewController *)v8 setGridPresentationBarsUpdateDelegate:self];
  [(PXPlacesMapContainerViewController *)self _resetNavigationItem];
  [(PXPlacesMapContainerViewController *)self px_addOrReplaceChildViewController:v8 activateConstraints:1];
  [(PXPlacesMapContainerViewController *)self _updateShouldOptOutFromChromelessBars];
}

- (void)_switchToMapController
{
  v3 = [(PXPlacesMapContainerViewController *)self fetchResultViewController];
  [(PXPlacesMapContainerViewController *)self _resetNavigationItem];
  [(PXPlacesMapContainerViewController *)self px_addOrReplaceChildViewController:v3 activateConstraints:1];
  [v3 reloadStyle];
  [(PXPlacesMapContainerViewController *)self _updateShouldOptOutFromChromelessBars];
}

- (void)subviewControlChanged:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v5 selectedSegmentIndex];
    if (v4 != [(PXPlacesMapContainerViewController *)self previousNavigationBarSegmentedControlSelectedIndex])
    {
      [(PXPlacesMapContainerViewController *)self setPreviousNavigationBarSegmentedControlSelectedIndex:v4];
      if (v4 == 1)
      {
        [(PXPlacesMapContainerViewController *)self _switchToLegacyGridController];
      }

      else if (!v4)
      {
        [(PXPlacesMapContainerViewController *)self _switchToMapController];
      }
    }
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [(PXPlacesMapContainerViewController *)self traitCollection];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 1)
  {
    initialNavigationBarStyle = self->_initialNavigationBarStyle;
    v8 = [(PXPlacesMapContainerViewController *)self navigationController];
    v9 = [v8 navigationItem];
    [v9 setStyle:initialNavigationBarStyle];
  }

  v10.receiver = self;
  v10.super_class = PXPlacesMapContainerViewController;
  [(PXPlacesMapContainerViewController *)&v10 viewWillDisappear:v3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(PXPlacesMapContainerViewController *)self traitCollection];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 1)
  {
    v7 = [(PXPlacesMapContainerViewController *)self navigationItem];
    self->_initialNavigationBarStyle = [v7 style];

    v8 = [(PXPlacesMapContainerViewController *)self navigationController];
    v9 = [v8 navigationItem];
    [v9 setStyle:0];
  }

  v10.receiver = self;
  v10.super_class = PXPlacesMapContainerViewController;
  [(PXPlacesMapContainerViewController *)&v10 viewWillAppear:v3];
}

- (void)viewDidLoad
{
  v16[2] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = PXPlacesMapContainerViewController;
  [(PXPlacesMapContainerViewController *)&v15 viewDidLoad];
  v3 = [(PXPlacesMapContainerViewController *)self configuration];
  v4 = [v3 gridViewEnabled];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69DCF38]);
    v6 = PXLocalizedStringFromTable(@"PXPlacesMapContainerSubviewMapTitle", @"PhotosUICore");
    v16[0] = v6;
    v7 = PXLocalizedStringFromTable(@"PXPlacesMapContainerSubviewGridTitle", @"PhotosUICore");
    v16[1] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v9 = [v5 initWithItems:v8];

    [MEMORY[0x1E69DCF38] px_defaultMinimumSegmentWidth];
    [v9 px_setMinimumSegmentWidth:?];
    [v9 setSelectedSegmentIndex:0];
    [v9 addTarget:self action:sel_subviewControlChanged_ forControlEvents:4096];
    v10 = [(PXPlacesMapContainerViewController *)self navigationItem];
    [v10 setTitleView:v9];

    [(PXPlacesMapContainerViewController *)self setSubviewControl:v9];
    [(PXPlacesMapContainerViewController *)self _resetNavigationItem];
  }

  else
  {
    v11 = [(PXPlacesMapContainerViewController *)self navigationItem];
    v12 = [v11 leftBarButtonItems];
    [(PXPlacesMapContainerViewController *)self setInitialLeftBarButtonItems:v12];

    [(PXPlacesMapContainerViewController *)self _updateNavigationItemTitleWithConfigurationIfPossible];
  }

  v13 = [(PXPlacesMapContainerViewController *)self navigationItem];
  [v13 setLargeTitleDisplayMode:2];

  v14 = [(PXPlacesMapContainerViewController *)self fetchResultViewController];
  [(PXPlacesMapContainerViewController *)self px_addOrReplaceChildViewController:v14 activateConstraints:1];
}

- (void)loadView
{
  v3 = [(PXPlacesMapContainerViewController *)self nibName];

  if (v3)
  {
    v6.receiver = self;
    v6.super_class = PXPlacesMapContainerViewController;
    [(PXPlacesMapContainerViewController *)&v6 loadView];
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, 200.0, 200.0}];
    v4 = [MEMORY[0x1E69DC888] whiteColor];
    [v5 setBackgroundColor:v4];

    [(PXPlacesMapContainerViewController *)self setView:v5];
  }
}

- (PXPlacesMapContainerViewController)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXPlacesMapContainerViewController.m" lineNumber:111 description:{@"%s is not available as initializer", "-[PXPlacesMapContainerViewController initWithCoder:]"}];

  abort();
}

- (PXPlacesMapContainerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"PXPlacesMapContainerViewController.m" lineNumber:107 description:{@"%s is not available as initializer", "-[PXPlacesMapContainerViewController initWithNibName:bundle:]"}];

  abort();
}

- (PXPlacesMapContainerViewController)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXPlacesMapContainerViewController.m" lineNumber:103 description:{@"%s is not available as initializer", "-[PXPlacesMapContainerViewController init]"}];

  abort();
}

- (PXPlacesMapContainerViewController)initWithPhotoLibrary:(id)a3 configuration:(id)a4
{
  v7 = a3;
  v8 = a4;
  v25.receiver = self;
  v25.super_class = PXPlacesMapContainerViewController;
  v9 = [(PXPlacesMapContainerViewController *)&v25 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_photoLibrary, a3);
    objc_storeStrong(&v10->_configuration, a4);
    v11 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:v7];
    v12 = [[PXLibraryFilterState alloc] initWithSharedLibraryStatusProvider:v11];
    v13 = [[PXPlacesMapFetchResultController alloc] initWithLibraryFilterState:v12 photoLibrary:v7];
    v14 = [PXPlacesMapFetchResultViewController alloc];
    [v8 initialCoordinateRegion];
    v19 = -[PXPlacesMapFetchResultViewController initWithInitialCoordinateRegion:enableNearbyAssetsAffordance:wantsMapOptionsView:photoLibrary:mapFetchResultController:](v14, "initWithInitialCoordinateRegion:enableNearbyAssetsAffordance:wantsMapOptionsView:photoLibrary:mapFetchResultController:", [v8 enableNearbyAssetsAffordance], 1, v7, v13, v15, v16, v17, v18);
    fetchResultViewController = v10->_fetchResultViewController;
    v10->_fetchResultViewController = v19;

    [(PXPlacesMapFetchResultViewController *)v10->_fetchResultViewController setPxOneUpPresentationViewController:v10];
    [(PXPlacesMapFetchResultViewController *)v10->_fetchResultViewController setBarButtonsDelegate:v10];
    v10->_previousNavigationBarSegmentedControlSelectedIndex = 0;
    LOBYTE(v14) = [(PXPlacesMapFetchResultViewController *)v10->_fetchResultViewController prefersToolbarVisible];
    [(UIViewController *)v10 px_enableBarAppearance];
    [(UIViewController *)v10 px_enablePrefersViewIsAppearingForAppearanceUpdates];
    v21 = [(UIViewController *)v10 px_barAppearance];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __73__PXPlacesMapContainerViewController_initWithPhotoLibrary_configuration___block_invoke;
    v23[3] = &__block_descriptor_33_e34_v16__0___PXMutableBarAppearance__8l;
    v24 = v14;
    [v21 performChangesWithAnimationOptions:0 changes:v23];
  }

  return v10;
}

void __73__PXPlacesMapContainerViewController_initWithPhotoLibrary_configuration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setPrefersStatusBarVisible:1];
  [v3 setPrefersNavigationBarVisible:1];
  [v3 setPrefersToolbarVisible:*(a1 + 32)];
  [v3 setPrefersTabBarVisible:0];
}

@end