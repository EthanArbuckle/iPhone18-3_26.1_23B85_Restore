@interface PUTabbedLibraryViewController
- (BOOL)_navigateToDefaultLocationInNavigationController:(id)a3 animated:(BOOL)a4;
- (BOOL)_navigateToRootOfCurrentTabAnimated:(BOOL)a3 dismissAnyPresentedViewController:(BOOL)a4;
- (BOOL)_navigationControllerShouldUseBuiltinInteractionController:(id)a3;
- (BOOL)_useSearchTab;
- (BOOL)contentModeIsAvailableForNavigation:(int)a3;
- (BOOL)pu_shouldSelectTab:(id)a3;
- (NSArray)currentRootTabIdentifiers;
- (OS_os_log)tabbedLibraryLog;
- (PUSidebarViewController)sidebarViewController;
- (PUTabbedLibraryViewController)initWithCoder:(id)a3;
- (PUTabbedLibraryViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PUTabbedLibraryViewController)initWithPhotoLibrary:(id)a3 libraryFilterState:(id)a4 actionDelegate:(id)a5;
- (PXActionProviderDelegate)actionDelegate;
- (UINavigationController)selectedNavigationController;
- (UIViewController)searchHomeController;
- (id)_addAlbumActionWithTitle:(id)a3 actionType:(id)a4;
- (id)_existingTabForContentMode:(int)a3;
- (id)_makeNavigationControllerWithRootController:(id)a3;
- (id)_makeViewControllerForCollectionsTab:(id)a3;
- (id)_makeViewControllerForImportTab:(id)a3;
- (id)_makeViewControllerForLibraryTab:(id)a3;
- (id)_makeViewControllerForSearchTab:(id)a3;
- (id)_navigationControllerForIdentifier:(id)a3;
- (id)_snapBackRootViewControllerInNavigationController:(id)a3;
- (id)_tabForIdentifier:(id)a3;
- (id)_tabRootViewControllerInNavigationController:(id)a3;
- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6;
- (id)navigationController:(id)a3 interactionControllerForAnimationController:(id)a4;
- (id)nextExistingParticipantOnRouteToDestination:(id)a3;
- (int)_contentModeForNavigationController:(id)a3;
- (int)contentModeForTab:(id)a3;
- (int)selectedContentMode;
- (unint64_t)operationForAcceptingItemsFromDropSession:(id)a3 tab:(id)a4;
- (unint64_t)routingOptionsForDestination:(id)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)_handleActionCompletionWithSuccess:(BOOL)a3 error:(id)a4 destinationCollection:(id)a5;
- (void)_logAnalyticsTabChanged:(int)a3;
- (void)_navigateToContentMode:(int)a3 animated:(BOOL)a4 dismissAnyPresentedViewController:(BOOL)a5 completion:(id)a6;
- (void)_navigateToInitialLocationInCurrentNavigationControllerAnimated:(BOOL)a3;
- (void)_performActionForType:(id)a3;
- (void)_sceneWillEnterForeground:(id)a3;
- (void)_selectedTabDidChange;
- (void)_setSelectedTab:(id)a3 animated:(BOOL)a4;
- (void)_updateCollectionsTabGroupChildren;
- (void)_updateTabBarMinimizeBehavior;
- (void)_updateTabBarVisibilityForHorizontalSizeClass:(int64_t)a3;
- (void)acceptItemsFromDropSession:(id)a3 tab:(id)a4;
- (void)configureSearchTab:(id)a3;
- (void)displayOrderDidChangeForGroup:(id)a3;
- (void)navigateToCollectionsTabRoot;
- (void)navigateToDestination:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)ppt_runTabSwitchingTestWithName:(id)a3 options:(id)a4 delegate:(id)a5 completionHandler:(id)a6;
- (void)pu_didSelectTab:(id)a3 previousTab:(id)a4;
- (void)px_switchToTabAndNavigateToDestination:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)setImportViewController:(id)a3 forImportSource:(id)a4;
- (void)setSelectedContentMode:(int)a3;
- (void)setSelectedTab:(id)a3;
- (void)updateDisplayedTabsAnimated:(BOOL)a3;
- (void)updateNotificationBadge;
- (void)validateCommand:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PUTabbedLibraryViewController

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = PUTabbedLibraryViewController;
  [(PUTabbedLibraryViewController *)&v11 viewDidLoad];
  [(PUTabbedLibraryViewController *)self px_enableExtendedTraitCollection];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *MEMORY[0x1E69DE360];
  v5 = [(PUTabbedLibraryViewController *)self view];
  v6 = [v5 window];
  v7 = [v6 windowScene];
  [v3 addObserver:self selector:sel__sceneWillEnterForeground_ name:v4 object:v7];

  v8 = [MEMORY[0x1E69C3498] sharedInstance];
  v9 = [v8 springLoadingEnabled];
  v10 = [(PUTabbedLibraryViewController *)self tabBar];
  [v10 setSpringLoaded:v9];
}

- (void)configureSearchTab:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B36FA240(v4);
}

- (UINavigationController)selectedNavigationController
{
  v2 = [(PUTabbedLibraryViewController *)self selectedTab];
  v3 = [v2 viewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
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
  v2 = self;
  v3 = sub_1B36FBD54();

  return v3;
}

- (int)selectedContentMode
{
  v3 = [(PUTabbedLibraryViewController *)self selectedTab];

  if (!v3)
  {
    return -1;
  }

  v4 = [(PUTabbedLibraryViewController *)self selectedTab];
  v5 = [(PUTabbedLibraryViewController *)self contentModeForTab:v4];

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
  v3 = [(PUTabbedLibraryViewController *)self selectedContentMode];
  v4 = PLUIGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "Tab did change, selected content mode: %i", v5, 8u);
  }

  [(NSMutableIndexSet *)self->_everDisplayedContentModes addIndex:v3];
  if (v3 != 12)
  {
    self->_lastSelectedContentModeExcludingSearch = v3;
  }

  [(PUTabbedLibraryViewController *)self _logAnalyticsTabChanged:v3];
  [(PUTabbedLibraryViewController *)self _updateTabBarMinimizeBehavior];
}

- (void)_updateTabBarMinimizeBehavior
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69C3418] sharedInstance];
  v4 = [v3 enableTabBarAccessoryControls];

  if (v4)
  {
    v5 = [(PUTabbedLibraryViewController *)self selectedTab];
    v6 = [v5 identifier];
    v7 = [v6 isEqualToString:*MEMORY[0x1E69C41A0]];

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
  v2 = self;
  sub_1B3811CC0();
}

- (PXActionProviderDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (void)ppt_runTabSwitchingTestWithName:(id)a3 options:(id)a4 delegate:(id)a5 completionHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [(PUTabbedLibraryViewController *)self px_splitViewController];
  v16 = v15;
  if (v15)
  {
    if ([v15 isSidebarVisible])
    {
      delta = 0;
    }

    else
    {
      [v16 toggleSidebarVisibilityAnimated];
      delta = 1000000000;
    }

    v17 = [v16 sidebarViewController];
    if (v17)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_8;
      }

      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      v30 = objc_opt_class();
      v24 = NSStringFromClass(v30);
      v34 = [v17 px_descriptionForAssertionMessage];
      [v22 handleFailureInMethod:a2 object:self file:@"PUTabbedLibraryViewController.m" lineNumber:1021 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"splitViewController.sidebarViewController", v24, v34}];
    }

    else
    {
      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      [v22 handleFailureInMethod:a2 object:self file:@"PUTabbedLibraryViewController.m" lineNumber:1021 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"splitViewController.sidebarViewController", v24}];
    }

LABEL_8:
    v18 = [v17 topViewController];
    if (v18)
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
        v38 = v18;
        v39 = v11;
        v40 = v12;
        v41 = v13;
        v42 = v14;
        v21 = v18;
        dispatch_after(v20, MEMORY[0x1E69E96A0], block);

        goto LABEL_11;
      }

      v35 = [MEMORY[0x1E696AAA8] currentHandler];
      v31 = objc_opt_class();
      v29 = NSStringFromClass(v31);
      v33 = [v18 px_descriptionForAssertionMessage];
      v32 = v19;
      v25 = v35;
      [v35 handleFailureInMethod:v32 object:self file:@"PUTabbedLibraryViewController.m" lineNumber:1022 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"sidebarNavigationController.topViewController", v29, v33}];
    }

    else
    {
      v25 = [MEMORY[0x1E696AAA8] currentHandler];
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = a2;
      v29 = v27;
      [v25 handleFailureInMethod:v28 object:self file:@"PUTabbedLibraryViewController.m" lineNumber:1022 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"sidebarNavigationController.topViewController", v27}];
    }

    goto LABEL_10;
  }

  v43.receiver = self;
  v43.super_class = PUTabbedLibraryViewController;
  [(PUTabbedLibraryViewController *)&v43 ppt_runTabSwitchingTestWithName:v11 options:v12 delegate:v13 completionHandler:v14];
LABEL_11:
}

- (void)setImportViewController:(id)a3 forImportSource:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v8;
  v17 = v10;
  if (v10)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v10 = v17;
    if ((isKindOfClass & 1) == 0)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = [(PUImportViewController *)v17 px_descriptionForAssertionMessage];
      [v13 handleFailureInMethod:a2 object:self file:@"PUTabbedLibraryViewController.m" lineNumber:983 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"viewController", v15, v16}];

      v10 = v17;
    }
  }

  if (self->_importViewController != v10)
  {
    v12 = *MEMORY[0x1E69C40C8];
    [(NSMutableDictionary *)self->_rootTabsByIdentifier setObject:0 forKeyedSubscript:*MEMORY[0x1E69C40C8]];
    [(NSMutableDictionary *)self->_navigationControllersByIdentifier setObject:0 forKeyedSubscript:v12];
    [(PUTabbedLibraryViewController *)self willChangeValueForKey:@"importViewController"];
    objc_storeStrong(&self->_importViewController, a3);
    [(PUTabbedLibraryViewController *)self didChangeValueForKey:@"importViewController"];
    [(PUTabbedLibraryViewController *)self updateDisplayedTabsAnimated:self->_importViewController != 0];
  }
}

- (id)nextExistingParticipantOnRouteToDestination:(id)a3
{
  v4 = a3;
  v5 = [(PUTabbedLibraryViewController *)self presentedViewController];

  if (v5)
  {
    goto LABEL_2;
  }

  v7 = [(PUTabbedLibraryViewController *)self selectedNavigationController];
  if (v7)
  {
  }

  else if ([(PUTabbedLibraryViewController *)self selectedContentMode]== 13)
  {
    v8 = [(PUTabbedLibraryViewController *)self selectedViewController];
    goto LABEL_9;
  }

  v9 = [(PUTabbedLibraryViewController *)self selectedContentMode];
  if (v9 != [MEMORY[0x1E69C3758] contentModeForNavigationDestination:v4 useSearchTab:{-[PUTabbedLibraryViewController _useSearchTab](self, "_useSearchTab")}])
  {
LABEL_2:
    v6 = 0;
    goto LABEL_10;
  }

  v8 = [(PUTabbedLibraryViewController *)self selectedNavigationController];
LABEL_9:
  v6 = v8;
LABEL_10:

  return v6;
}

- (void)px_switchToTabAndNavigateToDestination:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v22[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  -[PUTabbedLibraryViewController setSelectedContentMode:](self, "setSelectedContentMode:", [MEMORY[0x1E69C3758] contentModeForNavigationDestination:v8 useSearchTab:{-[PUTabbedLibraryViewController _useSearchTab](self, "_useSearchTab")}]);
  v10 = [MEMORY[0x1E696AD88] defaultCenter];
  v11 = *MEMORY[0x1E69BE9A8];
  v21[0] = *MEMORY[0x1E69BE9B0];
  v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[PUTabbedLibraryViewController selectedContentMode](self, "selectedContentMode")}];
  v21[1] = *MEMORY[0x1E69BE9B8];
  v22[0] = v12;
  v22[1] = v8;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  [v10 postNotificationName:v11 object:0 userInfo:v13];

  v14 = [(PUTabbedLibraryViewController *)self nextExistingParticipantOnRouteToDestination:v8];
  if (v14)
  {
    v15 = [(PUTabbedLibraryViewController *)self transitionCoordinator];
    if (v15)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __98__PUTabbedLibraryViewController_px_switchToTabAndNavigateToDestination_options_completionHandler___block_invoke;
      v16[3] = &unk_1E7B74B10;
      v17 = v14;
      v18 = v8;
      v20 = a4;
      v19 = v9;
      [v15 animateAlongsideTransition:0 completion:v16];
    }

    else
    {
      [v14 navigateToDestination:v8 options:a4 completionHandler:v9];
    }
  }

  else
  {
    v15 = [objc_alloc(MEMORY[0x1E69C3938]) initWithDestination:v8 options:a4 completionHandler:v9];
    [(PUTabbedLibraryViewController *)self setPendingNavigationRequest:v15];
  }
}

- (void)navigateToDestination:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = PXLemonadeReroutedProgrammaticDestination();
  v9 = [MEMORY[0x1E69C3758] contentModeForNavigationDestination:v8 useSearchTab:{-[PUTabbedLibraryViewController _useSearchTab](self, "_useSearchTab")}];
  if (v9 != [(PUTabbedLibraryViewController *)self selectedContentMode])
  {
    v10 = [(PUTabbedLibraryViewController *)self selectedNavigationController];
    v11 = [v10 viewControllers];
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
  [(PUTabbedLibraryViewController *)&v14 navigateToDestination:v8 options:a4 completionHandler:v7];
}

uint64_t __81__PUTabbedLibraryViewController_navigateToDestination_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (unint64_t)routingOptionsForDestination:(id)a3
{
  v4 = PXLemonadeReroutedProgrammaticDestination();
  v5 = [MEMORY[0x1E69C3758] contentModeForNavigationDestination:v4 useSearchTab:{-[PUTabbedLibraryViewController _useSearchTab](self, "_useSearchTab")}] != -1;

  return v5;
}

- (BOOL)_useSearchTab
{
  v2 = [(PUTabbedLibraryViewController *)self traitCollection];
  v3 = [v2 userInterfaceIdiom] != 1;

  return v3;
}

- (void)_performActionForType:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"PUTabbedLibraryViewController.m" lineNumber:859 description:{@"Invalid parameter not satisfying: %@", @"actionType != nil"}];
  }

  v6 = [(PUTabbedLibraryViewController *)self photoLibrary];
  v7 = [v6 px_virtualCollections];
  if ([v5 isEqualToString:*MEMORY[0x1E69C4000]])
  {
    v8 = objc_alloc(MEMORY[0x1E69C3410]);
    v9 = [MEMORY[0x1E69C4608] defaultPresenterWithViewController:self];
    v10 = [v8 initWithPhotoLibrary:v6 presentationEnvironment:v9];

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __55__PUTabbedLibraryViewController__performActionForType___block_invoke;
    v22[3] = &unk_1E7B7FB70;
    v22[4] = self;
    v11 = &v23;
    v23 = v7;
    v12 = v22;
    v13 = v10;
  }

  else
  {
    v14 = objc_alloc(MEMORY[0x1E69C37E0]);
    v15 = [v7 rootAlbumCollectionList];
    v16 = [v14 initWithActionType:v5 collectionList:v15];

    if (!v16)
    {
      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      [v19 handleFailureInMethod:a2 object:self file:@"PUTabbedLibraryViewController.m" lineNumber:875 description:{@"Unable to create action performer for type = '%@'", v5}];

      abort();
    }

    v17 = [(PUTabbedLibraryViewController *)self actionDelegate];
    [v16 setDelegate:v17];

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

- (void)_handleActionCompletionWithSuccess:(BOOL)a3 error:(id)a4 destinationCollection:(id)a5
{
  v6 = a3;
  v16 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  if (v6)
  {
    v10 = [objc_alloc(MEMORY[0x1E69C3930]) initWithObject:v9 revealMode:1];
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
      v15 = v8;
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

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  if ((a4 & 1) != 0 && PXCollectionsTabListManagerObserverContext == a5)
  {
    [(PUTabbedLibraryViewController *)self _updateCollectionsTabGroupChildren];
  }
}

- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ([(PUTabbedLibraryViewController *)self shouldSuppressAnimationsDuringProgrammaticNavigation]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v13 = 0;
  }

  else
  {
    v13 = [v10 navigationController:v10 animationControllerForOperation:a4 fromViewController:v11 toViewController:v12];
  }

  return v13;
}

- (id)navigationController:(id)a3 interactionControllerForAnimationController:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 navigationController:v5 interactionControllerForAnimationController:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_navigationControllerShouldUseBuiltinInteractionController:(id)a3
{
  v3 = [a3 topViewController];
  v4 = [v3 pu_navigationTransition];
  v5 = v4 == 0;

  return v5;
}

- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 navigationController:v8 didShowViewController:v7 animated:v5];
  }
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 navigationController:v8 willShowViewController:v7 animated:v5];
  }
}

- (id)_tabRootViewControllerInNavigationController:(id)a3
{
  v3 = [a3 viewControllers];
  v4 = [v3 firstObject];

  return v4;
}

- (id)_snapBackRootViewControllerInNavigationController:(id)a3
{
  v4 = a3;
  v5 = [v4 viewControllers];
  v6 = [v5 indexOfObjectPassingTest:&__block_literal_global_4050];
  if ((v6 - 1) > 0x7FFFFFFFFFFFFFFDLL)
  {
    goto LABEL_10;
  }

  v7 = v6;
  v8 = [v5 objectAtIndexedSubscript:?];
  if (([v8 pu_wantsTabBarVisible] & 1) == 0)
  {
    v10 = v7 - 2;
    while (v10 + 1 >= 1)
    {
      v9 = [v5 objectAtIndexedSubscript:v10];

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
    v9 = [(PUTabbedLibraryViewController *)self _tabRootViewControllerInNavigationController:v4];
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

- (BOOL)contentModeIsAvailableForNavigation:(int)a3
{
  v3 = [(PUTabbedLibraryViewController *)self _existingTabForContentMode:*&a3];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)_navigateToRootOfCurrentTabAnimated:(BOOL)a3 dismissAnyPresentedViewController:(BOOL)a4
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v6 = [(PUTabbedLibraryViewController *)self selectedNavigationController];
  if (v6)
  {
    v7 = [(PUTabbedLibraryViewController *)self _tabRootViewControllerInNavigationController:v6];
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = [(PUTabbedLibraryViewController *)self selectedTab];
  v7 = [v8 viewController];

  if (v7)
  {
LABEL_5:
    v9 = MEMORY[0x1E69DD258];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __103__PUTabbedLibraryViewController__navigateToRootOfCurrentTabAnimated_dismissAnyPresentedViewController___block_invoke;
    v12[3] = &unk_1E7B74AA8;
    v16 = a4;
    v15 = &v17;
    v13 = v7;
    v14 = v6;
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

- (void)_navigateToContentMode:(int)a3 animated:(BOOL)a4 dismissAnyPresentedViewController:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v7 = a4;
  v8 = *&a3;
  v12 = a6;
  v10 = [(PUTabbedLibraryViewController *)self _navigateToRootOfCurrentTabAnimated:v7 dismissAnyPresentedViewController:v6];
  if (v10)
  {
    [(PUTabbedLibraryViewController *)self setSelectedContentMode:v8];
  }

  v11 = v12;
  if (v12)
  {
    (*(v12 + 2))(v12, v10);
    v11 = v12;
  }
}

- (void)_navigateToInitialLocationInCurrentNavigationControllerAnimated:(BOOL)a3
{
  v3 = a3;
  [(PUTabbedLibraryViewController *)self _navigateToRootOfCurrentTabAnimated:?];
  v5 = [(PUTabbedLibraryViewController *)self selectedNavigationController];
  v6 = [v5 topViewController];
  v7 = v6;
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v8 = [(PUTabbedLibraryViewController *)self selectedTab];
    v9 = [v8 viewController];
  }

  [v9 px_scrollToInitialPositionAnimated:v3];
}

- (void)navigateToCollectionsTabRoot
{
  [(PUTabbedLibraryViewController *)self navigateToContentMode:13 animated:0 completion:0];

  [(PUTabbedLibraryViewController *)self _navigateToInitialLocationInCurrentNavigationControllerAnimated:0];
}

- (BOOL)_navigateToDefaultLocationInNavigationController:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  if ([(PUTabbedLibraryViewController *)self _contentModeForNavigationController:v5]== 10)
  {
    v6 = [v5 popToRootViewControllerAnimated:1];
  }

  return 0;
}

- (void)_updateTabBarVisibilityForHorizontalSizeClass:(int64_t)a3
{
  if (a3 == 2)
  {
    [(PUTabbedLibraryViewController *)self hideBarWithTransition:0];
  }

  else
  {
    [(PUTabbedLibraryViewController *)self showBarWithTransition:0];
  }
}

- (void)_sceneWillEnterForeground:(id)a3
{
  v4 = [(PUTabbedLibraryViewController *)self viewControllers];
  v5 = [v4 count];

  if (v5)
  {

    [(PUTabbedLibraryViewController *)self updateDisplayedTabsAnimated:1];
  }
}

- (void)acceptItemsFromDropSession:(id)a3 tab:(id)a4
{
  v9 = a3;
  v6 = [(PUTabbedSidebarController *)self->_sidebarController representedObjectForTab:a4];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;

    if (!v7)
    {
      goto LABEL_7;
    }

    v6 = [MEMORY[0x1E69C37B0] dropAssetsActionPerformerForAssetCollection:v7 dropSession:v9];
    v8 = [(PUTabbedLibraryViewController *)self actionDelegate];
    [v6 setDelegate:v8];

    [v6 performActionWithCompletionHandler:0];
  }

  else
  {
    v7 = 0;
  }

LABEL_7:
}

- (unint64_t)operationForAcceptingItemsFromDropSession:(id)a3 tab:(id)a4
{
  v6 = a3;
  v7 = [(PUTabbedSidebarController *)self->_sidebarController representedObjectForTab:a4];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 px_assetsDropMode];
  if (v9 == 2)
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

  else if (v9 == 1)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)displayOrderDidChangeForGroup:(id)a3
{
  sidebarController = self->_sidebarController;
  v5 = a3;
  v6 = [(PUTabbedLibraryViewController *)self undoManager];
  [(PUTabbedSidebarController *)sidebarController displayOrderDidChangeForGroup:v5 undoManager:v6];
}

- (void)updateDisplayedTabsAnimated:(BOOL)a3
{
  v3 = a3;
  v20 = *MEMORY[0x1E69E9840];
  v5 = [(PUTabbedLibraryViewController *)self tabs];
  v6 = [v5 count];

  v7 = [(PUTabbedLibraryViewController *)self selectedTab];
  v8 = [(PUTabbedLibraryViewController *)self currentRootTabIdentifiers];
  v9 = PXMap();

  [(PUTabbedLibraryViewController *)self setTabs:v9 animated:v3];
  if (v7 && ([v9 containsObject:v7] & 1) == 0)
  {
    v10 = PLUIGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v19 = v7;
      _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_INFO, "TabbedLibraryViewController: Selected tab for content mode (%@) has been removed. Falling back to Photos tab.", buf, 0xCu);
    }

    [(PUTabbedLibraryViewController *)self navigateToContentMode:10 animated:v3 completion:0];
  }

  [(PUTabbedLibraryViewController *)self setTabs:v9 animated:v3];
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
      [(PUTabbedLibraryViewController *)self _setSelectedTab:v11 animated:v3];
    }

    self->_pendingSelectedContentMode = -1;
  }

  v12 = [(PUTabbedLibraryViewController *)self selectedTab];
  v13 = [v12 viewController];

  v14 = [(PUTabbedLibraryViewController *)self pendingNavigationRequest];
  if (v14)
  {
    [(PUTabbedLibraryViewController *)self setPendingNavigationRequest:0];
    PXProgrammaticNavigationRequestExecute();
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PUTabbedLibraryViewController *)self navigateToInitialLocationInNavigationController:v13];
    }
  }

LABEL_17:
  v15 = [(PUTabbedLibraryViewController *)self tabs];
  v16 = [v15 count];

  if (v16 != v6)
  {
    v17 = [(PUTabbedLibraryViewController *)self selectedTab];
    [(PUTabbedLibraryViewController *)self _setSelectedTab:v17 animated:v3];
  }

  [(PUTabbedLibraryViewController *)self _updateTabBarMinimizeBehavior];
}

- (id)_makeNavigationControllerWithRootController:(id)a3
{
  v4 = a3;
  v5 = [[PUNavigationController alloc] initWithRootViewController:v4];

  [(PUNavigationController *)v5 setDelegate:self];

  return v5;
}

- (id)_existingTabForContentMode:(int)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(PUTabbedLibraryViewController *)self tabs];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([(PUTabbedLibraryViewController *)self contentModeForTab:v10]== a3)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)setSelectedTab:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PUTabbedLibraryViewController *)self contentModeForTab:v4];
  [(PUTabbedLibraryViewController *)self _logAnalyticsTabChanged:v5];
  v6 = [(PUTabbedLibraryViewController *)self selectedTab];
  v9.receiver = self;
  v9.super_class = PUTabbedLibraryViewController;
  [(PUTabbedLibraryViewController *)&v9 setSelectedTab:v4];

  v7 = [(PUTabbedLibraryViewController *)self selectedTab];

  if (v6 != v7)
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

- (void)_logAnalyticsTabChanged:(int)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (a3 <= 9)
  {
    if (a3 != 1)
    {
      if (a3 == 6)
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

  switch(a3)
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
  v5 = [(PUTabbedLibraryViewController *)self parentViewController];
  if (v5)
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

- (int)contentModeForTab:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 12;
  }

  else
  {
    v5 = [v3 identifier];
    v6 = [v5 isEqualToString:*MEMORY[0x1E69C41A0]];

    if (v6)
    {
      v4 = 10;
    }

    else
    {
      v7 = [v3 identifier];
      v8 = [v7 isEqualToString:*MEMORY[0x1E69C4198]];

      if (v8)
      {
        v4 = 13;
      }

      else
      {
        v9 = [v3 identifier];
        v10 = [v9 isEqualToString:*MEMORY[0x1E69C40C8]];

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

- (void)setSelectedContentMode:(int)a3
{
  v3 = *&a3;
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

- (int)_contentModeForNavigationController:(id)a3
{
  v4 = a3;
  v5 = [v4 tab];

  if (v5)
  {
    v6 = [v4 tab];
    v7 = [(PUTabbedLibraryViewController *)self contentModeForTab:v6];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (void)pu_didSelectTab:(id)a3 previousTab:(id)a4
{
  if (a3 == a4)
  {
    v5 = [(PUTabbedLibraryViewController *)self tabBar];
    v6 = [v5 _isMinimized];

    if ((v6 & 1) == 0)
    {
      [(PUTabbedLibraryViewController *)self _navigateToInitialLocationInCurrentNavigationControllerAnimated:1];
    }
  }

  [(PUTabbedLibraryViewController *)self _selectedTabDidChange];
}

- (BOOL)pu_shouldSelectTab:(id)a3
{
  v4 = a3;
  v5 = [(PUTabbedLibraryViewController *)self tabBar];
  v6 = [v5 isUserInteractionEnabled];

  if (v6)
  {
    v7 = [v4 viewController];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v8 = v7;

      if (!v8)
      {
        LOBYTE(v11) = 1;
        goto LABEL_10;
      }

      v9 = [(PUTabbedLibraryViewController *)self selectedTab];
      if (v9 == v4)
      {
        v13 = [(PUTabbedLibraryViewController *)self tabBar];
        v10 = [v13 _isMinimized] ^ 1;
      }

      else
      {
        v10 = 0;
      }

      v14 = [v4 badgeValue];
      v15 = [v14 length];

      LODWORD(v14) = [(PUTabbedLibraryViewController *)self contentModeForTab:v4];
      v16 = [(NSMutableIndexSet *)self->_everDisplayedContentModes containsIndex:v14];
      if (v14 == 10 || !v16 || v15)
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

      v7 = [v8 topViewController];
      if ([v7 pu_handleSecondTabTap])
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
  v4 = [(PUTabbedSidebarController *)self->_sidebarController collectionsTabListManager];
  v3 = [v4 childTabs];
  [(UITabGroup *)self->_collectionsTabGroup setChildren:v3];
}

- (void)_setSelectedTab:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v4)
  {
    [(PUTabbedLibraryViewController *)self setSelectedTab:v6];
  }

  else
  {
    v8 = MEMORY[0x1E69DD250];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__PUTabbedLibraryViewController__setSelectedTab_animated___block_invoke;
    v9[3] = &unk_1E7B80C38;
    v9[4] = self;
    v10 = v6;
    [v8 performWithoutAnimation:v9];
  }
}

- (id)_tabForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_rootTabsByIdentifier objectForKeyedSubscript:v4];
  if (!v5)
  {
    objc_initWeak(&location, self);
    if ([v4 isEqualToString:*MEMORY[0x1E69C41A0]])
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
      v5 = [v6 initWithTitle:v7 image:v8 identifier:v4 viewControllerProvider:v27];

      [v5 setAccessibilityIdentifier:@"LibraryTab"];
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69C4198]])
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
      v5 = [v10 initWithTitle:v11 image:v12 identifier:v4 viewControllerProvider:v25];

      v13 = [(PUTabbedLibraryViewController *)self _navigationControllerForIdentifier:v4];
      [v5 setManagingNavigationController:v13];

      [v5 setAccessibilityIdentifier:@"CollectionsTab"];
      [v5 setIsSidebarDestination:1];
      objc_storeStrong(&self->_collectionsTabGroup, v5);
      sidebarController = self->_sidebarController;
      if (sidebarController)
      {
        v15 = [(PUTabbedSidebarController *)sidebarController collectionsTabListManager];
        [v15 registerChangeObserver:self context:PXCollectionsTabListManagerObserverContext];
        [(PUTabbedLibraryViewController *)self _updateCollectionsTabGroupChildren];
      }

      [(PUTabbedLibraryViewController *)self updateNotificationBadge];
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69C40C8]])
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
      v5 = [v16 initWithTitle:v17 image:v18 identifier:v4 viewControllerProvider:v23];

      [v5 setAccessibilityIdentifier:@"ImportTab"];
    }

    else
    {
      if (![v4 isEqualToString:*MEMORY[0x1E69C41B0]])
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
    [(NSMutableDictionary *)self->_rootTabsByIdentifier setObject:v5 forKeyedSubscript:v4];
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

- (id)_navigationControllerForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_navigationControllersByIdentifier objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = [[PUNavigationController alloc] initWithNavigationBarClass:objc_opt_class() toolbarClass:0];
    [(PUNavigationController *)v5 setDelegate:self];
    [(NSMutableDictionary *)self->_navigationControllersByIdentifier setObject:v5 forKeyedSubscript:v4];
  }

  return v5;
}

- (id)_makeViewControllerForSearchTab:(id)a3
{
  v4 = [(PUTabbedLibraryViewController *)self searchHomeController];
  v5 = [(PUTabbedLibraryViewController *)self _makeNavigationControllerWithRootController:v4];

  return v5;
}

- (id)_makeViewControllerForImportTab:(id)a3
{
  v4 = [a3 identifier];
  v5 = [(PUTabbedLibraryViewController *)self _navigationControllerForIdentifier:v4];

  v6 = MEMORY[0x1E695DEC8];
  v7 = [(PUTabbedLibraryViewController *)self importViewController];
  v8 = [v6 arrayWithObjects:{v7, 0}];
  [v5 setViewControllers:v8];

  return v5;
}

- (id)_makeViewControllerForCollectionsTab:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PUTabbedLibraryViewController *)self photoLibrary];
  v6 = [v5 px_virtualCollections];
  v7 = [v6 collectionsCollection];

  v8 = [objc_alloc(MEMORY[0x1E69C3930]) initWithObject:v7 revealMode:1];
  v9 = PXLemonadeViewControllerFactory();
  v10 = [(PUTabbedLibraryViewController *)self photoLibrary];
  v11 = [v9 viewControllerWithPhotoLibrary:v10 destination:v8];

  v12 = [(PUTabbedLibraryViewController *)self actionDelegate];
  [v11 setActionProviderDelegate:v12];

  v13 = [v4 identifier];

  v14 = [(PUTabbedLibraryViewController *)self _navigationControllerForIdentifier:v13];

  v17[0] = v11;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  [v14 setViewControllers:v15];

  return v14;
}

- (id)_makeViewControllerForLibraryTab:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69C3430];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [(PUTabbedLibraryViewController *)self photoLibrary];
  v8 = [v6 initWithPhotoLibrary:v7];

  [v8 setEnableDays:0];
  v9 = [MEMORY[0x1E69C3418] sharedInstance];
  [v8 setShowSecondaryToolbar:{objc_msgSend(v9, "enableTabBarAccessoryControls")}];

  [v8 setInitialZoomLevel:4];
  v10 = objc_alloc(MEMORY[0x1E69C3900]);
  v11 = [(PUTabbedLibraryViewController *)self photoLibrary];
  v12 = [v10 initWithPhotoLibrary:v11];
  [v8 setViewOptionsModel:v12];

  v13 = [objc_alloc(MEMORY[0x1E69C3428]) initWithConfiguration:v8];
  v14 = [v5 identifier];

  v15 = [(PUTabbedLibraryViewController *)self _navigationControllerForIdentifier:v14];

  v18[0] = v13;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  [v15 setViewControllers:v16];

  return v15;
}

- (id)_addAlbumActionWithTitle:(id)a3 actionType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E69DCAD8];
  v9 = [MEMORY[0x1E69DC888] labelColor];
  v10 = [v8 configurationWithHierarchicalColor:v9];

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
  v15 = v7;
  v19 = v15;
  v16 = [v14 actionWithTitle:v6 image:v13 identifier:v15 handler:v18];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v16;
}

void __69__PUTabbedLibraryViewController__addAlbumActionWithTitle_actionType___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _performActionForType:*(a1 + 32)];
}

- (void)validateCommand:(id)a3
{
  v7 = a3;
  v3 = [v7 action];
  if (v3 == sel_newAlbum_)
  {
    v4 = *MEMORY[0x1E69C3FE8];
    if (v4)
    {
      v5 = v4;
      v6 = [MEMORY[0x1E69C37E0] localizedTitleForActionType:v4 collectionList:0];
      [v7 setTitle:v6];
    }
  }

  else if (v3 == sel_newSmartAlbum_)
  {
    [v7 setAttributes:{objc_msgSend(v7, "attributes") | 4}];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PUTabbedLibraryViewController;
  [(PUTabbedLibraryViewController *)&v6 viewWillAppear:a3];
  v4 = [(PUTabbedLibraryViewController *)self tabs];
  v5 = [v4 count];

  if (!v5)
  {
    [(PUTabbedLibraryViewController *)self updateDisplayedTabsAnimated:0];
  }
}

- (NSArray)currentRootTabIdentifiers
{
  v2 = [(PUTabbedLibraryViewController *)self rootTabIdentifiers];
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

- (PUTabbedLibraryViewController)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PUTabbedLibraryViewController.m" lineNumber:158 description:{@"%s is not available as initializer", "-[PUTabbedLibraryViewController initWithCoder:]"}];

  abort();
}

- (PUTabbedLibraryViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"PUTabbedLibraryViewController.m" lineNumber:154 description:{@"%s is not available as initializer", "-[PUTabbedLibraryViewController initWithNibName:bundle:]"}];

  abort();
}

- (PUTabbedLibraryViewController)initWithPhotoLibrary:(id)a3 libraryFilterState:(id)a4 actionDelegate:(id)a5
{
  v41[4] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v40.receiver = self;
  v40.super_class = PUTabbedLibraryViewController;
  v13 = [(PUTabbedLibraryViewController *)&v40 initWithNibName:0 bundle:0];
  if (v13)
  {
    if (!v10)
    {
      v37 = [MEMORY[0x1E696AAA8] currentHandler];
      [v37 handleFailureInMethod:a2 object:v13 file:@"PUTabbedLibraryViewController.m" lineNumber:126 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
    }

    objc_storeStrong(&v13->_photoLibrary, a3);
    objc_storeStrong(&v13->_libraryFilterState, a4);
    objc_storeWeak(&v13->_actionDelegate, v12);
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

    v24 = [(PUTabbedLibraryViewController *)v13 traitCollection];
    v25 = [v24 userInterfaceIdiom];

    if (v25 == 1)
    {
      v26 = [[PUTabbedSidebarController alloc] initWithPhotoLibrary:v10 libraryFilterState:v11 actionProviderDelegate:v12];
      sidebarController = v13->_sidebarController;
      v13->_sidebarController = v26;

      v28 = PXLocalizedString();
      v29 = [(PUTabbedLibraryViewController *)v13 _addAlbumActionWithTitle:v28 actionType:*MEMORY[0x1E69C3FF0]];
      [(PUTabbedSidebarController *)v13->_sidebarController setAddAlbumAction:v29];

      v30 = PXLocalizedString();
      v31 = [(PUTabbedLibraryViewController *)v13 _addAlbumActionWithTitle:v30 actionType:*MEMORY[0x1E69C4000]];
      [(PUTabbedSidebarController *)v13->_sidebarController setAddSharedAlbumAction:v31];

      v32 = v13->_sidebarController;
      v33 = [(PUTabbedLibraryViewController *)v13 sidebar];
      [v33 setDelegate:v32];
    }

    v34 = [MEMORY[0x1E696AD88] defaultCenter];
    [v34 addObserver:v13 selector:sel__didFinishPostingNotifications_ name:*MEMORY[0x1E69BE918] object:0];

    v35 = [MEMORY[0x1E69C4598] sharedScheduler];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __88__PUTabbedLibraryViewController_initWithPhotoLibrary_libraryFilterState_actionDelegate___block_invoke;
    v38[3] = &unk_1E7B80DD0;
    v39 = v13;
    [v35 scheduleMainQueueTask:v38];
  }

  return v13;
}

void __88__PUTabbedLibraryViewController_initWithPhotoLibrary_libraryFilterState_actionDelegate___block_invoke(uint64_t a1)
{
  v2 = +[PUTabbedLibrarySettings sharedInstance];
  [v2 addKeyObserver:*(a1 + 32)];
}

@end