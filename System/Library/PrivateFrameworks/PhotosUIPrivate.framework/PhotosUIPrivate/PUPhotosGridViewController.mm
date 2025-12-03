@interface PUPhotosGridViewController
+ (id)_localizedSelectionTitleWithPhotoSelectionManager:(id)manager;
+ (void)transferPhotoBrowserFromGridViewController:(id)controller toGridViewController:(id)viewController;
- (BOOL)_areAllAssetsSelected;
- (BOOL)_canAddContent;
- (BOOL)_canAllContainersPerformEditOperation:(int64_t)operation;
- (BOOL)_canPasteboardCopyAssetAtIndexPath:(id)path;
- (BOOL)_canRemoveContent;
- (BOOL)_collectionView:(id)view canHandleDropSesson:(id)sesson;
- (BOOL)_confidentialityWarningRequiredForAsset:(id)asset;
- (BOOL)_hasAccessibilityLargeText;
- (BOOL)_hasAtLeastOneContainer;
- (BOOL)_navigateToInitialEdgeIfNeededAnimated:(BOOL)animated;
- (BOOL)_shouldBeginMultiSelectAtLocation:(CGPoint)location;
- (BOOL)_transitionWidthHasChanged;
- (BOOL)_updateTransitionWidthOnAppearance;
- (BOOL)actionPerformer:(id)performer dismissViewController:(id)controller completionHandler:(id)handler;
- (BOOL)actionPerformer:(id)performer presentViewController:(id)controller;
- (BOOL)canDeleteContent;
- (BOOL)canDisplayEditButton;
- (BOOL)canDragIn;
- (BOOL)canDragOut;
- (BOOL)canHandleDropSession:(id)session;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session;
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)hasScrollableContent;
- (BOOL)isAddPlaceholderAtIndexPath:(id)path;
- (BOOL)isAnyAssetSelected;
- (BOOL)isCurrentCollectionViewDataSource;
- (BOOL)isEmpty;
- (BOOL)isInMultiSelectMode;
- (BOOL)prepareForDismissingForced:(BOOL)forced;
- (BOOL)shouldBeginMultiSelectInteraction:(id)interaction atPoint:(CGPoint)point withVelocity:(CGPoint)velocity;
- (BOOL)shouldPerformFullReloadForIncrementalDataSourceChange:(id)change;
- (BOOL)shouldShowTabBar;
- (BOOL)supportsMultiSelectInteraction:(id)interaction;
- (BOOL)updateSpec;
- (BOOL)wantsPlaceholderView;
- (BOOL)zoomTransition:(id)transition getFrame:(CGRect *)frame inCoordinateSpace:(id *)space contentMode:(int64_t *)mode cropInsets:(UIEdgeInsets *)insets forPhotoToken:(id)token operation:(int64_t)operation;
- (BOOL)zoomTransition:(id)transition transitionImageForPhotoToken:(id)token callback:(id)callback;
- (CGPoint)_previousPrefetchContentOffset;
- (CGPoint)_previousPreheatContentOffset;
- (CGPoint)contentOffsetForPreheating;
- (CGPoint)stableUpdatesContentOffsetForProposedContentOffset:(CGPoint)offset;
- (CGRect)_previousPrefetchRect;
- (CGRect)_previousPreheatRect;
- (CGSize)_cachedViewSizeTransitionContextSize;
- (CGSize)contentSizeForPreheating;
- (CGSize)imageRequestItemPixelSize;
- (CGSize)imageRequestItemSize;
- (CGSize)maximumThumbnailRequestSize;
- (PLDateRangeFormatter)_dateRangeFormatter;
- (PUPhotosGridViewController)initWithCollectionViewLayout:(id)layout;
- (PUPhotosGridViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PUPhotosGridViewController)initWithSpec:(id)spec photoLibrary:(id)library;
- (PUPhotosGridViewControllerSpec)gridSpec;
- (UIEdgeInsets)collectionViewLayoutReferenceSafeAreaInsets;
- (UIPopoverPresentationController)_shareAssetsPopoverController;
- (UIView)_shareAssetsSender;
- (UIViewController)_actionConfirmationAlert;
- (UIViewController)_removeActionSheet;
- (double)_adjustedTransitionWidth;
- (double)sectionedGridLayout:(id)layout aspectRatioForItemAtIndexPath:(id)path;
- (id)_activitySharingControllerWithSelectionManager:(id)manager;
- (id)_allAssetsInCollections;
- (id)_assetsAllowingEditOperation:(int64_t)operation fromAssets:(id)assets;
- (id)_assetsAllowingRemove:(BOOL)remove orDelete:(BOOL)delete fromAssets:(id)assets;
- (id)_barButtonSpacerWithWidth:(double)width;
- (id)_bestReferenceItemIndexPathWithTopBias:(BOOL)bias;
- (id)_cancelButtonItem;
- (id)_collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
- (id)_collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point;
- (id)_collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path;
- (id)_collectionView:(id)view liftingPreviewParametersForItemAtIndexPath:(id)path;
- (id)_deselectAllBarButtonItem;
- (id)_dragItemsForIndexPath:(id)path;
- (id)_indexPathForAsset:(id)asset inAssetCollection:(id)collection refetchIfNeeded:(BOOL)needed;
- (id)_indexesWithoutPlaceholdersFromIndexes:(id)indexes inSection:(int64_t)section;
- (id)_localizedBannerTextForAsset:(id)asset isDestructive:(BOOL *)destructive;
- (id)_newEditActionItemsWithWideSpacing:(BOOL)spacing;
- (id)_performDuplicateActivityWithSelectionSnapshot:(id)snapshot;
- (id)_performHideActivityWithSelectionManager:(id)manager;
- (id)_pickerBannerView;
- (id)_previewParametersForItemAtIndexPath:(id)path;
- (id)_referenceBarButtonItemForDeleteAction:(int64_t)action;
- (id)_selectAllBarButtonItem;
- (id)_selectSessionCancelBarButtonItem;
- (id)_selectSessionDoneBarButtonItem;
- (id)_selectionButton;
- (id)_selectionManagerWithSelectedSharableAssets;
- (id)_selectionManagerWithSharableAssetsInFetchResult:(id)result forAssetCollection:(id)collection;
- (id)_shareableAssetsFromAssets:(id)assets;
- (id)_slideshowNavigationControllerForFetchResult:(id)result assetCollection:(id)collection;
- (id)_updateSelectionFromSelectionManager:(id)manager;
- (id)assetAtIndexPath:(id)path;
- (id)assetAtIndexPathIfSafe:(id)safe;
- (id)assetCollectionForSectionHeaderAtIndex:(unint64_t)index;
- (id)assetIndexPathForPhotoToken:(id)token;
- (id)assetsInAssetCollection:(id)collection;
- (id)beginShowingProgressForAsset:(id)asset inCollection:(id)collection;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view dragPreviewParametersForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)contentScrollView;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration;
- (id)displayTitleInfoForDetailsOfAssetCollection:(id)collection withTitleCategory:(int64_t)category preferredAttributesPromise:(id)promise;
- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update;
- (id)imageRequestOptionsForAsset:(id)asset pixelSize:(CGSize *)size;
- (id)indexPathForAsset:(id)asset hintCollection:(id)collection hintIndexPath:(id)path;
- (id)indexPathsForPreheatingInRect:(CGRect)rect;
- (id)itemIndexPathAtPoint:(CGPoint)point outClosestMatch:(id *)match outLeftClosestMatch:(id *)closestMatch outAboveClosestMatch:(id *)aboveClosestMatch;
- (id)localizedSelectionTitle;
- (id)localizedTitleForAssetCollection:(id)collection titleCategory:(int64_t *)category;
- (id)newGridLayout;
- (id)newToolbarItems;
- (id)photosGridBarsHelper:(id)helper titleForPhotoSelectionManager:(id)manager;
- (id)previewViewControllerForItemAtIndexPath:(id)path;
- (id)pu_debugRows;
- (id)selectedAssets;
- (id)selectedIndexPaths;
- (id)sessionInfoForTransferredAssets:(id)assets;
- (id)zoomTransition:(id)transition photoTokenForPhoto:(id)photo inCollection:(id)collection;
- (int64_t)_deleteActionForBarButtonItem:(id)item;
- (int64_t)cellFillMode;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (int64_t)preferredStatusBarStyle;
- (int64_t)swipeSelectionManager:(id)manager numberOfItemsInSection:(int64_t)section;
- (unint64_t)_sharableAssetsTypeInFetchResult:(id)result;
- (unint64_t)supportedInterfaceOrientations;
- (void)_activitySharingController:(id)controller didCompleteWithActivityType:(id)type success:(BOOL)success;
- (void)_activitySharingControllerDidCancel:(id)cancel;
- (void)_addButtonPressed:(id)pressed;
- (void)_cancelImageRequestForCell:(id)cell;
- (void)_clearAutomaticContentOffsetSnapshot;
- (void)_collectionView:(id)view performDropWithCoordinator:(id)coordinator;
- (void)_configureAddPlaceholderCell:(id)cell animated:(BOOL)animated;
- (void)_contentSizeCategoryDidChangeNotification:(id)notification;
- (void)_ensureOneUpPresentationHelper;
- (void)_getFirstAsset:(id *)asset collection:(id *)collection;
- (void)_handleCancelButton:(id)button;
- (void)_handleDuplicateActionCompletionWithSuccess:(BOOL)success;
- (void)_handleSelectSessionCancelButton:(id)button;
- (void)_handleSelectSessionDoneButton:(id)button;
- (void)_handleSelectionButton:(id)button;
- (void)_hideMenuIfNeeded;
- (void)_invalidateAllProgressInfoIndexPaths;
- (void)_invalidateCachedViewSizeTransitionContext;
- (void)_navigateToPhotoAtIndexPath:(id)path animated:(BOOL)animated interactive:(BOOL)interactive;
- (void)_performAutomaticContentOffsetAdjustment;
- (void)_presentActivitySharingController:(id)controller completion:(id)completion;
- (void)_presentConfidentialityWarning;
- (void)_presentShareSheetWithCompletion:(id)completion;
- (void)_removeButtonPressed:(id)pressed;
- (void)_removeSelectedAssetsWithCompletion:(id)completion;
- (void)_saveAnchorForAutomaticContentOffsetAdjustment;
- (void)_setPushedPhotoBrowserController:(id)controller;
- (void)_shareButtonPressed:(id)pressed;
- (void)_slideshowButtonPressed:(id)pressed;
- (void)_updateAllProgressInfoIndexPaths;
- (void)_updateBackButtonTitle;
- (void)_updateCollectionViewMultipleSelection;
- (void)_updateContentOffsetForPendingViewSizeTransition;
- (void)_updateGlobalHeaderVisibility;
- (void)_updateIndexPathForProgressInfo:(id)info;
- (void)_updateLayoutReferenceValues;
- (void)_updateNavigationBannerAnimated:(BOOL)animated;
- (void)_updatePhotoDecorationForCell:(id)cell animated:(BOOL)animated;
- (void)_updatePhotoSelectionManager;
- (void)_updateProgressForCell:(id)cell atIndexPath:(id)path;
- (void)_updateProgressForCellAtIndexPath:(id)path;
- (void)_updateSelectionForCell:(id)cell atIndexPath:(id)path;
- (void)_updateSubviewsOrderingAndVisibility;
- (void)_updateToolbarContentsAnimated:(BOOL)animated;
- (void)activitySharingController:(id)controller didCompleteWithActivityType:(id)type success:(BOOL)success;
- (void)activitySharingControllerDidCancel:(id)cancel;
- (void)automaticallyTransitionToMultiSelectModeKeepingCurrentSelection:(BOOL)selection;
- (void)beginBatchPreheating;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)configureDecorationsForCell:(id)cell withAsset:(id)asset assetCollection:(id)collection thumbnailIsPlaceholder:(BOOL)placeholder assetMayHaveChanged:(BOOL)changed;
- (void)configureGridCell:(id)cell forItemAtIndexPath:(id)path assetMayHaveChanged:(BOOL)changed;
- (void)configureSupplementaryView:(id)view ofKind:(id)kind forIndexPath:(id)path;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)copy:(id)copy;
- (void)dealloc;
- (void)deletePhotosActionController:(id)controller presentConfirmationViewController:(id)viewController;
- (void)deselectAllItemsAnimated:(BOOL)animated;
- (void)didEndMultiSelectInteraction:(id)interaction atPoint:(CGPoint)point;
- (void)dropInteraction:(id)interaction performDrop:(id)drop;
- (void)endBatchPreheating;
- (void)endCoalescedSelectionUpdates;
- (void)endShowingProgressWithIdentifier:(id)identifier succeeded:(BOOL)succeeded canceled:(BOOL)canceled error:(id)error;
- (void)forceDataSourceIfNeeded;
- (void)getEmptyPlaceholderViewTitle:(id *)title message:(id *)message buttonTitle:(id *)buttonTitle buttonAction:(id *)action;
- (void)getTitle:(id *)title prompt:(id *)prompt shouldHideBackButton:(BOOL *)button leftBarButtonItems:(id *)items rightBarButtonItems:(id *)buttonItems;
- (void)handleDrop:(id)drop;
- (void)handleLongPressGesture:(id)gesture;
- (void)handlePhotoOrStackPinchGestureRecognizer:(id)recognizer;
- (void)handleToggleSelectionOfItemAtIndexPath:(id)path;
- (void)installGestureRecognizers;
- (void)invalidateGridLayoutIfNecessary;
- (void)loadView;
- (void)menuActionController:(id)controller didDismissWithActionIdentifier:(id)identifier;
- (void)multiSelectInteraction:(id)interaction toggleSelectionStateUpToPoint:(CGPoint)point;
- (void)navigateToPhoto:(id)photo inAssetContainer:(id)container refetchIfNeeded:(BOOL)needed animated:(BOOL)animated;
- (void)navigateToPhotosDetailsForAssetCollection:(id)collection animated:(BOOL)animated;
- (void)navigateToRectEdge:(unsigned int)edge animated:(BOOL)animated;
- (void)navigateToRevealPhoto:(id)photo inAssetContainer:(id)container animated:(BOOL)animated;
- (void)oneUpPresentationHelper:(id)helper didDismissOneUpViewController:(id)controller;
- (void)paste:(id)paste;
- (void)photosDataSourceWillChange:(id)change;
- (void)photosGlobalFooterView:(id)view presentViewController:(id)controller;
- (void)photosGlobalFooterViewDidChangeHeight:(id)height;
- (void)photosGridBarsHelper:(id)helper didChange:(unint64_t)change;
- (void)popoverPresentationControllerDidDismissPopover:(id)popover;
- (void)preheatAssetsWithPrefetchingDisabled:(BOOL)disabled;
- (void)prepareForPopoverPresentation:(id)presentation;
- (void)presentAlertController:(id)controller;
- (void)processDataSourceChange:(id)change;
- (void)resetPreheating;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewDidScrollToTop:(id)top;
- (void)scrollViewSpeedometer:(id)speedometer regimeDidChange:(int64_t)change from:(int64_t)from;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillScrollToTop:(id)top;
- (void)sectionedGridLayout:(id)layout didPrepareTransitionIsAppearing:(BOOL)appearing;
- (void)selectAssets:(id)assets fromAssetCollection:(id)collection;
- (void)sender:(id)sender shareAssetsInFetchResult:(id)result forAssetCollection:(id)collection withCompletion:(id)completion;
- (void)sessionInfoPhotoSelectionDidChange:(id)change;
- (void)setAlternateContentView:(id)view;
- (void)setContentViewInSyncWithModel:(BOOL)model;
- (void)setCustomDoneButtonItem:(id)item;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setLongPressGestureRecognizer:(id)recognizer;
- (void)setPhotosDataSource:(id)source;
- (void)setSelected:(BOOL)selected itemsAtIndexes:(id)indexes inSection:(int64_t)section animated:(BOOL)animated;
- (void)setSessionInfo:(id)info;
- (void)settings:(id)settings changedValueForKey:(id)key;
- (void)slideshowViewControllerDidFinish:(id)finish withVisibleAssets:(id)assets;
- (void)swipeSelectionManager:(id)manager updatePhotoSelectionWithIndexes:(id)indexes inSection:(int64_t)section selectionMode:(int64_t)mode;
- (void)uninstallGestureRecognizers;
- (void)updateEmptyPlaceholderView;
- (void)updateGlobalFooter;
- (void)updateGlobalFooterUsingFooterView:(id)view;
- (void)updateInterfaceForIncrementalDataSourceChanges:(id)changes;
- (void)updateInterfaceForModelReloadAnimated:(BOOL)animated;
- (void)updateLayoutMetrics;
- (void)updateNavigationBarAnimated:(BOOL)animated;
- (void)updatePeripheralInterfaceAnimated:(BOOL)animated;
- (void)updateProgressWithIdentifier:(id)identifier withValue:(double)value;
- (void)updateVisibleSupplementaryViewsOfKind:(id)kind;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willBeginMultiSelectInteraction:(id)interaction atPoint:(CGPoint)point;
- (void)zoomTransition:(id)transition didFinishForOperation:(int64_t)operation animated:(BOOL)animated interactive:(BOOL)interactive;
- (void)zoomTransition:(id)transition shouldHidePhotoTokens:(id)tokens;
- (void)zoomTransition:(id)transition willBeginForOperation:(int64_t)operation animated:(BOOL)animated interactive:(BOOL)interactive;
@end

@implementation PUPhotosGridViewController

- (CGSize)_cachedViewSizeTransitionContextSize
{
  width = self->__cachedViewSizeTransitionContextSize.width;
  height = self->__cachedViewSizeTransitionContextSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)maximumThumbnailRequestSize
{
  width = self->_maximumThumbnailRequestSize.width;
  height = self->_maximumThumbnailRequestSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)_previousPrefetchContentOffset
{
  x = self->__previousPrefetchContentOffset.x;
  y = self->__previousPrefetchContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)_previousPreheatContentOffset
{
  x = self->__previousPreheatContentOffset.x;
  y = self->__previousPreheatContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)_previousPrefetchRect
{
  x = self->__previousPrefetchRect.origin.x;
  y = self->__previousPrefetchRect.origin.y;
  width = self->__previousPrefetchRect.size.width;
  height = self->__previousPrefetchRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)_previousPreheatRect
{
  x = self->__previousPreheatRect.origin.x;
  y = self->__previousPreheatRect.origin.y;
  width = self->__previousPreheatRect.size.width;
  height = self->__previousPreheatRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIPopoverPresentationController)_shareAssetsPopoverController
{
  WeakRetained = objc_loadWeakRetained(&self->__shareAssetsPopoverController);

  return WeakRetained;
}

- (UIEdgeInsets)collectionViewLayoutReferenceSafeAreaInsets
{
  top = self->_collectionViewLayoutReferenceSafeAreaInsets.top;
  left = self->_collectionViewLayoutReferenceSafeAreaInsets.left;
  bottom = self->_collectionViewLayoutReferenceSafeAreaInsets.bottom;
  right = self->_collectionViewLayoutReferenceSafeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIView)_shareAssetsSender
{
  WeakRetained = objc_loadWeakRetained(&self->__shareAssetsSender);

  return WeakRetained;
}

- (UIViewController)_actionConfirmationAlert
{
  WeakRetained = objc_loadWeakRetained(&self->__actionConfirmationAlert);

  return WeakRetained;
}

- (UIViewController)_removeActionSheet
{
  WeakRetained = objc_loadWeakRetained(&self->__removeActionSheet);

  return WeakRetained;
}

- (BOOL)actionPerformer:(id)performer dismissViewController:(id)controller completionHandler:(id)handler
{
  handlerCopy = handler;
  [(PUPhotosGridViewController *)self _setActionConfirmationAlert:0];
  [(PUPhotosGridViewController *)self dismissViewControllerAnimated:1 completion:handlerCopy];

  return 1;
}

- (BOOL)actionPerformer:(id)performer presentViewController:(id)controller
{
  controllerCopy = controller;
  [(PUPhotosGridViewController *)self _setActionConfirmationAlert:controllerCopy];
  popoverPresentationController = [controllerCopy popoverPresentationController];
  [popoverPresentationController setDelegate:self];

  [(PUPhotosGridViewController *)self presentViewController:controllerCopy animated:1 completion:0];
  return 1;
}

- (void)didEndMultiSelectInteraction:(id)interaction atPoint:(CGPoint)point
{
  v5 = [(PUPhotosGridViewController *)self _swipeSelectionManager:interaction];
  if (v5)
  {
    v7 = v5;
    [v5 endSelection];
    [(PUPhotosGridViewController *)self _setSwipeSelectionManager:0];
    _barsHelper = [(PUPhotosGridViewController *)self _barsHelper];
    [_barsHelper setSwipeSelecting:0];

    v5 = v7;
  }
}

- (void)multiSelectInteraction:(id)interaction toggleSelectionStateUpToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  collectionView = [(PUPhotosGridViewController *)self collectionView];
  [collectionView convertPoint:0 toView:{x, y}];
  v9 = v8;
  v11 = v10;

  v19 = 0;
  v20 = 0;
  v12 = [(PUPhotosGridViewController *)self itemIndexPathAtPoint:0 outClosestMatch:&v20 outLeftClosestMatch:&v19 outAboveClosestMatch:x, y];
  v13 = v20;
  v14 = v19;
  v15 = v14;
  if (v12 || v13 || v14)
  {
    _swipeSelectionManager = [(PUPhotosGridViewController *)self _swipeSelectionManager];
    [_swipeSelectionManager setScreenTouchLocation:{v9, v11}];
    [_swipeSelectionManager updateSelectionWithCurrentIndexPath:v12 leftClosestIndexPath:v13 aboveClosestIndexPath:v15];
    selectionAutoScroller = [_swipeSelectionManager selectionAutoScroller];
    collectionView2 = [(PUPhotosGridViewController *)self collectionView];
    [selectionAutoScroller updateWithUserInteractionLocation:collectionView2 inCoordinateSpace:{x, y}];
  }
}

- (void)willBeginMultiSelectInteraction:(id)interaction atPoint:(CGPoint)point
{
  v16 = [(PUPhotosGridViewController *)self itemIndexPathAtPoint:0 outClosestMatch:0 outLeftClosestMatch:0 outAboveClosestMatch:point.x, point.y];
  v5 = -[PUPhotosGridViewController photoCollectionAtIndex:](self, "photoCollectionAtIndex:", [v16 section]);
  photoSelectionManager = [(PUPhotosGridViewController *)self photoSelectionManager];
  v7 = [photoSelectionManager isAssetAtIndexSelected:objc_msgSend(v16 inAssetCollection:{"item"), v5}];

  v8 = v7;
  v9 = [PUSwipeSelectionManager alloc];
  photoSelectionManager2 = [(PUPhotosGridViewController *)self photoSelectionManager];
  v11 = [(PUSwipeSelectionManager *)v9 initWithSelectionMode:v8 photoSelectionManager:photoSelectionManager2];

  [(PUSwipeSelectionManager *)v11 setDelegate:self];
  [(PUSwipeSelectionManager *)v11 setDatasource:self];
  [(PUPhotosGridViewController *)self _setSwipeSelectionManager:v11];
  [(PUSwipeSelectionManager *)v11 beginSelectionFromIndexPath:v16];
  _barsHelper = [(PUPhotosGridViewController *)self _barsHelper];
  [_barsHelper setSwipeSelecting:1];

  v13 = objc_alloc(MEMORY[0x1E69C45F0]);
  collectionView = [(PUPhotosGridViewController *)self collectionView];
  v15 = [v13 initWithTargetScrollView:collectionView];

  [v15 setDelegate:self];
  [(PUSwipeSelectionManager *)v11 setSelectionAutoScroller:v15];
}

- (BOOL)shouldBeginMultiSelectInteraction:(id)interaction atPoint:(CGPoint)point withVelocity:(CGPoint)velocity
{
  y = velocity.y;
  x = velocity.x;
  v7 = point.y;
  v8 = point.x;
  isInMultiSelectMode = [(PUPhotosGridViewController *)self isInMultiSelectMode];
  if (isInMultiSelectMode)
  {
    v11 = [(PUPhotosGridViewController *)self _shouldBeginMultiSelectAtLocation:v8, v7];
    v12 = fabs(x) > fabs(y);
    LOBYTE(isInMultiSelectMode) = v11 && v12;
  }

  return isInMultiSelectMode;
}

- (void)automaticallyTransitionToMultiSelectModeKeepingCurrentSelection:(BOOL)selection
{
  if (([(PUPhotosGridViewController *)self isEditing]& 1) == 0)
  {

    [(PUPhotosGridViewController *)self setEditing:1 animated:1];
  }
}

- (BOOL)isInMultiSelectMode
{
  isEditing = [(PUPhotosGridViewController *)self isEditing];
  sessionInfo = [(PUPhotosGridViewController *)self sessionInfo];
  isSelectingAssets = [sessionInfo isSelectingAssets];

  return (isSelectingAssets | isEditing) & 1;
}

- (BOOL)supportsMultiSelectInteraction:(id)interaction
{
  v4 = +[PUPhotosGridSettings sharedInstance];
  if ([v4 isSwipeSelectionEnabled])
  {
    collectionView = [(PUPhotosGridViewController *)self collectionView];
    v6 = [collectionView hasActiveDrag] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)_shouldBeginMultiSelectAtLocation:(CGPoint)location
{
  v3 = [(PUPhotosGridViewController *)self itemIndexPathAtPoint:0 outClosestMatch:0 outLeftClosestMatch:0 outAboveClosestMatch:location.x, location.y];
  v4 = v3 != 0;

  return v4;
}

- (void)dropInteraction:(id)interaction performDrop:(id)drop
{
  v13 = *MEMORY[0x1E69E9840];
  interactionCopy = interaction;
  dropCopy = drop;
  v8 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412546;
    v10 = interactionCopy;
    v11 = 2112;
    v12 = dropCopy;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEBUG, "dropInteraction: %@ performDrop: %@", &v9, 0x16u);
  }

  [(PUPhotosGridViewController *)self handleDrop:dropCopy];
}

- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update
{
  v4 = [objc_alloc(MEMORY[0x1E69DC9C0]) initWithDropOperation:2];

  return v4;
}

- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session
{
  v15 = *MEMORY[0x1E69E9840];
  interactionCopy = interaction;
  sessionCopy = session;
  v8 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412546;
    v12 = interactionCopy;
    v13 = 2112;
    v14 = sessionCopy;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEBUG, "dropInteraction: %@ canHandleSession: %@", &v11, 0x16u);
  }

  v9 = [(PUPhotosGridViewController *)self canHandleDropSession:sessionCopy];
  return v9;
}

- (void)_collectionView:(id)view performDropWithCoordinator:(id)coordinator
{
  v14 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  coordinatorCopy = coordinator;
  v8 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412546;
    v11 = viewCopy;
    v12 = 2112;
    v13 = coordinatorCopy;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEBUG, "_collectionView: %@ performDropWithCoordinator: %@", &v10, 0x16u);
  }

  dropSession = [coordinatorCopy dropSession];
  [(PUPhotosGridViewController *)self handleDrop:dropSession];
}

- (id)_collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path
{
  v19 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  updateCopy = update;
  pathCopy = path;
  v10 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412802;
    v14 = viewCopy;
    v15 = 2112;
    v16 = updateCopy;
    v17 = 2112;
    v18 = pathCopy;
    _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_DEBUG, "_collectionView: %@ dropSessionDidUpdate:%@ withDestinationIndexPath: %@", &v13, 0x20u);
  }

  v11 = [objc_alloc(MEMORY[0x1E69DC838]) initWithDropOperation:2 dropLocation:2];

  return v11;
}

- (BOOL)_collectionView:(id)view canHandleDropSesson:(id)sesson
{
  v15 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  sessonCopy = sesson;
  v8 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412546;
    v12 = viewCopy;
    v13 = 2112;
    v14 = sessonCopy;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEBUG, "_collectionView: %@ canHandleDropSesson: %@ ", &v11, 0x16u);
  }

  v9 = [(PUPhotosGridViewController *)self canHandleDropSession:sessonCopy];
  return v9;
}

- (void)handleDrop:(id)drop
{
  v13 = *MEMORY[0x1E69E9840];
  dropCopy = drop;
  v5 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v12 = dropCopy;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEBUG, "handleDrop: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  defaultManager = [MEMORY[0x1E69C3618] defaultManager];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__PUPhotosGridViewController_handleDrop___block_invoke;
  v8[3] = &unk_1E7B7CE38;
  v8[4] = self;
  objc_copyWeak(&v10, buf);
  v7 = dropCopy;
  v9 = v7;
  [defaultManager fetchAssetsFromDrop:v7 importIfNeeded:1 completion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __41__PUPhotosGridViewController_handleDrop___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = [v3 firstObject];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __41__PUPhotosGridViewController_handleDrop___block_invoke_2;
    v13 = &unk_1E7B7CE10;
    objc_copyWeak(&v15, a1 + 6);
    v5 = v4;
    v14 = v5;
    [a1[4] setPendingProcessDataSourceUpdateBlock:&v10];

    objc_destroyWeak(&v15);
  }

  v6 = [v3 count];
  v7 = [a1[5] items];
  v8 = [v7 count];

  if (v6 != v8)
  {
    v9 = [MEMORY[0x1E69C34A0] dropImportErrorAlertControllerWithHandler:0];
    [a1[4] presentViewController:v9 animated:1 completion:0];
  }
}

BOOL __41__PUPhotosGridViewController_handleDrop___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained photosDataSource];
  v4 = [v3 indexPathForAsset:*(a1 + 32) hintIndexPath:0 hintCollection:0];

  if (v4)
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    v6 = [v5 collectionView];
    [v6 scrollToItemAtIndexPath:v4 atScrollPosition:2 animated:1];
  }

  return v4 != 0;
}

- (BOOL)canHandleDropSession:(id)session
{
  v35 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  canDragIn = [(PUPhotosGridViewController *)self canDragIn];
  localDragSession = [sessionCopy localDragSession];

  if (localDragSession)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    items = [sessionCopy items];
    v9 = [items countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v9)
    {
      v10 = v9;
      selfCopy = self;
      v29 = sessionCopy;
      v11 = *v31;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(items);
          }

          localObject = [*(*(&v30 + 1) + 8 * i) localObject];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = localObject;
            assetReference = [v14 assetReference];
            asset = [assetReference asset];

            if (!asset)
            {
              currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
              v21 = objc_opt_class();
              v22 = NSStringFromClass(v21);
              [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"PUPhotosGridViewController.m" lineNumber:5685 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"pxLocalObject.assetReference.asset", v22}];

              asset = 0;
LABEL_19:

              v19 = 1;
              goto LABEL_20;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
              v17 = objc_opt_class();
              v18 = NSStringFromClass(v17);
              px_descriptionForAssertionMessage = [asset px_descriptionForAssertionMessage];
              [currentHandler2 handleFailureInMethod:a2 object:selfCopy file:@"PUPhotosGridViewController.m" lineNumber:5685 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"pxLocalObject.assetReference.asset", v18, px_descriptionForAssertionMessage}];
            }

            if ([asset sourceType] == 2)
            {
              goto LABEL_19;
            }
          }
        }

        v10 = [items countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

      v19 = 0;
LABEL_20:
      sessionCopy = v29;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 1;
  }

  if ((canDragIn & v19) == 1)
  {
    supportedTypeIdentifiers = [MEMORY[0x1E69C3618] supportedTypeIdentifiers];
    v24 = [sessionCopy hasItemsConformingToTypeIdentifiers:supportedTypeIdentifiers];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (BOOL)canDragIn
{
  v3 = [(PUPhotosGridViewController *)self _allowsActions:64];
  if (v3)
  {

    LOBYTE(v3) = [(PUPhotosGridViewController *)self _canAddContent];
  }

  return v3;
}

- (id)_collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v26 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  sessionCopy = session;
  pathCopy = path;
  v14 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v28.x = x;
    v28.y = y;
    v15 = NSStringFromCGPoint(v28);
    v18 = 138413058;
    v19 = viewCopy;
    v20 = 2112;
    v21 = sessionCopy;
    v22 = 2112;
    v23 = pathCopy;
    v24 = 2112;
    v25 = v15;
    _os_log_impl(&dword_1B36F3000, v14, OS_LOG_TYPE_DEBUG, "_collectionView: %@ itemsForAddingToDragSession: %@ atIndexPath: %@ point: %@", &v18, 0x2Au);
  }

  v16 = [(PUPhotosGridViewController *)self _dragItemsForIndexPath:pathCopy];

  return v16;
}

- (id)_collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path
{
  v20 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  sessionCopy = session;
  pathCopy = path;
  v11 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412802;
    v15 = viewCopy;
    v16 = 2112;
    v17 = sessionCopy;
    v18 = 2112;
    v19 = pathCopy;
    _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_DEBUG, "_collectionView: %@ itemsForBeginningDragSession: %@ atIndexPath: %@", &v14, 0x20u);
  }

  v12 = [(PUPhotosGridViewController *)self _dragItemsForIndexPath:pathCopy];

  return v12;
}

- (id)_collectionView:(id)view liftingPreviewParametersForItemAtIndexPath:(id)path
{
  v15 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  v8 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412546;
    v12 = viewCopy;
    v13 = 2112;
    v14 = pathCopy;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEBUG, "_collectionView: %@ liftingPreviewParametersForItemAtIndexPath: %@", &v11, 0x16u);
  }

  v9 = [(PUPhotosGridViewController *)self _previewParametersForItemAtIndexPath:pathCopy];

  return v9;
}

- (id)collectionView:(id)view dragPreviewParametersForItemAtIndexPath:(id)path
{
  v15 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  v8 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412546;
    v12 = viewCopy;
    v13 = 2112;
    v14 = pathCopy;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEBUG, "_collectionView: %@ liftingPreviewParametersForItemAtIndexPath: %@", &v11, 0x16u);
  }

  v9 = [(PUPhotosGridViewController *)self _previewParametersForItemAtIndexPath:pathCopy];

  return v9;
}

- (id)_previewParametersForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = objc_alloc_init(MEMORY[0x1E69DC9A0]);
  if ([(PUPhotosGridViewController *)self cellFillMode]== 2)
  {
    collectionView = [(PUPhotosGridViewController *)self collectionView];
    v7 = [collectionView cellForItemAtIndexPath:pathCopy];

    v8 = [(PUPhotosGridViewController *)self assetAtIndexPath:pathCopy];
    [v8 aspectRatio];
    v10 = v9;
    [v7 bounds];
    v15 = [MEMORY[0x1E69DC728] bezierPathWithRect:{PURectWithAspectRatioFittingRect(v10, v11, v12, v13, v14)}];
    [v5 setVisiblePath:v15];
  }

  return v5;
}

- (id)_dragItemsForIndexPath:(id)path
{
  v17[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (![(PUPhotosGridViewController *)self canDragOut]|| [(PUPhotosGridViewController *)self isAddPlaceholderAtIndexPath:pathCopy])
  {
    v5 = MEMORY[0x1E695E0F0];
    goto LABEL_10;
  }

  photosDataSource = [(PUPhotosGridViewController *)self photosDataSource];
  v7 = [photosDataSource assetReferenceAtIndexPath:pathCopy];

  v8 = MEMORY[0x1E69C3A10];
  v17[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  LOBYTE(v8) = [v8 confidentialWarningRequiredForAssetReferences:v9];

  if (v8)
  {
    [(PUPhotosGridViewController *)self _presentConfidentialityWarning];
    v10 = MEMORY[0x1E695E0F0];
  }

  else
  {
    asset = [v7 asset];
    v12 = PXDragAndDropItemProviderForDisplayAsset();

    if (!v12)
    {
      v5 = MEMORY[0x1E695E0F0];
      goto LABEL_9;
    }

    v13 = [objc_alloc(MEMORY[0x1E69DC990]) initWithItemProvider:v12];
    v14 = [objc_alloc(MEMORY[0x1E69C44D8]) initWithAssetReference:v7];
    [v13 setLocalObject:v14];

    v16 = v13;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
  }

  v5 = v10;
LABEL_9:

LABEL_10:

  return v5;
}

- (void)_presentConfidentialityWarning
{
  v3 = [MEMORY[0x1E69C3A10] confidentialityAlertWithConfirmAction:0];
  [(PUPhotosGridViewController *)self presentViewController:v3 animated:1 completion:0];
}

- (BOOL)_confidentialityWarningRequiredForAsset:(id)asset
{
  assetCopy = asset;
  if ([MEMORY[0x1E69C3A10] confidentialityCheckRequired])
  {
    v4 = [MEMORY[0x1E69C3A10] confidentialWarningRequiredForAsset:assetCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)canDragOut
{
  v3 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEBUG, "canDragOut", v8, 2u);
  }

  mEMORY[0x1E69C3498] = [MEMORY[0x1E69C3498] sharedInstance];
  if ([mEMORY[0x1E69C3498] dragOutEnabled])
  {
    sessionInfo = [(PUPhotosGridViewController *)self sessionInfo];
    v6 = [sessionInfo isSelectingAssets] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)photosGridBarsHelper:(id)helper didChange:(unint64_t)change
{
  if (change)
  {
    [(PUPhotosGridViewController *)self updateNavigationBarAnimated:0];
  }
}

- (id)photosGridBarsHelper:(id)helper titleForPhotoSelectionManager:(id)manager
{
  managerCopy = manager;
  v5 = [objc_opt_class() _localizedSelectionTitleWithPhotoSelectionManager:managerCopy];

  return v5;
}

- (void)photosGlobalFooterViewDidChangeHeight:(id)height
{
  if ([(PUPhotosGridViewController *)self px_isVisible])
  {

    [(PUPhotosGridViewController *)self updateGlobalFooter];
  }
}

- (void)photosGlobalFooterView:(id)view presentViewController:(id)controller
{
  controllerCopy = controller;
  v6 = controllerCopy;
  if (controllerCopy)
  {
    [(PUPhotosGridViewController *)self presentViewController:controllerCopy animated:1 completion:0];
  }

  else
  {
    [(PUPhotosGridViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)oneUpPresentationHelper:(id)helper didDismissOneUpViewController:(id)controller
{
  v5 = [(PUPhotosGridViewController *)self collectionView:helper];
  [v5 _setAutomaticContentOffsetAdjustmentEnabled:1];

  photosDataSource = [(PUPhotosGridViewController *)self photosDataSource];
  [photosDataSource stopForceIncludingAllAssets];
}

- (id)pu_debugRows
{
  array = [MEMORY[0x1E695DF70] array];
  collectionView = [(PUPhotosGridViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];

  if (objc_opt_respondsToSelector())
  {
    pu_debugRows = [collectionViewLayout pu_debugRows];
    [array addObjectsFromArray:pu_debugRows];
  }

  collectionView2 = [(PUPhotosGridViewController *)self collectionView];
  objc_initWeak(&location, collectionView2);

  v8 = MEMORY[0x1E69C65E8];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __42__PUPhotosGridViewController_pu_debugRows__block_invoke;
  v14 = &unk_1E7B80638;
  objc_copyWeak(&v15, &location);
  v9 = [v8 px_rowWithTitle:@"Begin Scroll Test" postDismissalAction:&v11];
  [array addObject:{v9, v11, v12, v13, v14}];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return array;
}

void __42__PUPhotosGridViewController_pu_debugRows__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performScrollTest:@"ScrollPhotosGrid" iterations:1000 delta:20];
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  settingsCopy = settings;
  keyCopy = key;
  v7 = +[PURootSettings sharedInstance];

  if (v7 == settingsCopy)
  {
    v8 = [keyCopy isEqualToString:@"allowIrisUI"];
  }

  else
  {
    v8 = 1;
  }

  v9 = +[PUPhotosGridSettings sharedInstance];

  if (v9 != settingsCopy)
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  [(PUPhotosGridViewController *)self gridSettings:settingsCopy changedValueForKey:keyCopy];
  if (v8)
  {
LABEL_6:
    [(PUPhotosGridViewController *)self updateLayoutMetrics];
    [(PUPhotosGridViewController *)self updateInterfaceForModelReloadAnimated:1];
  }

LABEL_7:
}

- (void)sessionInfoPhotoSelectionDidChange:(id)change
{
  [(PUPhotosGridViewController *)self updateNavigationBarAnimated:0];
  [(PUPhotosGridViewController *)self _updateNavigationBannerAnimated:0];

  [(PUPhotosGridViewController *)self _updateCollectionViewMultipleSelection];
}

- (void)deselectAllItemsAnimated:(BOOL)animated
{
  v23 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  selectedIndexPaths = [(PUPhotosGridViewController *)self selectedIndexPaths];
  v6 = [selectedIndexPaths countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(selectedIndexPaths);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        section = [v10 section];
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:section];
        indexSet = [dictionary objectForKeyedSubscript:v12];

        if (!indexSet)
        {
          indexSet = [MEMORY[0x1E696AD50] indexSet];
          v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:section];
          [dictionary setObject:indexSet forKeyedSubscript:v14];
        }

        [indexSet addIndex:{objc_msgSend(v10, "item")}];
      }

      v7 = [selectedIndexPaths countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __55__PUPhotosGridViewController_deselectAllItemsAnimated___block_invoke;
  v16[3] = &unk_1E7B7CDE8;
  v16[4] = self;
  animatedCopy = animated;
  [dictionary enumerateKeysAndObjectsUsingBlock:v16];
}

void __55__PUPhotosGridViewController_deselectAllItemsAnimated___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setSelected:0 itemsAtIndexes:v6 inSection:objc_msgSend(a2 animated:{"unsignedIntegerValue"), *(a1 + 40)}];
}

- (void)setSelected:(BOOL)selected itemsAtIndexes:(id)indexes inSection:(int64_t)section animated:(BOOL)animated
{
  selectedCopy = selected;
  indexesCopy = indexes;
  v10 = [(PUPhotosGridViewController *)self photoCollectionAtIndex:section];
  photoSelectionManager = [(PUPhotosGridViewController *)self photoSelectionManager];
  v12 = photoSelectionManager;
  if (selectedCopy)
  {
    [photoSelectionManager selectAssetsAtIndexes:indexesCopy inAssetCollection:v10];
  }

  else
  {
    [photoSelectionManager deselectAssetsAtIndexes:indexesCopy inAssetCollection:v10];
  }

  collectionView = [(PUPhotosGridViewController *)self collectionView];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76__PUPhotosGridViewController_setSelected_itemsAtIndexes_inSection_animated___block_invoke;
  v15[3] = &unk_1E7B7CDC0;
  sectionCopy = section;
  v14 = collectionView;
  v16 = v14;
  v18 = selectedCopy;
  [indexesCopy enumerateIndexesUsingBlock:v15];
  if (![(PUPhotosGridViewController *)self isPerformingCoalescedSelectionUpdates])
  {
    [(PUPhotosGridViewController *)self updatePeripheralInterfaceAnimated:0];
  }
}

void __76__PUPhotosGridViewController_setSelected_itemsAtIndexes_inSection_animated___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AC88] indexPathForItem:a2 inSection:*(a1 + 40)];
  v3 = [*(a1 + 32) cellForItemAtIndexPath:v4];
  [v3 setSelectionBadgeVisible:*(a1 + 48)];
}

- (void)endCoalescedSelectionUpdates
{
  if (![(PUPhotosGridViewController *)self isPerformingCoalescedSelectionUpdates])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:5360 description:@"Got mismatched request to end coalesced selection updates"];
  }

  --self->_coalescedSelectionEntranceCount;
  if (![(PUPhotosGridViewController *)self isPerformingCoalescedSelectionUpdates])
  {

    [(PUPhotosGridViewController *)self updatePeripheralInterfaceAnimated:0];
  }
}

- (BOOL)prepareForDismissingForced:(BOOL)forced
{
  forcedCopy = forced;
  _removeActionSheet = [(PUPhotosGridViewController *)self _removeActionSheet];
  v6 = _removeActionSheet;
  if (_removeActionSheet)
  {
    presentingViewController = [_removeActionSheet presentingViewController];
    [presentingViewController dismissViewControllerAnimated:0 completion:0];
  }

  _actionConfirmationAlert = [(PUPhotosGridViewController *)self _actionConfirmationAlert];
  v9 = _actionConfirmationAlert;
  if (_actionConfirmationAlert)
  {
    presentingViewController2 = [_actionConfirmationAlert presentingViewController];
    [presentingViewController2 dismissViewControllerAnimated:0 completion:0];
  }

  activitySharingController = [(PUPhotosGridViewController *)self activitySharingController];
  activityViewControllerIfAvailable = [activitySharingController activityViewControllerIfAvailable];

  if (activityViewControllerIfAvailable)
  {
    presentingViewController3 = [activityViewControllerIfAvailable presentingViewController];

    if (presentingViewController3)
    {
      [(PUPhotosGridViewController *)self setActivitySharingController:0];
      [(PUPhotosGridViewController *)self dismissViewControllerAnimated:0 completion:0];
    }
  }

  _slideshowViewController = [(PUPhotosGridViewController *)self _slideshowViewController];
  v15 = _slideshowViewController;
  if (_slideshowViewController)
  {
    presentingViewController4 = [_slideshowViewController presentingViewController];

    if (presentingViewController4)
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __57__PUPhotosGridViewController_prepareForDismissingForced___block_invoke;
      v21[3] = &unk_1E7B80DD0;
      v21[4] = self;
      [(PUPhotosGridViewController *)self dismissViewControllerAnimated:0 completion:v21];
    }
  }

  oneUpPresentationHelper = [(PUPhotosGridViewController *)self oneUpPresentationHelper];
  if (oneUpPresentationHelper)
  {
    oneUpPresentationHelper2 = [(PUPhotosGridViewController *)self oneUpPresentationHelper];
    v19 = [oneUpPresentationHelper2 dismissOneUpViewControllerForced:forcedCopy animated:0];
  }

  else
  {
    v19 = 1;
  }

  [(PUPhotosGridViewController *)self setEditing:0 animated:0];

  return v19;
}

- (void)popoverPresentationControllerDidDismissPopover:(id)popover
{
  popoverCopy = popover;
  presentedViewController = [popoverCopy presentedViewController];
  _shareAssetsPopoverController = [(PUPhotosGridViewController *)self _shareAssetsPopoverController];

  if (_shareAssetsPopoverController == popoverCopy)
  {
    [(PUPhotosGridViewController *)self _setShareAssetsPopoverController:0];
  }

  _actionConfirmationAlert = [(PUPhotosGridViewController *)self _actionConfirmationAlert];

  v7 = presentedViewController;
  if (presentedViewController == _actionConfirmationAlert)
  {
    [(PUPhotosGridViewController *)self _setActionConfirmationAlert:0];
    v7 = presentedViewController;
  }
}

- (void)prepareForPopoverPresentation:(id)presentation
{
  presentationCopy = presentation;
  presentedViewController = [presentationCopy presentedViewController];
  _actionConfirmationAlert = [(PUPhotosGridViewController *)self _actionConfirmationAlert];
  v6 = _actionConfirmationAlert;
  if (presentedViewController == _actionConfirmationAlert && self->_shareToolbarButton)
  {
    isEditing = [(PUPhotosGridViewController *)self isEditing];

    if (isEditing)
    {
      [presentationCopy setBarButtonItem:self->_shareToolbarButton];
    }
  }

  else
  {
  }

  _removeActionSheet = [(PUPhotosGridViewController *)self _removeActionSheet];
  if (presentedViewController == _removeActionSheet)
  {
    _deleteActionController = [(PUPhotosGridViewController *)self _deleteActionController];

    if (!_deleteActionController)
    {
      goto LABEL_7;
    }

    _deleteActionController2 = [(PUPhotosGridViewController *)self _deleteActionController];
    action = [_deleteActionController2 action];

    _removeActionSheet = [(PUPhotosGridViewController *)self _referenceBarButtonItemForDeleteAction:action];
    [presentationCopy setBarButtonItem:_removeActionSheet];
  }

LABEL_7:
}

- (BOOL)_navigateToInitialEdgeIfNeededAnimated:(BOOL)animated
{
  animatedCopy = animated;
  initialEdge = [(PUPhotosGridViewController *)self initialEdge];
  if ([(PUPhotosGridViewController *)self isViewLoaded])
  {
    collectionView = [(PUPhotosGridViewController *)self collectionView];
    v7 = [collectionView px_isScrolledAtEdge:initialEdge];

    if (v7)
    {
      return 1;
    }
  }

  [(PUPhotosGridViewController *)self navigateToRectEdge:initialEdge animated:animatedCopy];
  return 0;
}

- (void)navigateToRectEdge:(unsigned int)edge animated:(BOOL)animated
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__PUPhotosGridViewController_navigateToRectEdge_animated___block_invoke;
  aBlock[3] = &unk_1E7B7CD98;
  objc_copyWeak(&v11, &location);
  edgeCopy = edge;
  animatedCopy = animated;
  v7 = _Block_copy(aBlock);
  if ([(PUPhotosGridViewController *)self isViewLoaded])
  {
    v7[2](v7);
  }

  else
  {
    v8 = _Block_copy(v7);
    pendingNavigationBlock = self->_pendingNavigationBlock;
    self->_pendingNavigationBlock = v8;
  }

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __58__PUPhotosGridViewController_navigateToRectEdge_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained collectionView];

  [v3 px_scrollToEdge:*(a1 + 40) animated:*(a1 + 44)];
}

- (void)navigateToRevealPhoto:(id)photo inAssetContainer:(id)container animated:(BOOL)animated
{
  photoCopy = photo;
  containerCopy = container;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__PUPhotosGridViewController_navigateToRevealPhoto_inAssetContainer_animated___block_invoke;
  aBlock[3] = &unk_1E7B7CD70;
  objc_copyWeak(&v18, &location);
  v10 = containerCopy;
  v16 = v10;
  v11 = photoCopy;
  v17 = v11;
  animatedCopy = animated;
  v12 = _Block_copy(aBlock);
  if ([(PUPhotosGridViewController *)self isViewLoaded]&& self->_didScrollToInitialPosition)
  {
    if (![(PUPhotosGridViewController *)self isContentViewInSyncWithModel])
    {
      [(PUPhotosGridViewController *)self updateInterfaceForModelReloadAnimated:0];
    }

    v12[2](v12);
  }

  else
  {
    v13 = _Block_copy(v12);
    pendingNavigationBlock = self->_pendingNavigationBlock;
    self->_pendingNavigationBlock = v13;
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __78__PUPhotosGridViewController_navigateToRevealPhoto_inAssetContainer_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained gridSpec];
  v3 = [v2 forceLoadInitialSectionCount];

  v4 = [WeakRetained photosDataSource];
  v5 = [v4 sectionForAssetCollection:*(a1 + 32)];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v4 forceAccurateSection:v5 andSectionsBeforeAndAfter:v3];
  }

  v6 = [v4 indexPathForAsset:*(a1 + 40) inCollection:*(a1 + 32)];
  if (v6)
  {
    [WeakRetained _setDidForceDataSource:1];
    v7 = [WeakRetained collectionView];
    [v4 setBackgroundFetchOriginSection:{objc_msgSend(v6, "section")}];
    [v4 startBackgroundFetchIfNeeded];
    [v7 scrollToItemAtIndexPath:v6 atScrollPosition:2 animated:*(a1 + 56)];
  }
}

- (id)_indexPathForAsset:(id)asset inAssetCollection:(id)collection refetchIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  assetCopy = asset;
  collectionCopy = collection;
  photosDataSource = [(PUPhotosGridViewController *)self photosDataSource];
  v11 = [photosDataSource indexPathForAsset:assetCopy inCollection:collectionCopy];
  if (!v11 && neededCopy)
  {
    [photosDataSource refetchResultsForAssetCollection:collectionCopy];
    v11 = [photosDataSource indexPathForAsset:assetCopy inCollection:collectionCopy];
  }

  return v11;
}

- (void)navigateToPhoto:(id)photo inAssetContainer:(id)container refetchIfNeeded:(BOOL)needed animated:(BOOL)animated
{
  animatedCopy = animated;
  v8 = [(PUPhotosGridViewController *)self _indexPathForAsset:photo inAssetCollection:container refetchIfNeeded:needed];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    v8 = [(PUPhotosGridViewController *)self _navigateToPhotoAtIndexPath:v8 animated:animatedCopy interactive:0];
    v9 = v10;
  }

  MEMORY[0x1EEE66BB8](v8, v9);
}

- (id)displayTitleInfoForDetailsOfAssetCollection:(id)collection withTitleCategory:(int64_t)category preferredAttributesPromise:(id)promise
{
  v29 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  promiseCopy = promise;
  v10 = PLMemoriesGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *&buf[4] = collectionCopy;
    _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_DEBUG, "Creating display title info from asset collection %@", buf, 0xCu);
  }

  v11 = PLMemoriesGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    localizedTitle = [collectionCopy localizedTitle];
    localizedSubtitle = [collectionCopy localizedSubtitle];
    *buf = 138412546;
    *&buf[4] = localizedTitle;
    *&buf[12] = 2112;
    *&buf[14] = localizedSubtitle;
    _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_DEBUG, "Asset collection title:'%@' subtitle:'%@'", buf, 0x16u);
  }

  v14 = PLMemoriesGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = [(PUPhotosGridViewController *)self localizedTitleForAssetCollection:collectionCopy];
    *buf = 138412290;
    *&buf[4] = v15;
    _os_log_impl(&dword_1B36F3000, v14, OS_LOG_TYPE_DEBUG, "UI title:'%@'", buf, 0xCu);
  }

  v16 = PLMemoriesGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = [MEMORY[0x1E6978650] descriptionOfTitleCategory:category];
    *buf = 67109378;
    *&buf[4] = category;
    *&buf[8] = 2112;
    *&buf[10] = v17;
    _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_DEBUG, "Title category:%i “%@”", buf, 0x12u);
  }

  v18 = +[PUPhotosGridSettings sharedInstance];
  allowDynamicDetailsTitles = [v18 allowDynamicDetailsTitles];

  if ((allowDynamicDetailsTitles & 1) == 0)
  {

    promiseCopy = 0;
  }

  *buf = category;
  v20 = [(PUPhotosGridViewController *)self localizedTitleForAssetCollection:collectionCopy titleCategory:buf];
  defaultHelper = [MEMORY[0x1E69C4570] defaultHelper];
  v22 = [defaultHelper titleForDisplayableText:v20 titleCategory:*buf options:1];

  v23 = +[PUPhotosGridSettings sharedInstance];
  [v23 simulatedDetailsAttributesLoadingDelay];
  v25 = v24;

  v26 = [MEMORY[0x1E69C3488] displayTitleInfoForDetailsOfAssetCollection:collectionCopy withTitleCategory:category defaultTitle:v22 defaultTitleCategory:*buf titleKey:*MEMORY[0x1E6978EE8] titleCategoryKey:*MEMORY[0x1E6978EE0] defaultSubtitle:v25 subtitleKey:0 simulatedLoadingDelay:*MEMORY[0x1E6978ED8] preferredAttributesPromise:promiseCopy];

  return v26;
}

- (void)navigateToPhotosDetailsForAssetCollection:(id)collection animated:(BOOL)animated
{
  animatedCopy = animated;
  v30[1] = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  v22 = [(PUPhotosGridViewController *)self assetsInAssetCollection:collectionCopy];
  v6 = MEMORY[0x1E6978760];
  v30[0] = collectionCopy;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  v8 = [v6 transientCollectionListWithCollections:v7 title:0];

  v9 = [MEMORY[0x1E6978650] fetchCollectionsInCollectionList:v8 options:0];
  v10 = [objc_alloc(MEMORY[0x1E69C3878]) initWithCollectionListFetchResult:v9 options:0];
  v28 = collectionCopy;
  v29 = v22;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  [v10 setExistingAssetCollectionFetchResults:v11];

  [v10 setHideHiddenAssets:1];
  v12 = [objc_alloc(MEMORY[0x1E69C3870]) initWithPhotosDataSourceConfiguration:v10];
  titleCategory = [collectionCopy titleCategory];
  if (titleCategory)
  {
    v14 = titleCategory;
  }

  else
  {
    v14 = 6;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__PUPhotosGridViewController_navigateToPhotosDetailsForAssetCollection_animated___block_invoke;
  aBlock[3] = &unk_1E7B7CD20;
  v15 = collectionCopy;
  v27 = v15;
  v16 = _Block_copy(aBlock);
  v17 = [(PUPhotosGridViewController *)self displayTitleInfoForDetailsOfAssetCollection:v15 withTitleCategory:v14 preferredAttributesPromise:v16];
  v18 = [objc_alloc(MEMORY[0x1E69C3888]) initWithPhotosDataSource:v12 displayTitleInfo:v17 parentContext:0 keyAssetsFetchResult:0];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __81__PUPhotosGridViewController_navigateToPhotosDetailsForAssetCollection_animated___block_invoke_2;
  v24[3] = &unk_1E7B7CD48;
  v25 = v15;
  v19 = v15;
  [v18 performChanges:v24];
  v20 = [objc_alloc(MEMORY[0x1E69C38B8]) initWithContext:v18 options:0];
  navigationController = [(PUPhotosGridViewController *)self navigationController];
  [navigationController pushViewController:v20 animated:animatedCopy];
}

void __81__PUPhotosGridViewController_navigateToPhotosDetailsForAssetCollection_animated___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  if ([v2 assetCollectionType] == 1)
  {
    v3 = 7;
  }

  else
  {
    v3 = 0;
  }

  [v4 setViewSourceOrigin:v3];
}

- (void)_navigateToPhotoAtIndexPath:(id)path animated:(BOOL)animated interactive:(BOOL)interactive
{
  interactiveCopy = interactive;
  animatedCopy = animated;
  pathCopy = path;
  [(PUPhotosGridViewController *)self _ensureOneUpPresentationHelper];
  oneUpPresentationHelper = [(PUPhotosGridViewController *)self oneUpPresentationHelper];
  [oneUpPresentationHelper presentOneUpViewControllerFromAssetAtIndexPath:pathCopy animated:animatedCopy interactiveMode:interactiveCopy activity:0 isNavigationSourceWidget:0 editActivityCompletion:0];
}

- (void)_updatePhotoDecorationForCell:(id)cell animated:(BOOL)animated
{
  photoContentView = [cell photoContentView];
  contentHelper = [photoContentView contentHelper];
  [contentHelper setPhotoDecoration:0];
}

- (BOOL)zoomTransition:(id)transition transitionImageForPhotoToken:(id)token callback:(id)callback
{
  tokenCopy = token;
  callbackCopy = callback;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:5073 description:{@"Photo Token is invalid! (%@)", tokenCopy}];
  }

  v10 = tokenCopy;
  v11 = [v10 objectForKeyedSubscript:@"PUGridPhotoTokenPhoto"];
  if ([v11 isRAW])
  {
    v12 = [(PUPhotosGridViewController *)self assetIndexPathForPhotoToken:v10];
    collectionView = [(PUPhotosGridViewController *)self collectionView];
    v14 = [collectionView cellForItemAtIndexPath:v12];

    photoContentView = [v14 photoContentView];
    contentHelper = [photoContentView contentHelper];
    photoImage = [contentHelper photoImage];

    v18 = photoImage != 0;
    if (photoImage)
    {
      callbackCopy[2](callbackCopy, photoImage);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)zoomTransition:(id)transition didFinishForOperation:(int64_t)operation animated:(BOOL)animated interactive:(BOOL)interactive
{
  if (animated && interactive)
  {
    v6 = [(PUPhotosGridViewController *)self collectionView:transition];
    [v6 setScrollEnabled:1];
  }
}

- (void)zoomTransition:(id)transition willBeginForOperation:(int64_t)operation animated:(BOOL)animated interactive:(BOOL)interactive
{
  if (animated && interactive)
  {
    v6 = [(PUPhotosGridViewController *)self collectionView:transition];
    [v6 setScrollEnabled:0];
  }
}

- (void)zoomTransition:(id)transition shouldHidePhotoTokens:(id)tokens
{
  v31 = *MEMORY[0x1E69E9840];
  transitionCopy = transition;
  tokensCopy = tokens;
  mainGridLayout = [(PUPhotosGridViewController *)self mainGridLayout];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = tokensCopy;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v20 = a2;
    v12 = 0;
    v13 = *v23;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:v20 object:self file:@"PUPhotosGridViewController.m" lineNumber:5036 description:{@"Photo Token is invalid! (%@)", v15}];
        }

        v16 = [(PUPhotosGridViewController *)self assetIndexPathForPhotoToken:v15];
        if (!v16)
        {
          v18 = PLUIGetLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v27 = 0;
            v28 = 2112;
            v29 = mainGridLayout;
            _os_log_impl(&dword_1B36F3000, v18, OS_LOG_TYPE_DEFAULT, "Cannot hide item at index path: %@ Layout: %@", buf, 0x16u);
          }

          goto LABEL_17;
        }

        v17 = v16;
        if (!v12)
        {
          v12 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v9, "count")}];
        }

        [v12 addObject:v17];
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_17:
    v12 = 0;
  }

  if ([mainGridLayout conformsToProtocol:&unk_1F2C216F0])
  {
    [mainGridLayout setHiddenItemIndexPaths:v12];
  }
}

- (BOOL)zoomTransition:(id)transition getFrame:(CGRect *)frame inCoordinateSpace:(id *)space contentMode:(int64_t *)mode cropInsets:(UIEdgeInsets *)insets forPhotoToken:(id)token operation:(int64_t)operation
{
  tokenCopy = token;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:4952 description:{@"Photo Token is invalid! (%@)", tokenCopy}];
  }

  v15 = [(PUPhotosGridViewController *)self assetIndexPathForPhotoToken:tokenCopy];
  if (!v15)
  {
    goto LABEL_26;
  }

  collectionView = [(PUPhotosGridViewController *)self collectionView];
  [collectionView layoutIfNeeded];
  v17 = [collectionView cellForItemAtIndexPath:v15];
  if (operation == 2)
  {
    collectionViewLayout = [collectionView collectionViewLayout];
    objc_opt_class();
    Height = 0.0;
    if (objc_opt_isKindOfClass())
    {
      v20 = collectionViewLayout;
      if ([v20 sectionHeadersEnabled])
      {
        [v20 frameForSectionHeaderAtVisualSection:{objc_msgSend(v15, "section")}];
        Height = CGRectGetHeight(v60);
      }
    }

    if (v17)
    {
      [v17 frame];
      [collectionView scrollRectToVisible:0 animated:{v21 + 0.0, v22 - Height}];
    }

    else
    {
      spaceCopy = space;
      v23 = [collectionView layoutAttributesForItemAtIndexPath:v15];
      collectionViewLayout2 = [collectionView collectionViewLayout];
      v25 = [collectionViewLayout2 layoutAttributesForItemAtIndexPath:v15];

      [v23 frame];
      v27 = v26;
      [v25 frame];
      if (v27 == v28)
      {
        [collectionView scrollToItemAtIndexPath:v15 atScrollPosition:2 animated:0];
      }

      else
      {
        [v25 frame];
        [collectionView scrollRectToVisible:0 animated:{v29 + 0.0, v30 - Height}];
      }

      [collectionView layoutIfNeeded];
      v17 = [collectionView cellForItemAtIndexPath:v15];

      space = spaceCopy;
    }
  }

  if (v17)
  {
    [v17 bounds];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    view = [(PUPhotosGridViewController *)self view];
    [v17 convertRect:view toView:{v32, v34, v36, v38}];
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;

    v48 = [(PUPhotosGridViewController *)self cellFillMode]!= 1;
    v49 = [(PUPhotosGridViewController *)self assetAtIndexPath:v15];
    v50 = -[PUPhotosGridViewController photoCollectionAtIndex:](self, "photoCollectionAtIndex:", [v15 section]);
    if ([v49 representsBurst] && objc_msgSend(v50, "canShowAvalancheStacks"))
    {
      [MEMORY[0x1E69BE2B0] frameOfTopImageInStackForStackFrame:{v41, v43, v45, v47}];
      v41 = v51;
      v43 = v52;
      v45 = v53;
      v47 = v54;
    }

    if (frame)
    {
      frame->origin.x = v41;
      frame->origin.y = v43;
      frame->size.width = v45;
      frame->size.height = v47;
      if (space)
      {
        v55 = v17;
        *space = v17;
      }
    }

    if (mode)
    {
      *mode = v48;
    }

    v56 = 1;
  }

  else
  {
LABEL_26:
    v56 = 0;
  }

  return v56;
}

- (id)zoomTransition:(id)transition photoTokenForPhoto:(id)photo inCollection:(id)collection
{
  v14[3] = *MEMORY[0x1E69E9840];
  photoCopy = photo;
  collectionCopy = collection;
  photosDataSource = [(PUPhotosGridViewController *)self photosDataSource];
  v10 = [photosDataSource indexPathForAsset:photoCopy inCollection:collectionCopy];

  v11 = 0;
  if (photoCopy && collectionCopy && v10)
  {
    v13[0] = @"PUGridPhotoTokenIndexPath";
    v13[1] = @"PUGridPhotoTokenPhoto";
    v14[0] = v10;
    v14[1] = photoCopy;
    v13[2] = @"PUGridPhotoTokenCollection";
    v14[2] = collectionCopy;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  }

  return v11;
}

- (id)assetIndexPathForPhotoToken:(id)token
{
  tokenCopy = token;
  v5 = [tokenCopy objectForKey:@"PUGridPhotoTokenIndexPath"];
  v6 = [tokenCopy objectForKey:@"PUGridPhotoTokenPhoto"];
  v7 = [tokenCopy objectForKey:@"PUGridPhotoTokenCollection"];

  v8 = [(PUPhotosGridViewController *)self indexPathForAsset:v6 hintCollection:v7 hintIndexPath:v5];

  return v8;
}

- (id)_indexesWithoutPlaceholdersFromIndexes:(id)indexes inSection:(int64_t)section
{
  indexesCopy = indexes;
  lastIndex = [indexesCopy lastIndex];
  v8 = 0;
  if (section != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = lastIndex;
    if (lastIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [MEMORY[0x1E696AC88] indexPathForItem:lastIndex inSection:section];
      v11 = [(PUPhotosGridViewController *)self isAddPlaceholderAtIndexPath:v10];

      if (v11)
      {
        if ([indexesCopy count] < 2)
        {
          v8 = 0;
        }

        else
        {
          v8 = [indexesCopy mutableCopy];
          [v8 removeIndex:v9];
        }
      }

      else
      {
        v8 = indexesCopy;
      }
    }
  }

  return v8;
}

- (void)swipeSelectionManager:(id)manager updatePhotoSelectionWithIndexes:(id)indexes inSection:(int64_t)section selectionMode:(int64_t)mode
{
  v9 = [(PUPhotosGridViewController *)self _indexesWithoutPlaceholdersFromIndexes:indexes inSection:section];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    v9 = [(PUPhotosGridViewController *)self setSelected:mode == 0 itemsAtIndexes:v9 inSection:section animated:0];
    v10 = v11;
  }

  MEMORY[0x1EEE66BB8](v9, v10);
}

- (int64_t)swipeSelectionManager:(id)manager numberOfItemsInSection:(int64_t)section
{
  photosDataSource = [(PUPhotosGridViewController *)self photosDataSource];
  numberOfSections = [photosDataSource numberOfSections];

  if (numberOfSections <= section)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    photosDataSource2 = [(PUPhotosGridViewController *)self photosDataSource];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:4876 description:{@"Section is out of bounds %li/%li", section, objc_msgSend(photosDataSource2, "numberOfSections")}];
  }

  photosDataSource3 = [(PUPhotosGridViewController *)self photosDataSource];
  v10 = [photosDataSource3 numberOfItemsInSection:section];

  return v10 + [(PUPhotosGridViewController *)self wantsAddPlaceholderAtEndOfSection:section];
}

- (void)_hideMenuIfNeeded
{
  [(PUPhotosGridViewController *)self _setMenuIndexPath:0];
  if (self->_showingMenu)
  {
    mEMORY[0x1E69DCC68] = [MEMORY[0x1E69DCC68] sharedMenuController];
    collectionView = [(PUPhotosGridViewController *)self collectionView];
    [mEMORY[0x1E69DCC68] hideMenuFromView:collectionView];

    self->_showingMenu = 0;
  }
}

- (void)handleLongPressGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([gestureCopy state] != 1)
  {
    goto LABEL_18;
  }

  collectionView = [(PUPhotosGridViewController *)self collectionView];
  [gestureCopy locationInView:collectionView];
  v7 = v6;
  v9 = v8;

  v21 = 0;
  v10 = [(PUPhotosGridViewController *)self itemIndexPathAtPoint:&v21 outClosestMatch:v7, v9];
  v11 = v21;
  self->_isMenuIndexPathExact = [v10 isEqual:v11];
  if (v10 || !v11)
  {
    if (v10)
    {
      goto LABEL_8;
    }

    v12 = [MEMORY[0x1E696AC88] indexPathForItem:0x7FFFFFFFFFFFFFFFLL inSection:0];
  }

  else
  {
    v12 = v11;
  }

  v10 = v12;
LABEL_8:
  [(PUPhotosGridViewController *)self _setMenuIndexPath:v10];
  if ([(PUPhotosGridViewController *)self _hasAtLeastOneContainer]&& !self->_isMenuIndexPathExact && ([(PUPhotosGridViewController *)self isEditing]& 1) == 0 && ![(PUPhotosGridViewController *)self isAddPlaceholderAtIndexPath:v10]&& [(PUPhotosGridViewController *)self shouldShowMenu])
  {
    [(PUPhotosGridViewController *)self becomeFirstResponder];
    v13 = *MEMORY[0x1E695F060];
    v14 = *(MEMORY[0x1E695F060] + 8);
    if (v10 && self->_isMenuIndexPathExact)
    {
      collectionView2 = [(PUPhotosGridViewController *)self collectionView];
      v16 = [collectionView2 cellForItemAtIndexPath:v10];

      [v16 center];
      v7 = v17;
      v9 = v18;
    }

    self->_showingMenu = 1;
    mEMORY[0x1E69DCC68] = [MEMORY[0x1E69DCC68] sharedMenuController];
    collectionView3 = [(PUPhotosGridViewController *)self collectionView];
    [mEMORY[0x1E69DCC68] showMenuFromView:collectionView3 rect:{v7, v9, v13, v14}];
  }

LABEL_18:
}

- (void)handlePhotoOrStackPinchGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  oneUpPresentationHelper = [(PUPhotosGridViewController *)self oneUpPresentationHelper];
  v5 = [oneUpPresentationHelper handlePresentingPinchGestureRecognizer:recognizerCopy];

  v7 = recognizerCopy;
  if ((v5 & 1) == 0)
  {
    state = [recognizerCopy state];
    v7 = recognizerCopy;
    if (state == 2)
    {
      [recognizerCopy velocity];
      if (v8 <= 0.0)
      {
        state = [(PUPhotosGridViewController *)self canBeginStackCollapseTransition];
        v7 = recognizerCopy;
        if (!state)
        {
          goto LABEL_10;
        }

        state = [recognizerCopy velocity];
      }

      else
      {
        collectionView = [(PUPhotosGridViewController *)self collectionView];
        [recognizerCopy locationInView:collectionView];
        v10 = [collectionView indexPathForItemAtPoint:?];
        if (v10)
        {
          [(PUPhotosGridViewController *)self _beginInteractiveNavigationForItemAtIndexPath:v10];
        }
      }

      v7 = recognizerCopy;
    }
  }

LABEL_10:

  MEMORY[0x1EEE66BB8](state, v7);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  photoOrStackPinchGestureRecognizer = [(PUPhotosGridViewController *)self photoOrStackPinchGestureRecognizer];

  if (photoOrStackPinchGestureRecognizer == recognizerCopy)
  {
    _multiSelectInteraction = [(PUPhotosGridViewController *)self _multiSelectInteraction];
    gesturesForFailureRequirements = [_multiSelectInteraction gesturesForFailureRequirements];
    v9 = [gesturesForFailureRequirements containsObject:gestureRecognizerCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  isEditing = [(PUPhotosGridViewController *)self isEditing];
  sessionInfo = [(PUPhotosGridViewController *)self sessionInfo];
  isSelectingAssets = [sessionInfo isSelectingAssets];

  longPressGestureRecognizer = [(PUPhotosGridViewController *)self longPressGestureRecognizer];

  if (longPressGestureRecognizer == beginCopy)
  {
    collectionView = [(PUPhotosGridViewController *)self collectionView];
    [beginCopy locationInView:collectionView];
    v12 = [collectionView indexPathForItemAtPoint:?];
    if (v12)
    {
      shouldShowMenu = 0;
    }

    else
    {
      shouldShowMenu = [(PUPhotosGridViewController *)self shouldShowMenu];
    }
  }

  else
  {
    photoOrStackPinchGestureRecognizer = [(PUPhotosGridViewController *)self photoOrStackPinchGestureRecognizer];

    if (photoOrStackPinchGestureRecognizer == beginCopy)
    {
      shouldShowMenu = (isEditing | isSelectingAssets) ^ 1;
    }

    else
    {
      shouldShowMenu = 1;
    }
  }

  return shouldShowMenu & 1;
}

- (double)sectionedGridLayout:(id)layout aspectRatioForItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    v6 = [(PUPhotosGridViewController *)self isAddPlaceholderAtIndexPath:pathCopy];
    photosDataSource = [(PUPhotosGridViewController *)self photosDataSource];
    v8 = 1.0;
    if (!v6)
    {
      item = [pathCopy item];
      if (item < [photosDataSource numberOfItemsInSection:{objc_msgSend(pathCopy, "section")}])
      {
        v10 = [photosDataSource assetAtIndexPath:pathCopy];
        [v10 aspectRatio];
        v8 = v11;
      }
    }
  }

  else
  {
    v12 = PLUIGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_DEFAULT, "IndexPath missing for aspectRatioForItemAtIndexPath", v14, 2u);
    }

    v8 = -1.0;
  }

  return v8;
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PUPhotosGridViewController *)self _cancelImageRequestForCell:cellCopy];
  }
}

- (void)sectionedGridLayout:(id)layout didPrepareTransitionIsAppearing:(BOOL)appearing
{
  if (appearing)
  {
    [(PUPhotosGridViewController *)self preheatAssetsWithPrefetchingDisabled:1];
  }

  else
  {
    [(PUPhotosGridViewController *)self resetPreheating];
  }
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([(PUPhotosGridViewController *)self isAddPlaceholderAtIndexPath:pathCopy])
  {
    if (([(PUPhotosGridViewController *)self isEditing]& 1) == 0)
    {
      -[PUPhotosGridViewController didSelectAddPlaceholderInSection:](self, "didSelectAddPlaceholderInSection:", [pathCopy section]);
    }
  }

  else
  {
    sessionInfo = [(PUPhotosGridViewController *)self sessionInfo];
    if ([sessionInfo isSelectingAssets])
    {
      isEditing = 1;
    }

    else
    {
      isEditing = [(PUPhotosGridViewController *)self isEditing];
    }

    hasActiveDrag = [viewCopy hasActiveDrag];
    v11 = [viewCopy cellForItemAtIndexPath:pathCopy];
    dragState = [v11 dragState];
    if (hasActiveDrag || !isEditing)
    {
      if (!dragState)
      {
        v13 = -[PUPhotosGridViewController photoCollectionAtIndex:](self, "photoCollectionAtIndex:", [pathCopy section]);
        v14 = [(PUPhotosGridViewController *)self assetAtIndexPath:pathCopy];
        [(PUPhotosGridViewController *)self handleNavigateToAsset:v14 inContainer:v13];
      }
    }

    else
    {
      [(PUPhotosGridViewController *)self handleToggleSelectionOfItemAtIndexPath:pathCopy];
    }
  }

  return 0;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  pathCopy = path;
  kindCopy = kind;
  v10 = [view dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:kindCopy forIndexPath:pathCopy];
  [(PUPhotosGridViewController *)self configureSupplementaryView:v10 ofKind:kindCopy forIndexPath:pathCopy];

  return v10;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  if ([(PUPhotosGridViewController *)self isAddPlaceholderAtIndexPath:pathCopy])
  {
    v8 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"PUAddPlaceholderCell" forIndexPath:pathCopy];

    [(PUPhotosGridViewController *)self _configureAddPlaceholderCell:v8 animated:0];
  }

  else
  {
    v8 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"PUPhotoCell" forIndexPath:pathCopy];

    [(PUPhotosGridViewController *)self configureGridCell:v8 forItemAtIndexPath:pathCopy];
  }

  return v8;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  photosDataSource = [(PUPhotosGridViewController *)self photosDataSource];
  v7 = [photosDataSource numberOfItemsInSection:section];

  return v7 + [(PUPhotosGridViewController *)self wantsAddPlaceholderAtEndOfSection:section];
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  collectionListFetchResult = [(PUPhotosGridViewController *)self collectionListFetchResult];
  v4 = [collectionListFetchResult count];

  return v4;
}

- (void)menuActionController:(id)controller didDismissWithActionIdentifier:(id)identifier
{
  v18[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  photosDataSource = [(PUPhotosGridViewController *)self photosDataSource];
  [photosDataSource stopForceIncludingAllAssets];

  LODWORD(photosDataSource) = [identifierCopy isEqualToString:@"com.apple.mobileslideshow.PUMenuActionController.share"];
  if (photosDataSource)
  {
    _previewingIndexPath = [(PUPhotosGridViewController *)self _previewingIndexPath];
    if (_previewingIndexPath)
    {
      v8 = [(PUPhotosGridViewController *)self assetAtIndexPath:_previewingIndexPath];
      if (v8)
      {
        photosDataSource2 = [(PUPhotosGridViewController *)self photosDataSource];
        v10 = [photosDataSource2 assetCollectionForSection:{objc_msgSend(_previewingIndexPath, "section")}];

        v11 = MEMORY[0x1E6978630];
        localIdentifier = [v8 localIdentifier];
        v18[0] = localIdentifier;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
        photoLibrary = [v8 photoLibrary];
        px_standardLibrarySpecificFetchOptions = [photoLibrary px_standardLibrarySpecificFetchOptions];
        v16 = [v11 fetchAssetsWithLocalIdentifiers:v13 options:px_standardLibrarySpecificFetchOptions];

        [(PUPhotosGridViewController *)self sender:0 shareAssetsInFetchResult:v16 forAssetCollection:v10 withCompletion:0];
      }

      else
      {
        v10 = PLUIGetLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *v17 = 0;
          _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_ERROR, "Missing asset for share operation", v17, 2u);
        }
      }
    }

    else
    {
      v8 = PLUIGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_ERROR, "Missing indexPath for share operation", v17, 2u);
      }
    }
  }

  [(PUPhotosGridViewController *)self _setPreviewingIndexPath:0];
}

- (id)previewViewControllerForItemAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(PUPhotosGridViewController *)self isAddPlaceholderAtIndexPath:pathCopy])
  {
    v5 = 0;
  }

  else
  {
    [(PUPhotosGridViewController *)self _ensureOneUpPresentationHelper];
    oneUpPresentationHelper = [(PUPhotosGridViewController *)self oneUpPresentationHelper];
    if ([oneUpPresentationHelper canPresentOneUpViewControllerAnimated:1])
    {
      v5 = [oneUpPresentationHelper previewViewControllerForItemAtIndexPath:pathCopy allowingActions:1];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = v5;
        [v5 createMenuActionControllerForManagerIfNeeded:0 withPresentingViewController:self regionOfInterestProvider:0];
        menuActionController = [v5 menuActionController];

        [menuActionController setDelegate:self];
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  [(PUPhotosGridViewController *)self _ensureOneUpPresentationHelper];
  oneUpPresentationHelper = [(PUPhotosGridViewController *)self oneUpPresentationHelper];
  previewViewController = [animatorCopy previewViewController];

  [oneUpPresentationHelper didDismissPreviewViewController:previewViewController committing:{-[PUPhotosGridViewController _previewCommitting](self, "_previewCommitting")}];

  [(PUPhotosGridViewController *)self _setPreviewCommitting:0];
}

- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  if (![(PUPhotosGridViewController *)self isInMultiSelectMode])
  {
    previewViewController = [animatorCopy previewViewController];
    [(PUPhotosGridViewController *)self _setPreviewCommitting:1];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __111__PUPhotosGridViewController_contextMenuInteraction_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke;
    v9[3] = &unk_1E7B80C38;
    v9[4] = self;
    v10 = previewViewController;
    v8 = previewViewController;
    [animatorCopy addCompletion:v9];
  }
}

void __111__PUPhotosGridViewController_contextMenuInteraction_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureOneUpPresentationHelper];
  v2 = [*(a1 + 32) oneUpPresentationHelper];
  [v2 commitPreviewViewController:*(a1 + 40)];
}

- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration
{
  interactionCopy = interaction;
  collectionView = [(PUPhotosGridViewController *)self collectionView];
  [interactionCopy locationInView:collectionView];
  v8 = v7;
  v10 = v9;

  v11 = [collectionView indexPathForItemAtPoint:{v8, v10}];
  v12 = [collectionView cellForItemAtIndexPath:v11];
  [(PUPhotosGridViewController *)self _setPreviewingIndexPath:v11];
  v13 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v12];

  return v13;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  collectionView = [(PUPhotosGridViewController *)self collectionView];
  v8 = [collectionView indexPathForItemAtPoint:{x, y}];

  if (v8 && [(PUPhotosGridViewController *)self allowedActions])
  {
    gridSpec = [(PUPhotosGridViewController *)self gridSpec];
    if ([gridSpec canCommitPreview])
    {
      v10 = [(PUPhotosGridViewController *)self isAddPlaceholderAtIndexPath:v8];

      if (!v10)
      {
        v11 = [(PUPhotosGridViewController *)self previewViewControllerForItemAtIndexPath:v8];
        v12 = ![(PUPhotosGridViewController *)self isInMultiSelectMode];
        v13 = MEMORY[0x1E69DC8D8];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __84__PUPhotosGridViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
        v20[3] = &unk_1E7B7CCD0;
        v21 = v11;
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __84__PUPhotosGridViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2;
        v17[3] = &unk_1E7B7CCF8;
        v19 = v12;
        v18 = v21;
        v14 = v21;
        v15 = [v13 configurationWithIdentifier:0 previewProvider:v20 actionProvider:v17];

        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v15 = 0;
LABEL_8:

  return v15;
}

id __84__PUPhotosGridViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v1 = [*(a1 + 32) px_previewActionMenus];
    v2 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F2AC6818 children:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_ensureOneUpPresentationHelper
{
  _photoBrowserOneUpPresentationAdaptor = [(PUPhotosGridViewController *)self _photoBrowserOneUpPresentationAdaptor];
  if (!_photoBrowserOneUpPresentationAdaptor)
  {
    _photoBrowserOneUpPresentationAdaptor = objc_alloc_init(PUPhotoBrowserOneUpPresentationAdaptor);
    [(PUPhotoBrowserOneUpPresentationAdaptor *)_photoBrowserOneUpPresentationAdaptor setZoomTransitionDelegate:self];
    [(PUPhotosGridViewController *)self _setPhotoBrowserOneUpPresentationAdaptor:_photoBrowserOneUpPresentationAdaptor];
  }

  oneUpPresentationHelper = [(PUPhotosGridViewController *)self oneUpPresentationHelper];
  if (!oneUpPresentationHelper)
  {
    v4 = [PUOneUpPresentationHelper alloc];
    photosDataSource = [(PUPhotosGridViewController *)self photosDataSource];
    oneUpPresentationHelper = [(PUOneUpPresentationHelper *)v4 initWithPhotosDataSource:photosDataSource];

    [(PUOneUpPresentationHelper *)oneUpPresentationHelper setDelegate:self];
    [(PUOneUpPresentationHelper *)oneUpPresentationHelper setAssetDisplayDelegate:_photoBrowserOneUpPresentationAdaptor];
    [(PUPhotosGridViewController *)self _setOneUpPresentationHelper:oneUpPresentationHelper];
  }
}

- (void)_updateBackButtonTitle
{
  navigationController = [(PUPhotosGridViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];

  v4 = [viewControllers indexOfObject:self];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL || (v5 = v4 + 1, v4 + 1 >= [viewControllers count]))
  {
    v8 = 1;
  }

  else
  {
    v6 = [viewControllers objectAtIndex:v5];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v8 = isKindOfClass ^ 1;
  }

  _pushedPhotoBrowserController = [(PUPhotosGridViewController *)self _pushedPhotoBrowserController];
  if (_pushedPhotoBrowserController && ![(PUPhotosGridViewControllerSpec *)self->_gridSpec wantsBackButtonTitleForPhotoBrowser])
  {
  }

  else
  {

    if (v8)
    {
      navigationItem = [(PUPhotosGridViewController *)self navigationItem];
      backBarButtonItem = [navigationItem backBarButtonItem];

      if (!backBarButtonItem)
      {
        goto LABEL_14;
      }

      navigationItem2 = [(PUPhotosGridViewController *)self navigationItem];
      [navigationItem2 setBackBarButtonItem:0];
      goto LABEL_13;
    }
  }

  navigationItem3 = [(PUPhotosGridViewController *)self navigationItem];
  backBarButtonItem2 = [navigationItem3 backBarButtonItem];

  if (backBarButtonItem2)
  {
    goto LABEL_14;
  }

  navigationItem2 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:&stru_1F2AC6818 style:0 target:0 action:0];
  navigationItem4 = [(PUPhotosGridViewController *)self navigationItem];
  [navigationItem4 setBackBarButtonItem:navigationItem2];

LABEL_13:
LABEL_14:
}

- (void)_configureAddPlaceholderCell:(id)cell animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  if (_configureAddPlaceholderCell_animated__onceToken != -1)
  {
    dispatch_once(&_configureAddPlaceholderCell_animated__onceToken, &__block_literal_global_672);
  }

  v7 = 0.0;
  if ([(PUPhotosGridViewController *)self isEditing])
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 1.0;
  }

  photoContentView = [cellCopy photoContentView];
  contentHelper = [photoContentView contentHelper];

  [contentHelper setPhotoImage:_configureAddPlaceholderCell_animated__image];
  [contentHelper setFillMode:0];
  [contentHelper setPhotoDecoration:_configureAddPlaceholderCell_animated__decoration];
  v11 = MEMORY[0x1E69DD250];
  v13[1] = 3221225472;
  v13[0] = MEMORY[0x1E69E9820];
  v13[2] = __68__PUPhotosGridViewController__configureAddPlaceholderCell_animated___block_invoke_2;
  v13[3] = &unk_1E7B7FF70;
  if (animatedCopy)
  {
    v7 = 0.25;
  }

  v14 = cellCopy;
  v15 = v8;
  v12 = cellCopy;
  [v11 pu_animateWithDuration:v13 animations:v7];
}

void __68__PUPhotosGridViewController__configureAddPlaceholderCell_animated___block_invoke()
{
  v8 = [MEMORY[0x1E69DCAB8] pu_PhotosUIImageNamed:@"PhotoCollectionAddItemPlaceholder"];
  v0 = [MEMORY[0x1E69DC888] _systemInteractionTintColor];
  v1 = [v8 pu_tintedImageWithColor:v0];
  v2 = _configureAddPlaceholderCell_animated__image;
  _configureAddPlaceholderCell_animated__image = v1;

  v3 = objc_alloc_init(PUPhotoDecoration);
  v4 = _configureAddPlaceholderCell_animated__decoration;
  _configureAddPlaceholderCell_animated__decoration = v3;

  v5 = _configureAddPlaceholderCell_animated__decoration;
  if (PUMainScreenScale_onceToken != -1)
  {
    dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
  }

  [v5 setBorderWidth:round(*&PUMainScreenScale_screenScale * 0.5) / *&PUMainScreenScale_screenScale];
  v6 = _configureAddPlaceholderCell_animated__decoration;
  v7 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [v6 setBorderColor:v7];
}

- (void)configureSupplementaryView:(id)view ofKind:(id)kind forIndexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  if ([kindCopy isEqualToString:@"PUGridGlobalHeader"])
  {
    [(PUPhotosGridViewController *)self configureGlobalHeaderView:viewCopy];
  }

  else if ([kindCopy isEqualToString:@"PUGridGlobalFooter"])
  {
    v8 = viewCopy;
    [v8 setDelegate:self];
    [v8 setLayoutDelegate:self];
    [(PUPhotosGridViewController *)self configureGlobalFooterView:v8];
  }
}

- (void)_cancelImageRequestForCell:(id)cell
{
  cellCopy = cell;
  currentImageRequestID = [cellCopy currentImageRequestID];
  if (currentImageRequestID)
  {
    v5 = currentImageRequestID;
    _cachingImageManager = [(PUPhotosGridViewController *)self _cachingImageManager];
    [_cachingImageManager cancelImageRequest:v5];

    [cellCopy setCurrentImageRequestID:0];
  }
}

- (void)configureDecorationsForCell:(id)cell withAsset:(id)asset assetCollection:(id)collection thumbnailIsPlaceholder:(BOOL)placeholder assetMayHaveChanged:(BOOL)changed
{
  changedCopy = changed;
  placeholderCopy = placeholder;
  cellCopy = cell;
  assetCopy = asset;
  collectionCopy = collection;
  photoContentView = [cellCopy photoContentView];
  contentHelper = [photoContentView contentHelper];

  v17 = !placeholderCopy || changedCopy;
  if (assetCopy)
  {
    if (!placeholderCopy || ([assetCopy px_isSharedAlbumAsset] & 1) != 0 || (objc_msgSend(assetCopy, "hasAllThumbs") & 1) != 0)
    {
      isTrashBinViewController = [(PUPhotosGridViewController *)self isTrashBinViewController];
      v31 = *(MEMORY[0x1E69C4840] + 8);
      v32 = *(MEMORY[0x1E69C4840] + 24);
      if (isTrashBinViewController)
      {
        v19 = 0;
        v20 = *MEMORY[0x1E69C4840];
        v21 = 1;
      }

      else
      {
        _badgeManager = [(PUPhotosGridViewController *)self _badgeManager];
        v23 = _badgeManager;
        if (_badgeManager)
        {
          [_badgeManager badgeInfoForAsset:assetCopy inCollection:collectionCopy options:0];
          v24 = *&v30[0];
        }

        else
        {
          v24 = 0;
          memset(v30, 0, sizeof(v30));
        }

        v31 = *(v30 + 8);
        v32 = *(&v30[1] + 1);

        v25 = +[PUPhotosGridSettings sharedInstance];
        badgeAllItemsAsFavorites = [v25 badgeAllItemsAsFavorites];

        v21 = 0;
        v19 = 0;
        v20 = v24 | badgeAllItemsAsFavorites;
      }
    }

    else
    {
      v21 = 0;
      v20 = *MEMORY[0x1E69C4840];
      v31 = *(MEMORY[0x1E69C4840] + 8);
      v32 = *(MEMORY[0x1E69C4840] + 24);
      v19 = 1;
    }

    *&v30[0] = v20;
    *(v30 + 8) = v31;
    *(&v30[1] + 1) = v32;
    [contentHelper setBadgeInfo:v30];
    [contentHelper setTextBannerVisible:v21];
    if (v21)
    {
      LOBYTE(v30[0]) = 0;
      v27 = [(PUPhotosGridViewController *)self _localizedBannerTextForAsset:assetCopy isDestructive:v30];
      textBannerView = [contentHelper textBannerView];
      [textBannerView setText:v27];
      gridSpec = [(PUPhotosGridViewController *)self gridSpec];
      [textBannerView setTextAlignment:{objc_msgSend(gridSpec, "cellBannerTextAlignment")}];

      [textBannerView setDestructiveText:LOBYTE(v30[0])];
    }
  }

  else
  {
    v19 = 0;
  }

  if (v17)
  {
    [cellCopy setCloudIconVisible:v19];
  }
}

- (id)imageRequestOptionsForAsset:(id)asset pixelSize:(CGSize *)size
{
  v5 = objc_alloc_init(MEMORY[0x1E6978868]);
  [v5 setAllowPlaceholder:1];
  [v5 setNetworkAccessAllowed:1];
  [v5 setDeliveryMode:{-[PUPhotosGridViewController imageDeliveryMode](self, "imageDeliveryMode")}];

  return v5;
}

- (void)configureGridCell:(id)cell forItemAtIndexPath:(id)path assetMayHaveChanged:(BOOL)changed
{
  cellCopy = cell;
  pathCopy = path;
  photosDataSource = [(PUPhotosGridViewController *)self photosDataSource];
  v11 = [photosDataSource assetCollectionForSection:{objc_msgSend(pathCopy, "section")}];

  v12 = [(PUPhotosGridViewController *)self assetAtIndexPathIfSafe:pathCopy];
  photoContentView = [cellCopy photoContentView];
  contentHelper = [photoContentView contentHelper];

  cellFillMode = [(PUPhotosGridViewController *)self cellFillMode];
  [(PUPhotosGridViewController *)self imageRequestItemPixelSize];
  v55 = v16;
  v56 = v17;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__666;
  v53 = __Block_byref_object_dispose__667;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__PUPhotosGridViewController_configureGridCell_forItemAtIndexPath_assetMayHaveChanged___block_invoke;
  aBlock[3] = &unk_1E7B7CC80;
  changedCopy = changed;
  v18 = contentHelper;
  v47 = cellFillMode;
  v41 = v18;
  selfCopy = self;
  v19 = v11;
  v43 = v19;
  v20 = v12;
  v44 = v20;
  v21 = cellCopy;
  v45 = v21;
  v22 = pathCopy;
  v46 = v22;
  v54 = _Block_copy(aBlock);
  [(PUPhotosGridViewController *)self _cancelImageRequestForCell:v21];
  v39 = 0;
  v23 = [(PUPhotosGridViewController *)self imageForAsset:v20 outIsPlaceholder:&v39];
  if (v23)
  {
    (*(v50[5] + 16))();
    v24 = 0;
  }

  else
  {
    v26 = [(PUPhotosGridViewController *)self imageRequestOptionsForAsset:v20 pixelSize:&v55];
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x2020000000;
    v38 = 0;
    objc_initWeak(&location, v21);
    objc_initWeak(&from, self);
    _cachingImageManager = [(PUPhotosGridViewController *)self _cachingImageManager];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __87__PUPhotosGridViewController_configureGridCell_forItemAtIndexPath_assetMayHaveChanged___block_invoke_2;
    v27[3] = &unk_1E7B7CCA8;
    objc_copyWeak(&v32, &location);
    objc_copyWeak(&v33, &from);
    v30 = &v49;
    v31 = v37;
    v28 = v20;
    v29 = v19;
    changedCopy2 = changed;
    v24 = [_cachingImageManager requestImageForAsset:v28 targetSize:cellFillMode < 2 contentMode:v26 options:v27 resultHandler:{v55, v56}];

    objc_destroyWeak(&v33);
    objc_destroyWeak(&v32);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
    _Block_object_dispose(v37, 8);
  }

  [v21 setCurrentImageRequestID:v24];

  _Block_object_dispose(&v49, 8);
}

void __87__PUPhotosGridViewController_configureGridCell_forItemAtIndexPath_assetMayHaveChanged___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = a2;
  if (a3 && (*(a1 + 88) & 1) == 0)
  {
    v5 = [*(a1 + 32) photoImage];

    v17 = v5;
  }

  [*(a1 + 32) setAvoidsImageViewIfPossible:1];
  [*(a1 + 32) setFillMode:*(a1 + 80)];
  [*(a1 + 32) photoSize];
  v7 = v6;
  [v17 size];
  v9 = v8;
  v10 = *(a1 + 32);
  [v17 size];
  [v10 setPhotoSize:?];
  v11 = [*(a1 + 40) gridSpec];
  if ([v11 displaysAvalancheStacks] && objc_msgSend(*(a1 + 48), "canShowAvalancheStacks"))
  {
    if ([*(a1 + 56) representsBurst])
    {
      v12 = 1;
    }

    else
    {
      v16 = +[PUPhotosGridSettings sharedInstance];
      v12 = [v16 displayAllItemsAsBursts];
    }
  }

  else
  {
    v12 = 0;
  }

  [*(a1 + 32) setNeedsAvalancheStack:v12];
  v13 = *(a1 + 32);
  v14 = +[PUInterfaceManager currentTheme];
  v15 = [v14 photoCollectionViewBackgroundColor];
  [v13 setAvalancheStackBackgroundColor:{objc_msgSend(v15, "CGColor")}];

  [*(a1 + 32) setPhotoImage:v17];
  [*(a1 + 32) setFlattensBadgeView:{objc_msgSend(*(a1 + 40), "canBeginStackCollapseTransition") ^ 1}];
  [*(a1 + 40) configureDecorationsForCell:*(a1 + 64) withAsset:*(a1 + 56) assetCollection:*(a1 + 48) thumbnailIsPlaceholder:a3 assetMayHaveChanged:*(a1 + 88)];
  [*(a1 + 40) _updateSelectionForCell:*(a1 + 64) atIndexPath:*(a1 + 72)];
  [*(a1 + 40) _updatePhotoDecorationForCell:*(a1 + 64) animated:0];
  [*(a1 + 40) _updateProgressForCell:*(a1 + 64) atIndexPath:*(a1 + 72)];
  if ([*(a1 + 40) canDragOut] && (objc_msgSend(*(a1 + 40), "isAddPlaceholderAtIndexPath:", *(a1 + 72)) & 1) == 0)
  {
    [*(a1 + 64) setDraggable:1];
  }

  if (v7 != v9)
  {
    [*(a1 + 64) setNeedsLayout];
  }
}

void __87__PUPhotosGridViewController_configureGridCell_forItemAtIndexPath_assetMayHaveChanged___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v8 = objc_loadWeakRetained((a1 + 72));
  if (v5)
  {
    v9 = [v6 objectForKeyedSubscript:*MEMORY[0x1E6978E68]];
    v10 = [v9 BOOLValue];
  }

  else
  {
    v10 = 0;
  }

  v11 = *(*(*(a1 + 48) + 8) + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v5, v10);
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = 0;
LABEL_6:

    goto LABEL_7;
  }

  if (v5)
  {
    if (WeakRetained)
    {
      v25 = [v6 objectForKeyedSubscript:*MEMORY[0x1E6978E70]];
      v26 = [v25 intValue];
      v27 = [WeakRetained currentImageRequestID];

      if (v26 == v27)
      {
        if (*(*(*(a1 + 56) + 8) + 24) != v10)
        {
          [v8 configureDecorationsForCell:WeakRetained withAsset:*(a1 + 32) assetCollection:*(a1 + 40) thumbnailIsPlaceholder:v10 assetMayHaveChanged:*(a1 + 80)];
        }

        v28 = [WeakRetained photoContentView];
        v13 = [v28 contentHelper];

        [v13 updatePhotoImageWithoutReconfiguring:v5];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  if (PFOSVariantHasInternalUI())
  {
    v14 = +[PUPhotosGridSettings sharedInstance];
    v15 = [v14 flashDegradedImages];

    if (v15)
    {
      v16 = [v6 objectForKeyedSubscript:*MEMORY[0x1E6978E50]];
      v17 = [v16 BOOLValue];

      if (v17)
      {
        v18 = objc_alloc(MEMORY[0x1E69DD250]);
        v19 = [WeakRetained photoContentView];
        [v19 bounds];
        v20 = [v18 initWithFrame:?];

        v21 = [MEMORY[0x1E69DC888] darkGrayColor];
        [v20 setBackgroundColor:v21];

        [v20 setUserInteractionEnabled:0];
        v22 = [WeakRetained photoContentView];
        [v22 addSubview:v20];

        v23 = MEMORY[0x1E69DD250];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __87__PUPhotosGridViewController_configureGridCell_forItemAtIndexPath_assetMayHaveChanged___block_invoke_3;
        v31[3] = &unk_1E7B80DD0;
        v32 = v20;
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __87__PUPhotosGridViewController_configureGridCell_forItemAtIndexPath_assetMayHaveChanged___block_invoke_4;
        v29[3] = &unk_1E7B7F020;
        v30 = v32;
        v24 = v32;
        [v23 animateWithDuration:v31 animations:v29 completion:1.0];
      }
    }
  }

  *(*(*(a1 + 56) + 8) + 24) = v10;
}

- (void)updateVisibleSupplementaryViewsOfKind:(id)kind
{
  v18 = *MEMORY[0x1E69E9840];
  kindCopy = kind;
  collectionView = [(PUPhotosGridViewController *)self collectionView];
  v6 = [collectionView _indexPathsForVisibleSupplementaryViewsOfKind:kindCopy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        v12 = [collectionView _visibleSupplementaryViewOfKind:kindCopy atIndexPath:v11];
        if (v12)
        {
          [(PUPhotosGridViewController *)self configureSupplementaryView:v12 ofKind:kindCopy forIndexPath:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)updateInterfaceForIncrementalDataSourceChanges:(id)changes
{
  changesCopy = changes;
  if (([changesCopy hasIncrementalChanges] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:4053 description:@"Must have incremental changes to perform an incremental update"];
  }

  [(PUPhotosGridViewController *)self _invalidateAllAssetIndexes];
  deletedSections = [changesCopy deletedSections];
  insertedSections = [changesCopy insertedSections];
  changedSections = [changesCopy changedSections];
  deletedIndexPaths = [changesCopy deletedIndexPaths];
  insertedIndexPaths = [changesCopy insertedIndexPaths];
  changedIndexPaths = [changesCopy changedIndexPaths];
  contentChangedIndexPaths = [changesCopy contentChangedIndexPaths];
  favoriteChangedIndexPaths = [changesCopy favoriteChangedIndexPaths];

  if ([changedSections count])
  {
    v12 = 1;
  }

  else
  {
    v12 = [changedIndexPaths count] != 0;
  }

  if ([deletedSections count])
  {
    v13 = 1;
  }

  else
  {
    v13 = [deletedIndexPaths count] != 0;
  }

  if ([insertedSections count])
  {
    v26 = changedIndexPaths;
    collectionView = [(PUPhotosGridViewController *)self collectionView];
LABEL_11:
    photoLibrary = [(PUPhotosGridViewController *)self photoLibrary];
    v16 = [photoLibrary px_beginPausingChangesWithTimeout:@"PUPhotosGridViewController-CollectionViewBatchUpdate" identifier:1.0];

    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __77__PUPhotosGridViewController_updateInterfaceForIncrementalDataSourceChanges___block_invoke;
    v35[3] = &unk_1E7B7EA98;
    v36 = deletedSections;
    collectionView = collectionView;
    v37 = collectionView;
    v38 = insertedSections;
    v39 = deletedIndexPaths;
    v40 = insertedIndexPaths;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __77__PUPhotosGridViewController_updateInterfaceForIncrementalDataSourceChanges___block_invoke_2;
    v33[3] = &unk_1E7B80088;
    v33[4] = self;
    v34 = v16;
    v17 = v16;
    [collectionView performBatchUpdates:v35 completion:v33];
    if (v13)
    {
      ppt_nextDeleteFinishedBlock = [(PUPhotosGridViewController *)self ppt_nextDeleteFinishedBlock];
      if (ppt_nextDeleteFinishedBlock)
      {
        [(PUPhotosGridViewController *)self ppt_setNextDeleteFinishedBlock:0];
        ppt_nextDeleteFinishedBlock[2](ppt_nextDeleteFinishedBlock);
      }
    }

    photosDataSource = [(PUPhotosGridViewController *)self photosDataSource];
    [photosDataSource pauseChangeDeliveryFor:@"PUPhotosGridViewController-Padding" identifier:1.0];

    goto LABEL_16;
  }

  v24 = [insertedIndexPaths count] != 0 || v13;
  if (((v24 | v12) & 1) == 0)
  {
    goto LABEL_19;
  }

  v26 = changedIndexPaths;
  collectionView = [(PUPhotosGridViewController *)self collectionView];
  if (v24)
  {
    goto LABEL_11;
  }

LABEL_16:
  v20 = [MEMORY[0x1E695DFA8] set];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__PUPhotosGridViewController_updateInterfaceForIncrementalDataSourceChanges___block_invoke_3;
  aBlock[3] = &unk_1E7B7CC58;
  v30 = collectionView;
  v31 = v20;
  selfCopy = self;
  v21 = v20;
  v22 = collectionView;
  v23 = _Block_copy(aBlock);
  v23[2](v23, contentChangedIndexPaths);
  v23[2](v23, favoriteChangedIndexPaths);
  if (changedSections)
  {
    [(PUPhotosGridViewController *)self updateVisibleSectionHeadersAtIndexes:changedSections];
  }

  [(PUPhotosGridViewController *)self updatePeripheralInterfaceAnimated:1];

  changedIndexPaths = v26;
LABEL_19:
  [(PUPhotosGridViewController *)self _hideMenuIfNeeded];
  [(PUPhotosGridViewController *)self setContentViewInSyncWithModel:1];
}

uint64_t __77__PUPhotosGridViewController_updateInterfaceForIncrementalDataSourceChanges___block_invoke(uint64_t result)
{
  v1 = result;
  if (*(result + 32))
  {
    result = [*(result + 40) deleteSections:?];
  }

  if (*(v1 + 48))
  {
    result = [*(v1 + 40) insertSections:?];
  }

  if (*(v1 + 56))
  {
    result = [*(v1 + 40) deleteItemsAtIndexPaths:?];
  }

  if (*(v1 + 64))
  {
    v2 = *(v1 + 40);

    return [v2 insertItemsAtIndexPaths:?];
  }

  return result;
}

void __77__PUPhotosGridViewController_updateInterfaceForIncrementalDataSourceChanges___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) beginBatchPreheating];
    [*(a1 + 32) resetPreheating];
    [*(a1 + 32) preheatAssets];
    [*(a1 + 32) endBatchPreheating];
  }

  v3 = [*(a1 + 32) photoLibrary];
  [v3 px_endPausingChanges:*(a1 + 40)];
}

void __77__PUPhotosGridViewController_updateInterfaceForIncrementalDataSourceChanges___block_invoke_3(id *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [a1[4] cellForItemAtIndexPath:v8];
        if (v9 && ([a1[5] containsObject:v8] & 1) == 0)
        {
          [a1[6] configureGridCell:v9 forItemAtIndexPath:v8 assetMayHaveChanged:0];
          [a1[5] addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)updateInterfaceForModelReloadAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(PUPhotosGridViewController *)self isViewLoaded])
  {
    [(PUPhotosGridViewController *)self beginBatchPreheating];
    [(PUPhotosGridViewController *)self _invalidateAllAssetIndexes];
    mainGridLayout = [(PUPhotosGridViewController *)self mainGridLayout];
    [mainGridLayout invalidateLayout];

    collectionView = [(PUPhotosGridViewController *)self collectionView];
    [collectionView reloadData];

    [(PUPhotosGridViewController *)self resetPreheating];
    [(PUPhotosGridViewController *)self preheatAssets];
    [(PUPhotosGridViewController *)self endBatchPreheating];
    [(PUPhotosGridViewController *)self setContentViewInSyncWithModel:1];
    [(PUPhotosGridViewController *)self updatePeripheralInterfaceAnimated:animatedCopy];

    [(PUPhotosGridViewController *)self _hideMenuIfNeeded];
  }
}

- (void)updateEmptyPlaceholderView
{
  if ([(PUPhotosGridViewController *)self isViewLoaded])
  {
    if ([(PUPhotosGridViewController *)self wantsPlaceholderView])
    {
      emptyConfiguration = [MEMORY[0x1E69DC8C8] emptyConfiguration];
      v18 = 0;
      v19 = 0;
      v16 = 0;
      v17 = 0;
      [(PUPhotosGridViewController *)self getEmptyPlaceholderViewTitle:&v19 message:&v18 buttonTitle:&v17 buttonAction:&v16];
      v4 = v19;
      v5 = v18;
      v6 = v17;
      v7 = v16;
      [emptyConfiguration setText:v4];
      [emptyConfiguration setSecondaryText:v5];
      buttonProperties = [emptyConfiguration buttonProperties];
      configuration = [buttonProperties configuration];
      [configuration setTitle:v6];

      v10 = MEMORY[0x1E69DC628];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __56__PUPhotosGridViewController_updateEmptyPlaceholderView__block_invoke;
      v14[3] = &unk_1E7B7CC30;
      v15 = v7;
      v11 = v7;
      v12 = [v10 actionWithHandler:v14];
      buttonProperties2 = [emptyConfiguration buttonProperties];
      [buttonProperties2 setPrimaryAction:v12];

      [(PUPhotosGridViewController *)self _setContentUnavailableConfiguration:emptyConfiguration];
    }

    else
    {
      [(PUPhotosGridViewController *)self _setContentUnavailableConfiguration:0];
    }

    [(PUPhotosGridViewController *)self emptyPlaceholderViewDidChange];
  }
}

- (BOOL)wantsPlaceholderView
{
  isEmpty = [(PUPhotosGridViewController *)self isEmpty];
  if (isEmpty)
  {
    LOBYTE(isEmpty) = ![(PUPhotosGridViewController *)self wantsGlobalFooter];
  }

  return isEmpty;
}

- (void)getEmptyPlaceholderViewTitle:(id *)title message:(id *)message buttonTitle:(id *)buttonTitle buttonAction:(id *)action
{
  collectionListFetchResult = [(PUPhotosGridViewController *)self collectionListFetchResult];
  v17 = PXPhotoKitLocalizedTitleForEmptyCollectionListFetchResult();

  if ([(PUPhotosGridViewController *)self isTrashBinViewController])
  {
    string = 0;
  }

  else
  {
    collectionListFetchResult2 = [(PUPhotosGridViewController *)self collectionListFetchResult];
    v14 = PXPhotoKitLocalizedMessageForEmptyCollectionListFetchResult();
    string = [v14 string];
  }

  v15 = v17;
  *title = v17;
  v16 = string;
  *message = string;
  *buttonTitle = 0;
  *action = 0;
}

- (id)_deselectAllBarButtonItem
{
  deselectAllBarButtonItem = self->_deselectAllBarButtonItem;
  if (!deselectAllBarButtonItem)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:&stru_1F2AC6818 style:8 target:self action:sel__handleSelectionButton_];
    v5 = self->_deselectAllBarButtonItem;
    self->_deselectAllBarButtonItem = v4;

    v6 = PULocalizedString(@"DESELECT_ALL_BUTTON_TITLE");
    [(UIBarButtonItem *)self->_deselectAllBarButtonItem setTitle:v6];

    deselectAllBarButtonItem = self->_deselectAllBarButtonItem;
  }

  return deselectAllBarButtonItem;
}

- (id)_selectAllBarButtonItem
{
  selectAllBarButtonItem = self->_selectAllBarButtonItem;
  if (!selectAllBarButtonItem)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:&stru_1F2AC6818 style:8 target:self action:sel__handleSelectionButton_];
    v5 = self->_selectAllBarButtonItem;
    self->_selectAllBarButtonItem = v4;

    v6 = PULocalizedString(@"SELECT_ALL_BUTTON_TITLE");
    [(UIBarButtonItem *)self->_selectAllBarButtonItem setTitle:v6];

    selectAllBarButtonItem = self->_selectAllBarButtonItem;
  }

  return selectAllBarButtonItem;
}

- (id)_selectionButton
{
  selectionButton = self->_selectionButton;
  if (!selectionButton)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DCCD0]) initWithTitle:&stru_1F2AC6818 style:0];
    v5 = self->_selectionButton;
    self->_selectionButton = v4;

    [(UINavigationButton *)self->_selectionButton addTarget:self action:sel__handleSelectionButton_ forControlEvents:64];
    [(UINavigationButton *)self->_selectionButton sizeToFit];
    selectionButton = self->_selectionButton;
  }

  return selectionButton;
}

- (id)_cancelButtonItem
{
  cancelButtonItem = self->_cancelButtonItem;
  if (!cancelButtonItem)
  {
    v4 = objc_alloc(MEMORY[0x1E69DC708]);
    v5 = PLLocalizedFrameworkString();
    v6 = [v4 initWithTitle:v5 style:2 target:self action:sel__handleCancelButton_];
    v7 = self->_cancelButtonItem;
    self->_cancelButtonItem = v6;

    cancelButtonItem = self->_cancelButtonItem;
  }

  return cancelButtonItem;
}

- (id)_selectSessionCancelBarButtonItem
{
  selectSessionCancelBarButtonItem = self->_selectSessionCancelBarButtonItem;
  if (!selectSessionCancelBarButtonItem)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__handleSelectSessionCancelButton_];
    v5 = self->_selectSessionCancelBarButtonItem;
    self->_selectSessionCancelBarButtonItem = v4;

    selectSessionCancelBarButtonItem = self->_selectSessionCancelBarButtonItem;
  }

  return selectSessionCancelBarButtonItem;
}

- (id)_selectSessionDoneBarButtonItem
{
  selectSessionDoneBarButtonItem = self->_selectSessionDoneBarButtonItem;
  if (!selectSessionDoneBarButtonItem)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__handleSelectSessionDoneButton_];
    v5 = self->_selectSessionDoneBarButtonItem;
    self->_selectSessionDoneBarButtonItem = v4;

    selectSessionDoneBarButtonItem = self->_selectSessionDoneBarButtonItem;
  }

  return selectSessionDoneBarButtonItem;
}

- (void)_updateSubviewsOrderingAndVisibility
{
  view = [(PUPhotosGridViewController *)self view];
  v3 = self->_alternateContentView != 0;
  collectionView = [(PUPhotosGridViewController *)self collectionView];
  [collectionView setHidden:v3];

  _emptyPlaceholderView = [(PUPhotosGridViewController *)self _emptyPlaceholderView];
  [_emptyPlaceholderView setHidden:v3];

  collectionView2 = [(PUPhotosGridViewController *)self collectionView];
  [view sendSubviewToBack:collectionView2];

  _emptyPlaceholderView2 = [(PUPhotosGridViewController *)self _emptyPlaceholderView];
  [view bringSubviewToFront:_emptyPlaceholderView2];

  [(UIView *)self->_alternateContentView bringSubviewToFront:self->_alternateContentView];
}

- (void)_updateNavigationBannerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _pickerBannerView = [(PUPhotosGridViewController *)self _pickerBannerView];
  sessionInfo = [(PUPhotosGridViewController *)self sessionInfo];
  if ([sessionInfo isSelectingAssets] && objc_msgSend(sessionInfo, "promptLocation") == 1)
  {
    localizedPrompt = [sessionInfo localizedPrompt];
  }

  else
  {
    localizedPrompt = 0;
  }

  if (-[PUPhotosGridViewController allowSelectAllButton](self, "allowSelectAllButton") && [sessionInfo isSelectingAssets])
  {
    _selectionButton = [(PUPhotosGridViewController *)self _selectionButton];
    if ([(PUPhotosGridViewController *)self _areAllAssetsSelected])
    {
      v8 = @"DESELECT_ALL_BUTTON_TITLE";
    }

    else
    {
      v8 = @"SELECT_ALL_BUTTON_TITLE";
    }

    v9 = PULocalizedString(v8);
    [_selectionButton setTitle:v9];
    [_selectionButton sizeToFit];
  }

  else
  {
    _selectionButton = 0;
  }

  [_pickerBannerView setTitle:localizedPrompt];
  [_pickerBannerView setLeftView:_selectionButton animated:animatedCopy];
  [_pickerBannerView setRightView:0 animated:animatedCopy];
}

- (id)_pickerBannerView
{
  navigationItem = [(PUPhotosGridViewController *)self navigationItem];
  pu_banner = [navigationItem pu_banner];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bannerView = [pu_banner bannerView];
  }

  else
  {
    bannerView = 0;
  }

  return bannerView;
}

- (void)_updateToolbarContentsAnimated:(BOOL)animated
{
  if ([(PUPhotosGridViewController *)self shouldShowToolbar])
  {
    newToolbarItems = [(PUPhotosGridViewController *)self newToolbarItems];
  }

  else
  {
    newToolbarItems = 0;
  }

  navigationController = [(PUPhotosGridViewController *)self navigationController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    pu_toolbarViewModel = [(UIViewController *)self pu_toolbarViewModel];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __61__PUPhotosGridViewController__updateToolbarContentsAnimated___block_invoke;
    v9[3] = &unk_1E7B80C38;
    v10 = pu_toolbarViewModel;
    v11 = newToolbarItems;
    v8 = pu_toolbarViewModel;
    [v8 performChanges:v9];
  }

  else
  {
    if ([(PUPhotosGridViewController *)self shouldShowToolbar])
    {
      [(PUPhotosGridViewController *)self setToolbarItems:newToolbarItems];
    }

    [(UIViewController *)self pu_performBarsVisibilityUpdatesWithAnimationSettings:2, *MEMORY[0x1E69DE248]];
  }
}

- (void)getTitle:(id *)title prompt:(id *)prompt shouldHideBackButton:(BOOL *)button leftBarButtonItems:(id *)items rightBarButtonItems:(id *)buttonItems
{
  isEditing = [(PUPhotosGridViewController *)self isEditing];
  sessionInfo = [(PUPhotosGridViewController *)self sessionInfo];
  isSelectingAssets = [sessionInfo isSelectingAssets];

  if (isSelectingAssets && (-[PUPhotosGridViewController sessionInfo](self, "sessionInfo"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 promptLocation], v13, !v14))
  {
    sessionInfo2 = [(PUPhotosGridViewController *)self sessionInfo];
    localizedPrompt = [sessionInfo2 localizedPrompt];
  }

  else
  {
    localizedPrompt = 0;
  }

  if (isEditing)
  {
    [(PUPhotosGridViewController *)self localizedSelectionTitle];
  }

  else
  {
    [(PUPhotosGridViewController *)self title];
  }
  v15 = ;
  *title = v15;
  customDoneButtonItem = [(PUPhotosGridViewController *)self customDoneButtonItem];
  v70 = isEditing;
  if (isSelectingAssets)
  {
    _selectSessionDoneBarButtonItem = [(PUPhotosGridViewController *)self _selectSessionDoneBarButtonItem];
    _selectSessionCancelBarButtonItem = [(PUPhotosGridViewController *)self _selectSessionCancelBarButtonItem];
    isEditing = 0;
  }

  else if ([(PUPhotosGridViewController *)self canDisplayEditButton])
  {
    _selectSessionDoneBarButtonItem = [(PUPhotosGridViewController *)self editButtonItem];
    if (isEditing)
    {
      _cancelButtonItem = [(PUPhotosGridViewController *)self _cancelButtonItem];

      _selectSessionCancelBarButtonItem = 0;
      isEditing = 1;
      _selectSessionDoneBarButtonItem = _cancelButtonItem;
    }

    else
    {
      if ([(PUPhotosGridViewController *)self isEmpty])
      {
        v20 = @"EDIT";
      }

      else
      {
        v20 = @"SELECT";
      }

      v21 = PULocalizedString(v20);
      [_selectSessionDoneBarButtonItem setTitle:v21];

      _selectSessionCancelBarButtonItem = 0;
    }
  }

  else
  {
    isEditing = 0;
    _selectSessionCancelBarButtonItem = 0;
    _selectSessionDoneBarButtonItem = 0;
  }

  v62 = v15;
  promptCopy = prompt;
  if (customDoneButtonItem)
  {
    showsCustomDoneButtonItemOnLeft = [(PUPhotosGridViewController *)self showsCustomDoneButtonItemOnLeft];
    v24 = ![(PUPhotosGridViewController *)self showsCustomDoneButtonItemOnLeft];
    v25 = !showsCustomDoneButtonItemOnLeft;
  }

  else
  {
    v24 = 0;
    v25 = 1;
  }

  showsSelectionSessionCancelButtonItemOnLeft = [(PUPhotosGridViewController *)self showsSelectionSessionCancelButtonItemOnLeft];
  v67 = _selectSessionDoneBarButtonItem;
  v68 = _selectSessionCancelBarButtonItem;
  if (_selectSessionCancelBarButtonItem)
  {
    v27 = showsSelectionSessionCancelButtonItemOnLeft;
  }

  else
  {
    v27 = 0;
  }

  if ((isEditing | v25))
  {
    v28 = _selectSessionDoneBarButtonItem != 0;
    if (_selectSessionDoneBarButtonItem)
    {
      v29 = v24;
    }

    else
    {
      v29 = 0;
    }

    if ((v29 & 1) == 0)
    {
      if (isSelectingAssets & 1 | ((v70 & 1) == 0))
      {
        if (!v27)
        {
          array = 0;
          goto LABEL_47;
        }

LABEL_45:
        array = [MEMORY[0x1E695DF70] array];
        goto LABEL_46;
      }

LABEL_41:
      array = [MEMORY[0x1E695DF70] array];
      goto LABEL_42;
    }

    goto LABEL_37;
  }

  array = [MEMORY[0x1E695DF70] array];
  [array addObject:customDoneButtonItem];
  v28 = _selectSessionDoneBarButtonItem != 0;
  if (_selectSessionDoneBarButtonItem)
  {
    v31 = v24;
  }

  else
  {
    v31 = 0;
  }

  if (v31)
  {
    if (array)
    {
LABEL_38:
      [array addObject:_selectSessionDoneBarButtonItem];
      v28 = 1;
      goto LABEL_39;
    }

LABEL_37:
    array = [MEMORY[0x1E695DF70] array];
    goto LABEL_38;
  }

LABEL_39:
  if (isSelectingAssets & 1 | ((v70 & 1) == 0))
  {
    goto LABEL_43;
  }

  if (!array)
  {
    goto LABEL_41;
  }

LABEL_42:
  v32 = [(PUPhotosGridViewController *)self _newEditActionItemsWithWideSpacing:0];
  [array addObjectsFromArray:v32];

LABEL_43:
  if (!v27)
  {
    goto LABEL_47;
  }

  if (!array)
  {
    goto LABEL_45;
  }

LABEL_46:
  [array addObject:v68];
LABEL_47:
  v33 = promptCopy;
  v34 = v24 ^ 1;
  v35 = isEditing | v24 ^ 1;
  titleCopy2 = title;
  if (v35)
  {
    v37 = v63;
    v38 = v70;
    if ((v34 & v28) == 1)
    {
      array2 = [MEMORY[0x1E695DF70] array];
      [array2 addObject:v67];
    }

    else
    {
      array2 = 0;
    }
  }

  else
  {
    array2 = [MEMORY[0x1E695DF70] array];
    [array2 addObject:customDoneButtonItem];
    v37 = v63;
    v38 = v70;
  }

  if (((v38 | isSelectingAssets) & 1) != 0 || [(PUPhotosGridViewController *)self isEmpty])
  {
    goto LABEL_64;
  }

  gridSpec = [(PUPhotosGridViewController *)self gridSpec];
  if ([gridSpec canDisplaySlideshowButton])
  {
    allowSlideshowButton = [(PUPhotosGridViewController *)self allowSlideshowButton];

    if (allowSlideshowButton)
    {
      if (!array2)
      {
        array2 = [MEMORY[0x1E695DF70] array];
      }

      slideshowButtonSpacer = self->_slideshowButtonSpacer;
      if (!slideshowButtonSpacer)
      {
        v43 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:6 target:0 action:0];
        v44 = self->_slideshowButtonSpacer;
        self->_slideshowButtonSpacer = v43;

        v45 = +[PUInterfaceManager currentTheme];
        [v45 photoCollectionToolbarTextTitleSpacerWidth];
        v47 = v46;

        [(UIBarButtonItem *)self->_slideshowButtonSpacer setWidth:v47];
        slideshowButtonSpacer = self->_slideshowButtonSpacer;
      }

      [array2 addObject:slideshowButtonSpacer];
      slideshowButton = self->_slideshowButton;
      if (!slideshowButton)
      {
        v49 = objc_alloc(MEMORY[0x1E69DC708]);
        v50 = PULocalizedString(@"PUPHOTOBROWSER_BUTTON_SLIDESHOW");
        v51 = [v49 initWithTitle:v50 style:0 target:self action:sel__slideshowButtonPressed_];
        v52 = self->_slideshowButton;
        self->_slideshowButton = v51;

        slideshowButton = self->_slideshowButton;
      }

      [array2 addObject:slideshowButton];
    }

    titleCopy2 = title;
LABEL_64:
    if (v38)
    {
      goto LABEL_65;
    }

LABEL_70:
    v54 = [array count] != 0;
    goto LABEL_84;
  }

  if (!v38)
  {
    goto LABEL_70;
  }

LABEL_65:
  if (![(PUPhotosGridViewController *)self isEmpty]&& [(PUPhotosGridViewController *)self allowSelectAllButton])
  {
    v53 = titleCopy2;
    if ([(PUPhotosGridViewController *)self _areAllAssetsSelected])
    {
      [(PUPhotosGridViewController *)self _deselectAllBarButtonItem];
    }

    else
    {
      [(PUPhotosGridViewController *)self _selectAllBarButtonItem];
    }
    v55 = ;
    if (v55)
    {
      gridSpec2 = [(PUPhotosGridViewController *)self gridSpec];
      shouldPlaceSelectAllButtonInRightNavigationBar = [gridSpec2 shouldPlaceSelectAllButtonInRightNavigationBar];

      if (shouldPlaceSelectAllButtonInRightNavigationBar)
      {
        if (array2)
        {
          array3 = array2;
        }

        else
        {
          array3 = [MEMORY[0x1E695DF70] array];
          array2 = array3;
        }
      }

      else if (array)
      {
        array3 = array;
      }

      else
      {
        array3 = [MEMORY[0x1E695DF70] array];
        array = array3;
      }

      titleCopy2 = v53;
      [array3 addObject:v55];
    }
  }

  v54 = 1;
LABEL_84:
  v59 = v37;
  *titleCopy2 = v37;
  if (v33)
  {
    *v33 = localizedPrompt;
  }

  if (button)
  {
    *button = v54;
  }

  if (items)
  {
    v60 = array;
    *items = array;
  }

  if (buttonItems)
  {
    v61 = array2;
    *buttonItems = array2;
  }
}

- (void)updateNavigationBarAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _barsHelper = [(PUPhotosGridViewController *)self _barsHelper];
  [_barsHelper invalidateNavigationBarItems];
  title = [_barsHelper title];
  prompt = [_barsHelper prompt];
  shouldHideBackButton = [_barsHelper shouldHideBackButton];
  leftBarButtonItems = [_barsHelper leftBarButtonItems];
  rightBarButtonItems = [_barsHelper rightBarButtonItems];
  navigationItem = [(PUPhotosGridViewController *)self navigationItem];
  [navigationItem _setTitle:title animated:animatedCopy matchBarButtonItemAnimationDuration:1];
  v12 = MEMORY[0x1E69DD250];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __58__PUPhotosGridViewController_updateNavigationBarAnimated___block_invoke;
  v19 = &unk_1E7B80C38;
  v13 = navigationItem;
  v20 = v13;
  v21 = prompt;
  v14 = prompt;
  [v12 performWithoutAnimation:&v16];
  [v13 setHidesBackButton:shouldHideBackButton animated:{animatedCopy, v16, v17, v18, v19}];
  LODWORD(v12) = [v13 pu_shouldUpdateLeftBarButtonItems:leftBarButtonItems];
  v15 = [v13 pu_shouldUpdateRightBarButtonItems:rightBarButtonItems];
  if (v12)
  {
    [v13 setLeftBarButtonItems:leftBarButtonItems animated:animatedCopy];
  }

  if (v15)
  {
    [v13 setRightBarButtonItems:rightBarButtonItems animated:animatedCopy];
  }
}

- (void)_updateContentOffsetForPendingViewSizeTransition
{
  _pendingViewSizeTransitionContext = [(PUPhotosGridViewController *)self _pendingViewSizeTransitionContext];
  if (_pendingViewSizeTransitionContext)
  {
    if ([(PUPhotosGridViewController *)self isViewLoaded])
    {
      collectionView = [(PUPhotosGridViewController *)self collectionView];
      [collectionView bounds];
      CGRectGetWidth(v17);

      [(PUPhotosGridViewController *)self collectionViewLayoutReferenceWidth];
      if (PXFloatApproximatelyEqualToFloat())
      {
        mainGridLayout = [(PUPhotosGridViewController *)self mainGridLayout];
        collectionView2 = [(PUPhotosGridViewController *)self collectionView];
        [collectionView2 contentOffset];
        v7 = v6;
        v9 = v8;

        [mainGridLayout targetContentOffsetForViewSizeTransitionContext:_pendingViewSizeTransitionContext];
        v12 = v11;
        v13 = v10;
        if (v7 != v11 || v9 != v10)
        {
          collectionView3 = [(PUPhotosGridViewController *)self collectionView];
          [collectionView3 setContentOffset:{v12, v13}];

          [mainGridLayout invalidateLayout];
        }

        [(PUPhotosGridViewController *)self _setPendingViewSizeTransitionContext:0];
      }
    }
  }
}

- (void)updateGlobalFooterUsingFooterView:(id)view
{
  viewCopy = view;
  if (([(PUPhotosGridViewController *)self _appearState]!= 1 || ![(PUPhotosGridViewController *)self isContentViewInSyncWithModel]) && (![(PUPhotosGridViewController *)self px_isVisible]|| ![(PUPhotosGridViewController *)self isCurrentCollectionViewDataSource]))
  {
    goto LABEL_15;
  }

  mainGridLayout = [(PUPhotosGridViewController *)self mainGridLayout];
  v5 = 0.0;
  if ([(PUPhotosGridViewController *)self wantsGlobalFooter])
  {
    cachedDefaultGlobalFooterHeight = [mainGridLayout cachedDefaultGlobalFooterHeight];
    if (cachedDefaultGlobalFooterHeight)
    {
      v7 = cachedDefaultGlobalFooterHeight;
      cachedDefaultGlobalFooterHeight2 = [mainGridLayout cachedDefaultGlobalFooterHeight];
      [cachedDefaultGlobalFooterHeight2 floatValue];
      if (v9 != 0.0)
      {

        v10 = viewCopy;
        if (!viewCopy)
        {
          viewCopy = 0;
          goto LABEL_13;
        }

LABEL_12:
        viewCopy = v10;
        [(PUPhotosGridViewController *)self configureGlobalFooterView:v10];
        [(PUPhotosGridViewController *)self collectionViewLayoutReferenceWidth];
        [viewCopy sizeThatFits:?];
        v12 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
        [mainGridLayout setCachedDefaultGlobalFooterHeight:v12];

LABEL_13:
        cachedDefaultGlobalFooterHeight3 = [mainGridLayout cachedDefaultGlobalFooterHeight];
        [cachedDefaultGlobalFooterHeight3 floatValue];
        v5 = v14;

        goto LABEL_14;
      }
    }

    v10 = viewCopy;
    if (!viewCopy)
    {
      v16 = objc_alloc_init(MEMORY[0x1E69C38D0]);
      [v16 setNeedsLayout];
      v10 = v16;
    }

    goto LABEL_12;
  }

LABEL_14:
  [mainGridLayout setGlobalFooterHeight:v5];

LABEL_15:
}

- (void)updateGlobalFooter
{
  collectionView = [(PUPhotosGridViewController *)self collectionView];
  mainGridLayout = [(PUPhotosGridViewController *)self mainGridLayout];
  globalFooterIndexPath = [mainGridLayout globalFooterIndexPath];
  v6 = [collectionView _visibleSupplementaryViewOfKind:@"PUGridGlobalFooter" atIndexPath:globalFooterIndexPath];

  [(PUPhotosGridViewController *)self updateGlobalFooterUsingFooterView:v6];
}

- (void)_updateGlobalHeaderVisibility
{
  [(PUPhotosGridViewController *)self globalHeaderHeight];
  v4 = v3;
  mainGridLayout = [(PUPhotosGridViewController *)self mainGridLayout];
  [mainGridLayout setGlobalHeaderHeight:v4];
}

- (void)_updateAllProgressInfoIndexPaths
{
  progressInfosByIdentifier = self->_progressInfosByIdentifier;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62__PUPhotosGridViewController__updateAllProgressInfoIndexPaths__block_invoke;
  v3[3] = &unk_1E7B7CC08;
  v3[4] = self;
  [(NSMutableDictionary *)progressInfosByIdentifier enumerateKeysAndObjectsUsingBlock:v3];
}

- (void)_invalidateAllProgressInfoIndexPaths
{
  [(NSMutableDictionary *)self->_progressInfosByCachedIndexPath enumerateKeysAndObjectsUsingBlock:&__block_literal_global_622];
  progressInfosByCachedIndexPath = self->_progressInfosByCachedIndexPath;

  [(NSMutableDictionary *)progressInfosByCachedIndexPath removeAllObjects];
}

- (void)_updateIndexPathForProgressInfo:(id)info
{
  infoCopy = info;
  cachedIndexPath = [infoCopy cachedIndexPath];
  if (!cachedIndexPath)
  {
    photosDataSource = [(PUPhotosGridViewController *)self photosDataSource];
    asset = [infoCopy asset];
    collection = [infoCopy collection];
    cachedIndexPath = [photosDataSource indexPathForAsset:asset inCollection:collection];

    [infoCopy setCachedIndexPath:cachedIndexPath];
    progressInfosByCachedIndexPath = self->_progressInfosByCachedIndexPath;
    if (!progressInfosByCachedIndexPath)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v10 = self->_progressInfosByCachedIndexPath;
      self->_progressInfosByCachedIndexPath = v9;

      progressInfosByCachedIndexPath = self->_progressInfosByCachedIndexPath;
    }

    [(NSMutableDictionary *)progressInfosByCachedIndexPath setObject:infoCopy forKeyedSubscript:cachedIndexPath];
  }
}

- (void)presentAlertController:(id)controller
{
  controllerCopy = controller;
  if ([(PUPhotosGridViewController *)self px_isVisible])
  {
    [(PUPhotosGridViewController *)self presentViewController:controllerCopy animated:1 completion:0];
  }
}

- (void)endShowingProgressWithIdentifier:(id)identifier succeeded:(BOOL)succeeded canceled:(BOOL)canceled error:(id)error
{
  progressInfosByIdentifier = self->_progressInfosByIdentifier;
  identifierCopy = identifier;
  v10 = [(NSMutableDictionary *)progressInfosByIdentifier objectForKeyedSubscript:identifierCopy];
  [(NSMutableDictionary *)self->_progressInfosByIdentifier removeObjectForKey:identifierCopy];

  cachedIndexPath = [v10 cachedIndexPath];
  if (cachedIndexPath)
  {
    [(NSMutableDictionary *)self->_progressInfosByCachedIndexPath removeObjectForKey:cachedIndexPath];
    [(PUPhotosGridViewController *)self _updateProgressForCellAtIndexPath:cachedIndexPath];
  }
}

- (void)updateProgressWithIdentifier:(id)identifier withValue:(double)value
{
  v8 = [(NSMutableDictionary *)self->_progressInfosByIdentifier objectForKeyedSubscript:identifier];
  [v8 progress];
  if (v6 != value)
  {
    [v8 setProgress:value];
    [(PUPhotosGridViewController *)self _updateIndexPathForProgressInfo:v8];
    cachedIndexPath = [v8 cachedIndexPath];
    [(PUPhotosGridViewController *)self _updateProgressForCellAtIndexPath:cachedIndexPath];
  }
}

- (id)beginShowingProgressForAsset:(id)asset inCollection:(id)collection
{
  v6 = MEMORY[0x1E696AFB0];
  collectionCopy = collection;
  assetCopy = asset;
  uUID = [v6 UUID];
  uUIDString = [uUID UUIDString];

  v11 = objc_alloc_init(_PUPhotosGridProgressInfo);
  [(_PUPhotosGridProgressInfo *)v11 setIdentifier:uUIDString];
  [(_PUPhotosGridProgressInfo *)v11 setAsset:assetCopy];

  [(_PUPhotosGridProgressInfo *)v11 setCollection:collectionCopy];
  [(_PUPhotosGridProgressInfo *)v11 setProgress:0.0];
  if (!self->_progressInfosByCachedIndexPath)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    progressInfosByIdentifier = self->_progressInfosByIdentifier;
    self->_progressInfosByIdentifier = v12;
  }

  [(NSMutableDictionary *)self->_progressInfosByIdentifier setObject:v11 forKeyedSubscript:uUIDString];
  [(PUPhotosGridViewController *)self _updateIndexPathForProgressInfo:v11];
  cachedIndexPath = [(_PUPhotosGridProgressInfo *)v11 cachedIndexPath];
  if (cachedIndexPath)
  {
    [(PUPhotosGridViewController *)self _updateProgressForCellAtIndexPath:cachedIndexPath];
  }

  return uUIDString;
}

- (void)_updateCollectionViewMultipleSelection
{
  v16 = *MEMORY[0x1E69E9840];
  collectionView = [(PUPhotosGridViewController *)self collectionView];
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [indexPathsForVisibleItems countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(indexPathsForVisibleItems);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (![(PUPhotosGridViewController *)self isAddPlaceholderAtIndexPath:v9])
        {
          v10 = [collectionView cellForItemAtIndexPath:v9];
          [(PUPhotosGridViewController *)self _updateSelectionForCell:v10 atIndexPath:v9];
        }
      }

      v6 = [indexPathsForVisibleItems countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)_updateProgressForCell:(id)cell atIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  [(PUPhotosGridViewController *)self _updateAllProgressInfoIndexPaths];
  v7 = [(NSMutableDictionary *)self->_progressInfosByCachedIndexPath objectForKeyedSubscript:pathCopy];

  if (v7)
  {
    v8 = MEMORY[0x1E696AD98];
    [v7 progress];
    v9 = [v8 numberWithDouble:?];
  }

  else
  {
    v9 = 0;
  }

  [cellCopy setProgress:v9];
}

- (void)_updateProgressForCellAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(PUPhotosGridViewController *)self collectionView];
  v5 = [collectionView cellForItemAtIndexPath:pathCopy];

  if (v5)
  {
    [(PUPhotosGridViewController *)self _updateProgressForCell:v5 atIndexPath:pathCopy];
  }
}

- (void)_updateSelectionForCell:(id)cell atIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  isEditing = [(PUPhotosGridViewController *)self isEditing];
  sessionInfo = [(PUPhotosGridViewController *)self sessionInfo];
  isSelectingAssets = [sessionInfo isSelectingAssets];

  if ((isEditing & 1) != 0 || isSelectingAssets)
  {
    v11 = -[PUPhotosGridViewController photoCollectionAtIndex:](self, "photoCollectionAtIndex:", [pathCopy section]);
    photoSelectionManager = [(PUPhotosGridViewController *)self photoSelectionManager];
    v10 = [photoSelectionManager isAssetAtIndexSelected:objc_msgSend(pathCopy inAssetCollection:{"item"), v11}];
  }

  else
  {
    v10 = 0;
  }

  [cellCopy setSelectionBadgeVisible:v10];
}

- (void)updatePeripheralInterfaceAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(PUPhotosGridViewController *)self isViewLoaded])
  {
    [(PUPhotosGridViewController *)self updateEmptyPlaceholderView];
    [(PUPhotosGridViewController *)self updateTitle];
    [(PUPhotosGridViewController *)self _updateToolbarContentsAnimated:animatedCopy];
    [(PUPhotosGridViewController *)self updateNavigationBarAnimated:animatedCopy];
    [(PUPhotosGridViewController *)self _updateNavigationBannerAnimated:animatedCopy];
    [(PUPhotosGridViewController *)self _updateGlobalHeaderVisibility];

    [(PUPhotosGridViewController *)self updateGlobalFooter];
  }
}

- (void)_contentSizeCategoryDidChangeNotification:(id)notification
{
  mainGridLayout = [(PUPhotosGridViewController *)self mainGridLayout];
  [mainGridLayout setCachedDefaultGlobalFooterHeight:0];

  collectionView = [(PUPhotosGridViewController *)self collectionView];
  [collectionView contentOffset];

  v10 = [(PUPhotosGridViewController *)self _bestReferenceItemIndexPathWithTopBias:1];
  collectionView2 = [(PUPhotosGridViewController *)self collectionView];
  collectionViewLayout = [collectionView2 collectionViewLayout];

  if (v10)
  {
    collectionView3 = [collectionViewLayout collectionView];

    if (collectionView3)
    {
      v9 = [collectionViewLayout layoutAttributesForItemAtIndexPath:v10];
      [(PUPhotosGridViewController *)self assetAtIndexPathIfSafe:v10];
    }
  }

  [(PUPhotosGridViewController *)self updateLayoutMetrics];
  [(PUPhotosGridViewController *)self updateGlobalFooter];
}

- (void)updateLayoutMetrics
{
  mainGridLayout = [(PUPhotosGridViewController *)self mainGridLayout];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(PUPhotosGridViewController *)self collectionViewLayoutReferenceWidth];
    if (v5 > 0.0)
    {
      v6 = v5;
      [(PUPhotosGridViewController *)self collectionViewLayoutReferenceSafeAreaInsets];
      PXEdgeInsetsForEdges();
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      gridSpec = [(PUPhotosGridViewController *)self gridSpec];
      mainGridLayout2 = [(PUPhotosGridViewController *)self mainGridLayout];
      [gridSpec configureCollectionViewGridLayout:mainGridLayout2 forWidth:v6 safeAreaInsets:{v8, v10, v12, v14}];
    }
  }
}

- (BOOL)shouldPerformFullReloadForIncrementalDataSourceChange:(id)change
{
  changeCopy = change;
  if (([changeCopy hasIncrementalChanges] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:3351 description:@"Must have incremental changes at this point"];
  }

  if ([(PUPhotosGridViewController *)self isContentViewInSyncWithModel])
  {
    if (([changeCopy changesAreNoOp] & 1) != 0 || (visibleSectionsBeforeChange = self->_visibleSectionsBeforeChange) == 0)
    {
      LOBYTE(v9) = 0;
    }

    else
    {
      pl_rangeCoveringIndexSet = [(NSIndexSet *)visibleSectionsBeforeChange pl_rangeCoveringIndexSet];
      v9 = [changeCopy affectsSectionsInRange:{pl_rangeCoveringIndexSet, v8}] ^ 1;
    }
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (void)processDataSourceChange:(id)change
{
  changeCopy = change;
  _shouldUpdateCollectionView = [(PUPhotosGridViewController *)self _shouldUpdateCollectionView];
  originatingPhotoLibraryChange = [changeCopy originatingPhotoLibraryChange];

  photoSelectionManager = [(PUPhotosGridViewController *)self photoSelectionManager];
  v7 = photoSelectionManager;
  if (originatingPhotoLibraryChange)
  {
    originatingPhotoLibraryChange2 = [changeCopy originatingPhotoLibraryChange];
    [v7 handlePhotoLibraryChange:originatingPhotoLibraryChange2];
  }

  else
  {
    [photoSelectionManager invalidateAllAssetIndexes];
  }

  [(PUPhotosGridViewController *)self _invalidateCachedViewSizeTransitionContext];
  if (_shouldUpdateCollectionView)
  {
    if ([changeCopy hasIncrementalChanges] && !-[PUPhotosGridViewController shouldPerformFullReloadForIncrementalDataSourceChange:](self, "shouldPerformFullReloadForIncrementalDataSourceChange:", changeCopy))
    {
      [(PUPhotosGridViewController *)self updateInterfaceForIncrementalDataSourceChanges:changeCopy];
      [(PUPhotosGridViewController *)self _clearAutomaticContentOffsetSnapshot];
    }

    else
    {
      [(PUPhotosGridViewController *)self beginBatchPreheating];
      [(PUPhotosGridViewController *)self updateInterfaceForModelReloadAnimated:1];
      [(PUPhotosGridViewController *)self _performAutomaticContentOffsetAdjustment];
      [(PUPhotosGridViewController *)self endBatchPreheating];
    }

    pendingProcessDataSourceUpdateBlock = [(PUPhotosGridViewController *)self pendingProcessDataSourceUpdateBlock];

    if (pendingProcessDataSourceUpdateBlock)
    {
      pendingProcessDataSourceUpdateBlock2 = [(PUPhotosGridViewController *)self pendingProcessDataSourceUpdateBlock];
      v19 = pendingProcessDataSourceUpdateBlock2[2]();

      if (v19)
      {
        [(PUPhotosGridViewController *)self setPendingProcessDataSourceUpdateBlock:0];
      }
    }

    if (![(PUPhotosGridViewController *)self canDisplayEditButton]&& [(PUPhotosGridViewController *)self isEditing])
    {
      [(PUPhotosGridViewController *)self setEditing:0 animated:1];
    }
  }

  else
  {
    [(PUPhotosGridViewController *)self setContentViewInSyncWithModel:0];
    mainGridLayout = [(PUPhotosGridViewController *)self mainGridLayout];
    [mainGridLayout invalidateLayout];

    _pushedPhotoBrowserController = [(PUPhotosGridViewController *)self _pushedPhotoBrowserController];
    if (_pushedPhotoBrowserController)
    {
      v11 = _pushedPhotoBrowserController;
      photosDataSource = [(PUPhotosGridViewController *)self photosDataSource];
      isEmpty = [photosDataSource isEmpty];

      if (isEmpty)
      {
        _pushedPhotoBrowserController2 = [(PUPhotosGridViewController *)self _pushedPhotoBrowserController];
        [_pushedPhotoBrowserController2 pl_visitControllerHierarchyWithBlock:&__block_literal_global_610_66294];

        navigationController = [(PUPhotosGridViewController *)self navigationController];
        v16 = [navigationController popToViewController:self animated:1];
      }
    }
  }

  ppt_dataSourceChangeHandler = [(PUPhotosGridViewController *)self ppt_dataSourceChangeHandler];
  v21 = ppt_dataSourceChangeHandler;
  if (ppt_dataSourceChangeHandler)
  {
    (*(ppt_dataSourceChangeHandler + 16))(ppt_dataSourceChangeHandler, changeCopy);
  }

  collectionListFetchResultBeforeChange = self->_collectionListFetchResultBeforeChange;
  self->_collectionListFetchResultBeforeChange = 0;
}

uint64_t __54__PUPhotosGridViewController_processDataSourceChange___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_1F2BCA758])
  {
    v3 = [v2 prepareForDismissingForced:1];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (void)photosDataSourceWillChange:(id)change
{
  collectionListFetchResult = [change collectionListFetchResult];
  collectionListFetchResultBeforeChange = self->_collectionListFetchResultBeforeChange;
  self->_collectionListFetchResultBeforeChange = collectionListFetchResult;

  if ([(PUPhotosGridViewController *)self _shouldUpdateCollectionView])
  {

    [(PUPhotosGridViewController *)self _saveAnchorForAutomaticContentOffsetAdjustment];
  }
}

- (CGPoint)stableUpdatesContentOffsetForProposedContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  visibleReferenceAssetBeforeChange = self->_visibleReferenceAssetBeforeChange;
  if (visibleReferenceAssetBeforeChange && self->_visibleReferenceAssetContainerBeforeChange)
  {
    v7 = visibleReferenceAssetBeforeChange;
    v8 = self->_visibleReferenceAssetContainerBeforeChange;
    v9 = self->_visibleReferenceAssetIndexPathBeforeChange;
    photosDataSource = [(PUPhotosGridViewController *)self photosDataSource];
    v11 = [photosDataSource indexPathForAsset:v7 hintIndexPath:v9 hintCollection:v8];

    collectionView = [(PUPhotosGridViewController *)self collectionView];
    collectionViewLayout = [collectionView collectionViewLayout];

    if (v11)
    {
      collectionView2 = [collectionViewLayout collectionView];

      if (collectionView2)
      {
        v15 = [collectionViewLayout layoutAttributesForItemAtIndexPath:v11];
        [v15 frame];
        y = CGRectGetMinY(v19) - self->_visibleReferenceAssetRelativeYBeforeChange;
      }
    }
  }

  v16 = x;
  v17 = y;
  result.y = v17;
  result.x = v16;
  return result;
}

- (void)_clearAutomaticContentOffsetSnapshot
{
  visibleReferenceAssetBeforeChange = self->_visibleReferenceAssetBeforeChange;
  self->_visibleReferenceAssetBeforeChange = 0;

  visibleReferenceAssetContainerBeforeChange = self->_visibleReferenceAssetContainerBeforeChange;
  self->_visibleReferenceAssetContainerBeforeChange = 0;

  visibleReferenceAssetIndexPathBeforeChange = self->_visibleReferenceAssetIndexPathBeforeChange;
  self->_visibleReferenceAssetIndexPathBeforeChange = 0;

  self->_visibleReferenceAssetRelativeYBeforeChange = 0.0;
  visibleSectionsBeforeChange = self->_visibleSectionsBeforeChange;
  self->_visibleSectionsBeforeChange = 0;
}

- (void)_performAutomaticContentOffsetAdjustment
{
  if ([(PUPhotosGridViewController *)self shouldPerformAutomaticContentOffsetAdjustment])
  {
    if (self->_visibleReferenceAssetBeforeChange)
    {
      if (self->_visibleReferenceAssetContainerBeforeChange)
      {
        collectionView = [(PUPhotosGridViewController *)self collectionView];
        [collectionView contentOffset];
        v5 = v4;
        v7 = v6;

        [(PUPhotosGridViewController *)self stableUpdatesContentOffsetForProposedContentOffset:v5, v7];
        v10 = v9;
        v11 = v8;
        if (v5 != v9 || v7 != v8)
        {
          collectionView2 = [(PUPhotosGridViewController *)self collectionView];
          [collectionView2 setContentOffset:{v10, v11}];

          mainGridLayout = [(PUPhotosGridViewController *)self mainGridLayout];
          [mainGridLayout invalidateLayoutForVerticalScroll];
        }
      }
    }
  }

  [(PUPhotosGridViewController *)self _clearAutomaticContentOffsetSnapshot];
}

- (void)_saveAnchorForAutomaticContentOffsetAdjustment
{
  v33 = *MEMORY[0x1E69E9840];
  if (![(PUPhotosGridViewController *)self shouldPerformAutomaticContentOffsetAdjustment])
  {
    goto LABEL_23;
  }

  if (self->_visibleReferenceAssetBeforeChange)
  {
    return;
  }

  v3 = [(PUPhotosGridViewController *)self _bestReferenceItemIndexPathWithTopBias:1];
  collectionView = [(PUPhotosGridViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];

  if (!v3 || ([collectionViewLayout collectionView], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {

LABEL_23:
    [(PUPhotosGridViewController *)self _clearAutomaticContentOffsetSnapshot];
    return;
  }

  v7 = [collectionViewLayout layoutAttributesForItemAtIndexPath:v3];
  v8 = [(PUPhotosGridViewController *)self assetAtIndexPathIfSafe:v3];
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  v27 = v11;
  if (!v10)
  {
    collectionView2 = [(PUPhotosGridViewController *)self collectionView];
    [collectionView2 contentOffset];
    v14 = v13;

    objc_storeStrong(&self->_visibleReferenceAssetBeforeChange, v9);
    photosDataSource = [(PUPhotosGridViewController *)self photosDataSource];
    v16 = [photosDataSource assetCollectionForSection:{objc_msgSend(v3, "section")}];
    visibleReferenceAssetContainerBeforeChange = self->_visibleReferenceAssetContainerBeforeChange;
    self->_visibleReferenceAssetContainerBeforeChange = v16;

    [v7 frame];
    self->_visibleReferenceAssetRelativeYBeforeChange = v18 - v14;
    objc_storeStrong(&self->_visibleReferenceAssetIndexPathBeforeChange, v3);
  }

  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  collectionView3 = [(PUPhotosGridViewController *)self collectionView];
  indexPathsForVisibleItems = [collectionView3 indexPathsForVisibleItems];

  v22 = [indexPathsForVisibleItems countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v29;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v29 != v24)
        {
          objc_enumerationMutation(indexPathsForVisibleItems);
        }

        -[NSIndexSet addIndex:](indexSet, "addIndex:", [*(*(&v28 + 1) + 8 * i) section]);
      }

      v23 = [indexPathsForVisibleItems countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v23);
  }

  visibleSectionsBeforeChange = self->_visibleSectionsBeforeChange;
  self->_visibleSectionsBeforeChange = indexSet;

  if ((v27 & 1) == 0)
  {
    goto LABEL_23;
  }
}

- (void)handleToggleSelectionOfItemAtIndexPath:(id)path
{
  pathCopy = path;
  v9 = -[PUPhotosGridViewController photoCollectionAtIndex:](self, "photoCollectionAtIndex:", [pathCopy section]);
  photoSelectionManager = [(PUPhotosGridViewController *)self photoSelectionManager];
  v6 = [photoSelectionManager isAssetAtIndexSelected:objc_msgSend(pathCopy inAssetCollection:{"item"), v9}];

  v7 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(pathCopy, "item")}];
  section = [pathCopy section];

  [(PUPhotosGridViewController *)self setSelected:v6 ^ 1u itemsAtIndexes:v7 inSection:section animated:0];
}

- (void)setCustomDoneButtonItem:(id)item
{
  itemCopy = item;
  if (self->_customDoneButtonItem != itemCopy)
  {
    v6 = itemCopy;
    objc_storeStrong(&self->_customDoneButtonItem, item);
    [(PUPhotosGridViewController *)self updateNavigationBarAnimated:0];
    itemCopy = v6;
  }
}

- (void)deletePhotosActionController:(id)controller presentConfirmationViewController:(id)viewController
{
  viewControllerCopy = viewController;
  action = [controller action];
  [(PUPhotosGridViewController *)self _setRemoveActionSheet:viewControllerCopy];
  popoverPresentationController = [viewControllerCopy popoverPresentationController];
  v8 = [(PUPhotosGridViewController *)self _referenceBarButtonItemForDeleteAction:action];
  [popoverPresentationController setBarButtonItem:v8];
  [popoverPresentationController setDelegate:self];
  [(PUPhotosGridViewController *)self presentViewController:viewControllerCopy animated:1 completion:0];
}

- (void)_removeButtonPressed:(id)pressed
{
  v107 = *MEMORY[0x1E69E9840];
  pressedCopy = pressed;
  val = self;
  presentedViewController = [(PUPhotosGridViewController *)self presentedViewController];
  if (presentedViewController || ([(PUPhotosGridViewController *)self _removeActionSheet], (presentedViewController = objc_claimAutoreleasedReturnValue()) != 0))
  {

    goto LABEL_4;
  }

  _deleteActionController = [(PUPhotosGridViewController *)self _deleteActionController];

  if (_deleteActionController)
  {
LABEL_4:
    oslog = PLUIGetLog();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      presentedViewController2 = [(PUPhotosGridViewController *)self presentedViewController];
      if (presentedViewController2)
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      v8 = v7;
      v9 = v8;
      _removeActionSheet = [(PUPhotosGridViewController *)self _removeActionSheet];
      if (_removeActionSheet)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      v12 = v11;
      v13 = v12;
      _deleteActionController2 = [(PUPhotosGridViewController *)self _deleteActionController];
      if (_deleteActionController2)
      {
        v15 = @"YES";
      }

      else
      {
        v15 = @"NO";
      }

      v16 = v15;
      *buf = 138543874;
      v102 = v8;
      v103 = 2114;
      v104 = v12;
      v105 = 2114;
      v106 = v16;
      _os_log_impl(&dword_1B36F3000, oslog, OS_LOG_TYPE_DEFAULT, "Remove button ignored. presentedViewController: %{public}@ _removeActionSheet: %{public}@ _deleteActionController: %{public}@", buf, 0x20u);
    }

    goto LABEL_15;
  }

  if (!pressedCopy || self->_removeToolbarButton != pressedCopy && self->_restoreToolbarButton != pressedCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:2900 description:@"expect sender; need to double-check delete logic that assumes sender"];
  }

  selectedAssets = [(PUPhotosGridViewController *)self selectedAssets];
  v19 = [selectedAssets count];
  v64 = v19 < 0x3E8;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (v19 < 0x3E8)
  {
    selectedIndexPaths = [(PUPhotosGridViewController *)self selectedIndexPaths];
    v22 = [selectedAssets count];
    if (v22 != [selectedIndexPaths count])
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:2911 description:{@"Invalid parameter not satisfying: %@", @"[assets count] == [indexPaths count]"}];
    }

    if ([selectedAssets count])
    {
      v23 = 0;
      do
      {
        v24 = [selectedAssets objectAtIndexedSubscript:v23];
        v25 = [selectedIndexPaths objectAtIndexedSubscript:v23];
        [dictionary setObject:v25 forKeyedSubscript:v24];

        ++v23;
      }

      while (v23 < [selectedAssets count]);
    }
  }

  selfCopy = self;
  canDeleteContent = [(PUPhotosGridViewController *)self canDeleteContent];
  _canRemoveContent = [(PUPhotosGridViewController *)val _canRemoveContent];
  isTrashBinViewController = [(PUPhotosGridViewController *)val isTrashBinViewController];
  if (isTrashBinViewController && ![selectedAssets count])
  {
    _allAssetsInCollections = [(PUPhotosGridViewController *)val _allAssetsInCollections];

    selectedAssets = _allAssetsInCollections;
    selfCopy = val;
  }

  oslog = [(PUPhotosGridViewController *)selfCopy _assetsAllowingRemove:_canRemoveContent orDelete:canDeleteContent fromAssets:selectedAssets];

  if ((_canRemoveContent & canDeleteContent) == 1)
  {
    v29 = [(PUPhotosGridViewController *)val _assetsAllowingRemove:0 orDelete:1 fromAssets:oslog];
    LODWORD(canDeleteContent) = [v29 isEqualToArray:oslog];
  }

  if ([oslog count])
  {
    v59 = canDeleteContent;
    v30 = v19 < 0x3E8;
    array = [MEMORY[0x1E695DF70] array];
    if (v30)
    {
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v32 = oslog;
      v33 = [v32 countByEnumeratingWithState:&v96 objects:v100 count:16];
      if (v33)
      {
        v34 = *v97;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v97 != v34)
            {
              objc_enumerationMutation(v32);
            }

            v36 = [dictionary objectForKeyedSubscript:*(*(&v96 + 1) + 8 * i)];
            if (v36)
            {
              photosDataSource = [(PUPhotosGridViewController *)val photosDataSource];
              v38 = [photosDataSource assetReferenceAtIndexPath:v36];

              [array addObject:v38];
            }
          }

          v33 = [v32 countByEnumeratingWithState:&v96 objects:v100 count:16];
        }

        while (v33);
      }
    }

    objc_initWeak(buf, val);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __51__PUPhotosGridViewController__removeButtonPressed___block_invoke;
    aBlock[3] = &unk_1E7B80638;
    objc_copyWeak(&v95, buf);
    v39 = _Block_copy(aBlock);
    v90[0] = MEMORY[0x1E69E9820];
    v90[1] = 3221225472;
    v90[2] = __51__PUPhotosGridViewController__removeButtonPressed___block_invoke_2;
    v90[3] = &unk_1E7B7CE88;
    v93 = v64;
    objc_copyWeak(&v92, buf);
    v58 = array;
    v91 = v58;
    v63 = _Block_copy(v90);
    v85[0] = MEMORY[0x1E69E9820];
    v85[1] = 3221225472;
    v85[2] = __51__PUPhotosGridViewController__removeButtonPressed___block_invoke_3;
    v85[3] = &unk_1E7B7CB70;
    objc_copyWeak(&v87, buf);
    v88 = v64;
    v89 = isTrashBinViewController;
    v40 = oslog;
    v86 = v40;
    v65 = _Block_copy(v85);
    if (_canRemoveContent)
    {
      v84[0] = MEMORY[0x1E69E9820];
      v84[1] = 3221225472;
      v84[2] = __51__PUPhotosGridViewController__removeButtonPressed___block_invoke_4;
      v84[3] = &unk_1E7B7E148;
      v84[4] = val;
      v67 = _Block_copy(v84);
      v81[0] = MEMORY[0x1E69E9820];
      v81[1] = 3221225472;
      v81[2] = __51__PUPhotosGridViewController__removeButtonPressed___block_invoke_5;
      v81[3] = &unk_1E7B7CB98;
      v81[4] = val;
      v41 = v65;
      v82 = v41;
      v42 = v63;
      v83 = v42;
      v62 = _Block_copy(v81);

      if (v59)
      {
        v75[0] = MEMORY[0x1E69E9820];
        v75[1] = 3221225472;
        v75[2] = __51__PUPhotosGridViewController__removeButtonPressed___block_invoke_6;
        v75[3] = &unk_1E7B7CBC0;
        v75[4] = val;
        v76 = pressedCopy;
        v77 = v40;
        v78 = v39;
        v79 = v42;
        v80 = v41;
        v60 = _Block_copy(v75);
      }

      else
      {
        v60 = 0;
      }

      v47 = [MEMORY[0x1E69C37F8] warningStringForAssets:v40 isDeleting:1];
      v48 = PULocalizedString(@"CANCEL");
      v49 = PXLocalizedSharedLibraryString();
      v50 = PULocalizedString(@"DELETE_FROM_LIBRARY_BUTTON_TITLE");
      v51 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v47 message:0 preferredStyle:0];
      v52 = [MEMORY[0x1E69DC648] actionWithTitle:v48 style:1 handler:v67];
      [v51 addAction:v52];

      v53 = [MEMORY[0x1E69DC648] actionWithTitle:v49 style:0 handler:v62];
      [v51 addAction:v53];

      v54 = [MEMORY[0x1E69DC648] actionWithTitle:v50 style:2 handler:v60];
      [v51 addAction:v54];

      [(PUPhotosGridViewController *)val _setRemoveActionSheet:v51];
      popoverPresentationController = [v51 popoverPresentationController];
      if (popoverPresentationController)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [popoverPresentationController setBarButtonItem:pressedCopy];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [popoverPresentationController setSourceView:pressedCopy];
            [(UIBarButtonItem *)pressedCopy frame];
            [popoverPresentationController setSourceRect:?];
          }
        }

        [popoverPresentationController setDelegate:val];
      }

      [(PUPhotosGridViewController *)val presentViewController:v51 animated:1 completion:0];
    }

    else if (v59)
    {
      v43 = [(PUPhotosGridViewController *)val _deleteActionForBarButtonItem:pressedCopy];
      v44 = objc_alloc(MEMORY[0x1E69C37F8]);
      undoManager = [(PUPhotosGridViewController *)val undoManager];
      v46 = [v44 initWithAction:v43 assets:v40 undoManager:undoManager delegate:val];

      [(PUPhotosGridViewController *)val _setDeleteActionController:v46];
      v39[2](v39);
      v73[0] = MEMORY[0x1E69E9820];
      v73[1] = 3221225472;
      v73[2] = __51__PUPhotosGridViewController__removeButtonPressed___block_invoke_9;
      v73[3] = &unk_1E7B80C88;
      v74 = v63;
      v71[0] = MEMORY[0x1E69E9820];
      v71[1] = 3221225472;
      v71[2] = __51__PUPhotosGridViewController__removeButtonPressed___block_invoke_10;
      v71[3] = &unk_1E7B80A18;
      v71[4] = val;
      v72 = v65;
      [v46 performWithWillDeleteHandler:v73 completionHandler:v71];
    }

    objc_destroyWeak(&v87);
    objc_destroyWeak(&v92);

    objc_destroyWeak(&v95);
    objc_destroyWeak(buf);
  }

LABEL_15:
}

void __51__PUPhotosGridViewController__removeButtonPressed___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained navigationController];
  v4 = [v2 navigationBar];

  v3 = v4;
  if (v4)
  {
    [v4 setUserInteractionEnabled:0];
    v3 = v4;
  }
}

void __51__PUPhotosGridViewController__removeButtonPressed___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v3 = [WeakRetained photosDataSource];
    v4 = [MEMORY[0x1E695DF70] array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = *(a1 + 32);
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [v3 indexPathForAssetReference:{*(*(&v13 + 1) + 8 * v9), v13}];
          if (v10)
          {
            [v4 addObject:v10];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    [v3 forceExcludeAssetsAtIndexPaths:v4];
    [WeakRetained setEditing:0 animated:0];
    v11 = [WeakRetained navigationController];
    v12 = [v11 navigationBar];

    if (v12)
    {
      [v12 setUserInteractionEnabled:1];
    }
  }
}

void __51__PUPhotosGridViewController__removeButtonPressed___block_invoke_3(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (a2)
  {
    if ((*(a1 + 48) & 1) == 0)
    {
      [WeakRetained setEditing:0 animated:0];
    }

    if ((*(a1 + 49) & 1) == 0)
    {
      [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.CPAnalytics.photosDeleteGrid" withPayload:MEMORY[0x1E695E0F8]];
    }
  }

  else if (*(a1 + 48))
  {
    v4 = [WeakRetained photosDataSource];
    [v4 stopExcludingAssets:*(a1 + 32)];
  }

  v5 = [WeakRetained navigationController];
  v6 = [v5 navigationBar];

  if (v6)
  {
    [v6 setUserInteractionEnabled:1];
  }
}

uint64_t __51__PUPhotosGridViewController__removeButtonPressed___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) _removeSelectedAssetsWithCompletion:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 32);

  return [v2 _setRemoveActionSheet:0];
}

void __51__PUPhotosGridViewController__removeButtonPressed___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) _deleteActionForBarButtonItem:*(a1 + 40)];
  v3 = objc_alloc(MEMORY[0x1E69C37F8]);
  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) undoManager];
  v6 = [v3 initWithAction:v2 assets:v4 undoManager:v5 delegate:*(a1 + 32)];

  [*(a1 + 32) _setDeleteActionController:v6];
  (*(*(a1 + 56) + 16))();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__PUPhotosGridViewController__removeButtonPressed___block_invoke_7;
  v9[3] = &unk_1E7B80C88;
  v10 = *(a1 + 64);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__PUPhotosGridViewController__removeButtonPressed___block_invoke_8;
  v7[3] = &unk_1E7B80A18;
  v7[4] = *(a1 + 32);
  v8 = *(a1 + 72);
  [v6 performWithWillDeleteHandler:v9 completionHandler:v7];
}

uint64_t __51__PUPhotosGridViewController__removeButtonPressed___block_invoke_10(uint64_t a1)
{
  [*(a1 + 32) _setDeleteActionController:0];
  [*(a1 + 32) _setRemoveActionSheet:0];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t __51__PUPhotosGridViewController__removeButtonPressed___block_invoke_8(uint64_t a1)
{
  [*(a1 + 32) _setDeleteActionController:0];
  [*(a1 + 32) _setRemoveActionSheet:0];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (id)_allAssetsInCollections
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  collectionListFetchResult = [(PUPhotosGridViewController *)self collectionListFetchResult];
  v5 = [collectionListFetchResult countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(collectionListFetchResult);
        }

        v9 = [(PUPhotosGridViewController *)self assetsInAssetCollection:*(*(&v19 + 1) + 8 * i)];
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v10 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v16;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v16 != v12)
              {
                objc_enumerationMutation(v9);
              }

              [v3 addObject:*(*(&v15 + 1) + 8 * j)];
            }

            v11 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v11);
        }
      }

      v6 = [collectionListFetchResult countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_addButtonPressed:(id)pressed
{
  presentedViewController = [(PUPhotosGridViewController *)self presentedViewController];

  if (!presentedViewController)
  {
    if ([(PUPhotosGridViewController *)self isAnyAssetSelected])
    {
      v5 = PLUIGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *v6 = 0;
        _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_ERROR, "No more 'Add To' action", v6, 2u);
      }
    }

    else
    {

      [(PUPhotosGridViewController *)self handleAddFromAction];
    }
  }
}

- (void)slideshowViewControllerDidFinish:(id)finish withVisibleAssets:(id)assets
{
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __81__PUPhotosGridViewController_slideshowViewControllerDidFinish_withVisibleAssets___block_invoke;
  v18[3] = &unk_1E7B80DD0;
  v18[4] = self;
  assetsCopy = assets;
  finishCopy = finish;
  [(PUPhotosGridViewController *)self dismissViewControllerAnimated:1 completion:v18];
  firstObject = [assetsCopy firstObject];

  session = [finishCopy session];

  assetCollection = [session assetCollection];

  if ([(PUPhotosGridViewController *)self _transitionWidthHasChanged])
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __81__PUPhotosGridViewController_slideshowViewControllerDidFinish_withVisibleAssets___block_invoke_2;
    aBlock[3] = &unk_1E7B7F820;
    objc_copyWeak(&v16, &location);
    v14 = firstObject;
    v15 = assetCollection;
    v11 = _Block_copy(aBlock);
    pendingNavigationBlock = self->_pendingNavigationBlock;
    self->_pendingNavigationBlock = v11;

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    [(PUPhotosGridViewController *)self navigateToRevealPhoto:firstObject inAssetContainer:assetCollection animated:0];
  }
}

void __81__PUPhotosGridViewController_slideshowViewControllerDidFinish_withVisibleAssets___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained navigateToRevealPhoto:*(a1 + 32) inAssetContainer:*(a1 + 40) animated:0];
}

- (id)_performDuplicateActivityWithSelectionSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v5 = objc_alloc(MEMORY[0x1E69C3808]);
  undoManager = [(PUPhotosGridViewController *)self undoManager];
  v7 = [v5 initWithSelectionSnapshot:snapshotCopy undoManager:undoManager];

  [(PUPhotosGridViewController *)self _setDuplicateActionController:v7];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__PUPhotosGridViewController__performDuplicateActivityWithSelectionSnapshot___block_invoke;
  aBlock[3] = &unk_1E7B7CB48;
  objc_copyWeak(&v17, &location);
  v8 = v7;
  v16 = v8;
  v9 = _Block_copy(aBlock);
  if ([v8 shouldUseAlertController])
  {
    v10 = [v8 alertConfigurationForDuplicateActionWithUserConfirmationHandler:v9];
    v11 = [objc_alloc(MEMORY[0x1E69C4468]) initWithConfiguration:v10];
    alertController = [v11 alertController];
    popoverPresentationController = [alertController popoverPresentationController];
    [popoverPresentationController setDelegate:self];
  }

  else
  {
    v9[2](v9, 1, 1);
    alertController = 0;
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return alertController;
}

void __77__PUPhotosGridViewController__performDuplicateActivityWithSelectionSnapshot___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (a2)
  {
    v8 = *(a1 + 32);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __77__PUPhotosGridViewController__performDuplicateActivityWithSelectionSnapshot___block_invoke_2;
    v11[3] = &unk_1E7B7F988;
    objc_copyWeak(&v12, (a1 + 40));
    v9 = *MEMORY[0x1E6960C70];
    v10 = *(MEMORY[0x1E6960C70] + 16);
    [v8 performDuplicateAction:a3 newStillImageTime:&v9 completionHandler:v11];
    objc_destroyWeak(&v12);
  }

  else
  {
    [WeakRetained _handleDuplicateActionCompletionWithSuccess:0];
  }

  [v7 _setActionConfirmationAlert:0];
}

void __77__PUPhotosGridViewController__performDuplicateActivityWithSelectionSnapshot___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDuplicateActionCompletionWithSuccess:a2];
}

- (void)_handleDuplicateActionCompletionWithSuccess:(BOOL)success
{
  if ([(PUPhotosGridViewController *)self isEditing])
  {
    v4 = +[PUPhotosGridSettings sharedInstance];
    shouldExitEditingModeAfterDuplication = [v4 shouldExitEditingModeAfterDuplication];

    if (shouldExitEditingModeAfterDuplication)
    {
      [(PUPhotosGridViewController *)self setEditing:0 animated:0];
    }
  }

  [(PUPhotosGridViewController *)self _setDuplicateActionController:0];
}

- (id)_performHideActivityWithSelectionManager:(id)manager
{
  v53 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  if ([managerCopy isAnyAssetSelected])
  {
    v29 = managerCopy;
    photosDataSource = [(PUPhotosGridViewController *)self photosDataSource];
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    collectionListFetchResult = [(PUPhotosGridViewController *)self collectionListFetchResult];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __71__PUPhotosGridViewController__performHideActivityWithSelectionManager___block_invoke;
    v48[3] = &unk_1E7B7CA08;
    v31 = v6;
    v49 = v31;
    v9 = v7;
    v50 = v9;
    v10 = photosDataSource;
    v51 = v10;
    [managerCopy enumerateSelectedAssetsWithAssetCollectionOrdering:collectionListFetchResult block:v48];

    v11 = [PUHidePhotosActionController alloc];
    undoManager = [(PUPhotosGridViewController *)self undoManager];
    v30 = [(PUHidePhotosActionController *)v11 initWithAssets:v31 undoManager:undoManager];

    if (v30)
    {
      objc_initWeak(&location, self);
      array = [MEMORY[0x1E695DF70] array];
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v14 = v31;
      v15 = [v14 countByEnumeratingWithState:&v43 objects:v52 count:16];
      if (v15)
      {
        v16 = *v44;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v44 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v18 = [v9 objectForKeyedSubscript:*(*(&v43 + 1) + 8 * i)];
            if (v18)
            {
              v19 = [v10 assetReferenceAtIndexPath:v18];
              [array addObject:v19];
            }
          }

          v15 = [v14 countByEnumeratingWithState:&v43 objects:v52 count:16];
        }

        while (v15);
      }

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __71__PUPhotosGridViewController__performHideActivityWithSelectionManager___block_invoke_2;
      aBlock[3] = &unk_1E7B80610;
      objc_copyWeak(&v42, &location);
      v20 = array;
      v41 = v20;
      v21 = _Block_copy(aBlock);
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __71__PUPhotosGridViewController__performHideActivityWithSelectionManager___block_invoke_3;
      v37[3] = &unk_1E7B7CAF8;
      objc_copyWeak(&v39, &location);
      v38 = v14;
      v22 = _Block_copy(v37);
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __71__PUPhotosGridViewController__performHideActivityWithSelectionManager___block_invoke_4;
      v32[3] = &unk_1E7B7CB20;
      objc_copyWeak(&v36, &location);
      v23 = v21;
      v34 = v23;
      v24 = v30;
      v33 = v24;
      v25 = v22;
      v35 = v25;
      v26 = [(PUHidePhotosActionController *)v24 alertControllerForTogglingAssetsVisibilityWithCompletionHandler:v32];
      popoverPresentationController = [v26 popoverPresentationController];
      [popoverPresentationController setDelegate:self];

      if (!v26)
      {
        v23[2](v23);
        [(PUHidePhotosActionController *)v24 performActionWithCompletionHandler:v25];
      }

      objc_destroyWeak(&v36);
      objc_destroyWeak(&v39);

      objc_destroyWeak(&v42);
      objc_destroyWeak(&location);
    }

    else
    {
      v26 = 0;
    }

    managerCopy = v29;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

void __71__PUPhotosGridViewController__performHideActivityWithSelectionManager___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  [v7 addObject:v8];
  v9 = *(a1 + 48);
  v11 = [MEMORY[0x1E696AC88] indexPathForItem:a3 inSection:a4];
  v10 = [v9 indexPathForAsset:v8 hintIndexPath:v11 hintCollection:0];
  [*(a1 + 40) setObject:v10 forKeyedSubscript:v8];
}

void __71__PUPhotosGridViewController__performHideActivityWithSelectionManager___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained photosDataSource];
  v4 = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [v3 indexPathForAssetReference:{*(*(&v11 + 1) + 8 * v9), v11}];
        if (v10)
        {
          [v4 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [v3 forceExcludeAssetsAtIndexPaths:v4];
  if ([WeakRetained isEditing])
  {
    [WeakRetained setEditing:0 animated:0];
  }
}

void __71__PUPhotosGridViewController__performHideActivityWithSelectionManager___block_invoke_3(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ((a2 & 1) == 0)
  {
    v6 = WeakRetained;
    v5 = [WeakRetained photosDataSource];
    [v5 stopExcludingAssets:*(a1 + 32)];

    WeakRetained = v6;
  }
}

void __71__PUPhotosGridViewController__performHideActivityWithSelectionManager___block_invoke_4(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (a2)
  {
    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) performActionWithCompletionHandler:*(a1 + 48)];
  }

  [WeakRetained _setActionConfirmationAlert:0];
}

- (id)_updateSelectionFromSelectionManager:(id)manager
{
  managerCopy = manager;
  photoSelectionManager = [(PUPhotosGridViewController *)self photoSelectionManager];
  if (!photoSelectionManager)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:2713 description:@"A selection manager should always be available."];
  }

  [photoSelectionManager deselectAllAssets];
  collectionListFetchResult = [(PUPhotosGridViewController *)self collectionListFetchResult];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__PUPhotosGridViewController__updateSelectionFromSelectionManager___block_invoke;
  v13[3] = &unk_1E7B7CA08;
  v13[4] = self;
  v14 = photoSelectionManager;
  v15 = collectionListFetchResult;
  v8 = collectionListFetchResult;
  v9 = photoSelectionManager;
  [managerCopy enumerateSelectedAssetsWithAssetCollectionOrdering:v8 block:v13];

  [(PUPhotosGridViewController *)self _updateCollectionViewMultipleSelection];
  selectionSnapshot = [v9 selectionSnapshot];

  return selectionSnapshot;
}

void __67__PUPhotosGridViewController__updateSelectionFromSelectionManager___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 photosDataSource];
  v10 = [MEMORY[0x1E696AC88] indexPathForItem:a3 inSection:a4];
  v11 = [*(a1 + 32) photoCollectionAtIndex:a4];
  v15 = [v9 indexPathForAsset:v8 hintIndexPath:v10 hintCollection:v11];

  if (v15)
  {
    v12 = *(a1 + 40);
    v13 = [v15 item];
    v14 = [*(a1 + 48) objectAtIndexedSubscript:{objc_msgSend(v15, "section")}];
    [v12 selectAssetAtIndex:v13 inAssetCollection:v14];
  }
}

- (void)_activitySharingController:(id)controller didCompleteWithActivityType:(id)type success:(BOOL)success
{
  successCopy = success;
  controllerCopy = controller;
  typeCopy = type;
  activitySharingController = [(PUPhotosGridViewController *)self activitySharingController];

  if (!activitySharingController)
  {
    v17 = PLUIGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1B36F3000, v17, OS_LOG_TYPE_ERROR, "didCompleteWithActivityType: was called whereas self.activitySharingController == nil.", buf, 2u);
    }

    goto LABEL_22;
  }

  if (successCopy)
  {
    [(PUPhotosGridViewController *)self setActivitySharingController:0];
    v11 = *MEMORY[0x1E69C3DB8];
    if (([typeCopy isEqualToString:*MEMORY[0x1E69C3DB8]] & 1) == 0 && (objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x1E69C3D78]) & 1) == 0 && (objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x1E69C3F30]) & 1) == 0 && !objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x1E69C3F28]))
    {
      if (![typeCopy isEqualToString:*MEMORY[0x1E69C3EA0]])
      {
        if ([(PUPhotosGridViewController *)self isEditing])
        {
          [(PUPhotosGridViewController *)self setEditing:0 animated:0];
        }

        v16 = 0;
        goto LABEL_21;
      }

      v21 = MEMORY[0x1E6978650];
      viewModel = [controllerCopy viewModel];
      selectionManager = [viewModel selectionManager];
      orderedSelectedAssets = [selectionManager orderedSelectedAssets];
      array = [orderedSelectedAssets array];
      v14 = [v21 transientAssetCollectionWithAssets:array title:0];

      v26 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v14 options:0];
      v16 = [(PUPhotosGridViewController *)self _slideshowNavigationControllerForFetchResult:v26 assetCollection:v14];

LABEL_20:
LABEL_21:
      objc_initWeak(buf, self);
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __93__PUPhotosGridViewController__activitySharingController_didCompleteWithActivityType_success___block_invoke;
      v27[3] = &unk_1E7B7F478;
      objc_copyWeak(&v31, buf);
      v17 = v16;
      v28 = v17;
      v29 = typeCopy;
      selfCopy = self;
      [(UIViewController *)self pu_dismissViewControllerAnimated:1 interactive:0 completion:v27];

      objc_destroyWeak(&v31);
      objc_destroyWeak(buf);
LABEL_22:

      goto LABEL_23;
    }

    viewModel2 = [controllerCopy viewModel];
    selectionManager2 = [viewModel2 selectionManager];
    v14 = [(PUPhotosGridViewController *)self _updateSelectionFromSelectionManager:selectionManager2];

    if ([typeCopy isEqualToString:v11])
    {
      photoSelectionManager = [(PUPhotosGridViewController *)self photoSelectionManager];
      v16 = [(PUPhotosGridViewController *)self _performHideActivityWithSelectionManager:photoSelectionManager];

      if (!v16)
      {
LABEL_16:
        _shareAssetsSender = [(PUPhotosGridViewController *)self _shareAssetsSender];
        if (_shareAssetsSender && ([(PUPhotosGridViewController *)self isEditing]& 1) == 0)
        {
          popoverPresentationController = [v16 popoverPresentationController];
          [popoverPresentationController setSourceView:_shareAssetsSender];

          popoverPresentationController2 = [v16 popoverPresentationController];
          [_shareAssetsSender bounds];
          [popoverPresentationController2 setSourceRect:?];
        }

        [(PUPhotosGridViewController *)self _setActionConfirmationAlert:v16];

        goto LABEL_20;
      }
    }

    else
    {
      if (![typeCopy isEqualToString:*MEMORY[0x1E69C3D78]])
      {
        v16 = 0;
        goto LABEL_16;
      }

      v16 = [(PUPhotosGridViewController *)self _performDuplicateActivityWithSelectionSnapshot:v14];
      if (!v16)
      {
        goto LABEL_16;
      }
    }

    v16 = v16;
    goto LABEL_16;
  }

LABEL_23:
}

void __93__PUPhotosGridViewController__activitySharingController_didCompleteWithActivityType_success___block_invoke(id *a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__PUPhotosGridViewController__activitySharingController_didCompleteWithActivityType_success___block_invoke_2;
  block[3] = &unk_1E7B7F820;
  objc_copyWeak(&v5, a1 + 7);
  v3 = a1[4];
  v4 = a1[5];
  dispatch_async(MEMORY[0x1E69E96A0], block);
  [a1[6] _setShareAssetsSender:0];

  objc_destroyWeak(&v5);
}

void __93__PUPhotosGridViewController__activitySharingController_didCompleteWithActivityType_success___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (a1[4])
  {
    v3 = WeakRetained;
    if ([a1[5] isEqualToString:*MEMORY[0x1E69C3EA0]])
    {
      [a1[4] setModalTransitionStyle:2];
    }

    [v3 presentViewController:a1[4] animated:1 completion:0];
    WeakRetained = v3;
  }
}

- (void)_activitySharingControllerDidCancel:(id)cancel
{
  [(PUPhotosGridViewController *)self setActivitySharingController:0];

  [(PUPhotosGridViewController *)self _setShareAssetsSender:0];
}

- (void)activitySharingController:(id)controller didCompleteWithActivityType:(id)type success:(BOOL)success
{
  successCopy = success;
  controllerCopy = controller;
  typeCopy = type;
  v16 = controllerCopy;
  if (v16)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v13 = NSStringFromClass(v14);
    px_descriptionForAssertionMessage = [v16 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:2635 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"activitySharingController", v13, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:2635 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"activitySharingController", v13}];
  }

LABEL_3:
  [(PUPhotosGridViewController *)self _activitySharingController:v16 didCompleteWithActivityType:typeCopy success:successCopy];
}

- (void)activitySharingControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  if (cancelCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = objc_opt_class();
    v7 = NSStringFromClass(v8);
    px_descriptionForAssertionMessage = [cancelCopy px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:2630 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"activitySharingController", v7, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:2630 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"activitySharingController", v7}];
  }

LABEL_3:
  [(PUPhotosGridViewController *)self _activitySharingControllerDidCancel:cancelCopy];
}

- (id)_slideshowNavigationControllerForFetchResult:(id)result assetCollection:(id)collection
{
  collectionCopy = collection;
  resultCopy = result;
  v8 = [[PUSlideshowSession alloc] initWithFetchResult:resultCopy assetCollection:collectionCopy];

  v9 = [[PUSlideshowViewController alloc] initWithSession:v8];
  [(PUPhotosGridViewController *)self _setSlideshowViewController:v9];
  [(PUSlideshowViewController *)v9 setDelegate:self];
  v10 = [[PUSlideshowNavigationController alloc] initWithRootViewController:v9];

  return v10;
}

- (void)_slideshowButtonPressed:(id)pressed
{
  presentedViewController = [(PUPhotosGridViewController *)self presentedViewController];

  if (!presentedViewController)
  {
    gridSpec = [(PUPhotosGridViewController *)self gridSpec];
    canDisplaySlideshowButton = [gridSpec canDisplaySlideshowButton];

    if ((canDisplaySlideshowButton & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:2595 description:@"expected slideshow capability"];
    }

    v12 = [(PUPhotosGridViewController *)self photoCollectionAtIndex:0];
    photosDataSource = [(PUPhotosGridViewController *)self photosDataSource];
    v9 = [photosDataSource assetsInSection:0];

    v10 = [(PUPhotosGridViewController *)self _slideshowNavigationControllerForFetchResult:v9 assetCollection:v12];
    [v10 setModalTransitionStyle:2];
    [(PUPhotosGridViewController *)self presentViewController:v10 animated:1 completion:0];
  }
}

- (void)sender:(id)sender shareAssetsInFetchResult:(id)result forAssetCollection:(id)collection withCompletion:(id)completion
{
  senderCopy = sender;
  resultCopy = result;
  collectionCopy = collection;
  completionCopy = completion;
  objc_initWeak(location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__PUPhotosGridViewController_sender_shareAssetsInFetchResult_forAssetCollection_withCompletion___block_invoke;
  aBlock[3] = &unk_1E7B7CA80;
  aBlock[4] = self;
  v14 = collectionCopy;
  v50 = v14;
  v15 = _Block_copy(aBlock);
  v16 = [(PUPhotosGridViewController *)self _sharableAssetsTypeInFetchResult:resultCopy];
  if (v16 == 2)
  {
    v37 = completionCopy;
    v38 = senderCopy;
    v19 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
    v20 = MEMORY[0x1E69DC648];
    v21 = PULocalizedString(@"SHARE_THIS_MOMENT");
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __96__PUPhotosGridViewController_sender_shareAssetsInFetchResult_forAssetCollection_withCompletion___block_invoke_2;
    v43[3] = &unk_1E7B7CAA8;
    objc_copyWeak(&v48, location);
    v22 = v14;
    v44 = v22;
    v47 = v15;
    v23 = resultCopy;
    v45 = v23;
    v24 = v38;
    v46 = v24;
    v25 = [v20 actionWithTitle:v21 style:0 handler:v43];
    [v19 addAction:v25];

    v26 = MEMORY[0x1E69DC648];
    v27 = PULocalizedString(@"SHARE_PLAY_SLIDESHOW");
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __96__PUPhotosGridViewController_sender_shareAssetsInFetchResult_forAssetCollection_withCompletion___block_invoke_3;
    v39[3] = &unk_1E7B7CAD0;
    objc_copyWeak(&v42, location);
    v39[4] = self;
    v40 = v22;
    v41 = v23;
    v28 = [v26 actionWithTitle:v27 style:0 handler:v39];
    [v19 addAction:v28];

    v29 = MEMORY[0x1E69DC648];
    v30 = PULocalizedString(@"CANCEL");
    v31 = [v29 actionWithTitle:v30 style:1 handler:0];
    [v19 addAction:v31];

    popoverPresentationController = [v19 popoverPresentationController];
    [popoverPresentationController setSourceView:v24];
    [v24 bounds];
    [popoverPresentationController setSourceRect:?];
    [popoverPresentationController setDelegate:self];
    v33 = MEMORY[0x1E69DD250];
    view = [(PUPhotosGridViewController *)self view];
    v35 = [v33 userInterfaceLayoutDirectionForSemanticContentAttribute:{objc_msgSend(view, "semanticContentAttribute")}];

    if (v35)
    {
      v36 = 4;
    }

    else
    {
      v36 = 8;
    }

    [popoverPresentationController setPermittedArrowDirections:v36];
    [(PUPhotosGridViewController *)self presentViewController:v19 animated:1 completion:0];
    [(PUPhotosGridViewController *)self _setShareAssetsPopoverController:popoverPresentationController];

    objc_destroyWeak(&v42);
    objc_destroyWeak(&v48);

    completionCopy = v37;
    senderCopy = v38;
  }

  else if (v16 == 1)
  {
    photosDataSource = [(PUPhotosGridViewController *)self photosDataSource];
    v18 = [photosDataSource sectionForAssetCollection:v14];

    if (v18 != 0x7FFFFFFFFFFFFFFFLL)
    {
      (*(v15 + 2))(v15, resultCopy);
    }
  }

  objc_destroyWeak(location);
}

void __96__PUPhotosGridViewController_sender_shareAssetsInFetchResult_forAssetCollection_withCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _selectionManagerWithSharableAssetsInFetchResult:a2 forAssetCollection:*(a1 + 40)];
  v3 = [*(a1 + 32) _activitySharingControllerWithSelectionManager:v4];
  [*(a1 + 32) _presentActivitySharingController:v3 completion:0];
}

void __96__PUPhotosGridViewController_sender_shareAssetsInFetchResult_forAssetCollection_withCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v2 = [WeakRetained photosDataSource];
  v3 = [v2 sectionForAssetCollection:*(a1 + 32)];

  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    (*(*(a1 + 56) + 16))();
  }

  [WeakRetained _setShareAssetsSender:*(a1 + 48)];
}

void __96__PUPhotosGridViewController_sender_shareAssetsInFetchResult_forAssetCollection_withCompletion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [*(a1 + 32) photosDataSource];
  v3 = [v2 sectionForAssetCollection:*(a1 + 40)];

  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [WeakRetained _slideshowNavigationControllerForFetchResult:*(a1 + 48) assetCollection:*(a1 + 40)];
    [v4 setModalTransitionStyle:2];
    [WeakRetained presentViewController:v4 animated:1 completion:0];
  }
}

- (void)_shareButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  presentedViewController = [(PUPhotosGridViewController *)self presentedViewController];

  if (!presentedViewController)
  {
    [(PUPhotosGridViewController *)self sender:pressedCopy shareSelectedAssetsWithCompletion:0];
  }
}

- (void)_presentShareSheetWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = +[PUAssetActionManager actionManagerLog];
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ShareSheetDisplayLatency", "", buf, 2u);
  }

  _selectionManagerWithSelectedSharableAssets = [(PUPhotosGridViewController *)self _selectionManagerWithSelectedSharableAssets];
  selectedAssets = [_selectionManagerWithSelectedSharableAssets selectedAssets];
  v9 = [selectedAssets count];

  if (v9)
  {
    if (os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B36F3000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ShareSheetDisplayDuration", " enableTelemetry=YES ", buf, 2u);
    }

    v10 = [(PUPhotosGridViewController *)self _activitySharingControllerWithSelectionManager:_selectionManagerWithSelectedSharableAssets];
    activityViewController = [v10 activityViewController];
    if (activityViewController)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_8:
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __63__PUPhotosGridViewController__presentShareSheetWithCompletion___block_invoke;
        v20[3] = &unk_1E7B80DD0;
        v21 = v6;
        [activityViewController setReadyToInteractHandler:v20];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __63__PUPhotosGridViewController__presentShareSheetWithCompletion___block_invoke_558;
        v18[3] = &unk_1E7B80C88;
        v19 = completionCopy;
        [(PUPhotosGridViewController *)self _presentActivitySharingController:v10 completion:v18];

        goto LABEL_11;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = objc_opt_class();
      v14 = NSStringFromClass(v15);
      px_descriptionForAssertionMessage = [activityViewController px_descriptionForAssertionMessage];
      currentHandler2 = currentHandler;
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:2506 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"activitySharingController.activityViewController", v14, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:2506 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"activitySharingController.activityViewController", v14}];
    }

    goto LABEL_8;
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }

LABEL_11:
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ShareSheetDisplayLatency", "", buf, 2u);
  }
}

void __63__PUPhotosGridViewController__presentShareSheetWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (os_signpost_enabled(v1))
  {
    *v2 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v1, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ShareSheetDisplayDuration", " enableTelemetry=YES ", v2, 2u);
  }
}

uint64_t __63__PUPhotosGridViewController__presentShareSheetWithCompletion___block_invoke_558(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)_presentActivitySharingController:(id)controller completion:(id)completion
{
  completionCopy = completion;
  controllerCopy = controller;
  [(PUPhotosGridViewController *)self setActivitySharingController:controllerCopy];
  activityViewController = [controllerCopy activityViewController];

  [(PUPhotosGridViewController *)self presentViewController:activityViewController animated:1 completion:completionCopy];
}

- (id)_activitySharingControllerWithSelectionManager:(id)manager
{
  managerCopy = manager;
  collectionListFetchResult = [(PUPhotosGridViewController *)self collectionListFetchResult];
  photosDataSource = [(PUPhotosGridViewController *)self photosDataSource];
  fetchResultsByAssetCollection = [photosDataSource fetchResultsByAssetCollection];

  v8 = [[PUActivitySharingConfiguration alloc] initWithCollectionsFetchResult:collectionListFetchResult selectionManager:managerCopy];
  [(PUActivitySharingConfiguration *)v8 setAssetsFetchResultsByAssetCollection:fetchResultsByAssetCollection];
  photosDataSource2 = [(PUPhotosGridViewController *)self photosDataSource];
  [(PUActivitySharingConfiguration *)v8 setPhotosDataSource:photosDataSource2];

  v10 = [[PUActivitySharingController alloc] initWithActivitySharingConfiguration:v8];
  [(PUActivitySharingController *)v10 setDelegate:self];

  return v10;
}

- (id)_selectionManagerWithSharableAssetsInFetchResult:(id)result forAssetCollection:(id)collection
{
  collectionCopy = collection;
  resultCopy = result;
  v8 = [[PUPhotoSelectionManager alloc] initWithOptions:0];
  [(PUPhotoSelectionManager *)v8 setDataSource:self];
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __98__PUPhotosGridViewController__selectionManagerWithSharableAssetsInFetchResult_forAssetCollection___block_invoke;
  v13[3] = &unk_1E7B7CA58;
  v13[4] = self;
  v10 = collectionCopy;
  v14 = v10;
  v11 = indexSet;
  v15 = v11;
  [resultCopy enumerateObjectsUsingBlock:v13];

  if ([v11 count])
  {
    [(PUPhotoSelectionManager *)v8 selectAssetsAtIndexes:v11 inAssetCollection:v10];
  }

  return v8;
}

void __98__PUPhotosGridViewController__selectionManagerWithSharableAssetsInFetchResult_forAssetCollection___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  if ([*(a1 + 32) _canShareAsset:?])
  {
    v5 = [*(a1 + 32) photosDataSource];
    v6 = [v5 indexForAsset:v7 inCollection:*(a1 + 40) hintIndex:a3];

    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [*(a1 + 48) addIndex:v6];
    }
  }
}

- (unint64_t)_sharableAssetsTypeInFetchResult:(id)result
{
  resultCopy = result;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__PUPhotosGridViewController__sharableAssetsTypeInFetchResult___block_invoke;
  v7[3] = &unk_1E7B7CA30;
  v7[4] = self;
  v7[5] = v8;
  v7[6] = &v9;
  [resultCopy enumerateObjectsUsingBlock:v7];
  v5 = v10[3];
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(&v9, 8);

  return v5;
}

uint64_t __63__PUPhotosGridViewController__sharableAssetsTypeInFetchResult___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) _canShareAsset:a2];
  if (result)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
    v7 = *(*(a1 + 48) + 8);
    if (*(*(*(a1 + 40) + 8) + 24) < 2uLL)
    {
      *(v7 + 24) = 1;
    }

    else
    {
      *(v7 + 24) = 2;
      *a4 = 1;
    }
  }

  return result;
}

- (id)_selectionManagerWithSelectedSharableAssets
{
  v3 = [[PUPhotoSelectionManager alloc] initWithOptions:0];
  [(PUPhotoSelectionManager *)v3 setDataSource:self];
  collectionListFetchResult = [(PUPhotosGridViewController *)self collectionListFetchResult];
  photoSelectionManager = [(PUPhotosGridViewController *)self photoSelectionManager];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__PUPhotosGridViewController__selectionManagerWithSelectedSharableAssets__block_invoke;
  v11[3] = &unk_1E7B7CA08;
  v11[4] = self;
  v12 = collectionListFetchResult;
  v6 = v3;
  v13 = v6;
  v7 = collectionListFetchResult;
  [photoSelectionManager enumerateSelectedAssetsWithAssetCollectionOrdering:v7 block:v11];

  v8 = v13;
  v9 = v6;

  return v6;
}

void __73__PUPhotosGridViewController__selectionManagerWithSelectedSharableAssets__block_invoke(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ([a1[4] _canShareAsset:a2])
  {
    v7 = [a1[5] objectAtIndex:a4];
    [a1[6] selectAssetAtIndex:a3 inAssetCollection:v7];
  }
}

- (void)_handleSelectionButton:(id)button
{
  presentedViewController = [(PUPhotosGridViewController *)self presentedViewController];

  if (!presentedViewController)
  {
    _areAllAssetsSelected = [(PUPhotosGridViewController *)self _areAllAssetsSelected];
    photoSelectionManager = [(PUPhotosGridViewController *)self photoSelectionManager];
    collectionListFetchResult = [(PUPhotosGridViewController *)self collectionListFetchResult];
    if (_areAllAssetsSelected)
    {
      [photoSelectionManager deselectAllAssetsInAssetCollections:collectionListFetchResult];
    }

    else
    {
      [photoSelectionManager selectAllAssetsInAssetCollections:collectionListFetchResult];
    }

    [(PUPhotosGridViewController *)self _updateCollectionViewMultipleSelection];

    [(PUPhotosGridViewController *)self updatePeripheralInterfaceAnimated:0];
  }
}

- (void)_handleCancelButton:(id)button
{
  presentedViewController = [(PUPhotosGridViewController *)self presentedViewController];

  if (!presentedViewController)
  {

    [(PUPhotosGridViewController *)self setEditing:0 animated:1];
  }
}

- (void)_handleSelectSessionCancelButton:(id)button
{
  presentedViewController = [(PUPhotosGridViewController *)self presentedViewController];

  if (!presentedViewController)
  {
    sessionInfo = [(PUPhotosGridViewController *)self sessionInfo];
    [sessionInfo setStatus:2];
  }
}

- (void)_handleSelectSessionDoneButton:(id)button
{
  presentedViewController = [(PUPhotosGridViewController *)self presentedViewController];

  if (!presentedViewController)
  {
    sessionInfo = [(PUPhotosGridViewController *)self sessionInfo];
    [sessionInfo setStatus:1];
  }
}

- (void)paste:(id)paste
{
  pasteCopy = paste;
  _menuIndexPath = [(PUPhotosGridViewController *)self _menuIndexPath];
  v7 = -[PUPhotosGridViewController photoCollectionAtIndex:](self, "photoCollectionAtIndex:", [_menuIndexPath section]);
  if ([v7 canPerformEditOperation:3])
  {
    if (!_menuIndexPath)
    {
LABEL_6:
      v8 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:2329 description:{@"Attempting to paste into a non-editable collection: %@", v7}];

    if (!_menuIndexPath)
    {
      goto LABEL_6;
    }
  }

  if (!self->_isMenuIndexPathExact)
  {
    goto LABEL_6;
  }

  v8 = [(PUPhotosGridViewController *)self assetAtIndexPath:_menuIndexPath];
LABEL_7:
  generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
  px_assets = [generalPasteboard px_assets];

  if ([px_assets count] > 1 || objc_msgSend(px_assets, "count") == 1 && (objc_msgSend(px_assets, "lastObject"), v12 = objc_claimAutoreleasedReturnValue(), v12, v12 != v8))
  {
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x2020000000;
    if (v8)
    {
      item = [_menuIndexPath item];
    }

    else
    {
      item = 0x7FFFFFFFFFFFFFFFLL;
    }

    v24[3] = item;
    v14 = [(PUPhotosGridViewController *)self assetsInAssetCollection:v7];
    photoLibrary = [v14 photoLibrary];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __36__PUPhotosGridViewController_paste___block_invoke;
    v17[3] = &unk_1E7B7C9E0;
    v18 = v7;
    v16 = v14;
    v19 = v16;
    v20 = px_assets;
    v21 = v8;
    v22 = _menuIndexPath;
    v23 = v24;
    [photoLibrary performChanges:v17 completionHandler:0];

    _Block_object_dispose(v24, 8);
  }

  [(PUPhotosGridViewController *)self _setMenuIndexPath:0];
  self->_showingMenu = 0;
}

void __36__PUPhotosGridViewController_paste___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6978660] changeRequestForAssetCollection:*(a1 + 32) assets:*(a1 + 40)];
  v3 = [MEMORY[0x1E696AD50] indexSet];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = *(a1 + 48);
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(a1 + 40) indexOfObject:{*(*(&v17 + 1) + 8 * i), v17}];
        if (v9 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v3 addIndex:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    [v2 removeAssets:*(a1 + 48)];
  }

  if ([v3 count] && *(a1 + 56))
  {
    v10 = [*(a1 + 64) item];
    if ([v3 containsIndex:v10])
    {
      v11 = *(*(a1 + 72) + 8);
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = [v3 countOfIndexesInRange:{0, v10}];
      v11 = *(*(a1 + 72) + 8);
      v12 = *(v11 + 24) - v13;
    }

    *(v11 + 24) = v12;
  }

  v14 = *(*(*(a1 + 72) + 8) + 24);
  v15 = *(a1 + 48);
  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v2 addAssets:v15];
  }

  else
  {
    v16 = [MEMORY[0x1E696AC90] indexSetWithIndex:?];
    [v2 insertAssets:v15 atIndexes:v16];
  }
}

- (void)copy:(id)copy
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = PLUIGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = objc_opt_class();
    v4 = v6;
    _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEFAULT, "Please stop calling copy: on %@, it does not support copy anymore, but the method is still implemented to avoid crashing", &v5, 0xCu);
  }
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (sel_paste_ == action && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    _menuIndexPath = [(PUPhotosGridViewController *)self _menuIndexPath];
    if (_menuIndexPath || [(PUPhotosGridViewController *)self _hasAtLeastOneContainer])
    {
      v8 = -[PUPhotosGridViewController photoCollectionAtIndex:](self, "photoCollectionAtIndex:", [_menuIndexPath section]);
      if ([v8 canPerformEditOperation:3])
      {
        generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
        px_containsAssets = [generalPasteboard px_containsAssets];
      }

      else
      {
        px_containsAssets = 0;
      }
    }

    else
    {
      px_containsAssets = 0;
    }

    v11 = (sel_copy_ != action) & px_containsAssets;
  }

  else if (sel_copy_ == action)
  {
    v11 = 0;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = PUPhotosGridViewController;
    v11 = [(PUPhotosGridViewController *)&v13 canPerformAction:action withSender:senderCopy];
  }

  return v11;
}

- (void)scrollViewSpeedometer:(id)speedometer regimeDidChange:(int64_t)change from:(int64_t)from
{
  speedometerCopy = speedometer;
  if (change <= 3)
  {
    v8 = speedometerCopy;
    [(PUPhotosGridViewController *)self _setMaximumNumberOfRowsToPreheat:qword_1B3D0D4F8[change]];
    speedometerCopy = v8;
  }
}

- (id)indexPathsForPreheatingInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v24 = *MEMORY[0x1E69E9840];
  gridLayout = [(PUPhotosGridViewController *)self gridLayout];
  v8 = [gridLayout layoutAttributesForElementsInRect:{x, y, width, height}];

  array = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        representedElementKind = [v15 representedElementKind];

        if (!representedElementKind)
        {
          indexPath = [v15 indexPath];
          if (indexPath)
          {
            [array addObject:indexPath];
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  return array;
}

- (void)endBatchPreheating
{
  v3 = [(PUPhotosGridViewController *)self _batchPreheatingCount]- 1;
  [(PUPhotosGridViewController *)self _setBatchPreheatingCount:v3];
  if (!v3)
  {

    [(PUPhotosGridViewController *)self preheatAssets];
  }
}

- (void)beginBatchPreheating
{
  v3 = [(PUPhotosGridViewController *)self _batchPreheatingCount]+ 1;

  [(PUPhotosGridViewController *)self _setBatchPreheatingCount:v3];
}

- (void)preheatAssetsWithPrefetchingDisabled:(BOOL)disabled
{
  if ([(PUPhotosGridViewController *)self isPreheatingEnabled])
  {
    if ([(PUPhotosGridViewController *)self px_isVisible])
    {
      collectionView = [(PUPhotosGridViewController *)self collectionView];
      if (collectionView)
      {
        v6 = collectionView;
        mainGridLayout = [(PUPhotosGridViewController *)self mainGridLayout];
        collectionView2 = [mainGridLayout collectionView];

        if (collectionView2)
        {
          if ([(PUPhotosGridViewController *)self _batchPreheatingCount]<= 0)
          {
            collectionView3 = [(PUPhotosGridViewController *)self collectionView];
            [(PUPhotosGridViewController *)self contentOffsetForPreheating];
            v11 = v10;
            v13 = v12;
            [collectionView3 bounds];
            v15 = v14;
            v17 = v16;
            mainGridLayout2 = [(PUPhotosGridViewController *)self mainGridLayout];
            [(PUPhotosGridViewController *)self imageRequestItemSize];
            v20 = v19;
            [(PUPhotosGridViewController *)self _previousPreheatContentOffset];
            v22 = v21;
            [(PUPhotosGridViewController *)self _previousPrefetchContentOffset];
            if (v13 - v22 >= 0.0)
            {
              v24 = v13 - v22;
            }

            else
            {
              v24 = -(v13 - v22);
            }

            if (v24 > v20 * 0.5)
            {
              goto LABEL_13;
            }

            v25 = v13 - v23;
            if (v25 < 0.0)
            {
              v25 = -v25;
            }

            if (v25 > v20 * 0.5)
            {
LABEL_13:
              [(PUPhotosGridViewController *)self _setPreviousPreheatContentOffset:v11, v13];
              v26 = v20 * [(PUPhotosGridViewController *)self _maximumNumberOfRowsToPreheat];
              if (v24 < v26)
              {
                v26 = v24;
              }

              if (v26 >= v17)
              {
                v27 = v26;
              }

              else
              {
                v27 = v17;
              }

              v28 = *MEMORY[0x1E69DDCE0];
              v29 = *(MEMORY[0x1E69DDCE0] + 8);
              v30 = -v27;
              v31 = -v26;
              v32 = v27 * -4.0;
              if (v13 <= v22)
              {
                v33 = v32;
              }

              else
              {
                v33 = v30;
              }

              if (v13 <= v22)
              {
                v28 = v31;
              }

              if (v13 < v22)
              {
                v31 = *(MEMORY[0x1E69DDCE0] + 16);
                v32 = v30;
              }

              v82 = v11;
              v83 = v15;
              v34 = v11 + v29;
              v35 = v13 + v28;
              v36 = v15 - (v29 + *(MEMORY[0x1E69DDCE0] + 24));
              v37 = v17 - (v28 + v31);
              v81 = v13;
              v38 = v13 + v33;
              v39 = v17 - (v33 + v32);
              [(PUPhotosGridViewController *)self contentSizeForPreheating];
              if (v35 >= 0.0)
              {
                v41 = v35;
              }

              else
              {
                v41 = 0.0;
              }

              if (v40 > 0.0 && v37 + v41 > v40)
              {
                v42 = v40 - v41;
              }

              else
              {
                v42 = v37;
              }

              if (v38 >= 0.0)
              {
                v43 = v38;
              }

              else
              {
                v43 = 0.0;
              }

              v44 = v40 - v43;
              if (v40 <= 0.0 || v39 + v43 <= v40)
              {
                v44 = v39;
              }

              v79 = v44;
              v80 = v43;
              [(PUPhotosGridViewController *)self _previousPreheatRect];
              v46 = v45;
              v48 = v47;
              v50 = v49;
              v84 = v51;
              [(PUPhotosGridViewController *)self _setPreviousPreheatRect:v34, v41, v36, v42];
              photosDataSource = [(PUPhotosGridViewController *)self photosDataSource];
              v105 = 0;
              v106 = &v105;
              v107 = 0x3032000000;
              v108 = __Block_byref_object_copy__66366;
              v109 = __Block_byref_object_dispose__66367;
              v110 = 0;
              v99 = 0;
              v100 = &v99;
              v101 = 0x3032000000;
              v102 = __Block_byref_object_copy__66366;
              v103 = __Block_byref_object_dispose__66367;
              v104 = 0;
              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 3221225472;
              aBlock[2] = __67__PUPhotosGridViewController_preheatAssetsWithPrefetchingDisabled___block_invoke_530;
              aBlock[3] = &unk_1E7B7C968;
              v53 = mainGridLayout2;
              v96 = v53;
              v97 = &v105;
              v98 = &v99;
              v54 = _Block_copy(aBlock);
              v92[0] = MEMORY[0x1E69E9820];
              v92[1] = 3221225472;
              v92[2] = __67__PUPhotosGridViewController_preheatAssetsWithPrefetchingDisabled___block_invoke_2;
              v92[3] = &unk_1E7B7C990;
              v94 = 1;
              v55 = v54;
              v93 = v55;
              PUDiffVerticalRects(v92, v46, v48, v50, v84, v34, v41, v36, v42);
              v56 = [photosDataSource approximateAssetsAtIndexPaths:v106[5]];
              v78 = mainGridLayout2;
              v85 = collectionView3;
              v57 = [photosDataSource approximateAssetsAtIndexPaths:v100[5]];
              v58 = objc_opt_new();
              [v58 setDeliveryMode:{-[PUPhotosGridViewController imageDeliveryMode](self, "imageDeliveryMode")}];
              v59 = [(PUPhotosGridViewController *)self cellFillMode]< 2;
              [(PUPhotosGridViewController *)self imageRequestItemPixelSize];
              v61 = v60;
              v63 = v62;
              _cachingImageManager = [(PUPhotosGridViewController *)self _cachingImageManager];
              [_cachingImageManager startCachingImagesForAssets:v56 targetSize:v59 contentMode:v58 options:{v61, v63}];

              _cachingImageManager2 = [(PUPhotosGridViewController *)self _cachingImageManager];
              [_cachingImageManager2 stopCachingImagesForAssets:v57 targetSize:v59 contentMode:v58 options:{v61, v63}];

              if (!disabled)
              {
                [(PUPhotosGridViewController *)self _previousPrefetchRect];
                v67 = v66;
                v69 = v68;
                v71 = v70;
                v73 = v72;
                [(PUPhotosGridViewController *)self _setPreviousPrefetchRect:v82 + 0.0, v80, v83, v79];
                [(PUPhotosGridViewController *)self _setPreviousPrefetchContentOffset:v82, v81];
                array = [MEMORY[0x1E695DF70] array];
                array2 = [MEMORY[0x1E695DF70] array];
                v86[0] = MEMORY[0x1E69E9820];
                v86[1] = 3221225472;
                v86[2] = __67__PUPhotosGridViewController_preheatAssetsWithPrefetchingDisabled___block_invoke_3;
                v86[3] = &unk_1E7B7C9B8;
                v87 = v53;
                v90 = v82;
                v91 = v81;
                v76 = array;
                v88 = v76;
                v77 = array2;
                v89 = v77;
                PUDiffVerticalRects(v86, v67, v69, v71, v73, v82 + 0.0, v80, v83, v79);
                [photosDataSource prefetchApproximateAssetsAtIndexPaths:v76 reverseOrder:1];
                [photosDataSource prefetchApproximateAssetsAtIndexPaths:v77 reverseOrder:0];
              }

              _Block_object_dispose(&v99, 8);
              _Block_object_dispose(&v105, 8);

              collectionView3 = v85;
              mainGridLayout2 = v78;
            }
          }
        }
      }
    }
  }
}

uint64_t __67__PUPhotosGridViewController_preheatAssetsWithPrefetchingDisabled___block_invoke_530(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) assetIndexPathsForElementsInRect:?];
  if (v4)
  {
    v5 = a2 == 0;
  }

  else
  {
    v5 = 1;
  }

  v16 = v4;
  if (v5)
  {
    v6 = v4;
    if (!v4 || (a2 & 1) != 0)
    {
      goto LABEL_12;
    }

    v7 = *(a1 + 48);
    v9 = a1 + 48;
    v8 = v7;
  }

  else
  {
    v10 = *(a1 + 40);
    v9 = a1 + 40;
    v8 = v10;
  }

  v11 = *(*(v8 + 8) + 40);
  if (!v11)
  {
    v12 = [MEMORY[0x1E695DF70] array];
    v13 = *(*v9 + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    v11 = *(*(*v9 + 8) + 40);
  }

  v4 = [v11 addObjectsFromArray:v16];
  v6 = v16;
LABEL_12:

  return MEMORY[0x1EEE66BB8](v4, v6);
}

uint64_t __67__PUPhotosGridViewController_preheatAssetsWithPrefetchingDisabled___block_invoke_2(uint64_t result, char a2)
{
  if ((a2 & 1) != 0 || *(result + 40) == 1)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __67__PUPhotosGridViewController_preheatAssetsWithPrefetchingDisabled___block_invoke_3(uint64_t a1, int a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  if (a2)
  {
    v13 = [*(a1 + 32) assetIndexPathsForElementsInRect:?];
    v15.origin.x = a3;
    v15.origin.y = a4;
    v15.size.width = a5;
    v15.size.height = a6;
    MinY = CGRectGetMinY(v15);
    v12 = 40;
    if (*(a1 + 64) < MinY)
    {
      v12 = 48;
    }

    [*(a1 + v12) addObjectsFromArray:v13];
  }
}

- (CGSize)contentSizeForPreheating
{
  mainGridLayout = [(PUPhotosGridViewController *)self mainGridLayout];
  [mainGridLayout collectionViewContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGPoint)contentOffsetForPreheating
{
  collectionView = [(PUPhotosGridViewController *)self collectionView];
  [collectionView contentOffset];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)resetPreheating
{
  [(PHCachingImageManager *)self->__cachingImageManager stopCachingImagesForAllAssets];
  [(PUPhotosGridViewController *)self _setPreviousPreheatContentOffset:1.79769313e308, 1.79769313e308];
  [(PUPhotosGridViewController *)self _setPreviousPrefetchContentOffset:1.79769313e308, 1.79769313e308];
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  [(PUPhotosGridViewController *)self _setPreviousPreheatRect:*MEMORY[0x1E695F058], v4, v5, v6];

  [(PUPhotosGridViewController *)self _setPreviousPrefetchRect:v3, v4, v5, v6];
}

- (void)scrollViewDidScrollToTop:(id)top
{
  topCopy = top;
  _collectionViewSpeedometer = [(PUPhotosGridViewController *)self _collectionViewSpeedometer];
  [_collectionViewSpeedometer scrollViewDidScrollToTop:topCopy];
}

- (void)scrollViewWillScrollToTop:(id)top
{
  topCopy = top;
  _collectionViewSpeedometer = [(PUPhotosGridViewController *)self _collectionViewSpeedometer];
  [_collectionViewSpeedometer scrollViewWillScrollToTop:topCopy];

  [(PUPhotosGridViewController *)self _userDidStartScrolling];
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  _collectionViewSpeedometer = [(PUPhotosGridViewController *)self _collectionViewSpeedometer];
  [_collectionViewSpeedometer scrollViewDidEndDecelerating:deceleratingCopy];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  decelerateCopy = decelerate;
  draggingCopy = dragging;
  _collectionViewSpeedometer = [(PUPhotosGridViewController *)self _collectionViewSpeedometer];
  [_collectionViewSpeedometer scrollViewDidEndDragging:draggingCopy willDecelerate:decelerateCopy];
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  _collectionViewSpeedometer = [(PUPhotosGridViewController *)self _collectionViewSpeedometer];
  [_collectionViewSpeedometer scrollViewWillBeginDragging:draggingCopy];

  [(PUPhotosGridViewController *)self _clearAutomaticContentOffsetSnapshot];

  [(PUPhotosGridViewController *)self _userDidStartScrolling];
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  _collectionViewSpeedometer = [(PUPhotosGridViewController *)self _collectionViewSpeedometer];
  [_collectionViewSpeedometer scrollViewDidScroll:scrollCopy];

  [(PUPhotosGridViewController *)self preheatAssets];
  oneUpPresentationHelper = [(PUPhotosGridViewController *)self oneUpPresentationHelper];
  [oneUpPresentationHelper presentingViewControllerScrollViewDidScroll:scrollCopy];

  [(PUPhotosGridViewController *)self setPendingProcessDataSourceUpdateBlock:0];
  collectionView = [(PUPhotosGridViewController *)self collectionView];
  [collectionView bounds];
  v8 = v7;
  [collectionView adjustedContentInset];
  v10 = v8 + v9 < 0.0;
  photosDataSource = [(PUPhotosGridViewController *)self photosDataSource];
  [photosDataSource setAllowNextChangeDeliveryOnAllRunLoopModes:v10];
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PUPhotosGridViewController;
  [(PUPhotosGridViewController *)&v5 viewDidLayoutSubviews];
  pendingNavigationBlock = self->_pendingNavigationBlock;
  if (pendingNavigationBlock)
  {
    pendingNavigationBlock[2]();
    v4 = self->_pendingNavigationBlock;
    self->_pendingNavigationBlock = 0;
  }
}

- (void)viewWillLayoutSubviews
{
  v19.receiver = self;
  v19.super_class = PUPhotosGridViewController;
  [(PUPhotosGridViewController *)&v19 viewWillLayoutSubviews];
  if ([(PUPhotosGridViewController *)self updateSpec])
  {
    gridSpec = [(PUPhotosGridViewController *)self gridSpec];
    wantsCustomNavigationTransition = [gridSpec wantsCustomNavigationTransition];

    if (wantsCustomNavigationTransition)
    {
      [(UIViewController *)self pu_restoreNavigationTransition];
    }

    else
    {
      [(UIViewController *)self pu_removeNavigationTransition];
    }

    [(PUPhotosGridViewController *)self _updateLayoutReferenceValues];
    [(PUPhotosGridViewController *)self updateInterfaceForModelReloadAnimated:0];
  }

  else
  {
    [(PUPhotosGridViewController *)self _updateLayoutReferenceValues];
  }

  if (!self->_didScrollToInitialPosition)
  {
    if ([(PUPhotosGridViewController *)self initiallyScrolledToBottom])
    {
      mainGridLayout = [(PUPhotosGridViewController *)self mainGridLayout];
      if ([(PUPhotosGridViewController *)self wantsGlobalFooter])
      {
        globalFooterIndexPath = [mainGridLayout globalFooterIndexPath];
        v7 = [mainGridLayout layoutAttributesForSupplementaryViewOfKind:@"PUGridGlobalFooter" atIndexPath:globalFooterIndexPath];
      }

      else
      {
        v7 = 0;
      }

      collectionView = [(PUPhotosGridViewController *)self collectionView];
      v9 = collectionView;
      if (v7)
      {
        [collectionView contentOffset];
        v11 = v10;
        collectionViewLayout = [v9 collectionViewLayout];
        [collectionViewLayout collectionViewContentSize];
        v14 = v13;

        [v9 adjustedContentInset];
        v16 = v15;
        [v9 bounds];
        v17 = v16 + v14 - CGRectGetHeight(v20);
        [v7 frame];
        [v9 px_scrollToContentOffset:0 animated:{v11, v17 - v18}];
      }

      else
      {
        [collectionView px_scrollToEdge:3 animated:0];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v9 didScrollToInitialPosition];
      }

      [mainGridLayout invalidateLayoutForVerticalScroll];
    }

    self->_didScrollToInitialPosition = 1;
  }

  [(PUPhotosGridViewController *)self _updateContentOffsetForPendingViewSizeTransition];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  v42 = *MEMORY[0x1E69E9840];
  isEditing = [(PUPhotosGridViewController *)self isEditing];
  v39.receiver = self;
  v39.super_class = PUPhotosGridViewController;
  [(PUPhotosGridViewController *)&v39 setEditing:editingCopy animated:animatedCopy];
  if (isEditing != editingCopy)
  {
    [(PUPhotosGridViewController *)self updatePeripheralInterfaceAnimated:animatedCopy];
    if (animatedCopy)
    {
      v8 = *MEMORY[0x1E69DE248];
    }

    else
    {
      v8 = 0;
    }

    [(UIViewController *)self pu_performBarsVisibilityUpdatesWithAnimationSettings:animatedCopy, v8];
    collectionView = [(PUPhotosGridViewController *)self collectionView];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
    v11 = [indexPathsForVisibleItems countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v36;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v36 != v13)
          {
            objc_enumerationMutation(indexPathsForVisibleItems);
          }

          v15 = *(*(&v35 + 1) + 8 * i);
          if ([(PUPhotosGridViewController *)self isAddPlaceholderAtIndexPath:v15])
          {
            v16 = [collectionView cellForItemAtIndexPath:v15];
            [(PUPhotosGridViewController *)self _configureAddPlaceholderCell:v16 animated:animatedCopy];
          }
        }

        v12 = [indexPathsForVisibleItems countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v12);
    }

    if (editingCopy)
    {
      primingActivityViewController = [(PUPhotosGridViewController *)self primingActivityViewController];

      if (!primingActivityViewController)
      {
        v18 = objc_alloc(MEMORY[0x1E69CD9F8]);
        v19 = [v18 initWithActivityItems:MEMORY[0x1E695E0F0] applicationActivities:MEMORY[0x1E695E0F0]];
        [(PUPhotosGridViewController *)self setPrimingActivityViewController:v19];
      }
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      _multiSelectInteraction = [(PUPhotosGridViewController *)self _multiSelectInteraction];
      gesturesForFailureRequirements = [_multiSelectInteraction gesturesForFailureRequirements];

      v22 = [gesturesForFailureRequirements countByEnumeratingWithState:&v31 objects:v40 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v32;
        do
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v32 != v24)
            {
              objc_enumerationMutation(gesturesForFailureRequirements);
            }

            v26 = *(*(&v31 + 1) + 8 * j);
            [v26 setEnabled:0];
            [v26 setEnabled:1];
          }

          v23 = [gesturesForFailureRequirements countByEnumeratingWithState:&v31 objects:v40 count:16];
        }

        while (v23);
      }

      _removeActionSheet = [(PUPhotosGridViewController *)self _removeActionSheet];
      presentingViewController = [_removeActionSheet presentingViewController];
      [presentingViewController dismissViewControllerAnimated:1 completion:0];

      photoSelectionManager = [(PUPhotosGridViewController *)self photoSelectionManager];
      [photoSelectionManager deselectAllAssets];

      [(PUPhotosGridViewController *)self setPrimingActivityViewController:0];
    }

    if ([(PUPhotosGridViewController *)self _hasAccessibilityLargeText])
    {
      mainGridLayout = [(PUPhotosGridViewController *)self mainGridLayout];
      [mainGridLayout invalidateLayout];
    }

    [(PUPhotosGridViewController *)self _updateCollectionViewMultipleSelection];
  }
}

- (BOOL)_hasAccessibilityLargeText
{
  traitCollection = [(PUPhotosGridViewController *)self traitCollection];
  v3 = [PUInterfaceManager shouldUseAccessibilityLargeTextLayoutWithTraitCollecton:traitCollection];

  return v3;
}

- (unint64_t)supportedInterfaceOrientations
{
  gridSpec = [(PUPhotosGridViewController *)self gridSpec];
  supportedInterfaceOrientations = [gridSpec supportedInterfaceOrientations];

  return supportedInterfaceOrientations;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = PUPhotosGridViewController;
  [(PUPhotosGridViewController *)&v6 viewDidDisappear:?];
  [(PUPhotosGridViewController *)self uninstallGestureRecognizers];
  oneUpPresentationHelper = [(PUPhotosGridViewController *)self oneUpPresentationHelper];
  [oneUpPresentationHelper presentingViewControllerViewDidDisappear:disappearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = PUPhotosGridViewController;
  [(PUPhotosGridViewController *)&v6 viewWillDisappear:?];
  [(PUPhotosGridViewController *)self _saveAnchorForAutomaticContentOffsetAdjustment];
  [(PUPhotosGridViewController *)self resetPreheating];
  oneUpPresentationHelper = [(PUPhotosGridViewController *)self oneUpPresentationHelper];
  [oneUpPresentationHelper presentingViewControllerViewWillDisappear:disappearCopy];

  [(PUPhotosGridViewController *)self _updateBackButtonTitle];
  [(PUPhotosGridViewController *)self setPendingProcessDataSourceUpdateBlock:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v10.receiver = self;
  v10.super_class = PUPhotosGridViewController;
  [(PUPhotosGridViewController *)&v10 viewDidAppear:?];
  _pushedPhotoBrowserController = [(PUPhotosGridViewController *)self _pushedPhotoBrowserController];

  if (_pushedPhotoBrowserController)
  {
    collectionView = [(PUPhotosGridViewController *)self collectionView];
    [collectionView _setAutomaticContentOffsetAdjustmentEnabled:0];
  }

  [(PUPhotosGridViewController *)self _setPushedPhotoBrowserController:0];
  onViewDidAppearCompletion = [(PUPhotosGridViewController *)self onViewDidAppearCompletion];

  if (onViewDidAppearCompletion)
  {
    onViewDidAppearCompletion2 = [(PUPhotosGridViewController *)self onViewDidAppearCompletion];
    (onViewDidAppearCompletion2)[2](onViewDidAppearCompletion2, self);

    [(PUPhotosGridViewController *)self setOnViewDidAppearCompletion:0];
  }

  [(PUPhotosGridViewController *)self preheatAssets];
  [(PUPhotosGridViewController *)self installGestureRecognizers];
  oneUpPresentationHelper = [(PUPhotosGridViewController *)self oneUpPresentationHelper];
  [oneUpPresentationHelper presentingViewControllerViewDidAppear:appearCopy];
}

- (void)invalidateGridLayoutIfNecessary
{
  if ([(PUPhotosGridViewController *)self _updateTransitionWidthOnAppearance])
  {
    mainGridLayout = [(PUPhotosGridViewController *)self mainGridLayout];
    [mainGridLayout invalidateLayout];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = PUPhotosGridViewController;
  [(PUPhotosGridViewController *)&v8 viewWillAppear:?];
  updateSpec = [(PUPhotosGridViewController *)self updateSpec];
  _updateTransitionWidthOnAppearance = [(PUPhotosGridViewController *)self _updateTransitionWidthOnAppearance];
  [(PUPhotosGridViewController *)self forceDataSourceIfNeeded];
  [(PUPhotosGridViewController *)self beginBatchPreheating];
  [(PUPhotosGridViewController *)self resetPreheating];
  [(UIViewController *)self pu_setupInitialBarsVisibilityOnViewWillAppearAnimated:appearCopy];
  if (![(PUPhotosGridViewController *)self isContentViewInSyncWithModel]|| updateSpec || _updateTransitionWidthOnAppearance)
  {
    [(PUPhotosGridViewController *)self updateInterfaceForModelReloadAnimated:0];
    [(PUPhotosGridViewController *)self _updateLayoutReferenceValues];
    [(PUPhotosGridViewController *)self _performAutomaticContentOffsetAdjustment];
  }

  else
  {
    [(PUPhotosGridViewController *)self _updateLayoutReferenceValues];
    [(PUPhotosGridViewController *)self updatePeripheralInterfaceAnimated:0];
  }

  [(PUPhotosGridViewController *)self endBatchPreheating];
  oneUpPresentationHelper = [(PUPhotosGridViewController *)self oneUpPresentationHelper];
  [oneUpPresentationHelper presentingViewControllerViewWillAppear:appearCopy];
}

- (int64_t)preferredStatusBarStyle
{
  v2 = +[PUInterfaceManager currentTheme];
  topLevelStatusBarStyle = [v2 topLevelStatusBarStyle];

  return topLevelStatusBarStyle;
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = PUPhotosGridViewController;
  [(PUPhotosGridViewController *)&v17 viewDidLoad];
  collectionView = [(PUPhotosGridViewController *)self collectionView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [collectionView setPrefetchingEnabled:0];
    [collectionView setAlwaysBounceVertical:1];
    [collectionView setSelectionDelegate:self];
    [collectionView setAllowsSelection:1];
    [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PUPhotoCell"];
    [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PUAddPlaceholderCell"];
    [collectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:@"PUGridGlobalHeader" withReuseIdentifier:@"PUGridGlobalHeader"];
    [collectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:@"PUGridGlobalFooter" withReuseIdentifier:@"PUGridGlobalFooter"];
    v4 = +[PUInterfaceManager currentTheme];
    photoCollectionViewBackgroundColor = [v4 photoCollectionViewBackgroundColor];

    [collectionView setBackgroundColor:photoCollectionViewBackgroundColor];
    if ([(PUPhotosGridViewController *)self canDragOut])
    {
      [collectionView setDragSourceDelegate:self];
    }

    [collectionView setDragDestinationDelegate:self];
    mEMORY[0x1E69C3498] = [MEMORY[0x1E69C3498] sharedInstance];
    [collectionView setReorderingCadence:{objc_msgSend(mEMORY[0x1E69C3498], "reorderCadence")}];

    [collectionView setDragInteractionEnabled:1];
  }

  [(PUPhotosGridViewController *)self updateSpec];
  [(PUPhotosGridViewController *)self setExtendedLayoutIncludesOpaqueBars:1];
  [(PUPhotosGridViewController *)self _updatePhotoSelectionManager];
  [(PUPhotosGridViewController *)self _updateSubviewsOrderingAndVisibility];
  v7 = objc_opt_new();
  [(PUPhotosGridViewController *)self _setCollectionViewSpeedometer:v7];

  _collectionViewSpeedometer = [(PUPhotosGridViewController *)self _collectionViewSpeedometer];
  [_collectionViewSpeedometer setDelegate:self];

  _collectionViewSpeedometer2 = [(PUPhotosGridViewController *)self _collectionViewSpeedometer];
  [_collectionViewSpeedometer2 setMediumUpperThreshold:1000.0];

  _collectionViewSpeedometer3 = [(PUPhotosGridViewController *)self _collectionViewSpeedometer];
  [_collectionViewSpeedometer3 setMediumLowerThreshold:200.0];

  _collectionViewSpeedometer4 = [(PUPhotosGridViewController *)self _collectionViewSpeedometer];
  [_collectionViewSpeedometer4 setFastUpperThreshold:5000.0];

  _collectionViewSpeedometer5 = [(PUPhotosGridViewController *)self _collectionViewSpeedometer];
  [_collectionViewSpeedometer5 setFastLowerThreshold:1000.0];

  [(PUPhotosGridViewController *)self _setMaximumNumberOfRowsToPreheat:10];
  [(PUPhotosGridViewController *)self _updateBackButtonTitle];
  defaultFormatChooser = [MEMORY[0x1E69BF248] defaultFormatChooser];
  masterThumbnailFormat = [defaultFormatChooser masterThumbnailFormat];

  [masterThumbnailFormat sizeWithFallBackSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  [(PUPhotosGridViewController *)self _setMaximumThumbnailRequestSize:?];
  mEMORY[0x1E69C4598] = [MEMORY[0x1E69C4598] sharedScheduler];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __41__PUPhotosGridViewController_viewDidLoad__block_invoke;
  v16[3] = &unk_1E7B80DD0;
  v16[4] = self;
  [mEMORY[0x1E69C4598] scheduleMainQueueTask:v16];
}

void __41__PUPhotosGridViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  v2 = +[PUPhotosGridSettings sharedInstance];
  [v2 addKeyObserver:*(a1 + 32)];

  v3 = +[PURootSettings sharedInstance];
  [v3 addKeyObserver:*(a1 + 32)];
}

- (void)loadView
{
  if ([(PUPhotosGridViewController *)self useLayoutToLayoutNavigationTransitions])
  {
    [(PUPhotosGridViewController *)self setContentViewInSyncWithModel:1];
    v6.receiver = self;
    v6.super_class = PUPhotosGridViewController;
    [(PUPhotosGridViewController *)&v6 loadView];
  }

  else
  {
    collectionViewLayout = [(PUPhotosGridViewController *)self collectionViewLayout];
    v3 = [PUCollectionView alloc];
    v4 = [(PUCollectionView *)v3 initWithFrame:collectionViewLayout collectionViewLayout:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(PUCollectionView *)v4 setAccessibilityIdentifier:@"PhotosGridView"];
    [(PUCollectionView *)v4 setAutoresizingMask:18];
    [(PUPhotosGridViewController *)self setCollectionView:v4];
    [(PUPhotosGridViewController *)self setContentViewInSyncWithModel:0];
  }
}

- (void)uninstallGestureRecognizers
{
  longPressGestureRecognizer = [(PUPhotosGridViewController *)self longPressGestureRecognizer];
  view = [longPressGestureRecognizer view];
  longPressGestureRecognizer2 = [(PUPhotosGridViewController *)self longPressGestureRecognizer];
  [view removeGestureRecognizer:longPressGestureRecognizer2];

  photoOrStackPinchGestureRecognizer = [(PUPhotosGridViewController *)self photoOrStackPinchGestureRecognizer];
  view2 = [photoOrStackPinchGestureRecognizer view];
  photoOrStackPinchGestureRecognizer2 = [(PUPhotosGridViewController *)self photoOrStackPinchGestureRecognizer];
  [view2 removeGestureRecognizer:photoOrStackPinchGestureRecognizer2];

  _multiSelectInteraction = [(PUPhotosGridViewController *)self _multiSelectInteraction];

  if (_multiSelectInteraction)
  {
    _multiSelectInteraction2 = [(PUPhotosGridViewController *)self _multiSelectInteraction];
    view3 = [_multiSelectInteraction2 view];
    _multiSelectInteraction3 = [(PUPhotosGridViewController *)self _multiSelectInteraction];
    [view3 removeInteraction:_multiSelectInteraction3];

    [(PUPhotosGridViewController *)self set_multiSelectInteraction:0];
  }

  _contextMenuInteraction = [(PUPhotosGridViewController *)self _contextMenuInteraction];
  if (_contextMenuInteraction)
  {
    v15 = _contextMenuInteraction;
    view4 = [_contextMenuInteraction view];
    [view4 removeInteraction:v15];

    [(PUPhotosGridViewController *)self _setContextMenuInteraction:0];
    _contextMenuInteraction = v15;
  }
}

- (void)installGestureRecognizers
{
  view = [(PUPhotosGridViewController *)self view];
  longPressGestureRecognizer = [(PUPhotosGridViewController *)self longPressGestureRecognizer];
  if (!longPressGestureRecognizer)
  {
    longPressGestureRecognizer = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel_handleLongPressGesture_];
    [longPressGestureRecognizer setDelegate:self];
    [(PUPhotosGridViewController *)self setLongPressGestureRecognizer:longPressGestureRecognizer];
  }

  [view addGestureRecognizer:longPressGestureRecognizer];
  photoOrStackPinchGestureRecognizer = [(PUPhotosGridViewController *)self photoOrStackPinchGestureRecognizer];
  if (!photoOrStackPinchGestureRecognizer)
  {
    photoOrStackPinchGestureRecognizer = [[PUPhotoPinchGestureRecognizer alloc] initWithTarget:self action:sel_handlePhotoOrStackPinchGestureRecognizer_];
    [(PUPhotoPinchGestureRecognizer *)photoOrStackPinchGestureRecognizer setDelegate:self];
    [(PUPhotosGridViewController *)self _setPhotoOrStackPinchGestureRecognizer:photoOrStackPinchGestureRecognizer];
  }

  [view addGestureRecognizer:photoOrStackPinchGestureRecognizer];
  v5 = objc_alloc_init(MEMORY[0x1E69DCCA8]);
  [v5 setDelegate:self];
  [v5 setSingleTouchPanGestureHysteresis:5.0];
  collectionView = [(PUPhotosGridViewController *)self collectionView];
  [collectionView addInteraction:v5];

  [(PUPhotosGridViewController *)self set_multiSelectInteraction:v5];
  v7 = [objc_alloc(MEMORY[0x1E69DC8E0]) initWithDelegate:self];
  [(PUPhotosGridViewController *)self _setContextMenuInteraction:v7];
  collectionView2 = [(PUPhotosGridViewController *)self collectionView];
  [collectionView2 addInteraction:v7];
}

- (id)contentScrollView
{
  if ([(PUPhotosGridViewController *)self isViewLoaded])
  {
    collectionView = [(PUPhotosGridViewController *)self collectionView];
  }

  else
  {
    collectionView = 0;
  }

  return collectionView;
}

- (int64_t)_deleteActionForBarButtonItem:(id)item
{
  itemCopy = item;
  if ([(PUPhotosGridViewController *)self isTrashBinViewController])
  {
    if (self->_restoreToolbarButton == itemCopy)
    {
      v5 = 3;
    }

    else if (self->_removeToolbarButton == itemCopy)
    {
      v5 = 5;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_referenceBarButtonItemForDeleteAction:(int64_t)action
{
  v4 = &OBJC_IVAR___PUPhotosGridViewController__removeToolbarButton;
  if (!action || action == 5)
  {
LABEL_5:
    v5 = *(&self->super.super.super.super.isa + *v4);

    return v5;
  }

  if (action == 3)
  {
    v4 = &OBJC_IVAR___PUPhotosGridViewController__restoreToolbarButton;
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

- (void)_setPushedPhotoBrowserController:(id)controller
{
  objc_storeStrong(&self->__pushedPhotoBrowserController, controller);

  [(PUPhotosGridViewController *)self _updateBackButtonTitle];
}

- (id)_bestReferenceItemIndexPathWithTopBias:(BOOL)bias
{
  biasCopy = bias;
  collectionView = [(PUPhotosGridViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = collectionViewLayout;
  }

  else
  {
    v6 = 0;
  }

  collectionView2 = [collectionViewLayout collectionView];
  if (collectionView2)
  {
    window = [collectionView window];

    if (!window)
    {
LABEL_36:
      collectionView2 = 0;
      goto LABEL_39;
    }

    [collectionView bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [collectionView adjustedContentInset];
    v18 = v10 + v17;
    v20 = v12 + v19;
    v22 = v14 - (v17 + v21);
    v24 = v16 - (v19 + v23);
    if (v20 >= 0.0)
    {
      v25 = v24;
    }

    else
    {
      v25 = v20 + v24;
    }

    if (v20 >= 0.0)
    {
      v26 = v20;
    }

    else
    {
      v26 = 0.0;
    }

    numberOfSections = [collectionView numberOfSections];
    v28 = numberOfSections - 1;
    if (numberOfSections < 1 || [collectionView numberOfItemsInSection:0] < 1)
    {
LABEL_33:
      if ([collectionViewLayout conformsToProtocol:&unk_1F2C21280])
      {
        if (biasCopy)
        {
          [collectionViewLayout itemIndexPathClosestToPoint:{v18, v26}];
        }

        else
        {
          [collectionViewLayout itemIndexPathAtCenterOfRect:{v18, v26, v22, v25}];
        }
        collectionView2 = ;
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    if (v6 && [v6 firstPreparedVisualSection])
    {
      collectionView2 = 0;
    }

    else
    {
      v29 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
      v30 = [collectionViewLayout layoutAttributesForItemAtIndexPath:v29];
      v31 = v30;
      if (v30 && ([v30 frame], v41.origin.x = v18, v41.origin.y = v26, v41.size.width = v22, v41.size.height = v25, CGRectIntersectsRect(v39, v41)))
      {
        collectionView2 = v29;
      }

      else
      {
        collectionView2 = 0;
      }

      if (!v6)
      {
        lastPreparedVisualSection = v28;
LABEL_25:
        v33 = [collectionView numberOfItemsInSection:lastPreparedVisualSection];
        if (!collectionView2 && v33 >= 1)
        {
          v34 = [MEMORY[0x1E696AC88] indexPathForItem:v33 - 1 inSection:lastPreparedVisualSection];
          v35 = [collectionViewLayout layoutAttributesForItemAtIndexPath:v34];
          v36 = v35;
          if (v35 && ([v35 frame], v42.origin.x = v18, v42.origin.y = v26, v42.size.width = v22, v42.size.height = v25, CGRectIntersectsRect(v40, v42)))
          {
            collectionView2 = v34;
          }

          else
          {
            collectionView2 = 0;
          }
        }

LABEL_32:
        if (collectionView2)
        {
          goto LABEL_39;
        }

        goto LABEL_33;
      }
    }

    lastPreparedVisualSection = [v6 lastPreparedVisualSection];
    if (lastPreparedVisualSection != v28)
    {
      goto LABEL_32;
    }

    goto LABEL_25;
  }

LABEL_39:

  return collectionView2;
}

- (void)setLongPressGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if (self->_longPressGestureRecognizer != recognizerCopy)
  {
    v6 = recognizerCopy;
    objc_storeStrong(&self->_longPressGestureRecognizer, recognizer);
    recognizerCopy = v6;
  }
}

- (BOOL)isAddPlaceholderAtIndexPath:(id)path
{
  pathCopy = path;
  if (-[PUPhotosGridViewController wantsAddPlaceholderAtEndOfSection:](self, "wantsAddPlaceholderAtEndOfSection:", [pathCopy section]))
  {
    v5 = -[PUPhotosGridViewController photoCollectionAtIndex:](self, "photoCollectionAtIndex:", [pathCopy section]);
    v6 = [(PUPhotosGridViewController *)self assetsInAssetCollection:v5];
    v7 = [v6 count];

    v8 = [pathCopy item] == v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)hasScrollableContent
{
  collectionView = [(PUPhotosGridViewController *)self collectionView];
  v4 = collectionView;
  if (collectionView)
  {
    [collectionView bounds];
    v6 = v5;
    [v4 adjustedContentInset];
    v8 = v7;
    v10 = v9;
    mainGridLayout = [(PUPhotosGridViewController *)self mainGridLayout];
    collectionView2 = [mainGridLayout collectionView];

    if (collectionView2)
    {
      [mainGridLayout collectionViewContentSize];
      v14 = v13;
      [mainGridLayout globalFooterHeight];
      LOBYTE(collectionView2) = v10 + v8 + v14 - v15 > v6;
    }
  }

  else
  {
    LOBYTE(collectionView2) = 0;
  }

  return collectionView2;
}

- (id)newToolbarItems
{
  if ([(PUPhotosGridViewSupplementalToolbarProvider *)self->_supplementalToolbarProvider shouldShowToolbar])
  {
    [(PUPhotosGridViewSupplementalToolbarProvider *)self->_supplementalToolbarProvider toolbarItems];
    return objc_claimAutoreleasedReturnValue();
  }

  else
  {

    return [(PUPhotosGridViewController *)self _newEditActionItemsWithWideSpacing:1];
  }
}

- (BOOL)shouldShowTabBar
{
  if (([(PUPhotosGridViewController *)self isEditing]& 1) != 0)
  {
    return 0;
  }

  else
  {
    return ![(PUPhotosGridViewController *)self alwaysHideTabBar];
  }
}

- (id)sessionInfoForTransferredAssets:(id)assets
{
  assetsCopy = assets;
  v4 = [[PUAlbumPickerSessionInfo alloc] initWithSourceAlbum:0 transferredAssets:assetsCopy];

  return v4;
}

- (PLDateRangeFormatter)_dateRangeFormatter
{
  dateRangeFormatter = self->__dateRangeFormatter;
  if (!dateRangeFormatter)
  {
    v4 = [MEMORY[0x1E69BE3B8] autoupdatingFormatterWithPreset:{-[PUPhotosGridViewController dateRangeFormatterPreset](self, "dateRangeFormatterPreset")}];
    v5 = self->__dateRangeFormatter;
    self->__dateRangeFormatter = v4;

    dateRangeFormatter = self->__dateRangeFormatter;
  }

  return dateRangeFormatter;
}

- (id)localizedTitleForAssetCollection:(id)collection titleCategory:(int64_t *)category
{
  collectionCopy = collection;
  localizedTitle = [collectionCopy localizedTitle];
  if (![localizedTitle length])
  {
    startDate = [collectionCopy startDate];
    if (startDate)
    {
      _dateRangeFormatter = [(PUPhotosGridViewController *)self _dateRangeFormatter];
      endDate = [collectionCopy endDate];
      v11 = [_dateRangeFormatter stringFromDate:startDate toDate:endDate];

      if (category)
      {
        *category = 5;
      }
    }

    else
    {
      v11 = localizedTitle;
    }

    localizedTitle = v11;
  }

  return localizedTitle;
}

- (id)_localizedBannerTextForAsset:(id)asset isDestructive:(BOOL *)destructive
{
  assetCopy = asset;
  if (![(PUPhotosGridViewController *)self isTrashBinViewController])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:1344 description:@"expected trash bin"];
  }

  v7 = PXPhotoKitLocalizedMessageForRecentlyDeletedDaysRemainingAsset();

  return v7;
}

- (id)itemIndexPathAtPoint:(CGPoint)point outClosestMatch:(id *)match outLeftClosestMatch:(id *)closestMatch outAboveClosestMatch:(id *)aboveClosestMatch
{
  y = point.y;
  x = point.x;
  v46 = *MEMORY[0x1E69E9840];
  collectionView = [(PUPhotosGridViewController *)self collectionView];
  v12 = [collectionView indexPathForItemAtPoint:{x, y}];
  collectionViewLayout = [collectionView collectionViewLayout];
  v14 = [collectionViewLayout conformsToProtocol:&unk_1F2C21280];

  v15 = v12;
  if (!v12)
  {
    v15 = 0;
    if (v14)
    {
      collectionViewLayout2 = [collectionView collectionViewLayout];
      v15 = [collectionViewLayout2 itemIndexPathAtPoint:{x, y}];
    }
  }

  if (closestMatch)
  {
    v17 = v12 == 0;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  if ((v18 & v14) == 1)
  {
    collectionViewLayout3 = [collectionView collectionViewLayout];
    v12 = [collectionViewLayout3 maxItemIndexPathLeftOfPoint:{x, y}];

    v20 = v12;
    *closestMatch = v12;
  }

  if (aboveClosestMatch)
  {
    v21 = v12 == 0;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;
  if ((v22 & v14) == 1)
  {
    collectionViewLayout4 = [collectionView collectionViewLayout];
    v12 = [collectionViewLayout4 maxItemIndexPathAbovePoint:{x, y}];

    v24 = v12;
    *aboveClosestMatch = v12;
  }

  if (match)
  {
    v25 = v12 == 0;
  }

  else
  {
    v25 = 0;
  }

  v26 = v25;
  if ((v26 & v14) == 1)
  {
    collectionViewLayout5 = [collectionView collectionViewLayout];
    v12 = [collectionViewLayout5 itemIndexPathClosestToPoint:{x, y}];
  }

  if (match && !v12)
  {
    visibleCells = [collectionView visibleCells];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v29 = [visibleCells countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v29)
    {
      v30 = v29;
      v12 = 0;
      v31 = *v42;
      v32 = 1.79769313e308;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v42 != v31)
          {
            objc_enumerationMutation(visibleCells);
          }

          v34 = *(*(&v41 + 1) + 8 * i);
          [v34 center];
          v37 = (v36 - y) * (v36 - y) + (v35 - x) * (v35 - x);
          if (v37 < v32)
          {
            v38 = [collectionView indexPathForCell:v34];

            v32 = v37;
            v12 = v38;
          }
        }

        v30 = [visibleCells countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v30);
    }

    else
    {
      v12 = 0;
    }
  }

  if (match)
  {
    v39 = v12;
    *match = v12;
  }

  return v15;
}

- (id)localizedSelectionTitle
{
  v3 = objc_opt_class();
  photoSelectionManager = [(PUPhotosGridViewController *)self photoSelectionManager];
  v5 = [v3 _localizedSelectionTitleWithPhotoSelectionManager:photoSelectionManager];

  return v5;
}

- (void)_removeSelectedAssetsWithCompletion:(id)completion
{
  v41 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
  collectionListFetchResult = [(PUPhotosGridViewController *)self collectionListFetchResult];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = [collectionListFetchResult countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v36;
    v8 = 0x1E695D000uLL;
    do
    {
      v9 = 0;
      do
      {
        if (*v36 != v7)
        {
          objc_enumerationMutation(collectionListFetchResult);
        }

        v10 = *(*(&v35 + 1) + 8 * v9);
        photoSelectionManager = [(PUPhotosGridViewController *)self photoSelectionManager];
        v39 = v10;
        v12 = [*(v8 + 3784) arrayWithObjects:&v39 count:1];
        v13 = [photoSelectionManager selectedAssetsWithAssetCollectionOrdering:v12];

        if ([v13 count])
        {
          v14 = [(PUPhotosGridViewController *)self _assetsAllowingRemove:1 orDelete:0 fromAssets:v13];
          if ([v14 count] && objc_msgSend(v10, "canPerformEditOperation:", 2))
          {
            v15 = [(PUPhotosGridViewController *)self assetsInAssetCollection:v10];
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = __66__PUPhotosGridViewController__removeSelectedAssetsWithCompletion___block_invoke;
            aBlock[3] = &unk_1E7B809F0;
            aBlock[4] = v10;
            v33 = v15;
            v34 = v14;
            v27 = v15;
            v16 = _Block_copy(aBlock);
            v17 = v6;
            v18 = v7;
            v19 = v8;
            v20 = collectionListFetchResult;
            v21 = _Block_copy(v16);
            [v26 addObject:v21];

            collectionListFetchResult = v20;
            v8 = v19;
            v7 = v18;
            v6 = v17;
          }
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = [collectionListFetchResult countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v6);
  }

  photoLibrary = [collectionListFetchResult photoLibrary];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __66__PUPhotosGridViewController__removeSelectedAssetsWithCompletion___block_invoke_2;
  v30[3] = &unk_1E7B80DD0;
  v31 = v26;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __66__PUPhotosGridViewController__removeSelectedAssetsWithCompletion___block_invoke_3;
  v28[3] = &unk_1E7B7C940;
  v29 = completionCopy;
  v23 = completionCopy;
  v24 = v26;
  [photoLibrary performChanges:v30 completionHandler:v28];
}

void __66__PUPhotosGridViewController__removeSelectedAssetsWithCompletion___block_invoke(void *a1)
{
  v2 = [MEMORY[0x1E6978660] changeRequestForAssetCollection:a1[4] assets:a1[5]];
  [v2 removeAssets:a1[6]];
}

void __66__PUPhotosGridViewController__removeSelectedAssetsWithCompletion___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void __66__PUPhotosGridViewController__removeSelectedAssetsWithCompletion___block_invoke_3(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __66__PUPhotosGridViewController__removeSelectedAssetsWithCompletion___block_invoke_4;
  v3[3] = &unk_1E7B7E950;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_sync(MEMORY[0x1E69E96A0], v3);
}

- (BOOL)_hasAtLeastOneContainer
{
  collectionListFetchResult = [(PUPhotosGridViewController *)self collectionListFetchResult];
  v3 = [collectionListFetchResult count] != 0;

  return v3;
}

- (void)selectAssets:(id)assets fromAssetCollection:(id)collection
{
  v26 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  collectionCopy = collection;
  sessionInfo = [(PUPhotosGridViewController *)self sessionInfo];
  photoSelectionManager = [sessionInfo photoSelectionManager];
  v10 = [(PXPhotosDataSource *)self->_photosDataSource sectionForAssetCollection:collectionCopy];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = photoSelectionManager;
    v18 = [MEMORY[0x1E696AC90] indexSetWithIndex:v10];
    [(PXPhotosDataSource *)self->_photosDataSource forceAccurateSectionsIfNeeded:?];
    indexSet = [MEMORY[0x1E696AD50] indexSet];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v20 = assetsCopy;
    v12 = assetsCopy;
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        v16 = 0;
        do
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [(PXPhotosDataSource *)self->_photosDataSource indexPathForAsset:*(*(&v21 + 1) + 8 * v16) inCollection:collectionCopy];
          [indexSet addIndex:{objc_msgSend(v17, "item")}];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v14);
    }

    photoSelectionManager = v19;
    if ([indexSet count])
    {
      [v19 selectAssetsAtIndexes:indexSet inAssetCollection:collectionCopy];
    }

    assetsCopy = v20;
  }
}

- (void)_updatePhotoSelectionManager
{
  sessionInfo = [(PUPhotosGridViewController *)self sessionInfo];
  photoSelectionManager = [sessionInfo photoSelectionManager];

  v4 = photoSelectionManager;
  if (!photoSelectionManager)
  {
    photoSelectionManager2 = [(PUPhotosGridViewController *)self photoSelectionManager];
    if (photoSelectionManager2)
    {
      v4 = photoSelectionManager2;
    }

    else
    {
      v7 = [[PUPhotoSelectionManager alloc] initWithOptions:0];
      [(PUPhotoSelectionManager *)v7 setDataSource:self];
      v4 = v7;
    }
  }

  v8 = v4;
  [(PUPhotosGridViewController *)self _setPhotoSelectionManager:v4];
}

- (void)setAlternateContentView:(id)view
{
  viewCopy = view;
  alternateContentView = self->_alternateContentView;
  if (alternateContentView != viewCopy)
  {
    v8 = viewCopy;
    [(UIView *)alternateContentView removeFromSuperview];
    objc_storeStrong(&self->_alternateContentView, view);
    view = [(PUPhotosGridViewController *)self view];
    [view addSubview:self->_alternateContentView];

    alternateContentView = [(PUPhotosGridViewController *)self _updateSubviewsOrderingAndVisibility];
    viewCopy = v8;
  }

  MEMORY[0x1EEE66BB8](alternateContentView, viewCopy);
}

- (id)_barButtonSpacerWithWidth:(double)width
{
  v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:6 target:0 action:0];
  [v4 setWidth:width];

  return v4;
}

- (id)_newEditActionItemsWithWideSpacing:(BOOL)spacing
{
  spacingCopy = spacing;
  array = [MEMORY[0x1E695DF70] array];
  LODWORD(v6) = [(PUPhotosGridViewController *)self isAnyAssetSelected];
  if ([(PUPhotosGridViewController *)self _canShareContent])
  {
    if (!self->_shareToolbarButton)
    {
      v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:9 target:self action:sel__shareButtonPressed_];
      shareToolbarButton = self->_shareToolbarButton;
      self->_shareToolbarButton = v7;
    }

    photoSelectionManager = [(PUPhotosGridViewController *)self photoSelectionManager];
    selectedAssets = [photoSelectionManager selectedAssets];

    v11 = [(PUPhotosGridViewController *)self _shareableAssetsFromAssets:selectedAssets];
    v12 = [v11 count];
    if (v12 && v12 < [selectedAssets count])
    {
      v13 = PULocalizedString(@"SHARE_BUTTON_TITLE_COUNT");
      v65 = v12;
      v14 = PULocalizedStringWithValidatedFormat(v13, @"%ld");
    }

    else
    {
      v14 = PULocalizedString(@"SHARE_BUTTON_TITLE");
    }

    [(UIBarButtonItem *)self->_shareToolbarButton setTitle:v14, v65];
    [(UIBarButtonItem *)self->_shareToolbarButton setEnabled:v12 != 0];
    [array addObject:self->_shareToolbarButton];
  }

  isTrashBinViewController = [(PUPhotosGridViewController *)self isTrashBinViewController];
  canDeleteContent = [(PUPhotosGridViewController *)self canDeleteContent];
  _canRemoveContent = [(PUPhotosGridViewController *)self _canRemoveContent];
  v18 = _canRemoveContent;
  if (!canDeleteContent && !_canRemoveContent)
  {
    v67 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_35;
  }

  v66 = v6;
  if (isTrashBinViewController)
  {
    if (!self->_restoreToolbarButton)
    {
      v22 = objc_alloc(MEMORY[0x1E69DC708]);
      v23 = PULocalizedString(@"RESTORE_BUTTON_TITLE");
      v24 = [v22 initWithTitle:v23 style:0 target:self action:sel__removeButtonPressed_];
      restoreToolbarButton = self->_restoreToolbarButton;
      self->_restoreToolbarButton = v24;
    }

    removeToolbarButton = self->_removeToolbarButton;
    if (!removeToolbarButton)
    {
      v27 = objc_alloc(MEMORY[0x1E69DC708]);
      v28 = PULocalizedString(@"DELETE_BUTTON_TITLE");
      v29 = [v27 initWithTitle:v28 style:0 target:self action:sel__removeButtonPressed_];
      v30 = self->_removeToolbarButton;
      self->_removeToolbarButton = v29;

      removeToolbarButton = self->_removeToolbarButton;
    }

    if (v6)
    {
      v31 = @"DELETE_BUTTON_TITLE";
    }

    else
    {
      v31 = @"DELETE_ALL_BUTTON_TITLE";
    }

    if (v6)
    {
      v32 = @"RESTORE_BUTTON_TITLE";
    }

    else
    {
      v32 = @"RESTORE_ALL_BUTTON_TITLE";
    }

    v33 = PULocalizedString(v31);
    [(UIBarButtonItem *)removeToolbarButton setTitle:v33];

    v34 = self->_restoreToolbarButton;
    v35 = PULocalizedString(v32);
    [(UIBarButtonItem *)v34 setTitle:v35];
    goto LABEL_26;
  }

  if (!self->_removeToolbarButton)
  {
    v36 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:16 target:self action:sel__removeButtonPressed_];
    v35 = self->_removeToolbarButton;
    self->_removeToolbarButton = v36;
LABEL_26:
  }

  photoSelectionManager2 = [(PUPhotosGridViewController *)self photoSelectionManager];
  selectedAssets2 = [photoSelectionManager2 selectedAssets];
  allObjects = [selectedAssets2 allObjects];

  v6 = [(PUPhotosGridViewController *)self _assetsAllowingRemove:v18 orDelete:canDeleteContent fromAssets:allObjects];
  v40 = [v6 count];
  v41 = self->_removeToolbarButton;
  v42 = v40 != 0;
  if (v40)
  {
    v43 = &OBJC_IVAR___PUPhotosAlbumViewController__album;
  }

  else
  {
    v43 = &OBJC_IVAR___PUPhotosAlbumViewController__album;
    if (isTrashBinViewController)
    {
      v42 = [(PUPhotosGridViewController *)self isEmpty]^ 1;
    }
  }

  [(UIBarButtonItem *)v41 setEnabled:v42];
  if (spacingCopy)
  {
    v67 = 0;
    v20 = 0;
  }

  else
  {
    v44 = +[PUInterfaceManager currentTheme];
    [v44 photoCollectionToolbarTextTitleSpacerWidth];
    v46 = v45;

    v20 = [(PUPhotosGridViewController *)self _barButtonSpacerWithWidth:v46];
    v67 = [(PUPhotosGridViewController *)self _barButtonSpacerWithWidth:v46];
  }

  v21 = self->_removeToolbarButton;
  v19 = *(&self->super.super.super.super.isa + v43[108]);

  LOBYTE(v6) = v66;
LABEL_35:
  if (![(PUPhotosGridViewController *)self _canAddContent])
  {
    [(PUPhotosGridViewController *)self canAddToOtherAlbumContent];
    goto LABEL_42;
  }

  wantsAddContentInToolbar = [(PUPhotosGridViewController *)self wantsAddContentInToolbar];
  [(PUPhotosGridViewController *)self canAddToOtherAlbumContent];
  if (v6 & 1 | !wantsAddContentInToolbar)
  {
LABEL_42:
    v53 = 0;
    v52 = 0;
    goto LABEL_45;
  }

  addToolbarButton = self->_addToolbarButton;
  if (!addToolbarButton)
  {
    v49 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:0 style:0 target:self action:sel__addButtonPressed_];
    v50 = self->_addToolbarButton;
    self->_addToolbarButton = v49;

    addToolbarButton = self->_addToolbarButton;
  }

  v51 = PULocalizedString(@"ADD_FROM_ALBUM_BUTTON_TITLE");
  [(UIBarButtonItem *)addToolbarButton setTitle:v51];

  [(UIBarButtonItem *)self->_addToolbarButton setEnabled:1];
  if (spacingCopy)
  {
    v52 = 0;
  }

  else
  {
    v54 = +[PUInterfaceManager currentTheme];
    [v54 photoCollectionToolbarIconToTextSpacerWidth];
    v56 = v55;

    v52 = [(PUPhotosGridViewController *)self _barButtonSpacerWithWidth:v56];
  }

  v53 = self->_addToolbarButton;
LABEL_45:
  gridSpec = [(PUPhotosGridViewController *)self gridSpec];
  shouldPlaceDeleteInCenterToolbarPosition = [gridSpec shouldPlaceDeleteInCenterToolbarPosition];

  if (shouldPlaceDeleteInCenterToolbarPosition)
  {
    if (v20)
    {
      [array addObject:v20];
    }

    if (v21)
    {
      [array addObject:v21];
    }

    if (v67)
    {
      [array addObject:v67];
    }

    if (v19)
    {
      [array addObject:v19];
    }

    if (v52)
    {
      [array addObject:v52];
    }

    v59 = v53;
    if (!v53)
    {
      goto LABEL_70;
    }

LABEL_69:
    [array addObject:v59];
    goto LABEL_70;
  }

  if (v52)
  {
    [array addObject:v52];
  }

  if (v53)
  {
    [array addObject:v53];
  }

  if (v20)
  {
    [array addObject:v20];
  }

  if (v21)
  {
    [array addObject:v21];
  }

  if (v67)
  {
    [array addObject:v67];
  }

  v59 = v19;
  if (v19)
  {
    goto LABEL_69;
  }

LABEL_70:
  if (spacingCopy)
  {
    v60 = [array count];
    if (v60)
    {
      v61 = v60 - 1;
      if (v60 != 1)
      {
        v62 = 1;
        do
        {
          v63 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
          [array insertObject:v63 atIndex:v62];

          v62 += 2;
          --v61;
        }

        while (v61);
      }
    }
  }

  return array;
}

- (BOOL)canDisplayEditButton
{
  canDeleteContent = [(PUPhotosGridViewController *)self _allowsActions:2]|| [(PUPhotosGridViewController *)self _canAddContent]|| [(PUPhotosGridViewController *)self _canShareContent]|| [(PUPhotosGridViewController *)self _canRemoveContent]|| [(PUPhotosGridViewController *)self canDeleteContent];
  if (![(PUPhotosGridViewController *)self isEmpty])
  {
    return canDeleteContent;
  }

  hasKnownNonEmptyContent_toWorkAround31995766 = [(PUPhotosGridViewController *)self hasKnownNonEmptyContent_toWorkAround31995766];
  result = hasKnownNonEmptyContent_toWorkAround31995766 && canDeleteContent;
  if (!hasKnownNonEmptyContent_toWorkAround31995766 && canDeleteContent)
  {

    return [(PUPhotosGridViewController *)self _canAddContent];
  }

  return result;
}

- (BOOL)_canPasteboardCopyAssetAtIndexPath:(id)path
{
  pathCopy = path;
  if (!pathCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:996 description:{@"Invalid parameter not satisfying: %@", @"indexPath"}];
  }

  if ([(PUPhotosGridViewController *)self isAddPlaceholderAtIndexPath:pathCopy])
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v7 = -[PUPhotosGridViewController photoCollectionAtIndex:](self, "photoCollectionAtIndex:", [pathCopy section]);
    v8 = [(PUPhotosGridViewController *)self assetsInAssetCollection:v7];
    v9 = [v8 objectAtIndex:{objc_msgSend(pathCopy, "item")}];

    v6 = [v9 isStreamedVideo] ^ 1;
  }

  return v6;
}

- (id)_shareableAssetsFromAssets:(id)assets
{
  v18 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = assetsCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([(PUPhotosGridViewController *)self _canShareAsset:v11, v13])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_assetsAllowingRemove:(BOOL)remove orDelete:(BOOL)delete fromAssets:(id)assets
{
  deleteCopy = delete;
  removeCopy = remove;
  assetsCopy = assets;
  v9 = assetsCopy;
  if (removeCopy)
  {
    v10 = assetsCopy;
LABEL_5:
    v11 = v10;
    goto LABEL_7;
  }

  if (deleteCopy)
  {
    v10 = [(PUPhotosGridViewController *)self _assetsAllowingEditOperation:1 fromAssets:assetsCopy];
    goto LABEL_5;
  }

  v11 = 0;
LABEL_7:

  return v11;
}

- (id)_assetsAllowingEditOperation:(int64_t)operation fromAssets:(id)assets
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__PUPhotosGridViewController__assetsAllowingEditOperation_fromAssets___block_invoke;
  v8[3] = &__block_descriptor_40_e24_B32__0__PHAsset_8Q16_B24l;
  v8[4] = operation;
  assetsCopy = assets;
  v5 = [assetsCopy indexesOfObjectsPassingTest:v8];
  v6 = [assetsCopy objectsAtIndexes:v5];

  return v6;
}

- (BOOL)_canAddContent
{
  v3 = [(PUPhotosGridViewController *)self _allowsActions:4];
  if (v3)
  {

    LOBYTE(v3) = [(PUPhotosGridViewController *)self _canAllContainersPerformEditOperation:3];
  }

  return v3;
}

- (BOOL)canDeleteContent
{
  v3 = [(PUPhotosGridViewController *)self _allowsActions:1];
  if (v3)
  {

    LOBYTE(v3) = [(PUPhotosGridViewController *)self _canAllContainersPerformEditOperation:1];
  }

  return v3;
}

- (BOOL)_canRemoveContent
{
  v3 = [(PUPhotosGridViewController *)self _allowsActions:1];
  if (v3)
  {

    LOBYTE(v3) = [(PUPhotosGridViewController *)self _canAllContainersPerformEditOperation:2];
  }

  return v3;
}

- (BOOL)_canAllContainersPerformEditOperation:(int64_t)operation
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  collectionListFetchResult = [(PUPhotosGridViewController *)self collectionListFetchResult];
  v5 = [collectionListFetchResult countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(collectionListFetchResult);
        }

        if ([*(*(&v11 + 1) + 8 * i) canPerformEditOperation:operation])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [collectionListFetchResult countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (BOOL)_areAllAssetsSelected
{
  photoSelectionManager = [(PUPhotosGridViewController *)self photoSelectionManager];
  collectionListFetchResult = [(PUPhotosGridViewController *)self collectionListFetchResult];
  v5 = [photoSelectionManager areAllAssetsSelectedInAssetCollections:collectionListFetchResult];

  return v5;
}

- (BOOL)isAnyAssetSelected
{
  photoSelectionManager = [(PUPhotosGridViewController *)self photoSelectionManager];
  isAnyAssetSelected = [photoSelectionManager isAnyAssetSelected];

  return isAnyAssetSelected;
}

- (id)selectedIndexPaths
{
  array = [MEMORY[0x1E695DF70] array];
  collectionListFetchResult = [(PUPhotosGridViewController *)self collectionListFetchResult];
  photoSelectionManager = [(PUPhotosGridViewController *)self photoSelectionManager];
  v6 = [photoSelectionManager selectedAssetIndexesWithAssetCollectionOrdering:collectionListFetchResult];

  if ([v6 count])
  {
    v7 = 0;
    do
    {
      v8 = [v6 objectAtIndexedSubscript:v7];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __48__PUPhotosGridViewController_selectedIndexPaths__block_invoke;
      v10[3] = &unk_1E7B7C8F8;
      v12 = v7;
      v11 = array;
      [v8 enumerateIndexesUsingBlock:v10];

      ++v7;
    }

    while (v7 < [v6 count]);
  }

  return array;
}

void __48__PUPhotosGridViewController_selectedIndexPaths__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AC88] indexPathForItem:a2 inSection:*(a1 + 40)];
  [*(a1 + 32) addObject:v3];
}

- (id)selectedAssets
{
  photoSelectionManager = [(PUPhotosGridViewController *)self photoSelectionManager];
  collectionListFetchResult = [(PUPhotosGridViewController *)self collectionListFetchResult];
  v5 = [photoSelectionManager selectedAssetsWithAssetCollectionOrdering:collectionListFetchResult];

  return v5;
}

- (BOOL)isEmpty
{
  photosDataSource = [(PUPhotosGridViewController *)self photosDataSource];
  v3 = photosDataSource;
  if (photosDataSource)
  {
    isEmpty = [photosDataSource isEmpty];
  }

  else
  {
    isEmpty = 1;
  }

  return isEmpty;
}

- (void)setContentViewInSyncWithModel:(BOOL)model
{
  self->_contentViewInSyncWithModel = model;
  if (model)
  {
    collectionListFetchResult = [(PUPhotosGridViewController *)self collectionListFetchResult];
    v5 = [collectionListFetchResult count];

    [(PUPhotosGridViewController *)self _setPreviousCollectionsCount:v5];
  }
}

- (void)_getFirstAsset:(id *)asset collection:(id *)collection
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  collectionListFetchResult = [(PUPhotosGridViewController *)self collectionListFetchResult];
  v8 = [collectionListFetchResult countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(collectionListFetchResult);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [(PUPhotosGridViewController *)self assetsInAssetCollection:v11];
        v13 = [v12 count];

        if (v13)
        {
          v15 = [(PUPhotosGridViewController *)self assetsInAssetCollection:v11];
          firstObject = [v15 firstObject];

          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [collectionListFetchResult countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  firstObject = 0;
LABEL_11:

  if (asset)
  {
    v16 = firstObject;
    *asset = firstObject;
  }

  if (collection)
  {
    v17 = v8;
    *collection = v8;
  }
}

- (id)indexPathForAsset:(id)asset hintCollection:(id)collection hintIndexPath:(id)path
{
  v43 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  collectionCopy = collection;
  pathCopy = path;
  if (!assetCopy)
  {
    v18 = 0;
    goto LABEL_34;
  }

  collectionListFetchResult = [(PUPhotosGridViewController *)self collectionListFetchResult];
  v12 = [collectionListFetchResult count];

  if (!pathCopy || v12 <= [pathCopy section])
  {
    goto LABEL_12;
  }

  v13 = -[PUPhotosGridViewController photoCollectionAtIndex:](self, "photoCollectionAtIndex:", [pathCopy section]);
  v14 = [(PUPhotosGridViewController *)self assetsInAssetCollection:v13];
  v15 = [v14 count];
  if (v15 <= [pathCopy item])
  {

    goto LABEL_12;
  }

  v16 = [v14 objectAtIndex:{objc_msgSend(pathCopy, "item")}];
  v17 = [v16 isEqual:assetCopy] ? pathCopy : 0;

  if (!v17)
  {
LABEL_12:
    photosDataSource = [(PUPhotosGridViewController *)self photosDataSource];
    v20 = photosDataSource;
    if (collectionCopy)
    {
      v21 = [photosDataSource sectionForAssetCollection:collectionCopy];
      if (v21 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v33 = v21;
        goto LABEL_30;
      }
    }

    collectionListFetchResult2 = [v20 collectionListFetchResult];
    firstObject = [collectionListFetchResult2 firstObject];
    v24 = firstObject;
    if (!firstObject || [firstObject assetCollectionType] != 3)
    {
      photosDataSource2 = [(PUPhotosGridViewController *)self photosDataSource];
      [photosDataSource2 forceAccurateAllSectionsIfNeeded];

      collectionCopy = 0;
LABEL_31:
      v35 = [v20 indexPathForAsset:assetCopy hintIndexPath:pathCopy hintCollection:collectionCopy];
LABEL_32:
      v18 = v35;

      goto LABEL_33;
    }

    v37 = assetCopy;
    [MEMORY[0x1E6978650] fetchAssetCollectionsContainingAsset:assetCopy withType:3 options:0];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v25 = v41 = 0u;
    v26 = [v25 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (!v26)
    {
LABEL_25:

      collectionCopy = 0;
LABEL_37:
      v35 = 0;
      assetCopy = v37;
      goto LABEL_32;
    }

    v27 = v26;
    v28 = *v39;
LABEL_19:
    v29 = 0;
    while (1)
    {
      if (*v39 != v28)
      {
        objc_enumerationMutation(v25);
      }

      v30 = *(*(&v38 + 1) + 8 * v29);
      v31 = [v20 sectionForAssetCollection:v30];
      if (v31 != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v27 == ++v29)
      {
        v27 = [v25 countByEnumeratingWithState:&v38 objects:v42 count:16];
        if (v27)
        {
          goto LABEL_19;
        }

        goto LABEL_25;
      }
    }

    v33 = v31;
    collectionCopy = v30;

    if (!collectionCopy)
    {
      goto LABEL_37;
    }

    assetCopy = v37;
LABEL_30:
    v34 = [MEMORY[0x1E696AC90] indexSetWithIndex:v33];
    [v20 forceAccurateSectionsIfNeeded:v34];

    goto LABEL_31;
  }

  v18 = v17;
LABEL_33:

LABEL_34:

  return v18;
}

- (int64_t)cellFillMode
{
  gridSpec = [(PUPhotosGridViewController *)self gridSpec];
  cellFillMode = [gridSpec cellFillMode];

  return cellFillMode;
}

- (CGSize)imageRequestItemPixelSize
{
  [(PUPhotosGridViewController *)self imageRequestItemSize];
  v4 = PUPixelSizeFromPointSize(v3);
  v6 = v5;
  [(PUPhotosGridViewController *)self maximumThumbnailRequestSize];
  if (*MEMORY[0x1E695F060] == v8 && *(MEMORY[0x1E695F060] + 8) == v7)
  {
    v10 = v4;
    v11 = v6;
  }

  else
  {

    PXSizeMin();
  }

  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)imageRequestItemSize
{
  mainGridLayout = [(PUPhotosGridViewController *)self mainGridLayout];
  [mainGridLayout itemSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)assetAtIndexPathIfSafe:(id)safe
{
  safeCopy = safe;
  if ([safeCopy section] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(safeCopy, "item") == 0x7FFFFFFFFFFFFFFFLL || (v5 = objc_msgSend(safeCopy, "section"), -[PUPhotosGridViewController photosDataSource](self, "photosDataSource"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "numberOfSections"), v6, v5 >= v7) || (v8 = objc_msgSend(safeCopy, "item"), -[PUPhotosGridViewController photosDataSource](self, "photosDataSource"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "numberOfItemsInSection:", objc_msgSend(safeCopy, "section")), v9, v8 >= v10))
  {
    v12 = 0;
  }

  else
  {
    photosDataSource = [(PUPhotosGridViewController *)self photosDataSource];
    v12 = [photosDataSource assetAtIndexPath:safeCopy];
  }

  return v12;
}

- (id)assetAtIndexPath:(id)path
{
  pathCopy = path;
  photosDataSource = [(PUPhotosGridViewController *)self photosDataSource];
  v6 = [photosDataSource assetCollectionForSection:{objc_msgSend(pathCopy, "section")}];

  v7 = [(PUPhotosGridViewController *)self assetsInAssetCollection:v6];
  item = [pathCopy item];

  v9 = [v7 objectAtIndex:item];

  return v9;
}

- (id)assetsInAssetCollection:(id)collection
{
  if (collection)
  {
    collectionCopy = collection;
    photosDataSource = [(PUPhotosGridViewController *)self photosDataSource];
    v6 = [photosDataSource sectionForAssetCollection:collectionCopy];

    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0;
    }

    else
    {
      v7 = [photosDataSource assetsInSection:v6];
      if (!v7)
      {
        v8 = objc_alloc(MEMORY[0x1E69788E0]);
        photoLibrary = [photosDataSource photoLibrary];
        fetchType = [MEMORY[0x1E6978630] fetchType];
        v7 = [v8 initWithObjects:MEMORY[0x1E695E0F0] photoLibrary:photoLibrary fetchType:fetchType fetchPropertySets:0 identifier:0 registerIfNeeded:0];
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isCurrentCollectionViewDataSource
{
  if (![(PUPhotosGridViewController *)self isViewLoaded])
  {
    return 0;
  }

  collectionView = [(PUPhotosGridViewController *)self collectionView];
  dataSource = [collectionView dataSource];
  v5 = dataSource == self;

  return v5;
}

- (void)_updateLayoutReferenceValues
{
  collectionView = [(PUPhotosGridViewController *)self collectionView];
  [collectionView bounds];
  Width = CGRectGetWidth(v19);

  collectionView2 = [(PUPhotosGridViewController *)self collectionView];
  [collectionView2 safeAreaInsets];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  if (v9 != self->_collectionViewLayoutReferenceSafeAreaInsets.left || v7 != self->_collectionViewLayoutReferenceSafeAreaInsets.top || v13 != self->_collectionViewLayoutReferenceSafeAreaInsets.right)
  {
    p_collectionViewLayoutReferenceWidth = &self->_collectionViewLayoutReferenceWidth;
LABEL_13:
    *p_collectionViewLayoutReferenceWidth = Width;
    self->_collectionViewLayoutReferenceSafeAreaInsets.top = v7;
    self->_collectionViewLayoutReferenceSafeAreaInsets.left = v9;
    self->_collectionViewLayoutReferenceSafeAreaInsets.bottom = v11;
    self->_collectionViewLayoutReferenceSafeAreaInsets.right = v13;
    [(PUPhotosGridViewController *)self updateLayoutMetrics];
    [(PUPhotosGridViewController *)self updateGlobalFooter];

    [(PUPhotosGridViewController *)self updateVisibleSupplementaryViewsOfKind:@"PUFullMomentsHeader"];
    return;
  }

  p_collectionViewLayoutReferenceWidth = &self->_collectionViewLayoutReferenceWidth;
  if (Width != self->_collectionViewLayoutReferenceWidth || v11 != self->_collectionViewLayoutReferenceSafeAreaInsets.bottom)
  {
    goto LABEL_13;
  }
}

- (id)assetCollectionForSectionHeaderAtIndex:(unint64_t)index
{
  if (self->_collectionListFetchResultBeforeChange && (-[PUPhotosGridViewController collectionView](self, "collectionView"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 numberOfSections], -[PUPhotosGridViewController photosDataSource](self, "photosDataSource"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "numberOfSections"), v7, v5, v6 != v8))
  {
    v9 = [(PHFetchResult *)self->_collectionListFetchResultBeforeChange objectAtIndexedSubscript:index];
  }

  else
  {
    v9 = [(PXPhotosDataSource *)self->_photosDataSource assetCollectionForSection:index];
  }

  return v9;
}

- (void)forceDataSourceIfNeeded
{
  if (![(PUPhotosGridViewController *)self _didForceDataSource]&& !self->_pendingNavigationBlock)
  {
    [(PUPhotosGridViewController *)self _setDidForceDataSource:1];
    v8 = self->_photosDataSource;
    if (([(PXPhotosDataSource *)v8 options]& 1) != 0)
    {
      if ([(PUPhotosGridViewController *)self initiallyScrolledToBottom])
      {
        v3 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v3 = 0;
      }

      [(PXPhotosDataSource *)v8 setBackgroundFetchOriginSection:v3];
      v4 = [(PXPhotosDataSource *)v8 numberOfSections]- 1;
      if (v3 < v4)
      {
        v4 = v3;
      }

      v5 = v4 & ~(v4 >> 63);
      gridSpec = [(PUPhotosGridViewController *)self gridSpec];
      forceLoadInitialSectionCount = [gridSpec forceLoadInitialSectionCount];

      [(PXPhotosDataSource *)v8 forceAccurateSection:v5 andSectionsBeforeAndAfter:forceLoadInitialSectionCount];
      [(PXPhotosDataSource *)v8 startBackgroundFetchIfNeeded];
    }
  }
}

- (void)setPhotosDataSource:(id)source
{
  sourceCopy = source;
  photosDataSource = self->_photosDataSource;
  if (photosDataSource != sourceCopy)
  {
    v8 = sourceCopy;
    [(PXPhotosDataSource *)photosDataSource unregisterChangeObserver:self];
    objc_storeStrong(&self->_photosDataSource, source);
    [(PUPhotosGridViewController *)self _setDidForceDataSource:0];
    if ([(PUPhotosGridViewController *)self px_isVisible])
    {
      [(PUPhotosGridViewController *)self forceDataSourceIfNeeded];
    }

    [(PXPhotosDataSource *)v8 registerChangeObserver:self];
    oneUpPresentationHelper = [(PUPhotosGridViewController *)self oneUpPresentationHelper];
    [oneUpPresentationHelper setPhotosDataSource:v8];

    photosDataSource = [(PUPhotosGridViewController *)self updateInterfaceForModelReloadAnimated:1];
    sourceCopy = v8;
  }

  MEMORY[0x1EEE66BB8](photosDataSource, sourceCopy);
}

- (void)setSessionInfo:(id)info
{
  infoCopy = info;
  sessionInfo = self->_sessionInfo;
  if (sessionInfo != infoCopy)
  {
    v10 = infoCopy;
    [(PUSessionInfo *)sessionInfo removeSessionInfoObserver:self];
    objc_storeStrong(&self->_sessionInfo, info);
    [(PUSessionInfo *)self->_sessionInfo addSessionInfoObserver:self];
    bannerGenerator = [(PUSessionInfo *)self->_sessionInfo bannerGenerator];
    v8 = bannerGenerator[2]();

    navigationItem = [(PUPhotosGridViewController *)self navigationItem];
    [navigationItem pu_setBanner:v8];

    [(PUPhotosGridViewController *)self _updatePhotoSelectionManager];
    [(PUPhotosGridViewController *)self updateInterfaceForModelReloadAnimated:0];

    infoCopy = v10;
  }

  MEMORY[0x1EEE66BB8](sessionInfo, infoCopy);
}

- (id)newGridLayout
{
  v3 = objc_alloc_init(PUSectionedGridLayout);
  [(PUSectionedGridLayout *)v3 setDelegate:self];
  return v3;
}

- (BOOL)updateSpec
{
  traitCollection = [(PUPhotosGridViewController *)self traitCollection];
  if (![traitCollection horizontalSizeClass] || !objc_msgSend(traitCollection, "verticalSizeClass"))
  {
    goto LABEL_14;
  }

  [PUInterfaceManager shouldUsePhoneLayoutWithTraitCollection:traitCollection];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  if (v5 == objc_opt_class() || v5 == objc_opt_class() || v5 == objc_opt_class() || v5 == objc_opt_class() || v5 == objc_opt_class() || v5 == objc_opt_class() || v5 == objc_opt_class() || v5 == objc_opt_class())
  {
    v4 = objc_opt_class();
  }

  if (v4 != v5)
  {
    v6 = objc_alloc_init(v4);
    gridSpec = self->_gridSpec;
    self->_gridSpec = v6;

    v8 = 1;
  }

  else
  {
LABEL_14:
    v8 = 0;
  }

  return v8;
}

- (BOOL)_updateTransitionWidthOnAppearance
{
  _transitionWidthHasChanged = [(PUPhotosGridViewController *)self _transitionWidthHasChanged];
  if (_transitionWidthHasChanged)
  {
    [(PUPhotosGridViewController *)self _adjustedTransitionWidth];
    self->_lastTransitionWidth = v4;
  }

  return _transitionWidthHasChanged;
}

- (BOOL)_transitionWidthHasChanged
{
  [(PUPhotosGridViewController *)self _adjustedTransitionWidth];
  lastTransitionWidth = self->_lastTransitionWidth;
  v5 = lastTransitionWidth > 0.0;
  if (v3 <= 0.0)
  {
    v5 = 0;
  }

  return v3 != lastTransitionWidth && v5;
}

- (double)_adjustedTransitionWidth
{
  collectionView = [(PUPhotosGridViewController *)self collectionView];
  [collectionView safeAreaInsets];
  v5 = v4;
  v7 = v6;

  collectionView2 = [(PUPhotosGridViewController *)self collectionView];
  [collectionView2 bounds];
  v10 = v9 - v5 - v7;

  return v10;
}

- (void)_invalidateCachedViewSizeTransitionContext
{
  [(PUPhotosGridViewController *)self _setCachedViewSizeTransitionContext:0];
  v3 = *MEMORY[0x1E695F060];
  v4 = *(MEMORY[0x1E695F060] + 8);

  [(PUPhotosGridViewController *)self _setCachedViewSizeTransitionContextSize:v3, v4];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v37.receiver = self;
  v37.super_class = PUPhotosGridViewController;
  [(PUPhotosGridViewController *)&v37 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  isCurrentCollectionViewDataSource = [(PUPhotosGridViewController *)self isCurrentCollectionViewDataSource];
  if (coordinatorCopy)
  {
    [coordinatorCopy targetTransform];
  }

  else
  {
    memset(&t2, 0, sizeof(t2));
  }

  v9 = *(MEMORY[0x1E695EFD0] + 16);
  *&t1.a = *MEMORY[0x1E695EFD0];
  *&t1.c = v9;
  *&t1.tx = *(MEMORY[0x1E695EFD0] + 32);
  v10 = CGAffineTransformEqualToTransform(&t1, &t2);
  mainGridLayout = [(PUPhotosGridViewController *)self mainGridLayout];
  v12 = mainGridLayout;
  if (isCurrentCollectionViewDataSource)
  {
    v13 = [mainGridLayout prepareForViewTransitionToSize:{width, height}];
  }

  else
  {
    v13 = 0;
  }

  if ([coordinatorCopy isAnimated] && (-[PUPhotosGridViewController px_isVisible](self, "px_isVisible") & 1) != 0)
  {
    [(PUPhotosGridViewController *)self _setPendingViewSizeTransitionContext:0];
    v14 = 0;
LABEL_20:
    [(PUPhotosGridViewController *)self _invalidateCachedViewSizeTransitionContext];
    goto LABEL_21;
  }

  [(PUPhotosGridViewController *)self _cachedViewSizeTransitionContextSize];
  if (width == v16 && height == v15)
  {
    _cachedViewSizeTransitionContext = [(PUPhotosGridViewController *)self _cachedViewSizeTransitionContext];

    LOBYTE(isSuspended) = 0;
    v13 = _cachedViewSizeTransitionContext;
  }

  else
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    isSuspended = [mEMORY[0x1E69DC668] isSuspended];

    if (isSuspended)
    {
      _cachedViewSizeTransitionContext2 = [(PUPhotosGridViewController *)self _cachedViewSizeTransitionContext];

      if (!_cachedViewSizeTransitionContext2)
      {
        view = [(PUPhotosGridViewController *)self view];
        [view bounds];
        v23 = v22;
        v25 = v24;

        [(PUPhotosGridViewController *)self _setCachedViewSizeTransitionContext:v13];
        [(PUPhotosGridViewController *)self _setCachedViewSizeTransitionContextSize:v23, v25];
      }

      LOBYTE(isSuspended) = 1;
    }
  }

  _pendingViewSizeTransitionContext = [(PUPhotosGridViewController *)self _pendingViewSizeTransitionContext];

  if (!_pendingViewSizeTransitionContext)
  {
    [(PUPhotosGridViewController *)self _setPendingViewSizeTransitionContext:v13];
  }

  v14 = 1;
  if ((isSuspended & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_21:
  if (v10)
  {
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __81__PUPhotosGridViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v34[3] = &unk_1E7B7DC38;
    v34[4] = self;
    [coordinatorCopy animateAlongsideTransition:0 completion:v34];
  }

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __81__PUPhotosGridViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v32[3] = &unk_1E7B7C8A0;
  v32[4] = self;
  v33 = isCurrentCollectionViewDataSource;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __81__PUPhotosGridViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_3;
  v28[3] = &unk_1E7B7C8C8;
  v30 = isCurrentCollectionViewDataSource;
  v31 = v14;
  v28[4] = self;
  v29 = v12;
  v27 = v12;
  [coordinatorCopy animateAlongsideTransition:v32 completion:v28];
}

void __81__PUPhotosGridViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) _shareAssetsPopoverController];
  v2 = [v7 presentedViewController];
  [v2 dismissViewControllerAnimated:0 completion:0];

  [v7 setDelegate:0];
  [*(a1 + 32) _setShareAssetsPopoverController:0];
  v3 = [*(a1 + 32) _actionConfirmationAlert];
  if (v3)
  {
    v4 = v3;
    v5 = [*(a1 + 32) presentedViewController];
    v6 = [*(a1 + 32) _actionConfirmationAlert];

    if (v5 == v6)
    {
      [*(a1 + 32) dismissViewControllerAnimated:0 completion:0];
      [*(a1 + 32) _setActionConfirmationAlert:0];
    }
  }
}

uint64_t __81__PUPhotosGridViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) px_isVisible];
  if (result && *(a1 + 40) == 1)
  {
    [*(a1 + 32) updateNavigationBarAnimated:1];
    [*(a1 + 32) _updateGlobalHeaderVisibility];
    v3 = *(a1 + 32);

    return [v3 updateGlobalFooter];
  }

  return result;
}

void __81__PUPhotosGridViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  if (*(a1 + 48) == 1 && [*(a1 + 32) isCurrentCollectionViewDataSource])
  {
    if (*(a1 + 49) == 1)
    {
      [*(a1 + 32) _updateContentOffsetForPendingViewSizeTransition];
    }

    [*(a1 + 40) finalizeViewTransitionToSize];
  }

  if ([*(a1 + 32) px_isVisible])
  {
    [*(a1 + 32) pu_performBarsVisibilityUpdatesWithAnimationSettings:{0, 0}];
    [*(a1 + 32) updatePeripheralInterfaceAnimated:0];
  }

  [*(a1 + 32) _adjustedTransitionWidth];
  *(*(a1 + 32) + 1048) = v3;
}

- (PUPhotosGridViewControllerSpec)gridSpec
{
  gridSpec = self->_gridSpec;
  if (!gridSpec)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:422 description:@"missing spec"];

    gridSpec = self->_gridSpec;
  }

  return gridSpec;
}

- (void)dealloc
{
  [(PXPhotosDataSource *)self->_photosDataSource unregisterChangeObserver:self];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69BE918] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  [(PUSessionInfo *)self->_sessionInfo removeSessionInfoObserver:self];
  _shareAssetsPopoverController = [(PUPhotosGridViewController *)self _shareAssetsPopoverController];
  [_shareAssetsPopoverController setDelegate:0];

  [(UILongPressGestureRecognizer *)self->_longPressGestureRecognizer setDelegate:0];
  [(PUPhotoPinchGestureRecognizer *)self->_photoOrStackPinchGestureRecognizer setDelegate:0];
  _collectionViewSpeedometer = [(PUPhotosGridViewController *)self _collectionViewSpeedometer];
  [_collectionViewSpeedometer setDelegate:0];

  v7.receiver = self;
  v7.super_class = PUPhotosGridViewController;
  [(PUPhotosGridViewController *)&v7 dealloc];
}

- (PUPhotosGridViewController)initWithCollectionViewLayout:(id)layout
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:401 description:{@"Do not use this initializer, use the designated one instead"}];

  return 0;
}

- (PUPhotosGridViewController)initWithNibName:(id)name bundle:(id)bundle
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:396 description:{@"Do not use this initializer, use the designated one instead"}];

  return 0;
}

- (PUPhotosGridViewController)initWithSpec:(id)spec photoLibrary:(id)library
{
  specCopy = spec;
  libraryCopy = library;
  if (libraryCopy)
  {
    if (specCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:361 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];

    if (specCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:362 description:{@"Invalid parameter not satisfying: %@", @"spec"}];

LABEL_3:
  objc_storeStrong(&self->_photoLibrary, library);
  objc_storeStrong(&self->_gridSpec, spec);
  newGridLayout = [(PUPhotosGridViewController *)self newGridLayout];
  v26.receiver = self;
  v26.super_class = PUPhotosGridViewController;
  v11 = [(PUPhotosGridViewController *)&v26 initWithCollectionViewLayout:newGridLayout];
  if (v11)
  {
    v12 = objc_alloc_init(PUPhotosGridBarsHelper);
    barsHelper = v11->__barsHelper;
    v11->__barsHelper = v12;

    [(PUPhotosGridBarsHelper *)v11->__barsHelper setDelegate:v11];
    navigationItem = [(PUPhotosGridViewController *)v11 navigationItem];
    [navigationItem setLargeTitleDisplayMode:2];

    [(PUPhotosGridViewController *)v11 setMainGridLayout:newGridLayout];
    [(PUPhotosGridViewController *)v11 setAllowedActions:127];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v16 = *MEMORY[0x1E69DE0E0];
    mEMORY[0x1E69DCC68] = [MEMORY[0x1E69DCC68] sharedMenuController];
    [defaultCenter addObserver:v11 selector:sel__menuControllerDidHideMenu_ name:v16 object:mEMORY[0x1E69DCC68]];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v11 selector:sel__contentSizeCategoryDidChangeNotification_ name:*MEMORY[0x1E69DDC48] object:0];

    v19 = objc_opt_new();
    cachingImageManager = v11->__cachingImageManager;
    v11->__cachingImageManager = v19;

    v21 = objc_alloc_init(MEMORY[0x1E69C4490]);
    badgeManager = v11->__badgeManager;
    v11->__badgeManager = v21;
  }

  return v11;
}

+ (void)transferPhotoBrowserFromGridViewController:(id)controller toGridViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  _pushedPhotoBrowserController = [controllerCopy _pushedPhotoBrowserController];
  if (_pushedPhotoBrowserController)
  {
    [viewControllerCopy _setPushedPhotoBrowserController:_pushedPhotoBrowserController];
    [controllerCopy _setPushedPhotoBrowserController:0];
    _photoBrowserOneUpPresentationAdaptor = [controllerCopy _photoBrowserOneUpPresentationAdaptor];
    [viewControllerCopy _setPhotoBrowserOneUpPresentationAdaptor:_photoBrowserOneUpPresentationAdaptor];
    [_photoBrowserOneUpPresentationAdaptor setZoomTransitionDelegate:viewControllerCopy];
    [controllerCopy _setPhotoBrowserOneUpPresentationAdaptor:0];
    oneUpPresentationHelper = [controllerCopy oneUpPresentationHelper];
    [viewControllerCopy _setOneUpPresentationHelper:oneUpPresentationHelper];
    [oneUpPresentationHelper setDelegate:viewControllerCopy];
    [controllerCopy _setOneUpPresentationHelper:0];
  }
}

+ (id)_localizedSelectionTitleWithPhotoSelectionManager:(id)manager
{
  managerCopy = manager;
  if ([managerCopy isAnyAssetSelected])
  {
    [managerCopy localizedSelectionString];
  }

  else
  {
    PLLocalizedFrameworkString();
  }
  v4 = ;

  return v4;
}

@end