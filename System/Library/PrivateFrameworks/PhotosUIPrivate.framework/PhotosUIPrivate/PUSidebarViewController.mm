@interface PUSidebarViewController
- (BOOL)_hasSidebarItemForDestination:(id)destination;
- (BOOL)actionPerformer:(id)performer dismissViewController:(id)controller completionHandler:(id)handler;
- (BOOL)actionPerformer:(id)performer presentViewController:(id)controller;
- (BOOL)actionPerformer:(id)performer transitionToViewController:(id)controller transitionType:(int64_t)type;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)collectionView:(id)view selectionFollowsFocusForItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSpringLoadItemAtIndexPath:(id)path withContext:(id)context;
- (PUSidebarViewController)initWithNavigationRoot:(id)root photoLibrary:(id)library libraryFilterState:(id)state options:(unint64_t)options additionalAssetsFilterPredicate:(id)predicate pickerAllPhotosVirtualCollection:(id)collection;
- (PXActionProviderDelegate)actionProviderDelegate;
- (PXNavigationListItem)fallbackNavigationItem;
- (PXSelectionContainerProvider)selectionProvider;
- (id)_collectionViewIndexPathForCollectionIdentifier:(id)identifier;
- (id)_collectionViewIndexPathForItemIdentifier:(id)identifier;
- (id)_itemIndexPathForDestination:(id)destination;
- (id)_trailingSwipeActionConfigurationForIndexPath:(id)path;
- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point;
- (id)collectionView:(id)view targetIndexPathForMoveFromItemAtIndexPath:(id)path toProposedIndexPath:(id)indexPath;
- (id)collectionViewDropDelegate:(id)delegate collectionAtIndexPath:(id)path;
- (id)generateLayout;
- (id)nextExistingParticipantOnRouteToDestination:(id)destination;
- (unint64_t)routingOptionsForDestination:(id)destination;
- (void)_createSharedAlbum;
- (void)_deleteItemTapped:(id)tapped sourceView:(id)view completion:(id)completion;
- (void)_handleDidSelectListItem:(id)item completionHandler:(id)handler;
- (void)_highlightNavigationDestination:(id)destination;
- (void)_keyboardWillChangeFrame:(id)frame;
- (void)_navigateToDestinationForItem:(id)item sameItem:(BOOL)sameItem completionHandler:(id)handler;
- (void)_performActionForType:(id)type completionHandler:(id)handler;
- (void)_triggerNavigationToDestination:(id)destination animated:(BOOL)animated completionHandler:(id)handler;
- (void)_updateHeaderCell:(id)cell forListItem:(id)item;
- (void)_updateOutlineCell:(id)cell forListItem:(id)item;
- (void)_updateSelectedRowScrollToVisible:(BOOL)visible;
- (void)assetCollectionActionPerformer:(id)performer playMovieForAssetCollection:(id)collection;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)configureDataSource;
- (void)configureViewHierarchy;
- (void)navigateToDestination:(id)destination options:(unint64_t)options completionHandler:(id)handler;
- (void)navigateToFallbackForDestination:(id)destination;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)outlineCell:(id)cell updatedTitle:(id)title forItem:(id)item;
- (void)pagingViewControllerDidUpdateItemList:(id)list;
- (void)popoverPresentationController:(id)controller willRepositionPopoverToRect:(CGRect *)rect inView:(id *)view;
- (void)ppt_runTabSwitchingTestWithName:(id)name options:(id)options delegate:(id)delegate completionHandler:(id)handler;
- (void)selectItemForDestination:(id)destination;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setupDataSectionManagerWithLoadMode:(int64_t)mode;
- (void)sidebarDiffableDataSourceController:(id)controller willApplySnapshotWithChangedItemsAfterChange:(id)change applyBlock:(id)block;
- (void)splitViewControllerWillCollapse:(id)collapse;
- (void)splitViewControllerWillExpand:(id)expand;
- (void)traitCollectionDidChange:(id)change;
- (void)validateCommand:(id)command;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PUSidebarViewController

- (PXActionProviderDelegate)actionProviderDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionProviderDelegate);

  return WeakRetained;
}

- (id)nextExistingParticipantOnRouteToDestination:(id)destination
{
  v4 = PXLemonadeReroutedProgrammaticDestination();
  splitViewController = [(PUSidebarViewController *)self splitViewController];
  v6 = [splitViewController viewControllerForColumn:2];

  px_navigationDestination = [v6 px_navigationDestination];
  if (([v4 isEquivalentToNavigationDestination:px_navigationDestination] & 1) != 0 || objc_msgSend(px_navigationDestination, "isLemonadeHome") && objc_msgSend(v4, "isLemonadeHome"))
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)navigateToDestination:(id)destination options:(unint64_t)options completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = PXLemonadeReroutedProgrammaticDestination();
  px_splitViewController = [(PUSidebarViewController *)self px_splitViewController];
  isSidebarVisible = [px_splitViewController isSidebarVisible];

  splitViewController = [(PUSidebarViewController *)self splitViewController];
  v12 = [splitViewController viewControllerForColumn:2];
  if ([v8 routingType] == 2 && objc_msgSend(v8, "type") == 9)
  {
    v13 = PXLemonadeViewControllerFactory();
    photoLibrary = self->_photoLibrary;
    actionProviderDelegate = [(PUSidebarViewController *)self actionProviderDelegate];
    libraryRootViewController = [v13 viewControllerForSidebarNavigationDestination:v8 photoLibrary:photoLibrary actionProviderDelegate:actionProviderDelegate];

    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __75__PUSidebarViewController_navigateToDestination_options_completionHandler___block_invoke;
    v35[3] = &unk_1E7B80C88;
    v36 = handlerCopy;
    [splitViewController presentViewController:libraryRootViewController animated:1 completion:v35];

    goto LABEL_34;
  }

  tabBarController = [(PUSidebarViewController *)self tabBarController];
  v18 = [MEMORY[0x1E69C3758] contentModeForNavigationDestination:v8 useSearchTab:0];
  [tabBarController setSelectedContentMode:v18];
  [(PUSidebarViewController *)self selectItemForDestination:v8];
  if (tabBarController)
  {
    if (v18 == 10 || v18 == 12 || ([tabBarController px_navigationDestination], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v8, "isEquivalentToNavigationDestination:", v19), v19, v20))
    {
      libraryRootViewController = tabBarController;
      goto LABEL_19;
    }
  }

  px_navigationDestination = [v12 px_navigationDestination];
  v22 = [v8 isEquivalentToNavigationDestination:px_navigationDestination];

  if (!v22)
  {
    if (([v8 isLemonadeHome] & 1) != 0 || objc_msgSend(v8, "isTargetingAsset") && (objc_msgSend(v8, "isTargetingAlbum") & 1) == 0)
    {
      navigationRoot = [(PUSidebarViewController *)self navigationRoot];
      if (objc_opt_respondsToSelector())
      {
        libraryRootViewController = [navigationRoot libraryRootViewController];
      }

      else
      {
        libraryRootViewController = 0;
      }
    }

    else
    {
      navigationRoot = PXLemonadeViewControllerFactory();
      v24 = self->_photoLibrary;
      [(PUSidebarViewController *)self actionProviderDelegate];
      v32 = isSidebarVisible;
      v26 = v25 = options;
      libraryRootViewController = [navigationRoot viewControllerForSidebarNavigationDestination:v8 photoLibrary:v24 actionProviderDelegate:v26];

      options = v25;
      isSidebarVisible = v32;
    }

LABEL_19:
    if (v12 != libraryRootViewController)
    {
      optionsCopy = options;
      if (objc_opt_respondsToSelector())
      {
        v27 = libraryRootViewController;
      }

      else
      {
        v27 = 0;
      }

      v28 = v27;
      actionProviderDelegate2 = [(PUSidebarViewController *)self actionProviderDelegate];
      [v28 setActionProviderDelegate:actionProviderDelegate2];

      if (objc_opt_respondsToSelector())
      {
        v30 = libraryRootViewController;
      }

      else
      {
        v30 = 0;
      }

      v31 = v30;
      [v31 setPagingViewControllerDelegate:self];
      if ((isSidebarVisible & 1) == 0 && [splitViewController splitBehavior] == 1)
      {
        [splitViewController showColumn:0];
      }

      [splitViewController setViewController:0 forColumn:{2, optionsCopy}];
      [splitViewController setViewController:libraryRootViewController forColumn:2];

      options = v34;
    }

    goto LABEL_30;
  }

  libraryRootViewController = v12;
LABEL_30:
  if ([libraryRootViewController routingOptionsForDestination:v8] == 1)
  {
    [libraryRootViewController navigateToDestination:v8 options:options completionHandler:handlerCopy];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 1, 0);
  }

LABEL_34:
}

- (unint64_t)routingOptionsForDestination:(id)destination
{
  destinationCopy = destination;
  if ([destinationCopy shouldExcludeSidebar])
  {
    v5 = 0;
  }

  else
  {
    v6 = PXLemonadeReroutedProgrammaticDestination();

    if ([(PUSidebarViewController *)self _hasSidebarItemForDestination:v6])
    {
      v5 = 1;
    }

    else
    {
      v7 = PXLemonadeViewControllerFactory();
      v5 = [v7 sidebarRoutingOptionsForDestination:v6];
    }

    destinationCopy = v6;
  }

  return v5;
}

- (void)pagingViewControllerDidUpdateItemList:(id)list
{
  listCopy = list;
  sidebarDataController = [(PUSidebarViewController *)self sidebarDataController];
  if ([sidebarDataController isChangeProcessingPaused])
  {
    pagingViewControllerNumberOfItems = [listCopy pagingViewControllerNumberOfItems];

    if (pagingViewControllerNumberOfItems)
    {
      goto LABEL_6;
    }

    sidebarDataController = [(PUSidebarViewController *)self fallbackNavigationItem];
    if (sidebarDataController)
    {
      [(PUSidebarViewController *)self _navigateToDestinationForItem:sidebarDataController sameItem:0 completionHandler:0];
    }
  }

LABEL_6:
}

- (void)_createSharedAlbum
{
  v3 = objc_alloc(MEMORY[0x1E69C3410]);
  photoLibrary = self->_photoLibrary;
  v5 = [MEMORY[0x1E69C4608] defaultPresenterWithViewController:self];
  v6 = [v3 initWithPhotoLibrary:photoLibrary presentationEnvironment:v5];

  [v6 performActionWithCompletionHandler:0];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXLibraryFilterStateObservationContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUSidebarViewController.m" lineNumber:1242 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (changeCopy)
  {
    v11 = observableCopy;
    [(PUSidebarViewController *)self setupDataSectionManagerWithLoadMode:0];
    observableCopy = v11;
  }
}

- (void)ppt_runTabSwitchingTestWithName:(id)name options:(id)options delegate:(id)delegate completionHandler:(id)handler
{
  nameCopy = name;
  optionsCopy = options;
  delegateCopy = delegate;
  handlerCopy = handler;
  v14 = handlerCopy;
  if (!handlerCopy)
  {
    handlerCopy = &__block_literal_global_311_37951;
  }

  v15 = _Block_copy(handlerCopy);
  collectionView = [(PUSidebarViewController *)self collectionView];
  v17 = [optionsCopy objectForKeyedSubscript:@"tab"];
  if (([v17 isEqualToString:@"all"] & 1) == 0)
  {
    v19 = @"Sidebar currently only supports switching to all tabs";
    goto LABEL_7;
  }

  v18 = [collectionView numberOfItemsInSection:0];
  if (v18 <= 1)
  {
    v19 = @"couldn't find sidebar items to cycle through";
LABEL_7:
    [delegateCopy failedTest:nameCopy withFailureFormat:v19];
    v15[2](v15, 0);
    goto LABEL_22;
  }

  v20 = v18;
  v29 = v17;
  v30 = collectionView;
  v31 = v15;
  v32 = delegateCopy;
  v33 = optionsCopy;
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  firstObject = 0;
  v23 = 0;
  while (1)
  {
    v24 = [MEMORY[0x1E696AC88] indexPathForItem:v23 inSection:0];
    dataSource = [(PUSidebarViewController *)self dataSource];
    v26 = [dataSource itemIdentifierForIndexPath:v24];

    collection = [v26 collection];

    if (!collection)
    {
      break;
    }

    [v21 addObject:v26];
    if (!firstObject)
    {
      if ([indexPathsForSelectedItems containsObject:v24])
      {
        firstObject = v26;
      }

      else
      {
        firstObject = 0;
      }
    }

    if (v20 == ++v23)
    {
      if (firstObject)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }
  }

  if (firstObject)
  {
    goto LABEL_16;
  }

LABEL_19:
  firstObject = [v21 firstObject];
LABEL_16:
  delegateCopy = v32;
  optionsCopy = v33;
  if ([v21 count] > 1)
  {
    v28 = [v33 objectForKeyedSubscript:@"iterations"];
    [v28 integerValue];

    [v32 startedTest:nameCopy];
    [v21 count];
    v39 = v32;
    v40 = nameCopy;
    v41 = v21;
    v42 = v31;
    v35 = firstObject;
    v15 = v31;
    v36 = v39;
    delegateCopy = v32;
    v37 = v40;
    optionsCopy = v33;
    v38 = v42;
    PXIterateAsynchronously();
  }

  else
  {
    [v32 failedTest:nameCopy withFailureFormat:@"couldn't find enough sidebar items to cycle through"];
    v15 = v31;
    v31[2](v31, 0);
  }

  v17 = v29;
  collectionView = v30;
LABEL_22:
}

void __94__PUSidebarViewController_ppt_runTabSwitchingTestWithName_options_delegate_completionHandler___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v10 = v7;
  v11 = v6;
  v12 = a1[8];
  v9 = v3;
  v8 = v3;
  PXIterateAsynchronously();
}

void __94__PUSidebarViewController_ppt_runTabSwitchingTestWithName_options_delegate_completionHandler___block_invoke_8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __94__PUSidebarViewController_ppt_runTabSwitchingTestWithName_options_delegate_completionHandler___block_invoke_9;
  v4[3] = &unk_1E7B78C08;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  [v2 _handleDidSelectListItem:v3 completionHandler:v4];
}

uint64_t __94__PUSidebarViewController_ppt_runTabSwitchingTestWithName_options_delegate_completionHandler___block_invoke_9(uint64_t a1)
{
  [*(a1 + 32) finishedTest:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void __94__PUSidebarViewController_ppt_runTabSwitchingTestWithName_options_delegate_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 index];
  v5 = *(a1 + 72);
  if (v4 >= v5)
  {
    v6 = 2 * v5 - v4 - 2;
  }

  else
  {
    v6 = v4;
  }

  if (v6 >= 1)
  {
    [*(a1 + 32) startedSubTest:@"SwitchTab" forTest:*(a1 + 40)];
  }

  v7 = v6 > 0;
  v8 = [*(a1 + 48) objectAtIndexedSubscript:v6];
  v9 = *(a1 + 56);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __94__PUSidebarViewController_ppt_runTabSwitchingTestWithName_options_delegate_completionHandler___block_invoke_4;
  v12[3] = &unk_1E7B78D20;
  v17 = v7;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v10 = *(a1 + 64);
  v15 = v3;
  v16 = v10;
  v11 = v3;
  [v9 _handleDidSelectListItem:v8 completionHandler:v12];
}

void __94__PUSidebarViewController_ppt_runTabSwitchingTestWithName_options_delegate_completionHandler___block_invoke_4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [MEMORY[0x1E69C4598] sharedScheduler];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __94__PUSidebarViewController_ppt_runTabSwitchingTestWithName_options_delegate_completionHandler___block_invoke_5;
  v9[3] = &unk_1E7B78CF8;
  v15 = *(a1 + 64);
  v10 = *(a1 + 32);
  v7 = *(a1 + 40);
  v16 = a2;
  v11 = v7;
  v12 = v5;
  v14 = *(a1 + 56);
  v13 = *(a1 + 48);
  v8 = v5;
  [v6 scheduleTaskAfterCATransactionCommits:v9];
}

void __94__PUSidebarViewController_ppt_runTabSwitchingTestWithName_options_delegate_completionHandler___block_invoke_5(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    [*(a1 + 32) finishedSubTest:@"SwitchTab" forTest:*(a1 + 40)];
  }

  if (*(a1 + 73))
  {
    v2 = dispatch_time(0, 500000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __94__PUSidebarViewController_ppt_runTabSwitchingTestWithName_options_delegate_completionHandler___block_invoke_6;
    block[3] = &unk_1E7B80DD0;
    v5 = *(a1 + 56);
    dispatch_after(v2, MEMORY[0x1E69E96A0], block);
  }

  else
  {
    [*(a1 + 32) failedTest:*(a1 + 40) withFailureFormat:@"Error when changing sidebar item:%@", *(a1 + 48)];
    v3 = *(*(a1 + 64) + 16);

    v3();
  }
}

- (void)_keyboardWillChangeFrame:(id)frame
{
  frameCopy = frame;
  collectionView = [(PUSidebarViewController *)self collectionView];
  userInfo = [frameCopy userInfo];

  [(PUSidebarViewController *)self px_safeAreaInsets];
  [collectionView px_adjustInsetsForKeyboardInfo:userInfo safeAreaInsets:?];
}

- (void)navigateToFallbackForDestination:(id)destination
{
  destinationCopy = destination;
  photoLibrary = [(PUSidebarViewController *)self photoLibrary];
  px_virtualCollections = [photoLibrary px_virtualCollections];

  collection = [destinationCopy collection];

  allAlbumsCollection = [px_virtualCollections allAlbumsCollection];
  v8 = [collection isEqual:allAlbumsCollection];

  if (v8)
  {
    rootAlbumCollectionList = [px_virtualCollections rootAlbumCollectionList];
    v10 = [objc_alloc(MEMORY[0x1E69C3930]) initWithObject:rootAlbumCollectionList revealMode:0];
    [(PUSidebarViewController *)self _triggerNavigationToDestination:v10 animated:0 completionHandler:0];
  }
}

- (void)splitViewControllerWillExpand:(id)expand
{
  v5 = [expand viewControllerForColumn:3];
  px_navigationDestination = [v5 px_navigationDestination];
  if (px_navigationDestination)
  {
    [(PUSidebarViewController *)self _highlightNavigationDestination:px_navigationDestination];
  }
}

- (void)splitViewControllerWillCollapse:(id)collapse
{
  collapseCopy = collapse;
  v4 = [collapseCopy viewControllerForColumn:2];
  tabBarController = [(PUSidebarViewController *)self tabBarController];
  v6 = tabBarController;
  if (tabBarController && tabBarController != v4)
  {
    [collapseCopy setViewController:tabBarController forColumn:2];
  }
}

- (void)sidebarDiffableDataSourceController:(id)controller willApplySnapshotWithChangedItemsAfterChange:(id)change applyBlock:(id)block
{
  v58 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  changeCopy = change;
  blockCopy = block;
  deferredNavigationItem = [(PUSidebarViewController *)self deferredNavigationItem];
  if (deferredNavigationItem)
  {
    v12 = deferredNavigationItem;
    blockCopy[2](blockCopy);
  }

  else
  {
    collectionView = [(PUSidebarViewController *)self collectionView];
    indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
    firstObject = [indexPathsForSelectedItems firstObject];

    if (firstObject)
    {
      dataSource = [(PUSidebarViewController *)self dataSource];
      v12 = [dataSource itemIdentifierForIndexPath:firstObject];
    }

    else
    {
      v12 = 0;
    }

    blockCopy[2](blockCopy);
    if (!v12)
    {
      v19 = 0;
      goto LABEL_30;
    }
  }

  dataSource2 = [(PUSidebarViewController *)self dataSource];
  v18 = [dataSource2 indexPathForItemIdentifier:v12];

  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v47 = changeCopy;
    v48 = controllerCopy;
    identifier = [v12 identifier];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    dataSource3 = [(PUSidebarViewController *)self dataSource];
    snapshot = [dataSource3 snapshot];
    itemIdentifiers = [snapshot itemIdentifiers];

    v24 = [itemIdentifiers countByEnumeratingWithState:&v49 objects:v57 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v50;
      v46 = blockCopy;
LABEL_11:
      v27 = 0;
      while (1)
      {
        if (*v50 != v26)
        {
          objc_enumerationMutation(itemIdentifiers);
        }

        v28 = *(*(&v49 + 1) + 8 * v27);
        identifier2 = [v28 identifier];
        v30 = [identifier2 isEqualToString:identifier];

        if (v30)
        {
          break;
        }

        if (v25 == ++v27)
        {
          v25 = [itemIdentifiers countByEnumeratingWithState:&v49 objects:v57 count:16];
          blockCopy = v46;
          if (v25)
          {
            goto LABEL_11;
          }

          goto LABEL_17;
        }
      }

      dataSource4 = [(PUSidebarViewController *)self dataSource];
      v18 = [dataSource4 indexPathForItemIdentifier:v28];

      blockCopy = v46;
      if (!v18)
      {
        goto LABEL_20;
      }

      v19 = 0;
      controllerCopy = v48;
    }

    else
    {
LABEL_17:

LABEL_20:
      v32 = PLSidebarGetLog();
      controllerCopy = v48;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        title = [v12 title];
        *buf = 138412546;
        v54 = v34;
        v55 = 2112;
        v56 = title;
        _os_log_impl(&dword_1B36F3000, v32, OS_LOG_TYPE_DEFAULT, "Selected item (%@ - %@) was no longer found after the sidebar contents were updated. Falling back to default selection", buf, 0x16u);
      }

      fallbackNavigationItem = [(PUSidebarViewController *)self fallbackNavigationItem];
      v19 = fallbackNavigationItem;
      if (fallbackNavigationItem)
      {
        v37 = fallbackNavigationItem;
      }

      v18 = 0;
    }

    changeCopy = v47;
  }

  deferredNavigationItem2 = [(PUSidebarViewController *)self deferredNavigationItem];

  v39 = 0;
  if (deferredNavigationItem2 && v18)
  {
    [(PUSidebarViewController *)self setDeferredNavigationItem:0];
    v39 = 4;
  }

  collectionView2 = [(PUSidebarViewController *)self collectionView];
  [collectionView2 selectItemAtIndexPath:v18 animated:0 scrollPosition:v39];

LABEL_30:
  dataSource5 = [(PUSidebarViewController *)self dataSource];
  snapshot2 = [dataSource5 snapshot];

  v43 = snapshot2;
  v44 = PXFilter();
  [v43 reloadItemsWithIdentifiers:v44];
  dataSource6 = [(PUSidebarViewController *)self dataSource];
  [dataSource6 applySnapshot:v43 animatingDifferences:{objc_msgSend(controllerCopy, "animateDataSourceUpdates")}];

  if (v19)
  {
    [(PUSidebarViewController *)self _navigateToDestinationForItem:v19 sameItem:0 completionHandler:0];
  }
}

- (void)selectItemForDestination:(id)destination
{
  destinationCopy = destination;
  if ([(PUSidebarViewController *)self navigating]|| ![(PUSidebarViewController *)self isViewLoaded])
  {
    [(PUSidebarViewController *)self setCurrentNavigationDestination:destinationCopy];
  }

  else
  {
    [(PUSidebarViewController *)self _highlightNavigationDestination:destinationCopy];
  }
}

- (void)_highlightNavigationDestination:(id)destination
{
  destinationCopy = destination;
  currentNavigationDestination = [(PUSidebarViewController *)self currentNavigationDestination];
  if (([currentNavigationDestination isEqual:destinationCopy] & 1) == 0)
  {
    [(PUSidebarViewController *)self setCurrentNavigationDestination:destinationCopy];
    [(PUSidebarViewController *)self _updateSelectedRowScrollToVisible:1];
  }
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (([(PUSidebarViewController *)self options]& 1) != 0)
  {
    v12 = 0;
  }

  else if (sel_newAlbum_ == action || sel_newSharedAlbum_ == action || sel_newFolder_ == action)
  {
    splitViewController = [(PUSidebarViewController *)self splitViewController];
    viewIfLoaded = [splitViewController viewIfLoaded];
    window = [viewIfLoaded window];
    v12 = window != 0;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = PUSidebarViewController;
    v12 = [(PUSidebarViewController *)&v14 canPerformAction:action withSender:senderCopy];
  }

  return v12;
}

- (void)assetCollectionActionPerformer:(id)performer playMovieForAssetCollection:(id)collection
{
  collectionCopy = collection;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x1E69C36C0];
    v6 = collectionCopy;
    v7 = [v5 moviePresenterWithPresentingViewController:self];
    [v7 presentMovieViewControllerForAssetCollection:v6 keyAssetFetchResult:0 preferredTransitionType:1];
  }
}

- (BOOL)actionPerformer:(id)performer transitionToViewController:(id)controller transitionType:(int64_t)type
{
  performerCopy = performer;
  controllerCopy = controller;
  v11 = controllerCopy;
  switch(type)
  {
    case 1:
      v14 = controllerCopy;
      px_splitViewController = [(PUSidebarViewController *)self px_splitViewController];
      contentViewController = [px_splitViewController contentViewController];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        selectedNavigationController = [contentViewController selectedNavigationController];
        v23 = selectedNavigationController;
        v12 = selectedNavigationController != 0;
        if (selectedNavigationController)
        {
          [selectedNavigationController pushViewController:v14 animated:1];
        }
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_19;
    case 2:
      v13 = performerCopy;
      if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v14 = v13;

        if (!v14)
        {
LABEL_17:
          contentViewController = [(PUSidebarViewController *)self navigationController];
          v12 = 1;
          [contentViewController presentViewController:v11 animated:1 completion:0];
LABEL_19:

          goto LABEL_20;
        }

        assetCollection = [v14 assetCollection];
        v13 = PXNavigationListItemCollectionIdentifier();

        v16 = [(PUSidebarViewController *)self _collectionViewIndexPathForCollectionIdentifier:v13];
        collectionView = [(PUSidebarViewController *)self collectionView];
        v18 = [collectionView cellForItemAtIndexPath:v16];

        if (v18)
        {
          popoverPresentationController = [v11 popoverPresentationController];
          [popoverPresentationController setPermittedArrowDirections:12];
          [popoverPresentationController setSourceView:v18];
          [popoverPresentationController setDelegate:self];
        }
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_17;
    case 0:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUSidebarViewController.m" lineNumber:953 description:@"Code which should be unreachable has been reached"];

      abort();
  }

  v12 = 0;
LABEL_20:

  return v12;
}

- (BOOL)actionPerformer:(id)performer dismissViewController:(id)controller completionHandler:(id)handler
{
  handlerCopy = handler;
  splitViewController = [(PUSidebarViewController *)self splitViewController];
  [splitViewController dismissViewControllerAnimated:1 completion:handlerCopy];

  return 1;
}

- (BOOL)actionPerformer:(id)performer presentViewController:(id)controller
{
  controllerCopy = controller;
  splitViewController = [(PUSidebarViewController *)self splitViewController];
  [splitViewController presentViewController:controllerCopy animated:1 completion:0];

  return 1;
}

- (id)collectionViewDropDelegate:(id)delegate collectionAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(PUSidebarViewController *)self dataSource];
  v7 = [dataSource itemIdentifierForIndexPath:pathCopy];

  collection = [v7 collection];

  return collection;
}

- (id)collectionView:(id)view targetIndexPathForMoveFromItemAtIndexPath:(id)path toProposedIndexPath:(id)indexPath
{
  indexPathCopy = indexPath;
  pathCopy = path;
  reorderController = [(PUSidebarViewController *)self reorderController];
  v10 = [reorderController targetIndexPathForMoveFromItemAtIndexPath:pathCopy toProposedIndexPath:indexPathCopy];

  return v10;
}

- (BOOL)collectionView:(id)view shouldSpringLoadItemAtIndexPath:(id)path withContext:(id)context
{
  contextCopy = context;
  pathCopy = path;
  viewCopy = view;
  dropDelegate = [(PUSidebarViewController *)self dropDelegate];
  v12 = [dropDelegate collectionView:viewCopy shouldSpringLoadItemAtIndexPath:pathCopy withContext:contextCopy];

  return v12;
}

- (BOOL)collectionView:(id)view selectionFollowsFocusForItemAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(PUSidebarViewController *)self dataSource];
  v7 = [dataSource itemIdentifierForIndexPath:pathCopy];

  objc_opt_class();
  LOBYTE(dataSource) = objc_opt_isKindOfClass();

  return (dataSource & 1) == 0;
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  dataSource = [(PUSidebarViewController *)self dataSource];
  v9 = [dataSource itemIdentifierForIndexPath:pathCopy];

  if ([viewCopy isEditing])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = [v9 isGroup] ^ 1;
  }

  mEMORY[0x1E69C3650] = [MEMORY[0x1E69C3650] sharedInstance];
  if ([mEMORY[0x1E69C3650] enableSidebarHeaderSelection] && !-[PUSidebarViewController _isPhotosPicker](self, "_isPhotosPicker"))
  {
    if ([viewCopy isEditing])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (([v9 isGroup] & 1) == 0)
      {
        goto LABEL_7;
      }

      collection = [v9 collection];

      if (collection)
      {
        goto LABEL_7;
      }
    }

LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  indexPathsForSelectedItems = [viewCopy indexPathsForSelectedItems];
  -[PUSidebarViewController setSelectingAlreadySelectedIndexPath:](self, "setSelectingAlreadySelectedIndexPath:", [indexPathsForSelectedItems containsObject:pathCopy]);

  v13 = 1;
LABEL_14:

  return v13;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(PUSidebarViewController *)self dataSource];
  v7 = [dataSource itemIdentifierForIndexPath:pathCopy];

  [(PUSidebarViewController *)self _handleDidSelectListItem:v7 completionHandler:0];
}

- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  identifier = [configuration identifier];
  if (identifier)
  {
    [animatorCopy setPreferredCommitStyle:0];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __100__PUSidebarViewController_collectionView_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke;
    v9[3] = &unk_1E7B80C38;
    v9[4] = self;
    v10 = identifier;
    [animatorCopy addCompletion:v9];
  }
}

- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point
{
  viewCopy = view;
  pathCopy = path;
  dataSource = [(PUSidebarViewController *)self dataSource];
  v10 = [dataSource itemIdentifierForIndexPath:pathCopy];

  collection = [v10 collection];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = collection;
    options = [(PUSidebarViewController *)self options];
    assetCollectionSubtype = [v12 assetCollectionSubtype];
    px_isSharedAlbum = [v12 px_isSharedAlbum];
    if ((options & 1) == 0)
    {
      v16 = px_isSharedAlbum;
      v17 = assetCollectionSubtype == 2;
      if (![(PUSidebarViewController *)self isEditing]&& ((v17 | v16) & 1) != 0)
      {
        v18 = MEMORY[0x1E69DC8D8];
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __91__PUSidebarViewController_collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke;
        v30[3] = &unk_1E7B78C80;
        v31 = v12;
        selfCopy = self;
        v19 = v12;
        v20 = [v18 configurationWithIdentifier:v10 previewProvider:0 actionProvider:v30];

LABEL_10:
        goto LABEL_13;
      }
    }
  }

  else if ([collection canContainCollections])
  {
    v19 = [viewCopy cellForItemAtIndexPath:pathCopy];
    v21 = MEMORY[0x1E69C4608];
    splitViewController = [(PUSidebarViewController *)self splitViewController];
    v23 = [v21 popoverPresenterWithViewController:splitViewController sourceItem:v19];

    undoManager = [(PUSidebarViewController *)self undoManager];
    v20 = PXCollectionActionMenuForCollection();

    if (v20)
    {
      v25 = MEMORY[0x1E69DC8D8];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __91__PUSidebarViewController_collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_3;
      v28[3] = &unk_1E7B78CA8;
      v29 = v20;
      v26 = v20;
      v20 = [v25 configurationWithIdentifier:v10 previewProvider:0 actionProvider:v28];
    }

    goto LABEL_10;
  }

  v20 = 0;
LABEL_13:

  return v20;
}

id __91__PUSidebarViewController_collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke(uint64_t a1)
{
  v2 = PXPhotosViewConfigurationForAssetCollection();
  v3 = [v2 assetCollectionActionManager];
  v4 = [v2 dataSourceManager];
  [v4 performChanges:&__block_literal_global_297_37996];
  [v3 setPerformerDelegate:*(a1 + 40)];
  [*(a1 + 40) setAssetCollectionActionManager:v3];
  v5 = [MEMORY[0x1E69C4460] contextMenuWithActionManager:v3 overrideActions:0];

  return v5;
}

- (void)outlineCell:(id)cell updatedTitle:(id)title forItem:(id)item
{
  v31 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  itemCopy = item;
  collection = [itemCopy collection];
  if ([collection canPerformEditOperation:7])
  {
    sidebarDiffableDataSourceController = [objc_alloc(MEMORY[0x1E69C3960]) initWithCollection:collection title:titleCopy];
    undoManager = [(PUSidebarViewController *)self undoManager];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __60__PUSidebarViewController_outlineCell_updatedTitle_forItem___block_invoke;
    v19[3] = &unk_1E7B78C58;
    v12 = collection;
    v20 = v12;
    v21 = titleCopy;
    selfCopy = self;
    [sidebarDiffableDataSourceController executeWithUndoManager:undoManager completionHandler:v19];

    v13 = MEMORY[0x1E6991F28];
    v25 = *MEMORY[0x1E6991E08];
    v14 = v25;
    v26 = v12;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    [v13 sendEvent:@"com.apple.photos.CPAnalytics.albumRenamed" withPayload:v15];

    v16 = MEMORY[0x1E6991F28];
    v23 = v14;
    v24 = v12;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    [v16 sendEvent:@"com.apple.photos.CPAnalytics.albumRenamedFromSidebar" withPayload:v17];
  }

  else
  {
    v18 = PLUIGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138478083;
      v28 = collection;
      v29 = 2113;
      v30 = itemCopy;
      _os_log_impl(&dword_1B36F3000, v18, OS_LOG_TYPE_ERROR, "Renaming collection %{private}@ of item %{private}@ is not supported", buf, 0x16u);
    }

    sidebarDiffableDataSourceController = [(PUSidebarViewController *)self sidebarDiffableDataSourceController];
    [sidebarDiffableDataSourceController reloadFromDataControllerAnimated:{objc_msgSend(sidebarDiffableDataSourceController, "animateDataSourceUpdates")}];
  }
}

void __60__PUSidebarViewController_outlineCell_updatedTitle_forItem___block_invoke(uint64_t a1, char a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v10 = 138478339;
      v11 = v7;
      v12 = 2113;
      v13 = v8;
      v14 = 2113;
      v15 = v5;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Failed to rename collection %{private}@ to %{private}@ with error %{private}@", &v10, 0x20u);
    }

    v9 = [*(a1 + 48) sidebarDiffableDataSourceController];
    [v9 reloadFromDataControllerAnimated:{objc_msgSend(v9, "animateDataSourceUpdates")}];
  }
}

- (void)popoverPresentationController:(id)controller willRepositionPopoverToRect:(CGRect *)rect inView:(id *)view
{
  controllerCopy = controller;
  v7 = *view;
  v8 = v7;
  if (v7)
  {
    window = [v7 window];

    if (!window)
    {
      splitViewController = [(PUSidebarViewController *)self splitViewController];
      [splitViewController showColumn:0];
    }
  }
}

- (void)_deleteItemTapped:(id)tapped sourceView:(id)view completion:(id)completion
{
  tappedCopy = tapped;
  completionCopy = completion;
  viewCopy = view;
  collection = [tappedCopy collection];
  if (!collection)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUSidebarViewController.m" lineNumber:750 description:{@"Expected a no nil collection on item %@", tappedCopy}];
  }

  undoManager = [(PUSidebarViewController *)self undoManager];
  v13 = PXCollectionDeletionAlertControllerForCollection();

  popoverPresentationController = [v13 popoverPresentationController];
  [popoverPresentationController setSourceView:viewCopy];

  [popoverPresentationController setDelegate:self];
  [(PUSidebarViewController *)self presentViewController:v13 animated:1 completion:0];
}

- (id)_trailingSwipeActionConfigurationForIndexPath:(id)path
{
  v21[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (([(PUSidebarViewController *)self options]& 1) != 0)
  {
    v13 = 0;
  }

  else
  {
    dataSource = [(PUSidebarViewController *)self dataSource];
    v6 = [dataSource itemIdentifierForIndexPath:pathCopy];

    if ([v6 isDeletable])
    {
      collection = [v6 collection];
      v8 = PXCollectionDeleteConfirmationTitle();

      v9 = MEMORY[0x1E69DC8E8];
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __73__PUSidebarViewController__trailingSwipeActionConfigurationForIndexPath___block_invoke;
      v18 = &unk_1E7B78C30;
      selfCopy = self;
      v20 = v6;
      v10 = [v9 contextualActionWithStyle:1 title:v8 handler:&v15];
      v11 = MEMORY[0x1E69DCFC0];
      v21[0] = v10;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:{1, v15, v16, v17, v18, selfCopy}];
      v13 = [v11 configurationWithActions:v12];
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

void __73__PUSidebarViewController__trailingSwipeActionConfigurationForIndexPath___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__PUSidebarViewController__trailingSwipeActionConfigurationForIndexPath___block_invoke_2;
  v10[3] = &unk_1E7B7FA80;
  v11 = v6;
  v9 = v6;
  [v8 _deleteItemTapped:v7 sourceView:a3 completion:v10];
}

uint64_t __73__PUSidebarViewController__trailingSwipeActionConfigurationForIndexPath___block_invoke_2(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  v19.receiver = self;
  v19.super_class = PUSidebarViewController;
  [(PUSidebarViewController *)&v19 setEditing:editing animated:1];
  collectionView = [(PUSidebarViewController *)self collectionView];
  if (editingCopy)
  {
    if (([(PUSidebarViewController *)self options]& 1) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUSidebarViewController.m" lineNumber:709 description:@"Editing should not be allowed."];
    }

    v9 = [PUSidebarReorderController alloc];
    dataSource = [(PUSidebarViewController *)self dataSource];
    sidebarDiffableDataSourceController = [(PUSidebarViewController *)self sidebarDiffableDataSourceController];
    undoManager = [(PUSidebarViewController *)self undoManager];
    v13 = [(PUSidebarReorderController *)v9 initWithDataSource:dataSource outlineSectionController:sidebarDiffableDataSourceController undoManager:undoManager];
  }

  else
  {
    v13 = 0;
  }

  [(PUSidebarViewController *)self setReorderController:v13];
  [collectionView setEditing:editingCopy];
  if (editingCopy)
  {
    v14 = +[PUTabbedLibrarySettings sharedInstance];
    sidebarEditAutoExpandToEditableItem = [v14 sidebarEditAutoExpandToEditableItem];

    if (sidebarEditAutoExpandToEditableItem)
    {
      sidebarDiffableDataSourceController2 = [(PUSidebarViewController *)self sidebarDiffableDataSourceController];
      v17 = [sidebarDiffableDataSourceController2 expandItemsToRevealFirstEditableItemIfNeededAnimated:animatedCopy];
    }
  }

  else
  {
    [(PUSidebarViewController *)self _updateSelectedRowScrollToVisible:0];
  }
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

- (PXSelectionContainerProvider)selectionProvider
{
  splitViewController = [(PUSidebarViewController *)self splitViewController];
  v3 = PXSelectionProviderForViewController();

  return v3;
}

- (void)_performActionForType:(id)type completionHandler:(id)handler
{
  typeCopy = type;
  handlerCopy = handler;
  if (!typeCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUSidebarViewController.m" lineNumber:635 description:{@"Invalid parameter not satisfying: %@", @"actionType != nil"}];
  }

  if ([typeCopy isEqualToString:*MEMORY[0x1E69C4000]])
  {
    if (handlerCopy)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUSidebarViewController.m" lineNumber:638 description:{@"Invalid parameter not satisfying: %@", @"completionHandler == nil"}];
    }

    [(PUSidebarViewController *)self _createSharedAlbum];
  }

  else
  {
    if (handlerCopy)
    {
      v9 = handlerCopy;
    }

    else
    {
      v9 = &__block_literal_global_261_38027;
    }

    v10 = _Block_copy(v9);

    [(PUSidebarViewController *)self _updateSelectedRowScrollToVisible:0];
    v11 = objc_alloc(MEMORY[0x1E69C37E0]);
    photoLibrary = [(PUSidebarViewController *)self photoLibrary];
    px_virtualCollections = [photoLibrary px_virtualCollections];
    rootAlbumCollectionList = [px_virtualCollections rootAlbumCollectionList];
    v15 = [v11 initWithActionType:typeCopy collectionList:rootAlbumCollectionList];

    if (!v15)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"PUSidebarViewController.m" lineNumber:672 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    [v15 setDelegate:self];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __67__PUSidebarViewController__performActionForType_completionHandler___block_invoke_2;
    v20[3] = &unk_1E7B78C08;
    v21 = v15;
    selfCopy = self;
    handlerCopy = v10;
    v23 = handlerCopy;
    v16 = v15;
    [v16 performActionWithCompletionHandler:v20];
  }
}

void __67__PUSidebarViewController__performActionForType_completionHandler___block_invoke_2(id *a1, int a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a1[4] createdCollection];
  v7 = v6;
  if (!a2 || !v6)
  {
    v10 = [v5 domain];
    if ([v10 isEqualToString:*MEMORY[0x1E696A250]])
    {
      v11 = [v5 code];

      if (v11 == 3072)
      {
        v12 = PLSidebarGetLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v13 = "Album creation was cancelled by user";
          v14 = v12;
          v15 = OS_LOG_TYPE_DEFAULT;
          v16 = 2;
LABEL_11:
          _os_log_impl(&dword_1B36F3000, v14, v15, v13, buf, v16);
          goto LABEL_12;
        }

        goto LABEL_12;
      }
    }

    else
    {
    }

    v12 = PLSidebarGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v5;
      v13 = "Failed to perform album creation with error %@.";
      v14 = v12;
      v15 = OS_LOG_TYPE_ERROR;
      v16 = 12;
      goto LABEL_11;
    }

LABEL_12:

    [a1[5] _updateSelectedRowScrollToVisible:0];
    (*(a1[6] + 2))();
    goto LABEL_13;
  }

  v8 = [objc_alloc(MEMORY[0x1E69C3930]) initWithObject:v6 revealMode:1];
  v9 = [a1[5] navigationRoot];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __67__PUSidebarViewController__performActionForType_completionHandler___block_invoke_3;
  v17[3] = &unk_1E7B78BE0;
  v17[4] = a1[5];
  v18 = v7;
  v19 = a1[6];
  v20 = 1;
  [v9 navigateToDestination:v8 options:0 completionHandler:v17];

LABEL_13:
}

void __67__PUSidebarViewController__performActionForType_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2 != 1)
  {
    v6 = PLSidebarGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Failed to navigate to a created album creation with Error %@.", &v8, 0xCu);
    }
  }

  v7 = PXNavigationListItemWithObject();
  [*(a1 + 32) setDeferredNavigationItem:v7];

  (*(*(a1 + 48) + 16))();
}

- (void)_triggerNavigationToDestination:(id)destination animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  destinationCopy = destination;
  handlerCopy = handler;
  [(PUSidebarViewController *)self setNavigating:1];
  PXCATransactionSetShouldLoadContentImmediately();
  objc_initWeak(&location, self);
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __86__PUSidebarViewController__triggerNavigationToDestination_animated_completionHandler___block_invoke;
  v22 = &unk_1E7B78BB8;
  v10 = destinationCopy;
  v23 = v10;
  v11 = handlerCopy;
  v24 = v11;
  objc_copyWeak(&v25, &location);
  v12 = _Block_copy(&v19);
  if (animatedCopy)
  {
    v13 = 2;
  }

  else
  {
    v13 = 0;
  }

  v14 = [(PUSidebarViewController *)self navigationRoot:v19];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    currentNavigationDestination = [(PUSidebarViewController *)self currentNavigationDestination];

    if (currentNavigationDestination != v10)
    {
      [(PUSidebarViewController *)self setCurrentNavigationDestination:v10];
    }
  }

  navigationRoot = [(PUSidebarViewController *)self navigationRoot];
  [navigationRoot navigateToDestination:v10 options:v13 completionHandler:v12];

  px_splitViewController = [(PUSidebarViewController *)self px_splitViewController];
  [px_splitViewController dismissPrimaryColumnIfOverlay];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

void __86__PUSidebarViewController__triggerNavigationToDestination_animated_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2 != 1)
  {
    v6 = PLSidebarGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v10 = 138412802;
      v11 = v7;
      v12 = 2048;
      v13 = a2;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Sidebar navigation to destination %@failed with result %ld error %@", &v10, 0x20u);
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, a2 == 1, v5);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setNavigating:0];
}

- (void)_navigateToDestinationForItem:(id)item sameItem:(BOOL)sameItem completionHandler:(id)handler
{
  sameItemCopy = sameItem;
  v38 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (handler)
  {
    handlerCopy = handler;
  }

  else
  {
    handlerCopy = &__block_literal_global_238_38041;
  }

  v10 = _Block_copy(handlerCopy);
  if (sameItemCopy)
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  representedObject = [itemCopy representedObject];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v13 = representedObject;
  }

  else
  {
    v13 = 0;
  }

  collection = [itemCopy collection];
  topLevelIdentifier = [itemCopy topLevelIdentifier];
  if ([topLevelIdentifier isEqualToString:*MEMORY[0x1E69C4190]])
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  mEMORY[0x1E69C3650] = [MEMORY[0x1E69C3650] sharedInstance];
  if ([mEMORY[0x1E69C3650] enableSidebarHeaderSelection] && !-[PUSidebarViewController _isPhotosPicker](self, "_isPhotosPicker"))
  {
    if (collection)
    {
      goto LABEL_20;
    }
  }

  else
  {
    isGroup = [itemCopy isGroup];
    if (collection)
    {
      if (isGroup)
      {
        goto LABEL_31;
      }

LABEL_20:
      v35 = v11;
      collection2 = [itemCopy collection];
      px_isAllAlbumsVirtualCollection = [collection2 px_isAllAlbumsVirtualCollection];

      if (px_isAllAlbumsVirtualCollection)
      {
        v34 = v13;
        selfCopy2 = self;
        photoLibrary = [collection photoLibrary];
        px_virtualCollections = [photoLibrary px_virtualCollections];
        rootAlbumCollectionList = [px_virtualCollections rootAlbumCollectionList];
      }

      else
      {
        collection3 = [itemCopy collection];
        px_isSharedAlbumsVirtualCollection = [collection3 px_isSharedAlbumsVirtualCollection];

        if (!px_isSharedAlbumsVirtualCollection)
        {
          goto LABEL_28;
        }

        v34 = v13;
        selfCopy2 = self;
        photoLibrary = [collection photoLibrary];
        px_virtualCollections = [photoLibrary px_virtualCollections];
        rootAlbumCollectionList = [px_virtualCollections sharedAlbumsCollectionList];
      }

      v28 = rootAlbumCollectionList;

      collection = v28;
      self = selfCopy2;
      v13 = v34;
LABEL_28:
      v11 = v35;
      v25 = [objc_alloc(MEMORY[0x1E69C3930]) initWithObject:collection revealMode:v35 routingType:v16];
      if (!v25)
      {
        goto LABEL_31;
      }

      goto LABEL_33;
    }
  }

  if (v13)
  {
    v25 = [objc_alloc(MEMORY[0x1E69C3930]) initWithObject:v13 revealMode:v11 routingType:v16];
    collection = 0;
    if (!v25)
    {
      goto LABEL_31;
    }

LABEL_33:
    [(PUSidebarViewController *)self _triggerNavigationToDestination:v25 animated:sameItemCopy completionHandler:v10];
    goto LABEL_37;
  }

  collection = 0;
LABEL_31:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29 = objc_alloc(MEMORY[0x1E69C3930]);
    importSource = [itemCopy importSource];
    v31 = v11;
    v32 = importSource;
    v25 = [v29 initWithImportSource:importSource revealMode:v31];

    if (v25)
    {
      goto LABEL_33;
    }
  }

  v33 = PLSidebarGetLog();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v37 = collection;
    _os_log_impl(&dword_1B36F3000, v33, OS_LOG_TYPE_ERROR, "Sidebar navigation failed to create destination for collection %@", buf, 0xCu);
  }

  v25 = [MEMORY[0x1E696ABC0] px_errorWithDomain:*MEMORY[0x1E69C48A8] code:-1 debugDescription:@"Sidebar navigation failed to create destination for collection"];
  v10[2](v10, 0, v25);
LABEL_37:
}

- (void)_handleDidSelectListItem:(id)item completionHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    actionType = [itemCopy actionType];
    [(PUSidebarViewController *)self _performActionForType:actionType completionHandler:handlerCopy];

    handlerCopy = actionType;
  }

  else
  {
    [(PUSidebarViewController *)self _navigateToDestinationForItem:itemCopy sameItem:[(PUSidebarViewController *)self selectingAlreadySelectedIndexPath] completionHandler:handlerCopy];
  }
}

- (PXNavigationListItem)fallbackNavigationItem
{
  v3 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
  dataSource = [(PUSidebarViewController *)self dataSource];
  v5 = [dataSource itemIdentifierForIndexPath:v3];

  return v5;
}

- (void)_updateSelectedRowScrollToVisible:(BOOL)visible
{
  visibleCopy = visible;
  v48 = *MEMORY[0x1E69E9840];
  v5 = +[PUTabbedLibrarySettings sharedInstance];
  currentNavigationDestination = [(PUSidebarViewController *)self currentNavigationDestination];
  if (!currentNavigationDestination)
  {
    sidebarDataController = [(PUSidebarViewController *)self sidebarDataController];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v8 = sidebarDataController;
    }

    else
    {
      v8 = 0;
    }

    v9 = objc_alloc(MEMORY[0x1E69C3930]);
    primaryPhotosCollection = [v8 primaryPhotosCollection];
    currentNavigationDestination = [v9 initWithObject:primaryPhotosCollection revealMode:1];
    [(PUSidebarViewController *)self setCurrentNavigationDestination:currentNavigationDestination];
  }

  v11 = [(PUSidebarViewController *)self _itemIndexPathForDestination:currentNavigationDestination];
  collectionView = [(PUSidebarViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  v14 = indexPathsForSelectedItems;
  if (v11)
  {
    v15 = [indexPathsForSelectedItems containsObject:v11];
  }

  else
  {
    v15 = 0;
  }

  v42 = v15;
  if (!visibleCopy || ![v5 sidebarScrollSelectedItemToCenter] || v11 && objc_msgSend(v5, "sidebarOnlyScrollOffscreenItemOnScreen") && (objc_msgSend(collectionView, "cellForItemAtIndexPath:", v11), (v16 = objc_claimAutoreleasedReturnValue()) != 0) && (v17 = v16, objc_msgSend(collectionView, "bounds"), v19 = v18, v21 = v20, v23 = v22, v25 = v24, objc_msgSend(v17, "frame"), v50.origin.x = v26, v50.origin.y = v27, v50.size.width = v28, v50.size.height = v29, v49.origin.x = v19, v49.origin.y = v21, v49.size.width = v23, v49.size.height = v25, v30 = CGRectContainsRect(v49, v50), v17, v30))
  {
    v39 = 0;
    v41 = 1;
  }

  else
  {
    v41 = 0;
    v39 = 2;
  }

  v31 = v5;
  sidebarAnimateSelectionUpdates = [v5 sidebarAnimateSelectionUpdates];
  v33 = [v14 mutableCopy];
  [v33 removeObject:v11];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v34 = v33;
  v35 = [v34 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v44;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v44 != v37)
        {
          objc_enumerationMutation(v34);
        }

        [collectionView deselectItemAtIndexPath:*(*(&v43 + 1) + 8 * i) animated:sidebarAnimateSelectionUpdates];
      }

      v36 = [v34 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v36);
  }

  if (([collectionView isEditing] & 1) == 0 && (v42 & v41 & 1) == 0)
  {
    [collectionView selectItemAtIndexPath:v11 animated:sidebarAnimateSelectionUpdates scrollPosition:v40];
  }
}

- (BOOL)_hasSidebarItemForDestination:(id)destination
{
  v3 = [(PUSidebarViewController *)self _itemIndexPathForDestination:destination];
  v4 = v3 != 0;

  return v4;
}

- (id)_itemIndexPathForDestination:(id)destination
{
  destinationCopy = destination;
  photoLibrary = [(PUSidebarViewController *)self photoLibrary];
  v6 = destinationCopy;
  px_virtualCollections = [photoLibrary px_virtualCollections];
  type = [v6 type];
  collection = 0;
  if (type > 10)
  {
    if (type > 18)
    {
      if (type <= 22)
      {
        if (type == 19)
        {
          featuredPhotosCollection = [px_virtualCollections featuredPhotosCollection];
        }

        else
        {
          if (type != 20)
          {
            goto LABEL_32;
          }

          featuredPhotosCollection = [px_virtualCollections sharedAlbumsCollectionList];
        }
      }

      else
      {
        switch(type)
        {
          case 23:
            featuredPhotosCollection = [px_virtualCollections allAlbumsCollection];
            break;
          case 28:
            featuredPhotosCollection = [px_virtualCollections eventsCollection];
            break;
          case 29:
            featuredPhotosCollection = [px_virtualCollections tripsCollection];
            break;
          default:
            goto LABEL_32;
        }
      }
    }

    else
    {
      if (type <= 15)
      {
        if ((type - 11) >= 2)
        {
          if (type != 14)
          {
            goto LABEL_32;
          }

          featuredPhotosCollection = [px_virtualCollections searchCollection];
        }

        else
        {
          featuredPhotosCollection = [px_virtualCollections peopleCollection];
        }

        goto LABEL_31;
      }

      if (type != 16)
      {
        if (type != 18)
        {
          goto LABEL_32;
        }

        goto LABEL_22;
      }

      featuredPhotosCollection = [px_virtualCollections prototypeCollection];
    }

LABEL_31:
    collection = featuredPhotosCollection;
    goto LABEL_32;
  }

  if ((type - 1) < 6)
  {
    featuredPhotosCollection = [px_virtualCollections photosCollection];
    goto LABEL_31;
  }

  if ((type - 9) < 2)
  {
    featuredPhotosCollection = [px_virtualCollections memoriesCollection];
    goto LABEL_31;
  }

  if (type != 8)
  {
    goto LABEL_32;
  }

LABEL_22:
  collection = [v6 collection];
  if (collection)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"PHCollection *CollectionForNavigationDestinationInPhotoLibrary(PXProgrammaticNavigationDestination *__strong, PHPhotoLibrary *__strong)"}];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      px_descriptionForAssertionMessage = [collection px_descriptionForAssertionMessage];
      [currentHandler handleFailureInFunction:v12 file:@"PUSidebarViewController.m" lineNumber:410 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"destination.collection", v14, px_descriptionForAssertionMessage}];
    }
  }

LABEL_32:

  if (collection)
  {
    importSourceUUID = PXNavigationListItemCollectionIdentifier();
    v17 = [(PUSidebarViewController *)self _collectionViewIndexPathForCollectionIdentifier:importSourceUUID];
    if (!v17)
    {
      v18 = [collection px_fetchAncestryIncludingRoot:1];
      v19 = PXMap();

      sidebarDiffableDataSourceController = [(PUSidebarViewController *)self sidebarDiffableDataSourceController];
      [sidebarDiffableDataSourceController expandItemsForIdentifiersIfNeeded:v19 animated:1];

      v17 = [(PUSidebarViewController *)self _collectionViewIndexPathForCollectionIdentifier:importSourceUUID];
    }

    goto LABEL_42;
  }

  if ([v6 type] == 21)
  {
    importSourceUUID = [v6 importSourceUUID];
    if ([importSourceUUID length])
    {
      v17 = [(PUSidebarViewController *)self _collectionViewIndexPathForItemIdentifier:importSourceUUID];
    }

    else
    {
      v17 = 0;
    }

LABEL_42:

    goto LABEL_43;
  }

  if ([v6 type] == 22)
  {
    v17 = [(PUSidebarViewController *)self _collectionViewIndexPathForItemIdentifier:*MEMORY[0x1E69C41A8]];
  }

  else
  {
    v17 = 0;
  }

LABEL_43:

  return v17;
}

- (id)_collectionViewIndexPathForCollectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  sidebarDataController = [(PUSidebarViewController *)self sidebarDataController];
  v6 = [sidebarDataController itemsForCollectionIdentifier:identifierCopy];

  collectionView = [(PUSidebarViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  firstObject = [indexPathsForSelectedItems firstObject];

  if (firstObject)
  {
    dataSource = [(PUSidebarViewController *)self dataSource];
    dataSource2 = [dataSource itemIdentifierForIndexPath:firstObject];

    if ([v6 containsObject:dataSource2])
    {
      v12 = firstObject;
LABEL_7:

      goto LABEL_9;
    }
  }

  if ([v6 count])
  {
    dataSource2 = [(PUSidebarViewController *)self dataSource];
    firstObject2 = [v6 firstObject];
    v12 = [dataSource2 indexPathForItemIdentifier:firstObject2];

    goto LABEL_7;
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (id)_collectionViewIndexPathForItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  sidebarDataController = [(PUSidebarViewController *)self sidebarDataController];
  v6 = [sidebarDataController itemForIdentifier:identifierCopy];

  if (v6)
  {
    dataSource = [(PUSidebarViewController *)self dataSource];
    v8 = [dataSource indexPathForItemIdentifier:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setupDataSectionManagerWithLoadMode:(int64_t)mode
{
  v5 = PLSidebarGetLog();
  v6 = os_signpost_id_generate(v5);
  v7 = v5;
  v8 = v7;
  v33 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "PUSidebarViewController.setupDataSectionManager", "", buf, 2u);
  }

  spid = v6;

  photoLibrary = [(PUSidebarViewController *)self photoLibrary];
  v10 = [[PUSidebarDataSectionEnablementController alloc] initWithPhotoLibrary:photoLibrary andOptions:[(PUSidebarViewController *)self options]];
  [(PUSidebarViewController *)self setSidebarDataSectionEnablementController:v10];
  if ([(PUSidebarViewController *)self _isPhotosPicker])
  {
    v11 = 15;
  }

  else
  {
    v11 = 1;
  }

  if ([(PUSidebarViewController *)self _excludeHiddenAlbum])
  {
    v11 |= 0x10uLL;
  }

  if ([(PUSidebarViewController *)self _excludeSharedAlbum])
  {
    v11 |= 0x20uLL;
  }

  tabBarController = [(PUSidebarViewController *)self tabBarController];
  collectionsTabBadgeModel = [tabBarController collectionsTabBadgeModel];

  v14 = MEMORY[0x1E69C3A28];
  libraryFilterState = [(PUSidebarViewController *)self libraryFilterState];
  assetsFilterPredicate = [(PUSidebarViewController *)self assetsFilterPredicate];
  v32 = collectionsTabBadgeModel;
  v17 = [v14 standardContextWithLibraryFilterState:libraryFilterState enablementProvider:v10 assetsFilterPredicate:assetsFilterPredicate collectionsTabBadgeModel:collectionsTabBadgeModel sharedActivityTabBadgeModel:0];

  v18 = [PUSidebarDataController alloc];
  pickerAllPhotosVirtualCollection = [(PUSidebarViewController *)self pickerAllPhotosVirtualCollection];
  v20 = [(PXSidebarDataController *)v18 initWithPhotoLibrary:photoLibrary context:v17 options:v11 pickerAllPhotosVirtualCollection:pickerAllPhotosVirtualCollection];

  [(PUSidebarViewController *)self setSidebarDataController:v20];
  v21 = +[PUTabbedLibrarySettings sharedInstance];
  v22 = objc_alloc(MEMORY[0x1E69C3A40]);
  dataSource = [(PUSidebarViewController *)self dataSource];
  v24 = [v22 initWithSidebarDataController:v20 dataSource:dataSource];

  [v24 setDelegate:self];
  if ([v21 sidebarAnimateDataSourceUpdates])
  {
    v25 = [(PUSidebarViewController *)self _isPhotosPicker]^ 1;
  }

  else
  {
    v25 = 0;
  }

  [v24 setAnimateDataSourceUpdates:v25];
  if ((mode - 2) < 2)
  {
    [v24 loadRootItems];
    mEMORY[0x1E69C4598] = [MEMORY[0x1E69C4598] sharedScheduler];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __63__PUSidebarViewController_setupDataSectionManagerWithLoadMode___block_invoke;
    v34[3] = &unk_1E7B7FF70;
    modeCopy = mode;
    v35 = v24;
    [mEMORY[0x1E69C4598] scheduleTaskAfterCATransactionCommits:v34];

LABEL_21:
    v26 = v33;
    goto LABEL_24;
  }

  if (mode == 1)
  {
    [v24 loadRootItems];
    goto LABEL_21;
  }

  v26 = v33;
  if (!mode)
  {
    if ([v21 sidebarLaunchAnimateLoad])
    {
      v27 = [(PUSidebarViewController *)self _isPhotosPicker]^ 1;
    }

    else
    {
      v27 = 0;
    }

    [v24 reloadFromDataControllerAnimated:v27];
    [(PUSidebarViewController *)self _updateSelectedRowScrollToVisible:0];
  }

LABEL_24:
  [(PUSidebarViewController *)self setSidebarDiffableDataSourceController:v24];
  v29 = v8;
  v30 = v29;
  if (v26 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v30, OS_SIGNPOST_INTERVAL_END, spid, "PUSidebarViewController.setupDataSectionManager", "", buf, 2u);
  }
}

- (void)configureDataSource
{
  v3 = PLSidebarGetLog();
  v4 = os_signpost_id_generate(v3);
  v5 = v3;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "PUSidebarViewController.configureDataSource", "", buf, 2u);
  }

  objc_initWeak(buf, self);
  v7 = MEMORY[0x1E69DC800];
  v8 = objc_opt_self();
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __46__PUSidebarViewController_configureDataSource__block_invoke;
  v32[3] = &unk_1E7B78AD0;
  objc_copyWeak(&v33, buf);
  v9 = [v7 registrationWithCellClass:v8 configurationHandler:v32];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__PUSidebarViewController_configureDataSource__block_invoke_2;
  aBlock[3] = &unk_1E7B78AF8;
  v10 = v9;
  v31 = v10;
  v11 = _Block_copy(aBlock);
  v12 = objc_alloc(MEMORY[0x1E69DC820]);
  collectionView = [(PUSidebarViewController *)self collectionView];
  v14 = [v12 initWithCollectionView:collectionView cellProvider:v11];

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __46__PUSidebarViewController_configureDataSource__block_invoke_3;
  v28[3] = &unk_1E7B78B20;
  objc_copyWeak(&v29, buf);
  sectionSnapshotHandlers = [v14 sectionSnapshotHandlers];
  [sectionSnapshotHandlers setWillExpandItemHandler:v28];

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __46__PUSidebarViewController_configureDataSource__block_invoke_5;
  v26[3] = &unk_1E7B78B20;
  objc_copyWeak(&v27, buf);
  sectionSnapshotHandlers2 = [v14 sectionSnapshotHandlers];
  [sectionSnapshotHandlers2 setWillCollapseItemHandler:v26];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __46__PUSidebarViewController_configureDataSource__block_invoke_6;
  v24[3] = &unk_1E7B78B48;
  objc_copyWeak(&v25, buf);
  reorderingHandlers = [v14 reorderingHandlers];
  [reorderingHandlers setCanReorderItemHandler:v24];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __46__PUSidebarViewController_configureDataSource__block_invoke_7;
  v22[3] = &unk_1E7B78B70;
  objc_copyWeak(&v23, buf);
  reorderingHandlers2 = [v14 reorderingHandlers];
  [reorderingHandlers2 setDidReorderHandler:v22];

  [(PUSidebarViewController *)self setDataSource:v14];
  v19 = v6;
  v20 = v19;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *v21 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v20, OS_SIGNPOST_INTERVAL_END, v4, "PUSidebarViewController.configureDataSource", "", v21, 2u);
  }

  objc_destroyWeak(&v23);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&v29);

  objc_destroyWeak(&v33);
  objc_destroyWeak(buf);
}

void __46__PUSidebarViewController_configureDataSource__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateOutlineCell:v7 forListItem:v6];
}

void __46__PUSidebarViewController_configureDataSource__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained sidebarDiffableDataSourceController];
  [v5 sectionControllerWillExpandItem:v3];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__PUSidebarViewController_configureDataSource__block_invoke_4;
  block[3] = &unk_1E7B80638;
  objc_copyWeak(&v7, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v7);
}

void __46__PUSidebarViewController_configureDataSource__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained sidebarDiffableDataSourceController];
  [v4 sectionControllerWillCollapseItem:v3];
}

uint64_t __46__PUSidebarViewController_configureDataSource__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained reorderController];
  v6 = [v5 canReorderItem:v3];

  return v6;
}

void __46__PUSidebarViewController_configureDataSource__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained reorderController];
  [v4 performReorderWithTransaction:v3];
}

void __46__PUSidebarViewController_configureDataSource__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSelectedRowScrollToVisible:0];
}

- (void)_updateOutlineCell:(id)cell forListItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  [cellCopy setDelegate:self];
  traitCollection = [(PUSidebarViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 6)
  {
    v10 = MEMORY[0x1E69DCAB0];
    effect = [MEMORY[0x1E69DCAA8] effect];
    v12 = [v10 styleWithEffect:effect shape:0];
    [cellCopy setHoverStyle:v12];
  }

  [cellCopy setItem:itemCopy];
  accessibilityIdentifier = [itemCopy accessibilityIdentifier];
  [cellCopy setAccessibilityIdentifier:accessibilityIdentifier];

  if (([itemCopy isGroup] & 1) == 0)
  {
    sidebarDiffableDataSourceController = [(PUSidebarViewController *)self sidebarDiffableDataSourceController];
    v15 = [sidebarDiffableDataSourceController sectionSnapshotContainingItem:itemCopy];

    if ([v15 containsItem:itemCopy])
    {
      v16 = [v15 parentOfChildItem:itemCopy];
    }

    else
    {
      v16 = 0;
    }

    sidebarDataController = [(PUSidebarViewController *)self sidebarDataController];
    [sidebarDataController cancelImageRequest:{objc_msgSend(cellCopy, "mediaRequestID")}];

    sidebarDataController2 = [(PUSidebarViewController *)self sidebarDataController];
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __58__PUSidebarViewController__updateOutlineCell_forListItem___block_invoke;
    v24 = &unk_1E7B78AA8;
    v19 = cellCopy;
    v25 = v19;
    v26 = itemCopy;
    v20 = [sidebarDataController2 requestImageForItem:v26 parentItem:v16 completion:&v21];
    [v19 setMediaRequestID:{v20, v21, v22, v23, v24}];
  }
}

void __58__PUSidebarViewController__updateOutlineCell_forListItem___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) item];
  v4 = *(a1 + 40);

  if (v3 == v4)
  {
    [*(a1 + 32) setImage:v5];
  }
}

- (void)_updateHeaderCell:(id)cell forListItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  headerConfiguration = [MEMORY[0x1E69DCC28] headerConfiguration];
  title = [itemCopy title];
  [headerConfiguration setText:title];

  [cellCopy setContentConfiguration:headerConfiguration];
  array = [MEMORY[0x1E695DF70] array];
  if ([itemCopy isExpandable])
  {
    accessibilityIdentifier = [itemCopy accessibilityIdentifier];
    [cellCopy setAccessibilityIdentifier:accessibilityIdentifier];

    v11 = objc_alloc_init(MEMORY[0x1E69DC7C8]);
    mEMORY[0x1E69C3650] = [MEMORY[0x1E69C3650] sharedInstance];
    if ([mEMORY[0x1E69C3650] enableSidebarHeaderSelection])
    {
      if ([(PUSidebarViewController *)self _isPhotosPicker])
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }
    }

    else
    {
      v13 = 1;
    }

    [v11 setStyle:v13];
    [array addObject:v11];
  }

  [cellCopy setAccessories:array];
}

- (id)generateLayout
{
  objc_initWeak(&location, self);
  v2 = objc_alloc(MEMORY[0x1E69DC808]);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__PUSidebarViewController_generateLayout__block_invoke;
  v5[3] = &unk_1E7B78A80;
  objc_copyWeak(&v6, &location);
  v3 = [v2 initWithSectionProvider:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

id __41__PUSidebarViewController_generateLayout__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained sidebarDataController];
  v8 = [v7 child:a2 ofItem:0];

  v9 = [objc_alloc(MEMORY[0x1E69DC7E0]) initWithAppearance:3];
  if ([v8 displayInline])
  {
    v10 = 0;
  }

  else
  {
    v10 = 2;
  }

  [v9 setHeaderMode:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __41__PUSidebarViewController_generateLayout__block_invoke_2;
  v13[3] = &unk_1E7B78A58;
  objc_copyWeak(&v14, (a1 + 32));
  [v9 setTrailingSwipeActionsConfigurationProvider:v13];
  v11 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v9 layoutEnvironment:v5];
  objc_destroyWeak(&v14);

  return v11;
}

id __41__PUSidebarViewController_generateLayout__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _trailingSwipeActionConfigurationForIndexPath:v3];

  return v5;
}

- (void)configureViewHierarchy
{
  v3 = PLSidebarGetLog();
  v4 = os_signpost_id_generate(v3);
  v5 = v3;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "PUSidebarViewController.configureViewHierarchy", "", buf, 2u);
  }

  v7 = objc_alloc(MEMORY[0x1E69DC7F0]);
  view = [(PUSidebarViewController *)self view];
  [view bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  generateLayout = [(PUSidebarViewController *)self generateLayout];
  v18 = [v7 initWithFrame:generateLayout collectionViewLayout:{v10, v12, v14, v16}];

  [v18 setAutoresizingMask:18];
  [v18 setBackgroundColor:0];
  [v18 setDelegate:self];
  [v18 setSpringLoaded:1];
  [v18 setAlwaysBounceVertical:1];
  [v18 _setAllowsSelectionDuringEditing:1];
  traitCollection = [(PUSidebarViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    [v18 setContentInset:{16.0, 0.0, 0.0, 0.0}];
  }

  [v18 _setShouldPersistSelectionOnReloadDataWhenPossible:1];
  [v18 setAccessibilityIdentifier:@"PhotosSidebarScrollView"];
  view2 = [(PUSidebarViewController *)self view];
  [view2 addSubview:v18];

  [(PUSidebarViewController *)self setCollectionView:v18];
  v22 = objc_alloc_init(PUCollectionsCollectionViewDropDelegate);
  [(PUCollectionsCollectionViewDropDelegate *)v22 setDropDataProvider:self];
  [v18 setDropDelegate:v22];
  [(PUSidebarViewController *)self setDropDelegate:v22];
  v23 = v6;
  v24 = v23;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    *v25 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v24, OS_SIGNPOST_INTERVAL_END, v4, "PUSidebarViewController.configureViewHierarchy", "", v25, 2u);
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v26 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v24.receiver = self;
  v24.super_class = PUSidebarViewController;
  [(PUSidebarViewController *)&v24 traitCollectionDidChange:changeCopy];
  traitCollection = [(PUSidebarViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    sidebarDataController = [(PUSidebarViewController *)self sidebarDataController];
    [sidebarDataController appearanceDidChange];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    collectionView = [(PUSidebarViewController *)self collectionView];
    visibleCells = [collectionView visibleCells];

    v11 = [visibleCells countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        v14 = 0;
        do
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(visibleCells);
          }

          v15 = *(*(&v20 + 1) + 8 * v14);
          v16 = objc_opt_self();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v18 = v15;
            item = [v18 item];
            [(PUSidebarViewController *)self _updateOutlineCell:v18 forListItem:item];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [visibleCells countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v12);
    }
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = PUSidebarViewController;
  [(PUSidebarViewController *)&v7 viewDidDisappear:disappear];
  v4 = +[PUTabbedLibrarySettings sharedInstance];
  sidebarPauseChangeProcessingWhenHidden = [v4 sidebarPauseChangeProcessingWhenHidden];

  if (sidebarPauseChangeProcessingWhenHidden)
  {
    sidebarDataController = [(PUSidebarViewController *)self sidebarDataController];
    [sidebarDataController setChangeProcessingPaused:1 forReason:@"Sidebar Hidden"];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PUSidebarViewController;
  [(PUSidebarViewController *)&v5 viewWillAppear:appear];
  sidebarDataController = [(PUSidebarViewController *)self sidebarDataController];
  [sidebarDataController setChangeProcessingPaused:0 forReason:@"Sidebar Hidden"];

  [(PUSidebarViewController *)self _updateSelectedRowScrollToVisible:0];
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = PUSidebarViewController;
  [(PUSidebarViewController *)&v15 viewDidLoad];
  v3 = PLSidebarGetLog();
  v4 = os_signpost_id_generate(v3);
  v5 = v3;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "PUSidebarViewController.viewDidLoad", "", v14, 2u);
  }

  [(PUSidebarViewController *)self configureViewHierarchy];
  [(PUSidebarViewController *)self configureDataSource];
  v7 = +[PUTabbedLibrarySettings sharedInstance];
  -[PUSidebarViewController setupDataSectionManagerWithLoadMode:](self, "setupDataSectionManagerWithLoadMode:", [v7 sidebarLaunchLoadMode]);

  if (([(PUSidebarViewController *)self options]& 1) == 0)
  {
    v8 = MEMORY[0x1B8C6D660]();
    editButtonItem = [(PUSidebarViewController *)self editButtonItem];
    navigationItem = [(PUSidebarViewController *)self navigationItem];
    v11 = navigationItem;
    if (v8)
    {
      [navigationItem setLeftBarButtonItem:editButtonItem];
    }

    else
    {
      [navigationItem setRightBarButtonItem:editButtonItem];
    }
  }

  v12 = v6;
  v13 = v12;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v13, OS_SIGNPOST_INTERVAL_END, v4, "PUSidebarViewController.viewDidLoad", "", v14, 2u);
  }
}

- (PUSidebarViewController)initWithNavigationRoot:(id)root photoLibrary:(id)library libraryFilterState:(id)state options:(unint64_t)options additionalAssetsFilterPredicate:(id)predicate pickerAllPhotosVirtualCollection:(id)collection
{
  rootCopy = root;
  libraryCopy = library;
  stateCopy = state;
  predicateCopy = predicate;
  collectionCopy = collection;
  v24.receiver = self;
  v24.super_class = PUSidebarViewController;
  v18 = [(PUSidebarViewController *)&v24 initWithNibName:0 bundle:0];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_navigationRoot, root);
    objc_storeStrong(&v19->_photoLibrary, library);
    objc_storeStrong(&v19->_libraryFilterState, state);
    v19->_options = options;
    objc_storeStrong(&v19->_assetsFilterPredicate, predicate);
    objc_storeStrong(&v19->_pickerAllPhotosVirtualCollection, collection);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v19 selector:sel__keyboardWillChangeFrame_ name:*MEMORY[0x1E69DE068] object:0];

    [(PXLibraryFilterState *)v19->_libraryFilterState registerChangeObserver:v19 context:PXLibraryFilterStateObservationContext];
  }

  return v19;
}

@end