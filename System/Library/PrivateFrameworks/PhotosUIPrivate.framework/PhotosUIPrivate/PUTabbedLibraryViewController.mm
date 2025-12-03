@interface PUTabbedLibraryViewController
- (BOOL)_navigateToDefaultLocationInNavigationController:(id)controller animated:(BOOL)animated;
- (BOOL)_navigateToRootOfCurrentTabAnimated:(BOOL)animated dismissAnyPresentedViewController:(BOOL)controller;
- (BOOL)_navigationControllerShouldUseBuiltinInteractionController:(id)controller;
- (BOOL)_useSearchTab;
- (BOOL)contentModeIsAvailableForNavigation:(int)navigation;
- (BOOL)pu_shouldSelectTab:(id)tab;
- (NSArray)currentRootTabIdentifiers;
- (OS_os_log)tabbedLibraryLog;
- (PUSidebarViewController)sidebarViewController;
- (PUTabbedLibraryViewController)initWithCoder:(id)coder;
- (PUTabbedLibraryViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PUTabbedLibraryViewController)initWithPhotoLibrary:(id)library libraryFilterState:(id)state actionDelegate:(id)delegate;
- (PXActionProviderDelegate)actionDelegate;
- (UINavigationController)selectedNavigationController;
- (UIViewController)searchHomeController;
- (id)_addAlbumActionWithTitle:(id)title actionType:(id)type;
- (id)_existingTabForContentMode:(int)mode;
- (id)_makeNavigationControllerWithRootController:(id)controller;
- (id)_makeViewControllerForCollectionsTab:(id)tab;
- (id)_makeViewControllerForImportTab:(id)tab;
- (id)_makeViewControllerForLibraryTab:(id)tab;
- (id)_makeViewControllerForSearchTab:(id)tab;
- (id)_navigationControllerForIdentifier:(id)identifier;
- (id)_snapBackRootViewControllerInNavigationController:(id)controller;
- (id)_tabForIdentifier:(id)identifier;
- (id)_tabRootViewControllerInNavigationController:(id)controller;
- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController;
- (id)navigationController:(id)controller interactionControllerForAnimationController:(id)animationController;
- (id)nextExistingParticipantOnRouteToDestination:(id)destination;
- (int)_contentModeForNavigationController:(id)controller;
- (int)contentModeForTab:(id)tab;
- (int)selectedContentMode;
- (unint64_t)operationForAcceptingItemsFromDropSession:(id)session tab:(id)tab;
- (unint64_t)routingOptionsForDestination:(id)destination;
- (unint64_t)supportedInterfaceOrientations;
- (void)_handleActionCompletionWithSuccess:(BOOL)success error:(id)error destinationCollection:(id)collection;
- (void)_logAnalyticsTabChanged:(int)changed;
- (void)_navigateToContentMode:(int)mode animated:(BOOL)animated dismissAnyPresentedViewController:(BOOL)controller completion:(id)completion;
- (void)_navigateToInitialLocationInCurrentNavigationControllerAnimated:(BOOL)animated;
- (void)_performActionForType:(id)type;
- (void)_sceneWillEnterForeground:(id)foreground;
- (void)_selectedTabDidChange;
- (void)_setSelectedTab:(id)tab animated:(BOOL)animated;
- (void)_updateCollectionsTabGroupChildren;
- (void)_updateTabBarMinimizeBehavior;
- (void)_updateTabBarVisibilityForHorizontalSizeClass:(int64_t)class;
- (void)acceptItemsFromDropSession:(id)session tab:(id)tab;
- (void)configureSearchTab:(id)tab;
- (void)displayOrderDidChangeForGroup:(id)group;
- (void)navigateToCollectionsTabRoot;
- (void)navigateToDestination:(id)destination options:(unint64_t)options completionHandler:(id)handler;
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)ppt_runTabSwitchingTestWithName:(id)name options:(id)options delegate:(id)delegate completionHandler:(id)handler;
- (void)pu_didSelectTab:(id)tab previousTab:(id)previousTab;
- (void)px_switchToTabAndNavigateToDestination:(id)destination options:(unint64_t)options completionHandler:(id)handler;
- (void)setImportViewController:(id)controller forImportSource:(id)source;
- (void)setSelectedContentMode:(int)mode;
- (void)setSelectedTab:(id)tab;
- (void)updateDisplayedTabsAnimated:(BOOL)animated;
- (void)updateNotificationBadge;
- (void)validateCommand:(id)command;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PUTabbedLibraryViewController

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = PUTabbedLibraryViewController;
  [(PUTabbedLibraryViewController *)&v11 viewDidLoad];
  [(PUTabbedLibraryViewController *)self px_enableExtendedTraitCollection];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *MEMORY[0x1E69DE360];
  view = [(PUTabbedLibraryViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  [defaultCenter addObserver:self selector:sel__sceneWillEnterForeground_ name:v4 object:windowScene];

  mEMORY[0x1E69C3498] = [MEMORY[0x1E69C3498] sharedInstance];
  springLoadingEnabled = [mEMORY[0x1E69C3498] springLoadingEnabled];
  tabBar = [(PUTabbedLibraryViewController *)self tabBar];
  [tabBar setSpringLoaded:springLoadingEnabled];
}

- (void)configureSearchTab:(id)tab
{
  tabCopy = tab;
  selfCopy = self;
  sub_1B36FA240(tabCopy);
}

- (UINavigationController)selectedNavigationController
{
  selectedTab = [(PUTabbedLibraryViewController *)self selectedTab];
  viewController = [selectedTab viewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = viewController;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (OS_os_log)tabbedLibraryLog
{
  if (tabbedLibraryLog_onceToken != -1)
  {
    dispatch_once(&tabbedLibraryLog_onceToken, &__block_literal_global_363);
  }

  v3 = tabbedLibraryLog_tabbedLibraryLog;

  return v3;
}

uint64_t __49__PUTabbedLibraryViewController_tabbedLibraryLog__block_invoke()
{
  tabbedLibraryLog_tabbedLibraryLog = os_log_create("com.apple.photos.ui", "TabbedLibrary");

  return MEMORY[0x1EEE66BB8]();
}

- (UIViewController)searchHomeController
{
  selfCopy = self;
  v3 = sub_1B36FBD54();

  return v3;
}

- (int)selectedContentMode
{
  selectedTab = [(PUTabbedLibraryViewController *)self selectedTab];

  if (!selectedTab)
  {
    return -1;
  }

  selectedTab2 = [(PUTabbedLibraryViewController *)self selectedTab];
  v5 = [(PUTabbedLibraryViewController *)self contentModeForTab:selectedTab2];

  return v5;
}

- (PUSidebarViewController)sidebarViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_sidebarViewController);

  return WeakRetained;
}

- (void)_selectedTabDidChange
{
  v6 = *MEMORY[0x1E69E9840];
  selectedContentMode = [(PUTabbedLibraryViewController *)self selectedContentMode];
  v4 = PLUIGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = selectedContentMode;
    _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "Tab did change, selected content mode: %i", v5, 8u);
  }

  [(NSMutableIndexSet *)self->_everDisplayedContentModes addIndex:selectedContentMode];
  if (selectedContentMode != 12)
  {
    self->_lastSelectedContentModeExcludingSearch = selectedContentMode;
  }

  [(PUTabbedLibraryViewController *)self _logAnalyticsTabChanged:selectedContentMode];
  [(PUTabbedLibraryViewController *)self _updateTabBarMinimizeBehavior];
}

- (void)_updateTabBarMinimizeBehavior
{
  v12 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69C3418] = [MEMORY[0x1E69C3418] sharedInstance];
  enableTabBarAccessoryControls = [mEMORY[0x1E69C3418] enableTabBarAccessoryControls];

  if (enableTabBarAccessoryControls)
  {
    selectedTab = [(PUTabbedLibraryViewController *)self selectedTab];
    identifier = [selectedTab identifier];
    v7 = [identifier isEqualToString:*MEMORY[0x1E69C41A0]];

    if (v7)
    {
      v8 = 3;
    }

    else
    {
      v8 = 1;
    }

    v9 = PLUIGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = 134217984;
      v11 = v8;
      _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_INFO, "tabBarMinimizeBehavior: %ti", &v10, 0xCu);
    }

    [(PUTabbedLibraryViewController *)self setTabBarMinimizeBehavior:v8];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  v3.receiver = self;
  v3.super_class = PUTabbedLibraryViewController;
  return [(PUTabbedLibraryViewController *)&v3 supportedInterfaceOrientations];
}

- (void)updateNotificationBadge
{
  selfCopy = self;
  sub_1B3811CC0();
}

- (PXActionProviderDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (void)ppt_runTabSwitchingTestWithName:(id)name options:(id)options delegate:(id)delegate completionHandler:(id)handler
{
  nameCopy = name;
  optionsCopy = options;
  delegateCopy = delegate;
  handlerCopy = handler;
  px_splitViewController = [(PUTabbedLibraryViewController *)self px_splitViewController];
  v16 = px_splitViewController;
  if (px_splitViewController)
  {
    if ([px_splitViewController isSidebarVisible])
    {
      delta = 0;
    }

    else
    {
      [v16 toggleSidebarVisibilityAnimated];
      delta = 1000000000;
    }

    sidebarViewController = [v16 sidebarViewController];
    if (sidebarViewController)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_8;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v30 = objc_opt_class();
      v24 = NSStringFromClass(v30);
      px_descriptionForAssertionMessage = [sidebarViewController px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUTabbedLibraryViewController.m" lineNumber:1021 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"splitViewController.sidebarViewController", v24, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUTabbedLibraryViewController.m" lineNumber:1021 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"splitViewController.sidebarViewController", v24}];
    }

LABEL_8:
    topViewController = [sidebarViewController topViewController];
    if (topViewController)
    {
      v19 = a2;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_10:
        v20 = dispatch_time(0, delta);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __100__PUTabbedLibraryViewController_ppt_runTabSwitchingTestWithName_options_delegate_completionHandler___block_invoke;
        block[3] = &unk_1E7B7DCB0;
        v38 = topViewController;
        v39 = nameCopy;
        v40 = optionsCopy;
        v41 = delegateCopy;
        v42 = handlerCopy;
        v21 = topViewController;
        dispatch_after(v20, MEMORY[0x1E69E96A0], block);

        goto LABEL_11;
      }

      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v31 = objc_opt_class();
      v29 = NSStringFromClass(v31);
      px_descriptionForAssertionMessage2 = [topViewController px_descriptionForAssertionMessage];
      v32 = v19;
      currentHandler3 = currentHandler2;
      [currentHandler2 handleFailureInMethod:v32 object:self file:@"PUTabbedLibraryViewController.m" lineNumber:1022 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"sidebarNavigationController.topViewController", v29, px_descriptionForAssertionMessage2}];
    }

    else
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = a2;
      v29 = v27;
      [currentHandler3 handleFailureInMethod:v28 object:self file:@"PUTabbedLibraryViewController.m" lineNumber:1022 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"sidebarNavigationController.topViewController", v27}];
    }

    goto LABEL_10;
  }

  v43.receiver = self;
  v43.super_class = PUTabbedLibraryViewController;
  [(PUTabbedLibraryViewController *)&v43 ppt_runTabSwitchingTestWithName:nameCopy options:optionsCopy delegate:delegateCopy completionHandler:handlerCopy];
LABEL_11:
}

- (void)setImportViewController:(id)controller forImportSource:(id)source
{
  controllerCopy = controller;
  sourceCopy = source;
  v10 = controllerCopy;
  v17 = v10;
  if (v10)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v10 = v17;
    if ((isKindOfClass & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      px_descriptionForAssertionMessage = [(PUImportViewController *)v17 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUTabbedLibraryViewController.m" lineNumber:983 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"viewController", v15, px_descriptionForAssertionMessage}];

      v10 = v17;
    }
  }

  if (self->_importViewController != v10)
  {
    v12 = *MEMORY[0x1E69C40C8];
    [(NSMutableDictionary *)self->_rootTabsByIdentifier setObject:0 forKeyedSubscript:*MEMORY[0x1E69C40C8]];
    [(NSMutableDictionary *)self->_navigationControllersByIdentifier setObject:0 forKeyedSubscript:v12];
    [(PUTabbedLibraryViewController *)self willChangeValueForKey:@"importViewController"];
    objc_storeStrong(&self->_importViewController, controller);
    [(PUTabbedLibraryViewController *)self didChangeValueForKey:@"importViewController"];
    [(PUTabbedLibraryViewController *)self updateDisplayedTabsAnimated:self->_importViewController != 0];
  }
}

- (id)nextExistingParticipantOnRouteToDestination:(id)destination
{
  destinationCopy = destination;
  presentedViewController = [(PUTabbedLibraryViewController *)self presentedViewController];

  if (presentedViewController)
  {
    goto LABEL_2;
  }

  selectedNavigationController = [(PUTabbedLibraryViewController *)self selectedNavigationController];
  if (selectedNavigationController)
  {
  }

  else if ([(PUTabbedLibraryViewController *)self selectedContentMode]== 13)
  {
    selectedViewController = [(PUTabbedLibraryViewController *)self selectedViewController];
    goto LABEL_9;
  }

  selectedContentMode = [(PUTabbedLibraryViewController *)self selectedContentMode];
  if (selectedContentMode != [MEMORY[0x1E69C3758] contentModeForNavigationDestination:destinationCopy useSearchTab:{-[PUTabbedLibraryViewController _useSearchTab](self, "_useSearchTab")}])
  {
LABEL_2:
    v6 = 0;
    goto LABEL_10;
  }

  selectedViewController = [(PUTabbedLibraryViewController *)self selectedNavigationController];
LABEL_9:
  v6 = selectedViewController;
LABEL_10:

  return v6;
}

- (void)px_switchToTabAndNavigateToDestination:(id)destination options:(unint64_t)options completionHandler:(id)handler
{
  v22[2] = *MEMORY[0x1E69E9840];
  destinationCopy = destination;
  handlerCopy = handler;
  -[PUTabbedLibraryViewController setSelectedContentMode:](self, "setSelectedContentMode:", [MEMORY[0x1E69C3758] contentModeForNavigationDestination:destinationCopy useSearchTab:{-[PUTabbedLibraryViewController _useSearchTab](self, "_useSearchTab")}]);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v11 = *MEMORY[0x1E69BE9A8];
  v21[0] = *MEMORY[0x1E69BE9B0];
  v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[PUTabbedLibraryViewController selectedContentMode](self, "selectedContentMode")}];
  v21[1] = *MEMORY[0x1E69BE9B8];
  v22[0] = v12;
  v22[1] = destinationCopy;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  [defaultCenter postNotificationName:v11 object:0 userInfo:v13];

  v14 = [(PUTabbedLibraryViewController *)self nextExistingParticipantOnRouteToDestination:destinationCopy];
  if (v14)
  {
    transitionCoordinator = [(PUTabbedLibraryViewController *)self transitionCoordinator];
    if (transitionCoordinator)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __98__PUTabbedLibraryViewController_px_switchToTabAndNavigateToDestination_options_completionHandler___block_invoke;
      v16[3] = &unk_1E7B74B10;
      v17 = v14;
      v18 = destinationCopy;
      optionsCopy = options;
      v19 = handlerCopy;
      [transitionCoordinator animateAlongsideTransition:0 completion:v16];
    }

    else
    {
      [v14 navigateToDestination:destinationCopy options:options completionHandler:handlerCopy];
    }
  }

  else
  {
    transitionCoordinator = [objc_alloc(MEMORY[0x1E69C3938]) initWithDestination:destinationCopy options:options completionHandler:handlerCopy];
    [(PUTabbedLibraryViewController *)self setPendingNavigationRequest:transitionCoordinator];
  }
}

- (void)navigateToDestination:(id)destination options:(unint64_t)options completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = PXLemonadeReroutedProgrammaticDestination();
  v9 = [MEMORY[0x1E69C3758] contentModeForNavigationDestination:v8 useSearchTab:{-[PUTabbedLibraryViewController _useSearchTab](self, "_useSearchTab")}];
  if (v9 != [(PUTabbedLibraryViewController *)self selectedContentMode])
  {
    selectedNavigationController = [(PUTabbedLibraryViewController *)self selectedNavigationController];
    viewControllers = [selectedNavigationController viewControllers];
    v12 = PXExists();

    if (v12)
    {
      [(PUTabbedLibraryViewController *)self _navigateToRootOfCurrentTabAnimated:0];
    }
  }

  v13 = [MEMORY[0x1E69C3758] launchContentModeForNavigationDestination:v8];
  [MEMORY[0x1E69C3758] setPersistedLibraryContentModeSelection:v13];
  v14.receiver = self;
  v14.super_class = PUTabbedLibraryViewController;
  [(PUTabbedLibraryViewController *)&v14 navigateToDestination:v8 options:options completionHandler:handlerCopy];
}

uint64_t __81__PUTabbedLibraryViewController_navigateToDestination_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (unint64_t)routingOptionsForDestination:(id)destination
{
  v4 = PXLemonadeReroutedProgrammaticDestination();
  v5 = [MEMORY[0x1E69C3758] contentModeForNavigationDestination:v4 useSearchTab:{-[PUTabbedLibraryViewController _useSearchTab](self, "_useSearchTab")}] != -1;

  return v5;
}

- (BOOL)_useSearchTab
{
  traitCollection = [(PUTabbedLibraryViewController *)self traitCollection];
  v3 = [traitCollection userInterfaceIdiom] != 1;

  return v3;
}

- (void)_performActionForType:(id)type
{
  typeCopy = type;
  if (!typeCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUTabbedLibraryViewController.m" lineNumber:859 description:{@"Invalid parameter not satisfying: %@", @"actionType != nil"}];
  }

  photoLibrary = [(PUTabbedLibraryViewController *)self photoLibrary];
  px_virtualCollections = [photoLibrary px_virtualCollections];
  if ([typeCopy isEqualToString:*MEMORY[0x1E69C4000]])
  {
    v8 = objc_alloc(MEMORY[0x1E69C3410]);
    v9 = [MEMORY[0x1E69C4608] defaultPresenterWithViewController:self];
    v10 = [v8 initWithPhotoLibrary:photoLibrary presentationEnvironment:v9];

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __55__PUTabbedLibraryViewController__performActionForType___block_invoke;
    v22[3] = &unk_1E7B7FB70;
    v22[4] = self;
    v11 = &v23;
    v23 = px_virtualCollections;
    v12 = v22;
    v13 = v10;
  }

  else
  {
    v14 = objc_alloc(MEMORY[0x1E69C37E0]);
    rootAlbumCollectionList = [px_virtualCollections rootAlbumCollectionList];
    v16 = [v14 initWithActionType:typeCopy collectionList:rootAlbumCollectionList];

    if (!v16)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUTabbedLibraryViewController.m" lineNumber:875 description:{@"Unable to create action performer for type = '%@'", typeCopy}];

      abort();
    }

    actionDelegate = [(PUTabbedLibraryViewController *)self actionDelegate];
    [v16 setDelegate:actionDelegate];

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __55__PUTabbedLibraryViewController__performActionForType___block_invoke_2;
    v20[3] = &unk_1E7B7FB70;
    v11 = &v21;
    v20[4] = self;
    v21 = v16;
    v13 = v16;
    v10 = v13;
    v12 = v20;
  }

  [v13 performActionWithCompletionHandler:v12];
}

void __55__PUTabbedLibraryViewController__performActionForType___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a3;
  v7 = [v5 sharedAlbumsCollectionList];
  [v4 _handleActionCompletionWithSuccess:a2 error:v6 destinationCollection:v7];
}

void __55__PUTabbedLibraryViewController__performActionForType___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a3;
  v7 = [v5 createdCollection];
  [v4 _handleActionCompletionWithSuccess:a2 error:v6 destinationCollection:v7];
}

- (void)_handleActionCompletionWithSuccess:(BOOL)success error:(id)error destinationCollection:(id)collection
{
  successCopy = success;
  v16 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  collectionCopy = collection;
  if (successCopy)
  {
    v10 = [objc_alloc(MEMORY[0x1E69C3930]) initWithObject:collectionCopy revealMode:1];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __96__PUTabbedLibraryViewController__handleActionCompletionWithSuccess_error_destinationCollection___block_invoke;
    v12[3] = &unk_1E7B7A7D8;
    v13 = v10;
    v11 = v10;
    [(PUTabbedLibraryViewController *)self navigateToDestination:v11 options:0 completionHandler:v12];
  }

  else
  {
    v11 = PLUIGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = errorCopy;
      _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_ERROR, "Failed to perform action: error=%@", buf, 0xCu);
    }
  }
}

void __96__PUTabbedLibraryViewController__handleActionCompletionWithSuccess_error_destinationCollection___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLUIGetLog();
  v7 = v6;
  if (a2 == 1)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) publicDescription];
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "Succeeded to programmatically navigate to %{public}@", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v9 = [*(a1 + 32) publicDescription];
    v10 = 138543874;
    v11 = v9;
    v12 = 2048;
    v13 = a2;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "Failed to programmatically navigate to %{public}@: result=%ti error=%@", &v10, 0x20u);
  }
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if ((change & 1) != 0 && PXCollectionsTabListManagerObserverContext == context)
  {
    [(PUTabbedLibraryViewController *)self _updateCollectionsTabGroupChildren];
  }
}

- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  toViewControllerCopy = toViewController;
  if ([(PUTabbedLibraryViewController *)self shouldSuppressAnimationsDuringProgrammaticNavigation]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v13 = 0;
  }

  else
  {
    v13 = [controllerCopy navigationController:controllerCopy animationControllerForOperation:operation fromViewController:viewControllerCopy toViewController:toViewControllerCopy];
  }

  return v13;
}

- (id)navigationController:(id)controller interactionControllerForAnimationController:(id)animationController
{
  controllerCopy = controller;
  animationControllerCopy = animationController;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [controllerCopy navigationController:controllerCopy interactionControllerForAnimationController:animationControllerCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_navigationControllerShouldUseBuiltinInteractionController:(id)controller
{
  topViewController = [controller topViewController];
  pu_navigationTransition = [topViewController pu_navigationTransition];
  v5 = pu_navigationTransition == 0;

  return v5;
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [controllerCopy navigationController:controllerCopy didShowViewController:viewControllerCopy animated:animatedCopy];
  }
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [controllerCopy navigationController:controllerCopy willShowViewController:viewControllerCopy animated:animatedCopy];
  }
}

- (id)_tabRootViewControllerInNavigationController:(id)controller
{
  viewControllers = [controller viewControllers];
  firstObject = [viewControllers firstObject];

  return firstObject;
}

- (id)_snapBackRootViewControllerInNavigationController:(id)controller
{
  controllerCopy = controller;
  viewControllers = [controllerCopy viewControllers];
  v6 = [viewControllers indexOfObjectPassingTest:&__block_literal_global_4050];
  if ((v6 - 1) > 0x7FFFFFFFFFFFFFFDLL)
  {
    goto LABEL_10;
  }

  v7 = v6;
  v8 = [viewControllers objectAtIndexedSubscript:?];
  if (([v8 pu_wantsTabBarVisible] & 1) == 0)
  {
    v10 = v7 - 2;
    while (v10 + 1 >= 1)
    {
      v9 = [viewControllers objectAtIndexedSubscript:v10];

      --v10;
      v8 = v9;
      if ([v9 pu_wantsTabBarVisible])
      {
        goto LABEL_7;
      }
    }

    goto LABEL_10;
  }

  v9 = v8;
LABEL_7:
  if (!v9)
  {
LABEL_10:
    v9 = [(PUTabbedLibraryViewController *)self _tabRootViewControllerInNavigationController:controllerCopy];
  }

  return v9;
}

uint64_t __83__PUTabbedLibraryViewController__snapBackRootViewControllerInNavigationController___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)contentModeIsAvailableForNavigation:(int)navigation
{
  v3 = [(PUTabbedLibraryViewController *)self _existingTabForContentMode:*&navigation];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)_navigateToRootOfCurrentTabAnimated:(BOOL)animated dismissAnyPresentedViewController:(BOOL)controller
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  selectedNavigationController = [(PUTabbedLibraryViewController *)self selectedNavigationController];
  if (selectedNavigationController)
  {
    viewController = [(PUTabbedLibraryViewController *)self _tabRootViewControllerInNavigationController:selectedNavigationController];
    if (!viewController)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  selectedTab = [(PUTabbedLibraryViewController *)self selectedTab];
  viewController = [selectedTab viewController];

  if (viewController)
  {
LABEL_5:
    v9 = MEMORY[0x1E69DD258];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __103__PUTabbedLibraryViewController__navigateToRootOfCurrentTabAnimated_dismissAnyPresentedViewController___block_invoke;
    v12[3] = &unk_1E7B74AA8;
    controllerCopy = controller;
    v15 = &v17;
    v13 = viewController;
    v14 = selectedNavigationController;
    [v9 _performWithoutDeferringTransitions:v12];
  }

LABEL_6:
  v10 = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return v10;
}

uint64_t __103__PUTabbedLibraryViewController__navigateToRootOfCurrentTabAnimated_dismissAnyPresentedViewController___block_invoke(uint64_t result)
{
  v1 = result;
  if (*(result + 56) == 1)
  {
    result = [*(result + 32) px_dismissViewControllerIfAllowedAnimated:0 forced:0];
    *(*(*(v1 + 48) + 8) + 24) = result;
  }

  else
  {
    *(*(*(result + 48) + 8) + 24) = 1;
  }

  if (*(*(*(v1 + 48) + 8) + 24) == 1)
  {
    result = [*(v1 + 40) pu_popToViewControllerIfAllowed:*(v1 + 32) animated:0 forced:0];
    *(*(*(v1 + 48) + 8) + 24) = result;
  }

  return result;
}

- (void)_navigateToContentMode:(int)mode animated:(BOOL)animated dismissAnyPresentedViewController:(BOOL)controller completion:(id)completion
{
  controllerCopy = controller;
  animatedCopy = animated;
  v8 = *&mode;
  completionCopy = completion;
  v10 = [(PUTabbedLibraryViewController *)self _navigateToRootOfCurrentTabAnimated:animatedCopy dismissAnyPresentedViewController:controllerCopy];
  if (v10)
  {
    [(PUTabbedLibraryViewController *)self setSelectedContentMode:v8];
  }

  v11 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, v10);
    v11 = completionCopy;
  }
}

- (void)_navigateToInitialLocationInCurrentNavigationControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(PUTabbedLibraryViewController *)self _navigateToRootOfCurrentTabAnimated:?];
  selectedNavigationController = [(PUTabbedLibraryViewController *)self selectedNavigationController];
  topViewController = [selectedNavigationController topViewController];
  v7 = topViewController;
  if (topViewController)
  {
    viewController = topViewController;
  }

  else
  {
    selectedTab = [(PUTabbedLibraryViewController *)self selectedTab];
    viewController = [selectedTab viewController];
  }

  [viewController px_scrollToInitialPositionAnimated:animatedCopy];
}

- (void)navigateToCollectionsTabRoot
{
  [(PUTabbedLibraryViewController *)self navigateToContentMode:13 animated:0 completion:0];

  [(PUTabbedLibraryViewController *)self _navigateToInitialLocationInCurrentNavigationControllerAnimated:0];
}

- (BOOL)_navigateToDefaultLocationInNavigationController:(id)controller animated:(BOOL)animated
{
  controllerCopy = controller;
  if ([(PUTabbedLibraryViewController *)self _contentModeForNavigationController:controllerCopy]== 10)
  {
    v6 = [controllerCopy popToRootViewControllerAnimated:1];
  }

  return 0;
}

- (void)_updateTabBarVisibilityForHorizontalSizeClass:(int64_t)class
{
  if (class == 2)
  {
    [(PUTabbedLibraryViewController *)self hideBarWithTransition:0];
  }

  else
  {
    [(PUTabbedLibraryViewController *)self showBarWithTransition:0];
  }
}

- (void)_sceneWillEnterForeground:(id)foreground
{
  viewControllers = [(PUTabbedLibraryViewController *)self viewControllers];
  v5 = [viewControllers count];

  if (v5)
  {

    [(PUTabbedLibraryViewController *)self updateDisplayedTabsAnimated:1];
  }
}

- (void)acceptItemsFromDropSession:(id)session tab:(id)tab
{
  sessionCopy = session;
  v6 = [(PUTabbedSidebarController *)self->_sidebarController representedObjectForTab:tab];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;

    if (!v7)
    {
      goto LABEL_7;
    }

    v6 = [MEMORY[0x1E69C37B0] dropAssetsActionPerformerForAssetCollection:v7 dropSession:sessionCopy];
    actionDelegate = [(PUTabbedLibraryViewController *)self actionDelegate];
    [v6 setDelegate:actionDelegate];

    [v6 performActionWithCompletionHandler:0];
  }

  else
  {
    v7 = 0;
  }

LABEL_7:
}

- (unint64_t)operationForAcceptingItemsFromDropSession:(id)session tab:(id)tab
{
  sessionCopy = session;
  v7 = [(PUTabbedSidebarController *)self->_sidebarController representedObjectForTab:tab];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  px_assetsDropMode = [v8 px_assetsDropMode];
  if (px_assetsDropMode == 2)
  {
    if (PXDropSessionHasItemsNeedingImport())
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }
  }

  else if (px_assetsDropMode == 1)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)displayOrderDidChangeForGroup:(id)group
{
  sidebarController = self->_sidebarController;
  groupCopy = group;
  undoManager = [(PUTabbedLibraryViewController *)self undoManager];
  [(PUTabbedSidebarController *)sidebarController displayOrderDidChangeForGroup:groupCopy undoManager:undoManager];
}

- (void)updateDisplayedTabsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v20 = *MEMORY[0x1E69E9840];
  tabs = [(PUTabbedLibraryViewController *)self tabs];
  v6 = [tabs count];

  selectedTab = [(PUTabbedLibraryViewController *)self selectedTab];
  currentRootTabIdentifiers = [(PUTabbedLibraryViewController *)self currentRootTabIdentifiers];
  v9 = PXMap();

  [(PUTabbedLibraryViewController *)self setTabs:v9 animated:animatedCopy];
  if (selectedTab && ([v9 containsObject:selectedTab] & 1) == 0)
  {
    v10 = PLUIGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v19 = selectedTab;
      _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_INFO, "TabbedLibraryViewController: Selected tab for content mode (%@) has been removed. Falling back to Photos tab.", buf, 0xCu);
    }

    [(PUTabbedLibraryViewController *)self navigateToContentMode:10 animated:animatedCopy completion:0];
  }

  [(PUTabbedLibraryViewController *)self setTabs:v9 animated:animatedCopy];
  if (self->_pendingSelectedContentMode == -1)
  {
    if (v6)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = [(PUTabbedLibraryViewController *)self _existingTabForContentMode:?];
    if (v11)
    {
      [(PUTabbedLibraryViewController *)self _setSelectedTab:v11 animated:animatedCopy];
    }

    self->_pendingSelectedContentMode = -1;
  }

  selectedTab2 = [(PUTabbedLibraryViewController *)self selectedTab];
  viewController = [selectedTab2 viewController];

  pendingNavigationRequest = [(PUTabbedLibraryViewController *)self pendingNavigationRequest];
  if (pendingNavigationRequest)
  {
    [(PUTabbedLibraryViewController *)self setPendingNavigationRequest:0];
    PXProgrammaticNavigationRequestExecute();
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PUTabbedLibraryViewController *)self navigateToInitialLocationInNavigationController:viewController];
    }
  }

LABEL_17:
  tabs2 = [(PUTabbedLibraryViewController *)self tabs];
  v16 = [tabs2 count];

  if (v16 != v6)
  {
    selectedTab3 = [(PUTabbedLibraryViewController *)self selectedTab];
    [(PUTabbedLibraryViewController *)self _setSelectedTab:selectedTab3 animated:animatedCopy];
  }

  [(PUTabbedLibraryViewController *)self _updateTabBarMinimizeBehavior];
}

- (id)_makeNavigationControllerWithRootController:(id)controller
{
  controllerCopy = controller;
  v5 = [[PUNavigationController alloc] initWithRootViewController:controllerCopy];

  [(PUNavigationController *)v5 setDelegate:self];

  return v5;
}

- (id)_existingTabForContentMode:(int)mode
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  tabs = [(PUTabbedLibraryViewController *)self tabs];
  v6 = [tabs countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(tabs);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([(PUTabbedLibraryViewController *)self contentModeForTab:v10]== mode)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [tabs countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (void)setSelectedTab:(id)tab
{
  v12 = *MEMORY[0x1E69E9840];
  tabCopy = tab;
  v5 = [(PUTabbedLibraryViewController *)self contentModeForTab:tabCopy];
  [(PUTabbedLibraryViewController *)self _logAnalyticsTabChanged:v5];
  selectedTab = [(PUTabbedLibraryViewController *)self selectedTab];
  v9.receiver = self;
  v9.super_class = PUTabbedLibraryViewController;
  [(PUTabbedLibraryViewController *)&v9 setSelectedTab:tabCopy];

  selectedTab2 = [(PUTabbedLibraryViewController *)self selectedTab];

  if (selectedTab != selectedTab2)
  {
    v8 = PLPPTGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v11 = v5;
      _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, "Switched to tab with content mode %d", buf, 8u);
    }
  }

  [(PUTabbedLibraryViewController *)self _selectedTabDidChange];
}

- (void)_logAnalyticsTabChanged:(int)changed
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (changed <= 9)
  {
    if (changed != 1)
    {
      if (changed == 6)
      {
        v4 = @"PXTabIdentifierImport";
        goto LABEL_13;
      }

      goto LABEL_12;
    }

LABEL_9:
    v4 = @"PXTabIdentifierCollections";
    goto LABEL_13;
  }

  switch(changed)
  {
    case 10:
      v4 = @"PXTabIdentifierLibrary";
      goto LABEL_13;
    case 12:
      v4 = @"PXTabIdentifierSearch";
      goto LABEL_13;
    case 13:
      goto LABEL_9;
  }

LABEL_12:
  v4 = @"PXTabIdentifierUndefined";
LABEL_13:
  parentViewController = [(PUTabbedLibraryViewController *)self parentViewController];
  if (parentViewController)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v4 = [(__CFString *)v4 stringByAppendingFormat:@"_%@", v7];
  }

  lastSelectedTabDescription = self->_lastSelectedTabDescription;
  v9 = v4;
  v10 = v9;
  if (v9 == lastSelectedTabDescription)
  {
  }

  else
  {
    v11 = [(__CFString *)v9 isEqualToString:lastSelectedTabDescription];

    if ((v11 & 1) == 0)
    {
      objc_storeStrong(&self->_lastSelectedTabDescription, v4);
      v12 = MEMORY[0x1E6991F28];
      v13 = *MEMORY[0x1E6991CD0];
      v15 = *MEMORY[0x1E6991E50];
      v16[0] = v10;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      [v12 sendEvent:v13 withPayload:v14];
    }
  }
}

- (int)contentModeForTab:(id)tab
{
  tabCopy = tab;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 12;
  }

  else
  {
    identifier = [tabCopy identifier];
    v6 = [identifier isEqualToString:*MEMORY[0x1E69C41A0]];

    if (v6)
    {
      v4 = 10;
    }

    else
    {
      identifier2 = [tabCopy identifier];
      v8 = [identifier2 isEqualToString:*MEMORY[0x1E69C4198]];

      if (v8)
      {
        v4 = 13;
      }

      else
      {
        identifier3 = [tabCopy identifier];
        v10 = [identifier3 isEqualToString:*MEMORY[0x1E69C40C8]];

        if (v10)
        {
          v4 = 6;
        }

        else
        {
          v4 = -1;
        }
      }
    }
  }

  return v4;
}

- (void)setSelectedContentMode:(int)mode
{
  v3 = *&mode;
  v5 = [(PUTabbedLibraryViewController *)self _existingTabForContentMode:?];
  v6 = v3;
  v7 = v5;
  if (v5)
  {
    [(PUTabbedLibraryViewController *)self _setSelectedTab:v5 animated:0];
    v6 = -1;
  }

  self->_pendingSelectedContentMode = v6;
  [(PUTabbedLibraryViewController *)self _logAnalyticsTabChanged:v3];
}

- (int)_contentModeForNavigationController:(id)controller
{
  controllerCopy = controller;
  v5 = [controllerCopy tab];

  if (v5)
  {
    v6 = [controllerCopy tab];
    v7 = [(PUTabbedLibraryViewController *)self contentModeForTab:v6];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (void)pu_didSelectTab:(id)tab previousTab:(id)previousTab
{
  if (tab == previousTab)
  {
    tabBar = [(PUTabbedLibraryViewController *)self tabBar];
    _isMinimized = [tabBar _isMinimized];

    if ((_isMinimized & 1) == 0)
    {
      [(PUTabbedLibraryViewController *)self _navigateToInitialLocationInCurrentNavigationControllerAnimated:1];
    }
  }

  [(PUTabbedLibraryViewController *)self _selectedTabDidChange];
}

- (BOOL)pu_shouldSelectTab:(id)tab
{
  tabCopy = tab;
  tabBar = [(PUTabbedLibraryViewController *)self tabBar];
  isUserInteractionEnabled = [tabBar isUserInteractionEnabled];

  if (isUserInteractionEnabled)
  {
    viewController = [tabCopy viewController];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v8 = viewController;

      if (!v8)
      {
        LOBYTE(v11) = 1;
        goto LABEL_10;
      }

      selectedTab = [(PUTabbedLibraryViewController *)self selectedTab];
      if (selectedTab == tabCopy)
      {
        tabBar2 = [(PUTabbedLibraryViewController *)self tabBar];
        v10 = [tabBar2 _isMinimized] ^ 1;
      }

      else
      {
        v10 = 0;
      }

      badgeValue = [tabCopy badgeValue];
      v15 = [badgeValue length];

      LODWORD(badgeValue) = [(PUTabbedLibraryViewController *)self contentModeForTab:tabCopy];
      v16 = [(NSMutableIndexSet *)self->_everDisplayedContentModes containsIndex:badgeValue];
      if (badgeValue == 10 || !v16 || v15)
      {
        v11 = [(PUTabbedLibraryViewController *)self _navigateToDefaultLocationInNavigationController:v8 animated:v10]& v10 ^ 1;
      }

      else
      {
        v11 = 1;
      }

      if ((v11 & v10) != 1)
      {
        goto LABEL_10;
      }

      viewController = [v8 topViewController];
      if ([viewController pu_handleSecondTabTap])
      {
        LOBYTE(v11) = 0;
      }

      else
      {
        v17 = [(PUTabbedLibraryViewController *)self _snapBackRootViewControllerInNavigationController:v8];
        LOBYTE(v11) = v17 == 0;
        if (v17)
        {
          v18 = [v8 popToViewController:v17 animated:1];
        }
      }
    }

    else
    {
      v8 = 0;
      LOBYTE(v11) = 1;
    }

LABEL_10:
    goto LABEL_11;
  }

  LOBYTE(v11) = 0;
LABEL_11:

  return v11;
}

- (void)_updateCollectionsTabGroupChildren
{
  collectionsTabListManager = [(PUTabbedSidebarController *)self->_sidebarController collectionsTabListManager];
  childTabs = [collectionsTabListManager childTabs];
  [(UITabGroup *)self->_collectionsTabGroup setChildren:childTabs];
}

- (void)_setSelectedTab:(id)tab animated:(BOOL)animated
{
  animatedCopy = animated;
  tabCopy = tab;
  v7 = tabCopy;
  if (animatedCopy)
  {
    [(PUTabbedLibraryViewController *)self setSelectedTab:tabCopy];
  }

  else
  {
    v8 = MEMORY[0x1E69DD250];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__PUTabbedLibraryViewController__setSelectedTab_animated___block_invoke;
    v9[3] = &unk_1E7B80C38;
    v9[4] = self;
    v10 = tabCopy;
    [v8 performWithoutAnimation:v9];
  }
}

- (id)_tabForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_rootTabsByIdentifier objectForKeyedSubscript:identifierCopy];
  if (!v5)
  {
    objc_initWeak(&location, self);
    if ([identifierCopy isEqualToString:*MEMORY[0x1E69C41A0]])
    {
      v6 = objc_alloc(MEMORY[0x1E69DCFE0]);
      v7 = PULocalizedString(@"CURATED_LIBRARY_TAB");
      v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"photo.on.rectangle"];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __51__PUTabbedLibraryViewController__tabForIdentifier___block_invoke;
      v27[3] = &unk_1E7B74A58;
      v9 = &v28;
      objc_copyWeak(&v28, &location);
      v5 = [v6 initWithTitle:v7 image:v8 identifier:identifierCopy viewControllerProvider:v27];

      [v5 setAccessibilityIdentifier:@"LibraryTab"];
    }

    else if ([identifierCopy isEqualToString:*MEMORY[0x1E69C4198]])
    {
      v10 = objc_alloc(MEMORY[0x1E69DD010]);
      v11 = PULocalizedString(@"COLLECTIONS_TAB");
      v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"rectangle.stack"];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __51__PUTabbedLibraryViewController__tabForIdentifier___block_invoke_2;
      v25[3] = &unk_1E7B74A58;
      v9 = &v26;
      objc_copyWeak(&v26, &location);
      v5 = [v10 initWithTitle:v11 image:v12 identifier:identifierCopy viewControllerProvider:v25];

      v13 = [(PUTabbedLibraryViewController *)self _navigationControllerForIdentifier:identifierCopy];
      [v5 setManagingNavigationController:v13];

      [v5 setAccessibilityIdentifier:@"CollectionsTab"];
      [v5 setIsSidebarDestination:1];
      objc_storeStrong(&self->_collectionsTabGroup, v5);
      sidebarController = self->_sidebarController;
      if (sidebarController)
      {
        collectionsTabListManager = [(PUTabbedSidebarController *)sidebarController collectionsTabListManager];
        [collectionsTabListManager registerChangeObserver:self context:PXCollectionsTabListManagerObserverContext];
        [(PUTabbedLibraryViewController *)self _updateCollectionsTabGroupChildren];
      }

      [(PUTabbedLibraryViewController *)self updateNotificationBadge];
    }

    else if ([identifierCopy isEqualToString:*MEMORY[0x1E69C40C8]])
    {
      v16 = objc_alloc(MEMORY[0x1E69DCFE0]);
      v17 = PULocalizedString(@"Import");
      v18 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.and.arrow.down"];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __51__PUTabbedLibraryViewController__tabForIdentifier___block_invoke_3;
      v23[3] = &unk_1E7B74A58;
      v9 = &v24;
      objc_copyWeak(&v24, &location);
      v5 = [v16 initWithTitle:v17 image:v18 identifier:identifierCopy viewControllerProvider:v23];

      [v5 setAccessibilityIdentifier:@"ImportTab"];
    }

    else
    {
      if (![identifierCopy isEqualToString:*MEMORY[0x1E69C41B0]])
      {
        v5 = 0;
        goto LABEL_13;
      }

      v19 = objc_alloc(MEMORY[0x1E69DCF20]);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __51__PUTabbedLibraryViewController__tabForIdentifier___block_invoke_4;
      v21[3] = &unk_1E7B74A58;
      v9 = &v22;
      objc_copyWeak(&v22, &location);
      v5 = [v19 initWithViewControllerProvider:v21];
      [v5 setAccessibilityIdentifier:@"SearchTab"];
      [(PUTabbedLibraryViewController *)self configureSearchTab:v5];
    }

    objc_destroyWeak(v9);
LABEL_13:
    [(NSMutableDictionary *)self->_rootTabsByIdentifier setObject:v5 forKeyedSubscript:identifierCopy];
    objc_destroyWeak(&location);
  }

  return v5;
}

id __51__PUTabbedLibraryViewController__tabForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _makeViewControllerForLibraryTab:v3];

  return v5;
}

id __51__PUTabbedLibraryViewController__tabForIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _makeViewControllerForCollectionsTab:v3];

  return v5;
}

id __51__PUTabbedLibraryViewController__tabForIdentifier___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _makeViewControllerForImportTab:v3];

  return v5;
}

id __51__PUTabbedLibraryViewController__tabForIdentifier___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _makeViewControllerForSearchTab:v3];

  return v5;
}

- (id)_navigationControllerForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_navigationControllersByIdentifier objectForKeyedSubscript:identifierCopy];
  if (!v5)
  {
    v5 = [[PUNavigationController alloc] initWithNavigationBarClass:objc_opt_class() toolbarClass:0];
    [(PUNavigationController *)v5 setDelegate:self];
    [(NSMutableDictionary *)self->_navigationControllersByIdentifier setObject:v5 forKeyedSubscript:identifierCopy];
  }

  return v5;
}

- (id)_makeViewControllerForSearchTab:(id)tab
{
  searchHomeController = [(PUTabbedLibraryViewController *)self searchHomeController];
  v5 = [(PUTabbedLibraryViewController *)self _makeNavigationControllerWithRootController:searchHomeController];

  return v5;
}

- (id)_makeViewControllerForImportTab:(id)tab
{
  identifier = [tab identifier];
  v5 = [(PUTabbedLibraryViewController *)self _navigationControllerForIdentifier:identifier];

  v6 = MEMORY[0x1E695DEC8];
  importViewController = [(PUTabbedLibraryViewController *)self importViewController];
  v8 = [v6 arrayWithObjects:{importViewController, 0}];
  [v5 setViewControllers:v8];

  return v5;
}

- (id)_makeViewControllerForCollectionsTab:(id)tab
{
  v17[1] = *MEMORY[0x1E69E9840];
  tabCopy = tab;
  photoLibrary = [(PUTabbedLibraryViewController *)self photoLibrary];
  px_virtualCollections = [photoLibrary px_virtualCollections];
  collectionsCollection = [px_virtualCollections collectionsCollection];

  v8 = [objc_alloc(MEMORY[0x1E69C3930]) initWithObject:collectionsCollection revealMode:1];
  v9 = PXLemonadeViewControllerFactory();
  photoLibrary2 = [(PUTabbedLibraryViewController *)self photoLibrary];
  v11 = [v9 viewControllerWithPhotoLibrary:photoLibrary2 destination:v8];

  actionDelegate = [(PUTabbedLibraryViewController *)self actionDelegate];
  [v11 setActionProviderDelegate:actionDelegate];

  identifier = [tabCopy identifier];

  v14 = [(PUTabbedLibraryViewController *)self _navigationControllerForIdentifier:identifier];

  v17[0] = v11;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  [v14 setViewControllers:v15];

  return v14;
}

- (id)_makeViewControllerForLibraryTab:(id)tab
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69C3430];
  tabCopy = tab;
  v6 = [v4 alloc];
  photoLibrary = [(PUTabbedLibraryViewController *)self photoLibrary];
  v8 = [v6 initWithPhotoLibrary:photoLibrary];

  [v8 setEnableDays:0];
  mEMORY[0x1E69C3418] = [MEMORY[0x1E69C3418] sharedInstance];
  [v8 setShowSecondaryToolbar:{objc_msgSend(mEMORY[0x1E69C3418], "enableTabBarAccessoryControls")}];

  [v8 setInitialZoomLevel:4];
  v10 = objc_alloc(MEMORY[0x1E69C3900]);
  photoLibrary2 = [(PUTabbedLibraryViewController *)self photoLibrary];
  v12 = [v10 initWithPhotoLibrary:photoLibrary2];
  [v8 setViewOptionsModel:v12];

  v13 = [objc_alloc(MEMORY[0x1E69C3428]) initWithConfiguration:v8];
  identifier = [tabCopy identifier];

  v15 = [(PUTabbedLibraryViewController *)self _navigationControllerForIdentifier:identifier];

  v18[0] = v13;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  [v15 setViewControllers:v16];

  return v15;
}

- (id)_addAlbumActionWithTitle:(id)title actionType:(id)type
{
  titleCopy = title;
  typeCopy = type;
  v8 = MEMORY[0x1E69DCAD8];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v10 = [v8 configurationWithHierarchicalColor:labelColor];

  v11 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:3 weight:22.0];
  v12 = [v10 configurationByApplyingConfiguration:v11];

  v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus.square.fill" withConfiguration:v12];
  objc_initWeak(&location, self);
  v14 = MEMORY[0x1E69DC628];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __69__PUTabbedLibraryViewController__addAlbumActionWithTitle_actionType___block_invoke;
  v18[3] = &unk_1E7B7F4F0;
  objc_copyWeak(&v20, &location);
  v15 = typeCopy;
  v19 = v15;
  v16 = [v14 actionWithTitle:titleCopy image:v13 identifier:v15 handler:v18];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v16;
}

void __69__PUTabbedLibraryViewController__addAlbumActionWithTitle_actionType___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _performActionForType:*(a1 + 32)];
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  action = [commandCopy action];
  if (action == sel_newAlbum_)
  {
    v4 = *MEMORY[0x1E69C3FE8];
    if (v4)
    {
      v5 = v4;
      v6 = [MEMORY[0x1E69C37E0] localizedTitleForActionType:v4 collectionList:0];
      [commandCopy setTitle:v6];
    }
  }

  else if (action == sel_newSmartAlbum_)
  {
    [commandCopy setAttributes:{objc_msgSend(commandCopy, "attributes") | 4}];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = PUTabbedLibraryViewController;
  [(PUTabbedLibraryViewController *)&v6 viewWillAppear:appear];
  tabs = [(PUTabbedLibraryViewController *)self tabs];
  v5 = [tabs count];

  if (!v5)
  {
    [(PUTabbedLibraryViewController *)self updateDisplayedTabsAnimated:0];
  }
}

- (NSArray)currentRootTabIdentifiers
{
  rootTabIdentifiers = [(PUTabbedLibraryViewController *)self rootTabIdentifiers];
  v3 = PXFilter();

  return v3;
}

uint64_t __58__PUTabbedLibraryViewController_currentRootTabIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEqualToString:*MEMORY[0x1E69C41B0]])
  {
    v4 = [*(a1 + 32) _useSearchTab];
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E69C40C8]])
  {
    v5 = [*(a1 + 32) importViewController];
    v4 = v5 != 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (PUTabbedLibraryViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUTabbedLibraryViewController.m" lineNumber:158 description:{@"%s is not available as initializer", "-[PUTabbedLibraryViewController initWithCoder:]"}];

  abort();
}

- (PUTabbedLibraryViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUTabbedLibraryViewController.m" lineNumber:154 description:{@"%s is not available as initializer", "-[PUTabbedLibraryViewController initWithNibName:bundle:]"}];

  abort();
}

- (PUTabbedLibraryViewController)initWithPhotoLibrary:(id)library libraryFilterState:(id)state actionDelegate:(id)delegate
{
  v41[4] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  stateCopy = state;
  delegateCopy = delegate;
  v40.receiver = self;
  v40.super_class = PUTabbedLibraryViewController;
  v13 = [(PUTabbedLibraryViewController *)&v40 initWithNibName:0 bundle:0];
  if (v13)
  {
    if (!libraryCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v13 file:@"PUTabbedLibraryViewController.m" lineNumber:126 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
    }

    objc_storeStrong(&v13->_photoLibrary, library);
    objc_storeStrong(&v13->_libraryFilterState, state);
    objc_storeWeak(&v13->_actionDelegate, delegateCopy);
    v14 = objc_alloc_init(MEMORY[0x1E696AD50]);
    everDisplayedContentModes = v13->_everDisplayedContentModes;
    v13->_everDisplayedContentModes = v14;

    v13->_pendingSelectedContentMode = -1;
    v16 = *MEMORY[0x1E69C4198];
    v41[0] = *MEMORY[0x1E69C41A0];
    v41[1] = v16;
    v17 = *MEMORY[0x1E69C41B0];
    v41[2] = *MEMORY[0x1E69C40C8];
    v41[3] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:4];
    rootTabIdentifiers = v13->_rootTabIdentifiers;
    v13->_rootTabIdentifiers = v18;

    v20 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
    rootTabsByIdentifier = v13->_rootTabsByIdentifier;
    v13->_rootTabsByIdentifier = v20;

    v22 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
    navigationControllersByIdentifier = v13->_navigationControllersByIdentifier;
    v13->_navigationControllersByIdentifier = v22;

    traitCollection = [(PUTabbedLibraryViewController *)v13 traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      v26 = [[PUTabbedSidebarController alloc] initWithPhotoLibrary:libraryCopy libraryFilterState:stateCopy actionProviderDelegate:delegateCopy];
      sidebarController = v13->_sidebarController;
      v13->_sidebarController = v26;

      v28 = PXLocalizedString();
      v29 = [(PUTabbedLibraryViewController *)v13 _addAlbumActionWithTitle:v28 actionType:*MEMORY[0x1E69C3FF0]];
      [(PUTabbedSidebarController *)v13->_sidebarController setAddAlbumAction:v29];

      v30 = PXLocalizedString();
      v31 = [(PUTabbedLibraryViewController *)v13 _addAlbumActionWithTitle:v30 actionType:*MEMORY[0x1E69C4000]];
      [(PUTabbedSidebarController *)v13->_sidebarController setAddSharedAlbumAction:v31];

      v32 = v13->_sidebarController;
      sidebar = [(PUTabbedLibraryViewController *)v13 sidebar];
      [sidebar setDelegate:v32];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v13 selector:sel__didFinishPostingNotifications_ name:*MEMORY[0x1E69BE918] object:0];

    mEMORY[0x1E69C4598] = [MEMORY[0x1E69C4598] sharedScheduler];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __88__PUTabbedLibraryViewController_initWithPhotoLibrary_libraryFilterState_actionDelegate___block_invoke;
    v38[3] = &unk_1E7B80DD0;
    v39 = v13;
    [mEMORY[0x1E69C4598] scheduleMainQueueTask:v38];
  }

  return v13;
}

void __88__PUTabbedLibraryViewController_initWithPhotoLibrary_libraryFilterState_actionDelegate___block_invoke(uint64_t a1)
{
  v2 = +[PUTabbedLibrarySettings sharedInstance];
  [v2 addKeyObserver:*(a1 + 32)];
}

@end