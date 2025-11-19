@interface PUPhotosGridViewController
+ (id)_localizedSelectionTitleWithPhotoSelectionManager:(id)a3;
+ (void)transferPhotoBrowserFromGridViewController:(id)a3 toGridViewController:(id)a4;
- (BOOL)_areAllAssetsSelected;
- (BOOL)_canAddContent;
- (BOOL)_canAllContainersPerformEditOperation:(int64_t)a3;
- (BOOL)_canPasteboardCopyAssetAtIndexPath:(id)a3;
- (BOOL)_canRemoveContent;
- (BOOL)_collectionView:(id)a3 canHandleDropSesson:(id)a4;
- (BOOL)_confidentialityWarningRequiredForAsset:(id)a3;
- (BOOL)_hasAccessibilityLargeText;
- (BOOL)_hasAtLeastOneContainer;
- (BOOL)_navigateToInitialEdgeIfNeededAnimated:(BOOL)a3;
- (BOOL)_shouldBeginMultiSelectAtLocation:(CGPoint)a3;
- (BOOL)_transitionWidthHasChanged;
- (BOOL)_updateTransitionWidthOnAppearance;
- (BOOL)actionPerformer:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5;
- (BOOL)actionPerformer:(id)a3 presentViewController:(id)a4;
- (BOOL)canDeleteContent;
- (BOOL)canDisplayEditButton;
- (BOOL)canDragIn;
- (BOOL)canDragOut;
- (BOOL)canHandleDropSession:(id)a3;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)hasScrollableContent;
- (BOOL)isAddPlaceholderAtIndexPath:(id)a3;
- (BOOL)isAnyAssetSelected;
- (BOOL)isCurrentCollectionViewDataSource;
- (BOOL)isEmpty;
- (BOOL)isInMultiSelectMode;
- (BOOL)prepareForDismissingForced:(BOOL)a3;
- (BOOL)shouldBeginMultiSelectInteraction:(id)a3 atPoint:(CGPoint)a4 withVelocity:(CGPoint)a5;
- (BOOL)shouldPerformFullReloadForIncrementalDataSourceChange:(id)a3;
- (BOOL)shouldShowTabBar;
- (BOOL)supportsMultiSelectInteraction:(id)a3;
- (BOOL)updateSpec;
- (BOOL)wantsPlaceholderView;
- (BOOL)zoomTransition:(id)a3 getFrame:(CGRect *)a4 inCoordinateSpace:(id *)a5 contentMode:(int64_t *)a6 cropInsets:(UIEdgeInsets *)a7 forPhotoToken:(id)a8 operation:(int64_t)a9;
- (BOOL)zoomTransition:(id)a3 transitionImageForPhotoToken:(id)a4 callback:(id)a5;
- (CGPoint)_previousPrefetchContentOffset;
- (CGPoint)_previousPreheatContentOffset;
- (CGPoint)contentOffsetForPreheating;
- (CGPoint)stableUpdatesContentOffsetForProposedContentOffset:(CGPoint)a3;
- (CGRect)_previousPrefetchRect;
- (CGRect)_previousPreheatRect;
- (CGSize)_cachedViewSizeTransitionContextSize;
- (CGSize)contentSizeForPreheating;
- (CGSize)imageRequestItemPixelSize;
- (CGSize)imageRequestItemSize;
- (CGSize)maximumThumbnailRequestSize;
- (PLDateRangeFormatter)_dateRangeFormatter;
- (PUPhotosGridViewController)initWithCollectionViewLayout:(id)a3;
- (PUPhotosGridViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PUPhotosGridViewController)initWithSpec:(id)a3 photoLibrary:(id)a4;
- (PUPhotosGridViewControllerSpec)gridSpec;
- (UIEdgeInsets)collectionViewLayoutReferenceSafeAreaInsets;
- (UIPopoverPresentationController)_shareAssetsPopoverController;
- (UIView)_shareAssetsSender;
- (UIViewController)_actionConfirmationAlert;
- (UIViewController)_removeActionSheet;
- (double)_adjustedTransitionWidth;
- (double)sectionedGridLayout:(id)a3 aspectRatioForItemAtIndexPath:(id)a4;
- (id)_activitySharingControllerWithSelectionManager:(id)a3;
- (id)_allAssetsInCollections;
- (id)_assetsAllowingEditOperation:(int64_t)a3 fromAssets:(id)a4;
- (id)_assetsAllowingRemove:(BOOL)a3 orDelete:(BOOL)a4 fromAssets:(id)a5;
- (id)_barButtonSpacerWithWidth:(double)a3;
- (id)_bestReferenceItemIndexPathWithTopBias:(BOOL)a3;
- (id)_cancelButtonItem;
- (id)_collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5;
- (id)_collectionView:(id)a3 itemsForAddingToDragSession:(id)a4 atIndexPath:(id)a5 point:(CGPoint)a6;
- (id)_collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5;
- (id)_collectionView:(id)a3 liftingPreviewParametersForItemAtIndexPath:(id)a4;
- (id)_deselectAllBarButtonItem;
- (id)_dragItemsForIndexPath:(id)a3;
- (id)_indexPathForAsset:(id)a3 inAssetCollection:(id)a4 refetchIfNeeded:(BOOL)a5;
- (id)_indexesWithoutPlaceholdersFromIndexes:(id)a3 inSection:(int64_t)a4;
- (id)_localizedBannerTextForAsset:(id)a3 isDestructive:(BOOL *)a4;
- (id)_newEditActionItemsWithWideSpacing:(BOOL)a3;
- (id)_performDuplicateActivityWithSelectionSnapshot:(id)a3;
- (id)_performHideActivityWithSelectionManager:(id)a3;
- (id)_pickerBannerView;
- (id)_previewParametersForItemAtIndexPath:(id)a3;
- (id)_referenceBarButtonItemForDeleteAction:(int64_t)a3;
- (id)_selectAllBarButtonItem;
- (id)_selectSessionCancelBarButtonItem;
- (id)_selectSessionDoneBarButtonItem;
- (id)_selectionButton;
- (id)_selectionManagerWithSelectedSharableAssets;
- (id)_selectionManagerWithSharableAssetsInFetchResult:(id)a3 forAssetCollection:(id)a4;
- (id)_shareableAssetsFromAssets:(id)a3;
- (id)_slideshowNavigationControllerForFetchResult:(id)a3 assetCollection:(id)a4;
- (id)_updateSelectionFromSelectionManager:(id)a3;
- (id)assetAtIndexPath:(id)a3;
- (id)assetAtIndexPathIfSafe:(id)a3;
- (id)assetCollectionForSectionHeaderAtIndex:(unint64_t)a3;
- (id)assetIndexPathForPhotoToken:(id)a3;
- (id)assetsInAssetCollection:(id)a3;
- (id)beginShowingProgressForAsset:(id)a3 inCollection:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 dragPreviewParametersForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)contentScrollView;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4;
- (id)displayTitleInfoForDetailsOfAssetCollection:(id)a3 withTitleCategory:(int64_t)a4 preferredAttributesPromise:(id)a5;
- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4;
- (id)imageRequestOptionsForAsset:(id)a3 pixelSize:(CGSize *)a4;
- (id)indexPathForAsset:(id)a3 hintCollection:(id)a4 hintIndexPath:(id)a5;
- (id)indexPathsForPreheatingInRect:(CGRect)a3;
- (id)itemIndexPathAtPoint:(CGPoint)a3 outClosestMatch:(id *)a4 outLeftClosestMatch:(id *)a5 outAboveClosestMatch:(id *)a6;
- (id)localizedSelectionTitle;
- (id)localizedTitleForAssetCollection:(id)a3 titleCategory:(int64_t *)a4;
- (id)newGridLayout;
- (id)newToolbarItems;
- (id)photosGridBarsHelper:(id)a3 titleForPhotoSelectionManager:(id)a4;
- (id)previewViewControllerForItemAtIndexPath:(id)a3;
- (id)pu_debugRows;
- (id)selectedAssets;
- (id)selectedIndexPaths;
- (id)sessionInfoForTransferredAssets:(id)a3;
- (id)zoomTransition:(id)a3 photoTokenForPhoto:(id)a4 inCollection:(id)a5;
- (int64_t)_deleteActionForBarButtonItem:(id)a3;
- (int64_t)cellFillMode;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (int64_t)preferredStatusBarStyle;
- (int64_t)swipeSelectionManager:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (unint64_t)_sharableAssetsTypeInFetchResult:(id)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)_activitySharingController:(id)a3 didCompleteWithActivityType:(id)a4 success:(BOOL)a5;
- (void)_activitySharingControllerDidCancel:(id)a3;
- (void)_addButtonPressed:(id)a3;
- (void)_cancelImageRequestForCell:(id)a3;
- (void)_clearAutomaticContentOffsetSnapshot;
- (void)_collectionView:(id)a3 performDropWithCoordinator:(id)a4;
- (void)_configureAddPlaceholderCell:(id)a3 animated:(BOOL)a4;
- (void)_contentSizeCategoryDidChangeNotification:(id)a3;
- (void)_ensureOneUpPresentationHelper;
- (void)_getFirstAsset:(id *)a3 collection:(id *)a4;
- (void)_handleCancelButton:(id)a3;
- (void)_handleDuplicateActionCompletionWithSuccess:(BOOL)a3;
- (void)_handleSelectSessionCancelButton:(id)a3;
- (void)_handleSelectSessionDoneButton:(id)a3;
- (void)_handleSelectionButton:(id)a3;
- (void)_hideMenuIfNeeded;
- (void)_invalidateAllProgressInfoIndexPaths;
- (void)_invalidateCachedViewSizeTransitionContext;
- (void)_navigateToPhotoAtIndexPath:(id)a3 animated:(BOOL)a4 interactive:(BOOL)a5;
- (void)_performAutomaticContentOffsetAdjustment;
- (void)_presentActivitySharingController:(id)a3 completion:(id)a4;
- (void)_presentConfidentialityWarning;
- (void)_presentShareSheetWithCompletion:(id)a3;
- (void)_removeButtonPressed:(id)a3;
- (void)_removeSelectedAssetsWithCompletion:(id)a3;
- (void)_saveAnchorForAutomaticContentOffsetAdjustment;
- (void)_setPushedPhotoBrowserController:(id)a3;
- (void)_shareButtonPressed:(id)a3;
- (void)_slideshowButtonPressed:(id)a3;
- (void)_updateAllProgressInfoIndexPaths;
- (void)_updateBackButtonTitle;
- (void)_updateCollectionViewMultipleSelection;
- (void)_updateContentOffsetForPendingViewSizeTransition;
- (void)_updateGlobalHeaderVisibility;
- (void)_updateIndexPathForProgressInfo:(id)a3;
- (void)_updateLayoutReferenceValues;
- (void)_updateNavigationBannerAnimated:(BOOL)a3;
- (void)_updatePhotoDecorationForCell:(id)a3 animated:(BOOL)a4;
- (void)_updatePhotoSelectionManager;
- (void)_updateProgressForCell:(id)a3 atIndexPath:(id)a4;
- (void)_updateProgressForCellAtIndexPath:(id)a3;
- (void)_updateSelectionForCell:(id)a3 atIndexPath:(id)a4;
- (void)_updateSubviewsOrderingAndVisibility;
- (void)_updateToolbarContentsAnimated:(BOOL)a3;
- (void)activitySharingController:(id)a3 didCompleteWithActivityType:(id)a4 success:(BOOL)a5;
- (void)activitySharingControllerDidCancel:(id)a3;
- (void)automaticallyTransitionToMultiSelectModeKeepingCurrentSelection:(BOOL)a3;
- (void)beginBatchPreheating;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)configureDecorationsForCell:(id)a3 withAsset:(id)a4 assetCollection:(id)a5 thumbnailIsPlaceholder:(BOOL)a6 assetMayHaveChanged:(BOOL)a7;
- (void)configureGridCell:(id)a3 forItemAtIndexPath:(id)a4 assetMayHaveChanged:(BOOL)a5;
- (void)configureSupplementaryView:(id)a3 ofKind:(id)a4 forIndexPath:(id)a5;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)copy:(id)a3;
- (void)dealloc;
- (void)deletePhotosActionController:(id)a3 presentConfirmationViewController:(id)a4;
- (void)deselectAllItemsAnimated:(BOOL)a3;
- (void)didEndMultiSelectInteraction:(id)a3 atPoint:(CGPoint)a4;
- (void)dropInteraction:(id)a3 performDrop:(id)a4;
- (void)endBatchPreheating;
- (void)endCoalescedSelectionUpdates;
- (void)endShowingProgressWithIdentifier:(id)a3 succeeded:(BOOL)a4 canceled:(BOOL)a5 error:(id)a6;
- (void)forceDataSourceIfNeeded;
- (void)getEmptyPlaceholderViewTitle:(id *)a3 message:(id *)a4 buttonTitle:(id *)a5 buttonAction:(id *)a6;
- (void)getTitle:(id *)a3 prompt:(id *)a4 shouldHideBackButton:(BOOL *)a5 leftBarButtonItems:(id *)a6 rightBarButtonItems:(id *)a7;
- (void)handleDrop:(id)a3;
- (void)handleLongPressGesture:(id)a3;
- (void)handlePhotoOrStackPinchGestureRecognizer:(id)a3;
- (void)handleToggleSelectionOfItemAtIndexPath:(id)a3;
- (void)installGestureRecognizers;
- (void)invalidateGridLayoutIfNecessary;
- (void)loadView;
- (void)menuActionController:(id)a3 didDismissWithActionIdentifier:(id)a4;
- (void)multiSelectInteraction:(id)a3 toggleSelectionStateUpToPoint:(CGPoint)a4;
- (void)navigateToPhoto:(id)a3 inAssetContainer:(id)a4 refetchIfNeeded:(BOOL)a5 animated:(BOOL)a6;
- (void)navigateToPhotosDetailsForAssetCollection:(id)a3 animated:(BOOL)a4;
- (void)navigateToRectEdge:(unsigned int)a3 animated:(BOOL)a4;
- (void)navigateToRevealPhoto:(id)a3 inAssetContainer:(id)a4 animated:(BOOL)a5;
- (void)oneUpPresentationHelper:(id)a3 didDismissOneUpViewController:(id)a4;
- (void)paste:(id)a3;
- (void)photosDataSourceWillChange:(id)a3;
- (void)photosGlobalFooterView:(id)a3 presentViewController:(id)a4;
- (void)photosGlobalFooterViewDidChangeHeight:(id)a3;
- (void)photosGridBarsHelper:(id)a3 didChange:(unint64_t)a4;
- (void)popoverPresentationControllerDidDismissPopover:(id)a3;
- (void)preheatAssetsWithPrefetchingDisabled:(BOOL)a3;
- (void)prepareForPopoverPresentation:(id)a3;
- (void)presentAlertController:(id)a3;
- (void)processDataSourceChange:(id)a3;
- (void)resetPreheating;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewDidScrollToTop:(id)a3;
- (void)scrollViewSpeedometer:(id)a3 regimeDidChange:(int64_t)a4 from:(int64_t)a5;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillScrollToTop:(id)a3;
- (void)sectionedGridLayout:(id)a3 didPrepareTransitionIsAppearing:(BOOL)a4;
- (void)selectAssets:(id)a3 fromAssetCollection:(id)a4;
- (void)sender:(id)a3 shareAssetsInFetchResult:(id)a4 forAssetCollection:(id)a5 withCompletion:(id)a6;
- (void)sessionInfoPhotoSelectionDidChange:(id)a3;
- (void)setAlternateContentView:(id)a3;
- (void)setContentViewInSyncWithModel:(BOOL)a3;
- (void)setCustomDoneButtonItem:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setLongPressGestureRecognizer:(id)a3;
- (void)setPhotosDataSource:(id)a3;
- (void)setSelected:(BOOL)a3 itemsAtIndexes:(id)a4 inSection:(int64_t)a5 animated:(BOOL)a6;
- (void)setSessionInfo:(id)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)slideshowViewControllerDidFinish:(id)a3 withVisibleAssets:(id)a4;
- (void)swipeSelectionManager:(id)a3 updatePhotoSelectionWithIndexes:(id)a4 inSection:(int64_t)a5 selectionMode:(int64_t)a6;
- (void)uninstallGestureRecognizers;
- (void)updateEmptyPlaceholderView;
- (void)updateGlobalFooter;
- (void)updateGlobalFooterUsingFooterView:(id)a3;
- (void)updateInterfaceForIncrementalDataSourceChanges:(id)a3;
- (void)updateInterfaceForModelReloadAnimated:(BOOL)a3;
- (void)updateLayoutMetrics;
- (void)updateNavigationBarAnimated:(BOOL)a3;
- (void)updatePeripheralInterfaceAnimated:(BOOL)a3;
- (void)updateProgressWithIdentifier:(id)a3 withValue:(double)a4;
- (void)updateVisibleSupplementaryViewsOfKind:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willBeginMultiSelectInteraction:(id)a3 atPoint:(CGPoint)a4;
- (void)zoomTransition:(id)a3 didFinishForOperation:(int64_t)a4 animated:(BOOL)a5 interactive:(BOOL)a6;
- (void)zoomTransition:(id)a3 shouldHidePhotoTokens:(id)a4;
- (void)zoomTransition:(id)a3 willBeginForOperation:(int64_t)a4 animated:(BOOL)a5 interactive:(BOOL)a6;
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

- (BOOL)actionPerformer:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5
{
  v6 = a5;
  [(PUPhotosGridViewController *)self _setActionConfirmationAlert:0];
  [(PUPhotosGridViewController *)self dismissViewControllerAnimated:1 completion:v6];

  return 1;
}

- (BOOL)actionPerformer:(id)a3 presentViewController:(id)a4
{
  v5 = a4;
  [(PUPhotosGridViewController *)self _setActionConfirmationAlert:v5];
  v6 = [v5 popoverPresentationController];
  [v6 setDelegate:self];

  [(PUPhotosGridViewController *)self presentViewController:v5 animated:1 completion:0];
  return 1;
}

- (void)didEndMultiSelectInteraction:(id)a3 atPoint:(CGPoint)a4
{
  v5 = [(PUPhotosGridViewController *)self _swipeSelectionManager:a3];
  if (v5)
  {
    v7 = v5;
    [v5 endSelection];
    [(PUPhotosGridViewController *)self _setSwipeSelectionManager:0];
    v6 = [(PUPhotosGridViewController *)self _barsHelper];
    [v6 setSwipeSelecting:0];

    v5 = v7;
  }
}

- (void)multiSelectInteraction:(id)a3 toggleSelectionStateUpToPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [(PUPhotosGridViewController *)self collectionView];
  [v7 convertPoint:0 toView:{x, y}];
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
    v16 = [(PUPhotosGridViewController *)self _swipeSelectionManager];
    [v16 setScreenTouchLocation:{v9, v11}];
    [v16 updateSelectionWithCurrentIndexPath:v12 leftClosestIndexPath:v13 aboveClosestIndexPath:v15];
    v17 = [v16 selectionAutoScroller];
    v18 = [(PUPhotosGridViewController *)self collectionView];
    [v17 updateWithUserInteractionLocation:v18 inCoordinateSpace:{x, y}];
  }
}

- (void)willBeginMultiSelectInteraction:(id)a3 atPoint:(CGPoint)a4
{
  v16 = [(PUPhotosGridViewController *)self itemIndexPathAtPoint:0 outClosestMatch:0 outLeftClosestMatch:0 outAboveClosestMatch:a4.x, a4.y];
  v5 = -[PUPhotosGridViewController photoCollectionAtIndex:](self, "photoCollectionAtIndex:", [v16 section]);
  v6 = [(PUPhotosGridViewController *)self photoSelectionManager];
  v7 = [v6 isAssetAtIndexSelected:objc_msgSend(v16 inAssetCollection:{"item"), v5}];

  v8 = v7;
  v9 = [PUSwipeSelectionManager alloc];
  v10 = [(PUPhotosGridViewController *)self photoSelectionManager];
  v11 = [(PUSwipeSelectionManager *)v9 initWithSelectionMode:v8 photoSelectionManager:v10];

  [(PUSwipeSelectionManager *)v11 setDelegate:self];
  [(PUSwipeSelectionManager *)v11 setDatasource:self];
  [(PUPhotosGridViewController *)self _setSwipeSelectionManager:v11];
  [(PUSwipeSelectionManager *)v11 beginSelectionFromIndexPath:v16];
  v12 = [(PUPhotosGridViewController *)self _barsHelper];
  [v12 setSwipeSelecting:1];

  v13 = objc_alloc(MEMORY[0x1E69C45F0]);
  v14 = [(PUPhotosGridViewController *)self collectionView];
  v15 = [v13 initWithTargetScrollView:v14];

  [v15 setDelegate:self];
  [(PUSwipeSelectionManager *)v11 setSelectionAutoScroller:v15];
}

- (BOOL)shouldBeginMultiSelectInteraction:(id)a3 atPoint:(CGPoint)a4 withVelocity:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v7 = a4.y;
  v8 = a4.x;
  v10 = [(PUPhotosGridViewController *)self isInMultiSelectMode];
  if (v10)
  {
    v11 = [(PUPhotosGridViewController *)self _shouldBeginMultiSelectAtLocation:v8, v7];
    v12 = fabs(x) > fabs(y);
    LOBYTE(v10) = v11 && v12;
  }

  return v10;
}

- (void)automaticallyTransitionToMultiSelectModeKeepingCurrentSelection:(BOOL)a3
{
  if (([(PUPhotosGridViewController *)self isEditing]& 1) == 0)
  {

    [(PUPhotosGridViewController *)self setEditing:1 animated:1];
  }
}

- (BOOL)isInMultiSelectMode
{
  v3 = [(PUPhotosGridViewController *)self isEditing];
  v4 = [(PUPhotosGridViewController *)self sessionInfo];
  v5 = [v4 isSelectingAssets];

  return (v5 | v3) & 1;
}

- (BOOL)supportsMultiSelectInteraction:(id)a3
{
  v4 = +[PUPhotosGridSettings sharedInstance];
  if ([v4 isSwipeSelectionEnabled])
  {
    v5 = [(PUPhotosGridViewController *)self collectionView];
    v6 = [v5 hasActiveDrag] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)_shouldBeginMultiSelectAtLocation:(CGPoint)a3
{
  v3 = [(PUPhotosGridViewController *)self itemIndexPathAtPoint:0 outClosestMatch:0 outLeftClosestMatch:0 outAboveClosestMatch:a3.x, a3.y];
  v4 = v3 != 0;

  return v4;
}

- (void)dropInteraction:(id)a3 performDrop:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEBUG, "dropInteraction: %@ performDrop: %@", &v9, 0x16u);
  }

  [(PUPhotosGridViewController *)self handleDrop:v7];
}

- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4
{
  v4 = [objc_alloc(MEMORY[0x1E69DC9C0]) initWithDropOperation:2];

  return v4;
}

- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEBUG, "dropInteraction: %@ canHandleSession: %@", &v11, 0x16u);
  }

  v9 = [(PUPhotosGridViewController *)self canHandleDropSession:v7];
  return v9;
}

- (void)_collectionView:(id)a3 performDropWithCoordinator:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEBUG, "_collectionView: %@ performDropWithCoordinator: %@", &v10, 0x16u);
  }

  v9 = [v7 dropSession];
  [(PUPhotosGridViewController *)self handleDrop:v9];
}

- (id)_collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412802;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_DEBUG, "_collectionView: %@ dropSessionDidUpdate:%@ withDestinationIndexPath: %@", &v13, 0x20u);
  }

  v11 = [objc_alloc(MEMORY[0x1E69DC838]) initWithDropOperation:2 dropLocation:2];

  return v11;
}

- (BOOL)_collectionView:(id)a3 canHandleDropSesson:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEBUG, "_collectionView: %@ canHandleDropSesson: %@ ", &v11, 0x16u);
  }

  v9 = [(PUPhotosGridViewController *)self canHandleDropSession:v7];
  return v9;
}

- (void)handleDrop:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEBUG, "handleDrop: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v6 = [MEMORY[0x1E69C3618] defaultManager];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__PUPhotosGridViewController_handleDrop___block_invoke;
  v8[3] = &unk_1E7B7CE38;
  v8[4] = self;
  objc_copyWeak(&v10, buf);
  v7 = v4;
  v9 = v7;
  [v6 fetchAssetsFromDrop:v7 importIfNeeded:1 completion:v8];

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

- (BOOL)canHandleDropSession:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(PUPhotosGridViewController *)self canDragIn];
  v7 = [v5 localDragSession];

  if (v7)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v8 = [v5 items];
    v9 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v9)
    {
      v10 = v9;
      v28 = self;
      v29 = v5;
      v11 = *v31;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v30 + 1) + 8 * i) localObject];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = v13;
            v15 = [v14 assetReference];
            v16 = [v15 asset];

            if (!v16)
            {
              v20 = [MEMORY[0x1E696AAA8] currentHandler];
              v21 = objc_opt_class();
              v22 = NSStringFromClass(v21);
              [v20 handleFailureInMethod:a2 object:v28 file:@"PUPhotosGridViewController.m" lineNumber:5685 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"pxLocalObject.assetReference.asset", v22}];

              v16 = 0;
LABEL_19:

              v19 = 1;
              goto LABEL_20;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v27 = [MEMORY[0x1E696AAA8] currentHandler];
              v17 = objc_opt_class();
              v18 = NSStringFromClass(v17);
              v26 = [v16 px_descriptionForAssertionMessage];
              [v27 handleFailureInMethod:a2 object:v28 file:@"PUPhotosGridViewController.m" lineNumber:5685 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"pxLocalObject.assetReference.asset", v18, v26}];
            }

            if ([v16 sourceType] == 2)
            {
              goto LABEL_19;
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

      v19 = 0;
LABEL_20:
      v5 = v29;
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

  if ((v6 & v19) == 1)
  {
    v23 = [MEMORY[0x1E69C3618] supportedTypeIdentifiers];
    v24 = [v5 hasItemsConformingToTypeIdentifiers:v23];
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

- (id)_collectionView:(id)a3 itemsForAddingToDragSession:(id)a4 atIndexPath:(id)a5 point:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  v26 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v28.x = x;
    v28.y = y;
    v15 = NSStringFromCGPoint(v28);
    v18 = 138413058;
    v19 = v11;
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = v13;
    v24 = 2112;
    v25 = v15;
    _os_log_impl(&dword_1B36F3000, v14, OS_LOG_TYPE_DEBUG, "_collectionView: %@ itemsForAddingToDragSession: %@ atIndexPath: %@ point: %@", &v18, 0x2Au);
  }

  v16 = [(PUPhotosGridViewController *)self _dragItemsForIndexPath:v13];

  return v16;
}

- (id)_collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412802;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_DEBUG, "_collectionView: %@ itemsForBeginningDragSession: %@ atIndexPath: %@", &v14, 0x20u);
  }

  v12 = [(PUPhotosGridViewController *)self _dragItemsForIndexPath:v10];

  return v12;
}

- (id)_collectionView:(id)a3 liftingPreviewParametersForItemAtIndexPath:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEBUG, "_collectionView: %@ liftingPreviewParametersForItemAtIndexPath: %@", &v11, 0x16u);
  }

  v9 = [(PUPhotosGridViewController *)self _previewParametersForItemAtIndexPath:v7];

  return v9;
}

- (id)collectionView:(id)a3 dragPreviewParametersForItemAtIndexPath:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEBUG, "_collectionView: %@ liftingPreviewParametersForItemAtIndexPath: %@", &v11, 0x16u);
  }

  v9 = [(PUPhotosGridViewController *)self _previewParametersForItemAtIndexPath:v7];

  return v9;
}

- (id)_previewParametersForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69DC9A0]);
  if ([(PUPhotosGridViewController *)self cellFillMode]== 2)
  {
    v6 = [(PUPhotosGridViewController *)self collectionView];
    v7 = [v6 cellForItemAtIndexPath:v4];

    v8 = [(PUPhotosGridViewController *)self assetAtIndexPath:v4];
    [v8 aspectRatio];
    v10 = v9;
    [v7 bounds];
    v15 = [MEMORY[0x1E69DC728] bezierPathWithRect:{PURectWithAspectRatioFittingRect(v10, v11, v12, v13, v14)}];
    [v5 setVisiblePath:v15];
  }

  return v5;
}

- (id)_dragItemsForIndexPath:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(PUPhotosGridViewController *)self canDragOut]|| [(PUPhotosGridViewController *)self isAddPlaceholderAtIndexPath:v4])
  {
    v5 = MEMORY[0x1E695E0F0];
    goto LABEL_10;
  }

  v6 = [(PUPhotosGridViewController *)self photosDataSource];
  v7 = [v6 assetReferenceAtIndexPath:v4];

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
    v11 = [v7 asset];
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

- (BOOL)_confidentialityWarningRequiredForAsset:(id)a3
{
  v3 = a3;
  if ([MEMORY[0x1E69C3A10] confidentialityCheckRequired])
  {
    v4 = [MEMORY[0x1E69C3A10] confidentialWarningRequiredForAsset:v3];
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

  v4 = [MEMORY[0x1E69C3498] sharedInstance];
  if ([v4 dragOutEnabled])
  {
    v5 = [(PUPhotosGridViewController *)self sessionInfo];
    v6 = [v5 isSelectingAssets] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)photosGridBarsHelper:(id)a3 didChange:(unint64_t)a4
{
  if (a4)
  {
    [(PUPhotosGridViewController *)self updateNavigationBarAnimated:0];
  }
}

- (id)photosGridBarsHelper:(id)a3 titleForPhotoSelectionManager:(id)a4
{
  v4 = a4;
  v5 = [objc_opt_class() _localizedSelectionTitleWithPhotoSelectionManager:v4];

  return v5;
}

- (void)photosGlobalFooterViewDidChangeHeight:(id)a3
{
  if ([(PUPhotosGridViewController *)self px_isVisible])
  {

    [(PUPhotosGridViewController *)self updateGlobalFooter];
  }
}

- (void)photosGlobalFooterView:(id)a3 presentViewController:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    [(PUPhotosGridViewController *)self presentViewController:v5 animated:1 completion:0];
  }

  else
  {
    [(PUPhotosGridViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)oneUpPresentationHelper:(id)a3 didDismissOneUpViewController:(id)a4
{
  v5 = [(PUPhotosGridViewController *)self collectionView:a3];
  [v5 _setAutomaticContentOffsetAdjustmentEnabled:1];

  v6 = [(PUPhotosGridViewController *)self photosDataSource];
  [v6 stopForceIncludingAllAssets];
}

- (id)pu_debugRows
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(PUPhotosGridViewController *)self collectionView];
  v5 = [v4 collectionViewLayout];

  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 pu_debugRows];
    [v3 addObjectsFromArray:v6];
  }

  v7 = [(PUPhotosGridViewController *)self collectionView];
  objc_initWeak(&location, v7);

  v8 = MEMORY[0x1E69C65E8];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __42__PUPhotosGridViewController_pu_debugRows__block_invoke;
  v14 = &unk_1E7B80638;
  objc_copyWeak(&v15, &location);
  v9 = [v8 px_rowWithTitle:@"Begin Scroll Test" postDismissalAction:&v11];
  [v3 addObject:{v9, v11, v12, v13, v14}];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v3;
}

void __42__PUPhotosGridViewController_pu_debugRows__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performScrollTest:@"ScrollPhotosGrid" iterations:1000 delta:20];
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = +[PURootSettings sharedInstance];

  if (v7 == v10)
  {
    v8 = [v6 isEqualToString:@"allowIrisUI"];
  }

  else
  {
    v8 = 1;
  }

  v9 = +[PUPhotosGridSettings sharedInstance];

  if (v9 != v10)
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  [(PUPhotosGridViewController *)self gridSettings:v10 changedValueForKey:v6];
  if (v8)
  {
LABEL_6:
    [(PUPhotosGridViewController *)self updateLayoutMetrics];
    [(PUPhotosGridViewController *)self updateInterfaceForModelReloadAnimated:1];
  }

LABEL_7:
}

- (void)sessionInfoPhotoSelectionDidChange:(id)a3
{
  [(PUPhotosGridViewController *)self updateNavigationBarAnimated:0];
  [(PUPhotosGridViewController *)self _updateNavigationBannerAnimated:0];

  [(PUPhotosGridViewController *)self _updateCollectionViewMultipleSelection];
}

- (void)deselectAllItemsAnimated:(BOOL)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [(PUPhotosGridViewController *)self selectedIndexPaths];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v10 section];
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
        v13 = [v4 objectForKeyedSubscript:v12];

        if (!v13)
        {
          v13 = [MEMORY[0x1E696AD50] indexSet];
          v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
          [v4 setObject:v13 forKeyedSubscript:v14];
        }

        [v13 addIndex:{objc_msgSend(v10, "item")}];
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __55__PUPhotosGridViewController_deselectAllItemsAnimated___block_invoke;
  v16[3] = &unk_1E7B7CDE8;
  v16[4] = self;
  v17 = a3;
  [v4 enumerateKeysAndObjectsUsingBlock:v16];
}

void __55__PUPhotosGridViewController_deselectAllItemsAnimated___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setSelected:0 itemsAtIndexes:v6 inSection:objc_msgSend(a2 animated:{"unsignedIntegerValue"), *(a1 + 40)}];
}

- (void)setSelected:(BOOL)a3 itemsAtIndexes:(id)a4 inSection:(int64_t)a5 animated:(BOOL)a6
{
  v7 = a3;
  v9 = a4;
  v10 = [(PUPhotosGridViewController *)self photoCollectionAtIndex:a5];
  v11 = [(PUPhotosGridViewController *)self photoSelectionManager];
  v12 = v11;
  if (v7)
  {
    [v11 selectAssetsAtIndexes:v9 inAssetCollection:v10];
  }

  else
  {
    [v11 deselectAssetsAtIndexes:v9 inAssetCollection:v10];
  }

  v13 = [(PUPhotosGridViewController *)self collectionView];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76__PUPhotosGridViewController_setSelected_itemsAtIndexes_inSection_animated___block_invoke;
  v15[3] = &unk_1E7B7CDC0;
  v17 = a5;
  v14 = v13;
  v16 = v14;
  v18 = v7;
  [v9 enumerateIndexesUsingBlock:v15];
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
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:5360 description:@"Got mismatched request to end coalesced selection updates"];
  }

  --self->_coalescedSelectionEntranceCount;
  if (![(PUPhotosGridViewController *)self isPerformingCoalescedSelectionUpdates])
  {

    [(PUPhotosGridViewController *)self updatePeripheralInterfaceAnimated:0];
  }
}

- (BOOL)prepareForDismissingForced:(BOOL)a3
{
  v3 = a3;
  v5 = [(PUPhotosGridViewController *)self _removeActionSheet];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 presentingViewController];
    [v7 dismissViewControllerAnimated:0 completion:0];
  }

  v8 = [(PUPhotosGridViewController *)self _actionConfirmationAlert];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 presentingViewController];
    [v10 dismissViewControllerAnimated:0 completion:0];
  }

  v11 = [(PUPhotosGridViewController *)self activitySharingController];
  v12 = [v11 activityViewControllerIfAvailable];

  if (v12)
  {
    v13 = [v12 presentingViewController];

    if (v13)
    {
      [(PUPhotosGridViewController *)self setActivitySharingController:0];
      [(PUPhotosGridViewController *)self dismissViewControllerAnimated:0 completion:0];
    }
  }

  v14 = [(PUPhotosGridViewController *)self _slideshowViewController];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 presentingViewController];

    if (v16)
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __57__PUPhotosGridViewController_prepareForDismissingForced___block_invoke;
      v21[3] = &unk_1E7B80DD0;
      v21[4] = self;
      [(PUPhotosGridViewController *)self dismissViewControllerAnimated:0 completion:v21];
    }
  }

  v17 = [(PUPhotosGridViewController *)self oneUpPresentationHelper];
  if (v17)
  {
    v18 = [(PUPhotosGridViewController *)self oneUpPresentationHelper];
    v19 = [v18 dismissOneUpViewControllerForced:v3 animated:0];
  }

  else
  {
    v19 = 1;
  }

  [(PUPhotosGridViewController *)self setEditing:0 animated:0];

  return v19;
}

- (void)popoverPresentationControllerDidDismissPopover:(id)a3
{
  v4 = a3;
  v8 = [v4 presentedViewController];
  v5 = [(PUPhotosGridViewController *)self _shareAssetsPopoverController];

  if (v5 == v4)
  {
    [(PUPhotosGridViewController *)self _setShareAssetsPopoverController:0];
  }

  v6 = [(PUPhotosGridViewController *)self _actionConfirmationAlert];

  v7 = v8;
  if (v8 == v6)
  {
    [(PUPhotosGridViewController *)self _setActionConfirmationAlert:0];
    v7 = v8;
  }
}

- (void)prepareForPopoverPresentation:(id)a3
{
  v12 = a3;
  v4 = [v12 presentedViewController];
  v5 = [(PUPhotosGridViewController *)self _actionConfirmationAlert];
  v6 = v5;
  if (v4 == v5 && self->_shareToolbarButton)
  {
    v11 = [(PUPhotosGridViewController *)self isEditing];

    if (v11)
    {
      [v12 setBarButtonItem:self->_shareToolbarButton];
    }
  }

  else
  {
  }

  v7 = [(PUPhotosGridViewController *)self _removeActionSheet];
  if (v4 == v7)
  {
    v8 = [(PUPhotosGridViewController *)self _deleteActionController];

    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = [(PUPhotosGridViewController *)self _deleteActionController];
    v10 = [v9 action];

    v7 = [(PUPhotosGridViewController *)self _referenceBarButtonItemForDeleteAction:v10];
    [v12 setBarButtonItem:v7];
  }

LABEL_7:
}

- (BOOL)_navigateToInitialEdgeIfNeededAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(PUPhotosGridViewController *)self initialEdge];
  if ([(PUPhotosGridViewController *)self isViewLoaded])
  {
    v6 = [(PUPhotosGridViewController *)self collectionView];
    v7 = [v6 px_isScrolledAtEdge:v5];

    if (v7)
    {
      return 1;
    }
  }

  [(PUPhotosGridViewController *)self navigateToRectEdge:v5 animated:v3];
  return 0;
}

- (void)navigateToRectEdge:(unsigned int)a3 animated:(BOOL)a4
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__PUPhotosGridViewController_navigateToRectEdge_animated___block_invoke;
  aBlock[3] = &unk_1E7B7CD98;
  objc_copyWeak(&v11, &location);
  v12 = a3;
  v13 = a4;
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

- (void)navigateToRevealPhoto:(id)a3 inAssetContainer:(id)a4 animated:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__PUPhotosGridViewController_navigateToRevealPhoto_inAssetContainer_animated___block_invoke;
  aBlock[3] = &unk_1E7B7CD70;
  objc_copyWeak(&v18, &location);
  v10 = v9;
  v16 = v10;
  v11 = v8;
  v17 = v11;
  v19 = a5;
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

- (id)_indexPathForAsset:(id)a3 inAssetCollection:(id)a4 refetchIfNeeded:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(PUPhotosGridViewController *)self photosDataSource];
  v11 = [v10 indexPathForAsset:v8 inCollection:v9];
  if (!v11 && v5)
  {
    [v10 refetchResultsForAssetCollection:v9];
    v11 = [v10 indexPathForAsset:v8 inCollection:v9];
  }

  return v11;
}

- (void)navigateToPhoto:(id)a3 inAssetContainer:(id)a4 refetchIfNeeded:(BOOL)a5 animated:(BOOL)a6
{
  v6 = a6;
  v8 = [(PUPhotosGridViewController *)self _indexPathForAsset:a3 inAssetCollection:a4 refetchIfNeeded:a5];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    v8 = [(PUPhotosGridViewController *)self _navigateToPhotoAtIndexPath:v8 animated:v6 interactive:0];
    v9 = v10;
  }

  MEMORY[0x1EEE66BB8](v8, v9);
}

- (id)displayTitleInfoForDetailsOfAssetCollection:(id)a3 withTitleCategory:(int64_t)a4 preferredAttributesPromise:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = PLMemoriesGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *&buf[4] = v8;
    _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_DEBUG, "Creating display title info from asset collection %@", buf, 0xCu);
  }

  v11 = PLMemoriesGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = [v8 localizedTitle];
    v13 = [v8 localizedSubtitle];
    *buf = 138412546;
    *&buf[4] = v12;
    *&buf[12] = 2112;
    *&buf[14] = v13;
    _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_DEBUG, "Asset collection title:'%@' subtitle:'%@'", buf, 0x16u);
  }

  v14 = PLMemoriesGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = [(PUPhotosGridViewController *)self localizedTitleForAssetCollection:v8];
    *buf = 138412290;
    *&buf[4] = v15;
    _os_log_impl(&dword_1B36F3000, v14, OS_LOG_TYPE_DEBUG, "UI title:'%@'", buf, 0xCu);
  }

  v16 = PLMemoriesGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = [MEMORY[0x1E6978650] descriptionOfTitleCategory:a4];
    *buf = 67109378;
    *&buf[4] = a4;
    *&buf[8] = 2112;
    *&buf[10] = v17;
    _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_DEBUG, "Title category:%i “%@”", buf, 0x12u);
  }

  v18 = +[PUPhotosGridSettings sharedInstance];
  v19 = [v18 allowDynamicDetailsTitles];

  if ((v19 & 1) == 0)
  {

    v9 = 0;
  }

  *buf = a4;
  v20 = [(PUPhotosGridViewController *)self localizedTitleForAssetCollection:v8 titleCategory:buf];
  v21 = [MEMORY[0x1E69C4570] defaultHelper];
  v22 = [v21 titleForDisplayableText:v20 titleCategory:*buf options:1];

  v23 = +[PUPhotosGridSettings sharedInstance];
  [v23 simulatedDetailsAttributesLoadingDelay];
  v25 = v24;

  v26 = [MEMORY[0x1E69C3488] displayTitleInfoForDetailsOfAssetCollection:v8 withTitleCategory:a4 defaultTitle:v22 defaultTitleCategory:*buf titleKey:*MEMORY[0x1E6978EE8] titleCategoryKey:*MEMORY[0x1E6978EE0] defaultSubtitle:v25 subtitleKey:0 simulatedLoadingDelay:*MEMORY[0x1E6978ED8] preferredAttributesPromise:v9];

  return v26;
}

- (void)navigateToPhotosDetailsForAssetCollection:(id)a3 animated:(BOOL)a4
{
  v23 = a4;
  v30[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v22 = [(PUPhotosGridViewController *)self assetsInAssetCollection:v5];
  v6 = MEMORY[0x1E6978760];
  v30[0] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  v8 = [v6 transientCollectionListWithCollections:v7 title:0];

  v9 = [MEMORY[0x1E6978650] fetchCollectionsInCollectionList:v8 options:0];
  v10 = [objc_alloc(MEMORY[0x1E69C3878]) initWithCollectionListFetchResult:v9 options:0];
  v28 = v5;
  v29 = v22;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  [v10 setExistingAssetCollectionFetchResults:v11];

  [v10 setHideHiddenAssets:1];
  v12 = [objc_alloc(MEMORY[0x1E69C3870]) initWithPhotosDataSourceConfiguration:v10];
  v13 = [v5 titleCategory];
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = 6;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__PUPhotosGridViewController_navigateToPhotosDetailsForAssetCollection_animated___block_invoke;
  aBlock[3] = &unk_1E7B7CD20;
  v15 = v5;
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
  v21 = [(PUPhotosGridViewController *)self navigationController];
  [v21 pushViewController:v20 animated:v23];
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

- (void)_navigateToPhotoAtIndexPath:(id)a3 animated:(BOOL)a4 interactive:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  [(PUPhotosGridViewController *)self _ensureOneUpPresentationHelper];
  v9 = [(PUPhotosGridViewController *)self oneUpPresentationHelper];
  [v9 presentOneUpViewControllerFromAssetAtIndexPath:v8 animated:v6 interactiveMode:v5 activity:0 isNavigationSourceWidget:0 editActivityCompletion:0];
}

- (void)_updatePhotoDecorationForCell:(id)a3 animated:(BOOL)a4
{
  v5 = [a3 photoContentView];
  v4 = [v5 contentHelper];
  [v4 setPhotoDecoration:0];
}

- (BOOL)zoomTransition:(id)a3 transitionImageForPhotoToken:(id)a4 callback:(id)a5
{
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:5073 description:{@"Photo Token is invalid! (%@)", v8}];
  }

  v10 = v8;
  v11 = [v10 objectForKeyedSubscript:@"PUGridPhotoTokenPhoto"];
  if ([v11 isRAW])
  {
    v12 = [(PUPhotosGridViewController *)self assetIndexPathForPhotoToken:v10];
    v13 = [(PUPhotosGridViewController *)self collectionView];
    v14 = [v13 cellForItemAtIndexPath:v12];

    v15 = [v14 photoContentView];
    v16 = [v15 contentHelper];
    v17 = [v16 photoImage];

    v18 = v17 != 0;
    if (v17)
    {
      v9[2](v9, v17);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)zoomTransition:(id)a3 didFinishForOperation:(int64_t)a4 animated:(BOOL)a5 interactive:(BOOL)a6
{
  if (a5 && a6)
  {
    v6 = [(PUPhotosGridViewController *)self collectionView:a3];
    [v6 setScrollEnabled:1];
  }
}

- (void)zoomTransition:(id)a3 willBeginForOperation:(int64_t)a4 animated:(BOOL)a5 interactive:(BOOL)a6
{
  if (a5 && a6)
  {
    v6 = [(PUPhotosGridViewController *)self collectionView:a3];
    [v6 setScrollEnabled:0];
  }
}

- (void)zoomTransition:(id)a3 shouldHidePhotoTokens:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v21 = a3;
  v7 = a4;
  v8 = [(PUPhotosGridViewController *)self mainGridLayout];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v7;
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
          v19 = [MEMORY[0x1E696AAA8] currentHandler];
          [v19 handleFailureInMethod:v20 object:self file:@"PUPhotosGridViewController.m" lineNumber:5036 description:{@"Photo Token is invalid! (%@)", v15}];
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
            v29 = v8;
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

  if ([v8 conformsToProtocol:&unk_1F2C216F0])
  {
    [v8 setHiddenItemIndexPaths:v12];
  }
}

- (BOOL)zoomTransition:(id)a3 getFrame:(CGRect *)a4 inCoordinateSpace:(id *)a5 contentMode:(int64_t *)a6 cropInsets:(UIEdgeInsets *)a7 forPhotoToken:(id)a8 operation:(int64_t)a9
{
  v14 = a8;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v58 = [MEMORY[0x1E696AAA8] currentHandler];
    [v58 handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:4952 description:{@"Photo Token is invalid! (%@)", v14}];
  }

  v15 = [(PUPhotosGridViewController *)self assetIndexPathForPhotoToken:v14];
  if (!v15)
  {
    goto LABEL_26;
  }

  v16 = [(PUPhotosGridViewController *)self collectionView];
  [v16 layoutIfNeeded];
  v17 = [v16 cellForItemAtIndexPath:v15];
  if (a9 == 2)
  {
    v18 = [v16 collectionViewLayout];
    objc_opt_class();
    Height = 0.0;
    if (objc_opt_isKindOfClass())
    {
      v20 = v18;
      if ([v20 sectionHeadersEnabled])
      {
        [v20 frameForSectionHeaderAtVisualSection:{objc_msgSend(v15, "section")}];
        Height = CGRectGetHeight(v60);
      }
    }

    if (v17)
    {
      [v17 frame];
      [v16 scrollRectToVisible:0 animated:{v21 + 0.0, v22 - Height}];
    }

    else
    {
      v59 = a5;
      v23 = [v16 layoutAttributesForItemAtIndexPath:v15];
      v24 = [v16 collectionViewLayout];
      v25 = [v24 layoutAttributesForItemAtIndexPath:v15];

      [v23 frame];
      v27 = v26;
      [v25 frame];
      if (v27 == v28)
      {
        [v16 scrollToItemAtIndexPath:v15 atScrollPosition:2 animated:0];
      }

      else
      {
        [v25 frame];
        [v16 scrollRectToVisible:0 animated:{v29 + 0.0, v30 - Height}];
      }

      [v16 layoutIfNeeded];
      v17 = [v16 cellForItemAtIndexPath:v15];

      a5 = v59;
    }
  }

  if (v17)
  {
    [v17 bounds];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v39 = [(PUPhotosGridViewController *)self view];
    [v17 convertRect:v39 toView:{v32, v34, v36, v38}];
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

    if (a4)
    {
      a4->origin.x = v41;
      a4->origin.y = v43;
      a4->size.width = v45;
      a4->size.height = v47;
      if (a5)
      {
        v55 = v17;
        *a5 = v17;
      }
    }

    if (a6)
    {
      *a6 = v48;
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

- (id)zoomTransition:(id)a3 photoTokenForPhoto:(id)a4 inCollection:(id)a5
{
  v14[3] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [(PUPhotosGridViewController *)self photosDataSource];
  v10 = [v9 indexPathForAsset:v7 inCollection:v8];

  v11 = 0;
  if (v7 && v8 && v10)
  {
    v13[0] = @"PUGridPhotoTokenIndexPath";
    v13[1] = @"PUGridPhotoTokenPhoto";
    v14[0] = v10;
    v14[1] = v7;
    v13[2] = @"PUGridPhotoTokenCollection";
    v14[2] = v8;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  }

  return v11;
}

- (id)assetIndexPathForPhotoToken:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"PUGridPhotoTokenIndexPath"];
  v6 = [v4 objectForKey:@"PUGridPhotoTokenPhoto"];
  v7 = [v4 objectForKey:@"PUGridPhotoTokenCollection"];

  v8 = [(PUPhotosGridViewController *)self indexPathForAsset:v6 hintCollection:v7 hintIndexPath:v5];

  return v8;
}

- (id)_indexesWithoutPlaceholdersFromIndexes:(id)a3 inSection:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 lastIndex];
  v8 = 0;
  if (a4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v7;
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [MEMORY[0x1E696AC88] indexPathForItem:v7 inSection:a4];
      v11 = [(PUPhotosGridViewController *)self isAddPlaceholderAtIndexPath:v10];

      if (v11)
      {
        if ([v6 count] < 2)
        {
          v8 = 0;
        }

        else
        {
          v8 = [v6 mutableCopy];
          [v8 removeIndex:v9];
        }
      }

      else
      {
        v8 = v6;
      }
    }
  }

  return v8;
}

- (void)swipeSelectionManager:(id)a3 updatePhotoSelectionWithIndexes:(id)a4 inSection:(int64_t)a5 selectionMode:(int64_t)a6
{
  v9 = [(PUPhotosGridViewController *)self _indexesWithoutPlaceholdersFromIndexes:a4 inSection:a5];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    v9 = [(PUPhotosGridViewController *)self setSelected:a6 == 0 itemsAtIndexes:v9 inSection:a5 animated:0];
    v10 = v11;
  }

  MEMORY[0x1EEE66BB8](v9, v10);
}

- (int64_t)swipeSelectionManager:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v7 = [(PUPhotosGridViewController *)self photosDataSource];
  v8 = [v7 numberOfSections];

  if (v8 <= a4)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [(PUPhotosGridViewController *)self photosDataSource];
    [v12 handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:4876 description:{@"Section is out of bounds %li/%li", a4, objc_msgSend(v13, "numberOfSections")}];
  }

  v9 = [(PUPhotosGridViewController *)self photosDataSource];
  v10 = [v9 numberOfItemsInSection:a4];

  return v10 + [(PUPhotosGridViewController *)self wantsAddPlaceholderAtEndOfSection:a4];
}

- (void)_hideMenuIfNeeded
{
  [(PUPhotosGridViewController *)self _setMenuIndexPath:0];
  if (self->_showingMenu)
  {
    v3 = [MEMORY[0x1E69DCC68] sharedMenuController];
    v4 = [(PUPhotosGridViewController *)self collectionView];
    [v3 hideMenuFromView:v4];

    self->_showingMenu = 0;
  }
}

- (void)handleLongPressGesture:(id)a3
{
  v4 = a3;
  if ([v4 state] != 1)
  {
    goto LABEL_18;
  }

  v5 = [(PUPhotosGridViewController *)self collectionView];
  [v4 locationInView:v5];
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
      v15 = [(PUPhotosGridViewController *)self collectionView];
      v16 = [v15 cellForItemAtIndexPath:v10];

      [v16 center];
      v7 = v17;
      v9 = v18;
    }

    self->_showingMenu = 1;
    v19 = [MEMORY[0x1E69DCC68] sharedMenuController];
    v20 = [(PUPhotosGridViewController *)self collectionView];
    [v19 showMenuFromView:v20 rect:{v7, v9, v13, v14}];
  }

LABEL_18:
}

- (void)handlePhotoOrStackPinchGestureRecognizer:(id)a3
{
  v11 = a3;
  v4 = [(PUPhotosGridViewController *)self oneUpPresentationHelper];
  v5 = [v4 handlePresentingPinchGestureRecognizer:v11];

  v7 = v11;
  if ((v5 & 1) == 0)
  {
    v6 = [v11 state];
    v7 = v11;
    if (v6 == 2)
    {
      [v11 velocity];
      if (v8 <= 0.0)
      {
        v6 = [(PUPhotosGridViewController *)self canBeginStackCollapseTransition];
        v7 = v11;
        if (!v6)
        {
          goto LABEL_10;
        }

        v6 = [v11 velocity];
      }

      else
      {
        v9 = [(PUPhotosGridViewController *)self collectionView];
        [v11 locationInView:v9];
        v10 = [v9 indexPathForItemAtPoint:?];
        if (v10)
        {
          [(PUPhotosGridViewController *)self _beginInteractiveNavigationForItemAtIndexPath:v10];
        }
      }

      v7 = v11;
    }
  }

LABEL_10:

  MEMORY[0x1EEE66BB8](v6, v7);
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PUPhotosGridViewController *)self photoOrStackPinchGestureRecognizer];

  if (v8 == v7)
  {
    v10 = [(PUPhotosGridViewController *)self _multiSelectInteraction];
    v11 = [v10 gesturesForFailureRequirements];
    v9 = [v11 containsObject:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(PUPhotosGridViewController *)self isEditing];
  v6 = [(PUPhotosGridViewController *)self sessionInfo];
  v7 = [v6 isSelectingAssets];

  v8 = [(PUPhotosGridViewController *)self longPressGestureRecognizer];

  if (v8 == v4)
  {
    v11 = [(PUPhotosGridViewController *)self collectionView];
    [v4 locationInView:v11];
    v12 = [v11 indexPathForItemAtPoint:?];
    if (v12)
    {
      v10 = 0;
    }

    else
    {
      v10 = [(PUPhotosGridViewController *)self shouldShowMenu];
    }
  }

  else
  {
    v9 = [(PUPhotosGridViewController *)self photoOrStackPinchGestureRecognizer];

    if (v9 == v4)
    {
      v10 = (v5 | v7) ^ 1;
    }

    else
    {
      v10 = 1;
    }
  }

  return v10 & 1;
}

- (double)sectionedGridLayout:(id)a3 aspectRatioForItemAtIndexPath:(id)a4
{
  v5 = a4;
  if (v5)
  {
    v6 = [(PUPhotosGridViewController *)self isAddPlaceholderAtIndexPath:v5];
    v7 = [(PUPhotosGridViewController *)self photosDataSource];
    v8 = 1.0;
    if (!v6)
    {
      v9 = [v5 item];
      if (v9 < [v7 numberOfItemsInSection:{objc_msgSend(v5, "section")}])
      {
        v10 = [v7 assetAtIndexPath:v5];
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

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PUPhotosGridViewController *)self _cancelImageRequestForCell:v6];
  }
}

- (void)sectionedGridLayout:(id)a3 didPrepareTransitionIsAppearing:(BOOL)a4
{
  if (a4)
  {
    [(PUPhotosGridViewController *)self preheatAssetsWithPrefetchingDisabled:1];
  }

  else
  {
    [(PUPhotosGridViewController *)self resetPreheating];
  }
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PUPhotosGridViewController *)self isAddPlaceholderAtIndexPath:v7])
  {
    if (([(PUPhotosGridViewController *)self isEditing]& 1) == 0)
    {
      -[PUPhotosGridViewController didSelectAddPlaceholderInSection:](self, "didSelectAddPlaceholderInSection:", [v7 section]);
    }
  }

  else
  {
    v8 = [(PUPhotosGridViewController *)self sessionInfo];
    if ([v8 isSelectingAssets])
    {
      v9 = 1;
    }

    else
    {
      v9 = [(PUPhotosGridViewController *)self isEditing];
    }

    v10 = [v6 hasActiveDrag];
    v11 = [v6 cellForItemAtIndexPath:v7];
    v12 = [v11 dragState];
    if (v10 || !v9)
    {
      if (!v12)
      {
        v13 = -[PUPhotosGridViewController photoCollectionAtIndex:](self, "photoCollectionAtIndex:", [v7 section]);
        v14 = [(PUPhotosGridViewController *)self assetAtIndexPath:v7];
        [(PUPhotosGridViewController *)self handleNavigateToAsset:v14 inContainer:v13];
      }
    }

    else
    {
      [(PUPhotosGridViewController *)self handleToggleSelectionOfItemAtIndexPath:v7];
    }
  }

  return 0;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:v9 forIndexPath:v8];
  [(PUPhotosGridViewController *)self configureSupplementaryView:v10 ofKind:v9 forIndexPath:v8];

  return v10;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([(PUPhotosGridViewController *)self isAddPlaceholderAtIndexPath:v6])
  {
    v8 = [v7 dequeueReusableCellWithReuseIdentifier:@"PUAddPlaceholderCell" forIndexPath:v6];

    [(PUPhotosGridViewController *)self _configureAddPlaceholderCell:v8 animated:0];
  }

  else
  {
    v8 = [v7 dequeueReusableCellWithReuseIdentifier:@"PUPhotoCell" forIndexPath:v6];

    [(PUPhotosGridViewController *)self configureGridCell:v8 forItemAtIndexPath:v6];
  }

  return v8;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v6 = [(PUPhotosGridViewController *)self photosDataSource];
  v7 = [v6 numberOfItemsInSection:a4];

  return v7 + [(PUPhotosGridViewController *)self wantsAddPlaceholderAtEndOfSection:a4];
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  v3 = [(PUPhotosGridViewController *)self collectionListFetchResult];
  v4 = [v3 count];

  return v4;
}

- (void)menuActionController:(id)a3 didDismissWithActionIdentifier:(id)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(PUPhotosGridViewController *)self photosDataSource];
  [v6 stopForceIncludingAllAssets];

  LODWORD(v6) = [v5 isEqualToString:@"com.apple.mobileslideshow.PUMenuActionController.share"];
  if (v6)
  {
    v7 = [(PUPhotosGridViewController *)self _previewingIndexPath];
    if (v7)
    {
      v8 = [(PUPhotosGridViewController *)self assetAtIndexPath:v7];
      if (v8)
      {
        v9 = [(PUPhotosGridViewController *)self photosDataSource];
        v10 = [v9 assetCollectionForSection:{objc_msgSend(v7, "section")}];

        v11 = MEMORY[0x1E6978630];
        v12 = [v8 localIdentifier];
        v18[0] = v12;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
        v14 = [v8 photoLibrary];
        v15 = [v14 px_standardLibrarySpecificFetchOptions];
        v16 = [v11 fetchAssetsWithLocalIdentifiers:v13 options:v15];

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

- (id)previewViewControllerForItemAtIndexPath:(id)a3
{
  v4 = a3;
  if ([(PUPhotosGridViewController *)self isAddPlaceholderAtIndexPath:v4])
  {
    v5 = 0;
  }

  else
  {
    [(PUPhotosGridViewController *)self _ensureOneUpPresentationHelper];
    v6 = [(PUPhotosGridViewController *)self oneUpPresentationHelper];
    if ([v6 canPresentOneUpViewControllerAnimated:1])
    {
      v5 = [v6 previewViewControllerForItemAtIndexPath:v4 allowingActions:1];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = v5;
        [v5 createMenuActionControllerForManagerIfNeeded:0 withPresentingViewController:self regionOfInterestProvider:0];
        v7 = [v5 menuActionController];

        [v7 setDelegate:self];
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v6 = a5;
  [(PUPhotosGridViewController *)self _ensureOneUpPresentationHelper];
  v7 = [(PUPhotosGridViewController *)self oneUpPresentationHelper];
  v8 = [v6 previewViewController];

  [v7 didDismissPreviewViewController:v8 committing:{-[PUPhotosGridViewController _previewCommitting](self, "_previewCommitting")}];

  [(PUPhotosGridViewController *)self _setPreviewCommitting:0];
}

- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v6 = a5;
  if (![(PUPhotosGridViewController *)self isInMultiSelectMode])
  {
    v7 = [v6 previewViewController];
    [(PUPhotosGridViewController *)self _setPreviewCommitting:1];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __111__PUPhotosGridViewController_contextMenuInteraction_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke;
    v9[3] = &unk_1E7B80C38;
    v9[4] = self;
    v10 = v7;
    v8 = v7;
    [v6 addCompletion:v9];
  }
}

void __111__PUPhotosGridViewController_contextMenuInteraction_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureOneUpPresentationHelper];
  v2 = [*(a1 + 32) oneUpPresentationHelper];
  [v2 commitPreviewViewController:*(a1 + 40)];
}

- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4
{
  v5 = a3;
  v6 = [(PUPhotosGridViewController *)self collectionView];
  [v5 locationInView:v6];
  v8 = v7;
  v10 = v9;

  v11 = [v6 indexPathForItemAtPoint:{v8, v10}];
  v12 = [v6 cellForItemAtIndexPath:v11];
  [(PUPhotosGridViewController *)self _setPreviewingIndexPath:v11];
  v13 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v12];

  return v13;
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [(PUPhotosGridViewController *)self collectionView];
  v8 = [v7 indexPathForItemAtPoint:{x, y}];

  if (v8 && [(PUPhotosGridViewController *)self allowedActions])
  {
    v9 = [(PUPhotosGridViewController *)self gridSpec];
    if ([v9 canCommitPreview])
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
  v6 = [(PUPhotosGridViewController *)self _photoBrowserOneUpPresentationAdaptor];
  if (!v6)
  {
    v6 = objc_alloc_init(PUPhotoBrowserOneUpPresentationAdaptor);
    [(PUPhotoBrowserOneUpPresentationAdaptor *)v6 setZoomTransitionDelegate:self];
    [(PUPhotosGridViewController *)self _setPhotoBrowserOneUpPresentationAdaptor:v6];
  }

  v3 = [(PUPhotosGridViewController *)self oneUpPresentationHelper];
  if (!v3)
  {
    v4 = [PUOneUpPresentationHelper alloc];
    v5 = [(PUPhotosGridViewController *)self photosDataSource];
    v3 = [(PUOneUpPresentationHelper *)v4 initWithPhotosDataSource:v5];

    [(PUOneUpPresentationHelper *)v3 setDelegate:self];
    [(PUOneUpPresentationHelper *)v3 setAssetDisplayDelegate:v6];
    [(PUPhotosGridViewController *)self _setOneUpPresentationHelper:v3];
  }
}

- (void)_updateBackButtonTitle
{
  v3 = [(PUPhotosGridViewController *)self navigationController];
  v16 = [v3 viewControllers];

  v4 = [v16 indexOfObject:self];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL || (v5 = v4 + 1, v4 + 1 >= [v16 count]))
  {
    v8 = 1;
  }

  else
  {
    v6 = [v16 objectAtIndex:v5];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v8 = isKindOfClass ^ 1;
  }

  v9 = [(PUPhotosGridViewController *)self _pushedPhotoBrowserController];
  if (v9 && ![(PUPhotosGridViewControllerSpec *)self->_gridSpec wantsBackButtonTitleForPhotoBrowser])
  {
  }

  else
  {

    if (v8)
    {
      v10 = [(PUPhotosGridViewController *)self navigationItem];
      v11 = [v10 backBarButtonItem];

      if (!v11)
      {
        goto LABEL_14;
      }

      v12 = [(PUPhotosGridViewController *)self navigationItem];
      [v12 setBackBarButtonItem:0];
      goto LABEL_13;
    }
  }

  v13 = [(PUPhotosGridViewController *)self navigationItem];
  v14 = [v13 backBarButtonItem];

  if (v14)
  {
    goto LABEL_14;
  }

  v12 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:&stru_1F2AC6818 style:0 target:0 action:0];
  v15 = [(PUPhotosGridViewController *)self navigationItem];
  [v15 setBackBarButtonItem:v12];

LABEL_13:
LABEL_14:
}

- (void)_configureAddPlaceholderCell:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
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

  v9 = [v6 photoContentView];
  v10 = [v9 contentHelper];

  [v10 setPhotoImage:_configureAddPlaceholderCell_animated__image];
  [v10 setFillMode:0];
  [v10 setPhotoDecoration:_configureAddPlaceholderCell_animated__decoration];
  v11 = MEMORY[0x1E69DD250];
  v13[1] = 3221225472;
  v13[0] = MEMORY[0x1E69E9820];
  v13[2] = __68__PUPhotosGridViewController__configureAddPlaceholderCell_animated___block_invoke_2;
  v13[3] = &unk_1E7B7FF70;
  if (v4)
  {
    v7 = 0.25;
  }

  v14 = v6;
  v15 = v8;
  v12 = v6;
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

- (void)configureSupplementaryView:(id)a3 ofKind:(id)a4 forIndexPath:(id)a5
{
  v9 = a3;
  v7 = a4;
  if ([v7 isEqualToString:@"PUGridGlobalHeader"])
  {
    [(PUPhotosGridViewController *)self configureGlobalHeaderView:v9];
  }

  else if ([v7 isEqualToString:@"PUGridGlobalFooter"])
  {
    v8 = v9;
    [v8 setDelegate:self];
    [v8 setLayoutDelegate:self];
    [(PUPhotosGridViewController *)self configureGlobalFooterView:v8];
  }
}

- (void)_cancelImageRequestForCell:(id)a3
{
  v7 = a3;
  v4 = [v7 currentImageRequestID];
  if (v4)
  {
    v5 = v4;
    v6 = [(PUPhotosGridViewController *)self _cachingImageManager];
    [v6 cancelImageRequest:v5];

    [v7 setCurrentImageRequestID:0];
  }
}

- (void)configureDecorationsForCell:(id)a3 withAsset:(id)a4 assetCollection:(id)a5 thumbnailIsPlaceholder:(BOOL)a6 assetMayHaveChanged:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = [v12 photoContentView];
  v16 = [v15 contentHelper];

  v17 = !v8 || v7;
  if (v13)
  {
    if (!v8 || ([v13 px_isSharedAlbumAsset] & 1) != 0 || (objc_msgSend(v13, "hasAllThumbs") & 1) != 0)
    {
      v18 = [(PUPhotosGridViewController *)self isTrashBinViewController];
      v31 = *(MEMORY[0x1E69C4840] + 8);
      v32 = *(MEMORY[0x1E69C4840] + 24);
      if (v18)
      {
        v19 = 0;
        v20 = *MEMORY[0x1E69C4840];
        v21 = 1;
      }

      else
      {
        v22 = [(PUPhotosGridViewController *)self _badgeManager];
        v23 = v22;
        if (v22)
        {
          [v22 badgeInfoForAsset:v13 inCollection:v14 options:0];
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
        v26 = [v25 badgeAllItemsAsFavorites];

        v21 = 0;
        v19 = 0;
        v20 = v24 | v26;
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
    [v16 setBadgeInfo:v30];
    [v16 setTextBannerVisible:v21];
    if (v21)
    {
      LOBYTE(v30[0]) = 0;
      v27 = [(PUPhotosGridViewController *)self _localizedBannerTextForAsset:v13 isDestructive:v30];
      v28 = [v16 textBannerView];
      [v28 setText:v27];
      v29 = [(PUPhotosGridViewController *)self gridSpec];
      [v28 setTextAlignment:{objc_msgSend(v29, "cellBannerTextAlignment")}];

      [v28 setDestructiveText:LOBYTE(v30[0])];
    }
  }

  else
  {
    v19 = 0;
  }

  if (v17)
  {
    [v12 setCloudIconVisible:v19];
  }
}

- (id)imageRequestOptionsForAsset:(id)a3 pixelSize:(CGSize *)a4
{
  v5 = objc_alloc_init(MEMORY[0x1E6978868]);
  [v5 setAllowPlaceholder:1];
  [v5 setNetworkAccessAllowed:1];
  [v5 setDeliveryMode:{-[PUPhotosGridViewController imageDeliveryMode](self, "imageDeliveryMode")}];

  return v5;
}

- (void)configureGridCell:(id)a3 forItemAtIndexPath:(id)a4 assetMayHaveChanged:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(PUPhotosGridViewController *)self photosDataSource];
  v11 = [v10 assetCollectionForSection:{objc_msgSend(v9, "section")}];

  v12 = [(PUPhotosGridViewController *)self assetAtIndexPathIfSafe:v9];
  v13 = [v8 photoContentView];
  v14 = [v13 contentHelper];

  v15 = [(PUPhotosGridViewController *)self cellFillMode];
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
  v48 = a5;
  v18 = v14;
  v47 = v15;
  v41 = v18;
  v42 = self;
  v19 = v11;
  v43 = v19;
  v20 = v12;
  v44 = v20;
  v21 = v8;
  v45 = v21;
  v22 = v9;
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
    v25 = [(PUPhotosGridViewController *)self _cachingImageManager];
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
    v34 = a5;
    v24 = [v25 requestImageForAsset:v28 targetSize:v15 < 2 contentMode:v26 options:v27 resultHandler:{v55, v56}];

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

- (void)updateVisibleSupplementaryViewsOfKind:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PUPhotosGridViewController *)self collectionView];
  v6 = [v5 _indexPathsForVisibleSupplementaryViewsOfKind:v4];
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
        v12 = [v5 _visibleSupplementaryViewOfKind:v4 atIndexPath:v11];
        if (v12)
        {
          [(PUPhotosGridViewController *)self configureSupplementaryView:v12 ofKind:v4 forIndexPath:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)updateInterfaceForIncrementalDataSourceChanges:(id)a3
{
  v5 = a3;
  if (([v5 hasIncrementalChanges] & 1) == 0)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:4053 description:@"Must have incremental changes to perform an incremental update"];
  }

  [(PUPhotosGridViewController *)self _invalidateAllAssetIndexes];
  v6 = [v5 deletedSections];
  v7 = [v5 insertedSections];
  v8 = [v5 changedSections];
  v9 = [v5 deletedIndexPaths];
  v10 = [v5 insertedIndexPaths];
  v11 = [v5 changedIndexPaths];
  v28 = [v5 contentChangedIndexPaths];
  v27 = [v5 favoriteChangedIndexPaths];

  if ([v8 count])
  {
    v12 = 1;
  }

  else
  {
    v12 = [v11 count] != 0;
  }

  if ([v6 count])
  {
    v13 = 1;
  }

  else
  {
    v13 = [v9 count] != 0;
  }

  if ([v7 count])
  {
    v26 = v11;
    v14 = [(PUPhotosGridViewController *)self collectionView];
LABEL_11:
    v15 = [(PUPhotosGridViewController *)self photoLibrary];
    v16 = [v15 px_beginPausingChangesWithTimeout:@"PUPhotosGridViewController-CollectionViewBatchUpdate" identifier:1.0];

    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __77__PUPhotosGridViewController_updateInterfaceForIncrementalDataSourceChanges___block_invoke;
    v35[3] = &unk_1E7B7EA98;
    v36 = v6;
    v14 = v14;
    v37 = v14;
    v38 = v7;
    v39 = v9;
    v40 = v10;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __77__PUPhotosGridViewController_updateInterfaceForIncrementalDataSourceChanges___block_invoke_2;
    v33[3] = &unk_1E7B80088;
    v33[4] = self;
    v34 = v16;
    v17 = v16;
    [v14 performBatchUpdates:v35 completion:v33];
    if (v13)
    {
      v18 = [(PUPhotosGridViewController *)self ppt_nextDeleteFinishedBlock];
      if (v18)
      {
        [(PUPhotosGridViewController *)self ppt_setNextDeleteFinishedBlock:0];
        v18[2](v18);
      }
    }

    v19 = [(PUPhotosGridViewController *)self photosDataSource];
    [v19 pauseChangeDeliveryFor:@"PUPhotosGridViewController-Padding" identifier:1.0];

    goto LABEL_16;
  }

  v24 = [v10 count] != 0 || v13;
  if (((v24 | v12) & 1) == 0)
  {
    goto LABEL_19;
  }

  v26 = v11;
  v14 = [(PUPhotosGridViewController *)self collectionView];
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
  v30 = v14;
  v31 = v20;
  v32 = self;
  v21 = v20;
  v22 = v14;
  v23 = _Block_copy(aBlock);
  v23[2](v23, v28);
  v23[2](v23, v27);
  if (v8)
  {
    [(PUPhotosGridViewController *)self updateVisibleSectionHeadersAtIndexes:v8];
  }

  [(PUPhotosGridViewController *)self updatePeripheralInterfaceAnimated:1];

  v11 = v26;
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

- (void)updateInterfaceForModelReloadAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(PUPhotosGridViewController *)self isViewLoaded])
  {
    [(PUPhotosGridViewController *)self beginBatchPreheating];
    [(PUPhotosGridViewController *)self _invalidateAllAssetIndexes];
    v5 = [(PUPhotosGridViewController *)self mainGridLayout];
    [v5 invalidateLayout];

    v6 = [(PUPhotosGridViewController *)self collectionView];
    [v6 reloadData];

    [(PUPhotosGridViewController *)self resetPreheating];
    [(PUPhotosGridViewController *)self preheatAssets];
    [(PUPhotosGridViewController *)self endBatchPreheating];
    [(PUPhotosGridViewController *)self setContentViewInSyncWithModel:1];
    [(PUPhotosGridViewController *)self updatePeripheralInterfaceAnimated:v3];

    [(PUPhotosGridViewController *)self _hideMenuIfNeeded];
  }
}

- (void)updateEmptyPlaceholderView
{
  if ([(PUPhotosGridViewController *)self isViewLoaded])
  {
    if ([(PUPhotosGridViewController *)self wantsPlaceholderView])
    {
      v3 = [MEMORY[0x1E69DC8C8] emptyConfiguration];
      v18 = 0;
      v19 = 0;
      v16 = 0;
      v17 = 0;
      [(PUPhotosGridViewController *)self getEmptyPlaceholderViewTitle:&v19 message:&v18 buttonTitle:&v17 buttonAction:&v16];
      v4 = v19;
      v5 = v18;
      v6 = v17;
      v7 = v16;
      [v3 setText:v4];
      [v3 setSecondaryText:v5];
      v8 = [v3 buttonProperties];
      v9 = [v8 configuration];
      [v9 setTitle:v6];

      v10 = MEMORY[0x1E69DC628];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __56__PUPhotosGridViewController_updateEmptyPlaceholderView__block_invoke;
      v14[3] = &unk_1E7B7CC30;
      v15 = v7;
      v11 = v7;
      v12 = [v10 actionWithHandler:v14];
      v13 = [v3 buttonProperties];
      [v13 setPrimaryAction:v12];

      [(PUPhotosGridViewController *)self _setContentUnavailableConfiguration:v3];
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
  v3 = [(PUPhotosGridViewController *)self isEmpty];
  if (v3)
  {
    LOBYTE(v3) = ![(PUPhotosGridViewController *)self wantsGlobalFooter];
  }

  return v3;
}

- (void)getEmptyPlaceholderViewTitle:(id *)a3 message:(id *)a4 buttonTitle:(id *)a5 buttonAction:(id *)a6
{
  v11 = [(PUPhotosGridViewController *)self collectionListFetchResult];
  v17 = PXPhotoKitLocalizedTitleForEmptyCollectionListFetchResult();

  if ([(PUPhotosGridViewController *)self isTrashBinViewController])
  {
    v12 = 0;
  }

  else
  {
    v13 = [(PUPhotosGridViewController *)self collectionListFetchResult];
    v14 = PXPhotoKitLocalizedMessageForEmptyCollectionListFetchResult();
    v12 = [v14 string];
  }

  v15 = v17;
  *a3 = v17;
  v16 = v12;
  *a4 = v12;
  *a5 = 0;
  *a6 = 0;
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
  v8 = [(PUPhotosGridViewController *)self view];
  v3 = self->_alternateContentView != 0;
  v4 = [(PUPhotosGridViewController *)self collectionView];
  [v4 setHidden:v3];

  v5 = [(PUPhotosGridViewController *)self _emptyPlaceholderView];
  [v5 setHidden:v3];

  v6 = [(PUPhotosGridViewController *)self collectionView];
  [v8 sendSubviewToBack:v6];

  v7 = [(PUPhotosGridViewController *)self _emptyPlaceholderView];
  [v8 bringSubviewToFront:v7];

  [(UIView *)self->_alternateContentView bringSubviewToFront:self->_alternateContentView];
}

- (void)_updateNavigationBannerAnimated:(BOOL)a3
{
  v3 = a3;
  v10 = [(PUPhotosGridViewController *)self _pickerBannerView];
  v5 = [(PUPhotosGridViewController *)self sessionInfo];
  if ([v5 isSelectingAssets] && objc_msgSend(v5, "promptLocation") == 1)
  {
    v6 = [v5 localizedPrompt];
  }

  else
  {
    v6 = 0;
  }

  if (-[PUPhotosGridViewController allowSelectAllButton](self, "allowSelectAllButton") && [v5 isSelectingAssets])
  {
    v7 = [(PUPhotosGridViewController *)self _selectionButton];
    if ([(PUPhotosGridViewController *)self _areAllAssetsSelected])
    {
      v8 = @"DESELECT_ALL_BUTTON_TITLE";
    }

    else
    {
      v8 = @"SELECT_ALL_BUTTON_TITLE";
    }

    v9 = PULocalizedString(v8);
    [v7 setTitle:v9];
    [v7 sizeToFit];
  }

  else
  {
    v7 = 0;
  }

  [v10 setTitle:v6];
  [v10 setLeftView:v7 animated:v3];
  [v10 setRightView:0 animated:v3];
}

- (id)_pickerBannerView
{
  v2 = [(PUPhotosGridViewController *)self navigationItem];
  v3 = [v2 pu_banner];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 bannerView];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_updateToolbarContentsAnimated:(BOOL)a3
{
  if ([(PUPhotosGridViewController *)self shouldShowToolbar])
  {
    v4 = [(PUPhotosGridViewController *)self newToolbarItems];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(PUPhotosGridViewController *)self navigationController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [(UIViewController *)self pu_toolbarViewModel];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __61__PUPhotosGridViewController__updateToolbarContentsAnimated___block_invoke;
    v9[3] = &unk_1E7B80C38;
    v10 = v7;
    v11 = v4;
    v8 = v7;
    [v8 performChanges:v9];
  }

  else
  {
    if ([(PUPhotosGridViewController *)self shouldShowToolbar])
    {
      [(PUPhotosGridViewController *)self setToolbarItems:v4];
    }

    [(UIViewController *)self pu_performBarsVisibilityUpdatesWithAnimationSettings:2, *MEMORY[0x1E69DE248]];
  }
}

- (void)getTitle:(id *)a3 prompt:(id *)a4 shouldHideBackButton:(BOOL *)a5 leftBarButtonItems:(id *)a6 rightBarButtonItems:(id *)a7
{
  v10 = [(PUPhotosGridViewController *)self isEditing];
  v11 = [(PUPhotosGridViewController *)self sessionInfo];
  v12 = [v11 isSelectingAssets];

  if (v12 && (-[PUPhotosGridViewController sessionInfo](self, "sessionInfo"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 promptLocation], v13, !v14))
  {
    v19 = [(PUPhotosGridViewController *)self sessionInfo];
    v69 = [v19 localizedPrompt];
  }

  else
  {
    v69 = 0;
  }

  if (v10)
  {
    [(PUPhotosGridViewController *)self localizedSelectionTitle];
  }

  else
  {
    [(PUPhotosGridViewController *)self title];
  }
  v15 = ;
  *a3 = v15;
  v71 = [(PUPhotosGridViewController *)self customDoneButtonItem];
  v70 = v10;
  if (v12)
  {
    v16 = [(PUPhotosGridViewController *)self _selectSessionDoneBarButtonItem];
    v17 = [(PUPhotosGridViewController *)self _selectSessionCancelBarButtonItem];
    v10 = 0;
  }

  else if ([(PUPhotosGridViewController *)self canDisplayEditButton])
  {
    v16 = [(PUPhotosGridViewController *)self editButtonItem];
    if (v10)
    {
      v18 = [(PUPhotosGridViewController *)self _cancelButtonItem];

      v17 = 0;
      v10 = 1;
      v16 = v18;
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
      [v16 setTitle:v21];

      v17 = 0;
    }
  }

  else
  {
    v10 = 0;
    v17 = 0;
    v16 = 0;
  }

  v62 = v15;
  v22 = a4;
  if (v71)
  {
    v23 = [(PUPhotosGridViewController *)self showsCustomDoneButtonItemOnLeft];
    v24 = ![(PUPhotosGridViewController *)self showsCustomDoneButtonItemOnLeft];
    v25 = !v23;
  }

  else
  {
    v24 = 0;
    v25 = 1;
  }

  v26 = [(PUPhotosGridViewController *)self showsSelectionSessionCancelButtonItemOnLeft];
  v67 = v16;
  v68 = v17;
  if (v17)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  if ((v10 | v25))
  {
    v28 = v16 != 0;
    if (v16)
    {
      v29 = v24;
    }

    else
    {
      v29 = 0;
    }

    if ((v29 & 1) == 0)
    {
      if (v12 & 1 | ((v70 & 1) == 0))
      {
        if (!v27)
        {
          v30 = 0;
          goto LABEL_47;
        }

LABEL_45:
        v30 = [MEMORY[0x1E695DF70] array];
        goto LABEL_46;
      }

LABEL_41:
      v30 = [MEMORY[0x1E695DF70] array];
      goto LABEL_42;
    }

    goto LABEL_37;
  }

  v30 = [MEMORY[0x1E695DF70] array];
  [v30 addObject:v71];
  v28 = v16 != 0;
  if (v16)
  {
    v31 = v24;
  }

  else
  {
    v31 = 0;
  }

  if (v31)
  {
    if (v30)
    {
LABEL_38:
      [v30 addObject:v16];
      v28 = 1;
      goto LABEL_39;
    }

LABEL_37:
    v30 = [MEMORY[0x1E695DF70] array];
    goto LABEL_38;
  }

LABEL_39:
  if (v12 & 1 | ((v70 & 1) == 0))
  {
    goto LABEL_43;
  }

  if (!v30)
  {
    goto LABEL_41;
  }

LABEL_42:
  v32 = [(PUPhotosGridViewController *)self _newEditActionItemsWithWideSpacing:0];
  [v30 addObjectsFromArray:v32];

LABEL_43:
  if (!v27)
  {
    goto LABEL_47;
  }

  if (!v30)
  {
    goto LABEL_45;
  }

LABEL_46:
  [v30 addObject:v68];
LABEL_47:
  v33 = v22;
  v34 = v24 ^ 1;
  v35 = v10 | v24 ^ 1;
  v36 = a3;
  if (v35)
  {
    v37 = v63;
    v38 = v70;
    if ((v34 & v28) == 1)
    {
      v39 = [MEMORY[0x1E695DF70] array];
      [v39 addObject:v67];
    }

    else
    {
      v39 = 0;
    }
  }

  else
  {
    v39 = [MEMORY[0x1E695DF70] array];
    [v39 addObject:v71];
    v37 = v63;
    v38 = v70;
  }

  if (((v38 | v12) & 1) != 0 || [(PUPhotosGridViewController *)self isEmpty])
  {
    goto LABEL_64;
  }

  v40 = [(PUPhotosGridViewController *)self gridSpec];
  if ([v40 canDisplaySlideshowButton])
  {
    v41 = [(PUPhotosGridViewController *)self allowSlideshowButton];

    if (v41)
    {
      if (!v39)
      {
        v39 = [MEMORY[0x1E695DF70] array];
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

      [v39 addObject:slideshowButtonSpacer];
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

      [v39 addObject:slideshowButton];
    }

    v36 = a3;
LABEL_64:
    if (v38)
    {
      goto LABEL_65;
    }

LABEL_70:
    v54 = [v30 count] != 0;
    goto LABEL_84;
  }

  if (!v38)
  {
    goto LABEL_70;
  }

LABEL_65:
  if (![(PUPhotosGridViewController *)self isEmpty]&& [(PUPhotosGridViewController *)self allowSelectAllButton])
  {
    v53 = v36;
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
      v56 = [(PUPhotosGridViewController *)self gridSpec];
      v57 = [v56 shouldPlaceSelectAllButtonInRightNavigationBar];

      if (v57)
      {
        if (v39)
        {
          v58 = v39;
        }

        else
        {
          v58 = [MEMORY[0x1E695DF70] array];
          v39 = v58;
        }
      }

      else if (v30)
      {
        v58 = v30;
      }

      else
      {
        v58 = [MEMORY[0x1E695DF70] array];
        v30 = v58;
      }

      v36 = v53;
      [v58 addObject:v55];
    }
  }

  v54 = 1;
LABEL_84:
  v59 = v37;
  *v36 = v37;
  if (v33)
  {
    *v33 = v69;
  }

  if (a5)
  {
    *a5 = v54;
  }

  if (a6)
  {
    v60 = v30;
    *a6 = v30;
  }

  if (a7)
  {
    v61 = v39;
    *a7 = v39;
  }
}

- (void)updateNavigationBarAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(PUPhotosGridViewController *)self _barsHelper];
  [v5 invalidateNavigationBarItems];
  v6 = [v5 title];
  v7 = [v5 prompt];
  v8 = [v5 shouldHideBackButton];
  v9 = [v5 leftBarButtonItems];
  v10 = [v5 rightBarButtonItems];
  v11 = [(PUPhotosGridViewController *)self navigationItem];
  [v11 _setTitle:v6 animated:v3 matchBarButtonItemAnimationDuration:1];
  v12 = MEMORY[0x1E69DD250];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __58__PUPhotosGridViewController_updateNavigationBarAnimated___block_invoke;
  v19 = &unk_1E7B80C38;
  v13 = v11;
  v20 = v13;
  v21 = v7;
  v14 = v7;
  [v12 performWithoutAnimation:&v16];
  [v13 setHidesBackButton:v8 animated:{v3, v16, v17, v18, v19}];
  LODWORD(v12) = [v13 pu_shouldUpdateLeftBarButtonItems:v9];
  v15 = [v13 pu_shouldUpdateRightBarButtonItems:v10];
  if (v12)
  {
    [v13 setLeftBarButtonItems:v9 animated:v3];
  }

  if (v15)
  {
    [v13 setRightBarButtonItems:v10 animated:v3];
  }
}

- (void)_updateContentOffsetForPendingViewSizeTransition
{
  v15 = [(PUPhotosGridViewController *)self _pendingViewSizeTransitionContext];
  if (v15)
  {
    if ([(PUPhotosGridViewController *)self isViewLoaded])
    {
      v3 = [(PUPhotosGridViewController *)self collectionView];
      [v3 bounds];
      CGRectGetWidth(v17);

      [(PUPhotosGridViewController *)self collectionViewLayoutReferenceWidth];
      if (PXFloatApproximatelyEqualToFloat())
      {
        v4 = [(PUPhotosGridViewController *)self mainGridLayout];
        v5 = [(PUPhotosGridViewController *)self collectionView];
        [v5 contentOffset];
        v7 = v6;
        v9 = v8;

        [v4 targetContentOffsetForViewSizeTransitionContext:v15];
        v12 = v11;
        v13 = v10;
        if (v7 != v11 || v9 != v10)
        {
          v14 = [(PUPhotosGridViewController *)self collectionView];
          [v14 setContentOffset:{v12, v13}];

          [v4 invalidateLayout];
        }

        [(PUPhotosGridViewController *)self _setPendingViewSizeTransitionContext:0];
      }
    }
  }
}

- (void)updateGlobalFooterUsingFooterView:(id)a3
{
  v15 = a3;
  if (([(PUPhotosGridViewController *)self _appearState]!= 1 || ![(PUPhotosGridViewController *)self isContentViewInSyncWithModel]) && (![(PUPhotosGridViewController *)self px_isVisible]|| ![(PUPhotosGridViewController *)self isCurrentCollectionViewDataSource]))
  {
    goto LABEL_15;
  }

  v4 = [(PUPhotosGridViewController *)self mainGridLayout];
  v5 = 0.0;
  if ([(PUPhotosGridViewController *)self wantsGlobalFooter])
  {
    v6 = [v4 cachedDefaultGlobalFooterHeight];
    if (v6)
    {
      v7 = v6;
      v8 = [v4 cachedDefaultGlobalFooterHeight];
      [v8 floatValue];
      if (v9 != 0.0)
      {

        v10 = v15;
        if (!v15)
        {
          v15 = 0;
          goto LABEL_13;
        }

LABEL_12:
        v15 = v10;
        [(PUPhotosGridViewController *)self configureGlobalFooterView:v10];
        [(PUPhotosGridViewController *)self collectionViewLayoutReferenceWidth];
        [v15 sizeThatFits:?];
        v12 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
        [v4 setCachedDefaultGlobalFooterHeight:v12];

LABEL_13:
        v13 = [v4 cachedDefaultGlobalFooterHeight];
        [v13 floatValue];
        v5 = v14;

        goto LABEL_14;
      }
    }

    v10 = v15;
    if (!v15)
    {
      v16 = objc_alloc_init(MEMORY[0x1E69C38D0]);
      [v16 setNeedsLayout];
      v10 = v16;
    }

    goto LABEL_12;
  }

LABEL_14:
  [v4 setGlobalFooterHeight:v5];

LABEL_15:
}

- (void)updateGlobalFooter
{
  v3 = [(PUPhotosGridViewController *)self collectionView];
  v4 = [(PUPhotosGridViewController *)self mainGridLayout];
  v5 = [v4 globalFooterIndexPath];
  v6 = [v3 _visibleSupplementaryViewOfKind:@"PUGridGlobalFooter" atIndexPath:v5];

  [(PUPhotosGridViewController *)self updateGlobalFooterUsingFooterView:v6];
}

- (void)_updateGlobalHeaderVisibility
{
  [(PUPhotosGridViewController *)self globalHeaderHeight];
  v4 = v3;
  v5 = [(PUPhotosGridViewController *)self mainGridLayout];
  [v5 setGlobalHeaderHeight:v4];
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

- (void)_updateIndexPathForProgressInfo:(id)a3
{
  v11 = a3;
  v4 = [v11 cachedIndexPath];
  if (!v4)
  {
    v5 = [(PUPhotosGridViewController *)self photosDataSource];
    v6 = [v11 asset];
    v7 = [v11 collection];
    v4 = [v5 indexPathForAsset:v6 inCollection:v7];

    [v11 setCachedIndexPath:v4];
    progressInfosByCachedIndexPath = self->_progressInfosByCachedIndexPath;
    if (!progressInfosByCachedIndexPath)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v10 = self->_progressInfosByCachedIndexPath;
      self->_progressInfosByCachedIndexPath = v9;

      progressInfosByCachedIndexPath = self->_progressInfosByCachedIndexPath;
    }

    [(NSMutableDictionary *)progressInfosByCachedIndexPath setObject:v11 forKeyedSubscript:v4];
  }
}

- (void)presentAlertController:(id)a3
{
  v4 = a3;
  if ([(PUPhotosGridViewController *)self px_isVisible])
  {
    [(PUPhotosGridViewController *)self presentViewController:v4 animated:1 completion:0];
  }
}

- (void)endShowingProgressWithIdentifier:(id)a3 succeeded:(BOOL)a4 canceled:(BOOL)a5 error:(id)a6
{
  progressInfosByIdentifier = self->_progressInfosByIdentifier;
  v8 = a3;
  v10 = [(NSMutableDictionary *)progressInfosByIdentifier objectForKeyedSubscript:v8];
  [(NSMutableDictionary *)self->_progressInfosByIdentifier removeObjectForKey:v8];

  v9 = [v10 cachedIndexPath];
  if (v9)
  {
    [(NSMutableDictionary *)self->_progressInfosByCachedIndexPath removeObjectForKey:v9];
    [(PUPhotosGridViewController *)self _updateProgressForCellAtIndexPath:v9];
  }
}

- (void)updateProgressWithIdentifier:(id)a3 withValue:(double)a4
{
  v8 = [(NSMutableDictionary *)self->_progressInfosByIdentifier objectForKeyedSubscript:a3];
  [v8 progress];
  if (v6 != a4)
  {
    [v8 setProgress:a4];
    [(PUPhotosGridViewController *)self _updateIndexPathForProgressInfo:v8];
    v7 = [v8 cachedIndexPath];
    [(PUPhotosGridViewController *)self _updateProgressForCellAtIndexPath:v7];
  }
}

- (id)beginShowingProgressForAsset:(id)a3 inCollection:(id)a4
{
  v6 = MEMORY[0x1E696AFB0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 UUID];
  v10 = [v9 UUIDString];

  v11 = objc_alloc_init(_PUPhotosGridProgressInfo);
  [(_PUPhotosGridProgressInfo *)v11 setIdentifier:v10];
  [(_PUPhotosGridProgressInfo *)v11 setAsset:v8];

  [(_PUPhotosGridProgressInfo *)v11 setCollection:v7];
  [(_PUPhotosGridProgressInfo *)v11 setProgress:0.0];
  if (!self->_progressInfosByCachedIndexPath)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    progressInfosByIdentifier = self->_progressInfosByIdentifier;
    self->_progressInfosByIdentifier = v12;
  }

  [(NSMutableDictionary *)self->_progressInfosByIdentifier setObject:v11 forKeyedSubscript:v10];
  [(PUPhotosGridViewController *)self _updateIndexPathForProgressInfo:v11];
  v14 = [(_PUPhotosGridProgressInfo *)v11 cachedIndexPath];
  if (v14)
  {
    [(PUPhotosGridViewController *)self _updateProgressForCellAtIndexPath:v14];
  }

  return v10;
}

- (void)_updateCollectionViewMultipleSelection
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(PUPhotosGridViewController *)self collectionView];
  v4 = [v3 indexPathsForVisibleItems];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (![(PUPhotosGridViewController *)self isAddPlaceholderAtIndexPath:v9])
        {
          v10 = [v3 cellForItemAtIndexPath:v9];
          [(PUPhotosGridViewController *)self _updateSelectionForCell:v10 atIndexPath:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)_updateProgressForCell:(id)a3 atIndexPath:(id)a4
{
  v10 = a3;
  v6 = a4;
  [(PUPhotosGridViewController *)self _updateAllProgressInfoIndexPaths];
  v7 = [(NSMutableDictionary *)self->_progressInfosByCachedIndexPath objectForKeyedSubscript:v6];

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

  [v10 setProgress:v9];
}

- (void)_updateProgressForCellAtIndexPath:(id)a3
{
  v6 = a3;
  v4 = [(PUPhotosGridViewController *)self collectionView];
  v5 = [v4 cellForItemAtIndexPath:v6];

  if (v5)
  {
    [(PUPhotosGridViewController *)self _updateProgressForCell:v5 atIndexPath:v6];
  }
}

- (void)_updateSelectionForCell:(id)a3 atIndexPath:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(PUPhotosGridViewController *)self isEditing];
  v8 = [(PUPhotosGridViewController *)self sessionInfo];
  v9 = [v8 isSelectingAssets];

  if ((v7 & 1) != 0 || v9)
  {
    v11 = -[PUPhotosGridViewController photoCollectionAtIndex:](self, "photoCollectionAtIndex:", [v6 section]);
    v12 = [(PUPhotosGridViewController *)self photoSelectionManager];
    v10 = [v12 isAssetAtIndexSelected:objc_msgSend(v6 inAssetCollection:{"item"), v11}];
  }

  else
  {
    v10 = 0;
  }

  [v13 setSelectionBadgeVisible:v10];
}

- (void)updatePeripheralInterfaceAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(PUPhotosGridViewController *)self isViewLoaded])
  {
    [(PUPhotosGridViewController *)self updateEmptyPlaceholderView];
    [(PUPhotosGridViewController *)self updateTitle];
    [(PUPhotosGridViewController *)self _updateToolbarContentsAnimated:v3];
    [(PUPhotosGridViewController *)self updateNavigationBarAnimated:v3];
    [(PUPhotosGridViewController *)self _updateNavigationBannerAnimated:v3];
    [(PUPhotosGridViewController *)self _updateGlobalHeaderVisibility];

    [(PUPhotosGridViewController *)self updateGlobalFooter];
  }
}

- (void)_contentSizeCategoryDidChangeNotification:(id)a3
{
  v4 = [(PUPhotosGridViewController *)self mainGridLayout];
  [v4 setCachedDefaultGlobalFooterHeight:0];

  v5 = [(PUPhotosGridViewController *)self collectionView];
  [v5 contentOffset];

  v10 = [(PUPhotosGridViewController *)self _bestReferenceItemIndexPathWithTopBias:1];
  v6 = [(PUPhotosGridViewController *)self collectionView];
  v7 = [v6 collectionViewLayout];

  if (v10)
  {
    v8 = [v7 collectionView];

    if (v8)
    {
      v9 = [v7 layoutAttributesForItemAtIndexPath:v10];
      [(PUPhotosGridViewController *)self assetAtIndexPathIfSafe:v10];
    }
  }

  [(PUPhotosGridViewController *)self updateLayoutMetrics];
  [(PUPhotosGridViewController *)self updateGlobalFooter];
}

- (void)updateLayoutMetrics
{
  v3 = [(PUPhotosGridViewController *)self mainGridLayout];
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
      v16 = [(PUPhotosGridViewController *)self gridSpec];
      v15 = [(PUPhotosGridViewController *)self mainGridLayout];
      [v16 configureCollectionViewGridLayout:v15 forWidth:v6 safeAreaInsets:{v8, v10, v12, v14}];
    }
  }
}

- (BOOL)shouldPerformFullReloadForIncrementalDataSourceChange:(id)a3
{
  v5 = a3;
  if (([v5 hasIncrementalChanges] & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:3351 description:@"Must have incremental changes at this point"];
  }

  if ([(PUPhotosGridViewController *)self isContentViewInSyncWithModel])
  {
    if (([v5 changesAreNoOp] & 1) != 0 || (visibleSectionsBeforeChange = self->_visibleSectionsBeforeChange) == 0)
    {
      LOBYTE(v9) = 0;
    }

    else
    {
      v7 = [(NSIndexSet *)visibleSectionsBeforeChange pl_rangeCoveringIndexSet];
      v9 = [v5 affectsSectionsInRange:{v7, v8}] ^ 1;
    }
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (void)processDataSourceChange:(id)a3
{
  v23 = a3;
  v4 = [(PUPhotosGridViewController *)self _shouldUpdateCollectionView];
  v5 = [v23 originatingPhotoLibraryChange];

  v6 = [(PUPhotosGridViewController *)self photoSelectionManager];
  v7 = v6;
  if (v5)
  {
    v8 = [v23 originatingPhotoLibraryChange];
    [v7 handlePhotoLibraryChange:v8];
  }

  else
  {
    [v6 invalidateAllAssetIndexes];
  }

  [(PUPhotosGridViewController *)self _invalidateCachedViewSizeTransitionContext];
  if (v4)
  {
    if ([v23 hasIncrementalChanges] && !-[PUPhotosGridViewController shouldPerformFullReloadForIncrementalDataSourceChange:](self, "shouldPerformFullReloadForIncrementalDataSourceChange:", v23))
    {
      [(PUPhotosGridViewController *)self updateInterfaceForIncrementalDataSourceChanges:v23];
      [(PUPhotosGridViewController *)self _clearAutomaticContentOffsetSnapshot];
    }

    else
    {
      [(PUPhotosGridViewController *)self beginBatchPreheating];
      [(PUPhotosGridViewController *)self updateInterfaceForModelReloadAnimated:1];
      [(PUPhotosGridViewController *)self _performAutomaticContentOffsetAdjustment];
      [(PUPhotosGridViewController *)self endBatchPreheating];
    }

    v17 = [(PUPhotosGridViewController *)self pendingProcessDataSourceUpdateBlock];

    if (v17)
    {
      v18 = [(PUPhotosGridViewController *)self pendingProcessDataSourceUpdateBlock];
      v19 = v18[2]();

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
    v9 = [(PUPhotosGridViewController *)self mainGridLayout];
    [v9 invalidateLayout];

    v10 = [(PUPhotosGridViewController *)self _pushedPhotoBrowserController];
    if (v10)
    {
      v11 = v10;
      v12 = [(PUPhotosGridViewController *)self photosDataSource];
      v13 = [v12 isEmpty];

      if (v13)
      {
        v14 = [(PUPhotosGridViewController *)self _pushedPhotoBrowserController];
        [v14 pl_visitControllerHierarchyWithBlock:&__block_literal_global_610_66294];

        v15 = [(PUPhotosGridViewController *)self navigationController];
        v16 = [v15 popToViewController:self animated:1];
      }
    }
  }

  v20 = [(PUPhotosGridViewController *)self ppt_dataSourceChangeHandler];
  v21 = v20;
  if (v20)
  {
    (*(v20 + 16))(v20, v23);
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

- (void)photosDataSourceWillChange:(id)a3
{
  v4 = [a3 collectionListFetchResult];
  collectionListFetchResultBeforeChange = self->_collectionListFetchResultBeforeChange;
  self->_collectionListFetchResultBeforeChange = v4;

  if ([(PUPhotosGridViewController *)self _shouldUpdateCollectionView])
  {

    [(PUPhotosGridViewController *)self _saveAnchorForAutomaticContentOffsetAdjustment];
  }
}

- (CGPoint)stableUpdatesContentOffsetForProposedContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  visibleReferenceAssetBeforeChange = self->_visibleReferenceAssetBeforeChange;
  if (visibleReferenceAssetBeforeChange && self->_visibleReferenceAssetContainerBeforeChange)
  {
    v7 = visibleReferenceAssetBeforeChange;
    v8 = self->_visibleReferenceAssetContainerBeforeChange;
    v9 = self->_visibleReferenceAssetIndexPathBeforeChange;
    v10 = [(PUPhotosGridViewController *)self photosDataSource];
    v11 = [v10 indexPathForAsset:v7 hintIndexPath:v9 hintCollection:v8];

    v12 = [(PUPhotosGridViewController *)self collectionView];
    v13 = [v12 collectionViewLayout];

    if (v11)
    {
      v14 = [v13 collectionView];

      if (v14)
      {
        v15 = [v13 layoutAttributesForItemAtIndexPath:v11];
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
        v3 = [(PUPhotosGridViewController *)self collectionView];
        [v3 contentOffset];
        v5 = v4;
        v7 = v6;

        [(PUPhotosGridViewController *)self stableUpdatesContentOffsetForProposedContentOffset:v5, v7];
        v10 = v9;
        v11 = v8;
        if (v5 != v9 || v7 != v8)
        {
          v12 = [(PUPhotosGridViewController *)self collectionView];
          [v12 setContentOffset:{v10, v11}];

          v13 = [(PUPhotosGridViewController *)self mainGridLayout];
          [v13 invalidateLayoutForVerticalScroll];
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
  v4 = [(PUPhotosGridViewController *)self collectionView];
  v5 = [v4 collectionViewLayout];

  if (!v3 || ([v5 collectionView], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {

LABEL_23:
    [(PUPhotosGridViewController *)self _clearAutomaticContentOffsetSnapshot];
    return;
  }

  v7 = [v5 layoutAttributesForItemAtIndexPath:v3];
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
    v12 = [(PUPhotosGridViewController *)self collectionView];
    [v12 contentOffset];
    v14 = v13;

    objc_storeStrong(&self->_visibleReferenceAssetBeforeChange, v9);
    v15 = [(PUPhotosGridViewController *)self photosDataSource];
    v16 = [v15 assetCollectionForSection:{objc_msgSend(v3, "section")}];
    visibleReferenceAssetContainerBeforeChange = self->_visibleReferenceAssetContainerBeforeChange;
    self->_visibleReferenceAssetContainerBeforeChange = v16;

    [v7 frame];
    self->_visibleReferenceAssetRelativeYBeforeChange = v18 - v14;
    objc_storeStrong(&self->_visibleReferenceAssetIndexPathBeforeChange, v3);
  }

  v19 = [MEMORY[0x1E696AD50] indexSet];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v20 = [(PUPhotosGridViewController *)self collectionView];
  v21 = [v20 indexPathsForVisibleItems];

  v22 = [v21 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
          objc_enumerationMutation(v21);
        }

        -[NSIndexSet addIndex:](v19, "addIndex:", [*(*(&v28 + 1) + 8 * i) section]);
      }

      v23 = [v21 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v23);
  }

  visibleSectionsBeforeChange = self->_visibleSectionsBeforeChange;
  self->_visibleSectionsBeforeChange = v19;

  if ((v27 & 1) == 0)
  {
    goto LABEL_23;
  }
}

- (void)handleToggleSelectionOfItemAtIndexPath:(id)a3
{
  v4 = a3;
  v9 = -[PUPhotosGridViewController photoCollectionAtIndex:](self, "photoCollectionAtIndex:", [v4 section]);
  v5 = [(PUPhotosGridViewController *)self photoSelectionManager];
  v6 = [v5 isAssetAtIndexSelected:objc_msgSend(v4 inAssetCollection:{"item"), v9}];

  v7 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(v4, "item")}];
  v8 = [v4 section];

  [(PUPhotosGridViewController *)self setSelected:v6 ^ 1u itemsAtIndexes:v7 inSection:v8 animated:0];
}

- (void)setCustomDoneButtonItem:(id)a3
{
  v5 = a3;
  if (self->_customDoneButtonItem != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_customDoneButtonItem, a3);
    [(PUPhotosGridViewController *)self updateNavigationBarAnimated:0];
    v5 = v6;
  }
}

- (void)deletePhotosActionController:(id)a3 presentConfirmationViewController:(id)a4
{
  v6 = a4;
  v7 = [a3 action];
  [(PUPhotosGridViewController *)self _setRemoveActionSheet:v6];
  v9 = [v6 popoverPresentationController];
  v8 = [(PUPhotosGridViewController *)self _referenceBarButtonItemForDeleteAction:v7];
  [v9 setBarButtonItem:v8];
  [v9 setDelegate:self];
  [(PUPhotosGridViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)_removeButtonPressed:(id)a3
{
  v107 = *MEMORY[0x1E69E9840];
  v68 = a3;
  val = self;
  v5 = [(PUPhotosGridViewController *)self presentedViewController];
  if (v5 || ([(PUPhotosGridViewController *)self _removeActionSheet], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {

    goto LABEL_4;
  }

  v17 = [(PUPhotosGridViewController *)self _deleteActionController];

  if (v17)
  {
LABEL_4:
    oslog = PLUIGetLog();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(PUPhotosGridViewController *)self presentedViewController];
      if (v6)
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      v8 = v7;
      v9 = v8;
      v10 = [(PUPhotosGridViewController *)self _removeActionSheet];
      if (v10)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      v12 = v11;
      v13 = v12;
      v14 = [(PUPhotosGridViewController *)self _deleteActionController];
      if (v14)
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

  if (!v68 || self->_removeToolbarButton != v68 && self->_restoreToolbarButton != v68)
  {
    v56 = [MEMORY[0x1E696AAA8] currentHandler];
    [v56 handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:2900 description:@"expect sender; need to double-check delete logic that assumes sender"];
  }

  v18 = [(PUPhotosGridViewController *)self selectedAssets];
  v19 = [v18 count];
  v64 = v19 < 0x3E8;
  v20 = [MEMORY[0x1E695DF90] dictionary];
  if (v19 < 0x3E8)
  {
    v21 = [(PUPhotosGridViewController *)self selectedIndexPaths];
    v22 = [v18 count];
    if (v22 != [v21 count])
    {
      v57 = [MEMORY[0x1E696AAA8] currentHandler];
      [v57 handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:2911 description:{@"Invalid parameter not satisfying: %@", @"[assets count] == [indexPaths count]"}];
    }

    if ([v18 count])
    {
      v23 = 0;
      do
      {
        v24 = [v18 objectAtIndexedSubscript:v23];
        v25 = [v21 objectAtIndexedSubscript:v23];
        [v20 setObject:v25 forKeyedSubscript:v24];

        ++v23;
      }

      while (v23 < [v18 count]);
    }
  }

  v26 = self;
  v27 = [(PUPhotosGridViewController *)self canDeleteContent];
  v66 = [(PUPhotosGridViewController *)val _canRemoveContent];
  v61 = [(PUPhotosGridViewController *)val isTrashBinViewController];
  if (v61 && ![v18 count])
  {
    v28 = [(PUPhotosGridViewController *)val _allAssetsInCollections];

    v18 = v28;
    v26 = val;
  }

  oslog = [(PUPhotosGridViewController *)v26 _assetsAllowingRemove:v66 orDelete:v27 fromAssets:v18];

  if ((v66 & v27) == 1)
  {
    v29 = [(PUPhotosGridViewController *)val _assetsAllowingRemove:0 orDelete:1 fromAssets:oslog];
    LODWORD(v27) = [v29 isEqualToArray:oslog];
  }

  if ([oslog count])
  {
    v59 = v27;
    v30 = v19 < 0x3E8;
    v31 = [MEMORY[0x1E695DF70] array];
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

            v36 = [v20 objectForKeyedSubscript:*(*(&v96 + 1) + 8 * i)];
            if (v36)
            {
              v37 = [(PUPhotosGridViewController *)val photosDataSource];
              v38 = [v37 assetReferenceAtIndexPath:v36];

              [v31 addObject:v38];
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
    v58 = v31;
    v91 = v58;
    v63 = _Block_copy(v90);
    v85[0] = MEMORY[0x1E69E9820];
    v85[1] = 3221225472;
    v85[2] = __51__PUPhotosGridViewController__removeButtonPressed___block_invoke_3;
    v85[3] = &unk_1E7B7CB70;
    objc_copyWeak(&v87, buf);
    v88 = v64;
    v89 = v61;
    v40 = oslog;
    v86 = v40;
    v65 = _Block_copy(v85);
    if (v66)
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
        v76 = v68;
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
      v55 = [v51 popoverPresentationController];
      if (v55)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v55 setBarButtonItem:v68];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v55 setSourceView:v68];
            [(UIBarButtonItem *)v68 frame];
            [v55 setSourceRect:?];
          }
        }

        [v55 setDelegate:val];
      }

      [(PUPhotosGridViewController *)val presentViewController:v51 animated:1 completion:0];
    }

    else if (v59)
    {
      v43 = [(PUPhotosGridViewController *)val _deleteActionForBarButtonItem:v68];
      v44 = objc_alloc(MEMORY[0x1E69C37F8]);
      v45 = [(PUPhotosGridViewController *)val undoManager];
      v46 = [v44 initWithAction:v43 assets:v40 undoManager:v45 delegate:val];

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
  v4 = [(PUPhotosGridViewController *)self collectionListFetchResult];
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
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
          objc_enumerationMutation(v4);
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

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_addButtonPressed:(id)a3
{
  v4 = [(PUPhotosGridViewController *)self presentedViewController];

  if (!v4)
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

- (void)slideshowViewControllerDidFinish:(id)a3 withVisibleAssets:(id)a4
{
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __81__PUPhotosGridViewController_slideshowViewControllerDidFinish_withVisibleAssets___block_invoke;
  v18[3] = &unk_1E7B80DD0;
  v18[4] = self;
  v6 = a4;
  v7 = a3;
  [(PUPhotosGridViewController *)self dismissViewControllerAnimated:1 completion:v18];
  v8 = [v6 firstObject];

  v9 = [v7 session];

  v10 = [v9 assetCollection];

  if ([(PUPhotosGridViewController *)self _transitionWidthHasChanged])
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __81__PUPhotosGridViewController_slideshowViewControllerDidFinish_withVisibleAssets___block_invoke_2;
    aBlock[3] = &unk_1E7B7F820;
    objc_copyWeak(&v16, &location);
    v14 = v8;
    v15 = v10;
    v11 = _Block_copy(aBlock);
    pendingNavigationBlock = self->_pendingNavigationBlock;
    self->_pendingNavigationBlock = v11;

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    [(PUPhotosGridViewController *)self navigateToRevealPhoto:v8 inAssetContainer:v10 animated:0];
  }
}

void __81__PUPhotosGridViewController_slideshowViewControllerDidFinish_withVisibleAssets___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained navigateToRevealPhoto:*(a1 + 32) inAssetContainer:*(a1 + 40) animated:0];
}

- (id)_performDuplicateActivityWithSelectionSnapshot:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E69C3808]);
  v6 = [(PUPhotosGridViewController *)self undoManager];
  v7 = [v5 initWithSelectionSnapshot:v4 undoManager:v6];

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
    v12 = [v11 alertController];
    v13 = [v12 popoverPresentationController];
    [v13 setDelegate:self];
  }

  else
  {
    v9[2](v9, 1, 1);
    v12 = 0;
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v12;
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

- (void)_handleDuplicateActionCompletionWithSuccess:(BOOL)a3
{
  if ([(PUPhotosGridViewController *)self isEditing])
  {
    v4 = +[PUPhotosGridSettings sharedInstance];
    v5 = [v4 shouldExitEditingModeAfterDuplication];

    if (v5)
    {
      [(PUPhotosGridViewController *)self setEditing:0 animated:0];
    }
  }

  [(PUPhotosGridViewController *)self _setDuplicateActionController:0];
}

- (id)_performHideActivityWithSelectionManager:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 isAnyAssetSelected])
  {
    v29 = v4;
    v5 = [(PUPhotosGridViewController *)self photosDataSource];
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = [(PUPhotosGridViewController *)self collectionListFetchResult];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __71__PUPhotosGridViewController__performHideActivityWithSelectionManager___block_invoke;
    v48[3] = &unk_1E7B7CA08;
    v31 = v6;
    v49 = v31;
    v9 = v7;
    v50 = v9;
    v10 = v5;
    v51 = v10;
    [v4 enumerateSelectedAssetsWithAssetCollectionOrdering:v8 block:v48];

    v11 = [PUHidePhotosActionController alloc];
    v12 = [(PUPhotosGridViewController *)self undoManager];
    v30 = [(PUHidePhotosActionController *)v11 initWithAssets:v31 undoManager:v12];

    if (v30)
    {
      objc_initWeak(&location, self);
      v13 = [MEMORY[0x1E695DF70] array];
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
              [v13 addObject:v19];
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
      v20 = v13;
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
      v27 = [v26 popoverPresentationController];
      [v27 setDelegate:self];

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

    v4 = v29;
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

- (id)_updateSelectionFromSelectionManager:(id)a3
{
  v5 = a3;
  v6 = [(PUPhotosGridViewController *)self photoSelectionManager];
  if (!v6)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:2713 description:@"A selection manager should always be available."];
  }

  [v6 deselectAllAssets];
  v7 = [(PUPhotosGridViewController *)self collectionListFetchResult];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__PUPhotosGridViewController__updateSelectionFromSelectionManager___block_invoke;
  v13[3] = &unk_1E7B7CA08;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v8 = v7;
  v9 = v6;
  [v5 enumerateSelectedAssetsWithAssetCollectionOrdering:v8 block:v13];

  [(PUPhotosGridViewController *)self _updateCollectionViewMultipleSelection];
  v10 = [v9 selectionSnapshot];

  return v10;
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

- (void)_activitySharingController:(id)a3 didCompleteWithActivityType:(id)a4 success:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(PUPhotosGridViewController *)self activitySharingController];

  if (!v10)
  {
    v17 = PLUIGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1B36F3000, v17, OS_LOG_TYPE_ERROR, "didCompleteWithActivityType: was called whereas self.activitySharingController == nil.", buf, 2u);
    }

    goto LABEL_22;
  }

  if (v5)
  {
    [(PUPhotosGridViewController *)self setActivitySharingController:0];
    v11 = *MEMORY[0x1E69C3DB8];
    if (([v9 isEqualToString:*MEMORY[0x1E69C3DB8]] & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E69C3D78]) & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E69C3F30]) & 1) == 0 && !objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E69C3F28]))
    {
      if (![v9 isEqualToString:*MEMORY[0x1E69C3EA0]])
      {
        if ([(PUPhotosGridViewController *)self isEditing])
        {
          [(PUPhotosGridViewController *)self setEditing:0 animated:0];
        }

        v16 = 0;
        goto LABEL_21;
      }

      v21 = MEMORY[0x1E6978650];
      v22 = [v8 viewModel];
      v23 = [v22 selectionManager];
      v24 = [v23 orderedSelectedAssets];
      v25 = [v24 array];
      v14 = [v21 transientAssetCollectionWithAssets:v25 title:0];

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
      v29 = v9;
      v30 = self;
      [(UIViewController *)self pu_dismissViewControllerAnimated:1 interactive:0 completion:v27];

      objc_destroyWeak(&v31);
      objc_destroyWeak(buf);
LABEL_22:

      goto LABEL_23;
    }

    v12 = [v8 viewModel];
    v13 = [v12 selectionManager];
    v14 = [(PUPhotosGridViewController *)self _updateSelectionFromSelectionManager:v13];

    if ([v9 isEqualToString:v11])
    {
      v15 = [(PUPhotosGridViewController *)self photoSelectionManager];
      v16 = [(PUPhotosGridViewController *)self _performHideActivityWithSelectionManager:v15];

      if (!v16)
      {
LABEL_16:
        v18 = [(PUPhotosGridViewController *)self _shareAssetsSender];
        if (v18 && ([(PUPhotosGridViewController *)self isEditing]& 1) == 0)
        {
          v19 = [v16 popoverPresentationController];
          [v19 setSourceView:v18];

          v20 = [v16 popoverPresentationController];
          [v18 bounds];
          [v20 setSourceRect:?];
        }

        [(PUPhotosGridViewController *)self _setActionConfirmationAlert:v16];

        goto LABEL_20;
      }
    }

    else
    {
      if (![v9 isEqualToString:*MEMORY[0x1E69C3D78]])
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

- (void)_activitySharingControllerDidCancel:(id)a3
{
  [(PUPhotosGridViewController *)self setActivitySharingController:0];

  [(PUPhotosGridViewController *)self _setShareAssetsSender:0];
}

- (void)activitySharingController:(id)a3 didCompleteWithActivityType:(id)a4 success:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = a4;
  v16 = v9;
  if (v16)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v13 = NSStringFromClass(v14);
    v15 = [v16 px_descriptionForAssertionMessage];
    [v11 handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:2635 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"activitySharingController", v13, v15}];
  }

  else
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [v11 handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:2635 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"activitySharingController", v13}];
  }

LABEL_3:
  [(PUPhotosGridViewController *)self _activitySharingController:v16 didCompleteWithActivityType:v10 success:v5];
}

- (void)activitySharingControllerDidCancel:(id)a3
{
  v10 = a3;
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = objc_opt_class();
    v7 = NSStringFromClass(v8);
    v9 = [v10 px_descriptionForAssertionMessage];
    [v5 handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:2630 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"activitySharingController", v7, v9}];
  }

  else
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [v5 handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:2630 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"activitySharingController", v7}];
  }

LABEL_3:
  [(PUPhotosGridViewController *)self _activitySharingControllerDidCancel:v10];
}

- (id)_slideshowNavigationControllerForFetchResult:(id)a3 assetCollection:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[PUSlideshowSession alloc] initWithFetchResult:v7 assetCollection:v6];

  v9 = [[PUSlideshowViewController alloc] initWithSession:v8];
  [(PUPhotosGridViewController *)self _setSlideshowViewController:v9];
  [(PUSlideshowViewController *)v9 setDelegate:self];
  v10 = [[PUSlideshowNavigationController alloc] initWithRootViewController:v9];

  return v10;
}

- (void)_slideshowButtonPressed:(id)a3
{
  v5 = [(PUPhotosGridViewController *)self presentedViewController];

  if (!v5)
  {
    v6 = [(PUPhotosGridViewController *)self gridSpec];
    v7 = [v6 canDisplaySlideshowButton];

    if ((v7 & 1) == 0)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:2595 description:@"expected slideshow capability"];
    }

    v12 = [(PUPhotosGridViewController *)self photoCollectionAtIndex:0];
    v8 = [(PUPhotosGridViewController *)self photosDataSource];
    v9 = [v8 assetsInSection:0];

    v10 = [(PUPhotosGridViewController *)self _slideshowNavigationControllerForFetchResult:v9 assetCollection:v12];
    [v10 setModalTransitionStyle:2];
    [(PUPhotosGridViewController *)self presentViewController:v10 animated:1 completion:0];
  }
}

- (void)sender:(id)a3 shareAssetsInFetchResult:(id)a4 forAssetCollection:(id)a5 withCompletion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_initWeak(location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__PUPhotosGridViewController_sender_shareAssetsInFetchResult_forAssetCollection_withCompletion___block_invoke;
  aBlock[3] = &unk_1E7B7CA80;
  aBlock[4] = self;
  v14 = v12;
  v50 = v14;
  v15 = _Block_copy(aBlock);
  v16 = [(PUPhotosGridViewController *)self _sharableAssetsTypeInFetchResult:v11];
  if (v16 == 2)
  {
    v37 = v13;
    v38 = v10;
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
    v23 = v11;
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

    v32 = [v19 popoverPresentationController];
    [v32 setSourceView:v24];
    [v24 bounds];
    [v32 setSourceRect:?];
    [v32 setDelegate:self];
    v33 = MEMORY[0x1E69DD250];
    v34 = [(PUPhotosGridViewController *)self view];
    v35 = [v33 userInterfaceLayoutDirectionForSemanticContentAttribute:{objc_msgSend(v34, "semanticContentAttribute")}];

    if (v35)
    {
      v36 = 4;
    }

    else
    {
      v36 = 8;
    }

    [v32 setPermittedArrowDirections:v36];
    [(PUPhotosGridViewController *)self presentViewController:v19 animated:1 completion:0];
    [(PUPhotosGridViewController *)self _setShareAssetsPopoverController:v32];

    objc_destroyWeak(&v42);
    objc_destroyWeak(&v48);

    v13 = v37;
    v10 = v38;
  }

  else if (v16 == 1)
  {
    v17 = [(PUPhotosGridViewController *)self photosDataSource];
    v18 = [v17 sectionForAssetCollection:v14];

    if (v18 != 0x7FFFFFFFFFFFFFFFLL)
    {
      (*(v15 + 2))(v15, v11);
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

- (void)_shareButtonPressed:(id)a3
{
  v5 = a3;
  v4 = [(PUPhotosGridViewController *)self presentedViewController];

  if (!v4)
  {
    [(PUPhotosGridViewController *)self sender:v5 shareSelectedAssetsWithCompletion:0];
  }
}

- (void)_presentShareSheetWithCompletion:(id)a3
{
  v5 = a3;
  v6 = +[PUAssetActionManager actionManagerLog];
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ShareSheetDisplayLatency", "", buf, 2u);
  }

  v7 = [(PUPhotosGridViewController *)self _selectionManagerWithSelectedSharableAssets];
  v8 = [v7 selectedAssets];
  v9 = [v8 count];

  if (v9)
  {
    if (os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B36F3000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ShareSheetDisplayDuration", " enableTelemetry=YES ", buf, 2u);
    }

    v10 = [(PUPhotosGridViewController *)self _activitySharingControllerWithSelectionManager:v7];
    v11 = [v10 activityViewController];
    if (v11)
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
        [v11 setReadyToInteractHandler:v20];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __63__PUPhotosGridViewController__presentShareSheetWithCompletion___block_invoke_558;
        v18[3] = &unk_1E7B80C88;
        v19 = v5;
        [(PUPhotosGridViewController *)self _presentActivitySharingController:v10 completion:v18];

        goto LABEL_11;
      }

      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = objc_opt_class();
      v14 = NSStringFromClass(v15);
      v16 = [v11 px_descriptionForAssertionMessage];
      v12 = v17;
      [v17 handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:2506 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"activitySharingController.activityViewController", v14, v16}];
    }

    else
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      [v12 handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:2506 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"activitySharingController.activityViewController", v14}];
    }

    goto LABEL_8;
  }

  if (v5)
  {
    (*(v5 + 2))(v5, 0);
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

- (void)_presentActivitySharingController:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PUPhotosGridViewController *)self setActivitySharingController:v7];
  v8 = [v7 activityViewController];

  [(PUPhotosGridViewController *)self presentViewController:v8 animated:1 completion:v6];
}

- (id)_activitySharingControllerWithSelectionManager:(id)a3
{
  v4 = a3;
  v5 = [(PUPhotosGridViewController *)self collectionListFetchResult];
  v6 = [(PUPhotosGridViewController *)self photosDataSource];
  v7 = [v6 fetchResultsByAssetCollection];

  v8 = [[PUActivitySharingConfiguration alloc] initWithCollectionsFetchResult:v5 selectionManager:v4];
  [(PUActivitySharingConfiguration *)v8 setAssetsFetchResultsByAssetCollection:v7];
  v9 = [(PUPhotosGridViewController *)self photosDataSource];
  [(PUActivitySharingConfiguration *)v8 setPhotosDataSource:v9];

  v10 = [[PUActivitySharingController alloc] initWithActivitySharingConfiguration:v8];
  [(PUActivitySharingController *)v10 setDelegate:self];

  return v10;
}

- (id)_selectionManagerWithSharableAssetsInFetchResult:(id)a3 forAssetCollection:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[PUPhotoSelectionManager alloc] initWithOptions:0];
  [(PUPhotoSelectionManager *)v8 setDataSource:self];
  v9 = [MEMORY[0x1E696AD50] indexSet];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __98__PUPhotosGridViewController__selectionManagerWithSharableAssetsInFetchResult_forAssetCollection___block_invoke;
  v13[3] = &unk_1E7B7CA58;
  v13[4] = self;
  v10 = v6;
  v14 = v10;
  v11 = v9;
  v15 = v11;
  [v7 enumerateObjectsUsingBlock:v13];

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

- (unint64_t)_sharableAssetsTypeInFetchResult:(id)a3
{
  v4 = a3;
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
  [v4 enumerateObjectsUsingBlock:v7];
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
  v4 = [(PUPhotosGridViewController *)self collectionListFetchResult];
  v5 = [(PUPhotosGridViewController *)self photoSelectionManager];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__PUPhotosGridViewController__selectionManagerWithSelectedSharableAssets__block_invoke;
  v11[3] = &unk_1E7B7CA08;
  v11[4] = self;
  v12 = v4;
  v6 = v3;
  v13 = v6;
  v7 = v4;
  [v5 enumerateSelectedAssetsWithAssetCollectionOrdering:v7 block:v11];

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

- (void)_handleSelectionButton:(id)a3
{
  v4 = [(PUPhotosGridViewController *)self presentedViewController];

  if (!v4)
  {
    v5 = [(PUPhotosGridViewController *)self _areAllAssetsSelected];
    v6 = [(PUPhotosGridViewController *)self photoSelectionManager];
    v7 = [(PUPhotosGridViewController *)self collectionListFetchResult];
    if (v5)
    {
      [v6 deselectAllAssetsInAssetCollections:v7];
    }

    else
    {
      [v6 selectAllAssetsInAssetCollections:v7];
    }

    [(PUPhotosGridViewController *)self _updateCollectionViewMultipleSelection];

    [(PUPhotosGridViewController *)self updatePeripheralInterfaceAnimated:0];
  }
}

- (void)_handleCancelButton:(id)a3
{
  v4 = [(PUPhotosGridViewController *)self presentedViewController];

  if (!v4)
  {

    [(PUPhotosGridViewController *)self setEditing:0 animated:1];
  }
}

- (void)_handleSelectSessionCancelButton:(id)a3
{
  v4 = [(PUPhotosGridViewController *)self presentedViewController];

  if (!v4)
  {
    v5 = [(PUPhotosGridViewController *)self sessionInfo];
    [v5 setStatus:2];
  }
}

- (void)_handleSelectSessionDoneButton:(id)a3
{
  v4 = [(PUPhotosGridViewController *)self presentedViewController];

  if (!v4)
  {
    v5 = [(PUPhotosGridViewController *)self sessionInfo];
    [v5 setStatus:1];
  }
}

- (void)paste:(id)a3
{
  v5 = a3;
  v6 = [(PUPhotosGridViewController *)self _menuIndexPath];
  v7 = -[PUPhotosGridViewController photoCollectionAtIndex:](self, "photoCollectionAtIndex:", [v6 section]);
  if ([v7 canPerformEditOperation:3])
  {
    if (!v6)
    {
LABEL_6:
      v8 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:2329 description:{@"Attempting to paste into a non-editable collection: %@", v7}];

    if (!v6)
    {
      goto LABEL_6;
    }
  }

  if (!self->_isMenuIndexPathExact)
  {
    goto LABEL_6;
  }

  v8 = [(PUPhotosGridViewController *)self assetAtIndexPath:v6];
LABEL_7:
  v10 = [MEMORY[0x1E69DCD50] generalPasteboard];
  v11 = [v10 px_assets];

  if ([v11 count] > 1 || objc_msgSend(v11, "count") == 1 && (objc_msgSend(v11, "lastObject"), v12 = objc_claimAutoreleasedReturnValue(), v12, v12 != v8))
  {
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x2020000000;
    if (v8)
    {
      v13 = [v6 item];
    }

    else
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v24[3] = v13;
    v14 = [(PUPhotosGridViewController *)self assetsInAssetCollection:v7];
    v15 = [v14 photoLibrary];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __36__PUPhotosGridViewController_paste___block_invoke;
    v17[3] = &unk_1E7B7C9E0;
    v18 = v7;
    v16 = v14;
    v19 = v16;
    v20 = v11;
    v21 = v8;
    v22 = v6;
    v23 = v24;
    [v15 performChanges:v17 completionHandler:0];

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

- (void)copy:(id)a3
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

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if (sel_paste_ == a3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [(PUPhotosGridViewController *)self _menuIndexPath];
    if (v7 || [(PUPhotosGridViewController *)self _hasAtLeastOneContainer])
    {
      v8 = -[PUPhotosGridViewController photoCollectionAtIndex:](self, "photoCollectionAtIndex:", [v7 section]);
      if ([v8 canPerformEditOperation:3])
      {
        v9 = [MEMORY[0x1E69DCD50] generalPasteboard];
        v10 = [v9 px_containsAssets];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = (sel_copy_ != a3) & v10;
  }

  else if (sel_copy_ == a3)
  {
    v11 = 0;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = PUPhotosGridViewController;
    v11 = [(PUPhotosGridViewController *)&v13 canPerformAction:a3 withSender:v6];
  }

  return v11;
}

- (void)scrollViewSpeedometer:(id)a3 regimeDidChange:(int64_t)a4 from:(int64_t)a5
{
  v7 = a3;
  if (a4 <= 3)
  {
    v8 = v7;
    [(PUPhotosGridViewController *)self _setMaximumNumberOfRowsToPreheat:qword_1B3D0D4F8[a4]];
    v7 = v8;
  }
}

- (id)indexPathsForPreheatingInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v24 = *MEMORY[0x1E69E9840];
  v7 = [(PUPhotosGridViewController *)self gridLayout];
  v8 = [v7 layoutAttributesForElementsInRect:{x, y, width, height}];

  v9 = [MEMORY[0x1E695DF70] array];
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
        v16 = [v15 representedElementKind];

        if (!v16)
        {
          v17 = [v15 indexPath];
          if (v17)
          {
            [v9 addObject:v17];
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  return v9;
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

- (void)preheatAssetsWithPrefetchingDisabled:(BOOL)a3
{
  if ([(PUPhotosGridViewController *)self isPreheatingEnabled])
  {
    if ([(PUPhotosGridViewController *)self px_isVisible])
    {
      v5 = [(PUPhotosGridViewController *)self collectionView];
      if (v5)
      {
        v6 = v5;
        v7 = [(PUPhotosGridViewController *)self mainGridLayout];
        v8 = [v7 collectionView];

        if (v8)
        {
          if ([(PUPhotosGridViewController *)self _batchPreheatingCount]<= 0)
          {
            v9 = [(PUPhotosGridViewController *)self collectionView];
            [(PUPhotosGridViewController *)self contentOffsetForPreheating];
            v11 = v10;
            v13 = v12;
            [v9 bounds];
            v15 = v14;
            v17 = v16;
            v18 = [(PUPhotosGridViewController *)self mainGridLayout];
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
              v52 = [(PUPhotosGridViewController *)self photosDataSource];
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
              v53 = v18;
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
              v56 = [v52 approximateAssetsAtIndexPaths:v106[5]];
              v78 = v18;
              v85 = v9;
              v57 = [v52 approximateAssetsAtIndexPaths:v100[5]];
              v58 = objc_opt_new();
              [v58 setDeliveryMode:{-[PUPhotosGridViewController imageDeliveryMode](self, "imageDeliveryMode")}];
              v59 = [(PUPhotosGridViewController *)self cellFillMode]< 2;
              [(PUPhotosGridViewController *)self imageRequestItemPixelSize];
              v61 = v60;
              v63 = v62;
              v64 = [(PUPhotosGridViewController *)self _cachingImageManager];
              [v64 startCachingImagesForAssets:v56 targetSize:v59 contentMode:v58 options:{v61, v63}];

              v65 = [(PUPhotosGridViewController *)self _cachingImageManager];
              [v65 stopCachingImagesForAssets:v57 targetSize:v59 contentMode:v58 options:{v61, v63}];

              if (!a3)
              {
                [(PUPhotosGridViewController *)self _previousPrefetchRect];
                v67 = v66;
                v69 = v68;
                v71 = v70;
                v73 = v72;
                [(PUPhotosGridViewController *)self _setPreviousPrefetchRect:v82 + 0.0, v80, v83, v79];
                [(PUPhotosGridViewController *)self _setPreviousPrefetchContentOffset:v82, v81];
                v74 = [MEMORY[0x1E695DF70] array];
                v75 = [MEMORY[0x1E695DF70] array];
                v86[0] = MEMORY[0x1E69E9820];
                v86[1] = 3221225472;
                v86[2] = __67__PUPhotosGridViewController_preheatAssetsWithPrefetchingDisabled___block_invoke_3;
                v86[3] = &unk_1E7B7C9B8;
                v87 = v53;
                v90 = v82;
                v91 = v81;
                v76 = v74;
                v88 = v76;
                v77 = v75;
                v89 = v77;
                PUDiffVerticalRects(v86, v67, v69, v71, v73, v82 + 0.0, v80, v83, v79);
                [v52 prefetchApproximateAssetsAtIndexPaths:v76 reverseOrder:1];
                [v52 prefetchApproximateAssetsAtIndexPaths:v77 reverseOrder:0];
              }

              _Block_object_dispose(&v99, 8);
              _Block_object_dispose(&v105, 8);

              v9 = v85;
              v18 = v78;
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
  v2 = [(PUPhotosGridViewController *)self mainGridLayout];
  [v2 collectionViewContentSize];
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
  v2 = [(PUPhotosGridViewController *)self collectionView];
  [v2 contentOffset];
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

- (void)scrollViewDidScrollToTop:(id)a3
{
  v4 = a3;
  v5 = [(PUPhotosGridViewController *)self _collectionViewSpeedometer];
  [v5 scrollViewDidScrollToTop:v4];
}

- (void)scrollViewWillScrollToTop:(id)a3
{
  v4 = a3;
  v5 = [(PUPhotosGridViewController *)self _collectionViewSpeedometer];
  [v5 scrollViewWillScrollToTop:v4];

  [(PUPhotosGridViewController *)self _userDidStartScrolling];
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = a3;
  v5 = [(PUPhotosGridViewController *)self _collectionViewSpeedometer];
  [v5 scrollViewDidEndDecelerating:v4];
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PUPhotosGridViewController *)self _collectionViewSpeedometer];
  [v7 scrollViewDidEndDragging:v6 willDecelerate:v4];
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  v5 = [(PUPhotosGridViewController *)self _collectionViewSpeedometer];
  [v5 scrollViewWillBeginDragging:v4];

  [(PUPhotosGridViewController *)self _clearAutomaticContentOffsetSnapshot];

  [(PUPhotosGridViewController *)self _userDidStartScrolling];
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = [(PUPhotosGridViewController *)self _collectionViewSpeedometer];
  [v5 scrollViewDidScroll:v4];

  [(PUPhotosGridViewController *)self preheatAssets];
  v6 = [(PUPhotosGridViewController *)self oneUpPresentationHelper];
  [v6 presentingViewControllerScrollViewDidScroll:v4];

  [(PUPhotosGridViewController *)self setPendingProcessDataSourceUpdateBlock:0];
  v12 = [(PUPhotosGridViewController *)self collectionView];
  [v12 bounds];
  v8 = v7;
  [v12 adjustedContentInset];
  v10 = v8 + v9 < 0.0;
  v11 = [(PUPhotosGridViewController *)self photosDataSource];
  [v11 setAllowNextChangeDeliveryOnAllRunLoopModes:v10];
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
    v3 = [(PUPhotosGridViewController *)self gridSpec];
    v4 = [v3 wantsCustomNavigationTransition];

    if (v4)
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
      v5 = [(PUPhotosGridViewController *)self mainGridLayout];
      if ([(PUPhotosGridViewController *)self wantsGlobalFooter])
      {
        v6 = [v5 globalFooterIndexPath];
        v7 = [v5 layoutAttributesForSupplementaryViewOfKind:@"PUGridGlobalFooter" atIndexPath:v6];
      }

      else
      {
        v7 = 0;
      }

      v8 = [(PUPhotosGridViewController *)self collectionView];
      v9 = v8;
      if (v7)
      {
        [v8 contentOffset];
        v11 = v10;
        v12 = [v9 collectionViewLayout];
        [v12 collectionViewContentSize];
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
        [v8 px_scrollToEdge:3 animated:0];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v9 didScrollToInitialPosition];
      }

      [v5 invalidateLayoutForVerticalScroll];
    }

    self->_didScrollToInitialPosition = 1;
  }

  [(PUPhotosGridViewController *)self _updateContentOffsetForPendingViewSizeTransition];
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v42 = *MEMORY[0x1E69E9840];
  v7 = [(PUPhotosGridViewController *)self isEditing];
  v39.receiver = self;
  v39.super_class = PUPhotosGridViewController;
  [(PUPhotosGridViewController *)&v39 setEditing:v5 animated:v4];
  if (v7 != v5)
  {
    [(PUPhotosGridViewController *)self updatePeripheralInterfaceAnimated:v4];
    if (v4)
    {
      v8 = *MEMORY[0x1E69DE248];
    }

    else
    {
      v8 = 0;
    }

    [(UIViewController *)self pu_performBarsVisibilityUpdatesWithAnimationSettings:v4, v8];
    v9 = [(PUPhotosGridViewController *)self collectionView];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v10 = [v9 indexPathsForVisibleItems];
    v11 = [v10 countByEnumeratingWithState:&v35 objects:v41 count:16];
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
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v35 + 1) + 8 * i);
          if ([(PUPhotosGridViewController *)self isAddPlaceholderAtIndexPath:v15])
          {
            v16 = [v9 cellForItemAtIndexPath:v15];
            [(PUPhotosGridViewController *)self _configureAddPlaceholderCell:v16 animated:v4];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v12);
    }

    if (v5)
    {
      v17 = [(PUPhotosGridViewController *)self primingActivityViewController];

      if (!v17)
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
      v20 = [(PUPhotosGridViewController *)self _multiSelectInteraction];
      v21 = [v20 gesturesForFailureRequirements];

      v22 = [v21 countByEnumeratingWithState:&v31 objects:v40 count:16];
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
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v31 + 1) + 8 * j);
            [v26 setEnabled:0];
            [v26 setEnabled:1];
          }

          v23 = [v21 countByEnumeratingWithState:&v31 objects:v40 count:16];
        }

        while (v23);
      }

      v27 = [(PUPhotosGridViewController *)self _removeActionSheet];
      v28 = [v27 presentingViewController];
      [v28 dismissViewControllerAnimated:1 completion:0];

      v29 = [(PUPhotosGridViewController *)self photoSelectionManager];
      [v29 deselectAllAssets];

      [(PUPhotosGridViewController *)self setPrimingActivityViewController:0];
    }

    if ([(PUPhotosGridViewController *)self _hasAccessibilityLargeText])
    {
      v30 = [(PUPhotosGridViewController *)self mainGridLayout];
      [v30 invalidateLayout];
    }

    [(PUPhotosGridViewController *)self _updateCollectionViewMultipleSelection];
  }
}

- (BOOL)_hasAccessibilityLargeText
{
  v2 = [(PUPhotosGridViewController *)self traitCollection];
  v3 = [PUInterfaceManager shouldUseAccessibilityLargeTextLayoutWithTraitCollecton:v2];

  return v3;
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(PUPhotosGridViewController *)self gridSpec];
  v3 = [v2 supportedInterfaceOrientations];

  return v3;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = PUPhotosGridViewController;
  [(PUPhotosGridViewController *)&v6 viewDidDisappear:?];
  [(PUPhotosGridViewController *)self uninstallGestureRecognizers];
  v5 = [(PUPhotosGridViewController *)self oneUpPresentationHelper];
  [v5 presentingViewControllerViewDidDisappear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = PUPhotosGridViewController;
  [(PUPhotosGridViewController *)&v6 viewWillDisappear:?];
  [(PUPhotosGridViewController *)self _saveAnchorForAutomaticContentOffsetAdjustment];
  [(PUPhotosGridViewController *)self resetPreheating];
  v5 = [(PUPhotosGridViewController *)self oneUpPresentationHelper];
  [v5 presentingViewControllerViewWillDisappear:v3];

  [(PUPhotosGridViewController *)self _updateBackButtonTitle];
  [(PUPhotosGridViewController *)self setPendingProcessDataSourceUpdateBlock:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v10.receiver = self;
  v10.super_class = PUPhotosGridViewController;
  [(PUPhotosGridViewController *)&v10 viewDidAppear:?];
  v5 = [(PUPhotosGridViewController *)self _pushedPhotoBrowserController];

  if (v5)
  {
    v6 = [(PUPhotosGridViewController *)self collectionView];
    [v6 _setAutomaticContentOffsetAdjustmentEnabled:0];
  }

  [(PUPhotosGridViewController *)self _setPushedPhotoBrowserController:0];
  v7 = [(PUPhotosGridViewController *)self onViewDidAppearCompletion];

  if (v7)
  {
    v8 = [(PUPhotosGridViewController *)self onViewDidAppearCompletion];
    (v8)[2](v8, self);

    [(PUPhotosGridViewController *)self setOnViewDidAppearCompletion:0];
  }

  [(PUPhotosGridViewController *)self preheatAssets];
  [(PUPhotosGridViewController *)self installGestureRecognizers];
  v9 = [(PUPhotosGridViewController *)self oneUpPresentationHelper];
  [v9 presentingViewControllerViewDidAppear:v3];
}

- (void)invalidateGridLayoutIfNecessary
{
  if ([(PUPhotosGridViewController *)self _updateTransitionWidthOnAppearance])
  {
    v3 = [(PUPhotosGridViewController *)self mainGridLayout];
    [v3 invalidateLayout];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = PUPhotosGridViewController;
  [(PUPhotosGridViewController *)&v8 viewWillAppear:?];
  v5 = [(PUPhotosGridViewController *)self updateSpec];
  v6 = [(PUPhotosGridViewController *)self _updateTransitionWidthOnAppearance];
  [(PUPhotosGridViewController *)self forceDataSourceIfNeeded];
  [(PUPhotosGridViewController *)self beginBatchPreheating];
  [(PUPhotosGridViewController *)self resetPreheating];
  [(UIViewController *)self pu_setupInitialBarsVisibilityOnViewWillAppearAnimated:v3];
  if (![(PUPhotosGridViewController *)self isContentViewInSyncWithModel]|| v5 || v6)
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
  v7 = [(PUPhotosGridViewController *)self oneUpPresentationHelper];
  [v7 presentingViewControllerViewWillAppear:v3];
}

- (int64_t)preferredStatusBarStyle
{
  v2 = +[PUInterfaceManager currentTheme];
  v3 = [v2 topLevelStatusBarStyle];

  return v3;
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = PUPhotosGridViewController;
  [(PUPhotosGridViewController *)&v17 viewDidLoad];
  v3 = [(PUPhotosGridViewController *)self collectionView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 setPrefetchingEnabled:0];
    [v3 setAlwaysBounceVertical:1];
    [v3 setSelectionDelegate:self];
    [v3 setAllowsSelection:1];
    [v3 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PUPhotoCell"];
    [v3 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PUAddPlaceholderCell"];
    [v3 registerClass:objc_opt_class() forSupplementaryViewOfKind:@"PUGridGlobalHeader" withReuseIdentifier:@"PUGridGlobalHeader"];
    [v3 registerClass:objc_opt_class() forSupplementaryViewOfKind:@"PUGridGlobalFooter" withReuseIdentifier:@"PUGridGlobalFooter"];
    v4 = +[PUInterfaceManager currentTheme];
    v5 = [v4 photoCollectionViewBackgroundColor];

    [v3 setBackgroundColor:v5];
    if ([(PUPhotosGridViewController *)self canDragOut])
    {
      [v3 setDragSourceDelegate:self];
    }

    [v3 setDragDestinationDelegate:self];
    v6 = [MEMORY[0x1E69C3498] sharedInstance];
    [v3 setReorderingCadence:{objc_msgSend(v6, "reorderCadence")}];

    [v3 setDragInteractionEnabled:1];
  }

  [(PUPhotosGridViewController *)self updateSpec];
  [(PUPhotosGridViewController *)self setExtendedLayoutIncludesOpaqueBars:1];
  [(PUPhotosGridViewController *)self _updatePhotoSelectionManager];
  [(PUPhotosGridViewController *)self _updateSubviewsOrderingAndVisibility];
  v7 = objc_opt_new();
  [(PUPhotosGridViewController *)self _setCollectionViewSpeedometer:v7];

  v8 = [(PUPhotosGridViewController *)self _collectionViewSpeedometer];
  [v8 setDelegate:self];

  v9 = [(PUPhotosGridViewController *)self _collectionViewSpeedometer];
  [v9 setMediumUpperThreshold:1000.0];

  v10 = [(PUPhotosGridViewController *)self _collectionViewSpeedometer];
  [v10 setMediumLowerThreshold:200.0];

  v11 = [(PUPhotosGridViewController *)self _collectionViewSpeedometer];
  [v11 setFastUpperThreshold:5000.0];

  v12 = [(PUPhotosGridViewController *)self _collectionViewSpeedometer];
  [v12 setFastLowerThreshold:1000.0];

  [(PUPhotosGridViewController *)self _setMaximumNumberOfRowsToPreheat:10];
  [(PUPhotosGridViewController *)self _updateBackButtonTitle];
  v13 = [MEMORY[0x1E69BF248] defaultFormatChooser];
  v14 = [v13 masterThumbnailFormat];

  [v14 sizeWithFallBackSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  [(PUPhotosGridViewController *)self _setMaximumThumbnailRequestSize:?];
  v15 = [MEMORY[0x1E69C4598] sharedScheduler];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __41__PUPhotosGridViewController_viewDidLoad__block_invoke;
  v16[3] = &unk_1E7B80DD0;
  v16[4] = self;
  [v15 scheduleMainQueueTask:v16];
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
    v5 = [(PUPhotosGridViewController *)self collectionViewLayout];
    v3 = [PUCollectionView alloc];
    v4 = [(PUCollectionView *)v3 initWithFrame:v5 collectionViewLayout:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(PUCollectionView *)v4 setAccessibilityIdentifier:@"PhotosGridView"];
    [(PUCollectionView *)v4 setAutoresizingMask:18];
    [(PUPhotosGridViewController *)self setCollectionView:v4];
    [(PUPhotosGridViewController *)self setContentViewInSyncWithModel:0];
  }
}

- (void)uninstallGestureRecognizers
{
  v3 = [(PUPhotosGridViewController *)self longPressGestureRecognizer];
  v4 = [v3 view];
  v5 = [(PUPhotosGridViewController *)self longPressGestureRecognizer];
  [v4 removeGestureRecognizer:v5];

  v6 = [(PUPhotosGridViewController *)self photoOrStackPinchGestureRecognizer];
  v7 = [v6 view];
  v8 = [(PUPhotosGridViewController *)self photoOrStackPinchGestureRecognizer];
  [v7 removeGestureRecognizer:v8];

  v9 = [(PUPhotosGridViewController *)self _multiSelectInteraction];

  if (v9)
  {
    v10 = [(PUPhotosGridViewController *)self _multiSelectInteraction];
    v11 = [v10 view];
    v12 = [(PUPhotosGridViewController *)self _multiSelectInteraction];
    [v11 removeInteraction:v12];

    [(PUPhotosGridViewController *)self set_multiSelectInteraction:0];
  }

  v13 = [(PUPhotosGridViewController *)self _contextMenuInteraction];
  if (v13)
  {
    v15 = v13;
    v14 = [v13 view];
    [v14 removeInteraction:v15];

    [(PUPhotosGridViewController *)self _setContextMenuInteraction:0];
    v13 = v15;
  }
}

- (void)installGestureRecognizers
{
  v9 = [(PUPhotosGridViewController *)self view];
  v3 = [(PUPhotosGridViewController *)self longPressGestureRecognizer];
  if (!v3)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel_handleLongPressGesture_];
    [v3 setDelegate:self];
    [(PUPhotosGridViewController *)self setLongPressGestureRecognizer:v3];
  }

  [v9 addGestureRecognizer:v3];
  v4 = [(PUPhotosGridViewController *)self photoOrStackPinchGestureRecognizer];
  if (!v4)
  {
    v4 = [[PUPhotoPinchGestureRecognizer alloc] initWithTarget:self action:sel_handlePhotoOrStackPinchGestureRecognizer_];
    [(PUPhotoPinchGestureRecognizer *)v4 setDelegate:self];
    [(PUPhotosGridViewController *)self _setPhotoOrStackPinchGestureRecognizer:v4];
  }

  [v9 addGestureRecognizer:v4];
  v5 = objc_alloc_init(MEMORY[0x1E69DCCA8]);
  [v5 setDelegate:self];
  [v5 setSingleTouchPanGestureHysteresis:5.0];
  v6 = [(PUPhotosGridViewController *)self collectionView];
  [v6 addInteraction:v5];

  [(PUPhotosGridViewController *)self set_multiSelectInteraction:v5];
  v7 = [objc_alloc(MEMORY[0x1E69DC8E0]) initWithDelegate:self];
  [(PUPhotosGridViewController *)self _setContextMenuInteraction:v7];
  v8 = [(PUPhotosGridViewController *)self collectionView];
  [v8 addInteraction:v7];
}

- (id)contentScrollView
{
  if ([(PUPhotosGridViewController *)self isViewLoaded])
  {
    v3 = [(PUPhotosGridViewController *)self collectionView];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)_deleteActionForBarButtonItem:(id)a3
{
  v4 = a3;
  if ([(PUPhotosGridViewController *)self isTrashBinViewController])
  {
    if (self->_restoreToolbarButton == v4)
    {
      v5 = 3;
    }

    else if (self->_removeToolbarButton == v4)
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

- (id)_referenceBarButtonItemForDeleteAction:(int64_t)a3
{
  v4 = &OBJC_IVAR___PUPhotosGridViewController__removeToolbarButton;
  if (!a3 || a3 == 5)
  {
LABEL_5:
    v5 = *(&self->super.super.super.super.isa + *v4);

    return v5;
  }

  if (a3 == 3)
  {
    v4 = &OBJC_IVAR___PUPhotosGridViewController__restoreToolbarButton;
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

- (void)_setPushedPhotoBrowserController:(id)a3
{
  objc_storeStrong(&self->__pushedPhotoBrowserController, a3);

  [(PUPhotosGridViewController *)self _updateBackButtonTitle];
}

- (id)_bestReferenceItemIndexPathWithTopBias:(BOOL)a3
{
  v3 = a3;
  v4 = [(PUPhotosGridViewController *)self collectionView];
  v5 = [v4 collectionViewLayout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v5 collectionView];
  if (v7)
  {
    v8 = [v4 window];

    if (!v8)
    {
LABEL_36:
      v7 = 0;
      goto LABEL_39;
    }

    [v4 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [v4 adjustedContentInset];
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

    v27 = [v4 numberOfSections];
    v28 = v27 - 1;
    if (v27 < 1 || [v4 numberOfItemsInSection:0] < 1)
    {
LABEL_33:
      if ([v5 conformsToProtocol:&unk_1F2C21280])
      {
        if (v3)
        {
          [v5 itemIndexPathClosestToPoint:{v18, v26}];
        }

        else
        {
          [v5 itemIndexPathAtCenterOfRect:{v18, v26, v22, v25}];
        }
        v7 = ;
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    if (v6 && [v6 firstPreparedVisualSection])
    {
      v7 = 0;
    }

    else
    {
      v29 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
      v30 = [v5 layoutAttributesForItemAtIndexPath:v29];
      v31 = v30;
      if (v30 && ([v30 frame], v41.origin.x = v18, v41.origin.y = v26, v41.size.width = v22, v41.size.height = v25, CGRectIntersectsRect(v39, v41)))
      {
        v7 = v29;
      }

      else
      {
        v7 = 0;
      }

      if (!v6)
      {
        v32 = v28;
LABEL_25:
        v33 = [v4 numberOfItemsInSection:v32];
        if (!v7 && v33 >= 1)
        {
          v34 = [MEMORY[0x1E696AC88] indexPathForItem:v33 - 1 inSection:v32];
          v35 = [v5 layoutAttributesForItemAtIndexPath:v34];
          v36 = v35;
          if (v35 && ([v35 frame], v42.origin.x = v18, v42.origin.y = v26, v42.size.width = v22, v42.size.height = v25, CGRectIntersectsRect(v40, v42)))
          {
            v7 = v34;
          }

          else
          {
            v7 = 0;
          }
        }

LABEL_32:
        if (v7)
        {
          goto LABEL_39;
        }

        goto LABEL_33;
      }
    }

    v32 = [v6 lastPreparedVisualSection];
    if (v32 != v28)
    {
      goto LABEL_32;
    }

    goto LABEL_25;
  }

LABEL_39:

  return v7;
}

- (void)setLongPressGestureRecognizer:(id)a3
{
  v5 = a3;
  if (self->_longPressGestureRecognizer != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_longPressGestureRecognizer, a3);
    v5 = v6;
  }
}

- (BOOL)isAddPlaceholderAtIndexPath:(id)a3
{
  v4 = a3;
  if (-[PUPhotosGridViewController wantsAddPlaceholderAtEndOfSection:](self, "wantsAddPlaceholderAtEndOfSection:", [v4 section]))
  {
    v5 = -[PUPhotosGridViewController photoCollectionAtIndex:](self, "photoCollectionAtIndex:", [v4 section]);
    v6 = [(PUPhotosGridViewController *)self assetsInAssetCollection:v5];
    v7 = [v6 count];

    v8 = [v4 item] == v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)hasScrollableContent
{
  v3 = [(PUPhotosGridViewController *)self collectionView];
  v4 = v3;
  if (v3)
  {
    [v3 bounds];
    v6 = v5;
    [v4 adjustedContentInset];
    v8 = v7;
    v10 = v9;
    v11 = [(PUPhotosGridViewController *)self mainGridLayout];
    v12 = [v11 collectionView];

    if (v12)
    {
      [v11 collectionViewContentSize];
      v14 = v13;
      [v11 globalFooterHeight];
      LOBYTE(v12) = v10 + v8 + v14 - v15 > v6;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
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

- (id)sessionInfoForTransferredAssets:(id)a3
{
  v3 = a3;
  v4 = [[PUAlbumPickerSessionInfo alloc] initWithSourceAlbum:0 transferredAssets:v3];

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

- (id)localizedTitleForAssetCollection:(id)a3 titleCategory:(int64_t *)a4
{
  v6 = a3;
  v7 = [v6 localizedTitle];
  if (![v7 length])
  {
    v8 = [v6 startDate];
    if (v8)
    {
      v9 = [(PUPhotosGridViewController *)self _dateRangeFormatter];
      v10 = [v6 endDate];
      v11 = [v9 stringFromDate:v8 toDate:v10];

      if (a4)
      {
        *a4 = 5;
      }
    }

    else
    {
      v11 = v7;
    }

    v7 = v11;
  }

  return v7;
}

- (id)_localizedBannerTextForAsset:(id)a3 isDestructive:(BOOL *)a4
{
  v6 = a3;
  if (![(PUPhotosGridViewController *)self isTrashBinViewController])
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:1344 description:@"expected trash bin"];
  }

  v7 = PXPhotoKitLocalizedMessageForRecentlyDeletedDaysRemainingAsset();

  return v7;
}

- (id)itemIndexPathAtPoint:(CGPoint)a3 outClosestMatch:(id *)a4 outLeftClosestMatch:(id *)a5 outAboveClosestMatch:(id *)a6
{
  y = a3.y;
  x = a3.x;
  v46 = *MEMORY[0x1E69E9840];
  v11 = [(PUPhotosGridViewController *)self collectionView];
  v12 = [v11 indexPathForItemAtPoint:{x, y}];
  v13 = [v11 collectionViewLayout];
  v14 = [v13 conformsToProtocol:&unk_1F2C21280];

  v15 = v12;
  if (!v12)
  {
    v15 = 0;
    if (v14)
    {
      v16 = [v11 collectionViewLayout];
      v15 = [v16 itemIndexPathAtPoint:{x, y}];
    }
  }

  if (a5)
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
    v19 = [v11 collectionViewLayout];
    v12 = [v19 maxItemIndexPathLeftOfPoint:{x, y}];

    v20 = v12;
    *a5 = v12;
  }

  if (a6)
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
    v23 = [v11 collectionViewLayout];
    v12 = [v23 maxItemIndexPathAbovePoint:{x, y}];

    v24 = v12;
    *a6 = v12;
  }

  if (a4)
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
    v27 = [v11 collectionViewLayout];
    v12 = [v27 itemIndexPathClosestToPoint:{x, y}];
  }

  if (a4 && !v12)
  {
    v28 = [v11 visibleCells];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v29 = [v28 countByEnumeratingWithState:&v41 objects:v45 count:16];
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
            objc_enumerationMutation(v28);
          }

          v34 = *(*(&v41 + 1) + 8 * i);
          [v34 center];
          v37 = (v36 - y) * (v36 - y) + (v35 - x) * (v35 - x);
          if (v37 < v32)
          {
            v38 = [v11 indexPathForCell:v34];

            v32 = v37;
            v12 = v38;
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v30);
    }

    else
    {
      v12 = 0;
    }
  }

  if (a4)
  {
    v39 = v12;
    *a4 = v12;
  }

  return v15;
}

- (id)localizedSelectionTitle
{
  v3 = objc_opt_class();
  v4 = [(PUPhotosGridViewController *)self photoSelectionManager];
  v5 = [v3 _localizedSelectionTitleWithPhotoSelectionManager:v4];

  return v5;
}

- (void)_removeSelectedAssetsWithCompletion:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v25 = a3;
  v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(PUPhotosGridViewController *)self collectionListFetchResult];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v35 objects:v40 count:16];
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
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v35 + 1) + 8 * v9);
        v11 = [(PUPhotosGridViewController *)self photoSelectionManager];
        v39 = v10;
        v12 = [*(v8 + 3784) arrayWithObjects:&v39 count:1];
        v13 = [v11 selectedAssetsWithAssetCollectionOrdering:v12];

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
            v20 = v4;
            v21 = _Block_copy(v16);
            [v26 addObject:v21];

            v4 = v20;
            v8 = v19;
            v7 = v18;
            v6 = v17;
          }
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v6);
  }

  v22 = [v4 photoLibrary];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __66__PUPhotosGridViewController__removeSelectedAssetsWithCompletion___block_invoke_2;
  v30[3] = &unk_1E7B80DD0;
  v31 = v26;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __66__PUPhotosGridViewController__removeSelectedAssetsWithCompletion___block_invoke_3;
  v28[3] = &unk_1E7B7C940;
  v29 = v25;
  v23 = v25;
  v24 = v26;
  [v22 performChanges:v30 completionHandler:v28];
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
  v2 = [(PUPhotosGridViewController *)self collectionListFetchResult];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)selectAssets:(id)a3 fromAssetCollection:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PUPhotosGridViewController *)self sessionInfo];
  v9 = [v8 photoSelectionManager];
  v10 = [(PXPhotosDataSource *)self->_photosDataSource sectionForAssetCollection:v7];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = v9;
    v18 = [MEMORY[0x1E696AC90] indexSetWithIndex:v10];
    [(PXPhotosDataSource *)self->_photosDataSource forceAccurateSectionsIfNeeded:?];
    v11 = [MEMORY[0x1E696AD50] indexSet];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v20 = v6;
    v12 = v6;
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

          v17 = [(PXPhotosDataSource *)self->_photosDataSource indexPathForAsset:*(*(&v21 + 1) + 8 * v16) inCollection:v7];
          [v11 addIndex:{objc_msgSend(v17, "item")}];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v14);
    }

    v9 = v19;
    if ([v11 count])
    {
      [v19 selectAssetsAtIndexes:v11 inAssetCollection:v7];
    }

    v6 = v20;
  }
}

- (void)_updatePhotoSelectionManager
{
  v3 = [(PUPhotosGridViewController *)self sessionInfo];
  v6 = [v3 photoSelectionManager];

  v4 = v6;
  if (!v6)
  {
    v5 = [(PUPhotosGridViewController *)self photoSelectionManager];
    if (v5)
    {
      v4 = v5;
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

- (void)setAlternateContentView:(id)a3
{
  v5 = a3;
  alternateContentView = self->_alternateContentView;
  if (alternateContentView != v5)
  {
    v8 = v5;
    [(UIView *)alternateContentView removeFromSuperview];
    objc_storeStrong(&self->_alternateContentView, a3);
    v7 = [(PUPhotosGridViewController *)self view];
    [v7 addSubview:self->_alternateContentView];

    alternateContentView = [(PUPhotosGridViewController *)self _updateSubviewsOrderingAndVisibility];
    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](alternateContentView, v5);
}

- (id)_barButtonSpacerWithWidth:(double)a3
{
  v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:6 target:0 action:0];
  [v4 setWidth:a3];

  return v4;
}

- (id)_newEditActionItemsWithWideSpacing:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  LODWORD(v6) = [(PUPhotosGridViewController *)self isAnyAssetSelected];
  if ([(PUPhotosGridViewController *)self _canShareContent])
  {
    if (!self->_shareToolbarButton)
    {
      v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:9 target:self action:sel__shareButtonPressed_];
      shareToolbarButton = self->_shareToolbarButton;
      self->_shareToolbarButton = v7;
    }

    v9 = [(PUPhotosGridViewController *)self photoSelectionManager];
    v10 = [v9 selectedAssets];

    v11 = [(PUPhotosGridViewController *)self _shareableAssetsFromAssets:v10];
    v12 = [v11 count];
    if (v12 && v12 < [v10 count])
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
    [v5 addObject:self->_shareToolbarButton];
  }

  v15 = [(PUPhotosGridViewController *)self isTrashBinViewController];
  v16 = [(PUPhotosGridViewController *)self canDeleteContent];
  v17 = [(PUPhotosGridViewController *)self _canRemoveContent];
  v18 = v17;
  if (!v16 && !v17)
  {
    v67 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_35;
  }

  v66 = v6;
  if (v15)
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

  v37 = [(PUPhotosGridViewController *)self photoSelectionManager];
  v38 = [v37 selectedAssets];
  v39 = [v38 allObjects];

  v6 = [(PUPhotosGridViewController *)self _assetsAllowingRemove:v18 orDelete:v16 fromAssets:v39];
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
    if (v15)
    {
      v42 = [(PUPhotosGridViewController *)self isEmpty]^ 1;
    }
  }

  [(UIBarButtonItem *)v41 setEnabled:v42];
  if (v3)
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

  v47 = [(PUPhotosGridViewController *)self wantsAddContentInToolbar];
  [(PUPhotosGridViewController *)self canAddToOtherAlbumContent];
  if (v6 & 1 | !v47)
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
  if (v3)
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
  v57 = [(PUPhotosGridViewController *)self gridSpec];
  v58 = [v57 shouldPlaceDeleteInCenterToolbarPosition];

  if (v58)
  {
    if (v20)
    {
      [v5 addObject:v20];
    }

    if (v21)
    {
      [v5 addObject:v21];
    }

    if (v67)
    {
      [v5 addObject:v67];
    }

    if (v19)
    {
      [v5 addObject:v19];
    }

    if (v52)
    {
      [v5 addObject:v52];
    }

    v59 = v53;
    if (!v53)
    {
      goto LABEL_70;
    }

LABEL_69:
    [v5 addObject:v59];
    goto LABEL_70;
  }

  if (v52)
  {
    [v5 addObject:v52];
  }

  if (v53)
  {
    [v5 addObject:v53];
  }

  if (v20)
  {
    [v5 addObject:v20];
  }

  if (v21)
  {
    [v5 addObject:v21];
  }

  if (v67)
  {
    [v5 addObject:v67];
  }

  v59 = v19;
  if (v19)
  {
    goto LABEL_69;
  }

LABEL_70:
  if (v3)
  {
    v60 = [v5 count];
    if (v60)
    {
      v61 = v60 - 1;
      if (v60 != 1)
      {
        v62 = 1;
        do
        {
          v63 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
          [v5 insertObject:v63 atIndex:v62];

          v62 += 2;
          --v61;
        }

        while (v61);
      }
    }
  }

  return v5;
}

- (BOOL)canDisplayEditButton
{
  v3 = [(PUPhotosGridViewController *)self _allowsActions:2]|| [(PUPhotosGridViewController *)self _canAddContent]|| [(PUPhotosGridViewController *)self _canShareContent]|| [(PUPhotosGridViewController *)self _canRemoveContent]|| [(PUPhotosGridViewController *)self canDeleteContent];
  if (![(PUPhotosGridViewController *)self isEmpty])
  {
    return v3;
  }

  v4 = [(PUPhotosGridViewController *)self hasKnownNonEmptyContent_toWorkAround31995766];
  result = v4 && v3;
  if (!v4 && v3)
  {

    return [(PUPhotosGridViewController *)self _canAddContent];
  }

  return result;
}

- (BOOL)_canPasteboardCopyAssetAtIndexPath:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:996 description:{@"Invalid parameter not satisfying: %@", @"indexPath"}];
  }

  if ([(PUPhotosGridViewController *)self isAddPlaceholderAtIndexPath:v5])
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v7 = -[PUPhotosGridViewController photoCollectionAtIndex:](self, "photoCollectionAtIndex:", [v5 section]);
    v8 = [(PUPhotosGridViewController *)self assetsInAssetCollection:v7];
    v9 = [v8 objectAtIndex:{objc_msgSend(v5, "item")}];

    v6 = [v9 isStreamedVideo] ^ 1;
  }

  return v6;
}

- (id)_shareableAssetsFromAssets:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
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

- (id)_assetsAllowingRemove:(BOOL)a3 orDelete:(BOOL)a4 fromAssets:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = v8;
  if (v6)
  {
    v10 = v8;
LABEL_5:
    v11 = v10;
    goto LABEL_7;
  }

  if (v5)
  {
    v10 = [(PUPhotosGridViewController *)self _assetsAllowingEditOperation:1 fromAssets:v8];
    goto LABEL_5;
  }

  v11 = 0;
LABEL_7:

  return v11;
}

- (id)_assetsAllowingEditOperation:(int64_t)a3 fromAssets:(id)a4
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__PUPhotosGridViewController__assetsAllowingEditOperation_fromAssets___block_invoke;
  v8[3] = &__block_descriptor_40_e24_B32__0__PHAsset_8Q16_B24l;
  v8[4] = a3;
  v4 = a4;
  v5 = [v4 indexesOfObjectsPassingTest:v8];
  v6 = [v4 objectsAtIndexes:v5];

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

- (BOOL)_canAllContainersPerformEditOperation:(int64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(PUPhotosGridViewController *)self collectionListFetchResult];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v11 + 1) + 8 * i) canPerformEditOperation:a3])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v3 = [(PUPhotosGridViewController *)self photoSelectionManager];
  v4 = [(PUPhotosGridViewController *)self collectionListFetchResult];
  v5 = [v3 areAllAssetsSelectedInAssetCollections:v4];

  return v5;
}

- (BOOL)isAnyAssetSelected
{
  v2 = [(PUPhotosGridViewController *)self photoSelectionManager];
  v3 = [v2 isAnyAssetSelected];

  return v3;
}

- (id)selectedIndexPaths
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(PUPhotosGridViewController *)self collectionListFetchResult];
  v5 = [(PUPhotosGridViewController *)self photoSelectionManager];
  v6 = [v5 selectedAssetIndexesWithAssetCollectionOrdering:v4];

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
      v11 = v3;
      [v8 enumerateIndexesUsingBlock:v10];

      ++v7;
    }

    while (v7 < [v6 count]);
  }

  return v3;
}

void __48__PUPhotosGridViewController_selectedIndexPaths__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AC88] indexPathForItem:a2 inSection:*(a1 + 40)];
  [*(a1 + 32) addObject:v3];
}

- (id)selectedAssets
{
  v3 = [(PUPhotosGridViewController *)self photoSelectionManager];
  v4 = [(PUPhotosGridViewController *)self collectionListFetchResult];
  v5 = [v3 selectedAssetsWithAssetCollectionOrdering:v4];

  return v5;
}

- (BOOL)isEmpty
{
  v2 = [(PUPhotosGridViewController *)self photosDataSource];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 isEmpty];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setContentViewInSyncWithModel:(BOOL)a3
{
  self->_contentViewInSyncWithModel = a3;
  if (a3)
  {
    v4 = [(PUPhotosGridViewController *)self collectionListFetchResult];
    v5 = [v4 count];

    [(PUPhotosGridViewController *)self _setPreviousCollectionsCount:v5];
  }
}

- (void)_getFirstAsset:(id *)a3 collection:(id *)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [(PUPhotosGridViewController *)self collectionListFetchResult];
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [(PUPhotosGridViewController *)self assetsInAssetCollection:v11];
        v13 = [v12 count];

        if (v13)
        {
          v15 = [(PUPhotosGridViewController *)self assetsInAssetCollection:v11];
          v14 = [v15 firstObject];

          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  if (a3)
  {
    v16 = v14;
    *a3 = v14;
  }

  if (a4)
  {
    v17 = v8;
    *a4 = v8;
  }
}

- (id)indexPathForAsset:(id)a3 hintCollection:(id)a4 hintIndexPath:(id)a5
{
  v43 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    v18 = 0;
    goto LABEL_34;
  }

  v11 = [(PUPhotosGridViewController *)self collectionListFetchResult];
  v12 = [v11 count];

  if (!v10 || v12 <= [v10 section])
  {
    goto LABEL_12;
  }

  v13 = -[PUPhotosGridViewController photoCollectionAtIndex:](self, "photoCollectionAtIndex:", [v10 section]);
  v14 = [(PUPhotosGridViewController *)self assetsInAssetCollection:v13];
  v15 = [v14 count];
  if (v15 <= [v10 item])
  {

    goto LABEL_12;
  }

  v16 = [v14 objectAtIndex:{objc_msgSend(v10, "item")}];
  v17 = [v16 isEqual:v8] ? v10 : 0;

  if (!v17)
  {
LABEL_12:
    v19 = [(PUPhotosGridViewController *)self photosDataSource];
    v20 = v19;
    if (v9)
    {
      v21 = [v19 sectionForAssetCollection:v9];
      if (v21 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v33 = v21;
        goto LABEL_30;
      }
    }

    v22 = [v20 collectionListFetchResult];
    v23 = [v22 firstObject];
    v24 = v23;
    if (!v23 || [v23 assetCollectionType] != 3)
    {
      v32 = [(PUPhotosGridViewController *)self photosDataSource];
      [v32 forceAccurateAllSectionsIfNeeded];

      v9 = 0;
LABEL_31:
      v35 = [v20 indexPathForAsset:v8 hintIndexPath:v10 hintCollection:v9];
LABEL_32:
      v18 = v35;

      goto LABEL_33;
    }

    v37 = v8;
    [MEMORY[0x1E6978650] fetchAssetCollectionsContainingAsset:v8 withType:3 options:0];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v25 = v41 = 0u;
    v26 = [v25 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (!v26)
    {
LABEL_25:

      v9 = 0;
LABEL_37:
      v35 = 0;
      v8 = v37;
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
    v9 = v30;

    if (!v9)
    {
      goto LABEL_37;
    }

    v8 = v37;
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
  v2 = [(PUPhotosGridViewController *)self gridSpec];
  v3 = [v2 cellFillMode];

  return v3;
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
  v2 = [(PUPhotosGridViewController *)self mainGridLayout];
  [v2 itemSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)assetAtIndexPathIfSafe:(id)a3
{
  v4 = a3;
  if ([v4 section] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v4, "item") == 0x7FFFFFFFFFFFFFFFLL || (v5 = objc_msgSend(v4, "section"), -[PUPhotosGridViewController photosDataSource](self, "photosDataSource"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "numberOfSections"), v6, v5 >= v7) || (v8 = objc_msgSend(v4, "item"), -[PUPhotosGridViewController photosDataSource](self, "photosDataSource"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "numberOfItemsInSection:", objc_msgSend(v4, "section")), v9, v8 >= v10))
  {
    v12 = 0;
  }

  else
  {
    v11 = [(PUPhotosGridViewController *)self photosDataSource];
    v12 = [v11 assetAtIndexPath:v4];
  }

  return v12;
}

- (id)assetAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PUPhotosGridViewController *)self photosDataSource];
  v6 = [v5 assetCollectionForSection:{objc_msgSend(v4, "section")}];

  v7 = [(PUPhotosGridViewController *)self assetsInAssetCollection:v6];
  v8 = [v4 item];

  v9 = [v7 objectAtIndex:v8];

  return v9;
}

- (id)assetsInAssetCollection:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(PUPhotosGridViewController *)self photosDataSource];
    v6 = [v5 sectionForAssetCollection:v4];

    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0;
    }

    else
    {
      v7 = [v5 assetsInSection:v6];
      if (!v7)
      {
        v8 = objc_alloc(MEMORY[0x1E69788E0]);
        v9 = [v5 photoLibrary];
        v10 = [MEMORY[0x1E6978630] fetchType];
        v7 = [v8 initWithObjects:MEMORY[0x1E695E0F0] photoLibrary:v9 fetchType:v10 fetchPropertySets:0 identifier:0 registerIfNeeded:0];
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

  v3 = [(PUPhotosGridViewController *)self collectionView];
  v4 = [v3 dataSource];
  v5 = v4 == self;

  return v5;
}

- (void)_updateLayoutReferenceValues
{
  v3 = [(PUPhotosGridViewController *)self collectionView];
  [v3 bounds];
  Width = CGRectGetWidth(v19);

  v5 = [(PUPhotosGridViewController *)self collectionView];
  [v5 safeAreaInsets];
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

- (id)assetCollectionForSectionHeaderAtIndex:(unint64_t)a3
{
  if (self->_collectionListFetchResultBeforeChange && (-[PUPhotosGridViewController collectionView](self, "collectionView"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 numberOfSections], -[PUPhotosGridViewController photosDataSource](self, "photosDataSource"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "numberOfSections"), v7, v5, v6 != v8))
  {
    v9 = [(PHFetchResult *)self->_collectionListFetchResultBeforeChange objectAtIndexedSubscript:a3];
  }

  else
  {
    v9 = [(PXPhotosDataSource *)self->_photosDataSource assetCollectionForSection:a3];
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
      v6 = [(PUPhotosGridViewController *)self gridSpec];
      v7 = [v6 forceLoadInitialSectionCount];

      [(PXPhotosDataSource *)v8 forceAccurateSection:v5 andSectionsBeforeAndAfter:v7];
      [(PXPhotosDataSource *)v8 startBackgroundFetchIfNeeded];
    }
  }
}

- (void)setPhotosDataSource:(id)a3
{
  v5 = a3;
  photosDataSource = self->_photosDataSource;
  if (photosDataSource != v5)
  {
    v8 = v5;
    [(PXPhotosDataSource *)photosDataSource unregisterChangeObserver:self];
    objc_storeStrong(&self->_photosDataSource, a3);
    [(PUPhotosGridViewController *)self _setDidForceDataSource:0];
    if ([(PUPhotosGridViewController *)self px_isVisible])
    {
      [(PUPhotosGridViewController *)self forceDataSourceIfNeeded];
    }

    [(PXPhotosDataSource *)v8 registerChangeObserver:self];
    v7 = [(PUPhotosGridViewController *)self oneUpPresentationHelper];
    [v7 setPhotosDataSource:v8];

    photosDataSource = [(PUPhotosGridViewController *)self updateInterfaceForModelReloadAnimated:1];
    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](photosDataSource, v5);
}

- (void)setSessionInfo:(id)a3
{
  v5 = a3;
  sessionInfo = self->_sessionInfo;
  if (sessionInfo != v5)
  {
    v10 = v5;
    [(PUSessionInfo *)sessionInfo removeSessionInfoObserver:self];
    objc_storeStrong(&self->_sessionInfo, a3);
    [(PUSessionInfo *)self->_sessionInfo addSessionInfoObserver:self];
    v7 = [(PUSessionInfo *)self->_sessionInfo bannerGenerator];
    v8 = v7[2]();

    v9 = [(PUPhotosGridViewController *)self navigationItem];
    [v9 pu_setBanner:v8];

    [(PUPhotosGridViewController *)self _updatePhotoSelectionManager];
    [(PUPhotosGridViewController *)self updateInterfaceForModelReloadAnimated:0];

    v5 = v10;
  }

  MEMORY[0x1EEE66BB8](sessionInfo, v5);
}

- (id)newGridLayout
{
  v3 = objc_alloc_init(PUSectionedGridLayout);
  [(PUSectionedGridLayout *)v3 setDelegate:self];
  return v3;
}

- (BOOL)updateSpec
{
  v3 = [(PUPhotosGridViewController *)self traitCollection];
  if (![v3 horizontalSizeClass] || !objc_msgSend(v3, "verticalSizeClass"))
  {
    goto LABEL_14;
  }

  [PUInterfaceManager shouldUsePhoneLayoutWithTraitCollection:v3];
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
  v3 = [(PUPhotosGridViewController *)self _transitionWidthHasChanged];
  if (v3)
  {
    [(PUPhotosGridViewController *)self _adjustedTransitionWidth];
    self->_lastTransitionWidth = v4;
  }

  return v3;
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
  v3 = [(PUPhotosGridViewController *)self collectionView];
  [v3 safeAreaInsets];
  v5 = v4;
  v7 = v6;

  v8 = [(PUPhotosGridViewController *)self collectionView];
  [v8 bounds];
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

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v37.receiver = self;
  v37.super_class = PUPhotosGridViewController;
  [(PUPhotosGridViewController *)&v37 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(PUPhotosGridViewController *)self isCurrentCollectionViewDataSource];
  if (v7)
  {
    [v7 targetTransform];
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
  v11 = [(PUPhotosGridViewController *)self mainGridLayout];
  v12 = v11;
  if (v8)
  {
    v13 = [v11 prepareForViewTransitionToSize:{width, height}];
  }

  else
  {
    v13 = 0;
  }

  if ([v7 isAnimated] && (-[PUPhotosGridViewController px_isVisible](self, "px_isVisible") & 1) != 0)
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
    v17 = [(PUPhotosGridViewController *)self _cachedViewSizeTransitionContext];

    LOBYTE(v18) = 0;
    v13 = v17;
  }

  else
  {
    v19 = [MEMORY[0x1E69DC668] sharedApplication];
    v18 = [v19 isSuspended];

    if (v18)
    {
      v20 = [(PUPhotosGridViewController *)self _cachedViewSizeTransitionContext];

      if (!v20)
      {
        v21 = [(PUPhotosGridViewController *)self view];
        [v21 bounds];
        v23 = v22;
        v25 = v24;

        [(PUPhotosGridViewController *)self _setCachedViewSizeTransitionContext:v13];
        [(PUPhotosGridViewController *)self _setCachedViewSizeTransitionContextSize:v23, v25];
      }

      LOBYTE(v18) = 1;
    }
  }

  v26 = [(PUPhotosGridViewController *)self _pendingViewSizeTransitionContext];

  if (!v26)
  {
    [(PUPhotosGridViewController *)self _setPendingViewSizeTransitionContext:v13];
  }

  v14 = 1;
  if ((v18 & 1) == 0)
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
    [v7 animateAlongsideTransition:0 completion:v34];
  }

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __81__PUPhotosGridViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v32[3] = &unk_1E7B7C8A0;
  v32[4] = self;
  v33 = v8;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __81__PUPhotosGridViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_3;
  v28[3] = &unk_1E7B7C8C8;
  v30 = v8;
  v31 = v14;
  v28[4] = self;
  v29 = v12;
  v27 = v12;
  [v7 animateAlongsideTransition:v32 completion:v28];
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
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:422 description:@"missing spec"];

    gridSpec = self->_gridSpec;
  }

  return gridSpec;
}

- (void)dealloc
{
  [(PXPhotosDataSource *)self->_photosDataSource unregisterChangeObserver:self];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69BE918] object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  [(PUSessionInfo *)self->_sessionInfo removeSessionInfoObserver:self];
  v5 = [(PUPhotosGridViewController *)self _shareAssetsPopoverController];
  [v5 setDelegate:0];

  [(UILongPressGestureRecognizer *)self->_longPressGestureRecognizer setDelegate:0];
  [(PUPhotoPinchGestureRecognizer *)self->_photoOrStackPinchGestureRecognizer setDelegate:0];
  v6 = [(PUPhotosGridViewController *)self _collectionViewSpeedometer];
  [v6 setDelegate:0];

  v7.receiver = self;
  v7.super_class = PUPhotosGridViewController;
  [(PUPhotosGridViewController *)&v7 dealloc];
}

- (PUPhotosGridViewController)initWithCollectionViewLayout:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:401 description:{@"Do not use this initializer, use the designated one instead"}];

  return 0;
}

- (PUPhotosGridViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:396 description:{@"Do not use this initializer, use the designated one instead"}];

  return 0;
}

- (PUPhotosGridViewController)initWithSpec:(id)a3 photoLibrary:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:361 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  v25 = [MEMORY[0x1E696AAA8] currentHandler];
  [v25 handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewController.m" lineNumber:362 description:{@"Invalid parameter not satisfying: %@", @"spec"}];

LABEL_3:
  objc_storeStrong(&self->_photoLibrary, a4);
  objc_storeStrong(&self->_gridSpec, a3);
  v10 = [(PUPhotosGridViewController *)self newGridLayout];
  v26.receiver = self;
  v26.super_class = PUPhotosGridViewController;
  v11 = [(PUPhotosGridViewController *)&v26 initWithCollectionViewLayout:v10];
  if (v11)
  {
    v12 = objc_alloc_init(PUPhotosGridBarsHelper);
    barsHelper = v11->__barsHelper;
    v11->__barsHelper = v12;

    [(PUPhotosGridBarsHelper *)v11->__barsHelper setDelegate:v11];
    v14 = [(PUPhotosGridViewController *)v11 navigationItem];
    [v14 setLargeTitleDisplayMode:2];

    [(PUPhotosGridViewController *)v11 setMainGridLayout:v10];
    [(PUPhotosGridViewController *)v11 setAllowedActions:127];
    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    v16 = *MEMORY[0x1E69DE0E0];
    v17 = [MEMORY[0x1E69DCC68] sharedMenuController];
    [v15 addObserver:v11 selector:sel__menuControllerDidHideMenu_ name:v16 object:v17];

    v18 = [MEMORY[0x1E696AD88] defaultCenter];
    [v18 addObserver:v11 selector:sel__contentSizeCategoryDidChangeNotification_ name:*MEMORY[0x1E69DDC48] object:0];

    v19 = objc_opt_new();
    cachingImageManager = v11->__cachingImageManager;
    v11->__cachingImageManager = v19;

    v21 = objc_alloc_init(MEMORY[0x1E69C4490]);
    badgeManager = v11->__badgeManager;
    v11->__badgeManager = v21;
  }

  return v11;
}

+ (void)transferPhotoBrowserFromGridViewController:(id)a3 toGridViewController:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = [v9 _pushedPhotoBrowserController];
  if (v6)
  {
    [v5 _setPushedPhotoBrowserController:v6];
    [v9 _setPushedPhotoBrowserController:0];
    v7 = [v9 _photoBrowserOneUpPresentationAdaptor];
    [v5 _setPhotoBrowserOneUpPresentationAdaptor:v7];
    [v7 setZoomTransitionDelegate:v5];
    [v9 _setPhotoBrowserOneUpPresentationAdaptor:0];
    v8 = [v9 oneUpPresentationHelper];
    [v5 _setOneUpPresentationHelper:v8];
    [v8 setDelegate:v5];
    [v9 _setOneUpPresentationHelper:0];
  }
}

+ (id)_localizedSelectionTitleWithPhotoSelectionManager:(id)a3
{
  v3 = a3;
  if ([v3 isAnyAssetSelected])
  {
    [v3 localizedSelectionString];
  }

  else
  {
    PLLocalizedFrameworkString();
  }
  v4 = ;

  return v4;
}

@end