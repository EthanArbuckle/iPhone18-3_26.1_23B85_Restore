@interface PUImportViewController
+ (id)totalSizeStringForItems:(id)a3;
+ (unsigned)defaultThumbnailImageFormat;
- (BOOL)_isItemVisibleAtIndex:(id)a3;
- (BOOL)anyAlreadyImportedItemsAreSelected;
- (BOOL)areAllItemsSelectedInAssetCollection:(id)a3;
- (BOOL)canBeginDoubleTapGesture:(id)a3;
- (BOOL)canBeginSwipeSelectionAtScrollViewLocation:(CGPoint)a3;
- (BOOL)canDragOut;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)importSectionedGridLayout:(id)a3 shouldEmphasizeSection:(unint64_t)a4;
- (BOOL)importSourceIsAppleDevice;
- (BOOL)isEmpty;
- (BOOL)isImporting;
- (BOOL)sectionHeadersCoverLocation:(CGPoint)a3;
- (BOOL)swipeSelectionManagerIsInMultiSelectMode:(id)a3;
- (BOOL)updateSpec;
- (BOOL)wantsPlaceholderView;
- (CGRect)imageRectFromPhotoView:(id)a3;
- (CGSize)_cachedViewSizeTransitionContextSize;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)gridItemSize;
- (PHImportSource)importSource;
- (PUImportViewController)initWithSpec:(id)a3 photoLibrary:(id)a4;
- (PXSimpleIndexPath)selectionIndexPathForItem:(SEL)a3;
- (PXSimpleIndexPath)swipeSelectionManager:(SEL)a3 itemIndexPathAtLocation:(id)a4;
- (PXSimpleIndexPath)swipeSelectionManager:(SEL)a3 itemIndexPathClosestAboveLocation:(id)a4;
- (PXSimpleIndexPath)swipeSelectionManager:(SEL)a3 itemIndexPathClosestLeadingLocation:(id)a4;
- (UIEdgeInsets)collectionViewSafeAreaInsets;
- (double)sectionedGridLayout:(id)a3 accessibilitySectionHeaderHeightForVisualSection:(int64_t)a4;
- (double)sectionedGridLayout:(id)a3 aspectRatioForItemAtIndexPath:(id)a4;
- (double)sectionedGridLayout:(id)a3 sectionHeaderHeightForVisualSection:(int64_t)a4;
- (id)_bestReferenceItemIndexPath;
- (id)_createSubtitleText;
- (id)_gridLayout;
- (id)_newGridLayoutFromSpec:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)deleteButtonItem;
- (id)importDestinationForActionCoordinator:(id)a3;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4;
- (id)newGridLayout;
- (id)oneUpViewControllerForItemAtIndexPath:(id)a3;
- (id)px_navigationDestination;
- (int64_t)_titleViewVerticalSizeClassForExtendedTraitCollection:(id)a3;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)contentFillModeForImportCell:(id)a3;
- (int64_t)importCell:(id)a3 requestImageForImportItem:(id)a4 ofSize:(unint64_t)a5 completion:(id)a6;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (unint64_t)routingOptionsForDestination:(id)a3;
- (void)_beginImport;
- (void)_beginUninterruptibleOperation;
- (void)_cancelAlerts;
- (void)_contentSizeCategoryDidChangeNotification:(id)a3;
- (void)_deleteItems:(id)a3;
- (void)_deselectCell:(id)a3;
- (void)_dismissPopupsAnimated:(BOOL)a3;
- (void)_endImport;
- (void)_endUninterruptibleOperation;
- (void)_getDataForVisualSection:(int64_t)a3 hasActionButton:(BOOL *)a4 title:(id *)a5 startDate:(id *)a6 endDate:(id *)a7;
- (void)_importControllerDidEndAction;
- (void)_importControllerWillBeginAction;
- (void)_invalidateCachedViewSizeTransitionContext;
- (void)_navigateToPhotoAtIndexPath:(id)a3 animated:(BOOL)a4 interactive:(BOOL)a5;
- (void)_selectCell:(id)a3;
- (void)_setCollectionViewLayoutReferenceWidth:(double)a3;
- (void)_setCollectionViewSafeAreaInsets:(UIEdgeInsets)a3;
- (void)_updateBackdropGroupNameForHeaderView:(id)a3;
- (void)_updateCell:(id)a3 atIndex:(id)a4;
- (void)_updateContentOffsetForPendingViewSizeTransition;
- (void)_updateItemViewAtIndex:(id)a3;
- (void)_updateLayoutMetrics;
- (void)_updateToolbarAnimated:(BOOL)a3;
- (void)actionCoordinator:(id)a3 didCompleteWithImportSession:(id)a4 results:(id)a5;
- (void)actionCoordinatorDidEndDelete:(id)a3;
- (void)actionCoordinatorWillBeginDelete:(id)a3;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)configureSupplementaryView:(id)a3 ofKind:(id)a4 forIndexPath:(id)a5;
- (void)dealloc;
- (void)delete:(id)a3;
- (void)disableSwipeSelection;
- (void)enableSwipeSelection;
- (void)getEmptyPlaceholderViewTitle:(id *)a3 message:(id *)a4 buttonTitle:(id *)a5 buttonAction:(id *)a6;
- (void)handleDoubleTapGesture:(id)a3;
- (void)handleImportCompleteAlertResponse:(__CFUserNotification *)a3 flags:(unint64_t)a4;
- (void)handleLongPressGesture:(id)a3;
- (void)handleNewDataSource:(id)a3;
- (void)handleTapGesture:(id)a3;
- (void)handleTouchEvent:(int64_t)a3 forCell:(id)a4;
- (void)headerViewDidPressActionButton:(id)a3 inHeaderView:(id)a4;
- (void)importCell:(id)a3 didRequestCancellationOfThumbnailRequestWithID:(int64_t)a4;
- (void)importController:(id)a3 didCompleteImportWithImportSession:(id)a4 results:(id)a5 completion:(id)a6;
- (void)importController:(id)a3 didLoadAssets:(id)a4 exceptions:(id)a5;
- (void)importControllerProgressDidChange:(id)a3;
- (void)installGestureRecognizers;
- (void)navigateToDestination:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)navigateToRectEdge:(unsigned int)a3 animated:(BOOL)a4;
- (void)notifyUserOfImportCompletionIfNeededWithImportSession:(id)a3 results:(id)a4;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)presentOneUpViewController:(id)a3 animated:(BOOL)a4 interactive:(BOOL)a5;
- (void)reloadData;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)selectAllSelectableItems;
- (void)setAllItemsSelected:(BOOL)a3 inAssetCollection:(id)a4;
- (void)setImportController:(id)a3;
- (void)setImportDataSource:(id)a3;
- (void)setImportDataSourceManager:(id)a3;
- (void)setImportSource:(id)a3;
- (void)setUnfilteredImportDataSourceManager:(id)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)stayScrolledToBottomIfAtBottomAfterDrag:(id)a3;
- (void)stopImport:(id)a3;
- (void)toggleAlreadyImportedExpansion;
- (void)transitionFromDataSource:(id)a3 toDataSource:(id)a4 animated:(BOOL)a5 completionHandler:(id)a6;
- (void)uninstallGestureRecognizers;
- (void)updateAlreadyImportedCollapseStatus;
- (void)updateAlreadyImportedHeaderIfVisible;
- (void)updateDataSourceManagerFilters;
- (void)updateHeaderView:(id)a3 forAlreadyImportedAssetCollection:(id)a4;
- (void)updateHeaderView:(id)a3 forAssetCollection:(id)a4;
- (void)updateNavigationBarAnimated:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PUImportViewController

- (CGSize)_cachedViewSizeTransitionContextSize
{
  width = self->__cachedViewSizeTransitionContextSize.width;
  height = self->__cachedViewSizeTransitionContextSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)collectionViewSafeAreaInsets
{
  top = self->_collectionViewSafeAreaInsets.top;
  left = self->_collectionViewSafeAreaInsets.left;
  bottom = self->_collectionViewSafeAreaInsets.bottom;
  right = self->_collectionViewSafeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (id)px_navigationDestination
{
  v3 = [(PUImportViewController *)self importSource];
  v4 = [v3 uuid];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69C3930]);
    v6 = [(PUImportViewController *)self importSource];
    v7 = [v5 initWithImportSource:v6 revealMode:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)navigateToDestination:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a5;
  if ([(PUImportViewController *)self routingOptionsForDestination:a3])
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  v8[2](v8, v7, 0);
}

- (unint64_t)routingOptionsForDestination:(id)a3
{
  v4 = a3;
  if ([v4 type] == 21)
  {
    v5 = [(PUImportViewController *)self importSource];
    v6 = [v5 uuid];
    v7 = [v4 importSourceUUID];
    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PXSwipeSelectionManager *)self->_swipeSelectionManager gesturesForFailureRequirements];
  if ([v8 containsObject:v6])
  {
    v9 = [(PUPhotosGridViewController *)self photoOrStackPinchGestureRecognizer];

    if (v9 != v7)
    {
      v10 = [(PXSwipeSelectionManager *)self->_swipeSelectionManager state];
      v11 = v10 != 0;
      v12 = _importGridLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v17 = [(PXSwipeSelectionManager *)self->_swipeSelectionManager state];
        v18 = 136315650;
        v19 = "[PUImportViewController gestureRecognizer:shouldRecognizeSimultaneouslyWithGestureRecognizer:]";
        v20 = 2048;
        v21 = v10 != 0;
        v22 = 2048;
        v23 = v17;
        _os_log_debug_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_DEBUG, "%s: shouldRecognize returning %ld(swipe state %ld)", &v18, 0x20u);
      }

      goto LABEL_11;
    }
  }

  else
  {
  }

  v13 = [(PUPhotosGridViewController *)self photoOrStackPinchGestureRecognizer];
  v14 = v13;
  if (v13 == v6)
  {
    v15 = [(PUPhotosGridViewController *)self longPressGestureRecognizer];

    if (v15 == v7)
    {
      v11 = 1;
      goto LABEL_11;
    }
  }

  else
  {
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  if (self->_tapGestureRecognizer == v4)
  {
    goto LABEL_6;
  }

  v5 = [(PUPhotosGridViewController *)self longPressGestureRecognizer];

  if (v5 == v4)
  {
    LODWORD(self) = ![(PUImportViewController *)self isPeeking];
    goto LABEL_9;
  }

  v6 = [(PUPhotosGridViewController *)self photoOrStackPinchGestureRecognizer];

  if (v6 == v4)
  {
LABEL_6:
    LOBYTE(self) = 1;
  }

  else
  {
    v7 = [(PUImportViewController *)self doubleTapGestureRecognizer];

    if (v7 == v4)
    {
      v8 = [(PUImportViewController *)self doubleTapGestureRecognizer];
      LOBYTE(self) = [(PUImportViewController *)self canBeginDoubleTapGesture:v8];
    }

    else
    {
      v10.receiver = self;
      v10.super_class = PUImportViewController;
      LOBYTE(self) = [(PUPhotosGridViewController *)&v10 gestureRecognizerShouldBegin:v4];
    }
  }

LABEL_9:

  return self;
}

- (void)uninstallGestureRecognizers
{
  v7.receiver = self;
  v7.super_class = PUImportViewController;
  [(PUPhotosGridViewController *)&v7 uninstallGestureRecognizers];
  v3 = [(UITapGestureRecognizer *)self->_tapGestureRecognizer view];
  [v3 removeGestureRecognizer:self->_tapGestureRecognizer];

  tapGestureRecognizer = self->_tapGestureRecognizer;
  self->_tapGestureRecognizer = 0;

  v5 = [(UITapGestureRecognizer *)self->_doubleTapGestureRecognizer view];
  [v5 removeGestureRecognizer:self->_doubleTapGestureRecognizer];

  doubleTapGestureRecognizer = self->_doubleTapGestureRecognizer;
  self->_doubleTapGestureRecognizer = 0;
}

- (void)installGestureRecognizers
{
  v8.receiver = self;
  v8.super_class = PUImportViewController;
  [(PUPhotosGridViewController *)&v8 installGestureRecognizers];
  v3 = [(PUImportViewController *)self view];
  if (!self->_tapGestureRecognizer)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_handleTapGesture_];
    tapGestureRecognizer = self->_tapGestureRecognizer;
    self->_tapGestureRecognizer = v4;

    [(UITapGestureRecognizer *)self->_tapGestureRecognizer setDelegate:self];
    [v3 addGestureRecognizer:self->_tapGestureRecognizer];
  }

  if (!self->_doubleTapGestureRecognizer)
  {
    v6 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_handleDoubleTapGesture_];
    doubleTapGestureRecognizer = self->_doubleTapGestureRecognizer;
    self->_doubleTapGestureRecognizer = v6;

    [(UITapGestureRecognizer *)self->_doubleTapGestureRecognizer setDelegate:self];
    [(UITapGestureRecognizer *)self->_doubleTapGestureRecognizer setNumberOfTapsRequired:2];
    [v3 addGestureRecognizer:self->_doubleTapGestureRecognizer];
  }
}

- (PXSimpleIndexPath)selectionIndexPathForItem:(SEL)a3
{
  v6 = a4;
  if (v6)
  {
    v13 = v6;
    v7 = [(PUImportViewController *)self importController];
    v8 = [v7 selectionManager];

    v9 = [v8 dataSourceManager];
    v10 = [v9 dataSource];

    *&retstr->var0 = 0u;
    *&retstr->var2 = 0u;
    if (v10)
    {
      [v10 itemIndexPathForItem:v13];
    }

    v6 = v13;
  }

  else
  {
    v11 = *(MEMORY[0x1E69C48E8] + 16);
    *&retstr->var0 = *MEMORY[0x1E69C48E8];
    *&retstr->var2 = v11;
  }

  return result;
}

- (PXSimpleIndexPath)swipeSelectionManager:(SEL)a3 itemIndexPathClosestAboveLocation:(id)a4
{
  y = a5.y;
  x = a5.x;
  v30 = *MEMORY[0x1E69E9840];
  v9 = [(PUPhotosGridViewController *)self contentScrollView];
  v10 = [(PUImportViewController *)self collectionView];
  [v9 convertPoint:v10 fromView:{x, y}];
  v12 = v11;
  v14 = v13;

  v15 = [(PUImportViewController *)self importDataSource];
  v27 = 0;
  v28 = 0;
  v16 = [(PUPhotosGridViewController *)self itemIndexPathAtPoint:0 outClosestMatch:&v28 outLeftClosestMatch:&v27 outAboveClosestMatch:v12, v14];
  v17 = v28;
  v18 = v27;
  v25 = 0u;
  *&v26 = 0;
  [v15 identifier];
  PXSimpleIndexPathFromIndexPath();
  v19 = 0;
  v20 = *MEMORY[0x1E69C4880];
  v21 = MEMORY[0x1E69C48E8];
  if (*MEMORY[0x1E69C4880])
  {
    memset(buf, 0, 32);
    v19 = [v15 assetAtItemIndexPath:buf];
    if (([v19 isSelectable] & 1) == 0)
    {
      v25 = *v21;
      v26 = v21[1];
    }
  }

  v22 = _importGridLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[PUImportViewController swipeSelectionManager:itemIndexPathClosestAboveLocation:]";
    *&buf[12] = 2048;
    *&buf[14] = *(&v25 + 1);
    *&buf[22] = 2048;
    *&buf[24] = v26;
    _os_log_debug_impl(&dword_1B36F3000, v22, OS_LOG_TYPE_DEBUG, "%s: [%ld, %ld]", buf, 0x20u);
  }

  v23 = v21[1];
  *&retstr->var0 = *v21;
  *&retstr->var2 = v23;
  if (v25 != v20)
  {
    [(PUImportViewController *)self selectionIndexPathForItem:v19];
  }

  return result;
}

- (PXSimpleIndexPath)swipeSelectionManager:(SEL)a3 itemIndexPathClosestLeadingLocation:(id)a4
{
  y = a5.y;
  x = a5.x;
  v30 = *MEMORY[0x1E69E9840];
  v9 = [(PUPhotosGridViewController *)self contentScrollView];
  v10 = [(PUImportViewController *)self collectionView];
  [v9 convertPoint:v10 fromView:{x, y}];
  v12 = v11;
  v14 = v13;

  v15 = [(PUImportViewController *)self importDataSource];
  v27 = 0;
  v28 = 0;
  v16 = [(PUPhotosGridViewController *)self itemIndexPathAtPoint:0 outClosestMatch:&v28 outLeftClosestMatch:&v27 outAboveClosestMatch:v12, v14];
  v17 = v28;
  v18 = v27;
  v25 = 0u;
  *&v26 = 0;
  [v15 identifier];
  PXSimpleIndexPathFromIndexPath();
  v19 = 0;
  v20 = *MEMORY[0x1E69C4880];
  v21 = MEMORY[0x1E69C48E8];
  if (*MEMORY[0x1E69C4880])
  {
    memset(buf, 0, 32);
    v19 = [v15 assetAtItemIndexPath:buf];
    if (([v19 isSelectable] & 1) == 0)
    {
      v25 = *v21;
      v26 = v21[1];
    }
  }

  v22 = _importGridLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[PUImportViewController swipeSelectionManager:itemIndexPathClosestLeadingLocation:]";
    *&buf[12] = 2048;
    *&buf[14] = *(&v25 + 1);
    *&buf[22] = 2048;
    *&buf[24] = v26;
    _os_log_debug_impl(&dword_1B36F3000, v22, OS_LOG_TYPE_DEBUG, "%s: [%ld, %ld]", buf, 0x20u);
  }

  v23 = v21[1];
  *&retstr->var0 = *v21;
  *&retstr->var2 = v23;
  if (v25 != v20)
  {
    [(PUImportViewController *)self selectionIndexPathForItem:v19];
  }

  return result;
}

- (PXSimpleIndexPath)swipeSelectionManager:(SEL)a3 itemIndexPathAtLocation:(id)a4
{
  y = a5.y;
  x = a5.x;
  v24 = *MEMORY[0x1E69E9840];
  v9 = [(PUImportViewController *)self collectionView];
  v10 = [v9 indexPathForItemAtPoint:{x, y}];

  if (v10)
  {
    v11 = [(PUImportViewController *)self importDataSource];
    v19 = 0u;
    *&v20 = 0;
    [v11 identifier];
    PXSimpleIndexPathFromIndexPath();
    memset(buf, 0, sizeof(buf));
    v12 = [v11 assetAtItemIndexPath:buf];
    v13 = [v12 isSelectable];
    v14 = MEMORY[0x1E69C48E8];
    if ((v13 & 1) == 0)
    {
      v19 = *MEMORY[0x1E69C48E8];
      v20 = *(MEMORY[0x1E69C48E8] + 16);
    }

    v15 = _importGridLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      *&buf[4] = "[PUImportViewController swipeSelectionManager:itemIndexPathAtLocation:]";
      *&buf[12] = 2048;
      *&buf[14] = *(&v19 + 1);
      *&buf[22] = 2048;
      *&buf[24] = v20;
      v22 = 1024;
      v23 = v13;
      _os_log_debug_impl(&dword_1B36F3000, v15, OS_LOG_TYPE_DEBUG, "%s: [%ld, %ld] (selectable: %d)", buf, 0x26u);
    }

    v16 = v14[1];
    *&retstr->var0 = *v14;
    *&retstr->var2 = v16;
    if (v19 != *MEMORY[0x1E69C4880])
    {
      [(PUImportViewController *)self selectionIndexPathForItem:v12];
    }
  }

  else
  {
    v17 = *(MEMORY[0x1E69C48E8] + 16);
    *&retstr->var0 = *MEMORY[0x1E69C48E8];
    *&retstr->var2 = v17;
  }

  return result;
}

- (BOOL)swipeSelectionManagerIsInMultiSelectMode:(id)a3
{
  v3 = [(PUImportViewController *)self swipeSelectionManager];
  v4 = v3 != 0;

  return v4;
}

- (void)disableSwipeSelection
{
  swipeSelectionManager = self->_swipeSelectionManager;
  if (swipeSelectionManager)
  {
    [(PXSwipeSelectionManager *)swipeSelectionManager setDelegate:0];
    v4 = self->_swipeSelectionManager;
    self->_swipeSelectionManager = 0;
  }
}

- (void)enableSwipeSelection
{
  if (!self->_swipeSelectionManager)
  {
    v7 = [(PUPhotosGridViewController *)self contentScrollView];
    v3 = [(PUImportViewController *)self importController];
    v4 = [v3 selectionManager];

    if (v4 && v7)
    {
      v5 = [objc_alloc(MEMORY[0x1E69A2918]) initWithSelectionManager:v4 scrollView:v7];
      swipeSelectionManager = self->_swipeSelectionManager;
      self->_swipeSelectionManager = v5;

      [(PXSwipeSelectionManager *)self->_swipeSelectionManager setDelegate:self];
    }
  }
}

- (BOOL)canBeginSwipeSelectionAtScrollViewLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v21 = *MEMORY[0x1E69E9840];
  v6 = [(PUImportViewController *)self importController];
  if ([v6 isImportingAssets])
  {
    goto LABEL_4;
  }

  v7 = [(PUImportViewController *)self importController];
  if ([v7 isDeletingAssets])
  {

LABEL_4:
LABEL_5:
    LOBYTE(v8) = 0;
    return v8;
  }

  v10 = [(PUImportViewController *)self presentedViewController];

  if (v10)
  {
    goto LABEL_5;
  }

  v11 = [(PUPhotosGridViewController *)self contentScrollView];
  v12 = [(PUImportViewController *)self collectionView];
  v13 = [v12 indexPathForItemAtPoint:{x, y}];

  v14 = [(PUImportViewController *)self collectionView];
  v15 = [v14 cellForItemAtIndexPath:v13];

  [v11 convertPoint:v15 toView:{x, y}];
  v8 = [v15 shouldBeginGestureForPoint:?];
  v16 = _importGridLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = 136315394;
    v18 = "[PUImportViewController canBeginSwipeSelectionAtScrollViewLocation:]";
    v19 = 2048;
    v20 = v8;
    _os_log_debug_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_DEBUG, "%s: return %ld", &v17, 0x16u);
  }

  return v8;
}

- (void)stayScrolledToBottomIfAtBottomAfterDrag:(id)a3
{
  v5 = a3;
  if ([(PUImportViewController *)self userHasScrolled])
  {
    v4 = [(PUImportViewController *)self importController];

    if (v4)
    {
      -[PUImportViewController setShouldStayScrolledToBottom:](self, "setShouldStayScrolledToBottom:", [v5 px_isScrolledAtEdge:3]);
    }
  }
}

- (void)navigateToRectEdge:(unsigned int)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = *&a3;
  [(PUImportViewController *)self setUserHasScrolled:1];
  v7.receiver = self;
  v7.super_class = PUImportViewController;
  [(PUPhotosGridViewController *)&v7 navigateToRectEdge:v5 animated:v4];
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = PUImportViewController;
  [(PUPhotosGridViewController *)&v5 scrollViewDidScroll:v4];
  if (([v4 isDragging] & 1) == 0)
  {
    [(PUImportViewController *)self stayScrolledToBottomIfAtBottomAfterDrag:v4];
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4.receiver = self;
  v4.super_class = PUImportViewController;
  [(PUPhotosGridViewController *)&v4 scrollViewWillBeginDragging:a3];
  [(PUImportViewController *)self setUserHasScrolled:1];
  [(PUImportViewController *)self setShouldStayScrolledToBottom:0];
}

- (CGRect)imageRectFromPhotoView:(id)a3
{
  v3 = a3;
  v4 = [v3 contentHelper];
  [v3 bounds];
  [v4 imageContentFrameForBounds:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v3 convertRect:0 toView:{v6, v8, v10, v12}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = v14;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (void)handleTouchEvent:(int64_t)a3 forCell:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = _importGridLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "[PUImportViewController handleTouchEvent:forCell:]";
    *&buf[12] = 2048;
    *&buf[14] = a3;
    _os_log_debug_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEBUG, "%s: %lu", buf, 0x16u);
  }

  v8 = [v6 representedImportItem];
  v9 = [v8 kind];
  v10 = [v9 isEqualToString:*MEMORY[0x1E69C4080]];

  if (v10)
  {
    [(PUImportViewController *)self toggleAlreadyImportedExpansion];
    goto LABEL_18;
  }

  v11 = [(PUImportViewController *)self importController];
  if ([v11 isImportingAssets])
  {

    goto LABEL_18;
  }

  v12 = [(PUImportViewController *)self importController];
  v13 = [v12 isDeletingAssets];

  if (v13)
  {
    goto LABEL_18;
  }

  if (!UIAccessibilityIsVoiceOverRunning())
  {
    goto LABEL_11;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      goto LABEL_18;
    }

LABEL_11:
    if ([v8 isSelected])
    {
      [(PUImportViewController *)self _deselectCell:v6];
    }

    else
    {
      [(PUImportViewController *)self _selectCell:v6];
    }

    goto LABEL_18;
  }

  memset(buf, 0, 32);
  v14 = [(PUImportViewController *)self importDataSource];
  v15 = v14;
  if (v14)
  {
    [v14 itemIndexPathForItem:v8];
  }

  else
  {
    memset(buf, 0, 32);
  }

  v17 = *buf;
  v18 = *&buf[16];
  v16 = PXIndexPathFromSimpleIndexPath();
  [(PUImportViewController *)self _navigateToPhotoAtIndexPath:v16 animated:1 interactive:0, v17, v18];

LABEL_18:
}

- (void)handleLongPressGesture:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (self->_acceptsLongPress && [v4 state] == 1)
  {
    self->_acceptsLongPress = 0;
    v6 = _importGridLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v14 = 136315138;
      v15 = "[PUImportViewController handleLongPressGesture:]";
      _os_log_debug_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEBUG, "%s", &v14, 0xCu);
    }

    v7 = [(PUPhotosGridViewController *)self contentScrollView];
    [v5 locationInView:v7];
    v9 = v8;
    v11 = v10;
    if (![(PUImportViewController *)self sectionHeadersCoverLocation:?])
    {
      v12 = [(PUImportViewController *)self collectionView];
      v13 = [v12 indexPathForItemAtPoint:{v9, v11}];

      if (v13)
      {
        [(PUImportViewController *)self _navigateToPhotoAtIndexPath:v13 animated:1 interactive:0];
      }
    }
  }

  else if ([v5 state] >= 3)
  {
    self->_acceptsLongPress = 1;
  }
}

- (void)handleDoubleTapGesture:(id)a3
{
  v4 = [(PUImportViewController *)self importController];
  v10 = [v4 selectionManager];

  v5 = [v10 selectionSnapshot];
  if ([v5 isAnyItemSelected] && (objc_msgSend(v5, "dataSource"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "numberOfSelectableItems"), v6, objc_msgSend(v5, "selectedIndexPaths"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v7 == v9))
  {
    [v10 performChanges:&__block_literal_global_34883];
  }

  else
  {
    [(PUImportViewController *)self selectAllSelectableItems];
  }
}

- (BOOL)canBeginDoubleTapGesture:(id)a3
{
  v4 = a3;
  v5 = [(PUImportViewController *)self importController];
  if ([v5 isImportingAssets])
  {
    v6 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v7 = [(PUImportViewController *)self importController];
  v8 = [v7 isDeletingAssets];

  if ((v8 & 1) == 0)
  {
    v5 = [(PUPhotosGridViewController *)self contentScrollView];
    [v4 locationInView:v5];
    v10 = v9;
    v12 = v11;
    v13 = [v5 hitTest:0 withEvent:?];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
      while (1)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        v16 = [v15 superview];

        v15 = v16;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v6 = 0;
    }

    else
    {
LABEL_9:
      if ([(PUImportViewController *)self sectionHeadersCoverLocation:v10, v12])
      {
        v6 = 1;
LABEL_14:

        goto LABEL_15;
      }

      v17 = [(PUImportViewController *)self collectionView];
      v15 = [v17 indexPathForItemAtPoint:{v10, v12}];

      v6 = v15 == 0;
    }

    goto LABEL_14;
  }

  v6 = 0;
LABEL_16:

  return v6;
}

- (void)handleTapGesture:(id)a3
{
  v13 = a3;
  v4 = [(PUPhotosGridViewController *)self contentScrollView];
  [v13 locationInView:v4];
  v6 = v5;
  v8 = v7;
  if (![(PUImportViewController *)self sectionHeadersCoverLocation:?])
  {
    v9 = [(PUImportViewController *)self collectionView];
    v10 = [v9 indexPathForItemAtPoint:{v6, v8}];

    v11 = [(PUImportViewController *)self collectionView];
    v12 = [v11 cellForItemAtIndexPath:v10];

    [v12 handleTapGesture:v13];
  }
}

- (void)_navigateToPhotoAtIndexPath:(id)a3 animated:(BOOL)a4 interactive:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = [MEMORY[0x1E69C3620] sharedInstance];
  v10 = [v9 usePhotosOneUp];

  if (v10)
  {
    v11 = [(PUImportViewController *)self importDataSourceManager];
    v12 = [v11 dataSource];

    [v12 identifier];
    PXSimpleIndexPathFromIndexPath();
    memset(v33, 0, sizeof(v33));
    v13 = [v12 assetReferenceAtItemIndexPath:v33];
    v14 = [PUPXAssetsDataSourceManager alloc];
    v15 = [(PUImportViewController *)self importDataSourceManager];
    v16 = [(PUPXAssetsDataSourceManager *)v14 initWithUnderlyingDataSourceManager:v15];

    v17 = [PUPXMediaProvider alloc];
    v18 = [(PUImportViewController *)self importController];
    v19 = [v18 importMediaProvider];
    v20 = [(PUPXMediaProvider *)v17 initWithUnderlyingMediaProvider:v19];

    v21 = [[PUBrowsingSession alloc] initWithDataSourceManager:v16 actionManager:0 mediaProvider:v20];
    v22 = [(PUBrowsingSession *)v21 viewModel];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __75__PUImportViewController__navigateToPhotoAtIndexPath_animated_interactive___block_invoke;
    v29[3] = &unk_1E7B809F0;
    v30 = v22;
    v31 = v13;
    v32 = v16;
    v23 = v16;
    v24 = v13;
    v25 = v22;
    [v25 performChanges:v29];
    v26 = [[PUOneUpViewController alloc] initWithBrowsingSession:v21];
    v27 = [[PUNavigationController alloc] initWithNavigationBarClass:0 toolbarClass:objc_opt_class()];
    [(PUNavigationController *)v27 setModalPresentationStyle:0];
    [(PUNavigationController *)v27 pushViewController:v26 animated:0];
    [(PUImportViewController *)self presentViewController:v27 animated:1 completion:0];
  }

  else
  {
    v28 = [(PUImportViewController *)self oneUpViewControllerForItemAtIndexPath:v8];
    [(PUImportViewController *)self presentOneUpViewController:v28 animated:v6 interactive:v5];
  }
}

void __75__PUImportViewController__navigateToPhotoAtIndexPath_animated_interactive___block_invoke(uint64_t a1)
{
  v2 = [PUPXAssetReference alloc];
  v3 = *(a1 + 40);
  v6 = [*(a1 + 48) assetsDataSource];
  v4 = [v6 identifier];
  v5 = [(PUPXAssetReference *)v2 initWithPXAssetReference:v3 dataSourceIdentifier:v4];
  [*(a1 + 32) setCurrentAssetReference:v5];
}

- (void)presentOneUpViewController:(id)a3 animated:(BOOL)a4 interactive:(BOOL)a5
{
  v5 = a4;
  v7 = a3;
  v8 = _importGridLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, "Presenting Import One Up", v10, 2u);
  }

  v9 = [[PUNavigationController alloc] initWithNavigationBarClass:0 toolbarClass:objc_opt_class()];
  [(PUNavigationController *)v9 pushViewController:v7 animated:0];

  [(PUNavigationController *)v9 setModalPresentationStyle:0];
  [(PUImportViewController *)self presentViewController:v9 animated:v5 completion:0];
}

- (id)oneUpViewControllerForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PUImportViewController *)self importDataSourceManager];
  v6 = [v5 dataSource];

  if (v4)
  {
    v19 = 0uLL;
    v20 = 0uLL;
    [v6 identifier];
    PXSimpleIndexPathFromIndexPath();
  }

  else
  {
    v19 = 0uLL;
    v20 = 0uLL;
    if (v6)
    {
      [v6 firstItemIndexPath];
    }
  }

  v18[0] = v19;
  v18[1] = v20;
  v7 = [v6 assetReferenceAtItemIndexPath:v18];

  v8 = [v7 asset];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [v7 asset];
    if ([v10 isDuplicate])
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = [PUImportOneUpViewController alloc];
  v13 = [(PUImportViewController *)self importController];
  v14 = [(PUImportViewController *)self importController];
  v15 = [v14 importMediaProvider];
  v16 = [(PUImportOneUpViewController *)v12 initWithImportController:v13 mediaProvider:v15 startingAssetReference:v7 presentationFilter:v11];

  return v16;
}

- (void)updateDataSourceManagerFilters
{
  if ([(PUImportViewController *)self shouldCollapseAlreadyImportedSection])
  {
    v3 = [(PUImportViewController *)self importDataSourceManager];
    v4 = [v3 unfilteredAlreadyImportedAssetCollection];

    v5 = [v4 numberOfItems];
    v6 = [(PUPhotosGridViewController *)self gridLayout];
    v7 = [v6 columnsPerRow];

    v8 = [(PUImportViewController *)self importController];
    [v8 setAlreadyImportedItemsSelectable:v5 <= v7];
  }

  else
  {
    v4 = [(PUImportViewController *)self importController];
    [v4 setAlreadyImportedItemsSelectable:1];
  }

  if ([(PUImportViewController *)self shouldCollapseAlreadyImportedSection])
  {
    v9 = [(PUPhotosGridViewController *)self gridLayout];
    v10 = [v9 columnsPerRow];
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = [(PUImportViewController *)self importDataSourceManager];
  [v11 setMaxAlreadyImportedItems:v10];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__PUImportViewController_updateDataSourceManagerFilters__block_invoke;
  block[3] = &unk_1E7B80DD0;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __56__PUImportViewController_updateDataSourceManagerFilters__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) importDataSourceManager];
  [v1 updateFilteredAssetsIfNeeded];
}

- (double)sectionedGridLayout:(id)a3 aspectRatioForItemAtIndexPath:(id)a4
{
  v5 = a4;
  if (v5)
  {
    *buf = 0u;
    v15 = 0u;
    v6 = [(PUImportViewController *)self importDataSource];
    [v6 identifier];
    PXSimpleIndexPathFromIndexPath();

    v7 = [(PUImportViewController *)self importDataSource];
    memset(v13, 0, sizeof(v13));
    v8 = [v7 assetAtItemIndexPath:v13];

    if (v8)
    {
      [v8 aspectRatio];
      v10 = v9;
    }

    else
    {
      v10 = 1.0;
    }
  }

  else
  {
    v11 = PLUIGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_DEFAULT, "IndexPath missing for aspectRatioForItemAtIndexPath", buf, 2u);
    }

    v10 = -1.0;
  }

  return v10;
}

- (double)sectionedGridLayout:(id)a3 accessibilitySectionHeaderHeightForVisualSection:(int64_t)a4
{
  v6 = a3;
  v7 = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v7);

  if (IsAccessibilityCategory)
  {
    v9 = [(PUImportViewController *)self _spec];
    v10 = [v9 sectionHeaderStyle];

    v11 = [MEMORY[0x1E695DF00] date];
    v12 = [MEMORY[0x1E695DF00] date];
    v13 = [MEMORY[0x1E69C38E8] sharedMetrics];
    v14 = [v6 collectionView];
    [v14 bounds];
    [v13 accessibilitySectionHeaderHeightForStyle:v10 width:0 actionButton:0 disclosure:&stru_1F2AC6818 title:v11 startDate:v12 endDate:CGRectGetWidth(v19) + -8.0 + -8.5 locations:MEMORY[0x1E695E0F0] actionButtonSpec:0];
    v16 = v15;
  }

  else
  {
    [(PUImportViewController *)self sectionedGridLayout:v6 sectionHeaderHeightForVisualSection:a4];
    v16 = v17;
  }

  return v16;
}

- (double)sectionedGridLayout:(id)a3 sectionHeaderHeightForVisualSection:(int64_t)a4
{
  v6 = [(PUImportViewController *)self referenceHeaderView];
  v7 = [(PUImportViewController *)self cachedHeaderHeight];

  if (!v7)
  {
    v8 = [MEMORY[0x1E696AC88] indexPathWithIndex:a4];
    [(PUImportViewController *)self configureSupplementaryView:v6 ofKind:@"PUImportSectionHeaderReuseIdentifier" forIndexPath:v8];
    v9 = [(PUImportViewController *)self traitCollection];
    v10 = [v9 horizontalSizeClass];
    v11 = [(PUImportViewController *)self collectionView];
    [v11 bounds];
    Width = CGRectGetWidth(v25);
    v13 = [(PUPhotosGridViewController *)self gridSpec];
    [v13 sectionHeaderInsets];
    [v6 heightForSizeClass:v10 width:Width safeAreaInsets:{v14, v15, v16, v17}];
    v19 = v18;

    v20 = [MEMORY[0x1E696AD98] numberWithDouble:v19];
    [(PUImportViewController *)self setCachedHeaderHeight:v20];
  }

  v21 = [(PUImportViewController *)self cachedHeaderHeight];
  [v21 doubleValue];
  v23 = v22;

  return v23;
}

- (BOOL)anyAlreadyImportedItemsAreSelected
{
  v2 = [(PUImportViewController *)self importController];
  v3 = [v2 selectionManager];

  v4 = [v3 selectionSnapshot];
  v5 = [v4 dataSource];
  v6 = [v5 alreadyImportedCollection];
  if (v6)
  {
    v7 = [v5 sectionForAssetCollection:v6];
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v8 = [v4 selectedIndexPaths];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60__PUImportViewController_anyAlreadyImportedItemsAreSelected__block_invoke;
    v11[3] = &unk_1E7B78128;
    v11[4] = &v12;
    v11[5] = v7;
    [v8 enumerateItemIndexPathsUsingBlock:v11];

    v9 = *(v13 + 24);
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t __60__PUImportViewController_anyAlreadyImportedItemsAreSelected__block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if (*(a2 + 8) == *(result + 40))
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (void)updateAlreadyImportedCollapseStatus
{
  v3 = [(PUImportViewController *)self anyAlreadyImportedItemsAreSelected];
  v4 = [(PUImportViewController *)self importDataSourceManager];
  v9 = [v4 unfilteredAlreadyImportedAssetCollection];

  v5 = [v9 numberOfItems];
  v6 = [(PUPhotosGridViewController *)self gridLayout];
  v7 = [v6 columnsPerRow];

  if ([(PUImportViewController *)self userWantsAlreadyImportedSectionCollapsedIfPossible])
  {
    v8 = (v5 > v7) & ~v3;
  }

  else
  {
    v8 = 0;
  }

  [(PUImportViewController *)self setShouldCollapseAlreadyImportedSection:v8];
  [(PUImportViewController *)self updateAlreadyImportedHeaderIfVisible];
  [(PUImportViewController *)self updateDataSourceManagerFilters];
}

- (void)toggleAlreadyImportedExpansion
{
  [(PUImportViewController *)self setUserWantsAlreadyImportedSectionCollapsedIfPossible:[(PUImportViewController *)self userWantsAlreadyImportedSectionCollapsedIfPossible]^ 1];

  [(PUImportViewController *)self updateAlreadyImportedCollapseStatus];
}

- (void)selectAllSelectableItems
{
  v3 = [(PUImportViewController *)self importDataSource];
  v5 = [v3 allSelectableItems];

  v4 = [(PUImportViewController *)self importController];
  [v4 setSelected:1 forItems:v5];
}

- (BOOL)areAllItemsSelectedInAssetCollection:(id)a3
{
  v4 = a3;
  v5 = [(PUImportViewController *)self importDataSource];
  v6 = [v5 sectionForAssetCollection:v4];
  v7 = [(PUImportViewController *)self importController];
  v8 = [v7 selectionManager];

  v9 = [v8 selectionSnapshot];
  v10 = [v9 selectedIndexPaths];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__PUImportViewController_areAllItemsSelectedInAssetCollection___block_invoke;
  v13[3] = &unk_1E7B78128;
  v13[4] = &v14;
  v13[5] = v6;
  [v10 enumerateItemIndexPathsUsingBlock:v13];
  v11 = [v4 numberOfItems];
  LOBYTE(v6) = v15[3] == v11;
  _Block_object_dispose(&v14, 8);

  return v6;
}

uint64_t __63__PUImportViewController_areAllItemsSelectedInAssetCollection___block_invoke(uint64_t result, uint64_t a2)
{
  if (*(a2 + 8) == *(result + 40))
  {
    ++*(*(*(result + 32) + 8) + 24);
  }

  return result;
}

- (void)setAllItemsSelected:(BOOL)a3 inAssetCollection:(id)a4
{
  v4 = a3;
  v6 = a4;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__34896;
  v13 = __Block_byref_object_dispose__34897;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__PUImportViewController_setAllItemsSelected_inAssetCollection___block_invoke;
  v8[3] = &unk_1E7B78100;
  v8[4] = &v9;
  [v6 arrangedObjects:v8];
  v7 = [(PUImportViewController *)self importController];
  [v7 setSelected:v4 forItems:v10[5]];

  _Block_object_dispose(&v9, 8);
}

- (BOOL)sectionHeadersCoverLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v28 = *MEMORY[0x1E69E9840];
  v6 = [(PUImportViewController *)self collectionView];
  [v6 convertPoint:0 toView:{x, y}];
  v8 = v7;
  v10 = v9;

  v11 = [(PUImportViewController *)self collectionView];
  v12 = [v11 indexPathsForVisibleSupplementaryElementsOfKind:@"PUImportSectionHeaderReuseIdentifier"];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v23 + 1) + 8 * i);
        v19 = [(PUImportViewController *)self collectionView];
        v20 = [v19 supplementaryViewForElementKind:@"PUImportSectionHeaderReuseIdentifier" atIndexPath:v18];

        [v20 bounds];
        [v20 convertRect:0 toView:?];
        v29.x = v8;
        v29.y = v10;
        LOBYTE(v19) = CGRectContainsPoint(v30, v29);

        if (v19)
        {
          v21 = 1;
          goto LABEL_11;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v21 = 0;
LABEL_11:

  return v21;
}

- (void)updateHeaderView:(id)a3 forAssetCollection:(id)a4
{
  v8 = a3;
  LODWORD(a4) = [(PUImportViewController *)self areAllItemsSelectedInAssetCollection:a4];
  [v8 setShowsActionButton:1];
  if (a4)
  {
    v6 = @"DESELECT_BUTTON_TITLE";
  }

  else
  {
    v6 = @"SELECT_BUTTON_TITLE";
  }

  v7 = PULocalizedString(v6);
  [v8 setActionText:v7];

  [v8 layoutIfNeeded];
}

- (void)updateHeaderView:(id)a3 forAlreadyImportedAssetCollection:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(PUPhotosGridViewController *)self gridLayout];
  v8 = [v7 columnsPerRow];

  v9 = [v6 numberOfItems];
  if (v9 <= v8)
  {
    [v13 setShowsActionButton:0];
    [v13 setActionText:0];
  }

  else
  {
    [v13 setShowsActionButton:1];
    [(PUImportViewController *)self shouldCollapseAlreadyImportedSection];
    v10 = PLLocalizedFrameworkString();
    [v13 setActionText:v10];

    v11 = [(PUImportViewController *)self anyAlreadyImportedItemsAreSelected];
    if ([(PUImportViewController *)self animateHeaderActionButtonChanges])
    {
      v12 = [(PUImportViewController *)self px_isVisible];
    }

    else
    {
      v12 = 0;
    }

    [v13 setActionButtonEnabled:!v11 animated:v12];
  }

  [v13 layoutIfNeeded];
}

- (void)headerViewDidPressActionButton:(id)a3 inHeaderView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v13 = 0;
  if (v7)
  {
    [v7 sectionIndexPath];
  }

  v9 = [(PUImportViewController *)self importDataSource];
  v10 = [v9 assetCollectionForSection:0];

  if ([v10 alreadyImportedGroup])
  {
    [(PUImportViewController *)self toggleAlreadyImportedExpansion];
  }

  else
  {
    if ([(PUImportViewController *)self areAllItemsSelectedInAssetCollection:v10])
    {
      v11 = self;
      v12 = 0;
    }

    else
    {
      v11 = self;
      v12 = 1;
    }

    [(PUImportViewController *)v11 setAllItemsSelected:v12 inAssetCollection:v10];
  }
}

- (void)_getDataForVisualSection:(int64_t)a3 hasActionButton:(BOOL *)a4 title:(id *)a5 startDate:(id *)a6 endDate:(id *)a7
{
  v10 = [(PUImportViewController *)self importDataSource:a3];
  v11 = [v10 assetCollectionForSection:a3];

  if (a5)
  {
    *a5 = [v11 localizedTitle];
  }

  if (a4)
  {
    *a4 = 0;
  }
}

- (void)_updateBackdropGroupNameForHeaderView:(id)a3
{
  v4 = a3;
  v5 = [(PUImportViewController *)self navigationController];
  v7 = [v5 navigationBar];

  v6 = [v7 _backdropViewLayerGroupName];
  [v4 setBackdropViewGroupName:v6];
}

- (void)configureSupplementaryView:(id)a3 ofKind:(id)a4 forIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqualToString:@"PUImportSectionHeaderReuseIdentifier"])
  {
    v11 = v8;
    v12 = [(PUImportViewController *)self importDataSource];
    v13 = [v12 assetCollectionForSection:{objc_msgSend(v10, "section")}];

    v14 = [v13 localizedTitle];
    v15 = [(PUImportViewController *)self importDataSource];
    v16 = [v15 identifier];
    v17 = [v10 section];

    v29[0] = v16;
    v29[1] = v17;
    v30 = xmmword_1B3D0CED0;
    [v11 setSectionIndexPath:v29];
    v28 = v14;
    [v11 setPrimaryText:v14];
    v18 = [(PUImportViewController *)self importDataSourceManager];
    v19 = [v18 unfilteredDataSource];

    v20 = [v13 identifier];
    v21 = [v19 assetCollectionForIdentifier:v20];

    v22 = [v21 numberOfItems];
    if (v22 < 1)
    {
      v25 = 0;
    }

    else
    {
      v23 = v22;
      v24 = PULocalizedString(@"IMPORT_ITEMS_COUNT");
      v27 = v23;
      v25 = PULocalizedStringWithValidatedFormat(v24, @"%d");
    }

    [v11 setSecondaryText:{v25, v27}];
    [v11 setSecondarySymbolName:@"photo.on.rectangle"];
    if ([v13 alreadyImportedGroup])
    {
      [(PUImportViewController *)self updateHeaderView:v11 forAlreadyImportedAssetCollection:v21];
    }

    else
    {
      [(PUImportViewController *)self updateHeaderView:v11 forAssetCollection:v21];
    }

    v26 = [(PUPhotosGridViewController *)self gridSpec];
    [v26 sectionHeaderInsets];
    [v11 setContentInsets:?];

    [(PUImportViewController *)self _updateBackdropGroupNameForHeaderView:v11];
  }

  else
  {
    v31.receiver = self;
    v31.super_class = PUImportViewController;
    [(PUPhotosGridViewController *)&v31 configureSupplementaryView:v8 ofKind:v9 forIndexPath:v10];
  }
}

- (void)updateAlreadyImportedHeaderIfVisible
{
  v3 = [(PUImportViewController *)self importDataSource];
  v11 = [v3 alreadyImportedCollection];

  v4 = [(PUImportViewController *)self importDataSource];
  v5 = [v4 sectionForAssetCollection:v11];

  v6 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:v5];
  v7 = [(PUImportViewController *)self collectionView];
  v8 = [v7 indexPathsForVisibleSupplementaryElementsOfKind:@"PUImportSectionHeaderReuseIdentifier"];

  if ([v8 containsObject:v6])
  {
    v9 = [(PUImportViewController *)self collectionView];
    v10 = [v9 supplementaryViewForElementKind:@"PUImportSectionHeaderReuseIdentifier" atIndexPath:v6];

    [(PUImportViewController *)self configureSupplementaryView:v10 ofKind:@"PUImportSectionHeaderReuseIdentifier" forIndexPath:v6];
  }
}

- (id)newGridLayout
{
  v3 = objc_alloc_init(PUImportSectionedGridLayout);
  [(PUImportSectionedGridLayout *)v3 setDelegate:self];
  [(PUSectionedGridLayout *)v3 setSectionHeaderElementKind:@"PUImportSectionHeaderReuseIdentifier"];
  [(PUImportViewController *)self configureCollectionViewGridLayout:v3];
  return v3;
}

- (void)getEmptyPlaceholderViewTitle:(id *)a3 message:(id *)a4 buttonTitle:(id *)a5 buttonAction:(id *)a6
{
  if ([(PUImportViewController *)self importSourceIsAppleDevice])
  {
    v11 = [(PUImportViewController *)self importController];
    v12 = [v11 isUserRequiredToTrustHostOnSourceDevice];

    v13 = [(PUImportViewController *)self importController];
    v14 = v13;
    if (v12)
    {
      v15 = [v13 importSource];
      v16 = [v15 productKind];

      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UNLOCK_DEVICE_%@", v16];
      v18 = PLLocalizedFrameworkString();
      *a3 = v18;
      *a4 = 0;
      *a5 = 0;
      *a6 = 0;

LABEL_6:
      goto LABEL_8;
    }

    v19 = [v13 isLoadingInitialBatchOfAssets];

    if (v19)
    {
      v20 = [(PUImportViewController *)self importController];
      v21 = [v20 importSource];
      v16 = [v21 name];

      v17 = PLLocalizedFrameworkString();
      *a3 = PULocalizedStringWithValidatedFormat(v17, @"%@");
      *a4 = 0;
      *a5 = 0;
      *a6 = 0;
      goto LABEL_6;
    }
  }

  v16 = PLLocalizedFrameworkString();
  *a3 = v16;
LABEL_8:

  v22 = PLLocalizedFrameworkString();
  *a4 = v22;
  *a5 = 0;
  *a6 = 0;
}

- (BOOL)importSourceIsAppleDevice
{
  v3 = [(PUImportViewController *)self importController];
  v4 = [v3 importSource];
  v5 = [v4 productKind];

  v6 = [(PUImportViewController *)self importController];
  v7 = [v6 importSource];
  v8 = [v7 name];

  v9 = ([v5 isEqualToString:@"Camera"] & 1) == 0 && objc_msgSend(v8, "length") != 0;
  return v9;
}

- (BOOL)wantsPlaceholderView
{
  v3 = [(PUImportViewController *)self isEmpty];
  v4 = [(PUImportViewController *)self importController];
  v5 = [v4 isLoadingInitialBatchOfAssets];

  v6 = [(PUImportViewController *)self importSourceIsAppleDevice];
  v7 = [(PUImportViewController *)self importController];
  v8 = [v7 isUserRequiredToTrustHostOnSourceDevice];

  if (v8)
  {
    return 1;
  }

  else
  {
    return v3 & (v5 & v6 | v5 ^ 1);
  }
}

- (BOOL)isEmpty
{
  v2 = [(PUImportViewController *)self importDataSource];
  v3 = [v2 numberOfItems] == 0;

  return v3;
}

- (void)updateNavigationBarAnimated:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x1E69E9840];
  v5 = _importGridLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315138;
    v9 = "[PUImportViewController updateNavigationBarAnimated:]";
    _os_log_debug_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEBUG, "%s: [PUPhotosGridViewController] super squash", &v8, 0xCu);
  }

  v6 = [(PUImportViewController *)self importController];
  v7 = [v6 isLoadingContent];

  if ((v7 & 1) == 0)
  {
    [(PUImportViewController *)self _updateToolbarAnimated:v3];
  }
}

- (BOOL)canDragOut
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = _importGridLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "[PUImportViewController canDragOut]";
    _os_log_debug_impl(&dword_1B36F3000, v2, OS_LOG_TYPE_DEBUG, "%s: [PUPhotosGridViewController] super squash", &v4, 0xCu);
  }

  return 0;
}

- (int64_t)contentFillModeForImportCell:(id)a3
{
  v3 = [(PUImportViewController *)self _spec];
  v4 = [v3 cellFillMode];

  return v4;
}

- (void)importCell:(id)a3 didRequestCancellationOfThumbnailRequestWithID:(int64_t)a4
{
  v6 = [(PUImportViewController *)self importController];
  v5 = [v6 importMediaProvider];
  [v5 cancelImageRequest:a4];
}

- (int64_t)importCell:(id)a3 requestImageForImportItem:(id)a4 ofSize:(unint64_t)a5 completion:(id)a6
{
  v9 = a6;
  if (v9)
  {
    v10 = a4;
    v11 = [(PUImportViewController *)self importController];
    v12 = [v11 importMediaProvider];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __81__PUImportViewController_importCell_requestImageForImportItem_ofSize_completion___block_invoke;
    v15[3] = &unk_1E7B780D8;
    v16 = v9;
    v13 = [v12 requestImageForImportItem:v10 ofSize:a5 completion:v15];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (CGSize)gridItemSize
{
  v2 = [(PUImportViewController *)self _gridLayout];
  [v2 itemSize];
  v4 = v3;
  v6 = v5;

  if (v4 == *MEMORY[0x1E695F060] && v6 == *(MEMORY[0x1E695F060] + 8))
  {
    _PFAssertContinueHandler();
  }

  v8 = v4;
  v9 = v6;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(PUImportViewController *)self collectionView:a3];
  v6 = [v5 indexPathsForVisibleItems];

  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(PUImportViewController *)self _updateItemViewAtIndex:*(*(&v11 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)notifyUserOfImportCompletionIfNeededWithImportSession:(id)a3 results:(id)a4
{
  v57 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [(PUImportViewController *)self importController];
  v10 = [v9 importSource];

  objc_storeStrong(&self->_completedImportSessionInfo, a3);
  if (!self->_completedImportSessionInfo)
  {
    _PFAssertContinueHandler();
  }

  v11 = [v8 importRecords];
  if (!v10)
  {
    self->_completedAnImport = 0;
    [0 canDeleteContent];
    goto LABEL_51;
  }

  v12 = [(PXImportSessionInfo *)self->_completedImportSessionInfo importedItems];
  self->_completedAnImport = [v12 count] != 0;

  v13 = [v10 canDeleteContent];
  v14 = [(PXImportSessionInfo *)self->_completedImportSessionInfo importedItems];
  v15 = [v14 count];

  if (v15)
  {
    v16 = v13 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    v17 = [(PXImportSessionInfo *)self->_completedImportSessionInfo importStopped];
    v18 = _importGridLog();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if (v19)
      {
        *buf = 0;
        _os_log_impl(&dword_1B36F3000, v18, OS_LOG_TYPE_DEFAULT, "Showing Import Complete Dialog: Import Stopped", buf, 2u);
      }
    }

    else if (v19)
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v18, OS_LOG_TYPE_DEFAULT, "Showing Import Complete Dialog: Import Complete", buf, 2u);
    }

    v20 = PLLocalizedFrameworkString();
    v49 = PLLocalizedFrameworkString();
    v48 = PLLocalizedFrameworkString();
    v21 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"KEEPORDELETE_"];
    v45 = v11;
    v46 = v20;
    v47 = v21;
    if ([v11 count] == 1)
    {
      v22 = [v11 objectAtIndex:0];
      v23 = [v22 importAsset];

      if ([v23 isImage] && !objc_msgSend(v23, "isLivePhoto"))
      {
        v24 = @"PHOTO_";
      }

      else if ([v23 isMovie])
      {
        v24 = @"VIDEO_";
      }

      else
      {
        v24 = @"MEDIA_";
      }

      [v21 appendString:v24];
    }

    else
    {
      v44 = v7;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v25 = v11;
      v26 = [v25 countByEnumeratingWithState:&v52 objects:v56 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v53;
        v29 = 1;
        v30 = 1;
        while (2)
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v53 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v32 = [*(*(&v52 + 1) + 8 * i) importAsset];
            if ([v32 isImage])
            {
              v29 = 0;
            }

            else
            {
              v30 = 0;
              v29 &= [v32 isMovie];
            }

            if ((v30 & 1) == 0 && !v29)
            {

              v21 = v47;
              [v47 appendString:@"MEDIA_"];
              v7 = v44;
              v20 = v46;
              goto LABEL_41;
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v52 objects:v56 count:16];
          if (v27)
          {
            continue;
          }

          break;
        }

        v20 = v46;
        if ((v30 & 1) == 0)
        {
          v7 = v44;
          v21 = v47;
          if (v29)
          {
            [v47 appendString:@"VIDEOS_"];
          }

          goto LABEL_41;
        }
      }

      else
      {
      }

      v21 = v47;
      [v47 appendString:@"PHOTOS_"];
      v7 = v44;
    }

LABEL_41:
    v33 = [v10 productKind];
    v34 = [v10 name];
    if (([v33 isEqualToString:@"Camera"] & 1) != 0 || !objc_msgSend(v34, "length"))
    {
      [v21 appendString:v33];
      v36 = PLLocalizedFrameworkString();
    }

    else
    {
      [v21 appendString:@"FORMAT"];
      v35 = PLLocalizedFrameworkString();
      v36 = PUStringWithValidatedFormat();
    }

    *buf = 0;
    v37 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v37 setObject:v20 forKey:*MEMORY[0x1E695EE58]];
    [v37 setObject:v36 forKey:*MEMORY[0x1E695EE60]];
    [v37 setObject:v49 forKey:*MEMORY[0x1E695EE78]];
    [v37 setObject:v48 forKey:*MEMORY[0x1E695EE70]];
    v38 = CFUserNotificationCreate(*MEMORY[0x1E695E480], 0.0, 3uLL, buf, v37);
    self->_importCompleteNotification = v38;
    RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v38, _ImportCompleteAlertNotificationResponseHandler, 0);
    if (RunLoopSource)
    {
      v40 = RunLoopSource;
      Current = CFRunLoopGetCurrent();
      CFRunLoopAddSource(Current, v40, *MEMORY[0x1E695E8D0]);
      importCompleteNotification = v40;
    }

    else
    {
      v43 = PLCameraConnectionKitGetLog();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *v50 = 0;
        _os_log_impl(&dword_1B36F3000, v43, OS_LOG_TYPE_ERROR, "Couldn't create runloop source for notification", v50, 2u);
      }

      importCompleteNotification = self->_importCompleteNotification;
    }

    CFRelease(importCompleteNotification);

    v11 = v45;
  }

LABEL_51:
}

- (void)importController:(id)a3 didLoadAssets:(id)a4 exceptions:(id)a5
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = a5;
  if (![a4 count] && objc_msgSend(v6, "count"))
  {
    v7 = _importGridLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      v9 = v6;
      _os_log_error_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "Error(s) loading assets: %{public}@", &v8, 0xCu);
    }
  }
}

- (void)importController:(id)a3 didCompleteImportWithImportSession:(id)a4 results:(id)a5 completion:(id)a6
{
  v23 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = _importGridLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "[PUImportViewController importController:didCompleteImportWithImportSession:results:completion:]";
    _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v13 = dispatch_time(0, 500000000);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __97__PUImportViewController_importController_didCompleteImportWithImportSession_results_completion___block_invoke;
  v17[3] = &unk_1E7B7C590;
  v17[4] = self;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v14 = v11;
  v15 = v10;
  v16 = v9;
  dispatch_after(v13, MEMORY[0x1E69E96A0], v17);
}

uint64_t __97__PUImportViewController_importController_didCompleteImportWithImportSession_results_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) notifyUserOfImportCompletionIfNeededWithImportSession:*(a1 + 40) results:*(a1 + 48)];
  v2 = *(*(a1 + 56) + 16);

  return v2();
}

- (void)_importControllerWillBeginAction
{
  self->_allowsSelection = 0;
  [(PUImportViewController *)self setNumItemsCompleted:0];

  [(PUImportViewController *)self setNumTotalItemsToComplete:0];
}

- (void)_importControllerDidEndAction
{
  self->_allowsSelection = 1;
  [(PUImportViewController *)self setNumItemsCompleted:0];
  [(PUImportViewController *)self setNumTotalItemsToComplete:0];

  [(PUImportViewController *)self _updateToolbarAnimated:0];
}

- (id)importDestinationForActionCoordinator:(id)a3
{
  v3 = [(PUImportViewController *)self importController];
  v4 = [v3 importDestinationAlbum];

  return v4;
}

- (void)actionCoordinatorDidEndDelete:(id)a3
{
  [(PUImportViewController *)self _endUninterruptibleOperation];
  [(PUImportViewController *)self _importControllerDidEndAction];

  [(PUPhotosGridViewController *)self updatePeripheralInterfaceAnimated:1];
}

- (void)actionCoordinatorWillBeginDelete:(id)a3
{
  [(PUImportViewController *)self _beginUninterruptibleOperation];

  [(PUImportViewController *)self _importControllerWillBeginAction];
}

- (void)actionCoordinator:(id)a3 didCompleteWithImportSession:(id)a4 results:(id)a5
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = _importGridLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[PUImportViewController actionCoordinator:didCompleteWithImportSession:results:]";
    _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  [(PUImportViewController *)self _endImport];
}

- (void)importControllerProgressDidChange:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69C4068]];

  v7 = [v4 userInfo];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69C4060]];

  v9 = [v4 userInfo];

  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x1E69C4078]];

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    _PFAssertContinueHandler();
  }

  [v6 doubleValue];
  v12 = v11;
  v13 = _importGridLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v25 = "[PUImportViewController importControllerProgressDidChange:]";
    v26 = 2048;
    v27 = v12;
    _os_log_impl(&dword_1B36F3000, v13, OS_LOG_TYPE_INFO, "%s: setting progress to %f ", buf, 0x16u);
  }

  if (v12 == 0.0)
  {
    v14 = [(PUImportViewController *)self roundProgressView];
    [v14 resetProgress];
  }

  v15 = [(PUImportViewController *)self importController];
  [v15 isDeletingAssets];

  v16 = PLLocalizedFrameworkString();
  v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "integerValue")}];
  v23 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v10, "integerValue")}];
  v18 = PUStringWithValidatedFormat();

  v19 = [(PUImportViewController *)self roundProgressView:v17];
  [v19 setProgress:v12];

  -[PUImportViewController setNumItemsCompleted:](self, "setNumItemsCompleted:", [v8 integerValue]);
  -[PUImportViewController setNumTotalItemsToComplete:](self, "setNumTotalItemsToComplete:", [v10 integerValue]);
  [(UIBarButtonItem *)self->_progressButtonItem setAccessibilityLabel:v18];
  if (v12 >= 1.0)
  {
    v20 = PLLocalizedFrameworkString();
    [(UIBarButtonItem *)self->_progressButtonItem setAccessibilityLabel:v20];
  }

  v21 = [MEMORY[0x1E69C3620] sharedInstance];
  v22 = [v21 showProgressTitles];

  if (v22)
  {
    [(PUImportViewController *)self _updateToolbarAnimated:0];
  }
}

- (void)stopImport:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = _importGridLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[PUImportViewController stopImport:]";
    _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  v5 = [(PUImportViewController *)self actionCoordinator];
  [v5 stopImport];
}

- (void)delete:(id)a3
{
  v4 = a3;
  v5 = [(PUImportViewController *)self actionCoordinator];
  [v5 deleteItemsFromBarButtonItem:v4];
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && sel_delete_ == a3)
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PUImportViewController;
    v7 = [(PUPhotosGridViewController *)&v9 canPerformAction:a3 withSender:v6];
  }

  return v7;
}

- (void)transitionFromDataSource:(id)a3 toDataSource:(id)a4 animated:(BOOL)a5 completionHandler:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(PUImportViewController *)self importDataSourceManager];
  v14 = [v13 changeHistory];

  v15 = [(PUImportViewController *)self changeDetailsHelper];

  if (!v15)
  {
    objc_initWeak(&location, self);
    v16 = [PUImportChangeDetailsCollectionViewHelper alloc];
    v17 = [(PUImportViewController *)self collectionView];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __91__PUImportViewController_transitionFromDataSource_toDataSource_animated_completionHandler___block_invoke;
    v23[3] = &unk_1E7B78088;
    objc_copyWeak(&v24, &location);
    v18 = [(PUImportChangeDetailsCollectionViewHelper *)v16 initWithCollectionView:v17 dataSourceSettingHandler:v23];
    [(PUImportViewController *)self setChangeDetailsHelper:v18];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  v19 = [(PUImportViewController *)self changeDetailsHelper];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __91__PUImportViewController_transitionFromDataSource_toDataSource_animated_completionHandler___block_invoke_2;
  v21[3] = &unk_1E7B780B0;
  v21[4] = self;
  v22 = v12;
  v20 = v12;
  [v19 transitionFromDataSource:v10 toDataSource:v11 changeHistory:v14 animated:v7 completionHandler:v21];
}

void __91__PUImportViewController_transitionFromDataSource_toDataSource_animated_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setImportDataSource:v3];
}

uint64_t __91__PUImportViewController_transitionFromDataSource_toDataSource_animated_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) shouldStayScrolledToBottom])
  {
    v4 = [*(a1 + 32) collectionView];
    [v4 px_scrollToEdge:3 animated:a2];
  }

  [*(a1 + 32) _updateToolbarAnimated:0];
  [*(a1 + 32) updateVisibleSupplementaryViewsOfKind:@"PUImportSectionHeaderReuseIdentifier"];
  [*(a1 + 32) updatePeripheralInterfaceAnimated:1];
  [*(a1 + 32) updateAlreadyImportedCollapseStatus];
  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)handleNewDataSource:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PUImportViewController *)self importDataSource];
  v6 = [v5 identifier];
  if (v6 != [v4 identifier])
  {
    if ([(PUImportViewController *)self performingDataSourceChange])
    {
      v7 = _importGridLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v20 = [v4 identifier];
        _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "Collection view is performing changes, making pending data source: %ti", buf, 0xCu);
      }

      [(PUImportViewController *)self setPendingDataSource:v4];
    }

    else
    {
      if ([(PUImportViewController *)self px_isVisible])
      {
        v8 = [(PUImportViewController *)self importController];
        if ([v8 isLoadingInitialBatchOfAssets])
        {
          v9 = 0;
        }

        else
        {
          v10 = [(PUImportViewController *)self isViewAppearing];
          if (v4)
          {
            v11 = v5 == 0;
          }

          else
          {
            v11 = 1;
          }

          v12 = !v11;
          if (v10)
          {
            v9 = 0;
          }

          else
          {
            v9 = v12;
          }
        }
      }

      else
      {
        v9 = 0;
      }

      v13 = [v5 alreadyImportedCollection];
      v14 = [v13 numberOfItems];

      v15 = [v4 alreadyImportedCollection];
      v16 = [v15 numberOfItems];

      if ([(PUImportViewController *)self shouldCollapseAlreadyImportedSection])
      {
        v17 = ![(PUImportViewController *)self isTransitioningToNewSize];
        if (v14 <= v16)
        {
          v17 = 1;
        }

        v9 = v9 & v17;
      }

      [(PUImportViewController *)self setPerformingDataSourceChange:1];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __46__PUImportViewController_handleNewDataSource___block_invoke;
      v18[3] = &unk_1E7B80DD0;
      v18[4] = self;
      [(PUImportViewController *)self transitionFromDataSource:v5 toDataSource:v4 animated:v9 completionHandler:v18];
    }
  }
}

void __46__PUImportViewController_handleNewDataSource___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__PUImportViewController_handleNewDataSource___block_invoke_2;
  block[3] = &unk_1E7B80DD0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __46__PUImportViewController_handleNewDataSource___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = _importGridLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) importDataSource];
    v10 = 134217984;
    v11 = [v3 identifier];
    _os_log_impl(&dword_1B36F3000, v2, OS_LOG_TYPE_DEFAULT, "Finished transitioning to: %lu", &v10, 0xCu);
  }

  [*(a1 + 32) setPerformingDataSourceChange:0];
  v4 = [*(a1 + 32) pendingDataSource];

  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [v5 pendingDataSource];
    [*(a1 + 32) setPendingDataSource:0];
    v7 = _importGridLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 identifier];
      v10 = 134217984;
      v11 = v8;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "Applying pending data source: %lu", &v10, 0xCu);
    }

    [*(a1 + 32) handleNewDataSource:v6];
  }

  else if ([v5 needsDataReloadAfterAnimatingDataSourceChange])
  {
    v9 = _importGridLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_DEFAULT, "Performing reload after animating source change, due to layoutSubview while animating", &v10, 2u);
    }

    [*(a1 + 32) setNeedsDataReloadAfterAnimatingDataSourceChange:0];
    [*(a1 + 32) reloadData];
  }
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v8 = a3;
  if (PXImportControllerObserverContext_34960 == a5)
  {
    if (v6)
    {
      [(PUPhotosGridViewController *)self invalidateEmptyPlaceholderView];
    }

    else
    {
      if ((v6 & 2) != 0 || (v6 & 4) != 0)
      {
        goto LABEL_19;
      }

      if ((v6 & 8) != 0)
      {
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __55__PUImportViewController_observable_didChange_context___block_invoke;
        v27[3] = &unk_1E7B80DD0;
        v27[4] = self;
        v21 = MEMORY[0x1E69E96A0];
        v22 = v27;
        goto LABEL_21;
      }

      if ((v6 & 0x10) == 0)
      {
        goto LABEL_24;
      }
    }

    [(PUPhotosGridViewController *)self updateEmptyPlaceholderView];
LABEL_19:
    [(PUImportViewController *)self _updateToolbarAnimated:0];
    goto LABEL_24;
  }

  if (PXImportAssetsDataSourceManagerObserverContext_34961 != a5)
  {
    if (PUImportUnfilteredAssetsDataSourceManagerObserverContext != a5)
    {
      if ((v6 & 1) != 0 && PUImportSelectionManagerObserverContext_34962 == a5)
      {
        v9 = [(PUImportViewController *)self currentSelectionSnapshot];
        v10 = [(PUImportViewController *)self importController];
        v11 = [v10 selectionManager];
        v12 = [v11 selectionSnapshot];
        [(PUImportViewController *)self setCurrentSelectionSnapshot:v12];

        v13 = [v9 selectedIndexPaths];
        v14 = [(PUImportViewController *)self currentSelectionSnapshot];
        v15 = [v14 selectedIndexPaths];
        v16 = v15;
        if (v13 == v15)
        {
        }

        else
        {
          v17 = [v13 isEqual:v15];

          if ((v17 & 1) == 0)
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __55__PUImportViewController_observable_didChange_context___block_invoke_4;
            block[3] = &unk_1E7B80DD0;
            block[4] = self;
            dispatch_async(MEMORY[0x1E69E96A0], block);
          }
        }
      }

      goto LABEL_24;
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __55__PUImportViewController_observable_didChange_context___block_invoke_3;
    v24[3] = &unk_1E7B80DD0;
    v24[4] = self;
    v21 = MEMORY[0x1E69E96A0];
    v22 = v24;
LABEL_21:
    dispatch_async(v21, v22);
    goto LABEL_24;
  }

  if (v6)
  {
    v18 = [(PUImportViewController *)self importDataSourceManager];
    v19 = [v18 dataSource];

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __55__PUImportViewController_observable_didChange_context___block_invoke_2;
    v25[3] = &unk_1E7B80C38;
    v25[4] = self;
    v26 = v19;
    v20 = v19;
    dispatch_async(MEMORY[0x1E69E96A0], v25);
  }

LABEL_24:
}

uint64_t __55__PUImportViewController_observable_didChange_context___block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidateEmptyPlaceholderView];
  v2 = *(a1 + 32);

  return [v2 updateEmptyPlaceholderView];
}

uint64_t __55__PUImportViewController_observable_didChange_context___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _updateToolbarAnimated:0];
  v2 = *(a1 + 32);

  return [v2 updateAlreadyImportedHeaderIfVisible];
}

uint64_t __55__PUImportViewController_observable_didChange_context___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _updateToolbarAnimated:0];
  [*(a1 + 32) setAnimateHeaderActionButtonChanges:1];
  [*(a1 + 32) updateVisibleSupplementaryViewsOfKind:@"PUImportSectionHeaderReuseIdentifier"];
  [*(a1 + 32) setAnimateHeaderActionButtonChanges:0];
  v2 = *(a1 + 32);

  return [v2 updateAlreadyImportedCollapseStatus];
}

- (void)setImportDataSource:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _importGridLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(PXImportAssetsDataSource *)self->_importDataSource identifier];
    v7 = [(PXImportAssetsDataSource *)self->_importDataSource numberOfSections];
    v8 = [(PXImportAssetsDataSource *)self->_importDataSource numberOfItems];
    v13 = 136316674;
    v14 = "[PUImportViewController setImportDataSource:]";
    v15 = 2048;
    v16 = v6;
    v17 = 2048;
    v18 = v7;
    v19 = 2048;
    v20 = v8;
    v21 = 2048;
    v22 = [v4 identifier];
    v23 = 2048;
    v24 = [v4 numberOfSections];
    v25 = 2048;
    v26 = [v4 numberOfItems];
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "%s: Going from data source %lu (%lu sections, %lu assets) to %lu (%lu sections, %lu assets)", &v13, 0x48u);
  }

  importDataSource = self->_importDataSource;
  self->_importDataSource = v4;
  v10 = v4;

  v11 = self->_importDataSource;
  v12 = [(PUImportViewController *)self fakePhotosDataSource];
  [v12 setImportDataSource:v11];
}

- (void)setUnfilteredImportDataSourceManager:(id)a3
{
  v5 = a3;
  unfilteredImportDataSourceManager = self->_unfilteredImportDataSourceManager;
  if (unfilteredImportDataSourceManager != v5)
  {
    v7 = v5;
    [(PXImportAssetsDataSourceManager *)unfilteredImportDataSourceManager unregisterChangeObserver:self context:PUImportUnfilteredAssetsDataSourceManagerObserverContext];
    objc_storeStrong(&self->_unfilteredImportDataSourceManager, a3);
    unfilteredImportDataSourceManager = [(PXImportAssetsDataSourceManager *)self->_unfilteredImportDataSourceManager registerChangeObserver:self context:PUImportUnfilteredAssetsDataSourceManagerObserverContext];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](unfilteredImportDataSourceManager, v5);
}

- (void)setImportDataSourceManager:(id)a3
{
  v5 = a3;
  importDataSourceManager = self->_importDataSourceManager;
  if (importDataSourceManager != v5)
  {
    v8 = v5;
    [(PXImportAssetsDataSourceManager *)importDataSourceManager unregisterChangeObserver:self context:PXImportAssetsDataSourceManagerObserverContext_34961];
    objc_storeStrong(&self->_importDataSourceManager, a3);
    [(PXImportAssetsDataSourceManager *)self->_importDataSourceManager registerChangeObserver:self context:PXImportAssetsDataSourceManagerObserverContext_34961];
    v7 = [(PXImportAssetsDataSourceManager *)self->_importDataSourceManager dataSource];
    [(PUImportViewController *)self handleNewDataSource:v7];

    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](importDataSourceManager, v5);
}

- (void)setImportController:(id)a3
{
  v5 = a3;
  if (self->_importController != v5)
  {
    v13 = v5;
    v6 = [(PUImportViewController *)self unfilteredImportDataSourceManager];

    if (v6)
    {
      importController = self->_importController;
      v8 = [(PUImportViewController *)self unfilteredImportDataSourceManager];
      [(PXImportController *)importController removeDataSourceManager:v8];

      [(PUImportViewController *)self setUnfilteredImportDataSourceManager:0];
    }

    v9 = [(PXImportController *)self->_importController selectionManager];
    [v9 unregisterChangeObserver:self context:PUImportSelectionManagerObserverContext_34962];

    [(PXImportController *)self->_importController unregisterChangeObserver:self context:PXImportControllerObserverContext_34960];
    objc_storeStrong(&self->_importController, a3);
    v10 = [(PXImportController *)self->_importController dataSourceManager];
    [(PUImportViewController *)self setImportDataSourceManager:v10];

    [(PUImportViewController *)self setUserWantsAlreadyImportedSectionCollapsedIfPossible:1];
    [(PUImportViewController *)self setShouldCollapseAlreadyImportedSection:[(PUImportViewController *)self userWantsAlreadyImportedSectionCollapsedIfPossible]];
    [(PUImportViewController *)self updateDataSourceManagerFilters];
    [(PXImportController *)self->_importController registerChangeObserver:self context:PXImportControllerObserverContext_34960];
    v11 = [(PXImportController *)self->_importController selectionManager];
    [v11 registerChangeObserver:self context:PUImportSelectionManagerObserverContext_34962];

    v12 = [(PXImportController *)self->_importController createDataSourceManagerWithLogIdentifier:@"unfiltered"];
    [(PUImportViewController *)self setUnfilteredImportDataSourceManager:v12];

    v5 = v13;
  }
}

- (void)setImportSource:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x1E69C3620] sharedInstance];
    v6 = [v5 showNewestItemsInGridUntilScrolled];

    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = -1;
    }

    v8 = objc_alloc(MEMORY[0x1E69C3608]);
    v9 = [(PUPhotosGridViewController *)self photoLibrary];
    v10 = [v8 initWithImportSource:v4 photoLibrary:v9 imageFormat:objc_msgSend(objc_opt_class() dateOrder:"defaultThumbnailImageFormat"), v7];
    [(PUImportViewController *)self setImportController:v10];

    v11 = [(PUImportViewController *)self importController];
    [v11 setImportCompletionDelegate:self];

    v12 = [PUImportFakePhotosDataSource alloc];
    v13 = [(PUImportViewController *)self importController];
    v14 = [v13 dataSourceManager];
    v15 = [v14 dataSource];
    v16 = [(PUPhotosGridViewController *)self photoLibrary];
    v17 = [(PUImportFakePhotosDataSource *)v12 initWithImportDataSource:v15 photoLibrary:v16];
    [(PUImportViewController *)self setFakePhotosDataSource:v17];

    v18 = [(PUImportViewController *)self fakePhotosDataSource];
    [(PUPhotosGridViewController *)self setPhotosDataSource:v18];

    [(PUImportViewController *)self setShouldStayScrolledToBottom:v6];
    v19 = [(PUImportViewController *)self importController];
    [v19 loadAssets];

    v20 = [PUImportActionCoordinator alloc];
    v21 = [(PUImportViewController *)self importController];
    v22 = [(PUImportActionCoordinator *)v20 initWithViewController:self importController:v21 loggingSource:0];
    [(PUImportViewController *)self setActionCoordinator:v22];

    v23 = [(PUImportViewController *)self actionCoordinator];
    [v23 setPresentsAdditionalDeleteAllConfirmation:1];

    v24 = [(PUImportViewController *)self actionCoordinator];
    [v24 setDelegate:self];

    [(PUImportViewController *)self enableSwipeSelection];
  }

  else
  {
    [(PUImportViewController *)self setActionCoordinator:0];
    v25 = [(PUImportViewController *)self importController];
    [v25 shutdown];

    [(PUImportViewController *)self setImportController:0];
    [(PUImportViewController *)self _cancelAlerts];
    if (self->_completedAnImport)
    {
      v26 = [(PUImportViewController *)self view];
      v27 = [v26 superview];

      if (v27)
      {
        self->_completedAnImport = 0;
      }
    }

    [(PUImportViewController *)self disableSwipeSelection];
    v28 = [(PUImportViewController *)self presentingViewController];

    if (v28)
    {
      v29 = _importGridLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *v31 = 0;
        _os_log_impl(&dword_1B36F3000, v29, OS_LOG_TYPE_DEFAULT, "Import source went away while modally presented. Auto-dismissing import UI", v31, 2u);
      }

      v30 = [(PUImportViewController *)self presentingViewController];
      [v30 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

- (PHImportSource)importSource
{
  v2 = [(PUImportViewController *)self importController];
  v3 = [v2 importSource];

  return v3;
}

- (void)_cancelAlerts
{
  if (self->_importCompleteNotification)
  {
    v3 = PLCameraConnectionKitGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEBUG, "Cancelling notification", v7, 2u);
    }

    CFUserNotificationCancel(self->_importCompleteNotification);
    CFRelease(self->_importCompleteNotification);
    self->_importCompleteNotification = 0;
  }

  v4 = [(PUImportViewController *)self presentedViewController];

  if (v4)
  {
    v5 = [(PUImportViewController *)self presentedViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    [(PUImportViewController *)self dismissViewControllerAnimated:isKindOfClass & 1 completion:0];
  }
}

- (BOOL)isImporting
{
  v2 = [(PUImportViewController *)self importController];
  v3 = [v2 isImportingAssets];

  return v3;
}

- (void)handleImportCompleteAlertResponse:(__CFUserNotification *)a3 flags:(unint64_t)a4
{
  if (self->_importCompleteNotification == a3)
  {
    if (!self->_completedImportSessionInfo)
    {
      _PFAssertContinueHandler();
    }

    v6 = _importGridLog();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (a4 == 1)
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "Import Complete Dialog: Deleting imported items.", buf, 2u);
      }

      v6 = [(PXImportSessionInfo *)self->_completedImportSessionInfo importedItems];
      [(PUImportViewController *)self _deleteItems:v6];
    }

    else if (v7)
    {
      *v9 = 0;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "Import Complete Dialog: Keeping imported items.", v9, 2u);
    }

    completedImportSessionInfo = self->_completedImportSessionInfo;
    self->_completedImportSessionInfo = 0;

    CFRelease(self->_importCompleteNotification);
    self->_importCompleteNotification = 0;
  }
}

- (void)_deleteItems:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _importGridLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315394;
    v8 = "[PUImportViewController _deleteItems:]";
    v9 = 2112;
    v10 = v4;
    _os_log_debug_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEBUG, "%s: %@", &v7, 0x16u);
  }

  if (![v4 count])
  {
    _PFAssertContinueHandler();
  }

  v6 = _importGridLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[PUImportViewController _deleteItems:]";
    _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "%s: Delete operation starting", &v7, 0xCu);
  }

  [(PUImportActionCoordinator *)self->_actionCoordinator deleteItemsWithoutConfirmation:v4];
}

- (void)_endImport
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = _importGridLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[PUImportViewController _endImport]";
    _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  [(PUImportViewController *)self _endUninterruptibleOperation];
  [(PUImportViewController *)self _importControllerDidEndAction];
}

- (void)_beginImport
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = _importGridLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[PUImportViewController _beginImport]";
    _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  [(PUImportViewController *)self _beginUninterruptibleOperation];
  [(PUImportViewController *)self _importControllerWillBeginAction];
}

- (void)_endUninterruptibleOperation
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = _importGridLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[PUImportViewController _endUninterruptibleOperation]";
    _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  v4 = self->_busyCount - 1;
  self->_busyCount = v4;
  if (!v4)
  {
    v5 = [MEMORY[0x1E69DC668] sharedApplication];
    [v5 setIdleTimerDisabled:0];
  }
}

- (void)_beginUninterruptibleOperation
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = _importGridLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[PUImportViewController _beginUninterruptibleOperation]";
    _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  busyCount = self->_busyCount;
  if (!busyCount)
  {
    v5 = [MEMORY[0x1E69DC668] sharedApplication];
    [v5 setIdleTimerDisabled:1];

    busyCount = self->_busyCount;
  }

  self->_busyCount = busyCount + 1;
}

- (void)_updateItemViewAtIndex:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _importGridLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315394;
    v10 = "[PUImportViewController _updateItemViewAtIndex:]";
    v11 = 2112;
    v12 = v4;
    _os_log_debug_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEBUG, "%s: %@", &v9, 0x16u);
  }

  v6 = [(PUImportViewController *)self collectionView];
  v7 = [v6 cellForItemAtIndexPath:v4];

  if (v7)
  {
    [(PUImportViewController *)self _updateCell:v7 atIndex:v4];
  }

  else
  {
    v8 = _importGridLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136315394;
      v10 = "[PUImportViewController _updateItemViewAtIndex:]";
      v11 = 2112;
      v12 = v4;
      _os_log_debug_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEBUG, "%s: Warning missing cell for index %@", &v9, 0x16u);
    }
  }
}

- (void)_updateCell:(id)a3 atIndex:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _importGridLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "[PUImportViewController _updateCell:atIndex:]";
    *&buf[12] = 2112;
    *&buf[14] = v7;
    _os_log_debug_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEBUG, "%s: %@", buf, 0x16u);
  }

  [v6 refreshThumbnail];
  v9 = [MEMORY[0x1E69C3620] sharedInstance];
  v10 = [v9 showImportItemFilenames];

  if (v10)
  {
    memset(buf, 0, 32);
    v11 = [(PUImportViewController *)self importDataSource];
    [v11 identifier];
    PXSimpleIndexPathFromIndexPath();

    v12 = [(PUImportViewController *)self importDataSource];
    v17[0] = *buf;
    v17[1] = *&buf[16];
    v13 = [v12 assetAtItemIndexPath:v17];

    v14 = MEMORY[0x1E696AEC0];
    v15 = [v13 debugDisplayName];
    v16 = [v14 stringWithFormat:@"%@ [%lu]", v15, objc_msgSend(v7, "row")];
    [v6 updateDebugLabel:v16];
  }

  else
  {
    [v6 updateDebugLabel:0];
  }
}

- (void)_deselectCell:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 representedImportItem];
  v6 = _importGridLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[PUImportViewController _deselectCell:]";
    v10 = 2112;
    v11 = v5;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "%s: model: %@ cell: %@", &v8, 0x20u);
  }

  if (v5)
  {
    v7 = [(PUImportViewController *)self importController];
    [v7 deselectItem:v5];

    [v4 setSelected:0];
  }
}

- (void)_selectCell:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 representedImportItem];
  v6 = _importGridLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[PUImportViewController _selectCell:]";
    v10 = 2112;
    v11 = v5;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "%s: model: %@ cell: %@", &v8, 0x20u);
  }

  if (v5)
  {
    v7 = [(PUImportViewController *)self importController];
    [v7 selectItem:v5];

    [v4 setSelected:1];
  }
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v10.receiver = self;
  v10.super_class = PUImportViewController;
  [(PUPhotosGridViewController *)&v10 collectionView:a3 didEndDisplayingCell:v8 forItemAtIndexPath:a5];
  v9 = _importGridLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v12 = "[PUImportViewController collectionView:didEndDisplayingCell:forItemAtIndexPath:]";
    _os_log_debug_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 cancelThumbnailLoadIfActive];
  }
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = a4;
  v9 = _importGridLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315138;
    v11 = "[PUImportViewController collectionView:willDisplayCell:forItemAtIndexPath:]";
    _os_log_debug_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_DEBUG, "%s", &v10, 0xCu);
  }

  [(PUImportViewController *)self _updateCell:v8 atIndex:v7];
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = _importGridLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    allowsSelection = self->_allowsSelection;
    v10 = 136315650;
    v11 = "[PUImportViewController collectionView:shouldSelectItemAtIndexPath:]";
    v12 = 2112;
    v13 = v5;
    v14 = 1024;
    v15 = allowsSelection;
    _os_log_debug_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEBUG, "%s: %@ -> %d", &v10, 0x1Cu);
  }

  v7 = self->_allowsSelection;
  return v7;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [(PUImportViewController *)self importDataSource];
  [v9 identifier];
  PXSimpleIndexPathFromIndexPath();

  v10 = [(PUImportViewController *)self importDataSource];
  memset(buf, 0, 32);
  v11 = [v10 assetAtItemIndexPath:buf];

  if (!v11)
  {
    _PFAssertContinueHandler();
    v19 = _importGridLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [(PUImportViewController *)self importDataSource];
      *buf = 136315650;
      *&buf[4] = "[PUImportViewController collectionView:cellForItemAtIndexPath:]";
      *&buf[12] = 2114;
      *&buf[14] = v8;
      *&buf[22] = 2114;
      *&buf[24] = v20;
      _os_log_error_impl(&dword_1B36F3000, v19, OS_LOG_TYPE_ERROR, "%s: Unreachable Error: Import view model at index path %{public}@ is nil, import data source: %{public}@", buf, 0x20u);
    }

    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PUImportViewController.m" lineNumber:869 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v12 = _importGridLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[PUImportViewController collectionView:cellForItemAtIndexPath:]";
    *&buf[12] = 2112;
    *&buf[14] = v11;
    *&buf[22] = 2112;
    *&buf[24] = v8;
    _os_log_debug_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_DEBUG, "%s: %@(%@)", buf, 0x20u);
  }

  v13 = [(PUImportViewController *)self collectionView];
  v14 = [v13 dequeueReusableCellWithReuseIdentifier:@"PUImportCellReuseIdentifier" forIndexPath:v8];

  [v14 setDelegate:self];
  [v14 setRepresentedImportItem:v11];
  v15 = [(PUImportViewController *)self itemsBeingTransitioned];
  v16 = [v15 member:v11];

  v17 = 0.0;
  if (!v16)
  {
    v17 = 1.0;
  }

  [v14 setAlpha:v17];

  return v14;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v10 != @"PUImportSectionHeaderReuseIdentifier")
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PUImportViewController.m" lineNumber:839 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v12 = v11;
  v13 = [v9 dequeueReusableSupplementaryViewOfKind:@"PUImportSectionHeaderReuseIdentifier" withReuseIdentifier:@"PUImportSectionHeaderReuseIdentifier" forIndexPath:v11];
  [v13 setDelegate:self];
  [(PUImportViewController *)self configureSupplementaryView:v13 ofKind:@"PUImportSectionHeaderReuseIdentifier" forIndexPath:v12];

  return v13;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  v5 = [(PUImportViewController *)self collectionView:a3];
  [v5 contentSize];
  v7 = v6;

  v8 = 30.0;
  v9 = v7;
  result.height = v8;
  result.width = v9;
  return result;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v5 = [(PUImportViewController *)self importDataSource];
  v6 = [v5 numberOfItemsInSection:a4];

  return v6;
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  v3 = [(PUImportViewController *)self importDataSource];
  v4 = [v3 numberOfSections];

  return v4;
}

- (BOOL)importSectionedGridLayout:(id)a3 shouldEmphasizeSection:(unint64_t)a4
{
  if (a4)
  {
    return 0;
  }

  v5 = [(PUImportViewController *)self importDataSource];
  v6 = [v5 hasAlreadyImportedSection];

  return v6;
}

- (id)_bestReferenceItemIndexPath
{
  v2 = [(PUImportViewController *)self collectionView];
  v3 = [v2 collectionViewLayout];
  v4 = [v3 collectionView];
  if (!v4 || (v5 = v4, [v2 window], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, !v6))
  {
LABEL_19:
    v20 = 0;
    goto LABEL_20;
  }

  [v2 contentOffset];
  v8 = v7;
  v10 = v9;
  [v2 bounds];
  v12 = v11;
  v14 = v13;
  v15 = [v2 numberOfSections];
  v16 = v15 - 1;
  if (v15 < 1 || [v2 numberOfItemsInSection:0] < 1)
  {
    goto LABEL_25;
  }

  v17 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
  v18 = [v3 layoutAttributesForItemAtIndexPath:v17];
  v19 = v18;
  if (v18 && ([v18 frame], v29.origin.x = v8, v29.origin.y = v10, v29.size.width = v12, v29.size.height = v14, CGRectIntersectsRect(v27, v29)))
  {
    v20 = v17;
  }

  else
  {
    v20 = 0;
  }

  v21 = [v2 numberOfItemsInSection:v16];
  if (!v20 && v21 >= 1)
  {
    v22 = [MEMORY[0x1E696AC88] indexPathForItem:v21 - 1 inSection:v16];
    v23 = [v3 layoutAttributesForItemAtIndexPath:v22];
    v24 = v23;
    if (v23 && ([v23 frame], v30.origin.x = v8, v30.origin.y = v10, v30.size.width = v12, v30.size.height = v14, CGRectIntersectsRect(v28, v30)))
    {
      v20 = v22;
    }

    else
    {
      v20 = 0;
    }
  }

  if (!v20)
  {
LABEL_25:
    if ([v3 conformsToProtocol:&unk_1F2C21280])
    {
      v20 = [v3 itemIndexPathAtCenterOfRect:{v8, v10, v12, v14}];
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_20:

  return v20;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4
{
  if ([a3 isEqualToString:{@"PUImportSectionHeaderReuseIdentifier", a4}])
  {
    v5 = [(PUImportViewController *)self collectionView];
    v6 = [v5 collectionViewLayout];

    v7 = [v6 globalHeaderAttributes];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_newGridLayoutFromSpec:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(PUSectionedGridLayout);
  [(PUSectionedGridLayout *)v5 setSectionHeadersEnabled:1];
  [(PUSectionedGridLayout *)v5 setSectionHeaderElementKind:@"PUImportSectionHeaderReuseIdentifier"];
  [(PUSectionedGridLayout *)v5 setSectionTopPadding:0.0];
  [v4 baseInterItemSpacing];
  v7 = v6;

  [(PUSectionedGridLayout *)v5 setGlobalTopPadding:v7];
  [(PUSectionedGridLayout *)v5 setGlobalBottomPadding:0.0];
  [(PUSectionedGridLayout *)v5 setDelegate:self];
  return v5;
}

- (id)_gridLayout
{
  v2 = [(PUImportViewController *)self collectionView];
  v3 = [v2 collectionViewLayout];

  return v3;
}

- (void)_contentSizeCategoryDidChangeNotification:(id)a3
{
  [(PUPhotosGridViewController *)self updateLayoutMetrics];
  [(PUImportViewController *)self setCachedHeaderHeight:0];
  v5 = [(PUImportViewController *)self collectionView];
  v4 = [v5 collectionViewLayout];
  [v4 invalidateLayout];
}

- (void)_updateLayoutMetrics
{
  v11 = [(PUImportViewController *)self _spec];
  v3 = [(PUImportViewController *)self _gridLayout];
  [(PUImportViewController *)self _collectionViewLayoutReferenceWidth];
  v5 = v4;
  v6 = [(PUImportViewController *)self collectionView];
  [v6 safeAreaInsets];
  [v11 configureCollectionViewGridLayout:v3 forWidth:v5 safeAreaInsets:{v7, v8, v9, v10}];
}

- (void)_updateContentOffsetForPendingViewSizeTransition
{
  v15 = [(PUImportViewController *)self _pendingViewSizeTransitionContext];
  if (v15)
  {
    if ([(PUImportViewController *)self isViewLoaded])
    {
      v3 = [(PUImportViewController *)self collectionView];
      [v3 bounds];
      CGRectGetWidth(v17);

      [(PUImportViewController *)self _collectionViewLayoutReferenceWidth];
      if (PXFloatApproximatelyEqualToFloat())
      {
        v4 = [(PUImportViewController *)self _gridLayout];
        v5 = [(PUImportViewController *)self collectionView];
        [v5 contentOffset];
        v7 = v6;
        v9 = v8;

        [v4 targetContentOffsetForViewSizeTransitionContext:v15];
        v12 = v11;
        v13 = v10;
        if (v7 != v11 || v9 != v10)
        {
          v14 = [(PUImportViewController *)self collectionView];
          [v14 setContentOffset:{v12, v13}];

          [v4 invalidateLayout];
        }

        [(PUImportViewController *)self _setPendingViewSizeTransitionContext:0];
      }
    }
  }
}

- (BOOL)updateSpec
{
  v11.receiver = self;
  v11.super_class = PUImportViewController;
  v3 = [(PUPhotosGridViewController *)&v11 updateSpec];
  v4 = [(PUImportViewController *)self traitCollection];
  if ([v4 horizontalSizeClass] && objc_msgSend(v4, "verticalSizeClass"))
  {
    v5 = [PUInterfaceManager shouldUsePhoneLayoutWithTraitCollection:v4];
    v6 = objc_opt_class();
    v7 = [(PUImportViewController *)self _spec];
    v8 = objc_opt_class();

    self->_compactLayoutMode = v5;
    if (v6 != v8)
    {
      v9 = objc_alloc_init(v6);
      [(PUImportViewController *)self _setSpec:v9];

      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setCollectionViewSafeAreaInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_collectionViewSafeAreaInsets.top, v3), vceqq_f64(*&self->_collectionViewSafeAreaInsets.bottom, v4)))) & 1) == 0)
  {
    self->_collectionViewSafeAreaInsets = a3;
    [(PUImportViewController *)self _updateLayoutMetrics];
  }
}

- (void)_setCollectionViewLayoutReferenceWidth:(double)a3
{
  if (self->__collectionViewLayoutReferenceWidth != a3)
  {
    self->__collectionViewLayoutReferenceWidth = a3;
    [(PUImportViewController *)self _updateLayoutMetrics];
  }
}

- (void)_invalidateCachedViewSizeTransitionContext
{
  [(PUImportViewController *)self _setCachedViewSizeTransitionContext:0];
  v3 = *MEMORY[0x1E695F060];
  v4 = *(MEMORY[0x1E695F060] + 8);

  [(PUImportViewController *)self _setCachedViewSizeTransitionContextSize:v3, v4];
}

- (void)viewSafeAreaInsetsDidChange
{
  v12.receiver = self;
  v12.super_class = PUImportViewController;
  [(PUImportViewController *)&v12 viewSafeAreaInsetsDidChange];
  v3 = [(PUImportViewController *)self collectionView];
  [v3 safeAreaInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(PUImportViewController *)self _setCollectionViewSafeAreaInsets:v5, v7, v9, v11];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = PUImportViewController;
  [(PUPhotosGridViewController *)&v3 viewDidLayoutSubviews];
  [(PUImportViewController *)self updateDataSourceManagerFilters];
  [(PUImportViewController *)self updateAlreadyImportedHeaderIfVisible];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v29.receiver = self;
  v29.super_class = PUImportViewController;
  [(PUPhotosGridViewController *)&v29 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(PUImportViewController *)self collectionView];
  v9 = [v8 collectionViewLayout];

  v10 = [v9 prepareForViewTransitionToSize:{width, height}];
  if ([v7 isAnimated] && (-[PUImportViewController px_isVisible](self, "px_isVisible") & 1) != 0)
  {
    [(PUImportViewController *)self _setPendingViewSizeTransitionContext:0];
    v11 = 0;
LABEL_14:
    [(PUImportViewController *)self _invalidateCachedViewSizeTransitionContext];
    goto LABEL_15;
  }

  [(PUImportViewController *)self _cachedViewSizeTransitionContextSize];
  if (width == v13 && height == v12)
  {
    v14 = [(PUImportViewController *)self _cachedViewSizeTransitionContext];

    LOBYTE(v15) = 0;
    v10 = v14;
  }

  else
  {
    v16 = [MEMORY[0x1E69DC668] sharedApplication];
    v15 = [v16 isSuspended];

    if (v15)
    {
      v17 = [(PUImportViewController *)self _cachedViewSizeTransitionContext];

      if (!v17)
      {
        v18 = [(PUImportViewController *)self view];
        [v18 bounds];
        v20 = v19;
        v22 = v21;

        [(PUImportViewController *)self _setCachedViewSizeTransitionContext:v10];
        [(PUImportViewController *)self _setCachedViewSizeTransitionContextSize:v20, v22];
      }

      LOBYTE(v15) = 1;
    }
  }

  v23 = [(PUImportViewController *)self _pendingViewSizeTransitionContext];

  if (!v23)
  {
    [(PUImportViewController *)self _setPendingViewSizeTransitionContext:v10];
  }

  v11 = 1;
  if ((v15 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_15:
  [(PUImportViewController *)self setTransitioningToNewSize:1];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __77__PUImportViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v28[3] = &unk_1E7B7DC38;
  v28[4] = self;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __77__PUImportViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v25[3] = &unk_1E7B78060;
  v27 = v11;
  v25[4] = self;
  v26 = v9;
  v24 = v9;
  [v7 animateAlongsideTransition:v28 completion:v25];
}

uint64_t __77__PUImportViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateAlreadyImportedCollapseStatus];
  v2 = [*(a1 + 32) anyAlreadyImportedItemsAreSelected];
  if ([*(a1 + 32) userWantsAlreadyImportedSectionCollapsedIfPossible] && (objc_msgSend(*(a1 + 32), "shouldCollapseAlreadyImportedSection") & 1) == 0 && ((v2 ^ 1) & 1) == 0)
  {
    [*(a1 + 32) setUserWantsAlreadyImportedSectionCollapsedIfPossible:0];
  }

  result = [*(a1 + 32) px_isVisible];
  if (result)
  {
    v4 = *(a1 + 32);

    return [v4 _updateToolbarAnimated:1];
  }

  return result;
}

void __77__PUImportViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) _updateContentOffsetForPendingViewSizeTransition];
  }

  [*(a1 + 40) finalizeViewTransitionToSize];
  if ([*(a1 + 32) px_isVisible])
  {
    [*(a1 + 32) pu_performBarsVisibilityUpdatesWithAnimationSettings:{0, 0}];
    [*(a1 + 32) _updateToolbarAnimated:0];
  }

  [*(a1 + 32) setTransitioningToNewSize:0];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = PUImportViewController;
  [(PUPhotosGridViewController *)&v5 viewWillDisappear:?];
  [(PUImportViewController *)self _dismissPopupsAnimated:v3];
  [(PUImportViewController *)self disableSwipeSelection];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PUImportViewController;
  [(PUPhotosGridViewController *)&v4 viewDidAppear:a3];
  [(PUImportViewController *)self setViewAppearing:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  [(PUImportViewController *)self setViewAppearing:1];
  v5 = [(PUImportViewController *)self _spec];
  v6 = objc_opt_class();

  v13.receiver = self;
  v13.super_class = PUImportViewController;
  [(PUPhotosGridViewController *)&v13 viewWillAppear:v3];
  v7 = [(PUImportViewController *)self _spec];
  v8 = objc_opt_class();

  v9 = [(PUImportViewController *)self view];
  [v9 frame];
  v11 = v10;

  [(PUImportViewController *)self _setCollectionViewLayoutReferenceWidth:v11];
  if (v6 != v8)
  {
    v12 = [(PUImportViewController *)self _gridLayout];
    [v12 invalidateLayout];

    [(PUImportViewController *)self reloadData];
  }

  [(PUImportViewController *)self enableSwipeSelection];
  self->_acceptsLongPress = 1;
}

- (void)viewWillLayoutSubviews
{
  v3 = [(PUImportViewController *)self updateSpec];
  v4 = [(PUImportViewController *)self view];
  [v4 frame];
  v6 = v5;

  v7 = [(PUImportViewController *)self collectionView];
  [v7 safeAreaInsets];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [(PUImportViewController *)self _setCollectionViewLayoutReferenceWidth:v6];
  [(PUImportViewController *)self _setCollectionViewSafeAreaInsets:v9, v11, v13, v15];
  v16 = v6 - v11 - v15;
  [(PUImportViewController *)self referenceWidth];
  if (v16 != v17)
  {
    [(PUImportViewController *)self setReferenceWidth:v16];
    [(PUImportViewController *)self setCachedHeaderHeight:0];
    [(PUPhotosGridViewController *)self updateVisibleSupplementaryViewsOfKind:@"PUImportSectionHeaderReuseIdentifier"];
  }

  if (v3)
  {
    v18 = [(PUImportViewController *)self _gridLayout];
    [v18 invalidateLayout];

    if ([(PUImportViewController *)self performingDataSourceChange])
    {

      [(PUImportViewController *)self setNeedsDataReloadAfterAnimatingDataSourceChange:1];
    }

    else
    {

      [(PUImportViewController *)self reloadData];
    }
  }
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = PUImportViewController;
  [(PUPhotosGridViewController *)&v10 viewDidLoad];
  v3 = [(PUImportViewController *)self collectionView];
  v4 = +[PUInterfaceManager currentTheme];
  v5 = [v4 photoCollectionViewBackgroundColor];
  [v3 setBackgroundColor:v5];

  v6 = [(PUImportViewController *)self collectionView];
  [v6 setAllowsMultipleSelection:1];

  v7 = [(PUImportViewController *)self collectionView];
  [v7 setAlwaysBounceVertical:1];

  v8 = [(PUImportViewController *)self collectionView];
  [v8 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PUImportCellReuseIdentifier"];

  v9 = [(PUImportViewController *)self collectionView];
  [v9 registerClass:objc_opt_class() forSupplementaryViewOfKind:@"PUImportSectionHeaderReuseIdentifier" withReuseIdentifier:@"PUImportSectionHeaderReuseIdentifier"];

  [(PUImportViewController *)self updateSpec];
}

- (void)dealloc
{
  [(PUImportViewController *)self _cancelAlerts];
  actionCoordinator = self->_actionCoordinator;
  self->_actionCoordinator = 0;

  [(PUImportViewController *)self setImportController:0];
  v4 = [MEMORY[0x1E69C3620] sharedInstance];
  [v4 removeKeyObserver:self];

  v5.receiver = self;
  v5.super_class = PUImportViewController;
  [(PUPhotosGridViewController *)&v5 dealloc];
}

- (PUImportViewController)initWithSpec:(id)a3 photoLibrary:(id)a4
{
  v7 = a3;
  v16.receiver = self;
  v16.super_class = PUImportViewController;
  v8 = [(PUPhotosGridViewController *)&v16 initWithSpec:v7 photoLibrary:a4];
  v9 = v8;
  if (v8)
  {
    v8->_busyCount = 0;
    objc_storeStrong(&v8->__spec, a3);
    v9->_allowsSelection = 1;
    v10 = [MEMORY[0x1E69C3620] sharedInstance];
    [v10 addKeyObserver:v9];

    cachedHeaderHeight = v9->_cachedHeaderHeight;
    v9->_cachedHeaderHeight = 0;

    v12 = objc_alloc(MEMORY[0x1E69C32F8]);
    v13 = [v12 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    referenceHeaderView = v9->_referenceHeaderView;
    v9->_referenceHeaderView = v13;
  }

  return v9;
}

- (id)deleteButtonItem
{
  v3 = [(PUImportViewController *)self importController];
  v4 = [v3 importSource];
  v5 = [v4 canDeleteContent];

  if (v5)
  {
    v6 = self->_deleteButtonItemIcon;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)_titleViewVerticalSizeClassForExtendedTraitCollection:(id)a3
{
  v3 = a3;
  v4 = [v3 layoutSizeClass] == 1 && objc_msgSend(v3, "layoutOrientation") == 2;

  return v4;
}

- (void)_dismissPopupsAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(PUImportViewController *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {

    [(PUImportViewController *)self dismissViewControllerAnimated:v3 completion:0];
  }
}

- (id)_createSubtitleText
{
  v3 = [(PUImportViewController *)self importController];
  v4 = [v3 isImportingAssets];

  v5 = [(PUImportViewController *)self importController];
  v6 = [v5 isDeletingAssets];

  v7 = [MEMORY[0x1E69C3620] sharedInstance];
  v8 = [v7 showProgressTitles];

  [(PUImportViewController *)self numTotalItemsToComplete];
  [(PUImportViewController *)self numItemsCompleted];
  v9 = [(PUImportViewController *)self importController];
  v10 = [v9 selectionManager];
  v11 = [v10 selectionSnapshot];

  if ([v11 isAnyItemSelected])
  {
    v12 = [(PUImportViewController *)self importController];
    [v12 selectedItems];
  }

  else
  {
    v13 = [(PUImportViewController *)self importDataSourceManager];
    v12 = [v13 unfilteredDataSource];

    [v12 allItemsUnsorted];
  }
  v14 = ;

  v15 = [objc_opt_class() totalSizeStringForItems:v14];
  if ((v4 | v6) & v8)
  {
    v16 = PULocalizedString(@"IMPORT_ASSET_PROGRESS_REMAINING_MULTILINE_TOP");
    v17 = PULocalizedStringWithValidatedFormat(v16, @"%d");
LABEL_13:

    goto LABEL_14;
  }

  v18 = [(PUImportViewController *)self importController];
  v19 = [v18 selectedItems];
  v20 = [v19 count];

  if (v20)
  {
    v16 = PXLocalizedSelectionMessageForAssets();
    if (![v15 length])
    {
      v17 = v16;
      goto LABEL_13;
    }

    v21 = PULocalizedString(@"IMPORT_SUBTITLE_FORMAT");
    v17 = PUStringWithValidatedFormat();

    goto LABEL_11;
  }

  if ([v14 count])
  {
    v22 = PULocalizedString(@"IMPORT_ITEMS_COUNT");
    [v14 count];
    v16 = PULocalizedStringWithValidatedFormat(v22, @"%d");

    v21 = PULocalizedString(@"IMPORT_SUBTITLE_FORMAT");
    v17 = PUStringWithValidatedFormat();
LABEL_11:

    goto LABEL_13;
  }

  v17 = &stru_1F2AC6818;
LABEL_14:

  return v17;
}

- (void)_updateToolbarAnimated:(BOOL)a3
{
  v3 = a3;
  v65 = *MEMORY[0x1E69E9840];
  if (![(PUImportViewController *)self isViewLoaded])
  {
    return;
  }

  v5 = _importGridLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v64 = "[PUImportViewController _updateToolbarAnimated:]";
    _os_log_debug_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [(PUImportViewController *)self importController];
  v8 = [v7 selectionManager];
  v9 = [v8 selectionSnapshot];
  [v9 isAnyItemSelected];

  if (!self->_deleteButtonItem)
  {
    v57 = v6;
    v10 = PLLocalizedFrameworkString();
    v11 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v10 style:2 target:self action:sel_delete_];
    deleteButtonItem = self->_deleteButtonItem;
    self->_deleteButtonItem = v11;

    v13 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:16 target:self action:sel_delete_];
    deleteButtonItemIcon = self->_deleteButtonItemIcon;
    self->_deleteButtonItemIcon = v13;

    v15 = PLLocalizedFrameworkString();

    v16 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v15 style:2 target:0 action:0];
    importButtonItem = self->_importButtonItem;
    self->_importButtonItem = v16;

    v18 = PLLocalizedFrameworkString();

    v56 = v18;
    v19 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v18 style:7 target:self action:sel_stopImport_];
    stopBarItem = self->_stopBarItem;
    self->_stopBarItem = v19;

    v21 = [objc_alloc(MEMORY[0x1E69BE1C8]) initWithFrame:3 style:{0.0, 0.0, 28.0, 28.0}];
    [(PUImportViewController *)self setRoundProgressView:v21];

    v22 = [(PUImportViewController *)self roundProgressView];
    [v22 setUserInteractionEnabled:0];

    v23 = objc_alloc(MEMORY[0x1E69DC708]);
    v24 = [(PUImportViewController *)self roundProgressView];
    v25 = [v23 initWithCustomView:v24];
    progressButtonItem = self->_progressButtonItem;
    self->_progressButtonItem = v25;

    v27 = [MEMORY[0x1E696AD88] defaultCenter];
    [v27 addObserver:self selector:sel_importControllerProgressDidChange_ name:*MEMORY[0x1E69C4070] object:0];

    [(UIBarButtonItem *)self->_progressButtonItem setIsAccessibilityElement:1];
    [(UIBarButtonItem *)self->_progressButtonItem setAccessibilityTraits:*MEMORY[0x1E69DDA18] | *MEMORY[0x1E69DDA38]];
    v28 = PLLocalizedFrameworkString();
    [(UIBarButtonItem *)self->_progressButtonItem setAccessibilityLabel:v28];

    v29 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"IMPORT", @"IMPORT_ALL", @"DELETE_ALL", @"DELETE_SELECTED", @"STOP_IMPORT", @"IMPORT_PROGRESS", @"IMPORT_TOALBUM_BARTITLE", 0}];
    v30 = objc_opt_new();
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v31 = v29;
    v32 = [v31 countByEnumeratingWithState:&v58 objects:v62 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v59;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v59 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = PLLocalizedFrameworkString();
          [v30 addObject:v36];
        }

        v33 = [v31 countByEnumeratingWithState:&v58 objects:v62 count:16];
      }

      while (v33);
    }

    [(UIBarButtonItem *)self->_deleteButtonItem setPossibleTitles:v30];
    [(UIBarButtonItem *)self->_importButtonItem setPossibleTitles:v30];
    [(UIBarButtonItem *)self->_stopBarItem setPossibleTitles:v30];
    [(UIBarButtonItem *)self->_progressButtonItem setPossibleTitles:v30];

    v3 = v3;
    v6 = v57;
  }

  v37 = [(PUImportViewController *)self importController];
  v38 = [v37 isImportingAssets];

  if (v38)
  {
    [v6 addObject:self->_stopBarItem];
  }

  else
  {
    v39 = [(PUImportViewController *)self importDataSource];
    v40 = [v39 numberOfItems];

    if (v40)
    {
      v41 = [(PUImportViewController *)self actionCoordinator];
      [v41 configureImportActionsForBarButtonItem:self->_importButtonItem];

      [v6 addObject:self->_importButtonItem];
      v42 = PLLocalizedFrameworkString();
      [(UIBarButtonItem *)self->_deleteButtonItem setAccessibilityLabel:v42];
      [(UIBarButtonItem *)self->_deleteButtonItem setTitle:v42];
      v43 = [(PUImportViewController *)self deleteButtonItem];
      if (v43)
      {
        v44 = [MEMORY[0x1E69DC708] fixedSpaceItemOfWidth:0.0];
        [v6 addObject:v44];

        [v6 addObject:v43];
      }
    }
  }

  v45 = [(PUImportViewController *)self importController];
  if ([v45 isImportingAssets])
  {

    goto LABEL_22;
  }

  v46 = [(PUImportViewController *)self importController];
  v47 = [v46 isDeletingAssets];

  if (v47)
  {
LABEL_22:
    if (![(PUImportViewController *)self compactLayoutMode])
    {
      [v6 addObject:self->_progressButtonItem];
    }
  }

  v48 = [(PUImportViewController *)self importController];
  if ([v48 isImportingAssets])
  {
    v49 = 0;
  }

  else
  {
    v50 = [(PUImportViewController *)self importController];
    v49 = [v50 isDeletingAssets] ^ 1;
  }

  v51 = [(PUImportViewController *)self importController];
  v52 = [v51 hasLoadedInitialBatchOfAssets];

  [(UIBarButtonItem *)self->_importButtonItem setEnabled:v52 & v49];
  [(UIBarButtonItem *)self->_deleteButtonItem setEnabled:v52 & v49];
  [(UIBarButtonItem *)self->_deleteButtonItemIcon setEnabled:v52 & v49];
  v53 = [(PUImportViewController *)self navigationItem];
  v54 = PLLocalizedFrameworkString();
  [v53 setTitle:v54];
  v55 = [(PUImportViewController *)self _createSubtitleText];
  [v53 setSubtitle:v55];

  [v53 setLargeTitleDisplayMode:3];
  [v53 setRightBarButtonItems:v6 animated:v3];
}

- (BOOL)_isItemVisibleAtIndex:(id)a3
{
  v4 = a3;
  v5 = [(PUImportViewController *)self collectionView];
  v6 = [v5 cellForItemAtIndexPath:v4];

  return v6 != 0;
}

- (void)reloadData
{
  v10 = *MEMORY[0x1E69E9840];
  if ([(PUImportViewController *)self isViewLoaded])
  {
    v3 = _importGridLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(PUImportViewController *)self importDataSource];
      v6 = 136315394;
      v7 = "[PUImportViewController reloadData]";
      v8 = 2048;
      v9 = [v4 identifier];
      _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEFAULT, "%s: Reloading datasource %lu. Expensive (cancels all requests).", &v6, 0x16u);
    }

    v5 = [(PUImportViewController *)self collectionView];
    [v5 reloadData];
  }
}

+ (unsigned)defaultThumbnailImageFormat
{
  if (defaultThumbnailImageFormat_onceToken != -1)
  {
    dispatch_once(&defaultThumbnailImageFormat_onceToken, &__block_literal_global_603);
  }

  return defaultThumbnailImageFormat_imageFormat;
}

void __53__PUImportViewController_defaultThumbnailImageFormat__block_invoke()
{
  if (!defaultThumbnailImageFormat_imageFormat)
  {
    IsIPad = PLPhysicalDeviceIsIPad();
    v1 = off_1E7B6E428;
    if (!IsIPad)
    {
      v1 = off_1E7B6E448;
    }

    v2 = objc_alloc_init(*v1);
    defaultThumbnailImageFormat_imageFormat = [v2 thumbnailImageFormat];
  }
}

+ (id)totalSizeStringForItems:(id)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__PUImportViewController_totalSizeStringForItems___block_invoke;
  v6[3] = &unk_1E7B78038;
  v6[4] = &v7;
  [v3 enumerateObjectsUsingBlock:v6];
  v4 = [MEMORY[0x1E696AAF0] stringFromByteCount:v8[3] countStyle:0];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __50__PUImportViewController_totalSizeStringForItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 importAsset];
  *(*(*(a1 + 32) + 8) + 24) += [v3 assetSizeIncludingRelatedAssets];
}

@end