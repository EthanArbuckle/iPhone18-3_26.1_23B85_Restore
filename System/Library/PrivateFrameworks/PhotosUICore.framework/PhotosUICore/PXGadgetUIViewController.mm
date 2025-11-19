@interface PXGadgetUIViewController
- (BOOL)collectionView:(id)a3 canFocusItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 canHandleDropSesson:(id)a4;
- (BOOL)gadget:(id)a3 transitionToViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (BOOL)isTogglingSidebarNoRotating;
- (BOOL)px_scrollToInitialPositionAnimated:(BOOL)a3;
- (CGRect)visibleBounds;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (OS_os_log)gadgetViewControllerLog;
- (PXGadgetUIViewController)initWithLayout:(id)a3 dataSourceManager:(id)a4;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (UIEdgeInsets)insetsForSectionHeaders;
- (id)_gadgetAtIndexPath:(id)a3;
- (id)_indexPathForGadget:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4;
- (id)debugURLsForDiagnostics;
- (id)gadgetAtLocation:(CGPoint)a3 inCoordinateSpace:(id)a4;
- (id)presentationEnvironmentForGadget:(id)a3;
- (id)px_diagnosticsItemProvidersForPoint:(CGPoint)a3 inCoordinateSpace:(id)a4;
- (int64_t)_scrollAxis;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (void)_addContextMenuInteraction;
- (void)_applicationDidEnterBackground:(id)a3;
- (void)_applicationWillEnterForeground:(id)a3;
- (void)_clearTimerToHandleGadgetsSeen;
- (void)_dataSourceManagerDidChange;
- (void)_gadgetSpecDidChange;
- (void)_handleGadgetsSeen;
- (void)_initializeDataSource;
- (void)_initializeHelpers;
- (void)_notifyGadgetsThatGadgetControllerHasAppeared;
- (void)_notifyGadgetsThatGadgetControllerHasDisappeared;
- (void)_notifyGadgetsThatGadgetWasDismissed;
- (void)_notifyPresentedGadgetsOfVisibilityChange;
- (void)_removeContextMenuInteraction;
- (void)_scrollViewDidEndScrolling;
- (void)_setTimerToHandleGadgetsSeen;
- (void)_updateGadgetVisibleRects;
- (void)_updateVisibleRectForGadget:(id)a3 inCell:(id)a4 collectionView:(id)a5;
- (void)_updaterNeedsUpdate;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4;
- (void)collectionView:(id)a3 prefetchItemsAtIndexPaths:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)contentSizeCategoryDidChangeNotification:(id)a3;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)dealloc;
- (void)dismissGadgetViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)gadget:(id)a3 animateChanges:(id)a4;
- (void)gadget:(id)a3 didChange:(unint64_t)a4;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)presentGadgetViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)reloadContent;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setContentVisible:(BOOL)a3;
- (void)setDataSource:(id)a3;
- (void)setLayout:(id)a3;
- (void)updateIfNeeded;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PXGadgetUIViewController

- (OS_os_log)gadgetViewControllerLog
{
  if (gadgetViewControllerLog_onceToken != -1)
  {
    dispatch_once(&gadgetViewControllerLog_onceToken, &__block_literal_global_334);
  }

  v3 = gadgetViewControllerLog_sectionedDataSourceLog;

  return v3;
}

void __51__PXGadgetUIViewController_gadgetViewControllerLog__block_invoke()
{
  v0 = os_log_create("com.apple.photos.ui", "GadgetViewController");
  v1 = gadgetViewControllerLog_sectionedDataSourceLog;
  gadgetViewControllerLog_sectionedDataSourceLog = v0;
}

- (id)px_diagnosticsItemProvidersForPoint:(CGPoint)a3 inCoordinateSpace:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = PXGadgetUIViewController;
  v8 = [(UIViewController *)&v13 px_diagnosticsItemProvidersForPoint:v7 inCoordinateSpace:x, y];
  v9 = [v8 mutableCopy];

  v10 = [(PXGadgetUIViewController *)self gadgetAtLocation:v7 inCoordinateSpace:x, y];
  if (objc_opt_respondsToSelector())
  {
    v11 = [v10 px_diagnosticsItemProvidersForPoint:v7 inCoordinateSpace:{x, y}];
    [v9 addObjectsFromArray:v11];
  }

  return v9;
}

- (BOOL)px_scrollToInitialPositionAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(PXGadgetUIViewController *)self collectionView];
  [v4 px_scrollToEdge:1 animated:v3];

  return 1;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v8 = a3;
  if (PXDataSourceManagerObservationContext_122915 == a5)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_8;
    }

    v9 = v8;
    [(PXGadgetUIViewController *)self _dataSourceManagerDidChange];
    goto LABEL_7;
  }

  if ((v6 & 1) != 0 && PXGadgetSpecManagerObservationContext == a5)
  {
    v9 = v8;
    [(PXGadgetUIViewController *)self _gadgetSpecDidChange];
LABEL_7:
    v8 = v9;
  }

LABEL_8:
}

- (void)_gadgetSpecDidChange
{
  v19 = [(PXGadgetUIViewController *)self specManager];
  v3 = [(PXGadgetUIViewController *)self layout];
  v4 = [v19 currentGadgetSpec];
  [v3 setSpec:v4];

  v5 = [v19 currentGadgetSpec];
  [v5 contentInsets];
  v7 = v6;
  v9 = v8;

  v10 = [(PXGadgetUIViewController *)self navigationItem];
  [v10 largeTitleInsets];
  if (v7 == v14 && v11 == 0.0 && v9 == v13)
  {
    v15 = v12;

    if (v15 == 0.0)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v16 = [(PXGadgetUIViewController *)self navigationItem];
  [v16 setLargeTitleInsets:{0.0, v7, 0.0, v9}];

  v17 = [(PXGadgetUIViewController *)self navigationItem];
  v18 = [v17 navigationBar];
  [v18 setNeedsLayout];

LABEL_8:
  if (![(PXGadgetUIViewController *)self isBatchUpdating])
  {
    [v3 invalidateLayout];
  }
}

- (void)_dataSourceManagerDidChange
{
  v59 = *MEMORY[0x1E69E9840];
  v23 = [(PXGadgetUIViewController *)self collectionView];
  v4 = [(PXGadgetUIViewController *)self dataSourceManager];
  v5 = [(PXGadgetUIViewController *)self dataSource];
  v6 = [v4 dataSource];
  v22 = [(PXGadgetUIViewController *)self specManager];
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__122916;
  v49 = __Block_byref_object_dispose__122917;
  v50 = _GetChangeDetails(v4, [v5 identifier], objc_msgSend(v6, "identifier"));
  if ([(PXGadgetUIViewController *)self isCurrentlyVisible])
  {
    v7 = PLGadgetsGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "Gadget view controller is visible and evaulating changes.", buf, 2u);
    }

    v8 = [v46[5] sectionChanges];
    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = [v8 hasIncrementalChanges];
    if (*(v42 + 24) == 1 && ([v46[5] sectionsWithItemChanges], v9 = objc_claimAutoreleasedReturnValue(), v40[0] = MEMORY[0x1E69E9820], v40[1] = 3221225472, v40[2] = __55__PXGadgetUIViewController__dataSourceManagerDidChange__block_invoke, v40[3] = &unk_1E773B000, v40[4] = &v45, v40[5] = &v41, objc_msgSend(v9, "enumerateIndexesUsingBlock:", v40), v9, (v42[3] & 1) != 0))
    {
      v10 = PLGadgetsGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v46[5];
        *buf = 138412290;
        v52 = v11;
        _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEFAULT, "Gadget view controller will perform UICollectionView batch updates with change details: %@", buf, 0xCu);
      }

      [(PXGadgetUIViewController *)self setBatchUpdating:1];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __55__PXGadgetUIViewController__dataSourceManagerDidChange__block_invoke_326;
      v32[3] = &unk_1E773B078;
      v32[4] = self;
      v33 = v6;
      v34 = v8;
      v35 = v23;
      v39 = a2;
      v36 = v5;
      v38 = &v45;
      v37 = v22;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __55__PXGadgetUIViewController__dataSourceManagerDidChange__block_invoke_2_330;
      v24[3] = &unk_1E773B0A0;
      v25 = v35;
      v26 = v34;
      v27 = v33;
      v28 = self;
      v29 = v4;
      v31 = &v45;
      v30 = v36;
      [v25 performBatchUpdates:v32 completion:v24];
    }

    else
    {
      v15 = PLGadgetsGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v6 publiclySafeDescription];
        v17 = [v5 publiclySafeDescription];
        v18 = [v23 numberOfSections];
        v19 = v46[5];
        *buf = 138544130;
        v52 = v16;
        v53 = 2114;
        v54 = v17;
        v55 = 2048;
        v56 = v18;
        v57 = 2112;
        v58 = v19;
        _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_DEFAULT, "Gadget view controller will not perform UICollectionView batch updates. Setting new data source: %{public}@, Old data source: %{public}@, UICollectionView number of sections: %ld, Change details: %@", buf, 0x2Au);
      }

      [(PXGadgetUIViewController *)self setDataSource:v6];
      if (_HasAnyInsertionsForChangeDetails(v46[5]))
      {
        [v22 updateGadgetDataSourceToSpecIfNeeded:v6];
      }

      [(PXGadgetUIViewController *)self _notifyGadgetsThatGadgetControllerHasAppeared];
      v20 = PLGadgetsGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v6 publiclySafeDescription];
        *buf = 138543362;
        v52 = v21;
        _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_DEFAULT, "Reloading Gadget view controller's UICollectionView with new data source: %{public}@", buf, 0xCu);
      }

      [v23 reloadData];
      [(PXGadgetUIViewController *)self gadgetControllerFinishedUpdatingDataSourceWithChange:v46[5]];
    }

    _Block_object_dispose(&v41, 8);
  }

  else
  {
    v12 = PLGadgetsGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v6 publiclySafeDescription];
      v14 = [v5 publiclySafeDescription];
      *buf = 138543618;
      v52 = v13;
      v53 = 2114;
      v54 = v14;
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEFAULT, "Gadget view controller not yet visible. Setting new data source: %{public}@, old data source: %{public}@", buf, 0x16u);
    }

    [(PXGadgetUIViewController *)self setDataSource:v6];
    self->_updateFlags = 257;
    if (_HasAnyInsertionsForChangeDetails(v46[5]))
    {
      [v22 updateGadgetDataSourceToSpecIfNeeded:v6];
    }

    [(PXGadgetUIViewController *)self gadgetControllerFinishedUpdatingDataSourceWithChange:v46[5]];
  }

  _Block_object_dispose(&v45, 8);
}

void __55__PXGadgetUIViewController__dataSourceManagerDidChange__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [*(*(*(a1 + 32) + 8) + 40) itemChangesInSection:a2];
  if (([v5 hasIncrementalChanges] & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a3 = 1;
  }
}

void __55__PXGadgetUIViewController__dataSourceManagerDidChange__block_invoke_326(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setDataSource:*(a1 + 40)];
  v2 = [*(a1 + 48) removedIndexes];
  v3 = [*(a1 + 48) insertedIndexes];
  if ([v2 count])
  {
    if ([v2 indexGreaterThanOrEqualToIndex:{objc_msgSend(*(a1 + 56), "numberOfSections")}] != 0x7FFFFFFFFFFFFFFFLL)
    {
      PXAssertGetLog();
    }

    [*(a1 + 56) deleteSections:v2];
  }

  if ([v3 count])
  {
    [*(a1 + 56) insertSections:v3];
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __55__PXGadgetUIViewController__dataSourceManagerDidChange__block_invoke_327;
  v15[3] = &unk_1E773B028;
  v4 = *(a1 + 48);
  v16 = *(a1 + 56);
  [v4 enumerateMovedIndexesUsingBlock:v15];
  v5 = [*(*(*(a1 + 80) + 8) + 40) sectionsWithItemChanges];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__PXGadgetUIViewController__dataSourceManagerDidChange__block_invoke_2;
  v8[3] = &unk_1E7742EE0;
  v13 = *(a1 + 80);
  v6 = *(a1 + 56);
  v14 = *(a1 + 88);
  v7 = *(a1 + 32);
  v9 = v6;
  v10 = v7;
  v11 = *(a1 + 64);
  v12 = *(a1 + 40);
  [v5 enumerateIndexesUsingBlock:v8];
  if (_HasAnyInsertionsForChangeDetails(*(*(*(a1 + 80) + 8) + 40)))
  {
    [*(a1 + 72) updateGadgetDataSourceToSpecIfNeeded:*(a1 + 40)];
  }
}

void __55__PXGadgetUIViewController__dataSourceManagerDidChange__block_invoke_2_330(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = PLGadgetsGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) numberOfSections];
    v14 = 134217984;
    v15 = v3;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "Gadget view controller finished UICollectionView batch updates. Current collection view number of sections: %ld", &v14, 0xCu);
  }

  v4 = [*(a1 + 40) changedIndexes];
  v5 = [v4 count];
  v6 = PLGadgetsGetLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = [*(a1 + 48) publiclySafeDescription];
      v14 = 138543618;
      v15 = v8;
      v16 = 2114;
      v17 = v4;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "Reloading Gadget view controller's UICollectionView after batch updates. New data source: %{public}@, Section being reloaded: %{public}@", &v14, 0x16u);
    }

    [*(a1 + 32) reloadSections:v4];
  }

  else
  {
    if (v7)
    {
      v9 = [*(a1 + 48) publiclySafeDescription];
      v14 = 138543362;
      v15 = v9;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "Not reloading gadget view controller's UICollectionView after batch updates. No changed indexes for new data source: %{public}@", &v14, 0xCu);
    }
  }

  [*(a1 + 56) _notifyGadgetsThatGadgetControllerHasAppeared];
  [*(a1 + 64) loadRemainingGadgetsIfNeeded];
  v10 = [*(a1 + 56) dataSource];
  if (v10 != *(a1 + 48))
  {
    v11 = _GetChangeDetails(*(a1 + 64), [*(a1 + 72) identifier], objc_msgSend(v10, "identifier"));
    v12 = *(*(a1 + 80) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  [*(a1 + 56) gadgetControllerFinishedUpdatingDataSourceWithChange:*(*(*(a1 + 80) + 8) + 40)];
  [*(a1 + 56) setBatchUpdating:0];
}

void __55__PXGadgetUIViewController__dataSourceManagerDidChange__block_invoke_2(uint64_t a1, unint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [*(*(*(a1 + 64) + 8) + 40) itemChangesInSection:a2];
  v5 = [v4 removedIndexes];
  v6 = [v4 insertedIndexes];
  if ([v5 count])
  {
    if ([*(a1 + 32) numberOfSections] <= a2)
    {
      PXAssertGetLog();
    }

    if ([v5 indexGreaterThanOrEqualToIndex:{objc_msgSend(*(a1 + 32), "numberOfItemsInSection:", a2)}] != 0x7FFFFFFFFFFFFFFFLL)
    {
      PXAssertGetLog();
    }

    v7 = [MEMORY[0x1E696AC88] px_indexPathsForItems:v5 inSection:a2];
    [*(a1 + 32) deleteItemsAtIndexPaths:v7];
  }

  if ([v6 count])
  {
    v8 = [MEMORY[0x1E696AC88] px_indexPathsForItems:v6 inSection:a2];
    [*(a1 + 32) insertItemsAtIndexPaths:v8];
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__PXGadgetUIViewController__dataSourceManagerDidChange__block_invoke_329;
  v9[3] = &unk_1E773B050;
  v11 = a2;
  v10 = *(a1 + 32);
  [v4 enumerateMovedIndexesUsingBlock:v9];
}

void __55__PXGadgetUIViewController__dataSourceManagerDidChange__block_invoke_329(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AC88] indexPathForItem:a2 inSection:*(a1 + 40)];
  v5 = [MEMORY[0x1E696AC88] indexPathForItem:a3 inSection:*(a1 + 40)];
  [*(a1 + 32) moveItemAtIndexPath:v6 toIndexPath:v5];
}

- (id)presentationEnvironmentForGadget:(id)a3
{
  if (!a3)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXGadgetUIViewController.m" lineNumber:1156 description:{@"Invalid parameter not satisfying: %@", @"gadget"}];
  }

  return [off_1E7721960 defaultPresenterWithViewController:self];
}

- (void)dismissGadgetViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v12 = a3;
  v9 = a5;
  if (!v12)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXGadgetUIViewController.m" lineNumber:1148 description:{@"Invalid parameter not satisfying: %@", @"viewController"}];
  }

  v10 = [(PXGadgetUIViewController *)self presentedViewController];

  if (v10 == v12)
  {
    [(PXGadgetUIViewController *)self dismissViewControllerAnimated:v6 completion:v9];
  }
}

- (void)presentGadgetViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v13 = a3;
  v9 = a5;
  v10 = v13;
  v11 = v9;
  if (!v13)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXGadgetUIViewController.m" lineNumber:1141 description:{@"Invalid parameter not satisfying: %@", @"viewController"}];

    v10 = 0;
  }

  [(PXGadgetUIViewController *)self presentViewController:v10 animated:v6 completion:v11];
}

- (BOOL)gadget:(id)a3 transitionToViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(PXGadgetUIViewController *)self navigationController];
  if (v13)
  {
    [(PXGadgetUIViewController *)self setSelectedGadget:v10];
    [v13 px_pushViewController:v11 animated:v7 completion:v12];
  }

  return v13 != 0;
}

- (void)gadget:(id)a3 animateChanges:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PXGadgetUIViewController *)self isCurrentlyVisible])
  {
    [(PXGadgetUIViewController *)self setGadgetAnimating:1];
    objc_initWeak(&location, self);
    v8 = [(PXGadgetUIViewController *)self collectionView];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __50__PXGadgetUIViewController_gadget_animateChanges___block_invoke;
    v9[3] = &unk_1E7747EB0;
    objc_copyWeak(&v10, &location);
    [v8 performBatchUpdates:v7 completion:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else if (v7)
  {
    v7[2](v7);
  }
}

void __50__PXGadgetUIViewController_gadget_animateChanges___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setGadgetAnimating:0];
}

- (void)gadget:(id)a3 didChange:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  if ((v4 & 0x40) != 0)
  {
    v10 = v6;
    v7 = [(PXGadgetUIViewController *)self isGadgetAnimating];
    v6 = v10;
    if (!v7)
    {
      v8 = [(PXGadgetUIViewController *)self isBatchUpdating];
      v6 = v10;
      if (!v8)
      {
        v9 = [(PXGadgetUIViewController *)self layout];
        [v9 invalidateLayout];

        v6 = v10;
      }
    }
  }
}

- (void)contentSizeCategoryDidChangeNotification:(id)a3
{
  v3 = [(PXGadgetUIViewController *)self layout];
  [v3 invalidateLayout];
}

- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [v9 handleFailureInMethod:a2 object:self file:@"PXGadgetUIViewController.m" lineNumber:1086 description:{@"Method %s is a responsibility of subclass %@", "-[PXGadgetUIViewController collectionView:performDropWithCoordinator:]", v11}];

  abort();
}

- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v10 && (v12 = [v10 section], -[PXGadgetUIViewController dataSource](self, "dataSource"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "numberOfSections"), v13, v12 < v14))
  {
    v15 = [(PXGadgetUIViewController *)self _gadgetAtIndexPath:v11];
    v16 = [v15 gadgetCapabilities];
    v17 = objc_alloc(MEMORY[0x1E69DC838]);
    if (v16)
    {
      v18 = 2;
      v19 = 2;
    }

    else
    {
      v18 = 1;
      v19 = 0;
    }

    v20 = [v17 initWithDropOperation:v18 intent:v19];
  }

  else
  {
    v20 = [objc_alloc(MEMORY[0x1E69DC838]) initWithDropOperation:1 intent:0];
  }

  return v20;
}

- (BOOL)collectionView:(id)a3 canHandleDropSesson:(id)a4
{
  v4 = a4;
  v5 = +[PXImportManager supportedTypeIdentifiers];
  v6 = [v4 hasItemsConformingToTypeIdentifiers:v5];

  return v6;
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v6 = a3;
  if (!a4)
  {
    v9 = v6;
    v7 = [(PXGadgetUIViewController *)self collectionView];
    v8 = [v7 isDecelerating];

    v6 = v9;
    if ((v8 & 1) == 0)
    {
      [(PXGadgetUIViewController *)self _scrollViewDidEndScrolling];
      v6 = v9;
    }
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  [(PXGadgetUIViewController *)self _clearTimerToHandleGadgetsSeen];
  [(PXGadgetUIViewController *)self setIsScrolling:1];
  v5 = [v4 isDecelerating];

  if ((v5 & 1) == 0)
  {
    v6 = [(PXGadgetUIViewController *)self scrollAnimationIdentifier];

    [PXAnimationTracker scrollAnimationDidBegin:v6];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  [(PXGadgetUIViewController *)self _updateGadgetVisibleRects];
  v3 = [off_1E7721878 sharedScheduler];
  [v3 scrollViewDidScroll];
}

- (BOOL)isTogglingSidebarNoRotating
{
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
  {
    v5 = [(PXGadgetUIViewController *)self isDFITogglingSidebar];
    if (v5)
    {
      LOBYTE(v5) = ![(PXGadgetUIViewController *)self isRotatingVerticalLayout];
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (UIEdgeInsets)insetsForSectionHeaders
{
  v2 = [(PXGadgetUIViewController *)self specManager];
  v3 = [v2 currentGadgetSpec];
  [v3 contentInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(PXGadgetUIViewController *)self layout];
  [v10 collectionView:v9 layout:v8 referenceSizeForHeaderInSection:a5];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PXGadgetUIViewController *)self layout];
  [v11 collectionView:v10 layout:v9 sizeForItemAtIndexPath:v8];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(PXGadgetUIViewController *)self layout];
  [v10 collectionView:v9 layout:v8 insetForSectionAtIndex:a5];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.right = v22;
  result.bottom = v21;
  result.left = v20;
  result.top = v19;
  return result;
}

- (BOOL)collectionView:(id)a3 canFocusItemAtIndexPath:(id)a4
{
  v4 = [(PXGadgetUIViewController *)self _gadgetAtIndexPath:a4];
  v5 = ([v4 gadgetCapabilities] >> 1) & 1;

  return v5;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(PXGadgetUIViewController *)self _gadgetAtIndexPath:v6];
  if (objc_opt_respondsToSelector())
  {
    [v7 userDidSelectGadget];
  }

  [v8 deselectItemAtIndexPath:v6 animated:0];
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v14 = a4;
  v6 = [(PXGadgetUIViewController *)self _gadgetForCollectionViewCell:?];
  if (v6)
  {
    if ([(PXGadgetUIViewController *)self _isUsingDeprecatedViewLoadingForGadget:v6])
    {
      v7 = v14;
      v8 = [v7 contentView];
      v9 = [v7 gadgetContentView];
      v10 = [v9 superview];

      if (v8 == v10)
      {
        if ([(PXGadgetUIViewController *)self isContentVisible]&& (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v6 contentViewDidDisappear];
        }

        if (objc_opt_respondsToSelector())
        {
          v11 = [v6 contentViewController];
          v12 = v11;
          if (v11)
          {
            [v11 willMoveToParentViewController:0];
            [v12 removeFromParentViewController];
          }
        }

        [v7 setGadgetContentView:0];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      [v6 removeCollectionViewItem:v14];
    }
  }

  v13 = [(PXGadgetUIViewController *)self cellsWantingVisibleRectUpdates];
  [v13 removeObject:v14];
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(PXGadgetUIViewController *)self _gadgetAtIndexPath:a5];
  if (![(PXGadgetUIViewController *)self _isUsingDeprecatedViewLoadingForGadget:v10])
  {
    [v10 prepareCollectionViewItem:v9];
    goto LABEL_12;
  }

  v11 = v9;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v12 = 0;
LABEL_7:
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([v10 contentView], (v13 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      PXAssertGetLog();
    }

    goto LABEL_9;
  }

  v12 = [v10 contentViewController];
  v13 = [v12 view];
  if (!v13)
  {
    goto LABEL_7;
  }

LABEL_9:
  v14 = v13;
  if (v12)
  {
    [(PXGadgetUIViewController *)self addChildViewController:v12];
    [v12 didMoveToParentViewController:self];
  }

  [v11 setGadgetContentView:v14];

LABEL_12:
  if (objc_opt_respondsToSelector())
  {
    v15 = [(PXGadgetUIViewController *)self cellsWantingVisibleRectUpdates];
    [v15 addObject:v9];

    [(PXGadgetUIViewController *)self _updateVisibleRectForGadget:v10 inCell:v9 collectionView:v8];
  }

  if ([(PXGadgetUIViewController *)self isContentVisible]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v16 = [(PXGadgetUIViewController *)self gadgetViewControllerLog];
    if (os_signpost_enabled(v16))
    {
      LOWORD(v17) = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v16, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "GadgetContentWillAppear", "", &v17, 2u);
    }

    [v10 contentViewWillAppear];
    if (os_signpost_enabled(v16))
    {
      LOWORD(v17) = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v16, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "GadgetContentWillAppear", "", &v17, 2u);
    }
  }
}

- (void)collectionView:(id)a3 prefetchItemsAtIndexPaths:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PXGadgetUIViewController *)self gadgetViewControllerLog];
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Gadget_CV_prefetchItems", "", buf, 2u);
  }

  v9 = [v7 firstObject];

  if (v9)
  {
    v10 = [(PXGadgetUIViewController *)self _gadgetAtIndexPath:v9];
    if ([(PXGadgetUIViewController *)self _isUsingDeprecatedViewLoadingForGadget:v10])
    {
      if (objc_opt_respondsToSelector())
      {
        v11 = [v10 contentViewController];

        [v11 view];
LABEL_9:

        goto LABEL_10;
      }

      if (objc_opt_respondsToSelector())
      {
        v11 = [v10 contentView];
        goto LABEL_9;
      }
    }

LABEL_10:
    if (objc_opt_respondsToSelector())
    {
      [v6 bounds];
      [v10 prefetchDuringScrollingForWidth:v12];
    }
  }

  if (os_signpost_enabled(v8))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Gadget_CV_prefetchItems", "", v13, 2u);
  }
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PXGadgetUIViewController *)self _gadgetAtIndexPath:v7];
  if (objc_opt_respondsToSelector())
  {
    [v8 setVisibleContentRect:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  }

  if ([(PXGadgetUIViewController *)self _isUsingDeprecatedViewLoadingForGadget:v8])
  {
    v9 = [v6 dequeueReusableCellWithReuseIdentifier:@"PXGadgetControllerCellReuseIdentifier" forIndexPath:v7];
    [v9 setClipsToBounds:0];
  }

  else
  {
    v10 = [v8 collectionViewItemClass];
    v11 = NSStringFromClass(v10);
    v12 = [v11 stringByAppendingString:@"ReuseIdentifier"];

    if (([(NSMutableSet *)self->_registeredCellReuseIdentifiers containsObject:v12]& 1) == 0)
    {
      [(NSMutableSet *)self->_registeredCellReuseIdentifiers addObject:v12];
      [v6 registerClass:v10 forCellWithReuseIdentifier:v12];
    }

    v9 = [v6 dequeueReusableCellWithReuseIdentifier:v12 forIndexPath:v7];
  }

  [(PXGadgetUIViewController *)self _setGadget:v8 forCollectionViewCell:v9];

  return v9;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v5 = [(PXGadgetUIViewController *)self dataSource];
  v6 = [v5 numberOfItemsInSection:a4];

  return v6;
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  v3 = [(PXGadgetUIViewController *)self dataSource];
  v4 = [v3 numberOfSections];

  return v4;
}

- (CGRect)visibleBounds
{
  v2 = [(PXGadgetUIViewController *)self collectionView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)_updateVisibleRectForGadget:(id)a3 inCell:(id)a4 collectionView:(id)a5
{
  v35 = a3;
  v8 = a4;
  v9 = a5;
  if (objc_opt_respondsToSelector())
  {
    [(PXGadgetUIViewController *)self visibleBounds];
    [v8 convertRect:v9 fromView:?];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [v8 bounds];
    v39.origin.x = v18;
    v39.origin.y = v19;
    v39.size.width = v20;
    v39.size.height = v21;
    v37.origin.x = v11;
    v37.origin.y = v13;
    v37.size.width = v15;
    v37.size.height = v17;
    v38 = CGRectIntersection(v37, v39);
    x = v38.origin.x;
    y = v38.origin.y;
    width = v38.size.width;
    height = v38.size.height;
    if (CGRectIsNull(v38))
    {
      x = *MEMORY[0x1E695F058];
      y = *(MEMORY[0x1E695F058] + 8);
      width = *(MEMORY[0x1E695F058] + 16);
      height = *(MEMORY[0x1E695F058] + 24);
    }

    v26 = [v8 contentView];
    [v26 convertRect:v8 fromView:{x, y, width, height}];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;

    [v35 setVisibleContentRect:{v28, v30, v32, v34}];
  }
}

- (void)_updateGadgetVisibleRects
{
  v18 = *MEMORY[0x1E69E9840];
  if (!self->_updateFlags.collectionNeedsUpdate && ![(PXGadgetUIViewController *)self isBatchUpdating])
  {
    v3 = [(PXGadgetUIViewController *)self cellsWantingVisibleRectUpdates];
    if ([v3 count])
    {
      v4 = [(PXGadgetUIViewController *)self collectionView];
      v5 = [v4 indexPathsForVisibleItems];
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v14;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v14 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v13 + 1) + 8 * i);
            v11 = [v4 cellForItemAtIndexPath:v10];
            if ([v3 containsObject:v11])
            {
              v12 = [(PXGadgetUIViewController *)self _gadgetAtIndexPath:v10];
              [(PXGadgetUIViewController *)self _updateVisibleRectForGadget:v12 inCell:v11 collectionView:v4];
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v7);
      }
    }
  }
}

- (void)_scrollViewDidEndScrolling
{
  [PXAnimationTracker scrollAnimationDidEnd:[(PXGadgetUIViewController *)self scrollAnimationIdentifier]];
  [(PXGadgetUIViewController *)self _setTimerToHandleGadgetsSeen];

  [(PXGadgetUIViewController *)self setIsScrolling:0];
}

- (void)_notifyPresentedGadgetsOfVisibilityChange
{
  v20 = *MEMORY[0x1E69E9840];
  if (!self->_updateFlags.collectionNeedsUpdate)
  {
    v3 = [(PXGadgetUIViewController *)self isContentVisible];
    v13 = [(PXGadgetUIViewController *)self collectionView];
    v4 = [v13 indexPathsForVisibleItems];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (!v5)
    {
      goto LABEL_22;
    }

    v6 = v5;
    v7 = *v16;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(PXGadgetUIViewController *)self _gadgetAtIndexPath:*(*(&v15 + 1) + 8 * i)];
        if (v3)
        {
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            goto LABEL_20;
          }

          v10 = [(PXGadgetUIViewController *)self gadgetViewControllerLog];
          if (os_signpost_enabled(v10))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "GadgetContentWillAppear", "", buf, 2u);
          }

          [v9 contentViewWillAppear];
          if (!os_signpost_enabled(v10))
          {
            goto LABEL_19;
          }

          *buf = 0;
          v11 = v10;
          v12 = "GadgetContentWillAppear";
          goto LABEL_18;
        }

        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_20;
        }

        v10 = [(PXGadgetUIViewController *)self gadgetViewControllerLog];
        if (os_signpost_enabled(v10))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "GadgetContentDidDisappear", "", buf, 2u);
        }

        [v9 contentViewDidDisappear];
        if (os_signpost_enabled(v10))
        {
          *buf = 0;
          v11 = v10;
          v12 = "GadgetContentDidDisappear";
LABEL_18:
          _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, v12, "", buf, 2u);
        }

LABEL_19:

LABEL_20:
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (!v6)
      {
LABEL_22:

        return;
      }
    }
  }
}

- (void)_notifyGadgetsThatGadgetWasDismissed
{
  v2 = [(PXGadgetUIViewController *)self dataSource];
  [v2 enumerateGadgetsUsingBlock:&__block_literal_global_280_122997];
}

void __64__PXGadgetUIViewController__notifyGadgetsThatGadgetWasDismissed__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 gadgetWasDismissed];
  }
}

- (void)_notifyGadgetsThatGadgetControllerHasDisappeared
{
  v2 = [(PXGadgetUIViewController *)self dataSource];
  [v2 enumerateGadgetsUsingBlock:&__block_literal_global_276_123002];
}

void __76__PXGadgetUIViewController__notifyGadgetsThatGadgetControllerHasDisappeared__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 gadgetControllerHasDisappeared];
  }
}

- (void)_notifyGadgetsThatGadgetControllerHasAppeared
{
  v2 = [(PXGadgetUIViewController *)self dataSource];
  [v2 enumerateGadgetsUsingBlock:&__block_literal_global_123005];
}

void __73__PXGadgetUIViewController__notifyGadgetsThatGadgetControllerHasAppeared__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 gadgetControllerHasAppeared];
  }
}

- (void)_setTimerToHandleGadgetsSeen
{
  [(PXGadgetUIViewController *)self _clearTimerToHandleGadgetsSeen];
  objc_initWeak(&location, self);
  v3 = MEMORY[0x1E695DFF0];
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __56__PXGadgetUIViewController__setTimerToHandleGadgetsSeen__block_invoke;
  v8 = &unk_1E7747228;
  objc_copyWeak(&v9, &location);
  v4 = [v3 scheduledTimerWithTimeInterval:0 repeats:&v5 block:2.0];
  [(PXGadgetUIViewController *)self setGadgetSeenTimer:v4, v5, v6, v7, v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __56__PXGadgetUIViewController__setTimerToHandleGadgetsSeen__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleGadgetsSeen];
}

- (void)_clearTimerToHandleGadgetsSeen
{
  v2 = [(PXGadgetUIViewController *)self gadgetSeenTimer];
  [v2 invalidate];
}

- (void)_handleGadgetsSeen
{
  v26 = *MEMORY[0x1E69E9840];
  if (!self->_updateFlags.collectionNeedsUpdate && ![(PXGadgetUIViewController *)self isBatchUpdating]&& [(PXGadgetUIViewController *)self isContentVisible])
  {
    v3 = [(PXGadgetUIViewController *)self collectionView];
    [(PXGadgetUIViewController *)self visibleBounds];
    r2[0] = v4;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = [v3 window];
    v21 = v11;
    if (v11)
    {
      v12 = v11;
      [v11 bounds];
      [v3 convertRect:v12 fromCoordinateSpace:?];
    }

    v13 = [v3 indexPathsForVisibleItems];
    v14 = [(PXGadgetUIViewController *)self seenGadgetIdentifiers];
    memset(&r2[1], 0, 32);
    v23 = 0u;
    v24 = 0u;
    v15 = v13;
    v16 = [v15 countByEnumeratingWithState:&r2[1] objects:v25 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *r2[3];
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*r2[3] != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [v3 layoutAttributesForItemAtIndexPath:*(r2[2] + 8 * i)];
          [v20 frame];
          *&v29.origin.x = r2[0];
          v29.origin.y = v6;
          v29.size.width = v8;
          v29.size.height = v10;
          v28 = CGRectIntersection(v27, v29);
          if (!CGRectIsNull(v28))
          {
            PXSizeIsNull();
          }
        }

        v17 = [v15 countByEnumeratingWithState:&r2[1] objects:v25 count:16];
      }

      while (v17);
    }
  }
}

- (id)_indexPathForGadget:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v5 = [(PXGadgetUIViewController *)self dataSource];
  v6 = v5;
  if (v5)
  {
    [v5 indexPathForGadget:v4];
  }

  else
  {
    v11 = 0u;
  }

  if (*off_1E7721F68)
  {
    v7 = v11 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = 1;
  }

  if (!v7 && *(&v11 + 1) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [MEMORY[0x1E696AC88] indexPathForItem:? inSection:?];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_gadgetAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PXGadgetUIViewController *)self dataSource];
  v6 = [v5 identifier];
  v7 = [v4 section];
  v8 = [v4 item];

  v11[0] = v6;
  v11[1] = v7;
  v11[2] = v8;
  v11[3] = 0x7FFFFFFFFFFFFFFFLL;
  v9 = [v5 gadgetAtIndexPath:v11];

  return v9;
}

- (void)updateIfNeeded
{
  if (self->_updateFlags.collectionNeedsUpdate)
  {
    self->_updateFlags.collectionNeedsUpdate = 0;
    v3 = [(PXGadgetUIViewController *)self collectionView];
    [v3 reloadData];
  }
}

- (void)_updaterNeedsUpdate
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __47__PXGadgetUIViewController__updaterNeedsUpdate__block_invoke;
  v2[3] = &unk_1E774C318;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __47__PXGadgetUIViewController__updaterNeedsUpdate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained updater];
  [v1 updateIfNeeded];
}

- (void)_removeContextMenuInteraction
{
  v3 = [(PXGadgetUIViewController *)self contextMenuInteraction];
  if (v3)
  {
    v5 = v3;
    v4 = [v3 view];
    [v4 removeInteraction:v5];

    [(PXGadgetUIViewController *)self setContextMenuInteraction:0];
    v3 = v5;
  }
}

- (void)_addContextMenuInteraction
{
  if ([(PXGadgetUIViewController *)self isRootGadgetViewController])
  {
    v3 = [(PXGadgetUIViewController *)self contextMenuInteraction];

    if (!v3)
    {
      v5 = [objc_alloc(MEMORY[0x1E69DC8E0]) initWithDelegate:self];
      [(PXGadgetUIViewController *)self setContextMenuInteraction:v5];
      v4 = [(PXGadgetUIViewController *)self view];
      [v4 addInteraction:v5];
    }
  }
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v6 = a5;
  v10 = [(PXGadgetUIViewController *)self interactionPreviewGadget];
  v7 = [(PXGadgetUIViewController *)self isInteractionPreviewCancelled];
  v8 = [(PXGadgetUIViewController *)self interactionPreviewView];
  v9 = [v6 previewViewController];

  if (v9)
  {
    if (objc_opt_respondsToSelector())
    {
      [v10 didDismissPreviewViewController:v9 committing:!v7];
    }
  }

  else if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v10 didDismissPreviewWithPreviewView:v8 committing:!v7];
  }

  [(PXGadgetUIViewController *)self setInteractionPreviewGadget:0];
  [(PXGadgetUIViewController *)self setInteractionPreviewView:0];
  [(PXGadgetUIViewController *)self setIsInteractionPreviewCancelled:0];
}

- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v6 = a5;
  v7 = [(PXGadgetUIViewController *)self interactionPreviewGadget];
  v8 = [(PXGadgetUIViewController *)self interactionPreviewView];
  v9 = [v6 previewViewController];
  [v6 setPreferredCommitStyle:v9 != 0];
  if (v9)
  {
    if (objc_opt_respondsToSelector())
    {
      v10 = v15;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v11 = __109__PXGadgetUIViewController_contextMenuInteraction_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke;
      v12 = v9;
LABEL_7:
      v10[2] = v11;
      v10[3] = &unk_1E774C620;
      v10[4] = v7;
      v10[5] = v12;
      [v6 addCompletion:v10];
    }
  }

  else if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v10 = &v13;
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v11 = __109__PXGadgetUIViewController_contextMenuInteraction_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke_2;
    v12 = v8;
    goto LABEL_7;
  }

  [(PXGadgetUIViewController *)self setIsInteractionPreviewCancelled:0, v13, v14];
}

- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4
{
  v5 = [(PXGadgetUIViewController *)self interactionPreviewView:a3];
  v6 = [(PXGadgetUIViewController *)self interactionPreviewGadget];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_7:
    PXAssertGetLog();
  }

  v7 = [v6 previewParametersForTargetPreviewView:v5];
  v8 = v7;
  if (!v5)
  {
    goto LABEL_7;
  }

  if (v7)
  {
    v9 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v5 parameters:v7];

    goto LABEL_8;
  }

LABEL_6:
  v9 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v5];
LABEL_8:

  return v9;
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [(PXGadgetUIViewController *)self view];
  v8 = [(PXGadgetUIViewController *)self gadgetAtLocation:v7 inCoordinateSpace:x, y];
  if (!v8 || (objc_opt_respondsToSelector() & 1) == 0 || ([v8 targetPreviewViewForLocation:v7 inCoordinateSpace:{x, y}], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v12 = 0;
    goto LABEL_9;
  }

  v10 = v9;
  if (objc_opt_respondsToSelector())
  {
    v11 = [v8 previewViewControllerAtLocation:v7 fromSourceView:{x, y}];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      if (!v11)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

LABEL_13:
    v14 = [v8 contextMenuWithSuggestedActions:MEMORY[0x1E695E0F0]];
    v15 = [v14 children];
    v12 = [v15 count];

    if (v12 || !v11)
    {
      if (!v12)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

LABEL_15:
    v16 = [v11 px_previewActionMenus];
    v17 = [v16 count];

    if (!v17)
    {
LABEL_16:
      v12 = 0;
      goto LABEL_19;
    }

LABEL_18:
    [(PXGadgetUIViewController *)self setInteractionPreviewGadget:v8];
    [(PXGadgetUIViewController *)self setInteractionPreviewView:v10];
    [(PXGadgetUIViewController *)self setIsInteractionPreviewCancelled:1];
    v18 = MEMORY[0x1E69DC8D8];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __82__PXGadgetUIViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
    v22[3] = &unk_1E7740028;
    v23 = v11;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __82__PXGadgetUIViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2;
    v19[3] = &unk_1E773AFD8;
    v20 = v8;
    v11 = v23;
    v21 = v11;
    v12 = [v18 configurationWithIdentifier:0 previewProvider:v22 actionProvider:v19];

    goto LABEL_19;
  }

  v11 = 0;
  v12 = 0;
  if (objc_opt_respondsToSelector())
  {
    goto LABEL_13;
  }

LABEL_19:

LABEL_9:

  return v12;
}

id __82__PXGadgetUIViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([*(a1 + 32) contextMenuWithSuggestedActions:v3], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = [v5 px_previewActionMenus];
      v4 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F1741150 children:v6];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)setLayout:(id)a3
{
  v5 = a3;
  layout = self->_layout;
  if (layout != v5)
  {
    v9 = v5;
    [(PXGadgetCollectionViewLayout *)layout setDelegate:0];
    objc_storeStrong(&self->_layout, a3);
    [(PXGadgetCollectionViewLayout *)self->_layout setDelegate:self];
    v7 = self->_layout;
    v8 = [(PXGadgetUIViewController *)self collectionView];
    [v8 setCollectionViewLayout:v7];

    v5 = v9;
  }
}

- (void)setContentVisible:(BOOL)a3
{
  if (self->_isContentVisible != a3)
  {
    self->_isContentVisible = a3;
    if ([(PXGadgetUIViewController *)self isViewLoaded])
    {
      [(PXGadgetUIViewController *)self _notifyPresentedGadgetsOfVisibilityChange];
      if (self->_isContentVisible)
      {

        [(PXGadgetUIViewController *)self _setTimerToHandleGadgetsSeen];
      }

      else
      {

        [(PXGadgetUIViewController *)self _clearTimerToHandleGadgetsSeen];
      }
    }
  }
}

- (void)setDataSource:(id)a3
{
  v9 = a3;
  v5 = self->_dataSource;
  v6 = v5;
  if (v5 == v9)
  {
    goto LABEL_5;
  }

  v7 = [(PXGadgetDataSource *)v5 isEqual:?];

  if ((v7 & 1) == 0)
  {
    objc_storeStrong(&self->_dataSource, a3);
    if ([(PXGadgetUIViewController *)self isRootGadgetViewController])
    {
      v8 = [(PXGadgetDataSource *)v9 hasNoContentGadget];
      v6 = [(PXGadgetUIViewController *)self collectionView];
      [v6 setAlwaysBounceVertical:!v8];
LABEL_5:
    }
  }
}

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_backgroundColor != v4)
  {
    v12 = v4;
    v6 = [(UIColor *)v4 isEqual:?];
    v5 = v12;
    if ((v6 & 1) == 0)
    {
      v7 = [(UIColor *)v12 copy];
      backgroundColor = self->_backgroundColor;
      self->_backgroundColor = v7;

      v9 = [(PXGadgetUIViewController *)self isViewLoaded];
      v5 = v12;
      if (v9)
      {
        v10 = self->_backgroundColor;
        v11 = [(PXGadgetUIViewController *)self collectionView];
        [v11 setBackgroundColor:v10];

        v5 = v12;
      }
    }
  }
}

- (id)debugURLsForDiagnostics
{
  v3 = objc_opt_new();
  v4 = [(PXGadgetUIViewController *)self dataSource];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__PXGadgetUIViewController_debugURLsForDiagnostics__block_invoke;
  v7[3] = &unk_1E773AFB0;
  v5 = v3;
  v8 = v5;
  [v4 enumerateGadgetsUsingBlock:v7];

  return v5;
}

void __51__PXGadgetUIViewController_debugURLsForDiagnostics__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [v4 debugURLsForDiagnostics];
    [*(a1 + 32) addObjectsFromArray:v3];
  }
}

- (id)gadgetAtLocation:(CGPoint)a3 inCoordinateSpace:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(PXGadgetUIViewController *)self collectionView];
  [v8 convertPoint:v7 fromCoordinateSpace:{x, y}];
  v10 = v9;
  v12 = v11;

  v13 = [v8 indexPathForItemAtPoint:{v10, v12}];
  if (v13)
  {
    v14 = [(PXGadgetUIViewController *)self _gadgetAtIndexPath:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)reloadContent
{
  v3 = [(PXGadgetUIViewController *)self dataSourceManager];
  [v3 removeCachedProviders];
  [v3 beginLoadingInitialGadgets:{-[PXGadgetUIViewController numberOfInitialGadgetsToLoad](self, "numberOfInitialGadgetsToLoad")}];
}

- (void)_applicationDidEnterBackground:(id)a3
{
  if ([(PXGadgetUIViewController *)self isRootGadgetViewController])
  {
    [(PXGadgetUIViewController *)self rootGadgetControllerDidDisappear];
    [(PXGadgetUIViewController *)self _notifyGadgetsThatGadgetControllerHasDisappeared];

    [(PXGadgetUIViewController *)self _notifyGadgetsThatGadgetWasDismissed];
  }
}

- (void)_applicationWillEnterForeground:(id)a3
{
  if ([(PXGadgetUIViewController *)self px_isVisible]&& [(PXGadgetUIViewController *)self isRootGadgetViewController])
  {
    [(PXGadgetUIViewController *)self _notifyGadgetsThatGadgetControllerHasAppeared];

    [(PXGadgetUIViewController *)self rootGadgetControllerWillAppear];
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = PXGadgetUIViewController;
  [(PXGadgetUIViewController *)&v4 dealloc];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = PXGadgetUIViewController;
  [(PXGadgetUIViewController *)&v13 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  if ([(PXGadgetUIViewController *)self isCurrentlyVisible])
  {
    [(PXGadgetUIViewController *)self setIsRotatingVerticalLayout:0];
    if ([(PXGadgetUIViewController *)self _scrollAxis]== 1)
    {
      v8 = [(PXGadgetUIViewController *)self collectionView];
      [v8 bounds];
      v10 = height != v9;

      [(PXGadgetUIViewController *)self setIsRotatingVerticalLayout:v10];
    }

    v11[4] = self;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __79__PXGadgetUIViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v12[3] = &unk_1E774BC60;
    v12[4] = self;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __79__PXGadgetUIViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
    v11[3] = &unk_1E774BC60;
    [v7 animateAlongsideTransition:v12 completion:v11];
  }
}

void __79__PXGadgetUIViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) layout];
  [v2 invalidateLayout];

  v3 = [*(a1 + 32) collectionView];
  [v3 layoutIfNeeded];
}

- (int64_t)_scrollAxis
{
  v2 = [(PXGadgetUIViewController *)self layout];
  [v2 scrollDirection];

  PXAxisFromUICollectionViewScrollDirection();
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = PXGadgetUIViewController;
  [(PXGadgetUIViewController *)&v3 viewDidLayoutSubviews];
  [(PXGadgetUIViewController *)self _updateGadgetVisibleRects];
}

- (void)viewWillLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = PXGadgetUIViewController;
  [(PXGadgetUIViewController *)&v6 viewWillLayoutSubviews];
  v3 = [(PXGadgetUIViewController *)self specManager];
  v4 = [(PXGadgetUIViewController *)self dataSource];
  [v3 updateGadgetDataSourceToSpecIfNeeded:v4];

  v5 = [off_1E7721878 sharedScheduler];
  [v5 scrollViewWillLayoutSubviews];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v12.receiver = self;
  v12.super_class = PXGadgetUIViewController;
  [(PXGadgetUIViewController *)&v12 viewDidDisappear:a3];
  [(PXGadgetUIViewController *)self setCurrentlyVisible:0];
  [(PXGadgetUIViewController *)self _removeContextMenuInteraction];
  if ([(PXGadgetUIViewController *)self isRootGadgetViewController])
  {
    [(PXGadgetUIViewController *)self rootGadgetControllerDidDisappear];
    [(PXGadgetUIViewController *)self _notifyGadgetsThatGadgetControllerHasDisappeared];
    v4 = [(PXGadgetUIViewController *)self navigationController];
    v5 = [v4 topViewController];
    if (v5 != self)
    {
      if (([(PXGadgetUIViewController *)self isBeingDismissed]& 1) != 0)
      {
        v6 = [(PXGadgetUIViewController *)self isViewLoaded];

        if (!v6)
        {
          goto LABEL_14;
        }

        goto LABEL_11;
      }

LABEL_13:

      goto LABEL_14;
    }

    v7 = [(PXGadgetUIViewController *)self presentedViewController];
    if (v7)
    {
      v8 = v7;
      if (([(PXGadgetUIViewController *)self isBeingDismissed]& 1) == 0)
      {

        goto LABEL_13;
      }

      v9 = [(PXGadgetUIViewController *)self isViewLoaded];

      if ((v9 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v10 = [(PXGadgetUIViewController *)self isViewLoaded];

      if ((v10 & 1) == 0)
      {
LABEL_14:
        v11 = [(PXGadgetUIViewController *)self dataSourceManager];
        [v11 setCanLoadRemainingDataForProviders:0];

        return;
      }
    }

LABEL_11:
    [(PXGadgetUIViewController *)self _notifyGadgetsThatGadgetWasDismissed];
    goto LABEL_14;
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PXGadgetUIViewController;
  [(PXGadgetUIViewController *)&v5 viewWillDisappear:a3];
  v4 = [(PXGadgetUIViewController *)self collectionView];
  if (([v4 isDragging] & 1) != 0 || objc_msgSend(v4, "isDecelerating"))
  {
    [(PXGadgetUIViewController *)self _scrollViewDidEndScrolling];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PXGadgetUIViewController;
  [(PXGadgetUIViewController *)&v6 viewDidAppear:a3];
  [(PXGadgetUIViewController *)self setSelectedGadget:0];
  v4 = [(PXGadgetUIViewController *)self dataSourceManager];
  if ([(PXGadgetUIViewController *)self isRootGadgetViewController])
  {
    [v4 setCanLoadRemainingDataForProviders:1];
    [(PXGadgetUIViewController *)self _notifyGadgetsThatGadgetControllerHasAppeared];
  }

  p_updateFlags = &self->_updateFlags;
  if (p_updateFlags->loadRemaingGadgetsAfterViewAppeared)
  {
    [v4 loadRemainingGadgetsIfNeeded];
    p_updateFlags->loadRemaingGadgetsAfterViewAppeared = 0;
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PXGadgetUIViewController;
  [(PXGadgetUIViewController *)&v4 viewWillAppear:a3];
  if ([(PXGadgetUIViewController *)self isRootGadgetViewController])
  {
    [(PXGadgetUIViewController *)self rootGadgetControllerWillAppear];
  }

  [(PXGadgetUIViewController *)self updateIfNeeded];
  [(PXGadgetUIViewController *)self _addContextMenuInteraction];
  [(PXGadgetUIViewController *)self setCurrentlyVisible:1];
  [(PXGadgetUIViewController *)self _setTimerToHandleGadgetsSeen];
}

- (void)_initializeHelpers
{
  v2 = [(PXGadgetUIViewController *)self layout];
  [v2 scrollDirection];

  PXAxisFromUICollectionViewScrollDirection();
}

- (void)_initializeDataSource
{
  v5 = [(PXGadgetUIViewController *)self dataSourceManager];
  v3 = [v5 dataSource];
  [(PXGadgetUIViewController *)self setDataSource:v3];

  v4 = [(PXGadgetUIViewController *)self dataSourceManager];
  [v4 registerChangeObserver:self context:PXDataSourceManagerObservationContext_122915];

  self->_updateFlags.collectionNeedsUpdate = 1;
  [v5 beginLoadingInitialGadgets:{-[PXGadgetUIViewController numberOfInitialGadgetsToLoad](self, "numberOfInitialGadgetsToLoad")}];
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = PXGadgetUIViewController;
  [(PXGadgetUIViewController *)&v9 viewDidLoad];
  v3 = [(PXGadgetUIViewController *)self gadgetViewControllerLog];
  if (os_signpost_enabled(v3))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "GadgetVCViewDidLoad", "", v8, 2u);
  }

  v4 = [(PXGadgetUIViewController *)self collectionView];
  [v4 setClipsToBounds:0];
  v5 = [(PXGadgetUIViewController *)self backgroundColor];
  [v4 setBackgroundColor:v5];

  [v4 setDropDelegate:self];
  [v4 setAlwaysBounceVertical:1];
  [v4 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PXGadgetControllerCellReuseIdentifier"];
  [v4 _setAutomaticContentOffsetAdjustmentEnabled:0];
  [v4 setPrefetchDataSource:self];
  [(PXGadgetUIViewController *)self _initializeHelpers];
  [(PXGadgetUIViewController *)self _initializeDataSource];
  if ([(PXGadgetUIViewController *)self isRootGadgetViewController]&& [(PXGadgetUIViewController *)self allowsBarManagement])
  {
    [(UIViewController *)self px_enableBarAppearance];
    [v4 setContentInset:{0.0, 0.0, 16.0, 0.0}];
  }

  v6 = [(UIViewController *)self px_splitViewController];
  [v6 registerChangeObserver:self];
  v7 = [(PXGadgetUIViewController *)self gadgetViewControllerLog];
  if (os_signpost_enabled(v7))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "GadgetVCViewDidLoad", "", v8, 2u);
  }
}

- (PXGadgetUIViewController)initWithLayout:(id)a3 dataSourceManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v27.receiver = self;
  v27.super_class = PXGadgetUIViewController;
  v9 = [(PXGadgetUIViewController *)&v27 initWithCollectionViewLayout:v7];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_layout, a3);
    [(PXGadgetCollectionViewLayout *)v10->_layout setDelegate:v10];
    v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    registeredCellReuseIdentifiers = v10->_registeredCellReuseIdentifiers;
    v10->_registeredCellReuseIdentifiers = v11;

    v13 = [[off_1E7721940 alloc] initWithTarget:v10 needsUpdateSelector:sel__updaterNeedsUpdate];
    updater = v10->_updater;
    v10->_updater = v13;

    objc_storeStrong(&v10->_dataSourceManager, a4);
    [(PXGadgetDataSourceManager *)v10->_dataSourceManager setNextGadgetResponder:v10];
    v15 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v15 userInterfaceIdiom] == 6)
    {
      [MEMORY[0x1E69DC888] clearColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] systemBackgroundColor];
    }
    v16 = ;
    objc_storeStrong(&v10->_backgroundColor, v16);

    v10->_numberOfInitialGadgetsToLoad = 3;
    v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    seenGadgetIdentifiers = v10->_seenGadgetIdentifiers;
    v10->_seenGadgetIdentifiers = v17;

    v10->_isContentVisible = 1;
    v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    cellsWantingVisibleRectUpdates = v10->_cellsWantingVisibleRectUpdates;
    v10->_cellsWantingVisibleRectUpdates = v19;

    v21 = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    cellsToGadgets = v10->_cellsToGadgets;
    v10->_cellsToGadgets = v21;

    v10->_allowsBarManagement = 1;
    [(PXGadgetUIViewController *)v10 px_enableExtendedTraitCollection];
    v23 = [MEMORY[0x1E696AD88] defaultCenter];
    [v23 addObserver:v10 selector:sel_contentSizeCategoryDidChangeNotification_ name:*MEMORY[0x1E69DDC48] object:0];

    v24 = [MEMORY[0x1E696AD88] defaultCenter];
    [v24 addObserver:v10 selector:sel__applicationWillEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];

    v25 = [MEMORY[0x1E696AD88] defaultCenter];
    [v25 addObserver:v10 selector:sel__applicationDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];
  }

  return v10;
}

@end