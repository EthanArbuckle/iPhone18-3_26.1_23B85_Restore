@interface PUImportOneUpViewController
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)pu_wantsToolbarVisible;
- (CGRect)imageRectFromPhotoView:(id)view;
- (CGRect)layout:(id)layout collectionView:(id)view selectionBadgeFrameForItemFrame:(CGRect)frame atIndexPath:(id)path;
- (CGRect)selectionBadgeFrameForItemFrame:(CGRect)frame atIndexPath:(id)path;
- (CGSize)layout:(id)layout collectionView:(id)view sizeForItemAtIndexPath:(id)path;
- (CGSize)sizeForItemAtIndexPath:(id)path;
- (PUImportOneUpViewController)initWithImportController:(id)controller mediaProvider:(id)provider startingAssetReference:(id)reference presentationFilter:(unint64_t)filter;
- (double)_horizontalOffsetInCollectionView:(id)view forCenteringOnItemAtIndexPath:(id)path;
- (double)absoluteProgressFromCurrentContentOffset;
- (id)_currentAsset;
- (id)_indexPathInCollectionView:(id)view closestToPoint:(CGPoint)point excludingIndexPath:(id)path;
- (id)assetAtIndexPath:(id)path;
- (id)badgeViewAtIndexPath:(id)path forCollectionView:(id)view;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)importAssetAtIndexPath:(id)path;
- (id)importDestinationForActionCoordinator:(id)coordinator;
- (id)indexPathOfCenterVisibleItemInCollectionView:(id)view;
- (id)nextIndexPath:(id)path;
- (id)previousIndexPath:(id)path;
- (int64_t)_titleViewVerticalSizeClassForExtendedTraitCollection:(id)collection;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)importOneUpCell:(id)cell requestedThumbnailForImportItem:(id)item completion:(id)completion;
- (int64_t)importOneUpScrubberCell:(id)cell requestedThumbnailForImportItem:(id)item completion:(id)completion;
- (int64_t)nextSectionWithItems:(int64_t)items;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (int64_t)previousSectionWithItems:(int64_t)items;
- (unint64_t)numberOfSectionsInReviewScrubber:(id)scrubber;
- (unint64_t)reviewScrubber:(id)scrubber numberOfItemsInSection:(unint64_t)section;
- (unsigned)reviewScrubberImageFormat;
- (void)_cancelAlerts;
- (void)_cancelOneUpView;
- (void)_deleteAction:(id)action;
- (void)_handleTapAtIndexPath:(id)path;
- (void)_handleTapInMainCollectionView:(id)view;
- (void)_importControllerDidEndAction;
- (void)_reallyToggleCurrentPickStatusAtIndexPath:(id)path;
- (void)_stopImportAction:(id)action;
- (void)_toggleCurrentPickStatusAtIndexPath:(id)path;
- (void)_updateBarItemsAnimated:(BOOL)animated;
- (void)_updateMainView;
- (void)_updateReviewScrubberFromContentOffset;
- (void)_updateReviewScrubberHeightIfNeeded;
- (void)actionCoordinatorDidBeginDelete:(id)delete;
- (void)actionCoordinatorDidBeginImport:(id)import;
- (void)beginCenterPrioritizedThumbnailLoading;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)deleteItems:(id)items;
- (void)getFirstValidIndexPath:(id *)path lastValidIndexPath:(id *)indexPath;
- (void)getMainCollectionViewFrame:(CGRect *)frame collectionViewLayoutInsets:(UIEdgeInsets *)insets;
- (void)handleNewDataSource:(id)source;
- (void)importControllerProgressDidChange:(id)change;
- (void)importOneUpCell:(id)cell didRequestCancellationOfThumbnailRequestWithID:(int64_t)d;
- (void)importOneUpCell:(id)cell requestedBadgeUpdateForImportItem:(id)item;
- (void)importOneUpScrubberCell:(id)cell didRequestCancellationOfThumbnailRequestWithID:(int64_t)d;
- (void)invalidateLayoutIfNeededForImportItem:(id)item;
- (void)loadCenterPrioritizedVisibleThumbnails;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)pageToIndexPath:(id)path animated:(BOOL)animated;
- (void)pageToItemOrNearestIndexPath:(id)path animated:(BOOL)animated;
- (void)relayoutCollectionView;
- (void)reviewScrubber:(id)scrubber willDisplayCell:(id)cell atIndexPath:(id)path;
- (void)reviewScrubberDidScrub:(id)scrub;
- (void)reviewScrubberDidSelectItemAtIndexPath:(id)path;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setImportController:(id)controller;
- (void)setImportDataSourceManager:(id)manager;
- (void)traitCollectionDidChange:(id)change;
- (void)transitionFromDataSource:(id)source toDataSource:(id)dataSource animated:(BOOL)animated completionHandler:(id)handler;
- (void)updateCollectionViewLayoutInsets;
- (void)updateNavigationItemTitle;
- (void)updateToolbarItems;
- (void)updateVisibleCellBadgesAndSelectability;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation PUImportOneUpViewController

- (id)nextIndexPath:(id)path
{
  pathCopy = path;
  importDataSource = [(PUImportOneUpViewController *)self importDataSource];
  item = [pathCopy item];
  if (item < [importDataSource numberOfItemsInSection:{objc_msgSend(pathCopy, "section")}] - 1)
  {
    v7 = MEMORY[0x1E696AC88];
    item2 = [pathCopy item];
    section = [pathCopy section];
    v10 = item2 + 1;
    v11 = v7;
LABEL_5:
    v13 = [v11 indexPathForItem:v10 inSection:section];
    goto LABEL_6;
  }

  v12 = -[PUImportOneUpViewController nextSectionWithItems:](self, "nextSectionWithItems:", [pathCopy section]);
  if ((v12 & 0x8000000000000000) == 0)
  {
    section = v12;
    v11 = MEMORY[0x1E696AC88];
    v10 = 0;
    goto LABEL_5;
  }

  v13 = 0;
LABEL_6:

  return v13;
}

- (id)previousIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy item] < 1)
  {
    v6 = -[PUImportOneUpViewController previousSectionWithItems:](self, "previousSectionWithItems:", [pathCopy section]);
    if (v6 < 0)
    {
      v5 = 0;
    }

    else
    {
      v7 = v6;
      importDataSource = [(PUImportOneUpViewController *)self importDataSource];
      v5 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(importDataSource inSection:{"numberOfItemsInSection:", v7) - 1, v7}];
    }
  }

  else
  {
    v5 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(pathCopy inSection:{"item") - 1, objc_msgSend(pathCopy, "section")}];
  }

  return v5;
}

- (int64_t)nextSectionWithItems:(int64_t)items
{
  importDataSource = [(PUImportOneUpViewController *)self importDataSource];
  numberOfSections = [importDataSource numberOfSections];
  while (++items < numberOfSections)
  {
    if ([importDataSource numberOfItemsInSection:items])
    {
      goto LABEL_6;
    }
  }

  items = -1;
LABEL_6:

  return items;
}

- (int64_t)previousSectionWithItems:(int64_t)items
{
  importDataSource = [(PUImportOneUpViewController *)self importDataSource];
  while (items-- >= 1)
  {
    if ([importDataSource numberOfItemsInSection:items])
    {
      goto LABEL_6;
    }
  }

  items = -1;
LABEL_6:

  return items;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  collectionView = [(PUImportOneUpViewController *)self collectionView];
  tapGestureRecognizer = [(PUImportOneUpViewController *)self tapGestureRecognizer];

  if (tapGestureRecognizer == recognizerCopy)
  {
    panGestureRecognizer = [collectionView panGestureRecognizer];
    if (panGestureRecognizer == gestureRecognizerCopy)
    {
      isDecelerating = [collectionView isDecelerating];
    }

    else
    {
      isDecelerating = 0;
    }
  }

  else
  {
    isDecelerating = 0;
  }

  return isDecelerating;
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

- (unint64_t)reviewScrubber:(id)scrubber numberOfItemsInSection:(unint64_t)section
{
  importDataSource = [(PUImportOneUpViewController *)self importDataSource];
  v6 = [importDataSource numberOfItemsInSection:section];

  return v6;
}

- (unint64_t)numberOfSectionsInReviewScrubber:(id)scrubber
{
  importDataSource = [(PUImportOneUpViewController *)self importDataSource];
  numberOfSections = [importDataSource numberOfSections];

  return numberOfSections;
}

- (void)reviewScrubberDidSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(PUImportOneUpViewController *)self collectionView];
  [collectionView stopScrollingAndZooming];

  [(PUImportOneUpViewController *)self pageToIndexPath:pathCopy animated:1];
}

- (void)reviewScrubberDidScrub:(id)scrub
{
  scrubCopy = scrub;
  collectionView = [(PUImportOneUpViewController *)self collectionView];
  [collectionView stopScrollingAndZooming];

  self->_updatingContentOffsetFromScrubbing = 1;
  selectedIndexPath = [scrubCopy selectedIndexPath];

  [(PUImportOneUpViewController *)self pageToIndexPath:selectedIndexPath animated:0];
  self->_updatingContentOffsetFromScrubbing = 0;
}

- (void)reviewScrubber:(id)scrubber willDisplayCell:(id)cell atIndexPath:(id)path
{
  cellCopy = cell;
  v8 = [(PUImportOneUpViewController *)self importAssetAtIndexPath:path];
  v9 = cellCopy;
  [v9 setDisplayDelegate:self];
  [v9 setImportItem:v8];
  [v9 refreshThumbnail];
}

- (void)importOneUpScrubberCell:(id)cell didRequestCancellationOfThumbnailRequestWithID:(int64_t)d
{
  importController = [(PUImportOneUpViewController *)self importController];
  importMediaProvider = [importController importMediaProvider];
  [importMediaProvider cancelImageRequest:d];
}

- (int64_t)importOneUpScrubberCell:(id)cell requestedThumbnailForImportItem:(id)item completion:(id)completion
{
  completionCopy = completion;
  importItem = [cell importItem];
  importController = [(PUImportOneUpViewController *)self importController];
  importMediaProvider = [importController importMediaProvider];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __98__PUImportOneUpViewController_importOneUpScrubberCell_requestedThumbnailForImportItem_completion___block_invoke;
  v14[3] = &unk_1E7B780D8;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = [importMediaProvider requestImageForImportItem:importItem ofSize:0 completion:v14];

  return v12;
}

uint64_t __98__PUImportOneUpViewController_importOneUpScrubberCell_requestedThumbnailForImportItem_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a4);
  }

  return result;
}

- (void)relayoutCollectionView
{
  collectionView = [(PUImportOneUpViewController *)self collectionView];
  if ([collectionView isDecelerating])
  {
    v4 = 0;
  }

  else
  {
    collectionView2 = [(PUImportOneUpViewController *)self collectionView];
    isDragging = [collectionView2 isDragging];

    if (isDragging)
    {
      v4 = 0;
      goto LABEL_7;
    }

    collectionView = [(PUImportOneUpViewController *)self collectionView];
    v4 = [(PUImportOneUpViewController *)self indexPathOfCenterVisibleItemInCollectionView:collectionView];
  }

LABEL_7:
  importDataSource = [(PUImportOneUpViewController *)self importDataSource];
  importDataSource2 = [(PUImportOneUpViewController *)self importDataSource];
  if (importDataSource)
  {
    [importDataSource firstItemIndexPath];
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v9 = [importDataSource2 assetAtItemIndexPath:&v24];

  importDataSource3 = [(PUImportOneUpViewController *)self importDataSource];
  if (importDataSource)
  {
    [importDataSource lastItemIndexPath];
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v11 = [importDataSource3 assetAtItemIndexPath:&v24];

  itemsNeedingRelayout = [(PUImportOneUpViewController *)self itemsNeedingRelayout];
  if ([itemsNeedingRelayout containsObject:v9])
  {
  }

  else
  {
    itemsNeedingRelayout2 = [(PUImportOneUpViewController *)self itemsNeedingRelayout];
    v14 = [itemsNeedingRelayout2 containsObject:v11];

    if (!v14)
    {
      goto LABEL_17;
    }
  }

  [(PUImportOneUpViewController *)self updateCollectionViewLayoutInsets:v24];
LABEL_17:
  v15 = [(PUImportOneUpViewController *)self collectionView:v24];
  [v15 reloadData];

  [(PUImportOneUpViewController *)self updateCollectionViewLayoutInsets];
  if (v4)
  {
    collectionView3 = [(PUImportOneUpViewController *)self collectionView];
    [collectionView3 contentOffset];
    v18 = v17;

    collectionView4 = [(PUImportOneUpViewController *)self collectionView];
    [(PUImportOneUpViewController *)self _horizontalOffsetInCollectionView:collectionView4 forCenteringOnItemAtIndexPath:v4];
    v21 = v20;

    collectionView5 = [(PUImportOneUpViewController *)self collectionView];
    [collectionView5 setContentOffset:{v21, v18}];
  }

  itemsNeedingRelayout3 = [(PUImportOneUpViewController *)self itemsNeedingRelayout];
  [itemsNeedingRelayout3 removeAllObjects];
}

- (void)invalidateLayoutIfNeededForImportItem:(id)item
{
  itemCopy = item;
  mEMORY[0x1E69C3620] = [MEMORY[0x1E69C3620] sharedInstance];
  useThumbnailSizesAsImageSizeHints = [mEMORY[0x1E69C3620] useThumbnailSizesAsImageSizeHints];

  itemsWithInvalidImageSizes = [(PUImportOneUpViewController *)self itemsWithInvalidImageSizes];
  v7 = [itemsWithInvalidImageSizes member:itemCopy];

  v8 = itemCopy;
  if (v7 && useThumbnailSizesAsImageSizeHints)
  {
    importAsset = [itemCopy importAsset];
    [importAsset orientedPixelSize];
    v11 = v10;
    v13 = v12;

    [itemCopy thumbnailSize];
    v15 = v14;
    v17 = v16;
    [itemCopy largeThumbnailSize];
    v19 = *MEMORY[0x1E695F060];
    v20 = *(MEMORY[0x1E695F060] + 8);
    if (v21 != *MEMORY[0x1E695F060] || v18 != v20)
    {
      [itemCopy largeThumbnailSize];
      v15 = v23;
      v17 = v24;
    }

    v25 = v11 == v19 && v13 == v20;
    v8 = itemCopy;
    if (v25 && (v15 != v19 || v17 != v20))
    {
      itemsNeedingRelayout = [(PUImportOneUpViewController *)self itemsNeedingRelayout];
      [itemsNeedingRelayout addObject:itemCopy];

      collectionViewLayout = [(PUImportOneUpViewController *)self collectionViewLayout];
      [collectionViewLayout invalidateLayout];

      v8 = itemCopy;
    }
  }
}

- (void)importOneUpCell:(id)cell didRequestCancellationOfThumbnailRequestWithID:(int64_t)d
{
  importController = [(PUImportOneUpViewController *)self importController];
  importMediaProvider = [importController importMediaProvider];
  [importMediaProvider cancelImageRequest:d];
}

- (int64_t)importOneUpCell:(id)cell requestedThumbnailForImportItem:(id)item completion:(id)completion
{
  cellCopy = cell;
  itemCopy = item;
  completionCopy = completion;
  if (-[PUImportOneUpViewController loadLargeThumbnailsInCustomOrder](self, "loadLargeThumbnailsInCustomOrder") && (-[PUImportOneUpViewController thumbnailLoadableItemWhitelist](self, "thumbnailLoadableItemWhitelist"), v11 = objc_claimAutoreleasedReturnValue(), [v11 member:itemCopy], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, !v12))
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  else
  {
    objc_initWeak(&location, self);
    importController = [(PUImportOneUpViewController *)self importController];
    importMediaProvider = [importController importMediaProvider];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __90__PUImportOneUpViewController_importOneUpCell_requestedThumbnailForImportItem_completion___block_invoke;
    v16[3] = &unk_1E7B77950;
    v18 = completionCopy;
    objc_copyWeak(&v19, &location);
    v17 = itemCopy;
    v12 = [importMediaProvider requestImageForImportItem:v17 ofSize:3 priority:1 completion:v16];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v12;
}

uint64_t __90__PUImportOneUpViewController_importOneUpCell_requestedThumbnailForImportItem_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = *(a1 + 40);
  v10 = v6;
  if (v7)
  {
    v7 = (*(v7 + 16))(v7, v6, a4);
    v6 = v10;
  }

  if (v6 && (a4 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained invalidateLayoutIfNeededForImportItem:*(a1 + 32)];

    v6 = v10;
  }

  return MEMORY[0x1EEE66BB8](v7, v6);
}

- (void)importOneUpCell:(id)cell requestedBadgeUpdateForImportItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  if (([itemCopy isDeleted] & 1) == 0)
  {
    collectionView = [(PUImportOneUpViewController *)self collectionView];
    v9 = [collectionView indexPathForCell:cellCopy];

    if (v9)
    {
      collectionView2 = [(PUImportOneUpViewController *)self collectionView];
      v11 = [collectionView2 supplementaryViewForElementKind:@"PUSelectableAssetBadgeKind" atIndexPath:v9];

      if (v11)
      {
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __81__PUImportOneUpViewController_importOneUpCell_requestedBadgeUpdateForImportItem___block_invoke;
        v12[3] = &unk_1E7B80C38;
        v13 = v11;
        v14 = itemCopy;
        [v13 performBadgeUpdates:v12];
      }
    }
  }
}

uint64_t __81__PUImportOneUpViewController_importOneUpCell_requestedBadgeUpdateForImportItem___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setBadgeType:{objc_msgSend(*(a1 + 40), "badgeType")}];
  v2 = [*(a1 + 40) isSelectable];
  v3 = *(a1 + 32);

  return [v3 setSelectable:v2];
}

- (CGRect)layout:(id)layout collectionView:(id)view selectionBadgeFrameForItemFrame:(CGRect)frame atIndexPath:(id)path
{
  [(PUImportOneUpViewController *)self selectionBadgeFrameForItemFrame:path atIndexPath:view, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGSize)layout:(id)layout collectionView:(id)view sizeForItemAtIndexPath:(id)path
{
  [(PUImportOneUpViewController *)self sizeForItemAtIndexPath:path, view];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  v9 = cellCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mEMORY[0x1E69C3620] = [MEMORY[0x1E69C3620] sharedInstance];
    showImportItemFilenames = [mEMORY[0x1E69C3620] showImportItemFilenames];

    if (showImportItemFilenames)
    {
      importDataSource = [(PUImportOneUpViewController *)self importDataSource];
      [importDataSource identifier];
      PXSimpleIndexPathFromIndexPath();

      importDataSource2 = [(PUImportOneUpViewController *)self importDataSource];
      memset(v18, 0, sizeof(v18));
      v14 = [importDataSource2 assetAtItemIndexPath:v18];

      v15 = MEMORY[0x1E696AEC0];
      debugDisplayName = [v14 debugDisplayName];
      v17 = [v15 stringWithFormat:@"%@ [%lu]", debugDisplayName, objc_msgSend(pathCopy, "item")];
      [v9 updateDebugLabel:v17];
    }

    else
    {
      [v9 updateDebugLabel:0];
    }
  }
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  if (![kindCopy isEqualToString:@"PUSelectableAssetBadgeKind"])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUImportOneUpViewController.m" lineNumber:1527 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v12 = [(PUImportOneUpViewController *)self badgeViewAtIndexPath:pathCopy forCollectionView:viewCopy];

  return v12;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithReuseIdentifier:@"PUImportOneUpCellIdentifier" forIndexPath:pathCopy];
  [v7 setDisplayDelegate:self];
  v8 = [(PUImportOneUpViewController *)self importAssetAtIndexPath:pathCopy];

  [v7 setImportItem:v8];
  [v7 setSelected:{objc_msgSend(v8, "isSelected")}];
  [v7 refreshThumbnail];

  return v7;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  importDataSource = [(PUImportOneUpViewController *)self importDataSource];
  v6 = [importDataSource numberOfItemsInSection:section];

  return v6;
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  importDataSource = [(PUImportOneUpViewController *)self importDataSource];
  numberOfSections = [importDataSource numberOfSections];

  return numberOfSections;
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  x = velocity.x;
  v35 = *MEMORY[0x1E69E9840];
  draggingCopy = dragging;
  [draggingCopy bounds];
  width = v36.size.width;
  height = v36.size.height;
  v11 = offset->x;
  y = offset->y;
  v36.origin.x = offset->x;
  v36.origin.y = y;
  MidX = CGRectGetMidX(v36);
  collectionViewLayout = [draggingCopy collectionViewLayout];
  v15 = [collectionViewLayout layoutAttributesForElementsInRect:{v11, y, width, height}];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = v15;
  v17 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v31;
    v20 = 1.79769313e308;
    v21 = 1.79769313e308;
    do
    {
      v22 = 0;
      do
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v23 = *(*(&v30 + 1) + 8 * v22);
        indexPath = [v23 indexPath];
        if (![v23 representedElementCategory])
        {
          if (([(PUImportOneUpViewController *)self _horizontalOffsetInCollectionView:draggingCopy forCenteringOnItemAtIndexPath:indexPath], v26 = v25, x == 0.0) || x > 0.0 && v25 > offset->x || x < 0.0 && v25 < offset->x)
          {
            [v23 center];
            v28 = vabdd_f64(v27, MidX);
            if (v28 < v20)
            {
              v20 = v28;
              v21 = v26;
            }
          }
        }

        ++v22;
      }

      while (v18 != v22);
      v29 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
      v18 = v29;
    }

    while (v29);

    if (v21 != 1.79769313e308)
    {
      offset->x = v21;
      offset->y = 0.0;
    }
  }

  else
  {
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  reviewScrubber = [(PUImportOneUpViewController *)self reviewScrubber];
  [reviewScrubber finishInteractiveUpdate];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    reviewScrubber = [(PUImportOneUpViewController *)self reviewScrubber];
    [reviewScrubber finishInteractiveUpdate];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  [(PUImportOneUpViewController *)self updateNavigationItemTitle];
  if (![(PUImportOneUpViewController *)self updatingContentOffsetFromScrubbing])
  {

    [(PUImportOneUpViewController *)self _updateReviewScrubberFromContentOffset];
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  reviewScrubber = [(PUImportOneUpViewController *)self reviewScrubber];
  [reviewScrubber beginInteractiveUpdate];
}

- (void)_importControllerDidEndAction
{
  [(PUImportOneUpViewController *)self setAllowsSelection:1];
  [(PUImportOneUpViewController *)self updateToolbarItems];
  mEMORY[0x1E69C3620] = [MEMORY[0x1E69C3620] sharedInstance];
  showProgressTitles = [mEMORY[0x1E69C3620] showProgressTitles];

  if (showProgressTitles)
  {

    [(PUImportOneUpViewController *)self updateNavigationItemTitle];
  }
}

- (id)importDestinationForActionCoordinator:(id)coordinator
{
  importController = [(PUImportOneUpViewController *)self importController];
  importDestinationAlbum = [importController importDestinationAlbum];

  return importDestinationAlbum;
}

- (void)actionCoordinatorDidBeginDelete:(id)delete
{
  [(PUImportOneUpViewController *)self updateToolbarItems];
  mEMORY[0x1E69C3620] = [MEMORY[0x1E69C3620] sharedInstance];
  showProgressTitles = [mEMORY[0x1E69C3620] showProgressTitles];

  if (showProgressTitles)
  {

    [(PUImportOneUpViewController *)self updateNavigationItemTitle];
  }
}

- (void)actionCoordinatorDidBeginImport:(id)import
{
  [(PUImportOneUpViewController *)self updateToolbarItems];
  mEMORY[0x1E69C3620] = [MEMORY[0x1E69C3620] sharedInstance];
  showProgressTitles = [mEMORY[0x1E69C3620] showProgressTitles];

  if (showProgressTitles)
  {

    [(PUImportOneUpViewController *)self updateNavigationItemTitle];
  }
}

- (void)deleteItems:(id)items
{
  itemsCopy = items;
  actionCoordinator = [(PUImportOneUpViewController *)self actionCoordinator];
  [actionCoordinator deleteItemsWithoutConfirmation:itemsCopy];
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
  v13 = _importOneUpLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v25 = "[PUImportOneUpViewController importControllerProgressDidChange:]";
    v26 = 2048;
    v27 = v12;
    _os_log_impl(&dword_1B36F3000, v13, OS_LOG_TYPE_INFO, "%s: setting progress to %f ", buf, 0x16u);
  }

  if (v12 == 0.0)
  {
    roundProgressView = [(PUImportOneUpViewController *)self roundProgressView];
    [roundProgressView resetProgress];
  }

  importController = [(PUImportOneUpViewController *)self importController];
  [importController isDeletingAssets];

  v16 = PLLocalizedFrameworkString();
  v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "integerValue")}];
  v23 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v10, "integerValue")}];
  v18 = PUStringWithValidatedFormat();

  v19 = [(PUImportOneUpViewController *)self roundProgressView:v17];
  [v19 setProgress:v12];

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
    [(PUImportOneUpViewController *)self updateNavigationItemTitle];
  }
}

- (void)_stopImportAction:(id)action
{
  actionCoordinator = [(PUImportOneUpViewController *)self actionCoordinator];
  [actionCoordinator stopImport];
}

- (void)_deleteAction:(id)action
{
  v13[1] = *MEMORY[0x1E69E9840];
  actionCopy = action;
  importController = [(PUImportOneUpViewController *)self importController];
  selectedItems = [importController selectedItems];

  if ([selectedItems count])
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  else
  {
    collectionView = [(PUImportOneUpViewController *)self collectionView];
    v9 = [(PUImportOneUpViewController *)self indexPathOfCenterVisibleItemInCollectionView:collectionView];

    v10 = [(PUImportOneUpViewController *)self importAssetAtIndexPath:v9];
    v11 = v10;
    if (v10)
    {
      v13[0] = v10;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    }

    else
    {
      v7 = MEMORY[0x1E695E0F0];
    }
  }

  actionCoordinator = [(PUImportOneUpViewController *)self actionCoordinator];
  [actionCoordinator deleteItemsFromBarButtonItem:actionCopy withOneUpHintItems:v7];
}

- (void)_cancelOneUpView
{
  [(PUImportOneUpViewController *)self _updateBarItemsAnimated:1];
  _currentAsset = [(PUImportOneUpViewController *)self _currentAsset];
  [(PUImportOneUpViewController *)self _dismissReviewControllerWithAsset:_currentAsset];
}

- (void)_reallyToggleCurrentPickStatusAtIndexPath:(id)path
{
  v7 = [(PUImportOneUpViewController *)self importAssetAtIndexPath:path];
  if ([v7 isSelectable])
  {
    isSelected = [v7 isSelected];
    importController = [(PUImportOneUpViewController *)self importController];
    v6 = importController;
    if (isSelected)
    {
      [importController deselectItem:v7];
    }

    else
    {
      [importController selectItem:v7];
    }

    [(PUImportOneUpViewController *)self updateNavigationItemTitle];
    [(PUImportOneUpViewController *)self updateToolbarItems];
  }
}

- (void)_toggleCurrentPickStatusAtIndexPath:(id)path
{
  if (self->_allowsSelection)
  {
    [(PUImportOneUpViewController *)self _reallyToggleCurrentPickStatusAtIndexPath:path];
  }
}

- (void)_updateReviewScrubberFromContentOffset
{
  importDataSource = [(PUImportOneUpViewController *)self importDataSource];
  if ([importDataSource containsAnyItems])
  {
    [(PUImportOneUpViewController *)self absoluteProgressFromCurrentContentOffset];
    v4 = v3;
    reviewScrubber = [(PUImportOneUpViewController *)self reviewScrubber];
    [reviewScrubber updateWithAbsoluteProgress:v4];
  }
}

- (double)absoluteProgressFromCurrentContentOffset
{
  importDataSource = [(PUImportOneUpViewController *)self importDataSource];
  v4 = 0.0;
  if ([importDataSource containsAnyItems])
  {
    collectionView = [(PUImportOneUpViewController *)self collectionView];
    v6 = [(PUImportOneUpViewController *)self indexPathOfCenterVisibleItemInCollectionView:collectionView];

    v7 = [(PUImportOneUpViewController *)self assetAtIndexPath:v6];
    importDataSource2 = [(PUImportOneUpViewController *)self importDataSource];
    allItems = [importDataSource2 allItems];

    v10 = [allItems indexOfObject:v7];
    [(PUImportOneUpViewController *)self sizeForItemAtIndexPath:v6];
    v12 = v11;
    collectionView2 = [(PUImportOneUpViewController *)self collectionView];
    [collectionView2 contentOffset];
    v15 = v14;

    collectionView3 = [(PUImportOneUpViewController *)self collectionView];
    [(PUImportOneUpViewController *)self _horizontalOffsetInCollectionView:collectionView3 forCenteringOnItemAtIndexPath:v6];
    v18 = v17;

    if (v15 >= v18)
    {
      v19 = [(PUImportOneUpViewController *)self nextIndexPath:v6];
      v28 = v12;
      if (v19)
      {
        [(PUImportOneUpViewController *)self sizeForItemAtIndexPath:v19];
        v28 = v29;
      }

      specManager = [(PUImportOneUpViewController *)self specManager];
      spec = [specManager spec];
      [spec interItemSpacing];
      v33 = round(v28 * 0.5 + v12 * 0.5 + v18 + v32);

      v27 = (v15 - v18) / (v33 - v18);
      v26 = v10;
    }

    else
    {
      v19 = [(PUImportOneUpViewController *)self previousIndexPath:v6];
      v20 = v12;
      if (v19)
      {
        [(PUImportOneUpViewController *)self sizeForItemAtIndexPath:v19];
        v20 = v21;
      }

      specManager2 = [(PUImportOneUpViewController *)self specManager];
      spec2 = [specManager2 spec];
      [spec2 interItemSpacing];
      v25 = round(v18 - v12 * 0.5 - v24 - v20 * 0.5);

      v26 = v10;
      v27 = (v15 - v25) / (v18 - v25) + -1.0;
    }

    v4 = v27 + v26;
  }

  return v4;
}

- (unsigned)reviewScrubberImageFormat
{
  defaultFormatChooser = [MEMORY[0x1E69BF248] defaultFormatChooser];
  largestUncroppedNonJPEGThumbnailFormat = [defaultFormatChooser largestUncroppedNonJPEGThumbnailFormat];
  formatID = [largestUncroppedNonJPEGThumbnailFormat formatID];

  return formatID;
}

- (void)_updateReviewScrubberHeightIfNeeded
{
  if ([(PUImportOneUpViewController *)self _needsUpdateReviewScrubberHeight])
  {
    [(PUImportOneUpViewController *)self _setNeedsUpdateReviewScrubberHeight:0];
    reviewScrubberHeightConstraint = [(PUImportOneUpViewController *)self reviewScrubberHeightConstraint];
    v7 = reviewScrubberHeightConstraint;
    reviewScrubber = [(PUImportOneUpViewController *)self reviewScrubber];
    traitCollection = [(PUImportOneUpViewController *)self traitCollection];
    [PUReviewScrubberSetupHelper configureHeightConstraint:&v7 forReviewScrubber:reviewScrubber withTraitCollection:traitCollection];
    v6 = v7;

    [(PUImportOneUpViewController *)self setReviewScrubberHeightConstraint:v6];
  }
}

- (void)updateCollectionViewLayoutInsets
{
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  [(PUImportOneUpViewController *)self getMainCollectionViewFrame:&v19 collectionViewLayoutInsets:&v17];
  v15 = 0;
  v16 = 0;
  [(PUImportOneUpViewController *)self getFirstValidIndexPath:&v16 lastValidIndexPath:&v15];
  v3 = v16;
  v4 = v15;
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v9 = *(&v17 + 1);
    v11 = *(&v18 + 1);
  }

  else
  {
    [(PUImportOneUpViewController *)self sizeForItemAtIndexPath:v3];
    v8 = v7;
    [(PUImportOneUpViewController *)self sizeForItemAtIndexPath:v5];
    v9 = *(&v17 + 1) + round((*&v20 - v8) * 0.5);
    v11 = *(&v18 + 1) + round((*&v20 - v10) * 0.5);
    *(&v17 + 1) = v9;
    *(&v18 + 1) = v11;
  }

  v12 = *&v17;
  v13 = *&v18;
  collectionViewLayout = [(PUImportOneUpViewController *)self collectionViewLayout];
  [collectionViewLayout setItemsContentInset:{v12, v9, v13, v11}];
}

- (id)badgeViewAtIndexPath:(id)path forCollectionView:(id)view
{
  if (view)
  {
    v6 = [view dequeueReusableSupplementaryViewOfKind:@"PUSelectableAssetBadgeKind" withReuseIdentifier:@"PUImportOneUpBadgeIdentifier" forIndexPath:path];
  }

  else
  {
    pathCopy = path;
    v8 = [PUImportOneUpCellBadgeView alloc];
    v6 = [(PUImportOneUpCellBadgeView *)v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  v9 = v6;
  v10 = [(PUImportOneUpViewController *)self importAssetAtIndexPath:path];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __70__PUImportOneUpViewController_badgeViewAtIndexPath_forCollectionView___block_invoke;
  v16[3] = &unk_1E7B80C38;
  v11 = v9;
  v17 = v11;
  v18 = v10;
  v12 = v10;
  [v11 performBadgeUpdates:v16];
  v13 = v18;
  v14 = v11;

  return v11;
}

uint64_t __70__PUImportOneUpViewController_badgeViewAtIndexPath_forCollectionView___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setBadgeType:{objc_msgSend(*(a1 + 40), "badgeType")}];
  v2 = [*(a1 + 40) isSelectable];
  v3 = *(a1 + 32);

  return [v3 setSelectable:v2];
}

- (id)_indexPathInCollectionView:(id)view closestToPoint:(CGPoint)point excludingIndexPath:(id)path
{
  y = point.y;
  x = point.x;
  v29 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  v10 = [viewCopy indexPathForItemAtPoint:{x, y}];
  if (!v10)
  {
    visibleCells = [viewCopy visibleCells];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = [visibleCells countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v10 = 0;
      v14 = *v25;
      v15 = 1.79769313e308;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(visibleCells);
          }

          v17 = *(*(&v24 + 1) + 8 * i);
          v18 = [viewCopy indexPathForCell:v17];
          if (([pathCopy isEqual:v18] & 1) == 0)
          {
            [v17 center];
            v21 = (v20 - y) * (v20 - y) + (v19 - x) * (v19 - x);
            if (v21 < v15)
            {
              v22 = v18;

              v15 = v21;
              v10 = v22;
            }
          }
        }

        v13 = [visibleCells countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v13);
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (double)_horizontalOffsetInCollectionView:(id)view forCenteringOnItemAtIndexPath:(id)path
{
  viewCopy = view;
  v6 = [viewCopy layoutAttributesForItemAtIndexPath:path];
  [v6 center];
  v8 = v7;
  [viewCopy bounds];
  v10 = v9;

  return round(v8 + v10 * -0.5);
}

- (id)indexPathOfCenterVisibleItemInCollectionView:(id)view
{
  viewCopy = view;
  [viewCopy bounds];
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  MidX = CGRectGetMidX(v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v10 = [(PUImportOneUpViewController *)self _indexPathInCollectionView:viewCopy closestToPoint:0 excludingIndexPath:MidX, CGRectGetMidY(v14)];

  return v10;
}

- (void)pageToIndexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  pathCopy = path;
  collectionView = [(PUImportOneUpViewController *)self collectionView];
  [collectionView contentOffset];
  v8 = v7;
  [(PUImportOneUpViewController *)self _horizontalOffsetInCollectionView:collectionView forCenteringOnItemAtIndexPath:pathCopy];
  v10 = v9;

  [collectionView setContentOffset:animatedCopy animated:{v10, v8}];
  [(PUImportOneUpViewController *)self updateNavigationItemTitle];
}

- (void)pageToItemOrNearestIndexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  pathCopy = path;
  v14 = 0u;
  v15 = 0u;
  importDataSource = [(PUImportOneUpViewController *)self importDataSource];
  v8 = importDataSource;
  if (importDataSource)
  {
    [importDataSource itemIndexPathForItem:pathCopy];
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  if (v14 == *MEMORY[0x1E69C4880])
  {
    collectionView = [(PUImportOneUpViewController *)self collectionView];
    v10 = [(PUImportOneUpViewController *)self indexPathOfCenterVisibleItemInCollectionView:collectionView];

    if (!v10)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v12 = v14;
  v13 = v15;
  v10 = PXIndexPathFromSimpleIndexPath();
  if (v10)
  {
LABEL_8:
    v11 = [(PUImportOneUpViewController *)self reviewScrubber:v12];
    [v11 setSelectedIndexPath:v10];

    [(PUImportOneUpViewController *)self pageToIndexPath:v10 animated:animatedCopy];
  }

LABEL_9:
}

- (CGSize)sizeForItemAtIndexPath:(id)path
{
  v4 = [(PUImportOneUpViewController *)self importAssetAtIndexPath:path];
  importAsset = [v4 importAsset];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  [(PUImportOneUpViewController *)self getMainCollectionViewFrame:&v52 collectionViewLayoutInsets:&v50];
  v6 = *&v53 - (*(&v50 + 1) + *(&v51 + 1));
  v7 = *(&v53 + 1) - (*&v50 + *&v51);
  [importAsset orientedPixelSize];
  v9 = v8;
  v11 = v10;
  mEMORY[0x1E69C3620] = [MEMORY[0x1E69C3620] sharedInstance];
  useThumbnailSizesAsImageSizeHints = [mEMORY[0x1E69C3620] useThumbnailSizesAsImageSizeHints];

  v14 = *MEMORY[0x1E695F060];
  v15 = *(MEMORY[0x1E695F060] + 8);
  if (v9 != *MEMORY[0x1E695F060] || v11 != v15 || useThumbnailSizesAsImageSizeHints == 0)
  {
    goto LABEL_27;
  }

  [v4 largeThumbnailSize];
  if (v19 == v14 && v18 == v15)
  {
    [v4 thumbnailSize];
    if (v24 == v14 && v23 == v15)
    {
      itemsWithInvalidImageSizes = [(PUImportOneUpViewController *)self itemsWithInvalidImageSizes];

      if (!itemsWithInvalidImageSizes)
      {
        v27 = [MEMORY[0x1E695DFA8] set];
        [(PUImportOneUpViewController *)self setItemsWithInvalidImageSizes:v27];
      }

      itemsWithInvalidImageSizes2 = [(PUImportOneUpViewController *)self itemsWithInvalidImageSizes];
      [itemsWithInvalidImageSizes2 addObject:v4];

      goto LABEL_22;
    }

    [v4 thumbnailSize];
  }

  else
  {
    [v4 largeThumbnailSize];
  }

  v9 = v21;
  v11 = v22;
LABEL_22:
  if (v9 != v14 || v11 != v15)
  {
    itemsWithInvalidImageSizes3 = [(PUImportOneUpViewController *)self itemsWithInvalidImageSizes];
    [itemsWithInvalidImageSizes3 removeObject:v4];
  }

LABEL_27:
  specManager = [(PUImportOneUpViewController *)self specManager];
  spec = [specManager spec];

  [spec interItemSpacing];
  v34 = v6 + v33 * -4.0;
  v35 = v7 + v33 * -2.0;
  [spec selectionBadgeSize];
  v37 = v36;
  [spec selectionBadgeOffset];
  v39 = v37 + v38 * 2.0;
  PURectWithSizeThatFitsInRect(v9, v11, 0.0, 0.0, v34, v35);
  if (v41 < v39 && v11 < v9)
  {
    v40 = v40 * (v39 / v41);
    v41 = v39;
  }

  if (v40 < v39 && v9 < v11)
  {
    v41 = v41 * (v39 / v40);
    v40 = v39;
  }

  if (v40 >= v39)
  {
    v44 = v40;
  }

  else
  {
    v44 = v39;
  }

  if (v34 < v44)
  {
    v44 = v34;
  }

  if (v41 >= v39)
  {
    v45 = v41;
  }

  else
  {
    v45 = v39;
  }

  if (v35 < v45)
  {
    v45 = v35;
  }

  v46 = round(v44);
  v47 = round(v45);

  v48 = v46;
  v49 = v47;
  result.height = v49;
  result.width = v48;
  return result;
}

- (id)importAssetAtIndexPath:(id)path
{
  v3 = [(PUImportOneUpViewController *)self assetAtIndexPath:path];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)assetAtIndexPath:(id)path
{
  pathCopy = path;
  importDataSource = [(PUImportOneUpViewController *)self importDataSource];
  [importDataSource identifier];
  PXSimpleIndexPathFromIndexPath();

  importDataSource2 = [(PUImportOneUpViewController *)self importDataSource];
  memset(v9, 0, sizeof(v9));
  v7 = [importDataSource2 assetAtItemIndexPath:v9];

  return v7;
}

- (id)_currentAsset
{
  collectionView = [(PUImportOneUpViewController *)self collectionView];
  v4 = [(PUImportOneUpViewController *)self indexPathOfCenterVisibleItemInCollectionView:collectionView];

  v5 = [(PUImportOneUpViewController *)self assetAtIndexPath:v4];

  return v5;
}

- (void)_handleTapInMainCollectionView:(id)view
{
  viewCopy = view;
  collectionView = [(PUImportOneUpViewController *)self collectionView];
  [viewCopy locationInView:collectionView];
  v6 = v5;
  v8 = v7;

  collectionViewLayout = [(PUImportOneUpViewController *)self collectionViewLayout];
  [collectionView contentSize];
  v11 = v10;
  [collectionViewLayout itemsContentInset];
  v14 = v11 - fabs(v13);
  if (v6 > fabs(v12) && v6 < v14)
  {
    v16 = [(PUImportOneUpViewController *)self _indexPathInCollectionView:collectionView closestToPoint:0 excludingIndexPath:v6, v8];
    if (v16)
    {
      [(PUImportOneUpViewController *)self _handleTapAtIndexPath:v16];
    }
  }
}

- (void)_handleTapAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(PUImportOneUpViewController *)self collectionView];
  [(PUImportOneUpViewController *)self _toggleCurrentPickStatusAtIndexPath:pathCopy];
  if (([collectionView isDragging] & 1) == 0 && (objc_msgSend(collectionView, "isDecelerating") & 1) == 0 && objc_msgSend(collectionView, "isTracking"))
  {
    reviewScrubber = [(PUImportOneUpViewController *)self reviewScrubber];
    [reviewScrubber beginInteractiveUpdate];
    [(PUImportOneUpViewController *)self pageToIndexPath:pathCopy animated:1];
  }
}

- (void)loadCenterPrioritizedVisibleThumbnails
{
  v26 = *MEMORY[0x1E69E9840];
  if ([(PUImportOneUpViewController *)self loadLargeThumbnailsInCustomOrder])
  {
    collectionView = [(PUImportOneUpViewController *)self collectionView];
    indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];

    if ([indexPathsForVisibleItems count])
    {
      v5 = [indexPathsForVisibleItems sortedArrayUsingComparator:&__block_literal_global_311_31467];

      collectionView2 = [(PUImportOneUpViewController *)self collectionView];
      v7 = [(PUImportOneUpViewController *)self indexPathOfCenterVisibleItemInCollectionView:collectionView2];

      if (v7)
      {
        collectionView3 = [(PUImportOneUpViewController *)self collectionView];
        v9 = [collectionView3 cellForItemAtIndexPath:v7];

        if (v9)
        {
          importItem = [v9 importItem];
          thumbnailLoadableItemWhitelist = [(PUImportOneUpViewController *)self thumbnailLoadableItemWhitelist];
          [thumbnailLoadableItemWhitelist addObject:importItem];

          [v9 refreshThumbnail];
        }
      }

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      indexPathsForVisibleItems = v5;
      v12 = [indexPathsForVisibleItems countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v22;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v22 != v14)
            {
              objc_enumerationMutation(indexPathsForVisibleItems);
            }

            v16 = *(*(&v21 + 1) + 8 * i);
            if (([v16 isEqual:{v7, v21}] & 1) == 0)
            {
              collectionView4 = [(PUImportOneUpViewController *)self collectionView];
              v18 = [collectionView4 cellForItemAtIndexPath:v16];

              if (v18)
              {
                importItem2 = [v18 importItem];
                thumbnailLoadableItemWhitelist2 = [(PUImportOneUpViewController *)self thumbnailLoadableItemWhitelist];
                [thumbnailLoadableItemWhitelist2 addObject:importItem2];

                [v18 refreshThumbnail];
              }
            }
          }

          v13 = [indexPathsForVisibleItems countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v13);
      }

      [(PUImportOneUpViewController *)self setLoadLargeThumbnailsInCustomOrder:0];
      [(PUImportOneUpViewController *)self setThumbnailLoadableItemWhitelist:0];
    }
  }
}

- (void)beginCenterPrioritizedThumbnailLoading
{
  [(PUImportOneUpViewController *)self setLoadLargeThumbnailsInCustomOrder:[(PUImportOneUpViewController *)self isCommitingPreview]^ 1];
  v3 = [MEMORY[0x1E695DFA8] set];
  [(PUImportOneUpViewController *)self setThumbnailLoadableItemWhitelist:v3];
}

- (CGRect)selectionBadgeFrameForItemFrame:(CGRect)frame atIndexPath:(id)path
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  specManager = [(PUImportOneUpViewController *)self specManager];
  spec = [specManager spec];

  [spec selectionBadgeSize];
  v11 = v10;
  v13 = v12;
  [spec selectionBadgeOffset];
  v15 = v14;
  v17 = v16;
  selectionBadgeCorner = [spec selectionBadgeCorner];
  if (selectionBadgeCorner != 1)
  {
    v19 = width;
    v20 = *(MEMORY[0x1E695F058] + 8);
    if (selectionBadgeCorner == 4)
    {
      v26 = x;
      v27 = y;
      v28 = height;
    }

    else
    {
      v21 = height;
      v22 = *MEMORY[0x1E695F058];
      if (selectionBadgeCorner == 2)
      {
        v23 = x;
        v24 = y;
        v25 = CGRectGetWidth(*(&v19 - 2));
        v40.origin.x = v22;
        v40.origin.y = v20;
        v40.size.width = v11;
        v40.size.height = v13;
        v15 = v25 - CGRectGetWidth(v40) - v15;
        goto LABEL_8;
      }

      v29 = x;
      v30 = y;
      v38 = v21;
      rect = v19;
      v37 = CGRectGetWidth(*(&v19 - 2));
      v41.origin.x = v22;
      v41.origin.y = v20;
      v41.size.width = v11;
      v41.size.height = v13;
      v31 = CGRectGetWidth(v41);
      v28 = v38;
      v15 = v37 - v31 - v15;
      v26 = x;
      v27 = y;
      v19 = rect;
    }

    v32 = CGRectGetHeight(*(&v19 - 2));
    v42.origin.x = v15;
    v42.origin.y = v20;
    v42.size.width = v11;
    v42.size.height = v13;
    v17 = v32 - CGRectGetHeight(v42) - v17;
  }

LABEL_8:

  v33 = v15;
  v34 = v17;
  v35 = v11;
  v36 = v13;
  result.size.height = v36;
  result.size.width = v35;
  result.origin.y = v34;
  result.origin.x = v33;
  return result;
}

- (void)getFirstValidIndexPath:(id *)path lastValidIndexPath:(id *)indexPath
{
  importDataSource = [(PUImportOneUpViewController *)self importDataSource];
  v7 = importDataSource;
  if (importDataSource)
  {
    [importDataSource firstItemIndexPath];
    [v7 lastItemIndexPath];
    v8 = PXIndexPathFromSimpleIndexPath();
    v9 = PXIndexPathFromSimpleIndexPath();
    if (!path)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = 0;
  v8 = 0;
  if (path)
  {
LABEL_3:
    v10 = v8;
    *path = v8;
  }

LABEL_4:
  if (indexPath)
  {
    v11 = v9;
    *indexPath = v9;
  }
}

- (void)getMainCollectionViewFrame:(CGRect *)frame collectionViewLayoutInsets:(UIEdgeInsets *)insets
{
  view = [(PUImportOneUpViewController *)self view];
  [view bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  collectionViewLayout = [(PUImportOneUpViewController *)self collectionViewLayout];
  [collectionViewLayout layoutReferenceSize];
  v18 = v17;
  v20 = v19;
  v21 = *MEMORY[0x1E695F060];
  v22 = *(MEMORY[0x1E695F060] + 8);

  if (v18 != v21 || v20 != v22)
  {
    collectionViewLayout2 = [(PUImportOneUpViewController *)self collectionViewLayout];
    [collectionViewLayout2 layoutReferenceSize];
    v13 = v25;
    v15 = v26;
  }

  if (frame)
  {
    frame->origin.x = v9;
    frame->origin.y = v11;
    frame->size.width = v13;
    frame->size.height = v15;
  }

  if (insets)
  {
    [(PUImportOneUpViewController *)self px_safeAreaInsets];
    reviewScrubberHeightConstraint = [(PUImportOneUpViewController *)self reviewScrubberHeightConstraint];
    [reviewScrubberHeightConstraint constant];

    UIEdgeInsetsMax();
    insets->top = v28;
    insets->left = v29;
    insets->bottom = v30;
    insets->right = v31;
  }
}

- (void)_updateMainView
{
  if (![(PUImportOneUpViewController *)self isViewLoaded])
  {
    return;
  }

  specManager = [(PUImportOneUpViewController *)self specManager];
  spec = [specManager spec];

  v25 = 0u;
  v26 = 0u;
  memset(v24, 0, sizeof(v24));
  [(PUImportOneUpViewController *)self getMainCollectionViewFrame:&v25 collectionViewLayoutInsets:v24];
  v5 = +[PUInterfaceManager currentTheme];
  photoCollectionViewBackgroundColor = [v5 photoCollectionViewBackgroundColor];

  collectionView = [(PUImportOneUpViewController *)self collectionView];
  collectionViewLayout = [(PUImportOneUpViewController *)self collectionViewLayout];
  [spec interItemSpacing];
  if (!collectionViewLayout)
  {
    v14 = v9;
    collectionViewLayout = objc_alloc_init(PUSelectableAssetCollectionViewLayout);
    [(PUHorizontalCollectionViewLayout *)collectionViewLayout setInteritemSpacing:v14];
    [spec selectionBadgeOffset];
    [(PUSelectableAssetCollectionViewLayout *)collectionViewLayout setSharingBadgeOffset:?];
    [(PUHorizontalCollectionViewLayout *)collectionViewLayout setDelegate:self];
    objc_storeStrong(&self->_collectionViewLayout, collectionViewLayout);
    if (collectionView)
    {
      goto LABEL_4;
    }

LABEL_9:
    v15 = objc_alloc(MEMORY[0x1E69DC7F0]);
    collectionView = [v15 initWithFrame:collectionViewLayout collectionViewLayout:{v25, v26}];
    [collectionView setAutoresizingMask:18];
    [collectionView setAlwaysBounceVertical:0];
    [collectionView setAlwaysBounceHorizontal:1];
    [collectionView setPagingEnabled:0];
    [collectionView setDecelerationRate:*MEMORY[0x1E69DE3A0]];
    [collectionView setDataSource:self];
    [collectionView setDelegate:self];
    [collectionView setShowsHorizontalScrollIndicator:0];
    [collectionView setBackgroundColor:photoCollectionViewBackgroundColor];
    [collectionView setDelaysContentTouches:0];
    [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PUImportOneUpCellIdentifier"];
    [collectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:@"PUSelectableAssetBadgeKind" withReuseIdentifier:@"PUImportOneUpBadgeIdentifier"];
    [collectionView setContentInsetAdjustmentBehavior:2];
    v16 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTapInMainCollectionView_];
    tapGestureRecognizer = self->_tapGestureRecognizer;
    self->_tapGestureRecognizer = v16;

    tapGestureRecognizer = [(PUImportOneUpViewController *)self tapGestureRecognizer];
    [tapGestureRecognizer setNumberOfTapsRequired:1];

    tapGestureRecognizer2 = [(PUImportOneUpViewController *)self tapGestureRecognizer];
    [tapGestureRecognizer2 setNumberOfTouchesRequired:1];

    tapGestureRecognizer3 = [(PUImportOneUpViewController *)self tapGestureRecognizer];
    [tapGestureRecognizer3 setDelegate:self];

    tapGestureRecognizer4 = [(PUImportOneUpViewController *)self tapGestureRecognizer];
    [collectionView addGestureRecognizer:tapGestureRecognizer4];

    objc_storeStrong(&self->_collectionView, collectionView);
    view = [(PUImportOneUpViewController *)self view];
    collectionView2 = [(PUImportOneUpViewController *)self collectionView];
    [view addSubview:collectionView2];

    goto LABEL_4;
  }

  if (!collectionView)
  {
    goto LABEL_9;
  }

LABEL_4:
  [collectionView setFrame:{v25, v26}];
  [(PUImportOneUpViewController *)self updateCollectionViewLayoutInsets];
  if (!self->_reviewScrubber)
  {
    v10 = [PUReviewScrubberSetupHelper createReviewScrubberWithDataSource:self delegate:self];
    reviewScrubber = self->_reviewScrubber;
    self->_reviewScrubber = v10;

    [(PUReviewScrubber *)self->_reviewScrubber setScrubberCellClass:objc_opt_class()];
    v12 = self->_reviewScrubber;
    view2 = [(PUImportOneUpViewController *)self view];
    [PUReviewScrubberSetupHelper setupBaseConstraintsForReviewScrubber:v12 inView:view2];

    [(PUImportOneUpViewController *)self _invalidateReviewScrubberHeight];
  }

  [(PUImportOneUpViewController *)self _updateReviewScrubberHeightIfNeeded];
}

- (void)_updateBarItemsAnimated:(BOOL)animated
{
  v39[1] = *MEMORY[0x1E69E9840];
  navigationTitleView = [(PUImportOneUpViewController *)self navigationTitleView];

  if (!navigationTitleView)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69C3720]);
    navigationTitleView = self->_navigationTitleView;
    self->_navigationTitleView = v5;
  }

  cancelBarButtonItem = [(PUImportOneUpViewController *)self cancelBarButtonItem];

  if (!cancelBarButtonItem)
  {
    v8 = MEMORY[0x1B8C6D660]();
    v9 = objc_alloc(MEMORY[0x1E69DC708]);
    if (v8)
    {
      v10 = [v9 initWithBarButtonSystemItem:101 target:self action:sel__cancelAction_];
      cancelBarButtonItem = self->_cancelBarButtonItem;
      self->_cancelBarButtonItem = v10;
    }

    else
    {
      v12 = [v9 initWithTitle:@" " style:0 target:self action:sel__cancelAction_];
      v13 = self->_cancelBarButtonItem;
      self->_cancelBarButtonItem = v12;

      [(UIBarButtonItem *)self->_cancelBarButtonItem _setShowsBackButtonIndicator:1];
    }
  }

  importBarButtonItem = [(PUImportOneUpViewController *)self importBarButtonItem];

  if (!importBarButtonItem)
  {
    v15 = objc_alloc(MEMORY[0x1E69DC708]);
    v16 = PLLocalizedFrameworkString();
    v17 = [v15 initWithTitle:v16 style:2 target:0 action:0];
    importBarButtonItem = self->_importBarButtonItem;
    self->_importBarButtonItem = v17;
  }

  stopImportBarButtonItem = [(PUImportOneUpViewController *)self stopImportBarButtonItem];

  if (!stopImportBarButtonItem)
  {
    v20 = objc_alloc(MEMORY[0x1E69DC708]);
    v21 = PLLocalizedFrameworkString();
    v22 = [v20 initWithTitle:v21 style:0 target:self action:sel__stopImportAction_];
    stopImportBarButtonItem = self->_stopImportBarButtonItem;
    self->_stopImportBarButtonItem = v22;
  }

  deleteBarButtonItem = [(PUImportOneUpViewController *)self deleteBarButtonItem];

  if (!deleteBarButtonItem)
  {
    v25 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:16 target:self action:sel__deleteAction_];
    deleteBarButtonItem = self->_deleteBarButtonItem;
    self->_deleteBarButtonItem = v25;
  }

  progressButtonItem = [(PUImportOneUpViewController *)self progressButtonItem];

  if (!progressButtonItem)
  {
    v28 = [objc_alloc(MEMORY[0x1E69BE1C8]) initWithFrame:3 style:{0.0, 0.0, 28.0, 28.0}];
    [(PUImportOneUpViewController *)self setRoundProgressView:v28];

    roundProgressView = [(PUImportOneUpViewController *)self roundProgressView];
    [roundProgressView setUserInteractionEnabled:0];

    v30 = objc_alloc(MEMORY[0x1E69DC708]);
    roundProgressView2 = [(PUImportOneUpViewController *)self roundProgressView];
    v32 = [v30 initWithCustomView:roundProgressView2];
    progressButtonItem = self->_progressButtonItem;
    self->_progressButtonItem = v32;

    [(UIBarButtonItem *)self->_progressButtonItem setIsAccessibilityElement:1];
    [(UIBarButtonItem *)self->_progressButtonItem setAccessibilityTraits:*MEMORY[0x1E69DDA18] | *MEMORY[0x1E69DDA38]];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel_importControllerProgressDidChange_ name:*MEMORY[0x1E69C4070] object:0];
  }

  cancelBarButtonItem2 = [(PUImportOneUpViewController *)self cancelBarButtonItem];
  v39[0] = cancelBarButtonItem2;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];

  navigationItem = [(PUImportOneUpViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItems:v36];
  navigationTitleView2 = [(PUImportOneUpViewController *)self navigationTitleView];
  [navigationItem setTitleView:navigationTitleView2];

  [(PUImportOneUpViewController *)self updateToolbarItems];
  [(PUImportOneUpViewController *)self updateNavigationItemTitle];
}

- (int64_t)_titleViewVerticalSizeClassForExtendedTraitCollection:(id)collection
{
  collectionCopy = collection;
  v4 = [collectionCopy layoutSizeClass] == 1 && objc_msgSend(collectionCopy, "layoutOrientation") == 2;

  return v4;
}

- (void)updateNavigationItemTitle
{
  collectionView = [(PUImportOneUpViewController *)self collectionView];
  v4 = [(PUImportOneUpViewController *)self indexPathOfCenterVisibleItemInCollectionView:collectionView];

  importController = [(PUImportOneUpViewController *)self importController];
  selectedItems = [importController selectedItems];

  importController2 = [(PUImportOneUpViewController *)self importController];
  isImportingAssets = [importController2 isImportingAssets];

  importController3 = [(PUImportOneUpViewController *)self importController];
  isDeletingAssets = [importController3 isDeletingAssets];

  mEMORY[0x1E69C3620] = [MEMORY[0x1E69C3620] sharedInstance];
  showProgressTitles = [mEMORY[0x1E69C3620] showProgressTitles];

  if (![selectedItems count] || ((isImportingAssets | isDeletingAssets) & showProgressTitles & 1) != 0)
  {
    v13 = PLLocalizedFrameworkString();
  }

  else
  {
    v13 = PXLocalizedSelectionMessageForAssets();
  }

  v14 = v13;
  if (v4)
  {
    v15 = [(PUImportOneUpViewController *)self assetAtIndexPath:v4];
    creationDate = [v15 creationDate];
    if (creationDate)
    {
      dayFormatter = [(PUImportOneUpViewController *)self dayFormatter];
      v18 = [dayFormatter stringFromDate:creationDate];

      timeFormatter = [(PUImportOneUpViewController *)self timeFormatter];
      v20 = [timeFormatter stringFromDate:creationDate];
    }

    else
    {
      v20 = &stru_1F2AC6818;
      v18 = &stru_1F2AC6818;
    }

    if ([(__CFString *)v18 length])
    {
      if ([(__CFString *)v20 length])
      {
        v22 = PULocalizedString(@"PUPHOTOBROWSER_TITLE_LONG_DATE_FORMAT");
        v34 = v18;
        v35 = v20;
        v21 = PUStringWithValidatedFormat();

LABEL_16:
        goto LABEL_17;
      }

      v23 = v18;
    }

    else
    {
      v23 = v20;
    }

    v21 = v23;
    goto LABEL_16;
  }

  v21 = 0;
LABEL_17:
  v24 = [(PUImportOneUpViewController *)self navigationTitleView:v34];
  px_extendedTraitCollection = [(PUImportOneUpViewController *)self px_extendedTraitCollection];
  v26 = [(PUImportOneUpViewController *)self _titleViewVerticalSizeClassForExtendedTraitCollection:px_extendedTraitCollection];
  v27 = [MEMORY[0x1E69DB878] defaultFontForTextStyle:*MEMORY[0x1E69DDD10]];
  v28 = MEMORY[0x1E69DB878];
  [v27 pointSize];
  v29 = [v28 monospacedDigitSystemFontOfSize:? weight:?];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __56__PUImportOneUpViewController_updateNavigationItemTitle__block_invoke;
  v36[3] = &unk_1E7B77908;
  v37 = v24;
  v38 = v14;
  v40 = v29;
  v41 = v26;
  v39 = v21;
  v30 = v29;
  v31 = v21;
  v32 = v14;
  v33 = v24;
  [v33 performChanges:v36];
}

uint64_t __56__PUImportOneUpViewController_updateNavigationItemTitle__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setTitle:*(a1 + 40)];
  [*(a1 + 32) setSubtitle:*(a1 + 48)];
  [*(a1 + 32) setVerticalSizeClass:*(a1 + 64)];
  v2 = [MEMORY[0x1E69DB878] defaultFontForTextStyle:*MEMORY[0x1E69DDD40]];
  [*(a1 + 32) setTitleFont:v2];

  v3 = *(a1 + 56);
  v4 = *(a1 + 32);

  return [v4 setSubtitleFont:v3];
}

- (void)updateToolbarItems
{
  v39 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  importController = [(PUImportOneUpViewController *)self importController];
  selectedItems = [importController selectedItems];

  importController2 = [(PUImportOneUpViewController *)self importController];
  isImportingAssets = [importController2 isImportingAssets];

  if (isImportingAssets)
  {
    stopImportBarButtonItem = [(PUImportOneUpViewController *)self stopImportBarButtonItem];
    [v39 addObject:stopImportBarButtonItem];
  }

  else
  {
    importDataSource = [(PUImportOneUpViewController *)self importDataSource];
    numberOfSelectableItems = [importDataSource numberOfSelectableItems];

    if (!numberOfSelectableItems)
    {
      goto LABEL_6;
    }

    importBarButtonItem = [(PUImportOneUpViewController *)self importBarButtonItem];
    [v39 addObject:importBarButtonItem];

    stopImportBarButtonItem = [(PUImportOneUpViewController *)self actionCoordinator];
    importBarButtonItem2 = [(PUImportOneUpViewController *)self importBarButtonItem];
    [stopImportBarButtonItem configureImportActionsForBarButtonItem:importBarButtonItem2];
  }

LABEL_6:
  [selectedItems count];
  v13 = PLLocalizedFrameworkString();
  deleteBarButtonItem = [(PUImportOneUpViewController *)self deleteBarButtonItem];
  [deleteBarButtonItem setAccessibilityLabel:v13];

  importController3 = [(PUImportOneUpViewController *)self importController];
  importSource = [importController3 importSource];
  canDeleteContent = [importSource canDeleteContent];

  if (canDeleteContent)
  {
    traitCollection = [(PUImportOneUpViewController *)self traitCollection];
    horizontalSizeClass = [traitCollection horizontalSizeClass];

    deleteBarButtonItem2 = [(PUImportOneUpViewController *)self deleteBarButtonItem];
    v21 = v39;
    if (horizontalSizeClass == 1)
    {
      v21 = v3;
    }

    [v21 addObject:deleteBarButtonItem2];
  }

  importController4 = [(PUImportOneUpViewController *)self importController];
  if ([importController4 isImportingAssets])
  {
  }

  else
  {
    importController5 = [(PUImportOneUpViewController *)self importController];
    isDeletingAssets = [importController5 isDeletingAssets];

    if (!isDeletingAssets)
    {
      goto LABEL_14;
    }
  }

  progressButtonItem = [(PUImportOneUpViewController *)self progressButtonItem];
  [v39 addObject:progressButtonItem];

LABEL_14:
  importController6 = [(PUImportOneUpViewController *)self importController];
  if ([importController6 hasLoadedInitialBatchOfAssets])
  {
    importController7 = [(PUImportOneUpViewController *)self importController];
    if ([importController7 isLoadingInitialBatchOfAssets])
    {
      v28 = 0;
    }

    else
    {
      importController8 = [(PUImportOneUpViewController *)self importController];
      if ([importController8 isImportingAssets])
      {
        v28 = 0;
      }

      else
      {
        importController9 = [(PUImportOneUpViewController *)self importController];
        v28 = [importController9 isDeletingAssets] ^ 1;
      }
    }
  }

  else
  {
    v28 = 0;
  }

  importBarButtonItem3 = [(PUImportOneUpViewController *)self importBarButtonItem];
  [importBarButtonItem3 setEnabled:v28];

  deleteBarButtonItem3 = [(PUImportOneUpViewController *)self deleteBarButtonItem];
  [deleteBarButtonItem3 setEnabled:v28];

  navigationItem = [(PUImportOneUpViewController *)self navigationItem];
  [navigationItem setRightBarButtonItems:v39];

  toolbarItems = [(PUImportOneUpViewController *)self toolbarItems];
  if ([v3 count])
  {
    bottomSpacerBarButtonItem = [(PUImportOneUpViewController *)self bottomSpacerBarButtonItem];

    if (!bottomSpacerBarButtonItem)
    {
      v36 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
      bottomSpacerBarButtonItem = self->_bottomSpacerBarButtonItem;
      self->_bottomSpacerBarButtonItem = v36;
    }

    bottomSpacerBarButtonItem2 = [(PUImportOneUpViewController *)self bottomSpacerBarButtonItem];
    [v3 insertObject:bottomSpacerBarButtonItem2 atIndex:0];
  }

  if (([toolbarItems isEqualToArray:v3] & 1) == 0)
  {
    [(PUImportOneUpViewController *)self setToolbarItems:v3];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v29.receiver = self;
  v29.super_class = PUImportOneUpViewController;
  coordinatorCopy = coordinator;
  [(PUImportOneUpViewController *)&v29 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  collectionView = [(PUImportOneUpViewController *)self collectionView];
  v9 = [(PUImportOneUpViewController *)self indexPathOfCenterVisibleItemInCollectionView:collectionView];

  inFlightReferenceIndexPath = self->_inFlightReferenceIndexPath;
  self->_inFlightReferenceIndexPath = v9;
  v11 = v9;

  collectionViewLayout = [(PUImportOneUpViewController *)self collectionViewLayout];
  [collectionViewLayout setLayoutReferenceSize:{width, height}];

  [(PUImportOneUpViewController *)self updateCollectionViewLayoutInsets];
  collectionView2 = [(PUImportOneUpViewController *)self collectionView];
  [collectionView2 _contentScrollInset];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  collectionView3 = [(PUImportOneUpViewController *)self collectionView];
  [collectionView3 contentSize];
  v24 = v21 + v23;

  collectionView4 = [(PUImportOneUpViewController *)self collectionView];
  [collectionView4 _setContentScrollInset:{v15, v17, v19, v24}];

  inFlightReferenceIndexPath = [(PUImportOneUpViewController *)self inFlightReferenceIndexPath];
  [(PUImportOneUpViewController *)self pageToIndexPath:inFlightReferenceIndexPath animated:0];

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __82__PUImportOneUpViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v28[3] = &unk_1E7B7DC38;
  v28[4] = self;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __82__PUImportOneUpViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v27[3] = &unk_1E7B778E0;
  v27[4] = self;
  *&v27[5] = v15;
  *&v27[6] = v17;
  *&v27[7] = v19;
  *&v27[8] = v21;
  [coordinatorCopy animateAlongsideTransition:v28 completion:v27];
}

void __82__PUImportOneUpViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) inFlightReferenceIndexPath];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v4 inFlightReferenceIndexPath];
    [v4 pageToIndexPath:v5 animated:{objc_msgSend(v8, "isAnimated")}];

    v6 = *(a1 + 32);
    v7 = *(v6 + 1200);
    *(v6 + 1200) = 0;
  }
}

void __82__PUImportOneUpViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = [*(a1 + 32) collectionView];
  [v6 _setContentScrollInset:{v2, v3, v4, v5}];

  v7 = *MEMORY[0x1E695F060];
  v8 = *(MEMORY[0x1E695F060] + 8);
  v9 = [*(a1 + 32) collectionViewLayout];
  [v9 setLayoutReferenceSize:{v7, v8}];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = PUImportOneUpViewController;
  [(PUImportOneUpViewController *)&v4 traitCollectionDidChange:change];
  [(PUImportOneUpViewController *)self updateToolbarItems];
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  v4.receiver = self;
  v4.super_class = PUImportOneUpViewController;
  [(PUImportOneUpViewController *)&v4 willTransitionToTraitCollection:collection withTransitionCoordinator:coordinator];
}

- (BOOL)pu_wantsToolbarVisible
{
  mEMORY[0x1E69C3620] = [MEMORY[0x1E69C3620] sharedInstance];
  hide1UpToolbarAndMarginsForCollapsedAlreadyImportedItem = [mEMORY[0x1E69C3620] hide1UpToolbarAndMarginsForCollapsedAlreadyImportedItem];

  return !hide1UpToolbarAndMarginsForCollapsedAlreadyImportedItem || [(PUImportOneUpViewController *)self presentationFilter]!= 3;
}

- (void)viewWillLayoutSubviews
{
  v11.receiver = self;
  v11.super_class = PUImportOneUpViewController;
  [(PUImportOneUpViewController *)&v11 viewWillLayoutSubviews];
  [(PUImportOneUpViewController *)self updateCollectionViewLayoutInsets];
  if (![(PUImportOneUpViewController *)self hasPerformedNavigationToStartingAsset])
  {
    [(PUImportOneUpViewController *)self setHasPerformedNavigationToStartingAsset:1];
    v9 = 0u;
    v10 = 0u;
    importDataSource = [(PUImportOneUpViewController *)self importDataSource];
    startingAssetReference = [(PUImportOneUpViewController *)self startingAssetReference];
    asset = [startingAssetReference asset];
    if (importDataSource)
    {
      [importDataSource itemIndexPathForItem:asset];
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    if (v9 != *MEMORY[0x1E69C4880])
    {
      v6 = PXIndexPathFromSimpleIndexPath();
      v7 = [(PUImportOneUpViewController *)self reviewScrubber:v9];
      [v7 setSelectedIndexPath:v6];

      [(PUImportOneUpViewController *)self pageToIndexPath:v6 animated:0];
      reviewScrubber = [(PUImportOneUpViewController *)self reviewScrubber];
      [reviewScrubber reloadData];
    }
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PUImportOneUpViewController;
  [(PUImportOneUpViewController *)&v4 viewWillDisappear:disappear];
  [(PUImportOneUpViewController *)self _cancelAlerts];
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = PUImportOneUpViewController;
  [(PUImportOneUpViewController *)&v3 viewDidAppear:appear];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = PUImportOneUpViewController;
  [(PUImportOneUpViewController *)&v6 viewWillAppear:?];
  [(UIViewController *)self pu_setupInitialBarsVisibilityOnViewWillAppearAnimated:appearCopy];
  [(PUImportOneUpViewController *)self beginCenterPrioritizedThumbnailLoading];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__PUImportOneUpViewController_viewWillAppear___block_invoke;
  block[3] = &unk_1E7B80DD0;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)viewDidLoad
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = PUImportOneUpViewController;
  [(PUImportOneUpViewController *)&v8 viewDidLoad];
  [(PUImportOneUpViewController *)self _updateMainView];
  [(PUImportOneUpViewController *)self _updateBarItemsAnimated:0];
  [(PUImportOneUpViewController *)self _invalidateReviewScrubberHeight];
  [(PUImportOneUpViewController *)self _updateReviewScrubberHeightIfNeeded];
  objc_initWeak(&location, self);
  v9[0] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__PUImportOneUpViewController_viewDidLoad__block_invoke;
  v5[3] = &unk_1E7B79E70;
  objc_copyWeak(&v6, &location);
  v4 = [(PUImportOneUpViewController *)self registerForTraitChanges:v3 withHandler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __42__PUImportOneUpViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateReviewScrubberHeight];
}

- (void)updateVisibleCellBadgesAndSelectability
{
  collectionView = [(PUImportOneUpViewController *)self collectionView];
  v4 = [collectionView indexPathsForVisibleSupplementaryElementsOfKind:@"PUSelectableAssetBadgeKind"];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70__PUImportOneUpViewController_updateVisibleCellBadgesAndSelectability__block_invoke;
  v5[3] = &unk_1E7B778B8;
  v5[4] = self;
  [v4 enumerateObjectsUsingBlock:v5];
}

void __70__PUImportOneUpViewController_updateVisibleCellBadgesAndSelectability__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 importDataSource];
  [v5 identifier];
  PXSimpleIndexPathFromIndexPath();

  v6 = [*(a1 + 32) importDataSource];
  memset(v13, 0, sizeof(v13));
  v7 = [v6 assetAtItemIndexPath:v13];

  v8 = [*(a1 + 32) collectionView];
  v9 = [v8 supplementaryViewForElementKind:@"PUSelectableAssetBadgeKind" atIndexPath:v4];

  if (v7 && v9)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __70__PUImportOneUpViewController_updateVisibleCellBadgesAndSelectability__block_invoke_2;
    v10[3] = &unk_1E7B80C38;
    v11 = v9;
    v12 = v7;
    [v11 performBadgeUpdates:v10];
  }
}

uint64_t __70__PUImportOneUpViewController_updateVisibleCellBadgesAndSelectability__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setBadgeType:{objc_msgSend(*(a1 + 40), "badgeType")}];
  v2 = [*(a1 + 40) isSelectable];
  v3 = *(a1 + 32);

  return [v3 setSelectable:v2];
}

- (void)transitionFromDataSource:(id)source toDataSource:(id)dataSource animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  sourceCopy = source;
  dataSourceCopy = dataSource;
  handlerCopy = handler;
  collectionView = [(PUImportOneUpViewController *)self collectionView];
  v14 = [(PUImportOneUpViewController *)self indexPathOfCenterVisibleItemInCollectionView:collectionView];

  if (v14)
  {
    v15 = [(PUImportOneUpViewController *)self importAssetAtIndexPath:v14];
  }

  else
  {
    v15 = 0;
  }

  if (([(PUImportOneUpViewController *)self isViewLoaded]& 1) != 0)
  {
    importDataSourceManager = [(PUImportOneUpViewController *)self importDataSourceManager];
    changeHistory = [importDataSourceManager changeHistory];

    changeDetailsHelper = [(PUImportOneUpViewController *)self changeDetailsHelper];

    v19 = &unk_1B3D0C000;
    if (!changeDetailsHelper)
    {
      objc_initWeak(&location, self);
      v20 = [PUImportChangeDetailsCollectionViewHelper alloc];
      collectionView2 = [(PUImportOneUpViewController *)self collectionView];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __96__PUImportOneUpViewController_transitionFromDataSource_toDataSource_animated_completionHandler___block_invoke;
      v27[3] = &unk_1E7B78088;
      objc_copyWeak(&v28, &location);
      v22 = [(PUImportChangeDetailsCollectionViewHelper *)v20 initWithCollectionView:collectionView2 dataSourceSettingHandler:v27];
      [(PUImportOneUpViewController *)self setChangeDetailsHelper:v22];

      objc_destroyWeak(&v28);
      objc_destroyWeak(&location);
      v19 = &unk_1B3D0C000;
    }

    changeDetailsHelper2 = [(PUImportOneUpViewController *)self changeDetailsHelper];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = v19[211];
    v24[2] = __96__PUImportOneUpViewController_transitionFromDataSource_toDataSource_animated_completionHandler___block_invoke_2;
    v24[3] = &unk_1E7B77890;
    v24[4] = self;
    v25 = v15;
    v26 = handlerCopy;
    [changeDetailsHelper2 transitionFromDataSource:sourceCopy toDataSource:dataSourceCopy changeHistory:changeHistory animated:animatedCopy completionHandler:v24];
  }

  else
  {
    [(PUImportOneUpViewController *)self setImportDataSource:dataSourceCopy];
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }
}

void __96__PUImportOneUpViewController_transitionFromDataSource_toDataSource_animated_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setImportDataSource:v3];
}

uint64_t __96__PUImportOneUpViewController_transitionFromDataSource_toDataSource_animated_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) reviewScrubber];
  [v4 reloadData];

  [*(a1 + 32) updateVisibleCellBadgesAndSelectability];
  v5 = *(a1 + 40);
  if (v5)
  {
    [*(a1 + 32) pageToItemOrNearestIndexPath:v5 animated:a2];
  }

  [*(a1 + 32) _updateBarItemsAnimated:1];
  result = *(a1 + 48);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

- (void)handleNewDataSource:(id)source
{
  v16 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  importDataSource = [(PUImportOneUpViewController *)self importDataSource];
  identifier = [importDataSource identifier];
  if (identifier != [sourceCopy identifier])
  {
    if ([(PUImportOneUpViewController *)self performingDataSourceChange])
    {
      v7 = _importOneUpLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        identifier2 = [sourceCopy identifier];
        _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "Collection view is performing changes, making pending data source: %ti", buf, 0xCu);
      }

      [(PUImportOneUpViewController *)self setPendingDataSource:sourceCopy];
    }

    else
    {
      if ([(PUImportOneUpViewController *)self px_isVisible])
      {
        importController = [(PUImportOneUpViewController *)self importController];
        isLoadingInitialBatchOfAssets = [importController isLoadingInitialBatchOfAssets];
        if (sourceCopy)
        {
          v10 = importDataSource == 0;
        }

        else
        {
          v10 = 1;
        }

        v11 = !v10;
        if (isLoadingInitialBatchOfAssets)
        {
          v12 = 0;
        }

        else
        {
          v12 = v11;
        }
      }

      else
      {
        v12 = 0;
      }

      [(PUImportOneUpViewController *)self setPerformingDataSourceChange:1];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __51__PUImportOneUpViewController_handleNewDataSource___block_invoke;
      v13[3] = &unk_1E7B80DD0;
      v13[4] = self;
      [(PUImportOneUpViewController *)self transitionFromDataSource:importDataSource toDataSource:sourceCopy animated:v12 completionHandler:v13];
    }
  }
}

void __51__PUImportOneUpViewController_handleNewDataSource___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__PUImportOneUpViewController_handleNewDataSource___block_invoke_2;
  block[3] = &unk_1E7B80DD0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __51__PUImportOneUpViewController_handleNewDataSource___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = _importOneUpLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) importDataSource];
    v8 = 134217984;
    v9 = [v3 identifier];
    _os_log_impl(&dword_1B36F3000, v2, OS_LOG_TYPE_DEFAULT, "Finished transitioning to: %lu", &v8, 0xCu);
  }

  [*(a1 + 32) setPerformingDataSourceChange:0];
  v4 = [*(a1 + 32) pendingDataSource];

  if (v4)
  {
    v5 = [*(a1 + 32) pendingDataSource];
    [*(a1 + 32) setPendingDataSource:0];
    v6 = _importOneUpLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 identifier];
      v8 = 134217984;
      v9 = v7;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "Applying pending data source: %lu", &v8, 0xCu);
    }

    [*(a1 + 32) handleNewDataSource:v5];
  }
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXImportControllerObserverContext == context)
  {
    if ((changeCopy & 2) != 0 || (changeCopy & 4) != 0 || (changeCopy & 0x10) != 0)
    {
      [(PUImportOneUpViewController *)self updateToolbarItems];
    }
  }

  else if (PXImportAssetsDataSourceManagerObserverContext == context)
  {
    if (changeCopy)
    {
      importDataSourceManager = [(PUImportOneUpViewController *)self importDataSourceManager];
      dataSource = [importDataSourceManager dataSource];

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __60__PUImportOneUpViewController_observable_didChange_context___block_invoke;
      v13[3] = &unk_1E7B80C38;
      v14 = dataSource;
      selfCopy = self;
      v11 = dataSource;
      dispatch_async(MEMORY[0x1E69E96A0], v13);
    }
  }

  else if ((changeCopy & 1) != 0 && PUImportSelectionManagerObserverContext == context)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__PUImportOneUpViewController_observable_didChange_context___block_invoke_2;
    block[3] = &unk_1E7B80DD0;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __60__PUImportOneUpViewController_observable_didChange_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) numberOfItems];
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = *(a1 + 32);

    return [v3 handleNewDataSource:v4];
  }

  else
  {

    return [v3 _dismissReviewControllerWithAsset:0];
  }
}

- (void)setImportDataSourceManager:(id)manager
{
  v18[1] = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  importDataSourceManager = self->_importDataSourceManager;
  if (importDataSourceManager != managerCopy)
  {
    [(PXImportAssetsDataSourceManager *)importDataSourceManager unregisterChangeObserver:self context:PXImportAssetsDataSourceManagerObserverContext];
    objc_storeStrong(&self->_importDataSourceManager, manager);
    [(PXImportAssetsDataSourceManager *)self->_importDataSourceManager registerChangeObserver:self context:PXImportAssetsDataSourceManagerObserverContext];
    if ([(PUImportOneUpViewController *)self presentationFilter]== 1)
    {
      [(PXImportAssetsDataSourceManager *)self->_importDataSourceManager setShowAlreadyImportedItems:1];
      v7 = self->_importDataSourceManager;
      v8 = 0;
    }

    else
    {
      if ([(PUImportOneUpViewController *)self presentationFilter]!= 2)
      {
        if ([(PUImportOneUpViewController *)self presentationFilter]== 3)
        {
          [(PXImportAssetsDataSourceManager *)self->_importDataSourceManager setShowAlreadyImportedItems:1];
          [(PXImportAssetsDataSourceManager *)self->_importDataSourceManager setShowNotYetImportedItems:1];
          startingAssetReference = [(PUImportOneUpViewController *)self startingAssetReference];
          asset = [startingAssetReference asset];

          uuid = [asset uuid];
          v15 = MEMORY[0x1E695DFD8];
          v18[0] = uuid;
          v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
          v17 = [v15 setWithArray:v16];
          [(PXImportAssetsDataSourceManager *)self->_importDataSourceManager setVisibleImportAssetIdentifiers:v17];
        }

        goto LABEL_7;
      }

      [(PXImportAssetsDataSourceManager *)self->_importDataSourceManager setShowAlreadyImportedItems:0];
      v7 = self->_importDataSourceManager;
      v8 = 1;
    }

    [(PXImportAssetsDataSourceManager *)v7 setShowNotYetImportedItems:v8];
    [(PXImportAssetsDataSourceManager *)self->_importDataSourceManager setVisibleImportAssetIdentifiers:0];
LABEL_7:
    importDataSourceManager = [(PUImportOneUpViewController *)self importDataSourceManager];
    [importDataSourceManager updateFilteredAssetsIfNeeded];

    importDataSourceManager2 = [(PUImportOneUpViewController *)self importDataSourceManager];
    dataSource = [importDataSourceManager2 dataSource];

    [(PUImportOneUpViewController *)self handleNewDataSource:dataSource];
  }
}

- (void)setImportController:(id)controller
{
  controllerCopy = controller;
  importController = self->_importController;
  if (importController != controllerCopy)
  {
    v9 = controllerCopy;
    selectionManager = [(PXImportController *)importController selectionManager];
    [selectionManager unregisterChangeObserver:self context:PUImportSelectionManagerObserverContext];

    [(PXImportController *)self->_importController unregisterChangeObserver:self context:PXImportControllerObserverContext];
    objc_storeStrong(&self->_importController, controller);
    [(PXImportController *)self->_importController registerChangeObserver:self context:PXImportControllerObserverContext];
    selectionManager2 = [(PXImportController *)self->_importController selectionManager];
    [selectionManager2 registerChangeObserver:self context:PUImportSelectionManagerObserverContext];

    controllerCopy = v9;
  }

  MEMORY[0x1EEE66BB8](importController, controllerCopy);
}

- (void)_cancelAlerts
{
  presentedViewController = [(PUImportOneUpViewController *)self presentedViewController];

  if (presentedViewController)
  {
    presentedViewController2 = [(PUImportOneUpViewController *)self presentedViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    [(PUImportOneUpViewController *)self dismissViewControllerAnimated:isKindOfClass & 1 completion:0];
  }
}

- (void)dealloc
{
  relayoutCoalescer = [(PUImportOneUpViewController *)self relayoutCoalescer];
  [relayoutCoalescer reset];

  [(PUImportOneUpViewController *)self setRelayoutCoalescer:0];
  [(PUImportOneUpViewController *)self _cancelAlerts];
  importController = [(PUImportOneUpViewController *)self importController];
  importDataSourceManager = [(PUImportOneUpViewController *)self importDataSourceManager];
  [importController removeDataSourceManager:importDataSourceManager];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  tapGestureRecognizer = [(PUImportOneUpViewController *)self tapGestureRecognizer];
  [tapGestureRecognizer setDelegate:0];

  v8.receiver = self;
  v8.super_class = PUImportOneUpViewController;
  [(PUImportOneUpViewController *)&v8 dealloc];
}

- (PUImportOneUpViewController)initWithImportController:(id)controller mediaProvider:(id)provider startingAssetReference:(id)reference presentationFilter:(unint64_t)filter
{
  controllerCopy = controller;
  providerCopy = provider;
  referenceCopy = reference;
  v33.receiver = self;
  v33.super_class = PUImportOneUpViewController;
  v13 = [(PUImportOneUpViewController *)&v33 initWithNibName:0 bundle:0];
  if (v13)
  {
    mEMORY[0x1E69C3620] = [MEMORY[0x1E69C3620] sharedInstance];
    hide1UpToolbarAndMarginsForCollapsedAlreadyImportedItem = [mEMORY[0x1E69C3620] hide1UpToolbarAndMarginsForCollapsedAlreadyImportedItem];

    if (filter == 3)
    {
      v16 = hide1UpToolbarAndMarginsForCollapsedAlreadyImportedItem;
    }

    else
    {
      v16 = 0;
    }

    v17 = [[PUImportOneUpViewControllerSpecManager alloc] initWithExtendedTraitCollection:0 options:0 style:v16];
    specManager = v13->_specManager;
    v13->_specManager = v17;

    objc_storeStrong(&v13->_mediaProvider, provider);
    objc_storeStrong(&v13->_startingAssetReference, reference);
    v13->_presentationFilter = filter;
    v19 = [MEMORY[0x1E69BE3B8] autoupdatingFormatterWithPreset:2];
    dayFormatter = v13->_dayFormatter;
    v13->_dayFormatter = v19;

    v21 = [MEMORY[0x1E69BE3B8] autoupdatingFormatterWithPreset:7];
    timeFormatter = v13->_timeFormatter;
    v13->_timeFormatter = v21;

    v13->_allowsSelection = 1;
    [(PUImportOneUpViewController *)v13 setImportController:controllerCopy];
    v23 = [controllerCopy createDataSourceManagerWithLogIdentifier:@"1up"];
    [(PUImportOneUpViewController *)v13 setImportDataSourceManager:v23];

    v24 = [[PUImportActionCoordinator alloc] initWithViewController:v13 importController:v13->_importController loggingSource:1];
    actionCoordinator = v13->_actionCoordinator;
    v13->_actionCoordinator = v24;

    actionCoordinator = [(PUImportOneUpViewController *)v13 actionCoordinator];
    [actionCoordinator setDelegate:v13];

    actionCoordinator2 = [(PUImportOneUpViewController *)v13 actionCoordinator];
    [actionCoordinator2 setPresentsAdditionalDeleteAllConfirmation:1];

    v28 = [MEMORY[0x1E69BDD68] coalescerWithLabel:@"Import 1-up re-layout coalescer" target:v13 queue:MEMORY[0x1E69E96A0] action:&__block_literal_global_31539];
    relayoutCoalescer = v13->_relayoutCoalescer;
    v13->_relayoutCoalescer = v28;

    array = [MEMORY[0x1E695DF70] array];
    itemsNeedingRelayout = v13->_itemsNeedingRelayout;
    v13->_itemsNeedingRelayout = array;
  }

  return v13;
}

void __112__PUImportOneUpViewController_initWithImportController_mediaProvider_startingAssetReference_presentationFilter___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  [a3 delayNextInvocationByTimeInterval:0.5];
  [v4 relayoutCollectionView];
}

@end