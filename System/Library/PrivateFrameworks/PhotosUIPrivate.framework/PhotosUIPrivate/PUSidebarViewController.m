@interface PUSidebarViewController
- (BOOL)_hasSidebarItemForDestination:(id)a3;
- (BOOL)actionPerformer:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5;
- (BOOL)actionPerformer:(id)a3 presentViewController:(id)a4;
- (BOOL)actionPerformer:(id)a3 transitionToViewController:(id)a4 transitionType:(int64_t)a5;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)collectionView:(id)a3 selectionFollowsFocusForItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSpringLoadItemAtIndexPath:(id)a4 withContext:(id)a5;
- (PUSidebarViewController)initWithNavigationRoot:(id)a3 photoLibrary:(id)a4 libraryFilterState:(id)a5 options:(unint64_t)a6 additionalAssetsFilterPredicate:(id)a7 pickerAllPhotosVirtualCollection:(id)a8;
- (PXActionProviderDelegate)actionProviderDelegate;
- (PXNavigationListItem)fallbackNavigationItem;
- (PXSelectionContainerProvider)selectionProvider;
- (id)_collectionViewIndexPathForCollectionIdentifier:(id)a3;
- (id)_collectionViewIndexPathForItemIdentifier:(id)a3;
- (id)_itemIndexPathForDestination:(id)a3;
- (id)_trailingSwipeActionConfigurationForIndexPath:(id)a3;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)collectionView:(id)a3 targetIndexPathForMoveFromItemAtIndexPath:(id)a4 toProposedIndexPath:(id)a5;
- (id)collectionViewDropDelegate:(id)a3 collectionAtIndexPath:(id)a4;
- (id)generateLayout;
- (id)nextExistingParticipantOnRouteToDestination:(id)a3;
- (unint64_t)routingOptionsForDestination:(id)a3;
- (void)_createSharedAlbum;
- (void)_deleteItemTapped:(id)a3 sourceView:(id)a4 completion:(id)a5;
- (void)_handleDidSelectListItem:(id)a3 completionHandler:(id)a4;
- (void)_highlightNavigationDestination:(id)a3;
- (void)_keyboardWillChangeFrame:(id)a3;
- (void)_navigateToDestinationForItem:(id)a3 sameItem:(BOOL)a4 completionHandler:(id)a5;
- (void)_performActionForType:(id)a3 completionHandler:(id)a4;
- (void)_triggerNavigationToDestination:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5;
- (void)_updateHeaderCell:(id)a3 forListItem:(id)a4;
- (void)_updateOutlineCell:(id)a3 forListItem:(id)a4;
- (void)_updateSelectedRowScrollToVisible:(BOOL)a3;
- (void)assetCollectionActionPerformer:(id)a3 playMovieForAssetCollection:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)configureDataSource;
- (void)configureViewHierarchy;
- (void)navigateToDestination:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)navigateToFallbackForDestination:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)outlineCell:(id)a3 updatedTitle:(id)a4 forItem:(id)a5;
- (void)pagingViewControllerDidUpdateItemList:(id)a3;
- (void)popoverPresentationController:(id)a3 willRepositionPopoverToRect:(CGRect *)a4 inView:(id *)a5;
- (void)ppt_runTabSwitchingTestWithName:(id)a3 options:(id)a4 delegate:(id)a5 completionHandler:(id)a6;
- (void)selectItemForDestination:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setupDataSectionManagerWithLoadMode:(int64_t)a3;
- (void)sidebarDiffableDataSourceController:(id)a3 willApplySnapshotWithChangedItemsAfterChange:(id)a4 applyBlock:(id)a5;
- (void)splitViewControllerWillCollapse:(id)a3;
- (void)splitViewControllerWillExpand:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)validateCommand:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PUSidebarViewController

- (PXActionProviderDelegate)actionProviderDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionProviderDelegate);

  return WeakRetained;
}

- (id)nextExistingParticipantOnRouteToDestination:(id)a3
{
  v4 = PXLemonadeReroutedProgrammaticDestination();
  v5 = [(PUSidebarViewController *)self splitViewController];
  v6 = [v5 viewControllerForColumn:2];

  v7 = [v6 px_navigationDestination];
  if (([v4 isEquivalentToNavigationDestination:v7] & 1) != 0 || objc_msgSend(v7, "isLemonadeHome") && objc_msgSend(v4, "isLemonadeHome"))
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)navigateToDestination:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = PXLemonadeReroutedProgrammaticDestination();
  v9 = [(PUSidebarViewController *)self px_splitViewController];
  v10 = [v9 isSidebarVisible];

  v11 = [(PUSidebarViewController *)self splitViewController];
  v12 = [v11 viewControllerForColumn:2];
  if ([v8 routingType] == 2 && objc_msgSend(v8, "type") == 9)
  {
    v13 = PXLemonadeViewControllerFactory();
    photoLibrary = self->_photoLibrary;
    v15 = [(PUSidebarViewController *)self actionProviderDelegate];
    v16 = [v13 viewControllerForSidebarNavigationDestination:v8 photoLibrary:photoLibrary actionProviderDelegate:v15];

    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __75__PUSidebarViewController_navigateToDestination_options_completionHandler___block_invoke;
    v35[3] = &unk_1E7B80C88;
    v36 = v7;
    [v11 presentViewController:v16 animated:1 completion:v35];

    goto LABEL_34;
  }

  v17 = [(PUSidebarViewController *)self tabBarController];
  v18 = [MEMORY[0x1E69C3758] contentModeForNavigationDestination:v8 useSearchTab:0];
  [v17 setSelectedContentMode:v18];
  [(PUSidebarViewController *)self selectItemForDestination:v8];
  if (v17)
  {
    if (v18 == 10 || v18 == 12 || ([v17 px_navigationDestination], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v8, "isEquivalentToNavigationDestination:", v19), v19, v20))
    {
      v16 = v17;
      goto LABEL_19;
    }
  }

  v21 = [v12 px_navigationDestination];
  v22 = [v8 isEquivalentToNavigationDestination:v21];

  if (!v22)
  {
    if (([v8 isLemonadeHome] & 1) != 0 || objc_msgSend(v8, "isTargetingAsset") && (objc_msgSend(v8, "isTargetingAlbum") & 1) == 0)
    {
      v23 = [(PUSidebarViewController *)self navigationRoot];
      if (objc_opt_respondsToSelector())
      {
        v16 = [v23 libraryRootViewController];
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v23 = PXLemonadeViewControllerFactory();
      v24 = self->_photoLibrary;
      [(PUSidebarViewController *)self actionProviderDelegate];
      v32 = v10;
      v26 = v25 = a4;
      v16 = [v23 viewControllerForSidebarNavigationDestination:v8 photoLibrary:v24 actionProviderDelegate:v26];

      a4 = v25;
      v10 = v32;
    }

LABEL_19:
    if (v12 != v16)
    {
      v33 = a4;
      if (objc_opt_respondsToSelector())
      {
        v27 = v16;
      }

      else
      {
        v27 = 0;
      }

      v28 = v27;
      v29 = [(PUSidebarViewController *)self actionProviderDelegate];
      [v28 setActionProviderDelegate:v29];

      if (objc_opt_respondsToSelector())
      {
        v30 = v16;
      }

      else
      {
        v30 = 0;
      }

      v31 = v30;
      [v31 setPagingViewControllerDelegate:self];
      if ((v10 & 1) == 0 && [v11 splitBehavior] == 1)
      {
        [v11 showColumn:0];
      }

      [v11 setViewController:0 forColumn:{2, v33}];
      [v11 setViewController:v16 forColumn:2];

      a4 = v34;
    }

    goto LABEL_30;
  }

  v16 = v12;
LABEL_30:
  if ([v16 routingOptionsForDestination:v8] == 1)
  {
    [v16 navigateToDestination:v8 options:a4 completionHandler:v7];
  }

  else
  {
    (*(v7 + 2))(v7, 1, 0);
  }

LABEL_34:
}

- (unint64_t)routingOptionsForDestination:(id)a3
{
  v4 = a3;
  if ([v4 shouldExcludeSidebar])
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

    v4 = v6;
  }

  return v5;
}

- (void)pagingViewControllerDidUpdateItemList:(id)a3
{
  v6 = a3;
  v4 = [(PUSidebarViewController *)self sidebarDataController];
  if ([v4 isChangeProcessingPaused])
  {
    v5 = [v6 pagingViewControllerNumberOfItems];

    if (v5)
    {
      goto LABEL_6;
    }

    v4 = [(PUSidebarViewController *)self fallbackNavigationItem];
    if (v4)
    {
      [(PUSidebarViewController *)self _navigateToDestinationForItem:v4 sameItem:0 completionHandler:0];
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

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXLibraryFilterStateObservationContext != a5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PUSidebarViewController.m" lineNumber:1242 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (v6)
  {
    v11 = v9;
    [(PUSidebarViewController *)self setupDataSectionManagerWithLoadMode:0];
    v9 = v11;
  }
}

- (void)ppt_runTabSwitchingTestWithName:(id)a3 options:(id)a4 delegate:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (!v13)
  {
    v13 = &__block_literal_global_311_37951;
  }

  v15 = _Block_copy(v13);
  v16 = [(PUSidebarViewController *)self collectionView];
  v17 = [v11 objectForKeyedSubscript:@"tab"];
  if (([v17 isEqualToString:@"all"] & 1) == 0)
  {
    v19 = @"Sidebar currently only supports switching to all tabs";
    goto LABEL_7;
  }

  v18 = [v16 numberOfItemsInSection:0];
  if (v18 <= 1)
  {
    v19 = @"couldn't find sidebar items to cycle through";
LABEL_7:
    [v12 failedTest:v10 withFailureFormat:v19];
    v15[2](v15, 0);
    goto LABEL_22;
  }

  v20 = v18;
  v29 = v17;
  v30 = v16;
  v31 = v15;
  v32 = v12;
  v33 = v11;
  v34 = [v16 indexPathsForSelectedItems];
  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = 0;
  v23 = 0;
  while (1)
  {
    v24 = [MEMORY[0x1E696AC88] indexPathForItem:v23 inSection:0];
    v25 = [(PUSidebarViewController *)self dataSource];
    v26 = [v25 itemIdentifierForIndexPath:v24];

    v27 = [v26 collection];

    if (!v27)
    {
      break;
    }

    [v21 addObject:v26];
    if (!v22)
    {
      if ([v34 containsObject:v24])
      {
        v22 = v26;
      }

      else
      {
        v22 = 0;
      }
    }

    if (v20 == ++v23)
    {
      if (v22)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }
  }

  if (v22)
  {
    goto LABEL_16;
  }

LABEL_19:
  v22 = [v21 firstObject];
LABEL_16:
  v12 = v32;
  v11 = v33;
  if ([v21 count] > 1)
  {
    v28 = [v33 objectForKeyedSubscript:@"iterations"];
    [v28 integerValue];

    [v32 startedTest:v10];
    [v21 count];
    v39 = v32;
    v40 = v10;
    v41 = v21;
    v42 = v31;
    v35 = v22;
    v15 = v31;
    v36 = v39;
    v12 = v32;
    v37 = v40;
    v11 = v33;
    v38 = v42;
    PXIterateAsynchronously();
  }

  else
  {
    [v32 failedTest:v10 withFailureFormat:@"couldn't find enough sidebar items to cycle through"];
    v15 = v31;
    v31[2](v31, 0);
  }

  v17 = v29;
  v16 = v30;
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

- (void)_keyboardWillChangeFrame:(id)a3
{
  v4 = a3;
  v6 = [(PUSidebarViewController *)self collectionView];
  v5 = [v4 userInfo];

  [(PUSidebarViewController *)self px_safeAreaInsets];
  [v6 px_adjustInsetsForKeyboardInfo:v5 safeAreaInsets:?];
}

- (void)navigateToFallbackForDestination:(id)a3
{
  v4 = a3;
  v5 = [(PUSidebarViewController *)self photoLibrary];
  v11 = [v5 px_virtualCollections];

  v6 = [v4 collection];

  v7 = [v11 allAlbumsCollection];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    v9 = [v11 rootAlbumCollectionList];
    v10 = [objc_alloc(MEMORY[0x1E69C3930]) initWithObject:v9 revealMode:0];
    [(PUSidebarViewController *)self _triggerNavigationToDestination:v10 animated:0 completionHandler:0];
  }
}

- (void)splitViewControllerWillExpand:(id)a3
{
  v5 = [a3 viewControllerForColumn:3];
  v4 = [v5 px_navigationDestination];
  if (v4)
  {
    [(PUSidebarViewController *)self _highlightNavigationDestination:v4];
  }
}

- (void)splitViewControllerWillCollapse:(id)a3
{
  v7 = a3;
  v4 = [v7 viewControllerForColumn:2];
  v5 = [(PUSidebarViewController *)self tabBarController];
  v6 = v5;
  if (v5 && v5 != v4)
  {
    [v7 setViewController:v5 forColumn:2];
  }
}

- (void)sidebarDiffableDataSourceController:(id)a3 willApplySnapshotWithChangedItemsAfterChange:(id)a4 applyBlock:(id)a5
{
  v58 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PUSidebarViewController *)self deferredNavigationItem];
  if (v11)
  {
    v12 = v11;
    v10[2](v10);
  }

  else
  {
    v13 = [(PUSidebarViewController *)self collectionView];
    v14 = [v13 indexPathsForSelectedItems];
    v15 = [v14 firstObject];

    if (v15)
    {
      v16 = [(PUSidebarViewController *)self dataSource];
      v12 = [v16 itemIdentifierForIndexPath:v15];
    }

    else
    {
      v12 = 0;
    }

    v10[2](v10);
    if (!v12)
    {
      v19 = 0;
      goto LABEL_30;
    }
  }

  v17 = [(PUSidebarViewController *)self dataSource];
  v18 = [v17 indexPathForItemIdentifier:v12];

  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v47 = v9;
    v48 = v8;
    v20 = [v12 identifier];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v21 = [(PUSidebarViewController *)self dataSource];
    v22 = [v21 snapshot];
    v23 = [v22 itemIdentifiers];

    v24 = [v23 countByEnumeratingWithState:&v49 objects:v57 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v50;
      v46 = v10;
LABEL_11:
      v27 = 0;
      while (1)
      {
        if (*v50 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v49 + 1) + 8 * v27);
        v29 = [v28 identifier];
        v30 = [v29 isEqualToString:v20];

        if (v30)
        {
          break;
        }

        if (v25 == ++v27)
        {
          v25 = [v23 countByEnumeratingWithState:&v49 objects:v57 count:16];
          v10 = v46;
          if (v25)
          {
            goto LABEL_11;
          }

          goto LABEL_17;
        }
      }

      v31 = [(PUSidebarViewController *)self dataSource];
      v18 = [v31 indexPathForItemIdentifier:v28];

      v10 = v46;
      if (!v18)
      {
        goto LABEL_20;
      }

      v19 = 0;
      v8 = v48;
    }

    else
    {
LABEL_17:

LABEL_20:
      v32 = PLSidebarGetLog();
      v8 = v48;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        v35 = [v12 title];
        *buf = 138412546;
        v54 = v34;
        v55 = 2112;
        v56 = v35;
        _os_log_impl(&dword_1B36F3000, v32, OS_LOG_TYPE_DEFAULT, "Selected item (%@ - %@) was no longer found after the sidebar contents were updated. Falling back to default selection", buf, 0x16u);
      }

      v36 = [(PUSidebarViewController *)self fallbackNavigationItem];
      v19 = v36;
      if (v36)
      {
        v37 = v36;
      }

      v18 = 0;
    }

    v9 = v47;
  }

  v38 = [(PUSidebarViewController *)self deferredNavigationItem];

  v39 = 0;
  if (v38 && v18)
  {
    [(PUSidebarViewController *)self setDeferredNavigationItem:0];
    v39 = 4;
  }

  v40 = [(PUSidebarViewController *)self collectionView];
  [v40 selectItemAtIndexPath:v18 animated:0 scrollPosition:v39];

LABEL_30:
  v41 = [(PUSidebarViewController *)self dataSource];
  v42 = [v41 snapshot];

  v43 = v42;
  v44 = PXFilter();
  [v43 reloadItemsWithIdentifiers:v44];
  v45 = [(PUSidebarViewController *)self dataSource];
  [v45 applySnapshot:v43 animatingDifferences:{objc_msgSend(v8, "animateDataSourceUpdates")}];

  if (v19)
  {
    [(PUSidebarViewController *)self _navigateToDestinationForItem:v19 sameItem:0 completionHandler:0];
  }
}

- (void)selectItemForDestination:(id)a3
{
  v4 = a3;
  if ([(PUSidebarViewController *)self navigating]|| ![(PUSidebarViewController *)self isViewLoaded])
  {
    [(PUSidebarViewController *)self setCurrentNavigationDestination:v4];
  }

  else
  {
    [(PUSidebarViewController *)self _highlightNavigationDestination:v4];
  }
}

- (void)_highlightNavigationDestination:(id)a3
{
  v5 = a3;
  v4 = [(PUSidebarViewController *)self currentNavigationDestination];
  if (([v4 isEqual:v5] & 1) == 0)
  {
    [(PUSidebarViewController *)self setCurrentNavigationDestination:v5];
    [(PUSidebarViewController *)self _updateSelectedRowScrollToVisible:1];
  }
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if (([(PUSidebarViewController *)self options]& 1) != 0)
  {
    v12 = 0;
  }

  else if (sel_newAlbum_ == a3 || sel_newSharedAlbum_ == a3 || sel_newFolder_ == a3)
  {
    v9 = [(PUSidebarViewController *)self splitViewController];
    v10 = [v9 viewIfLoaded];
    v11 = [v10 window];
    v12 = v11 != 0;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = PUSidebarViewController;
    v12 = [(PUSidebarViewController *)&v14 canPerformAction:a3 withSender:v6];
  }

  return v12;
}

- (void)assetCollectionActionPerformer:(id)a3 playMovieForAssetCollection:(id)a4
{
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x1E69C36C0];
    v6 = v8;
    v7 = [v5 moviePresenterWithPresentingViewController:self];
    [v7 presentMovieViewControllerForAssetCollection:v6 keyAssetFetchResult:0 preferredTransitionType:1];
  }
}

- (BOOL)actionPerformer:(id)a3 transitionToViewController:(id)a4 transitionType:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v11 = v10;
  switch(a5)
  {
    case 1:
      v14 = v10;
      v20 = [(PUSidebarViewController *)self px_splitViewController];
      v21 = [v20 contentViewController];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = [v21 selectedNavigationController];
        v23 = v22;
        v12 = v22 != 0;
        if (v22)
        {
          [v22 pushViewController:v14 animated:1];
        }
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_19;
    case 2:
      v13 = v9;
      if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v14 = v13;

        if (!v14)
        {
LABEL_17:
          v21 = [(PUSidebarViewController *)self navigationController];
          v12 = 1;
          [v21 presentViewController:v11 animated:1 completion:0];
LABEL_19:

          goto LABEL_20;
        }

        v15 = [v14 assetCollection];
        v13 = PXNavigationListItemCollectionIdentifier();

        v16 = [(PUSidebarViewController *)self _collectionViewIndexPathForCollectionIdentifier:v13];
        v17 = [(PUSidebarViewController *)self collectionView];
        v18 = [v17 cellForItemAtIndexPath:v16];

        if (v18)
        {
          v19 = [v11 popoverPresentationController];
          [v19 setPermittedArrowDirections:12];
          [v19 setSourceView:v18];
          [v19 setDelegate:self];
        }
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_17;
    case 0:
      v25 = [MEMORY[0x1E696AAA8] currentHandler];
      [v25 handleFailureInMethod:a2 object:self file:@"PUSidebarViewController.m" lineNumber:953 description:@"Code which should be unreachable has been reached"];

      abort();
  }

  v12 = 0;
LABEL_20:

  return v12;
}

- (BOOL)actionPerformer:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5
{
  v6 = a5;
  v7 = [(PUSidebarViewController *)self splitViewController];
  [v7 dismissViewControllerAnimated:1 completion:v6];

  return 1;
}

- (BOOL)actionPerformer:(id)a3 presentViewController:(id)a4
{
  v5 = a4;
  v6 = [(PUSidebarViewController *)self splitViewController];
  [v6 presentViewController:v5 animated:1 completion:0];

  return 1;
}

- (id)collectionViewDropDelegate:(id)a3 collectionAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(PUSidebarViewController *)self dataSource];
  v7 = [v6 itemIdentifierForIndexPath:v5];

  v8 = [v7 collection];

  return v8;
}

- (id)collectionView:(id)a3 targetIndexPathForMoveFromItemAtIndexPath:(id)a4 toProposedIndexPath:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(PUSidebarViewController *)self reorderController];
  v10 = [v9 targetIndexPathForMoveFromItemAtIndexPath:v8 toProposedIndexPath:v7];

  return v10;
}

- (BOOL)collectionView:(id)a3 shouldSpringLoadItemAtIndexPath:(id)a4 withContext:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PUSidebarViewController *)self dropDelegate];
  v12 = [v11 collectionView:v10 shouldSpringLoadItemAtIndexPath:v9 withContext:v8];

  return v12;
}

- (BOOL)collectionView:(id)a3 selectionFollowsFocusForItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(PUSidebarViewController *)self dataSource];
  v7 = [v6 itemIdentifierForIndexPath:v5];

  objc_opt_class();
  LOBYTE(v6) = objc_opt_isKindOfClass();

  return (v6 & 1) == 0;
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUSidebarViewController *)self dataSource];
  v9 = [v8 itemIdentifierForIndexPath:v7];

  if ([v6 isEditing])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = [v9 isGroup] ^ 1;
  }

  v11 = [MEMORY[0x1E69C3650] sharedInstance];
  if ([v11 enableSidebarHeaderSelection] && !-[PUSidebarViewController _isPhotosPicker](self, "_isPhotosPicker"))
  {
    if ([v6 isEditing])
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

      v14 = [v9 collection];

      if (v14)
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
  v12 = [v6 indexPathsForSelectedItems];
  -[PUSidebarViewController setSelectingAlreadySelectedIndexPath:](self, "setSelectingAlreadySelectedIndexPath:", [v12 containsObject:v7]);

  v13 = 1;
LABEL_14:

  return v13;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(PUSidebarViewController *)self dataSource];
  v7 = [v6 itemIdentifierForIndexPath:v5];

  [(PUSidebarViewController *)self _handleDidSelectListItem:v7 completionHandler:0];
}

- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v7 = a5;
  v8 = [a4 identifier];
  if (v8)
  {
    [v7 setPreferredCommitStyle:0];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __100__PUSidebarViewController_collectionView_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke;
    v9[3] = &unk_1E7B80C38;
    v9[4] = self;
    v10 = v8;
    [v7 addCompletion:v9];
  }
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(PUSidebarViewController *)self dataSource];
  v10 = [v9 itemIdentifierForIndexPath:v8];

  v11 = [v10 collection];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
    v13 = [(PUSidebarViewController *)self options];
    v14 = [v12 assetCollectionSubtype];
    v15 = [v12 px_isSharedAlbum];
    if ((v13 & 1) == 0)
    {
      v16 = v15;
      v17 = v14 == 2;
      if (![(PUSidebarViewController *)self isEditing]&& ((v17 | v16) & 1) != 0)
      {
        v18 = MEMORY[0x1E69DC8D8];
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __91__PUSidebarViewController_collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke;
        v30[3] = &unk_1E7B78C80;
        v31 = v12;
        v32 = self;
        v19 = v12;
        v20 = [v18 configurationWithIdentifier:v10 previewProvider:0 actionProvider:v30];

LABEL_10:
        goto LABEL_13;
      }
    }
  }

  else if ([v11 canContainCollections])
  {
    v19 = [v7 cellForItemAtIndexPath:v8];
    v21 = MEMORY[0x1E69C4608];
    v22 = [(PUSidebarViewController *)self splitViewController];
    v23 = [v21 popoverPresenterWithViewController:v22 sourceItem:v19];

    v24 = [(PUSidebarViewController *)self undoManager];
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

- (void)outlineCell:(id)a3 updatedTitle:(id)a4 forItem:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [v8 collection];
  if ([v9 canPerformEditOperation:7])
  {
    v10 = [objc_alloc(MEMORY[0x1E69C3960]) initWithCollection:v9 title:v7];
    v11 = [(PUSidebarViewController *)self undoManager];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __60__PUSidebarViewController_outlineCell_updatedTitle_forItem___block_invoke;
    v19[3] = &unk_1E7B78C58;
    v12 = v9;
    v20 = v12;
    v21 = v7;
    v22 = self;
    [v10 executeWithUndoManager:v11 completionHandler:v19];

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
      v28 = v9;
      v29 = 2113;
      v30 = v8;
      _os_log_impl(&dword_1B36F3000, v18, OS_LOG_TYPE_ERROR, "Renaming collection %{private}@ of item %{private}@ is not supported", buf, 0x16u);
    }

    v10 = [(PUSidebarViewController *)self sidebarDiffableDataSourceController];
    [v10 reloadFromDataControllerAnimated:{objc_msgSend(v10, "animateDataSourceUpdates")}];
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

- (void)popoverPresentationController:(id)a3 willRepositionPopoverToRect:(CGRect *)a4 inView:(id *)a5
{
  v11 = a3;
  v7 = *a5;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 window];

    if (!v9)
    {
      v10 = [(PUSidebarViewController *)self splitViewController];
      [v10 showColumn:0];
    }
  }
}

- (void)_deleteItemTapped:(id)a3 sourceView:(id)a4 completion:(id)a5
{
  v16 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [v16 collection];
  if (!v11)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PUSidebarViewController.m" lineNumber:750 description:{@"Expected a no nil collection on item %@", v16}];
  }

  v12 = [(PUSidebarViewController *)self undoManager];
  v13 = PXCollectionDeletionAlertControllerForCollection();

  v14 = [v13 popoverPresentationController];
  [v14 setSourceView:v10];

  [v14 setDelegate:self];
  [(PUSidebarViewController *)self presentViewController:v13 animated:1 completion:0];
}

- (id)_trailingSwipeActionConfigurationForIndexPath:(id)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([(PUSidebarViewController *)self options]& 1) != 0)
  {
    v13 = 0;
  }

  else
  {
    v5 = [(PUSidebarViewController *)self dataSource];
    v6 = [v5 itemIdentifierForIndexPath:v4];

    if ([v6 isDeletable])
    {
      v7 = [v6 collection];
      v8 = PXCollectionDeleteConfirmationTitle();

      v9 = MEMORY[0x1E69DC8E8];
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __73__PUSidebarViewController__trailingSwipeActionConfigurationForIndexPath___block_invoke;
      v18 = &unk_1E7B78C30;
      v19 = self;
      v20 = v6;
      v10 = [v9 contextualActionWithStyle:1 title:v8 handler:&v15];
      v11 = MEMORY[0x1E69DCFC0];
      v21[0] = v10;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:{1, v15, v16, v17, v18, v19}];
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

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v19.receiver = self;
  v19.super_class = PUSidebarViewController;
  [(PUSidebarViewController *)&v19 setEditing:a3 animated:1];
  v8 = [(PUSidebarViewController *)self collectionView];
  if (v5)
  {
    if (([(PUSidebarViewController *)self options]& 1) != 0)
    {
      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      [v18 handleFailureInMethod:a2 object:self file:@"PUSidebarViewController.m" lineNumber:709 description:@"Editing should not be allowed."];
    }

    v9 = [PUSidebarReorderController alloc];
    v10 = [(PUSidebarViewController *)self dataSource];
    v11 = [(PUSidebarViewController *)self sidebarDiffableDataSourceController];
    v12 = [(PUSidebarViewController *)self undoManager];
    v13 = [(PUSidebarReorderController *)v9 initWithDataSource:v10 outlineSectionController:v11 undoManager:v12];
  }

  else
  {
    v13 = 0;
  }

  [(PUSidebarViewController *)self setReorderController:v13];
  [v8 setEditing:v5];
  if (v5)
  {
    v14 = +[PUTabbedLibrarySettings sharedInstance];
    v15 = [v14 sidebarEditAutoExpandToEditableItem];

    if (v15)
    {
      v16 = [(PUSidebarViewController *)self sidebarDiffableDataSourceController];
      v17 = [v16 expandItemsToRevealFirstEditableItemIfNeededAnimated:v4];
    }
  }

  else
  {
    [(PUSidebarViewController *)self _updateSelectedRowScrollToVisible:0];
  }
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

- (PXSelectionContainerProvider)selectionProvider
{
  v2 = [(PUSidebarViewController *)self splitViewController];
  v3 = PXSelectionProviderForViewController();

  return v3;
}

- (void)_performActionForType:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PUSidebarViewController.m" lineNumber:635 description:{@"Invalid parameter not satisfying: %@", @"actionType != nil"}];
  }

  if ([v7 isEqualToString:*MEMORY[0x1E69C4000]])
  {
    if (v8)
    {
      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      [v18 handleFailureInMethod:a2 object:self file:@"PUSidebarViewController.m" lineNumber:638 description:{@"Invalid parameter not satisfying: %@", @"completionHandler == nil"}];
    }

    [(PUSidebarViewController *)self _createSharedAlbum];
  }

  else
  {
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = &__block_literal_global_261_38027;
    }

    v10 = _Block_copy(v9);

    [(PUSidebarViewController *)self _updateSelectedRowScrollToVisible:0];
    v11 = objc_alloc(MEMORY[0x1E69C37E0]);
    v12 = [(PUSidebarViewController *)self photoLibrary];
    v13 = [v12 px_virtualCollections];
    v14 = [v13 rootAlbumCollectionList];
    v15 = [v11 initWithActionType:v7 collectionList:v14];

    if (!v15)
    {
      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      [v19 handleFailureInMethod:a2 object:self file:@"PUSidebarViewController.m" lineNumber:672 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    [v15 setDelegate:self];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __67__PUSidebarViewController__performActionForType_completionHandler___block_invoke_2;
    v20[3] = &unk_1E7B78C08;
    v21 = v15;
    v22 = self;
    v8 = v10;
    v23 = v8;
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

- (void)_triggerNavigationToDestination:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  [(PUSidebarViewController *)self setNavigating:1];
  PXCATransactionSetShouldLoadContentImmediately();
  objc_initWeak(&location, self);
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __86__PUSidebarViewController__triggerNavigationToDestination_animated_completionHandler___block_invoke;
  v22 = &unk_1E7B78BB8;
  v10 = v8;
  v23 = v10;
  v11 = v9;
  v24 = v11;
  objc_copyWeak(&v25, &location);
  v12 = _Block_copy(&v19);
  if (v6)
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
    v16 = [(PUSidebarViewController *)self currentNavigationDestination];

    if (v16 != v10)
    {
      [(PUSidebarViewController *)self setCurrentNavigationDestination:v10];
    }
  }

  v17 = [(PUSidebarViewController *)self navigationRoot];
  [v17 navigateToDestination:v10 options:v13 completionHandler:v12];

  v18 = [(PUSidebarViewController *)self px_splitViewController];
  [v18 dismissPrimaryColumnIfOverlay];

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

- (void)_navigateToDestinationForItem:(id)a3 sameItem:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v38 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (a5)
  {
    v9 = a5;
  }

  else
  {
    v9 = &__block_literal_global_238_38041;
  }

  v10 = _Block_copy(v9);
  if (v6)
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  v12 = [v8 representedObject];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = [v8 collection];
  v15 = [v8 topLevelIdentifier];
  if ([v15 isEqualToString:*MEMORY[0x1E69C4190]])
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  v17 = [MEMORY[0x1E69C3650] sharedInstance];
  if ([v17 enableSidebarHeaderSelection] && !-[PUSidebarViewController _isPhotosPicker](self, "_isPhotosPicker"))
  {
    if (v14)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v18 = [v8 isGroup];
    if (v14)
    {
      if (v18)
      {
        goto LABEL_31;
      }

LABEL_20:
      v35 = v11;
      v19 = [v8 collection];
      v20 = [v19 px_isAllAlbumsVirtualCollection];

      if (v20)
      {
        v34 = v13;
        v21 = self;
        v22 = [v14 photoLibrary];
        v23 = [v22 px_virtualCollections];
        v24 = [v23 rootAlbumCollectionList];
      }

      else
      {
        v26 = [v8 collection];
        v27 = [v26 px_isSharedAlbumsVirtualCollection];

        if (!v27)
        {
          goto LABEL_28;
        }

        v34 = v13;
        v21 = self;
        v22 = [v14 photoLibrary];
        v23 = [v22 px_virtualCollections];
        v24 = [v23 sharedAlbumsCollectionList];
      }

      v28 = v24;

      v14 = v28;
      self = v21;
      v13 = v34;
LABEL_28:
      v11 = v35;
      v25 = [objc_alloc(MEMORY[0x1E69C3930]) initWithObject:v14 revealMode:v35 routingType:v16];
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
    v14 = 0;
    if (!v25)
    {
      goto LABEL_31;
    }

LABEL_33:
    [(PUSidebarViewController *)self _triggerNavigationToDestination:v25 animated:v6 completionHandler:v10];
    goto LABEL_37;
  }

  v14 = 0;
LABEL_31:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29 = objc_alloc(MEMORY[0x1E69C3930]);
    v30 = [v8 importSource];
    v31 = v11;
    v32 = v30;
    v25 = [v29 initWithImportSource:v30 revealMode:v31];

    if (v25)
    {
      goto LABEL_33;
    }
  }

  v33 = PLSidebarGetLog();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v37 = v14;
    _os_log_impl(&dword_1B36F3000, v33, OS_LOG_TYPE_ERROR, "Sidebar navigation failed to create destination for collection %@", buf, 0xCu);
  }

  v25 = [MEMORY[0x1E696ABC0] px_errorWithDomain:*MEMORY[0x1E69C48A8] code:-1 debugDescription:@"Sidebar navigation failed to create destination for collection"];
  v10[2](v10, 0, v25);
LABEL_37:
}

- (void)_handleDidSelectListItem:(id)a3 completionHandler:(id)a4
{
  v8 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v8 actionType];
    [(PUSidebarViewController *)self _performActionForType:v7 completionHandler:v6];

    v6 = v7;
  }

  else
  {
    [(PUSidebarViewController *)self _navigateToDestinationForItem:v8 sameItem:[(PUSidebarViewController *)self selectingAlreadySelectedIndexPath] completionHandler:v6];
  }
}

- (PXNavigationListItem)fallbackNavigationItem
{
  v3 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
  v4 = [(PUSidebarViewController *)self dataSource];
  v5 = [v4 itemIdentifierForIndexPath:v3];

  return v5;
}

- (void)_updateSelectedRowScrollToVisible:(BOOL)a3
{
  v3 = a3;
  v48 = *MEMORY[0x1E69E9840];
  v5 = +[PUTabbedLibrarySettings sharedInstance];
  v6 = [(PUSidebarViewController *)self currentNavigationDestination];
  if (!v6)
  {
    v7 = [(PUSidebarViewController *)self sidebarDataController];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = objc_alloc(MEMORY[0x1E69C3930]);
    v10 = [v8 primaryPhotosCollection];
    v6 = [v9 initWithObject:v10 revealMode:1];
    [(PUSidebarViewController *)self setCurrentNavigationDestination:v6];
  }

  v11 = [(PUSidebarViewController *)self _itemIndexPathForDestination:v6];
  v12 = [(PUSidebarViewController *)self collectionView];
  v13 = [v12 indexPathsForSelectedItems];
  v14 = v13;
  if (v11)
  {
    v15 = [v13 containsObject:v11];
  }

  else
  {
    v15 = 0;
  }

  v42 = v15;
  if (!v3 || ![v5 sidebarScrollSelectedItemToCenter] || v11 && objc_msgSend(v5, "sidebarOnlyScrollOffscreenItemOnScreen") && (objc_msgSend(v12, "cellForItemAtIndexPath:", v11), (v16 = objc_claimAutoreleasedReturnValue()) != 0) && (v17 = v16, objc_msgSend(v12, "bounds"), v19 = v18, v21 = v20, v23 = v22, v25 = v24, objc_msgSend(v17, "frame"), v50.origin.x = v26, v50.origin.y = v27, v50.size.width = v28, v50.size.height = v29, v49.origin.x = v19, v49.origin.y = v21, v49.size.width = v23, v49.size.height = v25, v30 = CGRectContainsRect(v49, v50), v17, v30))
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
  v32 = [v5 sidebarAnimateSelectionUpdates];
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

        [v12 deselectItemAtIndexPath:*(*(&v43 + 1) + 8 * i) animated:v32];
      }

      v36 = [v34 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v36);
  }

  if (([v12 isEditing] & 1) == 0 && (v42 & v41 & 1) == 0)
  {
    [v12 selectItemAtIndexPath:v11 animated:v32 scrollPosition:v40];
  }
}

- (BOOL)_hasSidebarItemForDestination:(id)a3
{
  v3 = [(PUSidebarViewController *)self _itemIndexPathForDestination:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)_itemIndexPathForDestination:(id)a3
{
  v4 = a3;
  v5 = [(PUSidebarViewController *)self photoLibrary];
  v6 = v4;
  v7 = [v5 px_virtualCollections];
  v8 = [v6 type];
  v9 = 0;
  if (v8 > 10)
  {
    if (v8 > 18)
    {
      if (v8 <= 22)
      {
        if (v8 == 19)
        {
          v10 = [v7 featuredPhotosCollection];
        }

        else
        {
          if (v8 != 20)
          {
            goto LABEL_32;
          }

          v10 = [v7 sharedAlbumsCollectionList];
        }
      }

      else
      {
        switch(v8)
        {
          case 23:
            v10 = [v7 allAlbumsCollection];
            break;
          case 28:
            v10 = [v7 eventsCollection];
            break;
          case 29:
            v10 = [v7 tripsCollection];
            break;
          default:
            goto LABEL_32;
        }
      }
    }

    else
    {
      if (v8 <= 15)
      {
        if ((v8 - 11) >= 2)
        {
          if (v8 != 14)
          {
            goto LABEL_32;
          }

          v10 = [v7 searchCollection];
        }

        else
        {
          v10 = [v7 peopleCollection];
        }

        goto LABEL_31;
      }

      if (v8 != 16)
      {
        if (v8 != 18)
        {
          goto LABEL_32;
        }

        goto LABEL_22;
      }

      v10 = [v7 prototypeCollection];
    }

LABEL_31:
    v9 = v10;
    goto LABEL_32;
  }

  if ((v8 - 1) < 6)
  {
    v10 = [v7 photosCollection];
    goto LABEL_31;
  }

  if ((v8 - 9) < 2)
  {
    v10 = [v7 memoriesCollection];
    goto LABEL_31;
  }

  if (v8 != 8)
  {
    goto LABEL_32;
  }

LABEL_22:
  v9 = [v6 collection];
  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"PHCollection *CollectionForNavigationDestinationInPhotoLibrary(PXProgrammaticNavigationDestination *__strong, PHPhotoLibrary *__strong)"}];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = [v9 px_descriptionForAssertionMessage];
      [v11 handleFailureInFunction:v12 file:@"PUSidebarViewController.m" lineNumber:410 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"destination.collection", v14, v15}];
    }
  }

LABEL_32:

  if (v9)
  {
    v16 = PXNavigationListItemCollectionIdentifier();
    v17 = [(PUSidebarViewController *)self _collectionViewIndexPathForCollectionIdentifier:v16];
    if (!v17)
    {
      v18 = [v9 px_fetchAncestryIncludingRoot:1];
      v19 = PXMap();

      v20 = [(PUSidebarViewController *)self sidebarDiffableDataSourceController];
      [v20 expandItemsForIdentifiersIfNeeded:v19 animated:1];

      v17 = [(PUSidebarViewController *)self _collectionViewIndexPathForCollectionIdentifier:v16];
    }

    goto LABEL_42;
  }

  if ([v6 type] == 21)
  {
    v16 = [v6 importSourceUUID];
    if ([v16 length])
    {
      v17 = [(PUSidebarViewController *)self _collectionViewIndexPathForItemIdentifier:v16];
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

- (id)_collectionViewIndexPathForCollectionIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PUSidebarViewController *)self sidebarDataController];
  v6 = [v5 itemsForCollectionIdentifier:v4];

  v7 = [(PUSidebarViewController *)self collectionView];
  v8 = [v7 indexPathsForSelectedItems];
  v9 = [v8 firstObject];

  if (v9)
  {
    v10 = [(PUSidebarViewController *)self dataSource];
    v11 = [v10 itemIdentifierForIndexPath:v9];

    if ([v6 containsObject:v11])
    {
      v12 = v9;
LABEL_7:

      goto LABEL_9;
    }
  }

  if ([v6 count])
  {
    v11 = [(PUSidebarViewController *)self dataSource];
    v13 = [v6 firstObject];
    v12 = [v11 indexPathForItemIdentifier:v13];

    goto LABEL_7;
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (id)_collectionViewIndexPathForItemIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PUSidebarViewController *)self sidebarDataController];
  v6 = [v5 itemForIdentifier:v4];

  if (v6)
  {
    v7 = [(PUSidebarViewController *)self dataSource];
    v8 = [v7 indexPathForItemIdentifier:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setupDataSectionManagerWithLoadMode:(int64_t)a3
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

  v9 = [(PUSidebarViewController *)self photoLibrary];
  v10 = [[PUSidebarDataSectionEnablementController alloc] initWithPhotoLibrary:v9 andOptions:[(PUSidebarViewController *)self options]];
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

  v12 = [(PUSidebarViewController *)self tabBarController];
  v13 = [v12 collectionsTabBadgeModel];

  v14 = MEMORY[0x1E69C3A28];
  v15 = [(PUSidebarViewController *)self libraryFilterState];
  v16 = [(PUSidebarViewController *)self assetsFilterPredicate];
  v32 = v13;
  v17 = [v14 standardContextWithLibraryFilterState:v15 enablementProvider:v10 assetsFilterPredicate:v16 collectionsTabBadgeModel:v13 sharedActivityTabBadgeModel:0];

  v18 = [PUSidebarDataController alloc];
  v19 = [(PUSidebarViewController *)self pickerAllPhotosVirtualCollection];
  v20 = [(PXSidebarDataController *)v18 initWithPhotoLibrary:v9 context:v17 options:v11 pickerAllPhotosVirtualCollection:v19];

  [(PUSidebarViewController *)self setSidebarDataController:v20];
  v21 = +[PUTabbedLibrarySettings sharedInstance];
  v22 = objc_alloc(MEMORY[0x1E69C3A40]);
  v23 = [(PUSidebarViewController *)self dataSource];
  v24 = [v22 initWithSidebarDataController:v20 dataSource:v23];

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
  if ((a3 - 2) < 2)
  {
    [v24 loadRootItems];
    v28 = [MEMORY[0x1E69C4598] sharedScheduler];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __63__PUSidebarViewController_setupDataSectionManagerWithLoadMode___block_invoke;
    v34[3] = &unk_1E7B7FF70;
    v36 = a3;
    v35 = v24;
    [v28 scheduleTaskAfterCATransactionCommits:v34];

LABEL_21:
    v26 = v33;
    goto LABEL_24;
  }

  if (a3 == 1)
  {
    [v24 loadRootItems];
    goto LABEL_21;
  }

  v26 = v33;
  if (!a3)
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
  v13 = [(PUSidebarViewController *)self collectionView];
  v14 = [v12 initWithCollectionView:v13 cellProvider:v11];

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __46__PUSidebarViewController_configureDataSource__block_invoke_3;
  v28[3] = &unk_1E7B78B20;
  objc_copyWeak(&v29, buf);
  v15 = [v14 sectionSnapshotHandlers];
  [v15 setWillExpandItemHandler:v28];

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __46__PUSidebarViewController_configureDataSource__block_invoke_5;
  v26[3] = &unk_1E7B78B20;
  objc_copyWeak(&v27, buf);
  v16 = [v14 sectionSnapshotHandlers];
  [v16 setWillCollapseItemHandler:v26];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __46__PUSidebarViewController_configureDataSource__block_invoke_6;
  v24[3] = &unk_1E7B78B48;
  objc_copyWeak(&v25, buf);
  v17 = [v14 reorderingHandlers];
  [v17 setCanReorderItemHandler:v24];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __46__PUSidebarViewController_configureDataSource__block_invoke_7;
  v22[3] = &unk_1E7B78B70;
  objc_copyWeak(&v23, buf);
  v18 = [v14 reorderingHandlers];
  [v18 setDidReorderHandler:v22];

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

- (void)_updateOutlineCell:(id)a3 forListItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 setDelegate:self];
  v8 = [(PUSidebarViewController *)self traitCollection];
  v9 = [v8 userInterfaceIdiom];

  if (v9 == 6)
  {
    v10 = MEMORY[0x1E69DCAB0];
    v11 = [MEMORY[0x1E69DCAA8] effect];
    v12 = [v10 styleWithEffect:v11 shape:0];
    [v6 setHoverStyle:v12];
  }

  [v6 setItem:v7];
  v13 = [v7 accessibilityIdentifier];
  [v6 setAccessibilityIdentifier:v13];

  if (([v7 isGroup] & 1) == 0)
  {
    v14 = [(PUSidebarViewController *)self sidebarDiffableDataSourceController];
    v15 = [v14 sectionSnapshotContainingItem:v7];

    if ([v15 containsItem:v7])
    {
      v16 = [v15 parentOfChildItem:v7];
    }

    else
    {
      v16 = 0;
    }

    v17 = [(PUSidebarViewController *)self sidebarDataController];
    [v17 cancelImageRequest:{objc_msgSend(v6, "mediaRequestID")}];

    v18 = [(PUSidebarViewController *)self sidebarDataController];
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __58__PUSidebarViewController__updateOutlineCell_forListItem___block_invoke;
    v24 = &unk_1E7B78AA8;
    v19 = v6;
    v25 = v19;
    v26 = v7;
    v20 = [v18 requestImageForItem:v26 parentItem:v16 completion:&v21];
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

- (void)_updateHeaderCell:(id)a3 forListItem:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E69DCC28] headerConfiguration];
  v8 = [v6 title];
  [v7 setText:v8];

  [v14 setContentConfiguration:v7];
  v9 = [MEMORY[0x1E695DF70] array];
  if ([v6 isExpandable])
  {
    v10 = [v6 accessibilityIdentifier];
    [v14 setAccessibilityIdentifier:v10];

    v11 = objc_alloc_init(MEMORY[0x1E69DC7C8]);
    v12 = [MEMORY[0x1E69C3650] sharedInstance];
    if ([v12 enableSidebarHeaderSelection])
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
    [v9 addObject:v11];
  }

  [v14 setAccessories:v9];
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
  v8 = [(PUSidebarViewController *)self view];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(PUSidebarViewController *)self generateLayout];
  v18 = [v7 initWithFrame:v17 collectionViewLayout:{v10, v12, v14, v16}];

  [v18 setAutoresizingMask:18];
  [v18 setBackgroundColor:0];
  [v18 setDelegate:self];
  [v18 setSpringLoaded:1];
  [v18 setAlwaysBounceVertical:1];
  [v18 _setAllowsSelectionDuringEditing:1];
  v19 = [(PUSidebarViewController *)self traitCollection];
  v20 = [v19 userInterfaceIdiom];

  if (v20 == 5)
  {
    [v18 setContentInset:{16.0, 0.0, 0.0, 0.0}];
  }

  [v18 _setShouldPersistSelectionOnReloadDataWhenPossible:1];
  [v18 setAccessibilityIdentifier:@"PhotosSidebarScrollView"];
  v21 = [(PUSidebarViewController *)self view];
  [v21 addSubview:v18];

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

- (void)traitCollectionDidChange:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = PUSidebarViewController;
  [(PUSidebarViewController *)&v24 traitCollectionDidChange:v4];
  v5 = [(PUSidebarViewController *)self traitCollection];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    v8 = [(PUSidebarViewController *)self sidebarDataController];
    [v8 appearanceDidChange];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = [(PUSidebarViewController *)self collectionView];
    v10 = [v9 visibleCells];

    v11 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
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
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v20 + 1) + 8 * v14);
          v16 = objc_opt_self();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v18 = v15;
            v19 = [v18 item];
            [(PUSidebarViewController *)self _updateOutlineCell:v18 forListItem:v19];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v12);
    }
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = PUSidebarViewController;
  [(PUSidebarViewController *)&v7 viewDidDisappear:a3];
  v4 = +[PUTabbedLibrarySettings sharedInstance];
  v5 = [v4 sidebarPauseChangeProcessingWhenHidden];

  if (v5)
  {
    v6 = [(PUSidebarViewController *)self sidebarDataController];
    [v6 setChangeProcessingPaused:1 forReason:@"Sidebar Hidden"];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PUSidebarViewController;
  [(PUSidebarViewController *)&v5 viewWillAppear:a3];
  v4 = [(PUSidebarViewController *)self sidebarDataController];
  [v4 setChangeProcessingPaused:0 forReason:@"Sidebar Hidden"];

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
    v9 = [(PUSidebarViewController *)self editButtonItem];
    v10 = [(PUSidebarViewController *)self navigationItem];
    v11 = v10;
    if (v8)
    {
      [v10 setLeftBarButtonItem:v9];
    }

    else
    {
      [v10 setRightBarButtonItem:v9];
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

- (PUSidebarViewController)initWithNavigationRoot:(id)a3 photoLibrary:(id)a4 libraryFilterState:(id)a5 options:(unint64_t)a6 additionalAssetsFilterPredicate:(id)a7 pickerAllPhotosVirtualCollection:(id)a8
{
  v23 = a3;
  v22 = a4;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = PUSidebarViewController;
  v18 = [(PUSidebarViewController *)&v24 initWithNibName:0 bundle:0];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_navigationRoot, a3);
    objc_storeStrong(&v19->_photoLibrary, a4);
    objc_storeStrong(&v19->_libraryFilterState, a5);
    v19->_options = a6;
    objc_storeStrong(&v19->_assetsFilterPredicate, a7);
    objc_storeStrong(&v19->_pickerAllPhotosVirtualCollection, a8);
    v20 = [MEMORY[0x1E696AD88] defaultCenter];
    [v20 addObserver:v19 selector:sel__keyboardWillChangeFrame_ name:*MEMORY[0x1E69DE068] object:0];

    [(PXLibraryFilterState *)v19->_libraryFilterState registerChangeObserver:v19 context:PXLibraryFilterStateObservationContext];
  }

  return v19;
}

@end