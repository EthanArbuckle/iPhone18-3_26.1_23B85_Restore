@interface PXPlacesMapContainerViewController
- (PXPlacesMapContainerViewController)init;
- (PXPlacesMapContainerViewController)initWithCoder:(id)coder;
- (PXPlacesMapContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PXPlacesMapContainerViewController)initWithPhotoLibrary:(id)library configuration:(id)configuration;
- (id)px_navigationDestination;
- (unint64_t)routingOptionsForDestination:(id)destination;
- (void)_resetNavigationItem;
- (void)_switchToLegacyGridController;
- (void)_switchToMapController;
- (void)_updateNavigationItemTitleWithConfigurationIfPossible;
- (void)_updateShouldOptOutFromChromelessBars;
- (void)legacyStrategyForHandleViewController:(id)controller didUpdateBarsAnimated:(BOOL)animated isSelecting:(BOOL)selecting;
- (void)loadView;
- (void)navigateToDestination:(id)destination options:(unint64_t)options completionHandler:(id)handler;
- (void)setNavigationBarButtons:(id)buttons;
- (void)subviewControlChanged:(id)changed;
- (void)viewControllerDidUpdateNavigationItemAppearance:(id)appearance;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PXPlacesMapContainerViewController

- (id)px_navigationDestination
{
  px_navigationDestination = self->_px_navigationDestination;
  if (!px_navigationDestination)
  {
    px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    v5 = [px_deprecated_appPhotoLibrary px_assetCollectionForSmartAlbumWithSubtype:1000000203];
    v6 = [[PXProgrammaticNavigationDestination alloc] initWithObject:v5 revealMode:0];
    v7 = self->_px_navigationDestination;
    self->_px_navigationDestination = v6;

    px_navigationDestination = self->_px_navigationDestination;
  }

  return px_navigationDestination;
}

- (void)navigateToDestination:(id)destination options:(unint64_t)options completionHandler:(id)handler
{
  handlerCopy = handler;
  destinationCopy = destination;
  v8 = [(PXPlacesMapContainerViewController *)self routingOptionsForDestination:destinationCopy];
  sidebarBackNavigationRootDestination = [destinationCopy sidebarBackNavigationRootDestination];

  collection = [sidebarBackNavigationRootDestination collection];
  px_isPlacesSmartAlbum = [collection px_isPlacesSmartAlbum];

  if (px_isPlacesSmartAlbum)
  {
    navigationItem = [(PXPlacesMapContainerViewController *)self navigationItem];
    [navigationItem px_setHidesBackButtonInRegularWidth:1];
    traitCollection = [(PXPlacesMapContainerViewController *)self traitCollection];
    [navigationItem px_updateBackButtonVisibilityForTraitCollection:traitCollection];
  }

  if (v8 == 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  handlerCopy[2](handlerCopy, v14, 0);
}

- (unint64_t)routingOptionsForDestination:(id)destination
{
  destinationCopy = destination;
  if ([destinationCopy type] == 8)
  {
    collection = [destinationCopy collection];
    px_isPlacesSmartAlbum = [collection px_isPlacesSmartAlbum];
  }

  else
  {
    px_isPlacesSmartAlbum = 0;
  }

  return px_isPlacesSmartAlbum;
}

- (void)setNavigationBarButtons:(id)buttons
{
  buttonsCopy = buttons;
  navigationItem = [(PXPlacesMapContainerViewController *)self navigationItem];
  [navigationItem setRightBarButtonItems:buttonsCopy];
}

- (void)_updateNavigationItemTitleWithConfigurationIfPossible
{
  configuration = [(PXPlacesMapContainerViewController *)self configuration];
  localizedNavigationItemTitle = [configuration localizedNavigationItemTitle];
  v4 = localizedNavigationItemTitle;
  if (!localizedNavigationItemTitle)
  {
    v4 = PXLocalizedStringFromTable(@"PXPlacesFullSizeViewTitle", @"PhotosUICore");
  }

  navigationItem = [(PXPlacesMapContainerViewController *)self navigationItem];
  [navigationItem setTitle:v4];

  if (!localizedNavigationItemTitle)
  {
  }
}

- (void)_resetNavigationItem
{
  navigationItem = [(PXPlacesMapContainerViewController *)self navigationItem];
  initialLeftBarButtonItems = [(PXPlacesMapContainerViewController *)self initialLeftBarButtonItems];
  [navigationItem setLeftBarButtonItems:initialLeftBarButtonItems];

  [navigationItem setRightBarButtonItems:0];
  subviewControl = [(PXPlacesMapContainerViewController *)self subviewControl];
  [navigationItem setTitleView:subviewControl];

  [navigationItem setStandardAppearance:0];
  [navigationItem setCompactAppearance:0];
  [navigationItem setScrollEdgeAppearance:0];
}

- (void)viewControllerDidUpdateNavigationItemAppearance:(id)appearance
{
  appearanceCopy = appearance;
  navigationItem = [(PXPlacesMapContainerViewController *)self navigationItem];
  navigationItem2 = [appearanceCopy navigationItem];

  standardAppearance = [navigationItem2 standardAppearance];
  [navigationItem setStandardAppearance:standardAppearance];

  compactAppearance = [navigationItem2 compactAppearance];
  [navigationItem setCompactAppearance:compactAppearance];

  scrollEdgeAppearance = [navigationItem2 scrollEdgeAppearance];
  [navigationItem setScrollEdgeAppearance:scrollEdgeAppearance];
}

- (void)legacyStrategyForHandleViewController:(id)controller didUpdateBarsAnimated:(BOOL)animated isSelecting:(BOOL)selecting
{
  selectingCopy = selecting;
  animatedCopy = animated;
  controllerCopy = controller;
  navigationItem = [(PXPlacesMapContainerViewController *)self navigationItem];
  navigationItem2 = [controllerCopy navigationItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    gridControllerEditing = [(PXPlacesMapContainerViewController *)self gridControllerEditing];
    [(PXPlacesMapContainerViewController *)self setGridControllerEditing:selectingCopy];
    if (selectingCopy)
    {
      [navigationItem setTitleView:0];
      title = [navigationItem2 title];
      [navigationItem setTitle:title];

      leftBarButtonItems = [navigationItem2 leftBarButtonItems];
      [navigationItem setLeftBarButtonItems:leftBarButtonItems animated:animatedCopy];
    }

    else if (gridControllerEditing)
    {
      subviewControl = [(PXPlacesMapContainerViewController *)self subviewControl];
      [navigationItem setTitleView:subviewControl];

      [navigationItem setLeftBarButtonItems:MEMORY[0x1E695E0F0] animated:animatedCopy];
    }

    rightBarButtonItems = [navigationItem2 rightBarButtonItems];
    [navigationItem setRightBarButtonItems:rightBarButtonItems animated:animatedCopy];

    toolbarItems = [controllerCopy toolbarItems];
    [(PXPlacesMapContainerViewController *)self setToolbarItems:toolbarItems animated:animatedCopy];
  }

  else if (selectingCopy)
  {
    [(PXPlacesMapContainerViewController *)self setGridControllerEditing:1];
    [navigationItem setTitleView:0];
    title2 = [navigationItem2 title];
    [navigationItem setTitle:title2];

    toolbarItems = [navigationItem2 leftBarButtonItems];
    [navigationItem setLeftBarButtonItems:toolbarItems animated:animatedCopy];
  }

  else
  {
    if ([(PXPlacesMapContainerViewController *)self gridControllerEditing])
    {
      subviewControl2 = [(PXPlacesMapContainerViewController *)self subviewControl];
      [navigationItem setTitleView:subviewControl2];
    }

    toolbarItems = [navigationItem2 rightBarButtonItems];
    [navigationItem setRightBarButtonItems:toolbarItems animated:animatedCopy];
  }
}

- (void)_updateShouldOptOutFromChromelessBars
{
  selfCopy = self;
  pu_shouldOptOutFromChromelessBars = [(PXPlacesMapContainerViewController *)self pu_shouldOptOutFromChromelessBars];
  navigationController = [selfCopy navigationController];
  v9 = navigationController;
  if (pu_shouldOptOutFromChromelessBars)
  {
    selfCopy = [navigationController navigationBar];
    standardAppearance = [selfCopy standardAppearance];
    navigationController = v9;
  }

  else
  {
    standardAppearance = 0;
  }

  navigationBar = [navigationController navigationBar];
  [navigationBar setScrollEdgeAppearance:standardAppearance];

  if (pu_shouldOptOutFromChromelessBars)
  {

    selfCopy = [v9 toolbar];
    standardAppearance2 = [selfCopy standardAppearance];
  }

  else
  {
    standardAppearance2 = 0;
  }

  toolbar = [v9 toolbar];
  [toolbar setScrollEdgeAppearance:standardAppearance2];

  if (pu_shouldOptOutFromChromelessBars)
  {
  }
}

- (void)_switchToLegacyGridController
{
  fetchResultViewController = [(PXPlacesMapContainerViewController *)self fetchResultViewController];
  mapFetchResultsController = [fetchResultViewController mapFetchResultsController];
  visibleGeotaggables = [mapFetchResultsController visibleGeotaggables];

  photoLibrary = [(PXPlacesMapContainerViewController *)self photoLibrary];
  v6 = PXPhotosViewConfigurationForPlacesMomentsWithAllowedAssets(visibleGeotaggables, photoLibrary);

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
  fetchResultViewController = [(PXPlacesMapContainerViewController *)self fetchResultViewController];
  [(PXPlacesMapContainerViewController *)self _resetNavigationItem];
  [(PXPlacesMapContainerViewController *)self px_addOrReplaceChildViewController:fetchResultViewController activateConstraints:1];
  [fetchResultViewController reloadStyle];
  [(PXPlacesMapContainerViewController *)self _updateShouldOptOutFromChromelessBars];
}

- (void)subviewControlChanged:(id)changed
{
  changedCopy = changed;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selectedSegmentIndex = [changedCopy selectedSegmentIndex];
    if (selectedSegmentIndex != [(PXPlacesMapContainerViewController *)self previousNavigationBarSegmentedControlSelectedIndex])
    {
      [(PXPlacesMapContainerViewController *)self setPreviousNavigationBarSegmentedControlSelectedIndex:selectedSegmentIndex];
      if (selectedSegmentIndex == 1)
      {
        [(PXPlacesMapContainerViewController *)self _switchToLegacyGridController];
      }

      else if (!selectedSegmentIndex)
      {
        [(PXPlacesMapContainerViewController *)self _switchToMapController];
      }
    }
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  traitCollection = [(PXPlacesMapContainerViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    initialNavigationBarStyle = self->_initialNavigationBarStyle;
    navigationController = [(PXPlacesMapContainerViewController *)self navigationController];
    navigationItem = [navigationController navigationItem];
    [navigationItem setStyle:initialNavigationBarStyle];
  }

  v10.receiver = self;
  v10.super_class = PXPlacesMapContainerViewController;
  [(PXPlacesMapContainerViewController *)&v10 viewWillDisappear:disappearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  traitCollection = [(PXPlacesMapContainerViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    navigationItem = [(PXPlacesMapContainerViewController *)self navigationItem];
    self->_initialNavigationBarStyle = [navigationItem style];

    navigationController = [(PXPlacesMapContainerViewController *)self navigationController];
    navigationItem2 = [navigationController navigationItem];
    [navigationItem2 setStyle:0];
  }

  v10.receiver = self;
  v10.super_class = PXPlacesMapContainerViewController;
  [(PXPlacesMapContainerViewController *)&v10 viewWillAppear:appearCopy];
}

- (void)viewDidLoad
{
  v16[2] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = PXPlacesMapContainerViewController;
  [(PXPlacesMapContainerViewController *)&v15 viewDidLoad];
  configuration = [(PXPlacesMapContainerViewController *)self configuration];
  gridViewEnabled = [configuration gridViewEnabled];

  if (gridViewEnabled)
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
    navigationItem = [(PXPlacesMapContainerViewController *)self navigationItem];
    [navigationItem setTitleView:v9];

    [(PXPlacesMapContainerViewController *)self setSubviewControl:v9];
    [(PXPlacesMapContainerViewController *)self _resetNavigationItem];
  }

  else
  {
    navigationItem2 = [(PXPlacesMapContainerViewController *)self navigationItem];
    leftBarButtonItems = [navigationItem2 leftBarButtonItems];
    [(PXPlacesMapContainerViewController *)self setInitialLeftBarButtonItems:leftBarButtonItems];

    [(PXPlacesMapContainerViewController *)self _updateNavigationItemTitleWithConfigurationIfPossible];
  }

  navigationItem3 = [(PXPlacesMapContainerViewController *)self navigationItem];
  [navigationItem3 setLargeTitleDisplayMode:2];

  fetchResultViewController = [(PXPlacesMapContainerViewController *)self fetchResultViewController];
  [(PXPlacesMapContainerViewController *)self px_addOrReplaceChildViewController:fetchResultViewController activateConstraints:1];
}

- (void)loadView
{
  nibName = [(PXPlacesMapContainerViewController *)self nibName];

  if (nibName)
  {
    v6.receiver = self;
    v6.super_class = PXPlacesMapContainerViewController;
    [(PXPlacesMapContainerViewController *)&v6 loadView];
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, 200.0, 200.0}];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [v5 setBackgroundColor:whiteColor];

    [(PXPlacesMapContainerViewController *)self setView:v5];
  }
}

- (PXPlacesMapContainerViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPlacesMapContainerViewController.m" lineNumber:111 description:{@"%s is not available as initializer", "-[PXPlacesMapContainerViewController initWithCoder:]"}];

  abort();
}

- (PXPlacesMapContainerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPlacesMapContainerViewController.m" lineNumber:107 description:{@"%s is not available as initializer", "-[PXPlacesMapContainerViewController initWithNibName:bundle:]"}];

  abort();
}

- (PXPlacesMapContainerViewController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPlacesMapContainerViewController.m" lineNumber:103 description:{@"%s is not available as initializer", "-[PXPlacesMapContainerViewController init]"}];

  abort();
}

- (PXPlacesMapContainerViewController)initWithPhotoLibrary:(id)library configuration:(id)configuration
{
  libraryCopy = library;
  configurationCopy = configuration;
  v25.receiver = self;
  v25.super_class = PXPlacesMapContainerViewController;
  v9 = [(PXPlacesMapContainerViewController *)&v25 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_photoLibrary, library);
    objc_storeStrong(&v10->_configuration, configuration);
    v11 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:libraryCopy];
    v12 = [[PXLibraryFilterState alloc] initWithSharedLibraryStatusProvider:v11];
    v13 = [[PXPlacesMapFetchResultController alloc] initWithLibraryFilterState:v12 photoLibrary:libraryCopy];
    v14 = [PXPlacesMapFetchResultViewController alloc];
    [configurationCopy initialCoordinateRegion];
    v19 = -[PXPlacesMapFetchResultViewController initWithInitialCoordinateRegion:enableNearbyAssetsAffordance:wantsMapOptionsView:photoLibrary:mapFetchResultController:](v14, "initWithInitialCoordinateRegion:enableNearbyAssetsAffordance:wantsMapOptionsView:photoLibrary:mapFetchResultController:", [configurationCopy enableNearbyAssetsAffordance], 1, libraryCopy, v13, v15, v16, v17, v18);
    fetchResultViewController = v10->_fetchResultViewController;
    v10->_fetchResultViewController = v19;

    [(PXPlacesMapFetchResultViewController *)v10->_fetchResultViewController setPxOneUpPresentationViewController:v10];
    [(PXPlacesMapFetchResultViewController *)v10->_fetchResultViewController setBarButtonsDelegate:v10];
    v10->_previousNavigationBarSegmentedControlSelectedIndex = 0;
    LOBYTE(v14) = [(PXPlacesMapFetchResultViewController *)v10->_fetchResultViewController prefersToolbarVisible];
    [(UIViewController *)v10 px_enableBarAppearance];
    [(UIViewController *)v10 px_enablePrefersViewIsAppearingForAppearanceUpdates];
    px_barAppearance = [(UIViewController *)v10 px_barAppearance];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __73__PXPlacesMapContainerViewController_initWithPhotoLibrary_configuration___block_invoke;
    v23[3] = &__block_descriptor_33_e34_v16__0___PXMutableBarAppearance__8l;
    v24 = v14;
    [px_barAppearance performChangesWithAnimationOptions:0 changes:v23];
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