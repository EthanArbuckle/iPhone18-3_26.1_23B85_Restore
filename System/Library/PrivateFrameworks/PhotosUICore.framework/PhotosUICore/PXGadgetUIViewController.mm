@interface PXGadgetUIViewController
- (BOOL)collectionView:(id)view canFocusItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view canHandleDropSesson:(id)sesson;
- (BOOL)gadget:(id)gadget transitionToViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (BOOL)isTogglingSidebarNoRotating;
- (BOOL)px_scrollToInitialPositionAnimated:(BOOL)animated;
- (CGRect)visibleBounds;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (OS_os_log)gadgetViewControllerLog;
- (PXGadgetUIViewController)initWithLayout:(id)layout dataSourceManager:(id)manager;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (UIEdgeInsets)insetsForSectionHeaders;
- (id)_gadgetAtIndexPath:(id)path;
- (id)_indexPathForGadget:(id)gadget;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration;
- (id)debugURLsForDiagnostics;
- (id)gadgetAtLocation:(CGPoint)location inCoordinateSpace:(id)space;
- (id)presentationEnvironmentForGadget:(id)gadget;
- (id)px_diagnosticsItemProvidersForPoint:(CGPoint)point inCoordinateSpace:(id)space;
- (int64_t)_scrollAxis;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (void)_addContextMenuInteraction;
- (void)_applicationDidEnterBackground:(id)background;
- (void)_applicationWillEnterForeground:(id)foreground;
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
- (void)_updateVisibleRectForGadget:(id)gadget inCell:(id)cell collectionView:(id)view;
- (void)_updaterNeedsUpdate;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator;
- (void)collectionView:(id)view prefetchItemsAtIndexPaths:(id)paths;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)contentSizeCategoryDidChangeNotification:(id)notification;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)dealloc;
- (void)dismissGadgetViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)gadget:(id)gadget animateChanges:(id)changes;
- (void)gadget:(id)gadget didChange:(unint64_t)change;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)presentGadgetViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)reloadContent;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setBackgroundColor:(id)color;
- (void)setContentVisible:(BOOL)visible;
- (void)setDataSource:(id)source;
- (void)setLayout:(id)layout;
- (void)updateIfNeeded;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
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

- (id)px_diagnosticsItemProvidersForPoint:(CGPoint)point inCoordinateSpace:(id)space
{
  y = point.y;
  x = point.x;
  spaceCopy = space;
  v13.receiver = self;
  v13.super_class = PXGadgetUIViewController;
  v8 = [(UIViewController *)&v13 px_diagnosticsItemProvidersForPoint:spaceCopy inCoordinateSpace:x, y];
  v9 = [v8 mutableCopy];

  v10 = [(PXGadgetUIViewController *)self gadgetAtLocation:spaceCopy inCoordinateSpace:x, y];
  if (objc_opt_respondsToSelector())
  {
    v11 = [v10 px_diagnosticsItemProvidersForPoint:spaceCopy inCoordinateSpace:{x, y}];
    [v9 addObjectsFromArray:v11];
  }

  return v9;
}

- (BOOL)px_scrollToInitialPositionAnimated:(BOOL)animated
{
  animatedCopy = animated;
  collectionView = [(PXGadgetUIViewController *)self collectionView];
  [collectionView px_scrollToEdge:1 animated:animatedCopy];

  return 1;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXDataSourceManagerObservationContext_122915 == context)
  {
    if ((changeCopy & 1) == 0)
    {
      goto LABEL_8;
    }

    v9 = observableCopy;
    [(PXGadgetUIViewController *)self _dataSourceManagerDidChange];
    goto LABEL_7;
  }

  if ((changeCopy & 1) != 0 && PXGadgetSpecManagerObservationContext == context)
  {
    v9 = observableCopy;
    [(PXGadgetUIViewController *)self _gadgetSpecDidChange];
LABEL_7:
    observableCopy = v9;
  }

LABEL_8:
}

- (void)_gadgetSpecDidChange
{
  specManager = [(PXGadgetUIViewController *)self specManager];
  layout = [(PXGadgetUIViewController *)self layout];
  currentGadgetSpec = [specManager currentGadgetSpec];
  [layout setSpec:currentGadgetSpec];

  currentGadgetSpec2 = [specManager currentGadgetSpec];
  [currentGadgetSpec2 contentInsets];
  v7 = v6;
  v9 = v8;

  navigationItem = [(PXGadgetUIViewController *)self navigationItem];
  [navigationItem largeTitleInsets];
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

  navigationItem2 = [(PXGadgetUIViewController *)self navigationItem];
  [navigationItem2 setLargeTitleInsets:{0.0, v7, 0.0, v9}];

  navigationItem3 = [(PXGadgetUIViewController *)self navigationItem];
  navigationBar = [navigationItem3 navigationBar];
  [navigationBar setNeedsLayout];

LABEL_8:
  if (![(PXGadgetUIViewController *)self isBatchUpdating])
  {
    [layout invalidateLayout];
  }
}

- (void)_dataSourceManagerDidChange
{
  v59 = *MEMORY[0x1E69E9840];
  collectionView = [(PXGadgetUIViewController *)self collectionView];
  dataSourceManager = [(PXGadgetUIViewController *)self dataSourceManager];
  dataSource = [(PXGadgetUIViewController *)self dataSource];
  dataSource2 = [dataSourceManager dataSource];
  specManager = [(PXGadgetUIViewController *)self specManager];
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__122916;
  v49 = __Block_byref_object_dispose__122917;
  v50 = _GetChangeDetails(dataSourceManager, [dataSource identifier], objc_msgSend(dataSource2, "identifier"));
  if ([(PXGadgetUIViewController *)self isCurrentlyVisible])
  {
    v7 = PLGadgetsGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "Gadget view controller is visible and evaulating changes.", buf, 2u);
    }

    sectionChanges = [v46[5] sectionChanges];
    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    hasIncrementalChanges = [sectionChanges hasIncrementalChanges];
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
      v33 = dataSource2;
      v34 = sectionChanges;
      v35 = collectionView;
      v39 = a2;
      v36 = dataSource;
      v38 = &v45;
      v37 = specManager;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __55__PXGadgetUIViewController__dataSourceManagerDidChange__block_invoke_2_330;
      v24[3] = &unk_1E773B0A0;
      v25 = v35;
      v26 = v34;
      v27 = v33;
      selfCopy = self;
      v29 = dataSourceManager;
      v31 = &v45;
      v30 = v36;
      [v25 performBatchUpdates:v32 completion:v24];
    }

    else
    {
      v15 = PLGadgetsGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        publiclySafeDescription = [dataSource2 publiclySafeDescription];
        publiclySafeDescription2 = [dataSource publiclySafeDescription];
        numberOfSections = [collectionView numberOfSections];
        v19 = v46[5];
        *buf = 138544130;
        v52 = publiclySafeDescription;
        v53 = 2114;
        v54 = publiclySafeDescription2;
        v55 = 2048;
        v56 = numberOfSections;
        v57 = 2112;
        v58 = v19;
        _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_DEFAULT, "Gadget view controller will not perform UICollectionView batch updates. Setting new data source: %{public}@, Old data source: %{public}@, UICollectionView number of sections: %ld, Change details: %@", buf, 0x2Au);
      }

      [(PXGadgetUIViewController *)self setDataSource:dataSource2];
      if (_HasAnyInsertionsForChangeDetails(v46[5]))
      {
        [specManager updateGadgetDataSourceToSpecIfNeeded:dataSource2];
      }

      [(PXGadgetUIViewController *)self _notifyGadgetsThatGadgetControllerHasAppeared];
      v20 = PLGadgetsGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        publiclySafeDescription3 = [dataSource2 publiclySafeDescription];
        *buf = 138543362;
        v52 = publiclySafeDescription3;
        _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_DEFAULT, "Reloading Gadget view controller's UICollectionView with new data source: %{public}@", buf, 0xCu);
      }

      [collectionView reloadData];
      [(PXGadgetUIViewController *)self gadgetControllerFinishedUpdatingDataSourceWithChange:v46[5]];
    }

    _Block_object_dispose(&v41, 8);
  }

  else
  {
    v12 = PLGadgetsGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      publiclySafeDescription4 = [dataSource2 publiclySafeDescription];
      publiclySafeDescription5 = [dataSource publiclySafeDescription];
      *buf = 138543618;
      v52 = publiclySafeDescription4;
      v53 = 2114;
      v54 = publiclySafeDescription5;
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEFAULT, "Gadget view controller not yet visible. Setting new data source: %{public}@, old data source: %{public}@", buf, 0x16u);
    }

    [(PXGadgetUIViewController *)self setDataSource:dataSource2];
    self->_updateFlags = 257;
    if (_HasAnyInsertionsForChangeDetails(v46[5]))
    {
      [specManager updateGadgetDataSourceToSpecIfNeeded:dataSource2];
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

- (id)presentationEnvironmentForGadget:(id)gadget
{
  if (!gadget)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGadgetUIViewController.m" lineNumber:1156 description:{@"Invalid parameter not satisfying: %@", @"gadget"}];
  }

  return [off_1E7721960 defaultPresenterWithViewController:self];
}

- (void)dismissGadgetViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  if (!controllerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGadgetUIViewController.m" lineNumber:1148 description:{@"Invalid parameter not satisfying: %@", @"viewController"}];
  }

  presentedViewController = [(PXGadgetUIViewController *)self presentedViewController];

  if (presentedViewController == controllerCopy)
  {
    [(PXGadgetUIViewController *)self dismissViewControllerAnimated:animatedCopy completion:completionCopy];
  }
}

- (void)presentGadgetViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  v10 = controllerCopy;
  v11 = completionCopy;
  if (!controllerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGadgetUIViewController.m" lineNumber:1141 description:{@"Invalid parameter not satisfying: %@", @"viewController"}];

    v10 = 0;
  }

  [(PXGadgetUIViewController *)self presentViewController:v10 animated:animatedCopy completion:v11];
}

- (BOOL)gadget:(id)gadget transitionToViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  gadgetCopy = gadget;
  controllerCopy = controller;
  completionCopy = completion;
  navigationController = [(PXGadgetUIViewController *)self navigationController];
  if (navigationController)
  {
    [(PXGadgetUIViewController *)self setSelectedGadget:gadgetCopy];
    [navigationController px_pushViewController:controllerCopy animated:animatedCopy completion:completionCopy];
  }

  return navigationController != 0;
}

- (void)gadget:(id)gadget animateChanges:(id)changes
{
  gadgetCopy = gadget;
  changesCopy = changes;
  if ([(PXGadgetUIViewController *)self isCurrentlyVisible])
  {
    [(PXGadgetUIViewController *)self setGadgetAnimating:1];
    objc_initWeak(&location, self);
    collectionView = [(PXGadgetUIViewController *)self collectionView];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __50__PXGadgetUIViewController_gadget_animateChanges___block_invoke;
    v9[3] = &unk_1E7747EB0;
    objc_copyWeak(&v10, &location);
    [collectionView performBatchUpdates:changesCopy completion:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else if (changesCopy)
  {
    changesCopy[2](changesCopy);
  }
}

void __50__PXGadgetUIViewController_gadget_animateChanges___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setGadgetAnimating:0];
}

- (void)gadget:(id)gadget didChange:(unint64_t)change
{
  changeCopy = change;
  gadgetCopy = gadget;
  if ((changeCopy & 0x40) != 0)
  {
    v10 = gadgetCopy;
    isGadgetAnimating = [(PXGadgetUIViewController *)self isGadgetAnimating];
    gadgetCopy = v10;
    if (!isGadgetAnimating)
    {
      isBatchUpdating = [(PXGadgetUIViewController *)self isBatchUpdating];
      gadgetCopy = v10;
      if (!isBatchUpdating)
      {
        layout = [(PXGadgetUIViewController *)self layout];
        [layout invalidateLayout];

        gadgetCopy = v10;
      }
    }
  }
}

- (void)contentSizeCategoryDidChangeNotification:(id)notification
{
  layout = [(PXGadgetUIViewController *)self layout];
  [layout invalidateLayout];
}

- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator
{
  viewCopy = view;
  coordinatorCopy = coordinator;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGadgetUIViewController.m" lineNumber:1086 description:{@"Method %s is a responsibility of subclass %@", "-[PXGadgetUIViewController collectionView:performDropWithCoordinator:]", v11}];

  abort();
}

- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path
{
  viewCopy = view;
  updateCopy = update;
  pathCopy = path;
  v11 = pathCopy;
  if (pathCopy && (v12 = [pathCopy section], -[PXGadgetUIViewController dataSource](self, "dataSource"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "numberOfSections"), v13, v12 < v14))
  {
    v15 = [(PXGadgetUIViewController *)self _gadgetAtIndexPath:v11];
    gadgetCapabilities = [v15 gadgetCapabilities];
    v17 = objc_alloc(MEMORY[0x1E69DC838]);
    if (gadgetCapabilities)
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

- (BOOL)collectionView:(id)view canHandleDropSesson:(id)sesson
{
  sessonCopy = sesson;
  v5 = +[PXImportManager supportedTypeIdentifiers];
  v6 = [sessonCopy hasItemsConformingToTypeIdentifiers:v5];

  return v6;
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  draggingCopy = dragging;
  if (!decelerate)
  {
    v9 = draggingCopy;
    collectionView = [(PXGadgetUIViewController *)self collectionView];
    isDecelerating = [collectionView isDecelerating];

    draggingCopy = v9;
    if ((isDecelerating & 1) == 0)
    {
      [(PXGadgetUIViewController *)self _scrollViewDidEndScrolling];
      draggingCopy = v9;
    }
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  [(PXGadgetUIViewController *)self _clearTimerToHandleGadgetsSeen];
  [(PXGadgetUIViewController *)self setIsScrolling:1];
  isDecelerating = [draggingCopy isDecelerating];

  if ((isDecelerating & 1) == 0)
  {
    scrollAnimationIdentifier = [(PXGadgetUIViewController *)self scrollAnimationIdentifier];

    [PXAnimationTracker scrollAnimationDidBegin:scrollAnimationIdentifier];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  [(PXGadgetUIViewController *)self _updateGadgetVisibleRects];
  sharedScheduler = [off_1E7721878 sharedScheduler];
  [sharedScheduler scrollViewDidScroll];
}

- (BOOL)isTogglingSidebarNoRotating
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    isDFITogglingSidebar = [(PXGadgetUIViewController *)self isDFITogglingSidebar];
    if (isDFITogglingSidebar)
    {
      LOBYTE(isDFITogglingSidebar) = ![(PXGadgetUIViewController *)self isRotatingVerticalLayout];
    }
  }

  else
  {
    LOBYTE(isDFITogglingSidebar) = 0;
  }

  return isDFITogglingSidebar;
}

- (UIEdgeInsets)insetsForSectionHeaders
{
  specManager = [(PXGadgetUIViewController *)self specManager];
  currentGadgetSpec = [specManager currentGadgetSpec];
  [currentGadgetSpec contentInsets];
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

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  layoutCopy = layout;
  viewCopy = view;
  layout = [(PXGadgetUIViewController *)self layout];
  [layout collectionView:viewCopy layout:layoutCopy referenceSizeForHeaderInSection:section];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  pathCopy = path;
  layoutCopy = layout;
  viewCopy = view;
  layout = [(PXGadgetUIViewController *)self layout];
  [layout collectionView:viewCopy layout:layoutCopy sizeForItemAtIndexPath:pathCopy];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  layoutCopy = layout;
  viewCopy = view;
  layout = [(PXGadgetUIViewController *)self layout];
  [layout collectionView:viewCopy layout:layoutCopy insetForSectionAtIndex:index];
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

- (BOOL)collectionView:(id)view canFocusItemAtIndexPath:(id)path
{
  v4 = [(PXGadgetUIViewController *)self _gadgetAtIndexPath:path];
  v5 = ([v4 gadgetCapabilities] >> 1) & 1;

  return v5;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = [(PXGadgetUIViewController *)self _gadgetAtIndexPath:pathCopy];
  if (objc_opt_respondsToSelector())
  {
    [v7 userDidSelectGadget];
  }

  [viewCopy deselectItemAtIndexPath:pathCopy animated:0];
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  v6 = [(PXGadgetUIViewController *)self _gadgetForCollectionViewCell:?];
  if (v6)
  {
    if ([(PXGadgetUIViewController *)self _isUsingDeprecatedViewLoadingForGadget:v6])
    {
      v7 = cellCopy;
      contentView = [v7 contentView];
      gadgetContentView = [v7 gadgetContentView];
      superview = [gadgetContentView superview];

      if (contentView == superview)
      {
        if ([(PXGadgetUIViewController *)self isContentVisible]&& (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v6 contentViewDidDisappear];
        }

        if (objc_opt_respondsToSelector())
        {
          contentViewController = [v6 contentViewController];
          v12 = contentViewController;
          if (contentViewController)
          {
            [contentViewController willMoveToParentViewController:0];
            [v12 removeFromParentViewController];
          }
        }

        [v7 setGadgetContentView:0];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      [v6 removeCollectionViewItem:cellCopy];
    }
  }

  cellsWantingVisibleRectUpdates = [(PXGadgetUIViewController *)self cellsWantingVisibleRectUpdates];
  [cellsWantingVisibleRectUpdates removeObject:cellCopy];
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v18 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  cellCopy = cell;
  v10 = [(PXGadgetUIViewController *)self _gadgetAtIndexPath:path];
  if (![(PXGadgetUIViewController *)self _isUsingDeprecatedViewLoadingForGadget:v10])
  {
    [v10 prepareCollectionViewItem:cellCopy];
    goto LABEL_12;
  }

  v11 = cellCopy;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    contentViewController = 0;
LABEL_7:
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([v10 contentView], (view = objc_claimAutoreleasedReturnValue()) == 0))
    {
      PXAssertGetLog();
    }

    goto LABEL_9;
  }

  contentViewController = [v10 contentViewController];
  view = [contentViewController view];
  if (!view)
  {
    goto LABEL_7;
  }

LABEL_9:
  v14 = view;
  if (contentViewController)
  {
    [(PXGadgetUIViewController *)self addChildViewController:contentViewController];
    [contentViewController didMoveToParentViewController:self];
  }

  [v11 setGadgetContentView:v14];

LABEL_12:
  if (objc_opt_respondsToSelector())
  {
    cellsWantingVisibleRectUpdates = [(PXGadgetUIViewController *)self cellsWantingVisibleRectUpdates];
    [cellsWantingVisibleRectUpdates addObject:cellCopy];

    [(PXGadgetUIViewController *)self _updateVisibleRectForGadget:v10 inCell:cellCopy collectionView:viewCopy];
  }

  if ([(PXGadgetUIViewController *)self isContentVisible]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    gadgetViewControllerLog = [(PXGadgetUIViewController *)self gadgetViewControllerLog];
    if (os_signpost_enabled(gadgetViewControllerLog))
    {
      LOWORD(v17) = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, gadgetViewControllerLog, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "GadgetContentWillAppear", "", &v17, 2u);
    }

    [v10 contentViewWillAppear];
    if (os_signpost_enabled(gadgetViewControllerLog))
    {
      LOWORD(v17) = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, gadgetViewControllerLog, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "GadgetContentWillAppear", "", &v17, 2u);
    }
  }
}

- (void)collectionView:(id)view prefetchItemsAtIndexPaths:(id)paths
{
  viewCopy = view;
  pathsCopy = paths;
  gadgetViewControllerLog = [(PXGadgetUIViewController *)self gadgetViewControllerLog];
  if (os_signpost_enabled(gadgetViewControllerLog))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, gadgetViewControllerLog, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Gadget_CV_prefetchItems", "", buf, 2u);
  }

  firstObject = [pathsCopy firstObject];

  if (firstObject)
  {
    v10 = [(PXGadgetUIViewController *)self _gadgetAtIndexPath:firstObject];
    if ([(PXGadgetUIViewController *)self _isUsingDeprecatedViewLoadingForGadget:v10])
    {
      if (objc_opt_respondsToSelector())
      {
        contentViewController = [v10 contentViewController];

        [contentViewController view];
LABEL_9:

        goto LABEL_10;
      }

      if (objc_opt_respondsToSelector())
      {
        contentViewController = [v10 contentView];
        goto LABEL_9;
      }
    }

LABEL_10:
    if (objc_opt_respondsToSelector())
    {
      [viewCopy bounds];
      [v10 prefetchDuringScrollingForWidth:v12];
    }
  }

  if (os_signpost_enabled(gadgetViewControllerLog))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, gadgetViewControllerLog, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Gadget_CV_prefetchItems", "", v13, 2u);
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(PXGadgetUIViewController *)self _gadgetAtIndexPath:pathCopy];
  if (objc_opt_respondsToSelector())
  {
    [v8 setVisibleContentRect:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  }

  if ([(PXGadgetUIViewController *)self _isUsingDeprecatedViewLoadingForGadget:v8])
  {
    v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"PXGadgetControllerCellReuseIdentifier" forIndexPath:pathCopy];
    [v9 setClipsToBounds:0];
  }

  else
  {
    collectionViewItemClass = [v8 collectionViewItemClass];
    v11 = NSStringFromClass(collectionViewItemClass);
    v12 = [v11 stringByAppendingString:@"ReuseIdentifier"];

    if (([(NSMutableSet *)self->_registeredCellReuseIdentifiers containsObject:v12]& 1) == 0)
    {
      [(NSMutableSet *)self->_registeredCellReuseIdentifiers addObject:v12];
      [viewCopy registerClass:collectionViewItemClass forCellWithReuseIdentifier:v12];
    }

    v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:v12 forIndexPath:pathCopy];
  }

  [(PXGadgetUIViewController *)self _setGadget:v8 forCollectionViewCell:v9];

  return v9;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  dataSource = [(PXGadgetUIViewController *)self dataSource];
  v6 = [dataSource numberOfItemsInSection:section];

  return v6;
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  dataSource = [(PXGadgetUIViewController *)self dataSource];
  numberOfSections = [dataSource numberOfSections];

  return numberOfSections;
}

- (CGRect)visibleBounds
{
  collectionView = [(PXGadgetUIViewController *)self collectionView];
  [collectionView bounds];
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

- (void)_updateVisibleRectForGadget:(id)gadget inCell:(id)cell collectionView:(id)view
{
  gadgetCopy = gadget;
  cellCopy = cell;
  viewCopy = view;
  if (objc_opt_respondsToSelector())
  {
    [(PXGadgetUIViewController *)self visibleBounds];
    [cellCopy convertRect:viewCopy fromView:?];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [cellCopy bounds];
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

    contentView = [cellCopy contentView];
    [contentView convertRect:cellCopy fromView:{x, y, width, height}];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;

    [gadgetCopy setVisibleContentRect:{v28, v30, v32, v34}];
  }
}

- (void)_updateGadgetVisibleRects
{
  v18 = *MEMORY[0x1E69E9840];
  if (!self->_updateFlags.collectionNeedsUpdate && ![(PXGadgetUIViewController *)self isBatchUpdating])
  {
    cellsWantingVisibleRectUpdates = [(PXGadgetUIViewController *)self cellsWantingVisibleRectUpdates];
    if ([cellsWantingVisibleRectUpdates count])
    {
      collectionView = [(PXGadgetUIViewController *)self collectionView];
      indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v6 = [indexPathsForVisibleItems countByEnumeratingWithState:&v13 objects:v17 count:16];
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
              objc_enumerationMutation(indexPathsForVisibleItems);
            }

            v10 = *(*(&v13 + 1) + 8 * i);
            v11 = [collectionView cellForItemAtIndexPath:v10];
            if ([cellsWantingVisibleRectUpdates containsObject:v11])
            {
              v12 = [(PXGadgetUIViewController *)self _gadgetAtIndexPath:v10];
              [(PXGadgetUIViewController *)self _updateVisibleRectForGadget:v12 inCell:v11 collectionView:collectionView];
            }
          }

          v7 = [indexPathsForVisibleItems countByEnumeratingWithState:&v13 objects:v17 count:16];
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
    isContentVisible = [(PXGadgetUIViewController *)self isContentVisible];
    collectionView = [(PXGadgetUIViewController *)self collectionView];
    indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = [indexPathsForVisibleItems countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(indexPathsForVisibleItems);
        }

        v9 = [(PXGadgetUIViewController *)self _gadgetAtIndexPath:*(*(&v15 + 1) + 8 * i)];
        if (isContentVisible)
        {
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            goto LABEL_20;
          }

          gadgetViewControllerLog = [(PXGadgetUIViewController *)self gadgetViewControllerLog];
          if (os_signpost_enabled(gadgetViewControllerLog))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1A3C1C000, gadgetViewControllerLog, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "GadgetContentWillAppear", "", buf, 2u);
          }

          [v9 contentViewWillAppear];
          if (!os_signpost_enabled(gadgetViewControllerLog))
          {
            goto LABEL_19;
          }

          *buf = 0;
          v11 = gadgetViewControllerLog;
          v12 = "GadgetContentWillAppear";
          goto LABEL_18;
        }

        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_20;
        }

        gadgetViewControllerLog = [(PXGadgetUIViewController *)self gadgetViewControllerLog];
        if (os_signpost_enabled(gadgetViewControllerLog))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1A3C1C000, gadgetViewControllerLog, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "GadgetContentDidDisappear", "", buf, 2u);
        }

        [v9 contentViewDidDisappear];
        if (os_signpost_enabled(gadgetViewControllerLog))
        {
          *buf = 0;
          v11 = gadgetViewControllerLog;
          v12 = "GadgetContentDidDisappear";
LABEL_18:
          _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, v12, "", buf, 2u);
        }

LABEL_19:

LABEL_20:
      }

      v6 = [indexPathsForVisibleItems countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  dataSource = [(PXGadgetUIViewController *)self dataSource];
  [dataSource enumerateGadgetsUsingBlock:&__block_literal_global_280_122997];
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
  dataSource = [(PXGadgetUIViewController *)self dataSource];
  [dataSource enumerateGadgetsUsingBlock:&__block_literal_global_276_123002];
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
  dataSource = [(PXGadgetUIViewController *)self dataSource];
  [dataSource enumerateGadgetsUsingBlock:&__block_literal_global_123005];
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
  gadgetSeenTimer = [(PXGadgetUIViewController *)self gadgetSeenTimer];
  [gadgetSeenTimer invalidate];
}

- (void)_handleGadgetsSeen
{
  v26 = *MEMORY[0x1E69E9840];
  if (!self->_updateFlags.collectionNeedsUpdate && ![(PXGadgetUIViewController *)self isBatchUpdating]&& [(PXGadgetUIViewController *)self isContentVisible])
  {
    collectionView = [(PXGadgetUIViewController *)self collectionView];
    [(PXGadgetUIViewController *)self visibleBounds];
    r2[0] = v4;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    window = [collectionView window];
    v21 = window;
    if (window)
    {
      v12 = window;
      [window bounds];
      [collectionView convertRect:v12 fromCoordinateSpace:?];
    }

    indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
    seenGadgetIdentifiers = [(PXGadgetUIViewController *)self seenGadgetIdentifiers];
    memset(&r2[1], 0, 32);
    v23 = 0u;
    v24 = 0u;
    v15 = indexPathsForVisibleItems;
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

          v20 = [collectionView layoutAttributesForItemAtIndexPath:*(r2[2] + 8 * i)];
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

- (id)_indexPathForGadget:(id)gadget
{
  gadgetCopy = gadget;
  v11 = 0u;
  dataSource = [(PXGadgetUIViewController *)self dataSource];
  v6 = dataSource;
  if (dataSource)
  {
    [dataSource indexPathForGadget:gadgetCopy];
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

- (id)_gadgetAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(PXGadgetUIViewController *)self dataSource];
  identifier = [dataSource identifier];
  section = [pathCopy section];
  item = [pathCopy item];

  v11[0] = identifier;
  v11[1] = section;
  v11[2] = item;
  v11[3] = 0x7FFFFFFFFFFFFFFFLL;
  v9 = [dataSource gadgetAtIndexPath:v11];

  return v9;
}

- (void)updateIfNeeded
{
  if (self->_updateFlags.collectionNeedsUpdate)
  {
    self->_updateFlags.collectionNeedsUpdate = 0;
    collectionView = [(PXGadgetUIViewController *)self collectionView];
    [collectionView reloadData];
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
  contextMenuInteraction = [(PXGadgetUIViewController *)self contextMenuInteraction];
  if (contextMenuInteraction)
  {
    v5 = contextMenuInteraction;
    view = [contextMenuInteraction view];
    [view removeInteraction:v5];

    [(PXGadgetUIViewController *)self setContextMenuInteraction:0];
    contextMenuInteraction = v5;
  }
}

- (void)_addContextMenuInteraction
{
  if ([(PXGadgetUIViewController *)self isRootGadgetViewController])
  {
    contextMenuInteraction = [(PXGadgetUIViewController *)self contextMenuInteraction];

    if (!contextMenuInteraction)
    {
      v5 = [objc_alloc(MEMORY[0x1E69DC8E0]) initWithDelegate:self];
      [(PXGadgetUIViewController *)self setContextMenuInteraction:v5];
      view = [(PXGadgetUIViewController *)self view];
      [view addInteraction:v5];
    }
  }
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  interactionPreviewGadget = [(PXGadgetUIViewController *)self interactionPreviewGadget];
  isInteractionPreviewCancelled = [(PXGadgetUIViewController *)self isInteractionPreviewCancelled];
  interactionPreviewView = [(PXGadgetUIViewController *)self interactionPreviewView];
  previewViewController = [animatorCopy previewViewController];

  if (previewViewController)
  {
    if (objc_opt_respondsToSelector())
    {
      [interactionPreviewGadget didDismissPreviewViewController:previewViewController committing:!isInteractionPreviewCancelled];
    }
  }

  else if (interactionPreviewView && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [interactionPreviewGadget didDismissPreviewWithPreviewView:interactionPreviewView committing:!isInteractionPreviewCancelled];
  }

  [(PXGadgetUIViewController *)self setInteractionPreviewGadget:0];
  [(PXGadgetUIViewController *)self setInteractionPreviewView:0];
  [(PXGadgetUIViewController *)self setIsInteractionPreviewCancelled:0];
}

- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  interactionPreviewGadget = [(PXGadgetUIViewController *)self interactionPreviewGadget];
  interactionPreviewView = [(PXGadgetUIViewController *)self interactionPreviewView];
  previewViewController = [animatorCopy previewViewController];
  [animatorCopy setPreferredCommitStyle:previewViewController != 0];
  if (previewViewController)
  {
    if (objc_opt_respondsToSelector())
    {
      v10 = v15;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v11 = __109__PXGadgetUIViewController_contextMenuInteraction_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke;
      v12 = previewViewController;
LABEL_7:
      v10[2] = v11;
      v10[3] = &unk_1E774C620;
      v10[4] = interactionPreviewGadget;
      v10[5] = v12;
      [animatorCopy addCompletion:v10];
    }
  }

  else if (interactionPreviewView && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v10 = &v13;
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v11 = __109__PXGadgetUIViewController_contextMenuInteraction_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke_2;
    v12 = interactionPreviewView;
    goto LABEL_7;
  }

  [(PXGadgetUIViewController *)self setIsInteractionPreviewCancelled:0, v13, v14];
}

- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration
{
  v5 = [(PXGadgetUIViewController *)self interactionPreviewView:interaction];
  interactionPreviewGadget = [(PXGadgetUIViewController *)self interactionPreviewGadget];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_7:
    PXAssertGetLog();
  }

  v7 = [interactionPreviewGadget previewParametersForTargetPreviewView:v5];
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

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  view = [(PXGadgetUIViewController *)self view];
  v8 = [(PXGadgetUIViewController *)self gadgetAtLocation:view inCoordinateSpace:x, y];
  if (!v8 || (objc_opt_respondsToSelector() & 1) == 0 || ([v8 targetPreviewViewForLocation:view inCoordinateSpace:{x, y}], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v12 = 0;
    goto LABEL_9;
  }

  v10 = v9;
  if (objc_opt_respondsToSelector())
  {
    v11 = [v8 previewViewControllerAtLocation:view fromSourceView:{x, y}];
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
    children = [v14 children];
    v12 = [children count];

    if (v12 || !v11)
    {
      if (!v12)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

LABEL_15:
    px_previewActionMenus = [v11 px_previewActionMenus];
    v17 = [px_previewActionMenus count];

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

- (void)setLayout:(id)layout
{
  layoutCopy = layout;
  layout = self->_layout;
  if (layout != layoutCopy)
  {
    v9 = layoutCopy;
    [(PXGadgetCollectionViewLayout *)layout setDelegate:0];
    objc_storeStrong(&self->_layout, layout);
    [(PXGadgetCollectionViewLayout *)self->_layout setDelegate:self];
    v7 = self->_layout;
    collectionView = [(PXGadgetUIViewController *)self collectionView];
    [collectionView setCollectionViewLayout:v7];

    layoutCopy = v9;
  }
}

- (void)setContentVisible:(BOOL)visible
{
  if (self->_isContentVisible != visible)
  {
    self->_isContentVisible = visible;
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

- (void)setDataSource:(id)source
{
  sourceCopy = source;
  v5 = self->_dataSource;
  collectionView = v5;
  if (v5 == sourceCopy)
  {
    goto LABEL_5;
  }

  v7 = [(PXGadgetDataSource *)v5 isEqual:?];

  if ((v7 & 1) == 0)
  {
    objc_storeStrong(&self->_dataSource, source);
    if ([(PXGadgetUIViewController *)self isRootGadgetViewController])
    {
      hasNoContentGadget = [(PXGadgetDataSource *)sourceCopy hasNoContentGadget];
      collectionView = [(PXGadgetUIViewController *)self collectionView];
      [collectionView setAlwaysBounceVertical:!hasNoContentGadget];
LABEL_5:
    }
  }
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  v5 = colorCopy;
  if (self->_backgroundColor != colorCopy)
  {
    v12 = colorCopy;
    v6 = [(UIColor *)colorCopy isEqual:?];
    v5 = v12;
    if ((v6 & 1) == 0)
    {
      v7 = [(UIColor *)v12 copy];
      backgroundColor = self->_backgroundColor;
      self->_backgroundColor = v7;

      isViewLoaded = [(PXGadgetUIViewController *)self isViewLoaded];
      v5 = v12;
      if (isViewLoaded)
      {
        v10 = self->_backgroundColor;
        collectionView = [(PXGadgetUIViewController *)self collectionView];
        [collectionView setBackgroundColor:v10];

        v5 = v12;
      }
    }
  }
}

- (id)debugURLsForDiagnostics
{
  v3 = objc_opt_new();
  dataSource = [(PXGadgetUIViewController *)self dataSource];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__PXGadgetUIViewController_debugURLsForDiagnostics__block_invoke;
  v7[3] = &unk_1E773AFB0;
  v5 = v3;
  v8 = v5;
  [dataSource enumerateGadgetsUsingBlock:v7];

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

- (id)gadgetAtLocation:(CGPoint)location inCoordinateSpace:(id)space
{
  y = location.y;
  x = location.x;
  spaceCopy = space;
  collectionView = [(PXGadgetUIViewController *)self collectionView];
  [collectionView convertPoint:spaceCopy fromCoordinateSpace:{x, y}];
  v10 = v9;
  v12 = v11;

  v13 = [collectionView indexPathForItemAtPoint:{v10, v12}];
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
  dataSourceManager = [(PXGadgetUIViewController *)self dataSourceManager];
  [dataSourceManager removeCachedProviders];
  [dataSourceManager beginLoadingInitialGadgets:{-[PXGadgetUIViewController numberOfInitialGadgetsToLoad](self, "numberOfInitialGadgetsToLoad")}];
}

- (void)_applicationDidEnterBackground:(id)background
{
  if ([(PXGadgetUIViewController *)self isRootGadgetViewController])
  {
    [(PXGadgetUIViewController *)self rootGadgetControllerDidDisappear];
    [(PXGadgetUIViewController *)self _notifyGadgetsThatGadgetControllerHasDisappeared];

    [(PXGadgetUIViewController *)self _notifyGadgetsThatGadgetWasDismissed];
  }
}

- (void)_applicationWillEnterForeground:(id)foreground
{
  if ([(PXGadgetUIViewController *)self px_isVisible]&& [(PXGadgetUIViewController *)self isRootGadgetViewController])
  {
    [(PXGadgetUIViewController *)self _notifyGadgetsThatGadgetControllerHasAppeared];

    [(PXGadgetUIViewController *)self rootGadgetControllerWillAppear];
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = PXGadgetUIViewController;
  [(PXGadgetUIViewController *)&v4 dealloc];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v13.receiver = self;
  v13.super_class = PXGadgetUIViewController;
  [(PXGadgetUIViewController *)&v13 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  if ([(PXGadgetUIViewController *)self isCurrentlyVisible])
  {
    [(PXGadgetUIViewController *)self setIsRotatingVerticalLayout:0];
    if ([(PXGadgetUIViewController *)self _scrollAxis]== 1)
    {
      collectionView = [(PXGadgetUIViewController *)self collectionView];
      [collectionView bounds];
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
    [coordinatorCopy animateAlongsideTransition:v12 completion:v11];
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
  layout = [(PXGadgetUIViewController *)self layout];
  [layout scrollDirection];

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
  specManager = [(PXGadgetUIViewController *)self specManager];
  dataSource = [(PXGadgetUIViewController *)self dataSource];
  [specManager updateGadgetDataSourceToSpecIfNeeded:dataSource];

  sharedScheduler = [off_1E7721878 sharedScheduler];
  [sharedScheduler scrollViewWillLayoutSubviews];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v12.receiver = self;
  v12.super_class = PXGadgetUIViewController;
  [(PXGadgetUIViewController *)&v12 viewDidDisappear:disappear];
  [(PXGadgetUIViewController *)self setCurrentlyVisible:0];
  [(PXGadgetUIViewController *)self _removeContextMenuInteraction];
  if ([(PXGadgetUIViewController *)self isRootGadgetViewController])
  {
    [(PXGadgetUIViewController *)self rootGadgetControllerDidDisappear];
    [(PXGadgetUIViewController *)self _notifyGadgetsThatGadgetControllerHasDisappeared];
    navigationController = [(PXGadgetUIViewController *)self navigationController];
    topViewController = [navigationController topViewController];
    if (topViewController != self)
    {
      if (([(PXGadgetUIViewController *)self isBeingDismissed]& 1) != 0)
      {
        isViewLoaded = [(PXGadgetUIViewController *)self isViewLoaded];

        if (!isViewLoaded)
        {
          goto LABEL_14;
        }

        goto LABEL_11;
      }

LABEL_13:

      goto LABEL_14;
    }

    presentedViewController = [(PXGadgetUIViewController *)self presentedViewController];
    if (presentedViewController)
    {
      v8 = presentedViewController;
      if (([(PXGadgetUIViewController *)self isBeingDismissed]& 1) == 0)
      {

        goto LABEL_13;
      }

      isViewLoaded2 = [(PXGadgetUIViewController *)self isViewLoaded];

      if ((isViewLoaded2 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      isViewLoaded3 = [(PXGadgetUIViewController *)self isViewLoaded];

      if ((isViewLoaded3 & 1) == 0)
      {
LABEL_14:
        dataSourceManager = [(PXGadgetUIViewController *)self dataSourceManager];
        [dataSourceManager setCanLoadRemainingDataForProviders:0];

        return;
      }
    }

LABEL_11:
    [(PXGadgetUIViewController *)self _notifyGadgetsThatGadgetWasDismissed];
    goto LABEL_14;
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PXGadgetUIViewController;
  [(PXGadgetUIViewController *)&v5 viewWillDisappear:disappear];
  collectionView = [(PXGadgetUIViewController *)self collectionView];
  if (([collectionView isDragging] & 1) != 0 || objc_msgSend(collectionView, "isDecelerating"))
  {
    [(PXGadgetUIViewController *)self _scrollViewDidEndScrolling];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = PXGadgetUIViewController;
  [(PXGadgetUIViewController *)&v6 viewDidAppear:appear];
  [(PXGadgetUIViewController *)self setSelectedGadget:0];
  dataSourceManager = [(PXGadgetUIViewController *)self dataSourceManager];
  if ([(PXGadgetUIViewController *)self isRootGadgetViewController])
  {
    [dataSourceManager setCanLoadRemainingDataForProviders:1];
    [(PXGadgetUIViewController *)self _notifyGadgetsThatGadgetControllerHasAppeared];
  }

  p_updateFlags = &self->_updateFlags;
  if (p_updateFlags->loadRemaingGadgetsAfterViewAppeared)
  {
    [dataSourceManager loadRemainingGadgetsIfNeeded];
    p_updateFlags->loadRemaingGadgetsAfterViewAppeared = 0;
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PXGadgetUIViewController;
  [(PXGadgetUIViewController *)&v4 viewWillAppear:appear];
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
  layout = [(PXGadgetUIViewController *)self layout];
  [layout scrollDirection];

  PXAxisFromUICollectionViewScrollDirection();
}

- (void)_initializeDataSource
{
  dataSourceManager = [(PXGadgetUIViewController *)self dataSourceManager];
  dataSource = [dataSourceManager dataSource];
  [(PXGadgetUIViewController *)self setDataSource:dataSource];

  dataSourceManager2 = [(PXGadgetUIViewController *)self dataSourceManager];
  [dataSourceManager2 registerChangeObserver:self context:PXDataSourceManagerObservationContext_122915];

  self->_updateFlags.collectionNeedsUpdate = 1;
  [dataSourceManager beginLoadingInitialGadgets:{-[PXGadgetUIViewController numberOfInitialGadgetsToLoad](self, "numberOfInitialGadgetsToLoad")}];
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = PXGadgetUIViewController;
  [(PXGadgetUIViewController *)&v9 viewDidLoad];
  gadgetViewControllerLog = [(PXGadgetUIViewController *)self gadgetViewControllerLog];
  if (os_signpost_enabled(gadgetViewControllerLog))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, gadgetViewControllerLog, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "GadgetVCViewDidLoad", "", v8, 2u);
  }

  collectionView = [(PXGadgetUIViewController *)self collectionView];
  [collectionView setClipsToBounds:0];
  backgroundColor = [(PXGadgetUIViewController *)self backgroundColor];
  [collectionView setBackgroundColor:backgroundColor];

  [collectionView setDropDelegate:self];
  [collectionView setAlwaysBounceVertical:1];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PXGadgetControllerCellReuseIdentifier"];
  [collectionView _setAutomaticContentOffsetAdjustmentEnabled:0];
  [collectionView setPrefetchDataSource:self];
  [(PXGadgetUIViewController *)self _initializeHelpers];
  [(PXGadgetUIViewController *)self _initializeDataSource];
  if ([(PXGadgetUIViewController *)self isRootGadgetViewController]&& [(PXGadgetUIViewController *)self allowsBarManagement])
  {
    [(UIViewController *)self px_enableBarAppearance];
    [collectionView setContentInset:{0.0, 0.0, 16.0, 0.0}];
  }

  px_splitViewController = [(UIViewController *)self px_splitViewController];
  [px_splitViewController registerChangeObserver:self];
  gadgetViewControllerLog2 = [(PXGadgetUIViewController *)self gadgetViewControllerLog];
  if (os_signpost_enabled(gadgetViewControllerLog2))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, gadgetViewControllerLog2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "GadgetVCViewDidLoad", "", v8, 2u);
  }
}

- (PXGadgetUIViewController)initWithLayout:(id)layout dataSourceManager:(id)manager
{
  layoutCopy = layout;
  managerCopy = manager;
  v27.receiver = self;
  v27.super_class = PXGadgetUIViewController;
  v9 = [(PXGadgetUIViewController *)&v27 initWithCollectionViewLayout:layoutCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_layout, layout);
    [(PXGadgetCollectionViewLayout *)v10->_layout setDelegate:v10];
    v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    registeredCellReuseIdentifiers = v10->_registeredCellReuseIdentifiers;
    v10->_registeredCellReuseIdentifiers = v11;

    v13 = [[off_1E7721940 alloc] initWithTarget:v10 needsUpdateSelector:sel__updaterNeedsUpdate];
    updater = v10->_updater;
    v10->_updater = v13;

    objc_storeStrong(&v10->_dataSourceManager, manager);
    [(PXGadgetDataSourceManager *)v10->_dataSourceManager setNextGadgetResponder:v10];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice userInterfaceIdiom] == 6)
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

    weakToWeakObjectsMapTable = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    cellsToGadgets = v10->_cellsToGadgets;
    v10->_cellsToGadgets = weakToWeakObjectsMapTable;

    v10->_allowsBarManagement = 1;
    [(PXGadgetUIViewController *)v10 px_enableExtendedTraitCollection];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel_contentSizeCategoryDidChangeNotification_ name:*MEMORY[0x1E69DDC48] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v10 selector:sel__applicationWillEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v10 selector:sel__applicationDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];
  }

  return v10;
}

@end