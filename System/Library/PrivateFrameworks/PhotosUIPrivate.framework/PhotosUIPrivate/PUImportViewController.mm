@interface PUImportViewController
+ (id)totalSizeStringForItems:(id)items;
+ (unsigned)defaultThumbnailImageFormat;
- (BOOL)_isItemVisibleAtIndex:(id)index;
- (BOOL)anyAlreadyImportedItemsAreSelected;
- (BOOL)areAllItemsSelectedInAssetCollection:(id)collection;
- (BOOL)canBeginDoubleTapGesture:(id)gesture;
- (BOOL)canBeginSwipeSelectionAtScrollViewLocation:(CGPoint)location;
- (BOOL)canDragOut;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)importSectionedGridLayout:(id)layout shouldEmphasizeSection:(unint64_t)section;
- (BOOL)importSourceIsAppleDevice;
- (BOOL)isEmpty;
- (BOOL)isImporting;
- (BOOL)sectionHeadersCoverLocation:(CGPoint)location;
- (BOOL)swipeSelectionManagerIsInMultiSelectMode:(id)mode;
- (BOOL)updateSpec;
- (BOOL)wantsPlaceholderView;
- (CGRect)imageRectFromPhotoView:(id)view;
- (CGSize)_cachedViewSizeTransitionContextSize;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CGSize)gridItemSize;
- (PHImportSource)importSource;
- (PUImportViewController)initWithSpec:(id)spec photoLibrary:(id)library;
- (PXSimpleIndexPath)selectionIndexPathForItem:(SEL)item;
- (PXSimpleIndexPath)swipeSelectionManager:(SEL)manager itemIndexPathAtLocation:(id)location;
- (PXSimpleIndexPath)swipeSelectionManager:(SEL)manager itemIndexPathClosestAboveLocation:(id)location;
- (PXSimpleIndexPath)swipeSelectionManager:(SEL)manager itemIndexPathClosestLeadingLocation:(id)location;
- (UIEdgeInsets)collectionViewSafeAreaInsets;
- (double)sectionedGridLayout:(id)layout accessibilitySectionHeaderHeightForVisualSection:(int64_t)section;
- (double)sectionedGridLayout:(id)layout aspectRatioForItemAtIndexPath:(id)path;
- (double)sectionedGridLayout:(id)layout sectionHeaderHeightForVisualSection:(int64_t)section;
- (id)_bestReferenceItemIndexPath;
- (id)_createSubtitleText;
- (id)_gridLayout;
- (id)_newGridLayoutFromSpec:(id)spec;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)deleteButtonItem;
- (id)importDestinationForActionCoordinator:(id)coordinator;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path;
- (id)newGridLayout;
- (id)oneUpViewControllerForItemAtIndexPath:(id)path;
- (id)px_navigationDestination;
- (int64_t)_titleViewVerticalSizeClassForExtendedTraitCollection:(id)collection;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)contentFillModeForImportCell:(id)cell;
- (int64_t)importCell:(id)cell requestImageForImportItem:(id)item ofSize:(unint64_t)size completion:(id)completion;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (unint64_t)routingOptionsForDestination:(id)destination;
- (void)_beginImport;
- (void)_beginUninterruptibleOperation;
- (void)_cancelAlerts;
- (void)_contentSizeCategoryDidChangeNotification:(id)notification;
- (void)_deleteItems:(id)items;
- (void)_deselectCell:(id)cell;
- (void)_dismissPopupsAnimated:(BOOL)animated;
- (void)_endImport;
- (void)_endUninterruptibleOperation;
- (void)_getDataForVisualSection:(int64_t)section hasActionButton:(BOOL *)button title:(id *)title startDate:(id *)date endDate:(id *)endDate;
- (void)_importControllerDidEndAction;
- (void)_importControllerWillBeginAction;
- (void)_invalidateCachedViewSizeTransitionContext;
- (void)_navigateToPhotoAtIndexPath:(id)path animated:(BOOL)animated interactive:(BOOL)interactive;
- (void)_selectCell:(id)cell;
- (void)_setCollectionViewLayoutReferenceWidth:(double)width;
- (void)_setCollectionViewSafeAreaInsets:(UIEdgeInsets)insets;
- (void)_updateBackdropGroupNameForHeaderView:(id)view;
- (void)_updateCell:(id)cell atIndex:(id)index;
- (void)_updateContentOffsetForPendingViewSizeTransition;
- (void)_updateItemViewAtIndex:(id)index;
- (void)_updateLayoutMetrics;
- (void)_updateToolbarAnimated:(BOOL)animated;
- (void)actionCoordinator:(id)coordinator didCompleteWithImportSession:(id)session results:(id)results;
- (void)actionCoordinatorDidEndDelete:(id)delete;
- (void)actionCoordinatorWillBeginDelete:(id)delete;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)configureSupplementaryView:(id)view ofKind:(id)kind forIndexPath:(id)path;
- (void)dealloc;
- (void)delete:(id)delete;
- (void)disableSwipeSelection;
- (void)enableSwipeSelection;
- (void)getEmptyPlaceholderViewTitle:(id *)title message:(id *)message buttonTitle:(id *)buttonTitle buttonAction:(id *)action;
- (void)handleDoubleTapGesture:(id)gesture;
- (void)handleImportCompleteAlertResponse:(__CFUserNotification *)response flags:(unint64_t)flags;
- (void)handleLongPressGesture:(id)gesture;
- (void)handleNewDataSource:(id)source;
- (void)handleTapGesture:(id)gesture;
- (void)handleTouchEvent:(int64_t)event forCell:(id)cell;
- (void)headerViewDidPressActionButton:(id)button inHeaderView:(id)view;
- (void)importCell:(id)cell didRequestCancellationOfThumbnailRequestWithID:(int64_t)d;
- (void)importController:(id)controller didCompleteImportWithImportSession:(id)session results:(id)results completion:(id)completion;
- (void)importController:(id)controller didLoadAssets:(id)assets exceptions:(id)exceptions;
- (void)importControllerProgressDidChange:(id)change;
- (void)installGestureRecognizers;
- (void)navigateToDestination:(id)destination options:(unint64_t)options completionHandler:(id)handler;
- (void)navigateToRectEdge:(unsigned int)edge animated:(BOOL)animated;
- (void)notifyUserOfImportCompletionIfNeededWithImportSession:(id)session results:(id)results;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)presentOneUpViewController:(id)controller animated:(BOOL)animated interactive:(BOOL)interactive;
- (void)reloadData;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)selectAllSelectableItems;
- (void)setAllItemsSelected:(BOOL)selected inAssetCollection:(id)collection;
- (void)setImportController:(id)controller;
- (void)setImportDataSource:(id)source;
- (void)setImportDataSourceManager:(id)manager;
- (void)setImportSource:(id)source;
- (void)setUnfilteredImportDataSourceManager:(id)manager;
- (void)settings:(id)settings changedValueForKey:(id)key;
- (void)stayScrolledToBottomIfAtBottomAfterDrag:(id)drag;
- (void)stopImport:(id)import;
- (void)toggleAlreadyImportedExpansion;
- (void)transitionFromDataSource:(id)source toDataSource:(id)dataSource animated:(BOOL)animated completionHandler:(id)handler;
- (void)uninstallGestureRecognizers;
- (void)updateAlreadyImportedCollapseStatus;
- (void)updateAlreadyImportedHeaderIfVisible;
- (void)updateDataSourceManagerFilters;
- (void)updateHeaderView:(id)view forAlreadyImportedAssetCollection:(id)collection;
- (void)updateHeaderView:(id)view forAssetCollection:(id)collection;
- (void)updateNavigationBarAnimated:(BOOL)animated;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
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
  importSource = [(PUImportViewController *)self importSource];
  uuid = [importSource uuid];

  if (uuid)
  {
    v5 = objc_alloc(MEMORY[0x1E69C3930]);
    importSource2 = [(PUImportViewController *)self importSource];
    v7 = [v5 initWithImportSource:importSource2 revealMode:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)navigateToDestination:(id)destination options:(unint64_t)options completionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(PUImportViewController *)self routingOptionsForDestination:destination])
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  handlerCopy[2](handlerCopy, v7, 0);
}

- (unint64_t)routingOptionsForDestination:(id)destination
{
  destinationCopy = destination;
  if ([destinationCopy type] == 21)
  {
    importSource = [(PUImportViewController *)self importSource];
    uuid = [importSource uuid];
    importSourceUUID = [destinationCopy importSourceUUID];
    v8 = [uuid isEqual:importSourceUUID];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  v24 = *MEMORY[0x1E69E9840];
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  gesturesForFailureRequirements = [(PXSwipeSelectionManager *)self->_swipeSelectionManager gesturesForFailureRequirements];
  if ([gesturesForFailureRequirements containsObject:recognizerCopy])
  {
    photoOrStackPinchGestureRecognizer = [(PUPhotosGridViewController *)self photoOrStackPinchGestureRecognizer];

    if (photoOrStackPinchGestureRecognizer != gestureRecognizerCopy)
    {
      state = [(PXSwipeSelectionManager *)self->_swipeSelectionManager state];
      v11 = state != 0;
      v12 = _importGridLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        state2 = [(PXSwipeSelectionManager *)self->_swipeSelectionManager state];
        v18 = 136315650;
        v19 = "[PUImportViewController gestureRecognizer:shouldRecognizeSimultaneouslyWithGestureRecognizer:]";
        v20 = 2048;
        v21 = state != 0;
        v22 = 2048;
        v23 = state2;
        _os_log_debug_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_DEBUG, "%s: shouldRecognize returning %ld(swipe state %ld)", &v18, 0x20u);
      }

      goto LABEL_11;
    }
  }

  else
  {
  }

  photoOrStackPinchGestureRecognizer2 = [(PUPhotosGridViewController *)self photoOrStackPinchGestureRecognizer];
  v14 = photoOrStackPinchGestureRecognizer2;
  if (photoOrStackPinchGestureRecognizer2 == recognizerCopy)
  {
    longPressGestureRecognizer = [(PUPhotosGridViewController *)self longPressGestureRecognizer];

    if (longPressGestureRecognizer == gestureRecognizerCopy)
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

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  if (self->_tapGestureRecognizer == beginCopy)
  {
    goto LABEL_6;
  }

  longPressGestureRecognizer = [(PUPhotosGridViewController *)self longPressGestureRecognizer];

  if (longPressGestureRecognizer == beginCopy)
  {
    LODWORD(self) = ![(PUImportViewController *)self isPeeking];
    goto LABEL_9;
  }

  photoOrStackPinchGestureRecognizer = [(PUPhotosGridViewController *)self photoOrStackPinchGestureRecognizer];

  if (photoOrStackPinchGestureRecognizer == beginCopy)
  {
LABEL_6:
    LOBYTE(self) = 1;
  }

  else
  {
    doubleTapGestureRecognizer = [(PUImportViewController *)self doubleTapGestureRecognizer];

    if (doubleTapGestureRecognizer == beginCopy)
    {
      doubleTapGestureRecognizer2 = [(PUImportViewController *)self doubleTapGestureRecognizer];
      LOBYTE(self) = [(PUImportViewController *)self canBeginDoubleTapGesture:doubleTapGestureRecognizer2];
    }

    else
    {
      v10.receiver = self;
      v10.super_class = PUImportViewController;
      LOBYTE(self) = [(PUPhotosGridViewController *)&v10 gestureRecognizerShouldBegin:beginCopy];
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
  view = [(UITapGestureRecognizer *)self->_tapGestureRecognizer view];
  [view removeGestureRecognizer:self->_tapGestureRecognizer];

  tapGestureRecognizer = self->_tapGestureRecognizer;
  self->_tapGestureRecognizer = 0;

  view2 = [(UITapGestureRecognizer *)self->_doubleTapGestureRecognizer view];
  [view2 removeGestureRecognizer:self->_doubleTapGestureRecognizer];

  doubleTapGestureRecognizer = self->_doubleTapGestureRecognizer;
  self->_doubleTapGestureRecognizer = 0;
}

- (void)installGestureRecognizers
{
  v8.receiver = self;
  v8.super_class = PUImportViewController;
  [(PUPhotosGridViewController *)&v8 installGestureRecognizers];
  view = [(PUImportViewController *)self view];
  if (!self->_tapGestureRecognizer)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_handleTapGesture_];
    tapGestureRecognizer = self->_tapGestureRecognizer;
    self->_tapGestureRecognizer = v4;

    [(UITapGestureRecognizer *)self->_tapGestureRecognizer setDelegate:self];
    [view addGestureRecognizer:self->_tapGestureRecognizer];
  }

  if (!self->_doubleTapGestureRecognizer)
  {
    v6 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_handleDoubleTapGesture_];
    doubleTapGestureRecognizer = self->_doubleTapGestureRecognizer;
    self->_doubleTapGestureRecognizer = v6;

    [(UITapGestureRecognizer *)self->_doubleTapGestureRecognizer setDelegate:self];
    [(UITapGestureRecognizer *)self->_doubleTapGestureRecognizer setNumberOfTapsRequired:2];
    [view addGestureRecognizer:self->_doubleTapGestureRecognizer];
  }
}

- (PXSimpleIndexPath)selectionIndexPathForItem:(SEL)item
{
  v6 = a4;
  if (v6)
  {
    v13 = v6;
    importController = [(PUImportViewController *)self importController];
    selectionManager = [importController selectionManager];

    dataSourceManager = [selectionManager dataSourceManager];
    dataSource = [dataSourceManager dataSource];

    *&retstr->var0 = 0u;
    *&retstr->var2 = 0u;
    if (dataSource)
    {
      [dataSource itemIndexPathForItem:v13];
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

- (PXSimpleIndexPath)swipeSelectionManager:(SEL)manager itemIndexPathClosestAboveLocation:(id)location
{
  y = a5.y;
  x = a5.x;
  v30 = *MEMORY[0x1E69E9840];
  contentScrollView = [(PUPhotosGridViewController *)self contentScrollView];
  collectionView = [(PUImportViewController *)self collectionView];
  [contentScrollView convertPoint:collectionView fromView:{x, y}];
  v12 = v11;
  v14 = v13;

  importDataSource = [(PUImportViewController *)self importDataSource];
  v27 = 0;
  v28 = 0;
  v16 = [(PUPhotosGridViewController *)self itemIndexPathAtPoint:0 outClosestMatch:&v28 outLeftClosestMatch:&v27 outAboveClosestMatch:v12, v14];
  v17 = v28;
  v18 = v27;
  v25 = 0u;
  *&v26 = 0;
  [importDataSource identifier];
  PXSimpleIndexPathFromIndexPath();
  v19 = 0;
  v20 = *MEMORY[0x1E69C4880];
  v21 = MEMORY[0x1E69C48E8];
  if (*MEMORY[0x1E69C4880])
  {
    memset(buf, 0, 32);
    v19 = [importDataSource assetAtItemIndexPath:buf];
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

- (PXSimpleIndexPath)swipeSelectionManager:(SEL)manager itemIndexPathClosestLeadingLocation:(id)location
{
  y = a5.y;
  x = a5.x;
  v30 = *MEMORY[0x1E69E9840];
  contentScrollView = [(PUPhotosGridViewController *)self contentScrollView];
  collectionView = [(PUImportViewController *)self collectionView];
  [contentScrollView convertPoint:collectionView fromView:{x, y}];
  v12 = v11;
  v14 = v13;

  importDataSource = [(PUImportViewController *)self importDataSource];
  v27 = 0;
  v28 = 0;
  v16 = [(PUPhotosGridViewController *)self itemIndexPathAtPoint:0 outClosestMatch:&v28 outLeftClosestMatch:&v27 outAboveClosestMatch:v12, v14];
  v17 = v28;
  v18 = v27;
  v25 = 0u;
  *&v26 = 0;
  [importDataSource identifier];
  PXSimpleIndexPathFromIndexPath();
  v19 = 0;
  v20 = *MEMORY[0x1E69C4880];
  v21 = MEMORY[0x1E69C48E8];
  if (*MEMORY[0x1E69C4880])
  {
    memset(buf, 0, 32);
    v19 = [importDataSource assetAtItemIndexPath:buf];
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

- (PXSimpleIndexPath)swipeSelectionManager:(SEL)manager itemIndexPathAtLocation:(id)location
{
  y = a5.y;
  x = a5.x;
  v24 = *MEMORY[0x1E69E9840];
  collectionView = [(PUImportViewController *)self collectionView];
  v10 = [collectionView indexPathForItemAtPoint:{x, y}];

  if (v10)
  {
    importDataSource = [(PUImportViewController *)self importDataSource];
    v19 = 0u;
    *&v20 = 0;
    [importDataSource identifier];
    PXSimpleIndexPathFromIndexPath();
    memset(buf, 0, sizeof(buf));
    v12 = [importDataSource assetAtItemIndexPath:buf];
    isSelectable = [v12 isSelectable];
    v14 = MEMORY[0x1E69C48E8];
    if ((isSelectable & 1) == 0)
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
      v23 = isSelectable;
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

- (BOOL)swipeSelectionManagerIsInMultiSelectMode:(id)mode
{
  swipeSelectionManager = [(PUImportViewController *)self swipeSelectionManager];
  v4 = swipeSelectionManager != 0;

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
    contentScrollView = [(PUPhotosGridViewController *)self contentScrollView];
    importController = [(PUImportViewController *)self importController];
    selectionManager = [importController selectionManager];

    if (selectionManager && contentScrollView)
    {
      v5 = [objc_alloc(MEMORY[0x1E69A2918]) initWithSelectionManager:selectionManager scrollView:contentScrollView];
      swipeSelectionManager = self->_swipeSelectionManager;
      self->_swipeSelectionManager = v5;

      [(PXSwipeSelectionManager *)self->_swipeSelectionManager setDelegate:self];
    }
  }
}

- (BOOL)canBeginSwipeSelectionAtScrollViewLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v21 = *MEMORY[0x1E69E9840];
  importController = [(PUImportViewController *)self importController];
  if ([importController isImportingAssets])
  {
    goto LABEL_4;
  }

  importController2 = [(PUImportViewController *)self importController];
  if ([importController2 isDeletingAssets])
  {

LABEL_4:
LABEL_5:
    LOBYTE(v8) = 0;
    return v8;
  }

  presentedViewController = [(PUImportViewController *)self presentedViewController];

  if (presentedViewController)
  {
    goto LABEL_5;
  }

  contentScrollView = [(PUPhotosGridViewController *)self contentScrollView];
  collectionView = [(PUImportViewController *)self collectionView];
  v13 = [collectionView indexPathForItemAtPoint:{x, y}];

  collectionView2 = [(PUImportViewController *)self collectionView];
  v15 = [collectionView2 cellForItemAtIndexPath:v13];

  [contentScrollView convertPoint:v15 toView:{x, y}];
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

- (void)stayScrolledToBottomIfAtBottomAfterDrag:(id)drag
{
  dragCopy = drag;
  if ([(PUImportViewController *)self userHasScrolled])
  {
    importController = [(PUImportViewController *)self importController];

    if (importController)
    {
      -[PUImportViewController setShouldStayScrolledToBottom:](self, "setShouldStayScrolledToBottom:", [dragCopy px_isScrolledAtEdge:3]);
    }
  }
}

- (void)navigateToRectEdge:(unsigned int)edge animated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = *&edge;
  [(PUImportViewController *)self setUserHasScrolled:1];
  v7.receiver = self;
  v7.super_class = PUImportViewController;
  [(PUPhotosGridViewController *)&v7 navigateToRectEdge:v5 animated:animatedCopy];
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  v5.receiver = self;
  v5.super_class = PUImportViewController;
  [(PUPhotosGridViewController *)&v5 scrollViewDidScroll:scrollCopy];
  if (([scrollCopy isDragging] & 1) == 0)
  {
    [(PUImportViewController *)self stayScrolledToBottomIfAtBottomAfterDrag:scrollCopy];
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  v4.receiver = self;
  v4.super_class = PUImportViewController;
  [(PUPhotosGridViewController *)&v4 scrollViewWillBeginDragging:dragging];
  [(PUImportViewController *)self setUserHasScrolled:1];
  [(PUImportViewController *)self setShouldStayScrolledToBottom:0];
}

- (CGRect)imageRectFromPhotoView:(id)view
{
  viewCopy = view;
  contentHelper = [viewCopy contentHelper];
  [viewCopy bounds];
  [contentHelper imageContentFrameForBounds:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [viewCopy convertRect:0 toView:{v6, v8, v10, v12}];
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

- (void)handleTouchEvent:(int64_t)event forCell:(id)cell
{
  v20 = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  v7 = _importGridLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "[PUImportViewController handleTouchEvent:forCell:]";
    *&buf[12] = 2048;
    *&buf[14] = event;
    _os_log_debug_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEBUG, "%s: %lu", buf, 0x16u);
  }

  representedImportItem = [cellCopy representedImportItem];
  kind = [representedImportItem kind];
  v10 = [kind isEqualToString:*MEMORY[0x1E69C4080]];

  if (v10)
  {
    [(PUImportViewController *)self toggleAlreadyImportedExpansion];
    goto LABEL_18;
  }

  importController = [(PUImportViewController *)self importController];
  if ([importController isImportingAssets])
  {

    goto LABEL_18;
  }

  importController2 = [(PUImportViewController *)self importController];
  isDeletingAssets = [importController2 isDeletingAssets];

  if (isDeletingAssets)
  {
    goto LABEL_18;
  }

  if (!UIAccessibilityIsVoiceOverRunning())
  {
    goto LABEL_11;
  }

  if (event != 1)
  {
    if (event)
    {
      goto LABEL_18;
    }

LABEL_11:
    if ([representedImportItem isSelected])
    {
      [(PUImportViewController *)self _deselectCell:cellCopy];
    }

    else
    {
      [(PUImportViewController *)self _selectCell:cellCopy];
    }

    goto LABEL_18;
  }

  memset(buf, 0, 32);
  importDataSource = [(PUImportViewController *)self importDataSource];
  v15 = importDataSource;
  if (importDataSource)
  {
    [importDataSource itemIndexPathForItem:representedImportItem];
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

- (void)handleLongPressGesture:(id)gesture
{
  v16 = *MEMORY[0x1E69E9840];
  gestureCopy = gesture;
  v5 = gestureCopy;
  if (self->_acceptsLongPress && [gestureCopy state] == 1)
  {
    self->_acceptsLongPress = 0;
    v6 = _importGridLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v14 = 136315138;
      v15 = "[PUImportViewController handleLongPressGesture:]";
      _os_log_debug_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEBUG, "%s", &v14, 0xCu);
    }

    contentScrollView = [(PUPhotosGridViewController *)self contentScrollView];
    [v5 locationInView:contentScrollView];
    v9 = v8;
    v11 = v10;
    if (![(PUImportViewController *)self sectionHeadersCoverLocation:?])
    {
      collectionView = [(PUImportViewController *)self collectionView];
      v13 = [collectionView indexPathForItemAtPoint:{v9, v11}];

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

- (void)handleDoubleTapGesture:(id)gesture
{
  importController = [(PUImportViewController *)self importController];
  selectionManager = [importController selectionManager];

  selectionSnapshot = [selectionManager selectionSnapshot];
  if ([selectionSnapshot isAnyItemSelected] && (objc_msgSend(selectionSnapshot, "dataSource"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "numberOfSelectableItems"), v6, objc_msgSend(selectionSnapshot, "selectedIndexPaths"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v7 == v9))
  {
    [selectionManager performChanges:&__block_literal_global_34883];
  }

  else
  {
    [(PUImportViewController *)self selectAllSelectableItems];
  }
}

- (BOOL)canBeginDoubleTapGesture:(id)gesture
{
  gestureCopy = gesture;
  importController = [(PUImportViewController *)self importController];
  if ([importController isImportingAssets])
  {
    v6 = 0;
LABEL_15:

    goto LABEL_16;
  }

  importController2 = [(PUImportViewController *)self importController];
  isDeletingAssets = [importController2 isDeletingAssets];

  if ((isDeletingAssets & 1) == 0)
  {
    importController = [(PUPhotosGridViewController *)self contentScrollView];
    [gestureCopy locationInView:importController];
    v10 = v9;
    v12 = v11;
    v13 = [importController hitTest:0 withEvent:?];
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

        superview = [v15 superview];

        v15 = superview;
        if (!superview)
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

      collectionView = [(PUImportViewController *)self collectionView];
      v15 = [collectionView indexPathForItemAtPoint:{v10, v12}];

      v6 = v15 == 0;
    }

    goto LABEL_14;
  }

  v6 = 0;
LABEL_16:

  return v6;
}

- (void)handleTapGesture:(id)gesture
{
  gestureCopy = gesture;
  contentScrollView = [(PUPhotosGridViewController *)self contentScrollView];
  [gestureCopy locationInView:contentScrollView];
  v6 = v5;
  v8 = v7;
  if (![(PUImportViewController *)self sectionHeadersCoverLocation:?])
  {
    collectionView = [(PUImportViewController *)self collectionView];
    v10 = [collectionView indexPathForItemAtPoint:{v6, v8}];

    collectionView2 = [(PUImportViewController *)self collectionView];
    v12 = [collectionView2 cellForItemAtIndexPath:v10];

    [v12 handleTapGesture:gestureCopy];
  }
}

- (void)_navigateToPhotoAtIndexPath:(id)path animated:(BOOL)animated interactive:(BOOL)interactive
{
  interactiveCopy = interactive;
  animatedCopy = animated;
  pathCopy = path;
  mEMORY[0x1E69C3620] = [MEMORY[0x1E69C3620] sharedInstance];
  usePhotosOneUp = [mEMORY[0x1E69C3620] usePhotosOneUp];

  if (usePhotosOneUp)
  {
    importDataSourceManager = [(PUImportViewController *)self importDataSourceManager];
    dataSource = [importDataSourceManager dataSource];

    [dataSource identifier];
    PXSimpleIndexPathFromIndexPath();
    memset(v33, 0, sizeof(v33));
    v13 = [dataSource assetReferenceAtItemIndexPath:v33];
    v14 = [PUPXAssetsDataSourceManager alloc];
    importDataSourceManager2 = [(PUImportViewController *)self importDataSourceManager];
    v16 = [(PUPXAssetsDataSourceManager *)v14 initWithUnderlyingDataSourceManager:importDataSourceManager2];

    v17 = [PUPXMediaProvider alloc];
    importController = [(PUImportViewController *)self importController];
    importMediaProvider = [importController importMediaProvider];
    v20 = [(PUPXMediaProvider *)v17 initWithUnderlyingMediaProvider:importMediaProvider];

    v21 = [[PUBrowsingSession alloc] initWithDataSourceManager:v16 actionManager:0 mediaProvider:v20];
    viewModel = [(PUBrowsingSession *)v21 viewModel];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __75__PUImportViewController__navigateToPhotoAtIndexPath_animated_interactive___block_invoke;
    v29[3] = &unk_1E7B809F0;
    v30 = viewModel;
    v31 = v13;
    v32 = v16;
    v23 = v16;
    v24 = v13;
    v25 = viewModel;
    [v25 performChanges:v29];
    v26 = [[PUOneUpViewController alloc] initWithBrowsingSession:v21];
    v27 = [[PUNavigationController alloc] initWithNavigationBarClass:0 toolbarClass:objc_opt_class()];
    [(PUNavigationController *)v27 setModalPresentationStyle:0];
    [(PUNavigationController *)v27 pushViewController:v26 animated:0];
    [(PUImportViewController *)self presentViewController:v27 animated:1 completion:0];
  }

  else
  {
    v28 = [(PUImportViewController *)self oneUpViewControllerForItemAtIndexPath:pathCopy];
    [(PUImportViewController *)self presentOneUpViewController:v28 animated:animatedCopy interactive:interactiveCopy];
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

- (void)presentOneUpViewController:(id)controller animated:(BOOL)animated interactive:(BOOL)interactive
{
  animatedCopy = animated;
  controllerCopy = controller;
  v8 = _importGridLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, "Presenting Import One Up", v10, 2u);
  }

  v9 = [[PUNavigationController alloc] initWithNavigationBarClass:0 toolbarClass:objc_opt_class()];
  [(PUNavigationController *)v9 pushViewController:controllerCopy animated:0];

  [(PUNavigationController *)v9 setModalPresentationStyle:0];
  [(PUImportViewController *)self presentViewController:v9 animated:animatedCopy completion:0];
}

- (id)oneUpViewControllerForItemAtIndexPath:(id)path
{
  pathCopy = path;
  importDataSourceManager = [(PUImportViewController *)self importDataSourceManager];
  dataSource = [importDataSourceManager dataSource];

  if (pathCopy)
  {
    v19 = 0uLL;
    v20 = 0uLL;
    [dataSource identifier];
    PXSimpleIndexPathFromIndexPath();
  }

  else
  {
    v19 = 0uLL;
    v20 = 0uLL;
    if (dataSource)
    {
      [dataSource firstItemIndexPath];
    }
  }

  v18[0] = v19;
  v18[1] = v20;
  v7 = [dataSource assetReferenceAtItemIndexPath:v18];

  asset = [v7 asset];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    asset2 = [v7 asset];
    if ([asset2 isDuplicate])
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
  importController = [(PUImportViewController *)self importController];
  importController2 = [(PUImportViewController *)self importController];
  importMediaProvider = [importController2 importMediaProvider];
  v16 = [(PUImportOneUpViewController *)v12 initWithImportController:importController mediaProvider:importMediaProvider startingAssetReference:v7 presentationFilter:v11];

  return v16;
}

- (void)updateDataSourceManagerFilters
{
  if ([(PUImportViewController *)self shouldCollapseAlreadyImportedSection])
  {
    importDataSourceManager = [(PUImportViewController *)self importDataSourceManager];
    unfilteredAlreadyImportedAssetCollection = [importDataSourceManager unfilteredAlreadyImportedAssetCollection];

    numberOfItems = [unfilteredAlreadyImportedAssetCollection numberOfItems];
    gridLayout = [(PUPhotosGridViewController *)self gridLayout];
    columnsPerRow = [gridLayout columnsPerRow];

    importController = [(PUImportViewController *)self importController];
    [importController setAlreadyImportedItemsSelectable:numberOfItems <= columnsPerRow];
  }

  else
  {
    unfilteredAlreadyImportedAssetCollection = [(PUImportViewController *)self importController];
    [unfilteredAlreadyImportedAssetCollection setAlreadyImportedItemsSelectable:1];
  }

  if ([(PUImportViewController *)self shouldCollapseAlreadyImportedSection])
  {
    gridLayout2 = [(PUPhotosGridViewController *)self gridLayout];
    columnsPerRow2 = [gridLayout2 columnsPerRow];
  }

  else
  {
    columnsPerRow2 = 0x7FFFFFFFFFFFFFFFLL;
  }

  importDataSourceManager2 = [(PUImportViewController *)self importDataSourceManager];
  [importDataSourceManager2 setMaxAlreadyImportedItems:columnsPerRow2];

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

- (double)sectionedGridLayout:(id)layout aspectRatioForItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    *buf = 0u;
    v15 = 0u;
    importDataSource = [(PUImportViewController *)self importDataSource];
    [importDataSource identifier];
    PXSimpleIndexPathFromIndexPath();

    importDataSource2 = [(PUImportViewController *)self importDataSource];
    memset(v13, 0, sizeof(v13));
    v8 = [importDataSource2 assetAtItemIndexPath:v13];

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

- (double)sectionedGridLayout:(id)layout accessibilitySectionHeaderHeightForVisualSection:(int64_t)section
{
  layoutCopy = layout;
  preferredContentSizeCategory = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    _spec = [(PUImportViewController *)self _spec];
    sectionHeaderStyle = [_spec sectionHeaderStyle];

    date = [MEMORY[0x1E695DF00] date];
    date2 = [MEMORY[0x1E695DF00] date];
    mEMORY[0x1E69C38E8] = [MEMORY[0x1E69C38E8] sharedMetrics];
    collectionView = [layoutCopy collectionView];
    [collectionView bounds];
    [mEMORY[0x1E69C38E8] accessibilitySectionHeaderHeightForStyle:sectionHeaderStyle width:0 actionButton:0 disclosure:&stru_1F2AC6818 title:date startDate:date2 endDate:CGRectGetWidth(v19) + -8.0 + -8.5 locations:MEMORY[0x1E695E0F0] actionButtonSpec:0];
    v16 = v15;
  }

  else
  {
    [(PUImportViewController *)self sectionedGridLayout:layoutCopy sectionHeaderHeightForVisualSection:section];
    v16 = v17;
  }

  return v16;
}

- (double)sectionedGridLayout:(id)layout sectionHeaderHeightForVisualSection:(int64_t)section
{
  referenceHeaderView = [(PUImportViewController *)self referenceHeaderView];
  cachedHeaderHeight = [(PUImportViewController *)self cachedHeaderHeight];

  if (!cachedHeaderHeight)
  {
    v8 = [MEMORY[0x1E696AC88] indexPathWithIndex:section];
    [(PUImportViewController *)self configureSupplementaryView:referenceHeaderView ofKind:@"PUImportSectionHeaderReuseIdentifier" forIndexPath:v8];
    traitCollection = [(PUImportViewController *)self traitCollection];
    horizontalSizeClass = [traitCollection horizontalSizeClass];
    collectionView = [(PUImportViewController *)self collectionView];
    [collectionView bounds];
    Width = CGRectGetWidth(v25);
    gridSpec = [(PUPhotosGridViewController *)self gridSpec];
    [gridSpec sectionHeaderInsets];
    [referenceHeaderView heightForSizeClass:horizontalSizeClass width:Width safeAreaInsets:{v14, v15, v16, v17}];
    v19 = v18;

    v20 = [MEMORY[0x1E696AD98] numberWithDouble:v19];
    [(PUImportViewController *)self setCachedHeaderHeight:v20];
  }

  cachedHeaderHeight2 = [(PUImportViewController *)self cachedHeaderHeight];
  [cachedHeaderHeight2 doubleValue];
  v23 = v22;

  return v23;
}

- (BOOL)anyAlreadyImportedItemsAreSelected
{
  importController = [(PUImportViewController *)self importController];
  selectionManager = [importController selectionManager];

  selectionSnapshot = [selectionManager selectionSnapshot];
  dataSource = [selectionSnapshot dataSource];
  alreadyImportedCollection = [dataSource alreadyImportedCollection];
  if (alreadyImportedCollection)
  {
    v7 = [dataSource sectionForAssetCollection:alreadyImportedCollection];
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60__PUImportViewController_anyAlreadyImportedItemsAreSelected__block_invoke;
    v11[3] = &unk_1E7B78128;
    v11[4] = &v12;
    v11[5] = v7;
    [selectedIndexPaths enumerateItemIndexPathsUsingBlock:v11];

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
  anyAlreadyImportedItemsAreSelected = [(PUImportViewController *)self anyAlreadyImportedItemsAreSelected];
  importDataSourceManager = [(PUImportViewController *)self importDataSourceManager];
  unfilteredAlreadyImportedAssetCollection = [importDataSourceManager unfilteredAlreadyImportedAssetCollection];

  numberOfItems = [unfilteredAlreadyImportedAssetCollection numberOfItems];
  gridLayout = [(PUPhotosGridViewController *)self gridLayout];
  columnsPerRow = [gridLayout columnsPerRow];

  if ([(PUImportViewController *)self userWantsAlreadyImportedSectionCollapsedIfPossible])
  {
    v8 = (numberOfItems > columnsPerRow) & ~anyAlreadyImportedItemsAreSelected;
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
  importDataSource = [(PUImportViewController *)self importDataSource];
  allSelectableItems = [importDataSource allSelectableItems];

  importController = [(PUImportViewController *)self importController];
  [importController setSelected:1 forItems:allSelectableItems];
}

- (BOOL)areAllItemsSelectedInAssetCollection:(id)collection
{
  collectionCopy = collection;
  importDataSource = [(PUImportViewController *)self importDataSource];
  v6 = [importDataSource sectionForAssetCollection:collectionCopy];
  importController = [(PUImportViewController *)self importController];
  selectionManager = [importController selectionManager];

  selectionSnapshot = [selectionManager selectionSnapshot];
  selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
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
  [selectedIndexPaths enumerateItemIndexPathsUsingBlock:v13];
  numberOfItems = [collectionCopy numberOfItems];
  LOBYTE(v6) = v15[3] == numberOfItems;
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

- (void)setAllItemsSelected:(BOOL)selected inAssetCollection:(id)collection
{
  selectedCopy = selected;
  collectionCopy = collection;
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
  [collectionCopy arrangedObjects:v8];
  importController = [(PUImportViewController *)self importController];
  [importController setSelected:selectedCopy forItems:v10[5]];

  _Block_object_dispose(&v9, 8);
}

- (BOOL)sectionHeadersCoverLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v28 = *MEMORY[0x1E69E9840];
  collectionView = [(PUImportViewController *)self collectionView];
  [collectionView convertPoint:0 toView:{x, y}];
  v8 = v7;
  v10 = v9;

  collectionView2 = [(PUImportViewController *)self collectionView];
  v12 = [collectionView2 indexPathsForVisibleSupplementaryElementsOfKind:@"PUImportSectionHeaderReuseIdentifier"];

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
        collectionView3 = [(PUImportViewController *)self collectionView];
        v20 = [collectionView3 supplementaryViewForElementKind:@"PUImportSectionHeaderReuseIdentifier" atIndexPath:v18];

        [v20 bounds];
        [v20 convertRect:0 toView:?];
        v29.x = v8;
        v29.y = v10;
        LOBYTE(collectionView3) = CGRectContainsPoint(v30, v29);

        if (collectionView3)
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

- (void)updateHeaderView:(id)view forAssetCollection:(id)collection
{
  viewCopy = view;
  LODWORD(collection) = [(PUImportViewController *)self areAllItemsSelectedInAssetCollection:collection];
  [viewCopy setShowsActionButton:1];
  if (collection)
  {
    v6 = @"DESELECT_BUTTON_TITLE";
  }

  else
  {
    v6 = @"SELECT_BUTTON_TITLE";
  }

  v7 = PULocalizedString(v6);
  [viewCopy setActionText:v7];

  [viewCopy layoutIfNeeded];
}

- (void)updateHeaderView:(id)view forAlreadyImportedAssetCollection:(id)collection
{
  viewCopy = view;
  collectionCopy = collection;
  gridLayout = [(PUPhotosGridViewController *)self gridLayout];
  columnsPerRow = [gridLayout columnsPerRow];

  numberOfItems = [collectionCopy numberOfItems];
  if (numberOfItems <= columnsPerRow)
  {
    [viewCopy setShowsActionButton:0];
    [viewCopy setActionText:0];
  }

  else
  {
    [viewCopy setShowsActionButton:1];
    [(PUImportViewController *)self shouldCollapseAlreadyImportedSection];
    v10 = PLLocalizedFrameworkString();
    [viewCopy setActionText:v10];

    anyAlreadyImportedItemsAreSelected = [(PUImportViewController *)self anyAlreadyImportedItemsAreSelected];
    if ([(PUImportViewController *)self animateHeaderActionButtonChanges])
    {
      px_isVisible = [(PUImportViewController *)self px_isVisible];
    }

    else
    {
      px_isVisible = 0;
    }

    [viewCopy setActionButtonEnabled:!anyAlreadyImportedItemsAreSelected animated:px_isVisible];
  }

  [viewCopy layoutIfNeeded];
}

- (void)headerViewDidPressActionButton:(id)button inHeaderView:(id)view
{
  buttonCopy = button;
  viewCopy = view;
  v8 = viewCopy;
  v13 = 0;
  if (viewCopy)
  {
    [viewCopy sectionIndexPath];
  }

  importDataSource = [(PUImportViewController *)self importDataSource];
  v10 = [importDataSource assetCollectionForSection:0];

  if ([v10 alreadyImportedGroup])
  {
    [(PUImportViewController *)self toggleAlreadyImportedExpansion];
  }

  else
  {
    if ([(PUImportViewController *)self areAllItemsSelectedInAssetCollection:v10])
    {
      selfCopy2 = self;
      v12 = 0;
    }

    else
    {
      selfCopy2 = self;
      v12 = 1;
    }

    [(PUImportViewController *)selfCopy2 setAllItemsSelected:v12 inAssetCollection:v10];
  }
}

- (void)_getDataForVisualSection:(int64_t)section hasActionButton:(BOOL *)button title:(id *)title startDate:(id *)date endDate:(id *)endDate
{
  v10 = [(PUImportViewController *)self importDataSource:section];
  v11 = [v10 assetCollectionForSection:section];

  if (title)
  {
    *title = [v11 localizedTitle];
  }

  if (button)
  {
    *button = 0;
  }
}

- (void)_updateBackdropGroupNameForHeaderView:(id)view
{
  viewCopy = view;
  navigationController = [(PUImportViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];

  _backdropViewLayerGroupName = [navigationBar _backdropViewLayerGroupName];
  [viewCopy setBackdropViewGroupName:_backdropViewLayerGroupName];
}

- (void)configureSupplementaryView:(id)view ofKind:(id)kind forIndexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  if ([kindCopy isEqualToString:@"PUImportSectionHeaderReuseIdentifier"])
  {
    v11 = viewCopy;
    importDataSource = [(PUImportViewController *)self importDataSource];
    v13 = [importDataSource assetCollectionForSection:{objc_msgSend(pathCopy, "section")}];

    localizedTitle = [v13 localizedTitle];
    importDataSource2 = [(PUImportViewController *)self importDataSource];
    identifier = [importDataSource2 identifier];
    section = [pathCopy section];

    v29[0] = identifier;
    v29[1] = section;
    v30 = xmmword_1B3D0CED0;
    [v11 setSectionIndexPath:v29];
    v28 = localizedTitle;
    [v11 setPrimaryText:localizedTitle];
    importDataSourceManager = [(PUImportViewController *)self importDataSourceManager];
    unfilteredDataSource = [importDataSourceManager unfilteredDataSource];

    identifier2 = [v13 identifier];
    v21 = [unfilteredDataSource assetCollectionForIdentifier:identifier2];

    numberOfItems = [v21 numberOfItems];
    if (numberOfItems < 1)
    {
      v25 = 0;
    }

    else
    {
      v23 = numberOfItems;
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

    gridSpec = [(PUPhotosGridViewController *)self gridSpec];
    [gridSpec sectionHeaderInsets];
    [v11 setContentInsets:?];

    [(PUImportViewController *)self _updateBackdropGroupNameForHeaderView:v11];
  }

  else
  {
    v31.receiver = self;
    v31.super_class = PUImportViewController;
    [(PUPhotosGridViewController *)&v31 configureSupplementaryView:viewCopy ofKind:kindCopy forIndexPath:pathCopy];
  }
}

- (void)updateAlreadyImportedHeaderIfVisible
{
  importDataSource = [(PUImportViewController *)self importDataSource];
  alreadyImportedCollection = [importDataSource alreadyImportedCollection];

  importDataSource2 = [(PUImportViewController *)self importDataSource];
  v5 = [importDataSource2 sectionForAssetCollection:alreadyImportedCollection];

  v6 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:v5];
  collectionView = [(PUImportViewController *)self collectionView];
  v8 = [collectionView indexPathsForVisibleSupplementaryElementsOfKind:@"PUImportSectionHeaderReuseIdentifier"];

  if ([v8 containsObject:v6])
  {
    collectionView2 = [(PUImportViewController *)self collectionView];
    v10 = [collectionView2 supplementaryViewForElementKind:@"PUImportSectionHeaderReuseIdentifier" atIndexPath:v6];

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

- (void)getEmptyPlaceholderViewTitle:(id *)title message:(id *)message buttonTitle:(id *)buttonTitle buttonAction:(id *)action
{
  if ([(PUImportViewController *)self importSourceIsAppleDevice])
  {
    importController = [(PUImportViewController *)self importController];
    isUserRequiredToTrustHostOnSourceDevice = [importController isUserRequiredToTrustHostOnSourceDevice];

    importController2 = [(PUImportViewController *)self importController];
    v14 = importController2;
    if (isUserRequiredToTrustHostOnSourceDevice)
    {
      importSource = [importController2 importSource];
      productKind = [importSource productKind];

      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UNLOCK_DEVICE_%@", productKind];
      v18 = PLLocalizedFrameworkString();
      *title = v18;
      *message = 0;
      *buttonTitle = 0;
      *action = 0;

LABEL_6:
      goto LABEL_8;
    }

    isLoadingInitialBatchOfAssets = [importController2 isLoadingInitialBatchOfAssets];

    if (isLoadingInitialBatchOfAssets)
    {
      importController3 = [(PUImportViewController *)self importController];
      importSource2 = [importController3 importSource];
      productKind = [importSource2 name];

      v17 = PLLocalizedFrameworkString();
      *title = PULocalizedStringWithValidatedFormat(v17, @"%@");
      *message = 0;
      *buttonTitle = 0;
      *action = 0;
      goto LABEL_6;
    }
  }

  productKind = PLLocalizedFrameworkString();
  *title = productKind;
LABEL_8:

  v22 = PLLocalizedFrameworkString();
  *message = v22;
  *buttonTitle = 0;
  *action = 0;
}

- (BOOL)importSourceIsAppleDevice
{
  importController = [(PUImportViewController *)self importController];
  importSource = [importController importSource];
  productKind = [importSource productKind];

  importController2 = [(PUImportViewController *)self importController];
  importSource2 = [importController2 importSource];
  name = [importSource2 name];

  v9 = ([productKind isEqualToString:@"Camera"] & 1) == 0 && objc_msgSend(name, "length") != 0;
  return v9;
}

- (BOOL)wantsPlaceholderView
{
  isEmpty = [(PUImportViewController *)self isEmpty];
  importController = [(PUImportViewController *)self importController];
  isLoadingInitialBatchOfAssets = [importController isLoadingInitialBatchOfAssets];

  importSourceIsAppleDevice = [(PUImportViewController *)self importSourceIsAppleDevice];
  importController2 = [(PUImportViewController *)self importController];
  isUserRequiredToTrustHostOnSourceDevice = [importController2 isUserRequiredToTrustHostOnSourceDevice];

  if (isUserRequiredToTrustHostOnSourceDevice)
  {
    return 1;
  }

  else
  {
    return isEmpty & (isLoadingInitialBatchOfAssets & importSourceIsAppleDevice | isLoadingInitialBatchOfAssets ^ 1);
  }
}

- (BOOL)isEmpty
{
  importDataSource = [(PUImportViewController *)self importDataSource];
  v3 = [importDataSource numberOfItems] == 0;

  return v3;
}

- (void)updateNavigationBarAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v10 = *MEMORY[0x1E69E9840];
  v5 = _importGridLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315138;
    v9 = "[PUImportViewController updateNavigationBarAnimated:]";
    _os_log_debug_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEBUG, "%s: [PUPhotosGridViewController] super squash", &v8, 0xCu);
  }

  importController = [(PUImportViewController *)self importController];
  isLoadingContent = [importController isLoadingContent];

  if ((isLoadingContent & 1) == 0)
  {
    [(PUImportViewController *)self _updateToolbarAnimated:animatedCopy];
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

- (int64_t)contentFillModeForImportCell:(id)cell
{
  _spec = [(PUImportViewController *)self _spec];
  cellFillMode = [_spec cellFillMode];

  return cellFillMode;
}

- (void)importCell:(id)cell didRequestCancellationOfThumbnailRequestWithID:(int64_t)d
{
  importController = [(PUImportViewController *)self importController];
  importMediaProvider = [importController importMediaProvider];
  [importMediaProvider cancelImageRequest:d];
}

- (int64_t)importCell:(id)cell requestImageForImportItem:(id)item ofSize:(unint64_t)size completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    itemCopy = item;
    importController = [(PUImportViewController *)self importController];
    importMediaProvider = [importController importMediaProvider];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __81__PUImportViewController_importCell_requestImageForImportItem_ofSize_completion___block_invoke;
    v15[3] = &unk_1E7B780D8;
    v16 = completionCopy;
    v13 = [importMediaProvider requestImageForImportItem:itemCopy ofSize:size completion:v15];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (CGSize)gridItemSize
{
  _gridLayout = [(PUImportViewController *)self _gridLayout];
  [_gridLayout itemSize];
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

- (void)settings:(id)settings changedValueForKey:(id)key
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(PUImportViewController *)self collectionView:settings];
  indexPathsForVisibleItems = [v5 indexPathsForVisibleItems];

  v7 = [indexPathsForVisibleItems countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(indexPathsForVisibleItems);
        }

        [(PUImportViewController *)self _updateItemViewAtIndex:*(*(&v11 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [indexPathsForVisibleItems countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)notifyUserOfImportCompletionIfNeededWithImportSession:(id)session results:(id)results
{
  v57 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  resultsCopy = results;
  importController = [(PUImportViewController *)self importController];
  importSource = [importController importSource];

  objc_storeStrong(&self->_completedImportSessionInfo, session);
  if (!self->_completedImportSessionInfo)
  {
    _PFAssertContinueHandler();
  }

  importRecords = [resultsCopy importRecords];
  if (!importSource)
  {
    self->_completedAnImport = 0;
    [0 canDeleteContent];
    goto LABEL_51;
  }

  importedItems = [(PXImportSessionInfo *)self->_completedImportSessionInfo importedItems];
  self->_completedAnImport = [importedItems count] != 0;

  canDeleteContent = [importSource canDeleteContent];
  importedItems2 = [(PXImportSessionInfo *)self->_completedImportSessionInfo importedItems];
  v15 = [importedItems2 count];

  if (v15)
  {
    v16 = canDeleteContent == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    importStopped = [(PXImportSessionInfo *)self->_completedImportSessionInfo importStopped];
    v18 = _importGridLog();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (importStopped)
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
    v45 = importRecords;
    v46 = v20;
    v47 = v21;
    if ([importRecords count] == 1)
    {
      v22 = [importRecords objectAtIndex:0];
      importAsset = [v22 importAsset];

      if ([importAsset isImage] && !objc_msgSend(importAsset, "isLivePhoto"))
      {
        v24 = @"PHOTO_";
      }

      else if ([importAsset isMovie])
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
      v44 = sessionCopy;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v25 = importRecords;
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

            importAsset2 = [*(*(&v52 + 1) + 8 * i) importAsset];
            if ([importAsset2 isImage])
            {
              v29 = 0;
            }

            else
            {
              v30 = 0;
              v29 &= [importAsset2 isMovie];
            }

            if ((v30 & 1) == 0 && !v29)
            {

              v21 = v47;
              [v47 appendString:@"MEDIA_"];
              sessionCopy = v44;
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
          sessionCopy = v44;
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
      sessionCopy = v44;
    }

LABEL_41:
    productKind = [importSource productKind];
    name = [importSource name];
    if (([productKind isEqualToString:@"Camera"] & 1) != 0 || !objc_msgSend(name, "length"))
    {
      [v21 appendString:productKind];
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

    importRecords = v45;
  }

LABEL_51:
}

- (void)importController:(id)controller didLoadAssets:(id)assets exceptions:(id)exceptions
{
  v10 = *MEMORY[0x1E69E9840];
  exceptionsCopy = exceptions;
  if (![assets count] && objc_msgSend(exceptionsCopy, "count"))
  {
    v7 = _importGridLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      v9 = exceptionsCopy;
      _os_log_error_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "Error(s) loading assets: %{public}@", &v8, 0xCu);
    }
  }
}

- (void)importController:(id)controller didCompleteImportWithImportSession:(id)session results:(id)results completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  resultsCopy = results;
  completionCopy = completion;
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
  v18 = sessionCopy;
  v19 = resultsCopy;
  v20 = completionCopy;
  v14 = completionCopy;
  v15 = resultsCopy;
  v16 = sessionCopy;
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

- (id)importDestinationForActionCoordinator:(id)coordinator
{
  importController = [(PUImportViewController *)self importController];
  importDestinationAlbum = [importController importDestinationAlbum];

  return importDestinationAlbum;
}

- (void)actionCoordinatorDidEndDelete:(id)delete
{
  [(PUImportViewController *)self _endUninterruptibleOperation];
  [(PUImportViewController *)self _importControllerDidEndAction];

  [(PUPhotosGridViewController *)self updatePeripheralInterfaceAnimated:1];
}

- (void)actionCoordinatorWillBeginDelete:(id)delete
{
  [(PUImportViewController *)self _beginUninterruptibleOperation];

  [(PUImportViewController *)self _importControllerWillBeginAction];
}

- (void)actionCoordinator:(id)coordinator didCompleteWithImportSession:(id)session results:(id)results
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

- (void)importControllerProgressDidChange:(id)change
{
  v28 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69C4068]];

  userInfo2 = [changeCopy userInfo];
  v8 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E69C4060]];

  userInfo3 = [changeCopy userInfo];

  v10 = [userInfo3 objectForKeyedSubscript:*MEMORY[0x1E69C4078]];

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
    roundProgressView = [(PUImportViewController *)self roundProgressView];
    [roundProgressView resetProgress];
  }

  importController = [(PUImportViewController *)self importController];
  [importController isDeletingAssets];

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

  mEMORY[0x1E69C3620] = [MEMORY[0x1E69C3620] sharedInstance];
  showProgressTitles = [mEMORY[0x1E69C3620] showProgressTitles];

  if (showProgressTitles)
  {
    [(PUImportViewController *)self _updateToolbarAnimated:0];
  }
}

- (void)stopImport:(id)import
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = _importGridLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[PUImportViewController stopImport:]";
    _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  actionCoordinator = [(PUImportViewController *)self actionCoordinator];
  [actionCoordinator stopImport];
}

- (void)delete:(id)delete
{
  deleteCopy = delete;
  actionCoordinator = [(PUImportViewController *)self actionCoordinator];
  [actionCoordinator deleteItemsFromBarButtonItem:deleteCopy];
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && sel_delete_ == action)
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PUImportViewController;
    v7 = [(PUPhotosGridViewController *)&v9 canPerformAction:action withSender:senderCopy];
  }

  return v7;
}

- (void)transitionFromDataSource:(id)source toDataSource:(id)dataSource animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  sourceCopy = source;
  dataSourceCopy = dataSource;
  handlerCopy = handler;
  importDataSourceManager = [(PUImportViewController *)self importDataSourceManager];
  changeHistory = [importDataSourceManager changeHistory];

  changeDetailsHelper = [(PUImportViewController *)self changeDetailsHelper];

  if (!changeDetailsHelper)
  {
    objc_initWeak(&location, self);
    v16 = [PUImportChangeDetailsCollectionViewHelper alloc];
    collectionView = [(PUImportViewController *)self collectionView];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __91__PUImportViewController_transitionFromDataSource_toDataSource_animated_completionHandler___block_invoke;
    v23[3] = &unk_1E7B78088;
    objc_copyWeak(&v24, &location);
    v18 = [(PUImportChangeDetailsCollectionViewHelper *)v16 initWithCollectionView:collectionView dataSourceSettingHandler:v23];
    [(PUImportViewController *)self setChangeDetailsHelper:v18];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  changeDetailsHelper2 = [(PUImportViewController *)self changeDetailsHelper];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __91__PUImportViewController_transitionFromDataSource_toDataSource_animated_completionHandler___block_invoke_2;
  v21[3] = &unk_1E7B780B0;
  v21[4] = self;
  v22 = handlerCopy;
  v20 = handlerCopy;
  [changeDetailsHelper2 transitionFromDataSource:sourceCopy toDataSource:dataSourceCopy changeHistory:changeHistory animated:animatedCopy completionHandler:v21];
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

- (void)handleNewDataSource:(id)source
{
  v21 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  importDataSource = [(PUImportViewController *)self importDataSource];
  identifier = [importDataSource identifier];
  if (identifier != [sourceCopy identifier])
  {
    if ([(PUImportViewController *)self performingDataSourceChange])
    {
      v7 = _importGridLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        identifier2 = [sourceCopy identifier];
        _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "Collection view is performing changes, making pending data source: %ti", buf, 0xCu);
      }

      [(PUImportViewController *)self setPendingDataSource:sourceCopy];
    }

    else
    {
      if ([(PUImportViewController *)self px_isVisible])
      {
        importController = [(PUImportViewController *)self importController];
        if ([importController isLoadingInitialBatchOfAssets])
        {
          v9 = 0;
        }

        else
        {
          isViewAppearing = [(PUImportViewController *)self isViewAppearing];
          if (sourceCopy)
          {
            v11 = importDataSource == 0;
          }

          else
          {
            v11 = 1;
          }

          v12 = !v11;
          if (isViewAppearing)
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

      alreadyImportedCollection = [importDataSource alreadyImportedCollection];
      numberOfItems = [alreadyImportedCollection numberOfItems];

      alreadyImportedCollection2 = [sourceCopy alreadyImportedCollection];
      numberOfItems2 = [alreadyImportedCollection2 numberOfItems];

      if ([(PUImportViewController *)self shouldCollapseAlreadyImportedSection])
      {
        v17 = ![(PUImportViewController *)self isTransitioningToNewSize];
        if (numberOfItems <= numberOfItems2)
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
      [(PUImportViewController *)self transitionFromDataSource:importDataSource toDataSource:sourceCopy animated:v9 completionHandler:v18];
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

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXImportControllerObserverContext_34960 == context)
  {
    if (changeCopy)
    {
      [(PUPhotosGridViewController *)self invalidateEmptyPlaceholderView];
    }

    else
    {
      if ((changeCopy & 2) != 0 || (changeCopy & 4) != 0)
      {
        goto LABEL_19;
      }

      if ((changeCopy & 8) != 0)
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

      if ((changeCopy & 0x10) == 0)
      {
        goto LABEL_24;
      }
    }

    [(PUPhotosGridViewController *)self updateEmptyPlaceholderView];
LABEL_19:
    [(PUImportViewController *)self _updateToolbarAnimated:0];
    goto LABEL_24;
  }

  if (PXImportAssetsDataSourceManagerObserverContext_34961 != context)
  {
    if (PUImportUnfilteredAssetsDataSourceManagerObserverContext != context)
    {
      if ((changeCopy & 1) != 0 && PUImportSelectionManagerObserverContext_34962 == context)
      {
        currentSelectionSnapshot = [(PUImportViewController *)self currentSelectionSnapshot];
        importController = [(PUImportViewController *)self importController];
        selectionManager = [importController selectionManager];
        selectionSnapshot = [selectionManager selectionSnapshot];
        [(PUImportViewController *)self setCurrentSelectionSnapshot:selectionSnapshot];

        selectedIndexPaths = [currentSelectionSnapshot selectedIndexPaths];
        currentSelectionSnapshot2 = [(PUImportViewController *)self currentSelectionSnapshot];
        selectedIndexPaths2 = [currentSelectionSnapshot2 selectedIndexPaths];
        v16 = selectedIndexPaths2;
        if (selectedIndexPaths == selectedIndexPaths2)
        {
        }

        else
        {
          v17 = [selectedIndexPaths isEqual:selectedIndexPaths2];

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

  if (changeCopy)
  {
    importDataSourceManager = [(PUImportViewController *)self importDataSourceManager];
    dataSource = [importDataSourceManager dataSource];

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __55__PUImportViewController_observable_didChange_context___block_invoke_2;
    v25[3] = &unk_1E7B80C38;
    v25[4] = self;
    v26 = dataSource;
    v20 = dataSource;
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

- (void)setImportDataSource:(id)source
{
  v27 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  v5 = _importGridLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(PXImportAssetsDataSource *)self->_importDataSource identifier];
    numberOfSections = [(PXImportAssetsDataSource *)self->_importDataSource numberOfSections];
    numberOfItems = [(PXImportAssetsDataSource *)self->_importDataSource numberOfItems];
    v13 = 136316674;
    v14 = "[PUImportViewController setImportDataSource:]";
    v15 = 2048;
    v16 = identifier;
    v17 = 2048;
    v18 = numberOfSections;
    v19 = 2048;
    v20 = numberOfItems;
    v21 = 2048;
    identifier2 = [sourceCopy identifier];
    v23 = 2048;
    numberOfSections2 = [sourceCopy numberOfSections];
    v25 = 2048;
    numberOfItems2 = [sourceCopy numberOfItems];
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "%s: Going from data source %lu (%lu sections, %lu assets) to %lu (%lu sections, %lu assets)", &v13, 0x48u);
  }

  importDataSource = self->_importDataSource;
  self->_importDataSource = sourceCopy;
  v10 = sourceCopy;

  v11 = self->_importDataSource;
  fakePhotosDataSource = [(PUImportViewController *)self fakePhotosDataSource];
  [fakePhotosDataSource setImportDataSource:v11];
}

- (void)setUnfilteredImportDataSourceManager:(id)manager
{
  managerCopy = manager;
  unfilteredImportDataSourceManager = self->_unfilteredImportDataSourceManager;
  if (unfilteredImportDataSourceManager != managerCopy)
  {
    v7 = managerCopy;
    [(PXImportAssetsDataSourceManager *)unfilteredImportDataSourceManager unregisterChangeObserver:self context:PUImportUnfilteredAssetsDataSourceManagerObserverContext];
    objc_storeStrong(&self->_unfilteredImportDataSourceManager, manager);
    unfilteredImportDataSourceManager = [(PXImportAssetsDataSourceManager *)self->_unfilteredImportDataSourceManager registerChangeObserver:self context:PUImportUnfilteredAssetsDataSourceManagerObserverContext];
    managerCopy = v7;
  }

  MEMORY[0x1EEE66BB8](unfilteredImportDataSourceManager, managerCopy);
}

- (void)setImportDataSourceManager:(id)manager
{
  managerCopy = manager;
  importDataSourceManager = self->_importDataSourceManager;
  if (importDataSourceManager != managerCopy)
  {
    v8 = managerCopy;
    [(PXImportAssetsDataSourceManager *)importDataSourceManager unregisterChangeObserver:self context:PXImportAssetsDataSourceManagerObserverContext_34961];
    objc_storeStrong(&self->_importDataSourceManager, manager);
    [(PXImportAssetsDataSourceManager *)self->_importDataSourceManager registerChangeObserver:self context:PXImportAssetsDataSourceManagerObserverContext_34961];
    dataSource = [(PXImportAssetsDataSourceManager *)self->_importDataSourceManager dataSource];
    [(PUImportViewController *)self handleNewDataSource:dataSource];

    managerCopy = v8;
  }

  MEMORY[0x1EEE66BB8](importDataSourceManager, managerCopy);
}

- (void)setImportController:(id)controller
{
  controllerCopy = controller;
  if (self->_importController != controllerCopy)
  {
    v13 = controllerCopy;
    unfilteredImportDataSourceManager = [(PUImportViewController *)self unfilteredImportDataSourceManager];

    if (unfilteredImportDataSourceManager)
    {
      importController = self->_importController;
      unfilteredImportDataSourceManager2 = [(PUImportViewController *)self unfilteredImportDataSourceManager];
      [(PXImportController *)importController removeDataSourceManager:unfilteredImportDataSourceManager2];

      [(PUImportViewController *)self setUnfilteredImportDataSourceManager:0];
    }

    selectionManager = [(PXImportController *)self->_importController selectionManager];
    [selectionManager unregisterChangeObserver:self context:PUImportSelectionManagerObserverContext_34962];

    [(PXImportController *)self->_importController unregisterChangeObserver:self context:PXImportControllerObserverContext_34960];
    objc_storeStrong(&self->_importController, controller);
    dataSourceManager = [(PXImportController *)self->_importController dataSourceManager];
    [(PUImportViewController *)self setImportDataSourceManager:dataSourceManager];

    [(PUImportViewController *)self setUserWantsAlreadyImportedSectionCollapsedIfPossible:1];
    [(PUImportViewController *)self setShouldCollapseAlreadyImportedSection:[(PUImportViewController *)self userWantsAlreadyImportedSectionCollapsedIfPossible]];
    [(PUImportViewController *)self updateDataSourceManagerFilters];
    [(PXImportController *)self->_importController registerChangeObserver:self context:PXImportControllerObserverContext_34960];
    selectionManager2 = [(PXImportController *)self->_importController selectionManager];
    [selectionManager2 registerChangeObserver:self context:PUImportSelectionManagerObserverContext_34962];

    v12 = [(PXImportController *)self->_importController createDataSourceManagerWithLogIdentifier:@"unfiltered"];
    [(PUImportViewController *)self setUnfilteredImportDataSourceManager:v12];

    controllerCopy = v13;
  }
}

- (void)setImportSource:(id)source
{
  sourceCopy = source;
  if (sourceCopy)
  {
    mEMORY[0x1E69C3620] = [MEMORY[0x1E69C3620] sharedInstance];
    showNewestItemsInGridUntilScrolled = [mEMORY[0x1E69C3620] showNewestItemsInGridUntilScrolled];

    if (showNewestItemsInGridUntilScrolled)
    {
      v7 = 1;
    }

    else
    {
      v7 = -1;
    }

    v8 = objc_alloc(MEMORY[0x1E69C3608]);
    photoLibrary = [(PUPhotosGridViewController *)self photoLibrary];
    v10 = [v8 initWithImportSource:sourceCopy photoLibrary:photoLibrary imageFormat:objc_msgSend(objc_opt_class() dateOrder:"defaultThumbnailImageFormat"), v7];
    [(PUImportViewController *)self setImportController:v10];

    importController = [(PUImportViewController *)self importController];
    [importController setImportCompletionDelegate:self];

    v12 = [PUImportFakePhotosDataSource alloc];
    importController2 = [(PUImportViewController *)self importController];
    dataSourceManager = [importController2 dataSourceManager];
    dataSource = [dataSourceManager dataSource];
    photoLibrary2 = [(PUPhotosGridViewController *)self photoLibrary];
    v17 = [(PUImportFakePhotosDataSource *)v12 initWithImportDataSource:dataSource photoLibrary:photoLibrary2];
    [(PUImportViewController *)self setFakePhotosDataSource:v17];

    fakePhotosDataSource = [(PUImportViewController *)self fakePhotosDataSource];
    [(PUPhotosGridViewController *)self setPhotosDataSource:fakePhotosDataSource];

    [(PUImportViewController *)self setShouldStayScrolledToBottom:showNewestItemsInGridUntilScrolled];
    importController3 = [(PUImportViewController *)self importController];
    [importController3 loadAssets];

    v20 = [PUImportActionCoordinator alloc];
    importController4 = [(PUImportViewController *)self importController];
    v22 = [(PUImportActionCoordinator *)v20 initWithViewController:self importController:importController4 loggingSource:0];
    [(PUImportViewController *)self setActionCoordinator:v22];

    actionCoordinator = [(PUImportViewController *)self actionCoordinator];
    [actionCoordinator setPresentsAdditionalDeleteAllConfirmation:1];

    actionCoordinator2 = [(PUImportViewController *)self actionCoordinator];
    [actionCoordinator2 setDelegate:self];

    [(PUImportViewController *)self enableSwipeSelection];
  }

  else
  {
    [(PUImportViewController *)self setActionCoordinator:0];
    importController5 = [(PUImportViewController *)self importController];
    [importController5 shutdown];

    [(PUImportViewController *)self setImportController:0];
    [(PUImportViewController *)self _cancelAlerts];
    if (self->_completedAnImport)
    {
      view = [(PUImportViewController *)self view];
      superview = [view superview];

      if (superview)
      {
        self->_completedAnImport = 0;
      }
    }

    [(PUImportViewController *)self disableSwipeSelection];
    presentingViewController = [(PUImportViewController *)self presentingViewController];

    if (presentingViewController)
    {
      v29 = _importGridLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *v31 = 0;
        _os_log_impl(&dword_1B36F3000, v29, OS_LOG_TYPE_DEFAULT, "Import source went away while modally presented. Auto-dismissing import UI", v31, 2u);
      }

      presentingViewController2 = [(PUImportViewController *)self presentingViewController];
      [presentingViewController2 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

- (PHImportSource)importSource
{
  importController = [(PUImportViewController *)self importController];
  importSource = [importController importSource];

  return importSource;
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

  presentedViewController = [(PUImportViewController *)self presentedViewController];

  if (presentedViewController)
  {
    presentedViewController2 = [(PUImportViewController *)self presentedViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    [(PUImportViewController *)self dismissViewControllerAnimated:isKindOfClass & 1 completion:0];
  }
}

- (BOOL)isImporting
{
  importController = [(PUImportViewController *)self importController];
  isImportingAssets = [importController isImportingAssets];

  return isImportingAssets;
}

- (void)handleImportCompleteAlertResponse:(__CFUserNotification *)response flags:(unint64_t)flags
{
  if (self->_importCompleteNotification == response)
  {
    if (!self->_completedImportSessionInfo)
    {
      _PFAssertContinueHandler();
    }

    importedItems = _importGridLog();
    v7 = os_log_type_enabled(importedItems, OS_LOG_TYPE_DEFAULT);
    if (flags == 1)
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&dword_1B36F3000, importedItems, OS_LOG_TYPE_DEFAULT, "Import Complete Dialog: Deleting imported items.", buf, 2u);
      }

      importedItems = [(PXImportSessionInfo *)self->_completedImportSessionInfo importedItems];
      [(PUImportViewController *)self _deleteItems:importedItems];
    }

    else if (v7)
    {
      *v9 = 0;
      _os_log_impl(&dword_1B36F3000, importedItems, OS_LOG_TYPE_DEFAULT, "Import Complete Dialog: Keeping imported items.", v9, 2u);
    }

    completedImportSessionInfo = self->_completedImportSessionInfo;
    self->_completedImportSessionInfo = 0;

    CFRelease(self->_importCompleteNotification);
    self->_importCompleteNotification = 0;
  }
}

- (void)_deleteItems:(id)items
{
  v11 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v5 = _importGridLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315394;
    v8 = "[PUImportViewController _deleteItems:]";
    v9 = 2112;
    v10 = itemsCopy;
    _os_log_debug_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEBUG, "%s: %@", &v7, 0x16u);
  }

  if (![itemsCopy count])
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

  [(PUImportActionCoordinator *)self->_actionCoordinator deleteItemsWithoutConfirmation:itemsCopy];
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
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    [mEMORY[0x1E69DC668] setIdleTimerDisabled:0];
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
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    [mEMORY[0x1E69DC668] setIdleTimerDisabled:1];

    busyCount = self->_busyCount;
  }

  self->_busyCount = busyCount + 1;
}

- (void)_updateItemViewAtIndex:(id)index
{
  v13 = *MEMORY[0x1E69E9840];
  indexCopy = index;
  v5 = _importGridLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315394;
    v10 = "[PUImportViewController _updateItemViewAtIndex:]";
    v11 = 2112;
    v12 = indexCopy;
    _os_log_debug_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEBUG, "%s: %@", &v9, 0x16u);
  }

  collectionView = [(PUImportViewController *)self collectionView];
  v7 = [collectionView cellForItemAtIndexPath:indexCopy];

  if (v7)
  {
    [(PUImportViewController *)self _updateCell:v7 atIndex:indexCopy];
  }

  else
  {
    v8 = _importGridLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136315394;
      v10 = "[PUImportViewController _updateItemViewAtIndex:]";
      v11 = 2112;
      v12 = indexCopy;
      _os_log_debug_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEBUG, "%s: Warning missing cell for index %@", &v9, 0x16u);
    }
  }
}

- (void)_updateCell:(id)cell atIndex:(id)index
{
  v19 = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  indexCopy = index;
  v8 = _importGridLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "[PUImportViewController _updateCell:atIndex:]";
    *&buf[12] = 2112;
    *&buf[14] = indexCopy;
    _os_log_debug_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEBUG, "%s: %@", buf, 0x16u);
  }

  [cellCopy refreshThumbnail];
  mEMORY[0x1E69C3620] = [MEMORY[0x1E69C3620] sharedInstance];
  showImportItemFilenames = [mEMORY[0x1E69C3620] showImportItemFilenames];

  if (showImportItemFilenames)
  {
    memset(buf, 0, 32);
    importDataSource = [(PUImportViewController *)self importDataSource];
    [importDataSource identifier];
    PXSimpleIndexPathFromIndexPath();

    importDataSource2 = [(PUImportViewController *)self importDataSource];
    v17[0] = *buf;
    v17[1] = *&buf[16];
    v13 = [importDataSource2 assetAtItemIndexPath:v17];

    v14 = MEMORY[0x1E696AEC0];
    debugDisplayName = [v13 debugDisplayName];
    v16 = [v14 stringWithFormat:@"%@ [%lu]", debugDisplayName, objc_msgSend(indexCopy, "row")];
    [cellCopy updateDebugLabel:v16];
  }

  else
  {
    [cellCopy updateDebugLabel:0];
  }
}

- (void)_deselectCell:(id)cell
{
  v14 = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  representedImportItem = [cellCopy representedImportItem];
  v6 = _importGridLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[PUImportViewController _deselectCell:]";
    v10 = 2112;
    v11 = representedImportItem;
    v12 = 2112;
    v13 = cellCopy;
    _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "%s: model: %@ cell: %@", &v8, 0x20u);
  }

  if (representedImportItem)
  {
    importController = [(PUImportViewController *)self importController];
    [importController deselectItem:representedImportItem];

    [cellCopy setSelected:0];
  }
}

- (void)_selectCell:(id)cell
{
  v14 = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  representedImportItem = [cellCopy representedImportItem];
  v6 = _importGridLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[PUImportViewController _selectCell:]";
    v10 = 2112;
    v11 = representedImportItem;
    v12 = 2112;
    v13 = cellCopy;
    _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "%s: model: %@ cell: %@", &v8, 0x20u);
  }

  if (representedImportItem)
  {
    importController = [(PUImportViewController *)self importController];
    [importController selectItem:representedImportItem];

    [cellCopy setSelected:1];
  }
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  v13 = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  v10.receiver = self;
  v10.super_class = PUImportViewController;
  [(PUPhotosGridViewController *)&v10 collectionView:view didEndDisplayingCell:cellCopy forItemAtIndexPath:path];
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
    [cellCopy cancelThumbnailLoadIfActive];
  }
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v12 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  cellCopy = cell;
  v9 = _importGridLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315138;
    v11 = "[PUImportViewController collectionView:willDisplayCell:forItemAtIndexPath:]";
    _os_log_debug_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_DEBUG, "%s", &v10, 0xCu);
  }

  [(PUImportViewController *)self _updateCell:cellCopy atIndex:pathCopy];
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  v16 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v6 = _importGridLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    allowsSelection = self->_allowsSelection;
    v10 = 136315650;
    v11 = "[PUImportViewController collectionView:shouldSelectItemAtIndexPath:]";
    v12 = 2112;
    v13 = pathCopy;
    v14 = 1024;
    v15 = allowsSelection;
    _os_log_debug_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEBUG, "%s: %@ -> %d", &v10, 0x1Cu);
  }

  v7 = self->_allowsSelection;
  return v7;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v23 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  importDataSource = [(PUImportViewController *)self importDataSource];
  [importDataSource identifier];
  PXSimpleIndexPathFromIndexPath();

  importDataSource2 = [(PUImportViewController *)self importDataSource];
  memset(buf, 0, 32);
  v11 = [importDataSource2 assetAtItemIndexPath:buf];

  if (!v11)
  {
    _PFAssertContinueHandler();
    v19 = _importGridLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      importDataSource3 = [(PUImportViewController *)self importDataSource];
      *buf = 136315650;
      *&buf[4] = "[PUImportViewController collectionView:cellForItemAtIndexPath:]";
      *&buf[12] = 2114;
      *&buf[14] = pathCopy;
      *&buf[22] = 2114;
      *&buf[24] = importDataSource3;
      _os_log_error_impl(&dword_1B36F3000, v19, OS_LOG_TYPE_ERROR, "%s: Unreachable Error: Import view model at index path %{public}@ is nil, import data source: %{public}@", buf, 0x20u);
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUImportViewController.m" lineNumber:869 description:@"Code which should be unreachable has been reached"];

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
    *&buf[24] = pathCopy;
    _os_log_debug_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_DEBUG, "%s: %@(%@)", buf, 0x20u);
  }

  collectionView = [(PUImportViewController *)self collectionView];
  v14 = [collectionView dequeueReusableCellWithReuseIdentifier:@"PUImportCellReuseIdentifier" forIndexPath:pathCopy];

  [v14 setDelegate:self];
  [v14 setRepresentedImportItem:v11];
  itemsBeingTransitioned = [(PUImportViewController *)self itemsBeingTransitioned];
  v16 = [itemsBeingTransitioned member:v11];

  v17 = 0.0;
  if (!v16)
  {
    v17 = 1.0;
  }

  [v14 setAlpha:v17];

  return v14;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  if (kindCopy != @"PUImportSectionHeaderReuseIdentifier")
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUImportViewController.m" lineNumber:839 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v12 = pathCopy;
  v13 = [viewCopy dequeueReusableSupplementaryViewOfKind:@"PUImportSectionHeaderReuseIdentifier" withReuseIdentifier:@"PUImportSectionHeaderReuseIdentifier" forIndexPath:pathCopy];
  [v13 setDelegate:self];
  [(PUImportViewController *)self configureSupplementaryView:v13 ofKind:@"PUImportSectionHeaderReuseIdentifier" forIndexPath:v12];

  return v13;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  v5 = [(PUImportViewController *)self collectionView:view];
  [v5 contentSize];
  v7 = v6;

  v8 = 30.0;
  v9 = v7;
  result.height = v8;
  result.width = v9;
  return result;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  importDataSource = [(PUImportViewController *)self importDataSource];
  v6 = [importDataSource numberOfItemsInSection:section];

  return v6;
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  importDataSource = [(PUImportViewController *)self importDataSource];
  numberOfSections = [importDataSource numberOfSections];

  return numberOfSections;
}

- (BOOL)importSectionedGridLayout:(id)layout shouldEmphasizeSection:(unint64_t)section
{
  if (section)
  {
    return 0;
  }

  importDataSource = [(PUImportViewController *)self importDataSource];
  hasAlreadyImportedSection = [importDataSource hasAlreadyImportedSection];

  return hasAlreadyImportedSection;
}

- (id)_bestReferenceItemIndexPath
{
  collectionView = [(PUImportViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  collectionView2 = [collectionViewLayout collectionView];
  if (!collectionView2 || (v5 = collectionView2, [collectionView window], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, !v6))
  {
LABEL_19:
    v20 = 0;
    goto LABEL_20;
  }

  [collectionView contentOffset];
  v8 = v7;
  v10 = v9;
  [collectionView bounds];
  v12 = v11;
  v14 = v13;
  numberOfSections = [collectionView numberOfSections];
  v16 = numberOfSections - 1;
  if (numberOfSections < 1 || [collectionView numberOfItemsInSection:0] < 1)
  {
    goto LABEL_25;
  }

  v17 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
  v18 = [collectionViewLayout layoutAttributesForItemAtIndexPath:v17];
  v19 = v18;
  if (v18 && ([v18 frame], v29.origin.x = v8, v29.origin.y = v10, v29.size.width = v12, v29.size.height = v14, CGRectIntersectsRect(v27, v29)))
  {
    v20 = v17;
  }

  else
  {
    v20 = 0;
  }

  v21 = [collectionView numberOfItemsInSection:v16];
  if (!v20 && v21 >= 1)
  {
    v22 = [MEMORY[0x1E696AC88] indexPathForItem:v21 - 1 inSection:v16];
    v23 = [collectionViewLayout layoutAttributesForItemAtIndexPath:v22];
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
    if ([collectionViewLayout conformsToProtocol:&unk_1F2C21280])
    {
      v20 = [collectionViewLayout itemIndexPathAtCenterOfRect:{v8, v10, v12, v14}];
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_20:

  return v20;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path
{
  if ([kind isEqualToString:{@"PUImportSectionHeaderReuseIdentifier", path}])
  {
    collectionView = [(PUImportViewController *)self collectionView];
    collectionViewLayout = [collectionView collectionViewLayout];

    globalHeaderAttributes = [collectionViewLayout globalHeaderAttributes];
  }

  else
  {
    globalHeaderAttributes = 0;
  }

  return globalHeaderAttributes;
}

- (id)_newGridLayoutFromSpec:(id)spec
{
  specCopy = spec;
  v5 = objc_alloc_init(PUSectionedGridLayout);
  [(PUSectionedGridLayout *)v5 setSectionHeadersEnabled:1];
  [(PUSectionedGridLayout *)v5 setSectionHeaderElementKind:@"PUImportSectionHeaderReuseIdentifier"];
  [(PUSectionedGridLayout *)v5 setSectionTopPadding:0.0];
  [specCopy baseInterItemSpacing];
  v7 = v6;

  [(PUSectionedGridLayout *)v5 setGlobalTopPadding:v7];
  [(PUSectionedGridLayout *)v5 setGlobalBottomPadding:0.0];
  [(PUSectionedGridLayout *)v5 setDelegate:self];
  return v5;
}

- (id)_gridLayout
{
  collectionView = [(PUImportViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];

  return collectionViewLayout;
}

- (void)_contentSizeCategoryDidChangeNotification:(id)notification
{
  [(PUPhotosGridViewController *)self updateLayoutMetrics];
  [(PUImportViewController *)self setCachedHeaderHeight:0];
  collectionView = [(PUImportViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout invalidateLayout];
}

- (void)_updateLayoutMetrics
{
  _spec = [(PUImportViewController *)self _spec];
  _gridLayout = [(PUImportViewController *)self _gridLayout];
  [(PUImportViewController *)self _collectionViewLayoutReferenceWidth];
  v5 = v4;
  collectionView = [(PUImportViewController *)self collectionView];
  [collectionView safeAreaInsets];
  [_spec configureCollectionViewGridLayout:_gridLayout forWidth:v5 safeAreaInsets:{v7, v8, v9, v10}];
}

- (void)_updateContentOffsetForPendingViewSizeTransition
{
  _pendingViewSizeTransitionContext = [(PUImportViewController *)self _pendingViewSizeTransitionContext];
  if (_pendingViewSizeTransitionContext)
  {
    if ([(PUImportViewController *)self isViewLoaded])
    {
      collectionView = [(PUImportViewController *)self collectionView];
      [collectionView bounds];
      CGRectGetWidth(v17);

      [(PUImportViewController *)self _collectionViewLayoutReferenceWidth];
      if (PXFloatApproximatelyEqualToFloat())
      {
        _gridLayout = [(PUImportViewController *)self _gridLayout];
        collectionView2 = [(PUImportViewController *)self collectionView];
        [collectionView2 contentOffset];
        v7 = v6;
        v9 = v8;

        [_gridLayout targetContentOffsetForViewSizeTransitionContext:_pendingViewSizeTransitionContext];
        v12 = v11;
        v13 = v10;
        if (v7 != v11 || v9 != v10)
        {
          collectionView3 = [(PUImportViewController *)self collectionView];
          [collectionView3 setContentOffset:{v12, v13}];

          [_gridLayout invalidateLayout];
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
  updateSpec = [(PUPhotosGridViewController *)&v11 updateSpec];
  traitCollection = [(PUImportViewController *)self traitCollection];
  if ([traitCollection horizontalSizeClass] && objc_msgSend(traitCollection, "verticalSizeClass"))
  {
    v5 = [PUInterfaceManager shouldUsePhoneLayoutWithTraitCollection:traitCollection];
    v6 = objc_opt_class();
    _spec = [(PUImportViewController *)self _spec];
    v8 = objc_opt_class();

    self->_compactLayoutMode = v5;
    if (v6 != v8)
    {
      v9 = objc_alloc_init(v6);
      [(PUImportViewController *)self _setSpec:v9];

      updateSpec = 1;
    }
  }

  else
  {
    updateSpec = 0;
  }

  return updateSpec;
}

- (void)_setCollectionViewSafeAreaInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_collectionViewSafeAreaInsets.top, v3), vceqq_f64(*&self->_collectionViewSafeAreaInsets.bottom, v4)))) & 1) == 0)
  {
    self->_collectionViewSafeAreaInsets = insets;
    [(PUImportViewController *)self _updateLayoutMetrics];
  }
}

- (void)_setCollectionViewLayoutReferenceWidth:(double)width
{
  if (self->__collectionViewLayoutReferenceWidth != width)
  {
    self->__collectionViewLayoutReferenceWidth = width;
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
  collectionView = [(PUImportViewController *)self collectionView];
  [collectionView safeAreaInsets];
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

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v29.receiver = self;
  v29.super_class = PUImportViewController;
  [(PUPhotosGridViewController *)&v29 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  collectionView = [(PUImportViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];

  v10 = [collectionViewLayout prepareForViewTransitionToSize:{width, height}];
  if ([coordinatorCopy isAnimated] && (-[PUImportViewController px_isVisible](self, "px_isVisible") & 1) != 0)
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
    _cachedViewSizeTransitionContext = [(PUImportViewController *)self _cachedViewSizeTransitionContext];

    LOBYTE(isSuspended) = 0;
    v10 = _cachedViewSizeTransitionContext;
  }

  else
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    isSuspended = [mEMORY[0x1E69DC668] isSuspended];

    if (isSuspended)
    {
      _cachedViewSizeTransitionContext2 = [(PUImportViewController *)self _cachedViewSizeTransitionContext];

      if (!_cachedViewSizeTransitionContext2)
      {
        view = [(PUImportViewController *)self view];
        [view bounds];
        v20 = v19;
        v22 = v21;

        [(PUImportViewController *)self _setCachedViewSizeTransitionContext:v10];
        [(PUImportViewController *)self _setCachedViewSizeTransitionContextSize:v20, v22];
      }

      LOBYTE(isSuspended) = 1;
    }
  }

  _pendingViewSizeTransitionContext = [(PUImportViewController *)self _pendingViewSizeTransitionContext];

  if (!_pendingViewSizeTransitionContext)
  {
    [(PUImportViewController *)self _setPendingViewSizeTransitionContext:v10];
  }

  v11 = 1;
  if ((isSuspended & 1) == 0)
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
  v26 = collectionViewLayout;
  v24 = collectionViewLayout;
  [coordinatorCopy animateAlongsideTransition:v28 completion:v25];
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

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = PUImportViewController;
  [(PUPhotosGridViewController *)&v5 viewWillDisappear:?];
  [(PUImportViewController *)self _dismissPopupsAnimated:disappearCopy];
  [(PUImportViewController *)self disableSwipeSelection];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PUImportViewController;
  [(PUPhotosGridViewController *)&v4 viewDidAppear:appear];
  [(PUImportViewController *)self setViewAppearing:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  [(PUImportViewController *)self setViewAppearing:1];
  _spec = [(PUImportViewController *)self _spec];
  v6 = objc_opt_class();

  v13.receiver = self;
  v13.super_class = PUImportViewController;
  [(PUPhotosGridViewController *)&v13 viewWillAppear:appearCopy];
  _spec2 = [(PUImportViewController *)self _spec];
  v8 = objc_opt_class();

  view = [(PUImportViewController *)self view];
  [view frame];
  v11 = v10;

  [(PUImportViewController *)self _setCollectionViewLayoutReferenceWidth:v11];
  if (v6 != v8)
  {
    _gridLayout = [(PUImportViewController *)self _gridLayout];
    [_gridLayout invalidateLayout];

    [(PUImportViewController *)self reloadData];
  }

  [(PUImportViewController *)self enableSwipeSelection];
  self->_acceptsLongPress = 1;
}

- (void)viewWillLayoutSubviews
{
  updateSpec = [(PUImportViewController *)self updateSpec];
  view = [(PUImportViewController *)self view];
  [view frame];
  v6 = v5;

  collectionView = [(PUImportViewController *)self collectionView];
  [collectionView safeAreaInsets];
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

  if (updateSpec)
  {
    _gridLayout = [(PUImportViewController *)self _gridLayout];
    [_gridLayout invalidateLayout];

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
  collectionView = [(PUImportViewController *)self collectionView];
  v4 = +[PUInterfaceManager currentTheme];
  photoCollectionViewBackgroundColor = [v4 photoCollectionViewBackgroundColor];
  [collectionView setBackgroundColor:photoCollectionViewBackgroundColor];

  collectionView2 = [(PUImportViewController *)self collectionView];
  [collectionView2 setAllowsMultipleSelection:1];

  collectionView3 = [(PUImportViewController *)self collectionView];
  [collectionView3 setAlwaysBounceVertical:1];

  collectionView4 = [(PUImportViewController *)self collectionView];
  [collectionView4 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PUImportCellReuseIdentifier"];

  collectionView5 = [(PUImportViewController *)self collectionView];
  [collectionView5 registerClass:objc_opt_class() forSupplementaryViewOfKind:@"PUImportSectionHeaderReuseIdentifier" withReuseIdentifier:@"PUImportSectionHeaderReuseIdentifier"];

  [(PUImportViewController *)self updateSpec];
}

- (void)dealloc
{
  [(PUImportViewController *)self _cancelAlerts];
  actionCoordinator = self->_actionCoordinator;
  self->_actionCoordinator = 0;

  [(PUImportViewController *)self setImportController:0];
  mEMORY[0x1E69C3620] = [MEMORY[0x1E69C3620] sharedInstance];
  [mEMORY[0x1E69C3620] removeKeyObserver:self];

  v5.receiver = self;
  v5.super_class = PUImportViewController;
  [(PUPhotosGridViewController *)&v5 dealloc];
}

- (PUImportViewController)initWithSpec:(id)spec photoLibrary:(id)library
{
  specCopy = spec;
  v16.receiver = self;
  v16.super_class = PUImportViewController;
  v8 = [(PUPhotosGridViewController *)&v16 initWithSpec:specCopy photoLibrary:library];
  v9 = v8;
  if (v8)
  {
    v8->_busyCount = 0;
    objc_storeStrong(&v8->__spec, spec);
    v9->_allowsSelection = 1;
    mEMORY[0x1E69C3620] = [MEMORY[0x1E69C3620] sharedInstance];
    [mEMORY[0x1E69C3620] addKeyObserver:v9];

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
  importController = [(PUImportViewController *)self importController];
  importSource = [importController importSource];
  canDeleteContent = [importSource canDeleteContent];

  if (canDeleteContent)
  {
    v6 = self->_deleteButtonItemIcon;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)_titleViewVerticalSizeClassForExtendedTraitCollection:(id)collection
{
  collectionCopy = collection;
  v4 = [collectionCopy layoutSizeClass] == 1 && objc_msgSend(collectionCopy, "layoutOrientation") == 2;

  return v4;
}

- (void)_dismissPopupsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  presentedViewController = [(PUImportViewController *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {

    [(PUImportViewController *)self dismissViewControllerAnimated:animatedCopy completion:0];
  }
}

- (id)_createSubtitleText
{
  importController = [(PUImportViewController *)self importController];
  isImportingAssets = [importController isImportingAssets];

  importController2 = [(PUImportViewController *)self importController];
  isDeletingAssets = [importController2 isDeletingAssets];

  mEMORY[0x1E69C3620] = [MEMORY[0x1E69C3620] sharedInstance];
  showProgressTitles = [mEMORY[0x1E69C3620] showProgressTitles];

  [(PUImportViewController *)self numTotalItemsToComplete];
  [(PUImportViewController *)self numItemsCompleted];
  importController3 = [(PUImportViewController *)self importController];
  selectionManager = [importController3 selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];

  if ([selectionSnapshot isAnyItemSelected])
  {
    importController4 = [(PUImportViewController *)self importController];
    [importController4 selectedItems];
  }

  else
  {
    importDataSourceManager = [(PUImportViewController *)self importDataSourceManager];
    importController4 = [importDataSourceManager unfilteredDataSource];

    [importController4 allItemsUnsorted];
  }
  v14 = ;

  v15 = [objc_opt_class() totalSizeStringForItems:v14];
  if ((isImportingAssets | isDeletingAssets) & showProgressTitles)
  {
    v16 = PULocalizedString(@"IMPORT_ASSET_PROGRESS_REMAINING_MULTILINE_TOP");
    v17 = PULocalizedStringWithValidatedFormat(v16, @"%d");
LABEL_13:

    goto LABEL_14;
  }

  importController5 = [(PUImportViewController *)self importController];
  selectedItems = [importController5 selectedItems];
  v20 = [selectedItems count];

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

- (void)_updateToolbarAnimated:(BOOL)animated
{
  animatedCopy = animated;
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

  array = [MEMORY[0x1E695DF70] array];
  importController = [(PUImportViewController *)self importController];
  selectionManager = [importController selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];
  [selectionSnapshot isAnyItemSelected];

  if (!self->_deleteButtonItem)
  {
    v57 = array;
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

    roundProgressView = [(PUImportViewController *)self roundProgressView];
    [roundProgressView setUserInteractionEnabled:0];

    v23 = objc_alloc(MEMORY[0x1E69DC708]);
    roundProgressView2 = [(PUImportViewController *)self roundProgressView];
    v25 = [v23 initWithCustomView:roundProgressView2];
    progressButtonItem = self->_progressButtonItem;
    self->_progressButtonItem = v25;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel_importControllerProgressDidChange_ name:*MEMORY[0x1E69C4070] object:0];

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

    animatedCopy = animatedCopy;
    array = v57;
  }

  importController2 = [(PUImportViewController *)self importController];
  isImportingAssets = [importController2 isImportingAssets];

  if (isImportingAssets)
  {
    [array addObject:self->_stopBarItem];
  }

  else
  {
    importDataSource = [(PUImportViewController *)self importDataSource];
    numberOfItems = [importDataSource numberOfItems];

    if (numberOfItems)
    {
      actionCoordinator = [(PUImportViewController *)self actionCoordinator];
      [actionCoordinator configureImportActionsForBarButtonItem:self->_importButtonItem];

      [array addObject:self->_importButtonItem];
      v42 = PLLocalizedFrameworkString();
      [(UIBarButtonItem *)self->_deleteButtonItem setAccessibilityLabel:v42];
      [(UIBarButtonItem *)self->_deleteButtonItem setTitle:v42];
      deleteButtonItem = [(PUImportViewController *)self deleteButtonItem];
      if (deleteButtonItem)
      {
        v44 = [MEMORY[0x1E69DC708] fixedSpaceItemOfWidth:0.0];
        [array addObject:v44];

        [array addObject:deleteButtonItem];
      }
    }
  }

  importController3 = [(PUImportViewController *)self importController];
  if ([importController3 isImportingAssets])
  {

    goto LABEL_22;
  }

  importController4 = [(PUImportViewController *)self importController];
  isDeletingAssets = [importController4 isDeletingAssets];

  if (isDeletingAssets)
  {
LABEL_22:
    if (![(PUImportViewController *)self compactLayoutMode])
    {
      [array addObject:self->_progressButtonItem];
    }
  }

  importController5 = [(PUImportViewController *)self importController];
  if ([importController5 isImportingAssets])
  {
    v49 = 0;
  }

  else
  {
    importController6 = [(PUImportViewController *)self importController];
    v49 = [importController6 isDeletingAssets] ^ 1;
  }

  importController7 = [(PUImportViewController *)self importController];
  hasLoadedInitialBatchOfAssets = [importController7 hasLoadedInitialBatchOfAssets];

  [(UIBarButtonItem *)self->_importButtonItem setEnabled:hasLoadedInitialBatchOfAssets & v49];
  [(UIBarButtonItem *)self->_deleteButtonItem setEnabled:hasLoadedInitialBatchOfAssets & v49];
  [(UIBarButtonItem *)self->_deleteButtonItemIcon setEnabled:hasLoadedInitialBatchOfAssets & v49];
  navigationItem = [(PUImportViewController *)self navigationItem];
  v54 = PLLocalizedFrameworkString();
  [navigationItem setTitle:v54];
  _createSubtitleText = [(PUImportViewController *)self _createSubtitleText];
  [navigationItem setSubtitle:_createSubtitleText];

  [navigationItem setLargeTitleDisplayMode:3];
  [navigationItem setRightBarButtonItems:array animated:animatedCopy];
}

- (BOOL)_isItemVisibleAtIndex:(id)index
{
  indexCopy = index;
  collectionView = [(PUImportViewController *)self collectionView];
  v6 = [collectionView cellForItemAtIndexPath:indexCopy];

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
      importDataSource = [(PUImportViewController *)self importDataSource];
      v6 = 136315394;
      v7 = "[PUImportViewController reloadData]";
      v8 = 2048;
      identifier = [importDataSource identifier];
      _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEFAULT, "%s: Reloading datasource %lu. Expensive (cancels all requests).", &v6, 0x16u);
    }

    collectionView = [(PUImportViewController *)self collectionView];
    [collectionView reloadData];
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

+ (id)totalSizeStringForItems:(id)items
{
  itemsCopy = items;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__PUImportViewController_totalSizeStringForItems___block_invoke;
  v6[3] = &unk_1E7B78038;
  v6[4] = &v7;
  [itemsCopy enumerateObjectsUsingBlock:v6];
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