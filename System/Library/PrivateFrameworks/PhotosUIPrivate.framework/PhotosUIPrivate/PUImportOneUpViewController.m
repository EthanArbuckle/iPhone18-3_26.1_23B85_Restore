@interface PUImportOneUpViewController
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)pu_wantsToolbarVisible;
- (CGRect)imageRectFromPhotoView:(id)a3;
- (CGRect)layout:(id)a3 collectionView:(id)a4 selectionBadgeFrameForItemFrame:(CGRect)a5 atIndexPath:(id)a6;
- (CGRect)selectionBadgeFrameForItemFrame:(CGRect)a3 atIndexPath:(id)a4;
- (CGSize)layout:(id)a3 collectionView:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (CGSize)sizeForItemAtIndexPath:(id)a3;
- (PUImportOneUpViewController)initWithImportController:(id)a3 mediaProvider:(id)a4 startingAssetReference:(id)a5 presentationFilter:(unint64_t)a6;
- (double)_horizontalOffsetInCollectionView:(id)a3 forCenteringOnItemAtIndexPath:(id)a4;
- (double)absoluteProgressFromCurrentContentOffset;
- (id)_currentAsset;
- (id)_indexPathInCollectionView:(id)a3 closestToPoint:(CGPoint)a4 excludingIndexPath:(id)a5;
- (id)assetAtIndexPath:(id)a3;
- (id)badgeViewAtIndexPath:(id)a3 forCollectionView:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)importAssetAtIndexPath:(id)a3;
- (id)importDestinationForActionCoordinator:(id)a3;
- (id)indexPathOfCenterVisibleItemInCollectionView:(id)a3;
- (id)nextIndexPath:(id)a3;
- (id)previousIndexPath:(id)a3;
- (int64_t)_titleViewVerticalSizeClassForExtendedTraitCollection:(id)a3;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)importOneUpCell:(id)a3 requestedThumbnailForImportItem:(id)a4 completion:(id)a5;
- (int64_t)importOneUpScrubberCell:(id)a3 requestedThumbnailForImportItem:(id)a4 completion:(id)a5;
- (int64_t)nextSectionWithItems:(int64_t)a3;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (int64_t)previousSectionWithItems:(int64_t)a3;
- (unint64_t)numberOfSectionsInReviewScrubber:(id)a3;
- (unint64_t)reviewScrubber:(id)a3 numberOfItemsInSection:(unint64_t)a4;
- (unsigned)reviewScrubberImageFormat;
- (void)_cancelAlerts;
- (void)_cancelOneUpView;
- (void)_deleteAction:(id)a3;
- (void)_handleTapAtIndexPath:(id)a3;
- (void)_handleTapInMainCollectionView:(id)a3;
- (void)_importControllerDidEndAction;
- (void)_reallyToggleCurrentPickStatusAtIndexPath:(id)a3;
- (void)_stopImportAction:(id)a3;
- (void)_toggleCurrentPickStatusAtIndexPath:(id)a3;
- (void)_updateBarItemsAnimated:(BOOL)a3;
- (void)_updateMainView;
- (void)_updateReviewScrubberFromContentOffset;
- (void)_updateReviewScrubberHeightIfNeeded;
- (void)actionCoordinatorDidBeginDelete:(id)a3;
- (void)actionCoordinatorDidBeginImport:(id)a3;
- (void)beginCenterPrioritizedThumbnailLoading;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)dealloc;
- (void)deleteItems:(id)a3;
- (void)getFirstValidIndexPath:(id *)a3 lastValidIndexPath:(id *)a4;
- (void)getMainCollectionViewFrame:(CGRect *)a3 collectionViewLayoutInsets:(UIEdgeInsets *)a4;
- (void)handleNewDataSource:(id)a3;
- (void)importControllerProgressDidChange:(id)a3;
- (void)importOneUpCell:(id)a3 didRequestCancellationOfThumbnailRequestWithID:(int64_t)a4;
- (void)importOneUpCell:(id)a3 requestedBadgeUpdateForImportItem:(id)a4;
- (void)importOneUpScrubberCell:(id)a3 didRequestCancellationOfThumbnailRequestWithID:(int64_t)a4;
- (void)invalidateLayoutIfNeededForImportItem:(id)a3;
- (void)loadCenterPrioritizedVisibleThumbnails;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)pageToIndexPath:(id)a3 animated:(BOOL)a4;
- (void)pageToItemOrNearestIndexPath:(id)a3 animated:(BOOL)a4;
- (void)relayoutCollectionView;
- (void)reviewScrubber:(id)a3 willDisplayCell:(id)a4 atIndexPath:(id)a5;
- (void)reviewScrubberDidScrub:(id)a3;
- (void)reviewScrubberDidSelectItemAtIndexPath:(id)a3;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setImportController:(id)a3;
- (void)setImportDataSourceManager:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)transitionFromDataSource:(id)a3 toDataSource:(id)a4 animated:(BOOL)a5 completionHandler:(id)a6;
- (void)updateCollectionViewLayoutInsets;
- (void)updateNavigationItemTitle;
- (void)updateToolbarItems;
- (void)updateVisibleCellBadgesAndSelectability;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PUImportOneUpViewController

- (id)nextIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PUImportOneUpViewController *)self importDataSource];
  v6 = [v4 item];
  if (v6 < [v5 numberOfItemsInSection:{objc_msgSend(v4, "section")}] - 1)
  {
    v7 = MEMORY[0x1E696AC88];
    v8 = [v4 item];
    v9 = [v4 section];
    v10 = v8 + 1;
    v11 = v7;
LABEL_5:
    v13 = [v11 indexPathForItem:v10 inSection:v9];
    goto LABEL_6;
  }

  v12 = -[PUImportOneUpViewController nextSectionWithItems:](self, "nextSectionWithItems:", [v4 section]);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v9 = v12;
    v11 = MEMORY[0x1E696AC88];
    v10 = 0;
    goto LABEL_5;
  }

  v13 = 0;
LABEL_6:

  return v13;
}

- (id)previousIndexPath:(id)a3
{
  v4 = a3;
  if ([v4 item] < 1)
  {
    v6 = -[PUImportOneUpViewController previousSectionWithItems:](self, "previousSectionWithItems:", [v4 section]);
    if (v6 < 0)
    {
      v5 = 0;
    }

    else
    {
      v7 = v6;
      v8 = [(PUImportOneUpViewController *)self importDataSource];
      v5 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(v8 inSection:{"numberOfItemsInSection:", v7) - 1, v7}];
    }
  }

  else
  {
    v5 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(v4 inSection:{"item") - 1, objc_msgSend(v4, "section")}];
  }

  return v5;
}

- (int64_t)nextSectionWithItems:(int64_t)a3
{
  v4 = [(PUImportOneUpViewController *)self importDataSource];
  v5 = [v4 numberOfSections];
  while (++a3 < v5)
  {
    if ([v4 numberOfItemsInSection:a3])
    {
      goto LABEL_6;
    }
  }

  a3 = -1;
LABEL_6:

  return a3;
}

- (int64_t)previousSectionWithItems:(int64_t)a3
{
  v4 = [(PUImportOneUpViewController *)self importDataSource];
  while (a3-- >= 1)
  {
    if ([v4 numberOfItemsInSection:a3])
    {
      goto LABEL_6;
    }
  }

  a3 = -1;
LABEL_6:

  return a3;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PUImportOneUpViewController *)self collectionView];
  v9 = [(PUImportOneUpViewController *)self tapGestureRecognizer];

  if (v9 == v7)
  {
    v11 = [v8 panGestureRecognizer];
    if (v11 == v6)
    {
      v10 = [v8 isDecelerating];
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

  return v10;
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

- (unint64_t)reviewScrubber:(id)a3 numberOfItemsInSection:(unint64_t)a4
{
  v5 = [(PUImportOneUpViewController *)self importDataSource];
  v6 = [v5 numberOfItemsInSection:a4];

  return v6;
}

- (unint64_t)numberOfSectionsInReviewScrubber:(id)a3
{
  v3 = [(PUImportOneUpViewController *)self importDataSource];
  v4 = [v3 numberOfSections];

  return v4;
}

- (void)reviewScrubberDidSelectItemAtIndexPath:(id)a3
{
  v5 = a3;
  v4 = [(PUImportOneUpViewController *)self collectionView];
  [v4 stopScrollingAndZooming];

  [(PUImportOneUpViewController *)self pageToIndexPath:v5 animated:1];
}

- (void)reviewScrubberDidScrub:(id)a3
{
  v4 = a3;
  v5 = [(PUImportOneUpViewController *)self collectionView];
  [v5 stopScrollingAndZooming];

  self->_updatingContentOffsetFromScrubbing = 1;
  v6 = [v4 selectedIndexPath];

  [(PUImportOneUpViewController *)self pageToIndexPath:v6 animated:0];
  self->_updatingContentOffsetFromScrubbing = 0;
}

- (void)reviewScrubber:(id)a3 willDisplayCell:(id)a4 atIndexPath:(id)a5
{
  v7 = a4;
  v8 = [(PUImportOneUpViewController *)self importAssetAtIndexPath:a5];
  v9 = v7;
  [v9 setDisplayDelegate:self];
  [v9 setImportItem:v8];
  [v9 refreshThumbnail];
}

- (void)importOneUpScrubberCell:(id)a3 didRequestCancellationOfThumbnailRequestWithID:(int64_t)a4
{
  v6 = [(PUImportOneUpViewController *)self importController];
  v5 = [v6 importMediaProvider];
  [v5 cancelImageRequest:a4];
}

- (int64_t)importOneUpScrubberCell:(id)a3 requestedThumbnailForImportItem:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = [a3 importItem];
  v9 = [(PUImportOneUpViewController *)self importController];
  v10 = [v9 importMediaProvider];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __98__PUImportOneUpViewController_importOneUpScrubberCell_requestedThumbnailForImportItem_completion___block_invoke;
  v14[3] = &unk_1E7B780D8;
  v15 = v7;
  v11 = v7;
  v12 = [v10 requestImageForImportItem:v8 ofSize:0 completion:v14];

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
  v3 = [(PUImportOneUpViewController *)self collectionView];
  if ([v3 isDecelerating])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(PUImportOneUpViewController *)self collectionView];
    v6 = [v5 isDragging];

    if (v6)
    {
      v4 = 0;
      goto LABEL_7;
    }

    v3 = [(PUImportOneUpViewController *)self collectionView];
    v4 = [(PUImportOneUpViewController *)self indexPathOfCenterVisibleItemInCollectionView:v3];
  }

LABEL_7:
  v7 = [(PUImportOneUpViewController *)self importDataSource];
  v8 = [(PUImportOneUpViewController *)self importDataSource];
  if (v7)
  {
    [v7 firstItemIndexPath];
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v9 = [v8 assetAtItemIndexPath:&v24];

  v10 = [(PUImportOneUpViewController *)self importDataSource];
  if (v7)
  {
    [v7 lastItemIndexPath];
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v11 = [v10 assetAtItemIndexPath:&v24];

  v12 = [(PUImportOneUpViewController *)self itemsNeedingRelayout];
  if ([v12 containsObject:v9])
  {
  }

  else
  {
    v13 = [(PUImportOneUpViewController *)self itemsNeedingRelayout];
    v14 = [v13 containsObject:v11];

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
    v16 = [(PUImportOneUpViewController *)self collectionView];
    [v16 contentOffset];
    v18 = v17;

    v19 = [(PUImportOneUpViewController *)self collectionView];
    [(PUImportOneUpViewController *)self _horizontalOffsetInCollectionView:v19 forCenteringOnItemAtIndexPath:v4];
    v21 = v20;

    v22 = [(PUImportOneUpViewController *)self collectionView];
    [v22 setContentOffset:{v21, v18}];
  }

  v23 = [(PUImportOneUpViewController *)self itemsNeedingRelayout];
  [v23 removeAllObjects];
}

- (void)invalidateLayoutIfNeededForImportItem:(id)a3
{
  v29 = a3;
  v4 = [MEMORY[0x1E69C3620] sharedInstance];
  v5 = [v4 useThumbnailSizesAsImageSizeHints];

  v6 = [(PUImportOneUpViewController *)self itemsWithInvalidImageSizes];
  v7 = [v6 member:v29];

  v8 = v29;
  if (v7 && v5)
  {
    v9 = [v29 importAsset];
    [v9 orientedPixelSize];
    v11 = v10;
    v13 = v12;

    [v29 thumbnailSize];
    v15 = v14;
    v17 = v16;
    [v29 largeThumbnailSize];
    v19 = *MEMORY[0x1E695F060];
    v20 = *(MEMORY[0x1E695F060] + 8);
    if (v21 != *MEMORY[0x1E695F060] || v18 != v20)
    {
      [v29 largeThumbnailSize];
      v15 = v23;
      v17 = v24;
    }

    v25 = v11 == v19 && v13 == v20;
    v8 = v29;
    if (v25 && (v15 != v19 || v17 != v20))
    {
      v27 = [(PUImportOneUpViewController *)self itemsNeedingRelayout];
      [v27 addObject:v29];

      v28 = [(PUImportOneUpViewController *)self collectionViewLayout];
      [v28 invalidateLayout];

      v8 = v29;
    }
  }
}

- (void)importOneUpCell:(id)a3 didRequestCancellationOfThumbnailRequestWithID:(int64_t)a4
{
  v6 = [(PUImportOneUpViewController *)self importController];
  v5 = [v6 importMediaProvider];
  [v5 cancelImageRequest:a4];
}

- (int64_t)importOneUpCell:(id)a3 requestedThumbnailForImportItem:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (-[PUImportOneUpViewController loadLargeThumbnailsInCustomOrder](self, "loadLargeThumbnailsInCustomOrder") && (-[PUImportOneUpViewController thumbnailLoadableItemWhitelist](self, "thumbnailLoadableItemWhitelist"), v11 = objc_claimAutoreleasedReturnValue(), [v11 member:v9], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, !v12))
  {
    (*(v10 + 2))(v10, 0, 0);
  }

  else
  {
    objc_initWeak(&location, self);
    v13 = [(PUImportOneUpViewController *)self importController];
    v14 = [v13 importMediaProvider];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __90__PUImportOneUpViewController_importOneUpCell_requestedThumbnailForImportItem_completion___block_invoke;
    v16[3] = &unk_1E7B77950;
    v18 = v10;
    objc_copyWeak(&v19, &location);
    v17 = v9;
    v12 = [v14 requestImageForImportItem:v17 ofSize:3 priority:1 completion:v16];

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

- (void)importOneUpCell:(id)a3 requestedBadgeUpdateForImportItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v7 isDeleted] & 1) == 0)
  {
    v8 = [(PUImportOneUpViewController *)self collectionView];
    v9 = [v8 indexPathForCell:v6];

    if (v9)
    {
      v10 = [(PUImportOneUpViewController *)self collectionView];
      v11 = [v10 supplementaryViewForElementKind:@"PUSelectableAssetBadgeKind" atIndexPath:v9];

      if (v11)
      {
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __81__PUImportOneUpViewController_importOneUpCell_requestedBadgeUpdateForImportItem___block_invoke;
        v12[3] = &unk_1E7B80C38;
        v13 = v11;
        v14 = v7;
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

- (CGRect)layout:(id)a3 collectionView:(id)a4 selectionBadgeFrameForItemFrame:(CGRect)a5 atIndexPath:(id)a6
{
  [(PUImportOneUpViewController *)self selectionBadgeFrameForItemFrame:a6 atIndexPath:a4, a5.origin.x, a5.origin.y, a5.size.width, a5.size.height];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGSize)layout:(id)a3 collectionView:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  [(PUImportOneUpViewController *)self sizeForItemAtIndexPath:a5, a4];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = v7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [MEMORY[0x1E69C3620] sharedInstance];
    v11 = [v10 showImportItemFilenames];

    if (v11)
    {
      v12 = [(PUImportOneUpViewController *)self importDataSource];
      [v12 identifier];
      PXSimpleIndexPathFromIndexPath();

      v13 = [(PUImportOneUpViewController *)self importDataSource];
      memset(v18, 0, sizeof(v18));
      v14 = [v13 assetAtItemIndexPath:v18];

      v15 = MEMORY[0x1E696AEC0];
      v16 = [v14 debugDisplayName];
      v17 = [v15 stringWithFormat:@"%@ [%lu]", v16, objc_msgSend(v8, "item")];
      [v9 updateDebugLabel:v17];
    }

    else
    {
      [v9 updateDebugLabel:0];
    }
  }
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (![v10 isEqualToString:@"PUSelectableAssetBadgeKind"])
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PUImportOneUpViewController.m" lineNumber:1527 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v12 = [(PUImportOneUpViewController *)self badgeViewAtIndexPath:v11 forCollectionView:v9];

  return v12;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithReuseIdentifier:@"PUImportOneUpCellIdentifier" forIndexPath:v6];
  [v7 setDisplayDelegate:self];
  v8 = [(PUImportOneUpViewController *)self importAssetAtIndexPath:v6];

  [v7 setImportItem:v8];
  [v7 setSelected:{objc_msgSend(v8, "isSelected")}];
  [v7 refreshThumbnail];

  return v7;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v5 = [(PUImportOneUpViewController *)self importDataSource];
  v6 = [v5 numberOfItemsInSection:a4];

  return v6;
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  v3 = [(PUImportOneUpViewController *)self importDataSource];
  v4 = [v3 numberOfSections];

  return v4;
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  x = a4.x;
  v35 = *MEMORY[0x1E69E9840];
  v8 = a3;
  [v8 bounds];
  width = v36.size.width;
  height = v36.size.height;
  v11 = a5->x;
  y = a5->y;
  v36.origin.x = a5->x;
  v36.origin.y = y;
  MidX = CGRectGetMidX(v36);
  v14 = [v8 collectionViewLayout];
  v15 = [v14 layoutAttributesForElementsInRect:{v11, y, width, height}];

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
        v24 = [v23 indexPath];
        if (![v23 representedElementCategory])
        {
          if (([(PUImportOneUpViewController *)self _horizontalOffsetInCollectionView:v8 forCenteringOnItemAtIndexPath:v24], v26 = v25, x == 0.0) || x > 0.0 && v25 > a5->x || x < 0.0 && v25 < a5->x)
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
      a5->x = v21;
      a5->y = 0.0;
    }
  }

  else
  {
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v3 = [(PUImportOneUpViewController *)self reviewScrubber];
  [v3 finishInteractiveUpdate];
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    v5 = [(PUImportOneUpViewController *)self reviewScrubber];
    [v5 finishInteractiveUpdate];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  [(PUImportOneUpViewController *)self updateNavigationItemTitle];
  if (![(PUImportOneUpViewController *)self updatingContentOffsetFromScrubbing])
  {

    [(PUImportOneUpViewController *)self _updateReviewScrubberFromContentOffset];
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v3 = [(PUImportOneUpViewController *)self reviewScrubber];
  [v3 beginInteractiveUpdate];
}

- (void)_importControllerDidEndAction
{
  [(PUImportOneUpViewController *)self setAllowsSelection:1];
  [(PUImportOneUpViewController *)self updateToolbarItems];
  v3 = [MEMORY[0x1E69C3620] sharedInstance];
  v4 = [v3 showProgressTitles];

  if (v4)
  {

    [(PUImportOneUpViewController *)self updateNavigationItemTitle];
  }
}

- (id)importDestinationForActionCoordinator:(id)a3
{
  v3 = [(PUImportOneUpViewController *)self importController];
  v4 = [v3 importDestinationAlbum];

  return v4;
}

- (void)actionCoordinatorDidBeginDelete:(id)a3
{
  [(PUImportOneUpViewController *)self updateToolbarItems];
  v4 = [MEMORY[0x1E69C3620] sharedInstance];
  v5 = [v4 showProgressTitles];

  if (v5)
  {

    [(PUImportOneUpViewController *)self updateNavigationItemTitle];
  }
}

- (void)actionCoordinatorDidBeginImport:(id)a3
{
  [(PUImportOneUpViewController *)self updateToolbarItems];
  v4 = [MEMORY[0x1E69C3620] sharedInstance];
  v5 = [v4 showProgressTitles];

  if (v5)
  {

    [(PUImportOneUpViewController *)self updateNavigationItemTitle];
  }
}

- (void)deleteItems:(id)a3
{
  v4 = a3;
  v5 = [(PUImportOneUpViewController *)self actionCoordinator];
  [v5 deleteItemsWithoutConfirmation:v4];
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
    v14 = [(PUImportOneUpViewController *)self roundProgressView];
    [v14 resetProgress];
  }

  v15 = [(PUImportOneUpViewController *)self importController];
  [v15 isDeletingAssets];

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

  v21 = [MEMORY[0x1E69C3620] sharedInstance];
  v22 = [v21 showProgressTitles];

  if (v22)
  {
    [(PUImportOneUpViewController *)self updateNavigationItemTitle];
  }
}

- (void)_stopImportAction:(id)a3
{
  v3 = [(PUImportOneUpViewController *)self actionCoordinator];
  [v3 stopImport];
}

- (void)_deleteAction:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PUImportOneUpViewController *)self importController];
  v6 = [v5 selectedItems];

  if ([v6 count])
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v8 = [(PUImportOneUpViewController *)self collectionView];
    v9 = [(PUImportOneUpViewController *)self indexPathOfCenterVisibleItemInCollectionView:v8];

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

  v12 = [(PUImportOneUpViewController *)self actionCoordinator];
  [v12 deleteItemsFromBarButtonItem:v4 withOneUpHintItems:v7];
}

- (void)_cancelOneUpView
{
  [(PUImportOneUpViewController *)self _updateBarItemsAnimated:1];
  v3 = [(PUImportOneUpViewController *)self _currentAsset];
  [(PUImportOneUpViewController *)self _dismissReviewControllerWithAsset:v3];
}

- (void)_reallyToggleCurrentPickStatusAtIndexPath:(id)a3
{
  v7 = [(PUImportOneUpViewController *)self importAssetAtIndexPath:a3];
  if ([v7 isSelectable])
  {
    v4 = [v7 isSelected];
    v5 = [(PUImportOneUpViewController *)self importController];
    v6 = v5;
    if (v4)
    {
      [v5 deselectItem:v7];
    }

    else
    {
      [v5 selectItem:v7];
    }

    [(PUImportOneUpViewController *)self updateNavigationItemTitle];
    [(PUImportOneUpViewController *)self updateToolbarItems];
  }
}

- (void)_toggleCurrentPickStatusAtIndexPath:(id)a3
{
  if (self->_allowsSelection)
  {
    [(PUImportOneUpViewController *)self _reallyToggleCurrentPickStatusAtIndexPath:a3];
  }
}

- (void)_updateReviewScrubberFromContentOffset
{
  v6 = [(PUImportOneUpViewController *)self importDataSource];
  if ([v6 containsAnyItems])
  {
    [(PUImportOneUpViewController *)self absoluteProgressFromCurrentContentOffset];
    v4 = v3;
    v5 = [(PUImportOneUpViewController *)self reviewScrubber];
    [v5 updateWithAbsoluteProgress:v4];
  }
}

- (double)absoluteProgressFromCurrentContentOffset
{
  v3 = [(PUImportOneUpViewController *)self importDataSource];
  v4 = 0.0;
  if ([v3 containsAnyItems])
  {
    v5 = [(PUImportOneUpViewController *)self collectionView];
    v6 = [(PUImportOneUpViewController *)self indexPathOfCenterVisibleItemInCollectionView:v5];

    v7 = [(PUImportOneUpViewController *)self assetAtIndexPath:v6];
    v8 = [(PUImportOneUpViewController *)self importDataSource];
    v9 = [v8 allItems];

    v10 = [v9 indexOfObject:v7];
    [(PUImportOneUpViewController *)self sizeForItemAtIndexPath:v6];
    v12 = v11;
    v13 = [(PUImportOneUpViewController *)self collectionView];
    [v13 contentOffset];
    v15 = v14;

    v16 = [(PUImportOneUpViewController *)self collectionView];
    [(PUImportOneUpViewController *)self _horizontalOffsetInCollectionView:v16 forCenteringOnItemAtIndexPath:v6];
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

      v30 = [(PUImportOneUpViewController *)self specManager];
      v31 = [v30 spec];
      [v31 interItemSpacing];
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

      v22 = [(PUImportOneUpViewController *)self specManager];
      v23 = [v22 spec];
      [v23 interItemSpacing];
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
  v2 = [MEMORY[0x1E69BF248] defaultFormatChooser];
  v3 = [v2 largestUncroppedNonJPEGThumbnailFormat];
  v4 = [v3 formatID];

  return v4;
}

- (void)_updateReviewScrubberHeightIfNeeded
{
  if ([(PUImportOneUpViewController *)self _needsUpdateReviewScrubberHeight])
  {
    [(PUImportOneUpViewController *)self _setNeedsUpdateReviewScrubberHeight:0];
    v3 = [(PUImportOneUpViewController *)self reviewScrubberHeightConstraint];
    v7 = v3;
    v4 = [(PUImportOneUpViewController *)self reviewScrubber];
    v5 = [(PUImportOneUpViewController *)self traitCollection];
    [PUReviewScrubberSetupHelper configureHeightConstraint:&v7 forReviewScrubber:v4 withTraitCollection:v5];
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
  v14 = [(PUImportOneUpViewController *)self collectionViewLayout];
  [v14 setItemsContentInset:{v12, v9, v13, v11}];
}

- (id)badgeViewAtIndexPath:(id)a3 forCollectionView:(id)a4
{
  if (a4)
  {
    v6 = [a4 dequeueReusableSupplementaryViewOfKind:@"PUSelectableAssetBadgeKind" withReuseIdentifier:@"PUImportOneUpBadgeIdentifier" forIndexPath:a3];
  }

  else
  {
    v7 = a3;
    v8 = [PUImportOneUpCellBadgeView alloc];
    v6 = [(PUImportOneUpCellBadgeView *)v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  v9 = v6;
  v10 = [(PUImportOneUpViewController *)self importAssetAtIndexPath:a3];

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

- (id)_indexPathInCollectionView:(id)a3 closestToPoint:(CGPoint)a4 excludingIndexPath:(id)a5
{
  y = a4.y;
  x = a4.x;
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [v8 indexPathForItemAtPoint:{x, y}];
  if (!v10)
  {
    v11 = [v8 visibleCells];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v24 + 1) + 8 * i);
          v18 = [v8 indexPathForCell:v17];
          if (([v9 isEqual:v18] & 1) == 0)
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

        v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
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

- (double)_horizontalOffsetInCollectionView:(id)a3 forCenteringOnItemAtIndexPath:(id)a4
{
  v5 = a3;
  v6 = [v5 layoutAttributesForItemAtIndexPath:a4];
  [v6 center];
  v8 = v7;
  [v5 bounds];
  v10 = v9;

  return round(v8 + v10 * -0.5);
}

- (id)indexPathOfCenterVisibleItemInCollectionView:(id)a3
{
  v4 = a3;
  [v4 bounds];
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  MidX = CGRectGetMidX(v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v10 = [(PUImportOneUpViewController *)self _indexPathInCollectionView:v4 closestToPoint:0 excludingIndexPath:MidX, CGRectGetMidY(v14)];

  return v10;
}

- (void)pageToIndexPath:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v11 = [(PUImportOneUpViewController *)self collectionView];
  [v11 contentOffset];
  v8 = v7;
  [(PUImportOneUpViewController *)self _horizontalOffsetInCollectionView:v11 forCenteringOnItemAtIndexPath:v6];
  v10 = v9;

  [v11 setContentOffset:v4 animated:{v10, v8}];
  [(PUImportOneUpViewController *)self updateNavigationItemTitle];
}

- (void)pageToItemOrNearestIndexPath:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v14 = 0u;
  v15 = 0u;
  v7 = [(PUImportOneUpViewController *)self importDataSource];
  v8 = v7;
  if (v7)
  {
    [v7 itemIndexPathForItem:v6];
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  if (v14 == *MEMORY[0x1E69C4880])
  {
    v9 = [(PUImportOneUpViewController *)self collectionView];
    v10 = [(PUImportOneUpViewController *)self indexPathOfCenterVisibleItemInCollectionView:v9];

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

    [(PUImportOneUpViewController *)self pageToIndexPath:v10 animated:v4];
  }

LABEL_9:
}

- (CGSize)sizeForItemAtIndexPath:(id)a3
{
  v4 = [(PUImportOneUpViewController *)self importAssetAtIndexPath:a3];
  v5 = [v4 importAsset];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  [(PUImportOneUpViewController *)self getMainCollectionViewFrame:&v52 collectionViewLayoutInsets:&v50];
  v6 = *&v53 - (*(&v50 + 1) + *(&v51 + 1));
  v7 = *(&v53 + 1) - (*&v50 + *&v51);
  [v5 orientedPixelSize];
  v9 = v8;
  v11 = v10;
  v12 = [MEMORY[0x1E69C3620] sharedInstance];
  v13 = [v12 useThumbnailSizesAsImageSizeHints];

  v14 = *MEMORY[0x1E695F060];
  v15 = *(MEMORY[0x1E695F060] + 8);
  if (v9 != *MEMORY[0x1E695F060] || v11 != v15 || v13 == 0)
  {
    goto LABEL_27;
  }

  [v4 largeThumbnailSize];
  if (v19 == v14 && v18 == v15)
  {
    [v4 thumbnailSize];
    if (v24 == v14 && v23 == v15)
    {
      v26 = [(PUImportOneUpViewController *)self itemsWithInvalidImageSizes];

      if (!v26)
      {
        v27 = [MEMORY[0x1E695DFA8] set];
        [(PUImportOneUpViewController *)self setItemsWithInvalidImageSizes:v27];
      }

      v28 = [(PUImportOneUpViewController *)self itemsWithInvalidImageSizes];
      [v28 addObject:v4];

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
    v30 = [(PUImportOneUpViewController *)self itemsWithInvalidImageSizes];
    [v30 removeObject:v4];
  }

LABEL_27:
  v31 = [(PUImportOneUpViewController *)self specManager];
  v32 = [v31 spec];

  [v32 interItemSpacing];
  v34 = v6 + v33 * -4.0;
  v35 = v7 + v33 * -2.0;
  [v32 selectionBadgeSize];
  v37 = v36;
  [v32 selectionBadgeOffset];
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

- (id)importAssetAtIndexPath:(id)a3
{
  v3 = [(PUImportOneUpViewController *)self assetAtIndexPath:a3];
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

- (id)assetAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PUImportOneUpViewController *)self importDataSource];
  [v5 identifier];
  PXSimpleIndexPathFromIndexPath();

  v6 = [(PUImportOneUpViewController *)self importDataSource];
  memset(v9, 0, sizeof(v9));
  v7 = [v6 assetAtItemIndexPath:v9];

  return v7;
}

- (id)_currentAsset
{
  v3 = [(PUImportOneUpViewController *)self collectionView];
  v4 = [(PUImportOneUpViewController *)self indexPathOfCenterVisibleItemInCollectionView:v3];

  v5 = [(PUImportOneUpViewController *)self assetAtIndexPath:v4];

  return v5;
}

- (void)_handleTapInMainCollectionView:(id)a3
{
  v4 = a3;
  v17 = [(PUImportOneUpViewController *)self collectionView];
  [v4 locationInView:v17];
  v6 = v5;
  v8 = v7;

  v9 = [(PUImportOneUpViewController *)self collectionViewLayout];
  [v17 contentSize];
  v11 = v10;
  [v9 itemsContentInset];
  v14 = v11 - fabs(v13);
  if (v6 > fabs(v12) && v6 < v14)
  {
    v16 = [(PUImportOneUpViewController *)self _indexPathInCollectionView:v17 closestToPoint:0 excludingIndexPath:v6, v8];
    if (v16)
    {
      [(PUImportOneUpViewController *)self _handleTapAtIndexPath:v16];
    }
  }
}

- (void)_handleTapAtIndexPath:(id)a3
{
  v6 = a3;
  v4 = [(PUImportOneUpViewController *)self collectionView];
  [(PUImportOneUpViewController *)self _toggleCurrentPickStatusAtIndexPath:v6];
  if (([v4 isDragging] & 1) == 0 && (objc_msgSend(v4, "isDecelerating") & 1) == 0 && objc_msgSend(v4, "isTracking"))
  {
    v5 = [(PUImportOneUpViewController *)self reviewScrubber];
    [v5 beginInteractiveUpdate];
    [(PUImportOneUpViewController *)self pageToIndexPath:v6 animated:1];
  }
}

- (void)loadCenterPrioritizedVisibleThumbnails
{
  v26 = *MEMORY[0x1E69E9840];
  if ([(PUImportOneUpViewController *)self loadLargeThumbnailsInCustomOrder])
  {
    v3 = [(PUImportOneUpViewController *)self collectionView];
    v4 = [v3 indexPathsForVisibleItems];

    if ([v4 count])
    {
      v5 = [v4 sortedArrayUsingComparator:&__block_literal_global_311_31467];

      v6 = [(PUImportOneUpViewController *)self collectionView];
      v7 = [(PUImportOneUpViewController *)self indexPathOfCenterVisibleItemInCollectionView:v6];

      if (v7)
      {
        v8 = [(PUImportOneUpViewController *)self collectionView];
        v9 = [v8 cellForItemAtIndexPath:v7];

        if (v9)
        {
          v10 = [v9 importItem];
          v11 = [(PUImportOneUpViewController *)self thumbnailLoadableItemWhitelist];
          [v11 addObject:v10];

          [v9 refreshThumbnail];
        }
      }

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v4 = v5;
      v12 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
              objc_enumerationMutation(v4);
            }

            v16 = *(*(&v21 + 1) + 8 * i);
            if (([v16 isEqual:{v7, v21}] & 1) == 0)
            {
              v17 = [(PUImportOneUpViewController *)self collectionView];
              v18 = [v17 cellForItemAtIndexPath:v16];

              if (v18)
              {
                v19 = [v18 importItem];
                v20 = [(PUImportOneUpViewController *)self thumbnailLoadableItemWhitelist];
                [v20 addObject:v19];

                [v18 refreshThumbnail];
              }
            }
          }

          v13 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
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

- (CGRect)selectionBadgeFrameForItemFrame:(CGRect)a3 atIndexPath:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(PUImportOneUpViewController *)self specManager];
  v9 = [v8 spec];

  [v9 selectionBadgeSize];
  v11 = v10;
  v13 = v12;
  [v9 selectionBadgeOffset];
  v15 = v14;
  v17 = v16;
  v18 = [v9 selectionBadgeCorner];
  if (v18 != 1)
  {
    v19 = width;
    v20 = *(MEMORY[0x1E695F058] + 8);
    if (v18 == 4)
    {
      v26 = x;
      v27 = y;
      v28 = height;
    }

    else
    {
      v21 = height;
      v22 = *MEMORY[0x1E695F058];
      if (v18 == 2)
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

- (void)getFirstValidIndexPath:(id *)a3 lastValidIndexPath:(id *)a4
{
  v6 = [(PUImportOneUpViewController *)self importDataSource];
  v7 = v6;
  if (v6)
  {
    [v6 firstItemIndexPath];
    [v7 lastItemIndexPath];
    v8 = PXIndexPathFromSimpleIndexPath();
    v9 = PXIndexPathFromSimpleIndexPath();
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = 0;
  v8 = 0;
  if (a3)
  {
LABEL_3:
    v10 = v8;
    *a3 = v8;
  }

LABEL_4:
  if (a4)
  {
    v11 = v9;
    *a4 = v9;
  }
}

- (void)getMainCollectionViewFrame:(CGRect *)a3 collectionViewLayoutInsets:(UIEdgeInsets *)a4
{
  v7 = [(PUImportOneUpViewController *)self view];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [(PUImportOneUpViewController *)self collectionViewLayout];
  [v16 layoutReferenceSize];
  v18 = v17;
  v20 = v19;
  v21 = *MEMORY[0x1E695F060];
  v22 = *(MEMORY[0x1E695F060] + 8);

  if (v18 != v21 || v20 != v22)
  {
    v24 = [(PUImportOneUpViewController *)self collectionViewLayout];
    [v24 layoutReferenceSize];
    v13 = v25;
    v15 = v26;
  }

  if (a3)
  {
    a3->origin.x = v9;
    a3->origin.y = v11;
    a3->size.width = v13;
    a3->size.height = v15;
  }

  if (a4)
  {
    [(PUImportOneUpViewController *)self px_safeAreaInsets];
    v27 = [(PUImportOneUpViewController *)self reviewScrubberHeightConstraint];
    [v27 constant];

    UIEdgeInsetsMax();
    a4->top = v28;
    a4->left = v29;
    a4->bottom = v30;
    a4->right = v31;
  }
}

- (void)_updateMainView
{
  if (![(PUImportOneUpViewController *)self isViewLoaded])
  {
    return;
  }

  v3 = [(PUImportOneUpViewController *)self specManager];
  v4 = [v3 spec];

  v25 = 0u;
  v26 = 0u;
  memset(v24, 0, sizeof(v24));
  [(PUImportOneUpViewController *)self getMainCollectionViewFrame:&v25 collectionViewLayoutInsets:v24];
  v5 = +[PUInterfaceManager currentTheme];
  v6 = [v5 photoCollectionViewBackgroundColor];

  v7 = [(PUImportOneUpViewController *)self collectionView];
  v8 = [(PUImportOneUpViewController *)self collectionViewLayout];
  [v4 interItemSpacing];
  if (!v8)
  {
    v14 = v9;
    v8 = objc_alloc_init(PUSelectableAssetCollectionViewLayout);
    [(PUHorizontalCollectionViewLayout *)v8 setInteritemSpacing:v14];
    [v4 selectionBadgeOffset];
    [(PUSelectableAssetCollectionViewLayout *)v8 setSharingBadgeOffset:?];
    [(PUHorizontalCollectionViewLayout *)v8 setDelegate:self];
    objc_storeStrong(&self->_collectionViewLayout, v8);
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_9:
    v15 = objc_alloc(MEMORY[0x1E69DC7F0]);
    v7 = [v15 initWithFrame:v8 collectionViewLayout:{v25, v26}];
    [v7 setAutoresizingMask:18];
    [v7 setAlwaysBounceVertical:0];
    [v7 setAlwaysBounceHorizontal:1];
    [v7 setPagingEnabled:0];
    [v7 setDecelerationRate:*MEMORY[0x1E69DE3A0]];
    [v7 setDataSource:self];
    [v7 setDelegate:self];
    [v7 setShowsHorizontalScrollIndicator:0];
    [v7 setBackgroundColor:v6];
    [v7 setDelaysContentTouches:0];
    [v7 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PUImportOneUpCellIdentifier"];
    [v7 registerClass:objc_opt_class() forSupplementaryViewOfKind:@"PUSelectableAssetBadgeKind" withReuseIdentifier:@"PUImportOneUpBadgeIdentifier"];
    [v7 setContentInsetAdjustmentBehavior:2];
    v16 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTapInMainCollectionView_];
    tapGestureRecognizer = self->_tapGestureRecognizer;
    self->_tapGestureRecognizer = v16;

    v18 = [(PUImportOneUpViewController *)self tapGestureRecognizer];
    [v18 setNumberOfTapsRequired:1];

    v19 = [(PUImportOneUpViewController *)self tapGestureRecognizer];
    [v19 setNumberOfTouchesRequired:1];

    v20 = [(PUImportOneUpViewController *)self tapGestureRecognizer];
    [v20 setDelegate:self];

    v21 = [(PUImportOneUpViewController *)self tapGestureRecognizer];
    [v7 addGestureRecognizer:v21];

    objc_storeStrong(&self->_collectionView, v7);
    v22 = [(PUImportOneUpViewController *)self view];
    v23 = [(PUImportOneUpViewController *)self collectionView];
    [v22 addSubview:v23];

    goto LABEL_4;
  }

  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_4:
  [v7 setFrame:{v25, v26}];
  [(PUImportOneUpViewController *)self updateCollectionViewLayoutInsets];
  if (!self->_reviewScrubber)
  {
    v10 = [PUReviewScrubberSetupHelper createReviewScrubberWithDataSource:self delegate:self];
    reviewScrubber = self->_reviewScrubber;
    self->_reviewScrubber = v10;

    [(PUReviewScrubber *)self->_reviewScrubber setScrubberCellClass:objc_opt_class()];
    v12 = self->_reviewScrubber;
    v13 = [(PUImportOneUpViewController *)self view];
    [PUReviewScrubberSetupHelper setupBaseConstraintsForReviewScrubber:v12 inView:v13];

    [(PUImportOneUpViewController *)self _invalidateReviewScrubberHeight];
  }

  [(PUImportOneUpViewController *)self _updateReviewScrubberHeightIfNeeded];
}

- (void)_updateBarItemsAnimated:(BOOL)a3
{
  v39[1] = *MEMORY[0x1E69E9840];
  v4 = [(PUImportOneUpViewController *)self navigationTitleView];

  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69C3720]);
    navigationTitleView = self->_navigationTitleView;
    self->_navigationTitleView = v5;
  }

  v7 = [(PUImportOneUpViewController *)self cancelBarButtonItem];

  if (!v7)
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

  v14 = [(PUImportOneUpViewController *)self importBarButtonItem];

  if (!v14)
  {
    v15 = objc_alloc(MEMORY[0x1E69DC708]);
    v16 = PLLocalizedFrameworkString();
    v17 = [v15 initWithTitle:v16 style:2 target:0 action:0];
    importBarButtonItem = self->_importBarButtonItem;
    self->_importBarButtonItem = v17;
  }

  v19 = [(PUImportOneUpViewController *)self stopImportBarButtonItem];

  if (!v19)
  {
    v20 = objc_alloc(MEMORY[0x1E69DC708]);
    v21 = PLLocalizedFrameworkString();
    v22 = [v20 initWithTitle:v21 style:0 target:self action:sel__stopImportAction_];
    stopImportBarButtonItem = self->_stopImportBarButtonItem;
    self->_stopImportBarButtonItem = v22;
  }

  v24 = [(PUImportOneUpViewController *)self deleteBarButtonItem];

  if (!v24)
  {
    v25 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:16 target:self action:sel__deleteAction_];
    deleteBarButtonItem = self->_deleteBarButtonItem;
    self->_deleteBarButtonItem = v25;
  }

  v27 = [(PUImportOneUpViewController *)self progressButtonItem];

  if (!v27)
  {
    v28 = [objc_alloc(MEMORY[0x1E69BE1C8]) initWithFrame:3 style:{0.0, 0.0, 28.0, 28.0}];
    [(PUImportOneUpViewController *)self setRoundProgressView:v28];

    v29 = [(PUImportOneUpViewController *)self roundProgressView];
    [v29 setUserInteractionEnabled:0];

    v30 = objc_alloc(MEMORY[0x1E69DC708]);
    v31 = [(PUImportOneUpViewController *)self roundProgressView];
    v32 = [v30 initWithCustomView:v31];
    progressButtonItem = self->_progressButtonItem;
    self->_progressButtonItem = v32;

    [(UIBarButtonItem *)self->_progressButtonItem setIsAccessibilityElement:1];
    [(UIBarButtonItem *)self->_progressButtonItem setAccessibilityTraits:*MEMORY[0x1E69DDA18] | *MEMORY[0x1E69DDA38]];
    v34 = [MEMORY[0x1E696AD88] defaultCenter];
    [v34 addObserver:self selector:sel_importControllerProgressDidChange_ name:*MEMORY[0x1E69C4070] object:0];
  }

  v35 = [(PUImportOneUpViewController *)self cancelBarButtonItem];
  v39[0] = v35;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];

  v37 = [(PUImportOneUpViewController *)self navigationItem];
  [v37 setLeftBarButtonItems:v36];
  v38 = [(PUImportOneUpViewController *)self navigationTitleView];
  [v37 setTitleView:v38];

  [(PUImportOneUpViewController *)self updateToolbarItems];
  [(PUImportOneUpViewController *)self updateNavigationItemTitle];
}

- (int64_t)_titleViewVerticalSizeClassForExtendedTraitCollection:(id)a3
{
  v3 = a3;
  v4 = [v3 layoutSizeClass] == 1 && objc_msgSend(v3, "layoutOrientation") == 2;

  return v4;
}

- (void)updateNavigationItemTitle
{
  v3 = [(PUImportOneUpViewController *)self collectionView];
  v4 = [(PUImportOneUpViewController *)self indexPathOfCenterVisibleItemInCollectionView:v3];

  v5 = [(PUImportOneUpViewController *)self importController];
  v6 = [v5 selectedItems];

  v7 = [(PUImportOneUpViewController *)self importController];
  v8 = [v7 isImportingAssets];

  v9 = [(PUImportOneUpViewController *)self importController];
  v10 = [v9 isDeletingAssets];

  v11 = [MEMORY[0x1E69C3620] sharedInstance];
  v12 = [v11 showProgressTitles];

  if (![v6 count] || ((v8 | v10) & v12 & 1) != 0)
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
    v16 = [v15 creationDate];
    if (v16)
    {
      v17 = [(PUImportOneUpViewController *)self dayFormatter];
      v18 = [v17 stringFromDate:v16];

      v19 = [(PUImportOneUpViewController *)self timeFormatter];
      v20 = [v19 stringFromDate:v16];
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
  v25 = [(PUImportOneUpViewController *)self px_extendedTraitCollection];
  v26 = [(PUImportOneUpViewController *)self _titleViewVerticalSizeClassForExtendedTraitCollection:v25];
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
  v4 = [(PUImportOneUpViewController *)self importController];
  v5 = [v4 selectedItems];

  v6 = [(PUImportOneUpViewController *)self importController];
  v7 = [v6 isImportingAssets];

  if (v7)
  {
    v8 = [(PUImportOneUpViewController *)self stopImportBarButtonItem];
    [v39 addObject:v8];
  }

  else
  {
    v9 = [(PUImportOneUpViewController *)self importDataSource];
    v10 = [v9 numberOfSelectableItems];

    if (!v10)
    {
      goto LABEL_6;
    }

    v11 = [(PUImportOneUpViewController *)self importBarButtonItem];
    [v39 addObject:v11];

    v8 = [(PUImportOneUpViewController *)self actionCoordinator];
    v12 = [(PUImportOneUpViewController *)self importBarButtonItem];
    [v8 configureImportActionsForBarButtonItem:v12];
  }

LABEL_6:
  [v5 count];
  v13 = PLLocalizedFrameworkString();
  v14 = [(PUImportOneUpViewController *)self deleteBarButtonItem];
  [v14 setAccessibilityLabel:v13];

  v15 = [(PUImportOneUpViewController *)self importController];
  v16 = [v15 importSource];
  v17 = [v16 canDeleteContent];

  if (v17)
  {
    v18 = [(PUImportOneUpViewController *)self traitCollection];
    v19 = [v18 horizontalSizeClass];

    v20 = [(PUImportOneUpViewController *)self deleteBarButtonItem];
    v21 = v39;
    if (v19 == 1)
    {
      v21 = v3;
    }

    [v21 addObject:v20];
  }

  v22 = [(PUImportOneUpViewController *)self importController];
  if ([v22 isImportingAssets])
  {
  }

  else
  {
    v23 = [(PUImportOneUpViewController *)self importController];
    v24 = [v23 isDeletingAssets];

    if (!v24)
    {
      goto LABEL_14;
    }
  }

  v25 = [(PUImportOneUpViewController *)self progressButtonItem];
  [v39 addObject:v25];

LABEL_14:
  v26 = [(PUImportOneUpViewController *)self importController];
  if ([v26 hasLoadedInitialBatchOfAssets])
  {
    v27 = [(PUImportOneUpViewController *)self importController];
    if ([v27 isLoadingInitialBatchOfAssets])
    {
      v28 = 0;
    }

    else
    {
      v29 = [(PUImportOneUpViewController *)self importController];
      if ([v29 isImportingAssets])
      {
        v28 = 0;
      }

      else
      {
        v30 = [(PUImportOneUpViewController *)self importController];
        v28 = [v30 isDeletingAssets] ^ 1;
      }
    }
  }

  else
  {
    v28 = 0;
  }

  v31 = [(PUImportOneUpViewController *)self importBarButtonItem];
  [v31 setEnabled:v28];

  v32 = [(PUImportOneUpViewController *)self deleteBarButtonItem];
  [v32 setEnabled:v28];

  v33 = [(PUImportOneUpViewController *)self navigationItem];
  [v33 setRightBarButtonItems:v39];

  v34 = [(PUImportOneUpViewController *)self toolbarItems];
  if ([v3 count])
  {
    v35 = [(PUImportOneUpViewController *)self bottomSpacerBarButtonItem];

    if (!v35)
    {
      v36 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
      bottomSpacerBarButtonItem = self->_bottomSpacerBarButtonItem;
      self->_bottomSpacerBarButtonItem = v36;
    }

    v38 = [(PUImportOneUpViewController *)self bottomSpacerBarButtonItem];
    [v3 insertObject:v38 atIndex:0];
  }

  if (([v34 isEqualToArray:v3] & 1) == 0)
  {
    [(PUImportOneUpViewController *)self setToolbarItems:v3];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v29.receiver = self;
  v29.super_class = PUImportOneUpViewController;
  v7 = a4;
  [(PUImportOneUpViewController *)&v29 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(PUImportOneUpViewController *)self collectionView];
  v9 = [(PUImportOneUpViewController *)self indexPathOfCenterVisibleItemInCollectionView:v8];

  inFlightReferenceIndexPath = self->_inFlightReferenceIndexPath;
  self->_inFlightReferenceIndexPath = v9;
  v11 = v9;

  v12 = [(PUImportOneUpViewController *)self collectionViewLayout];
  [v12 setLayoutReferenceSize:{width, height}];

  [(PUImportOneUpViewController *)self updateCollectionViewLayoutInsets];
  v13 = [(PUImportOneUpViewController *)self collectionView];
  [v13 _contentScrollInset];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = [(PUImportOneUpViewController *)self collectionView];
  [v22 contentSize];
  v24 = v21 + v23;

  v25 = [(PUImportOneUpViewController *)self collectionView];
  [v25 _setContentScrollInset:{v15, v17, v19, v24}];

  v26 = [(PUImportOneUpViewController *)self inFlightReferenceIndexPath];
  [(PUImportOneUpViewController *)self pageToIndexPath:v26 animated:0];

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
  [v7 animateAlongsideTransition:v28 completion:v27];
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

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = PUImportOneUpViewController;
  [(PUImportOneUpViewController *)&v4 traitCollectionDidChange:a3];
  [(PUImportOneUpViewController *)self updateToolbarItems];
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v4.receiver = self;
  v4.super_class = PUImportOneUpViewController;
  [(PUImportOneUpViewController *)&v4 willTransitionToTraitCollection:a3 withTransitionCoordinator:a4];
}

- (BOOL)pu_wantsToolbarVisible
{
  v3 = [MEMORY[0x1E69C3620] sharedInstance];
  v4 = [v3 hide1UpToolbarAndMarginsForCollapsedAlreadyImportedItem];

  return !v4 || [(PUImportOneUpViewController *)self presentationFilter]!= 3;
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
    v3 = [(PUImportOneUpViewController *)self importDataSource];
    v4 = [(PUImportOneUpViewController *)self startingAssetReference];
    v5 = [v4 asset];
    if (v3)
    {
      [v3 itemIndexPathForItem:v5];
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
      v8 = [(PUImportOneUpViewController *)self reviewScrubber];
      [v8 reloadData];
    }
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PUImportOneUpViewController;
  [(PUImportOneUpViewController *)&v4 viewWillDisappear:a3];
  [(PUImportOneUpViewController *)self _cancelAlerts];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = PUImportOneUpViewController;
  [(PUImportOneUpViewController *)&v3 viewDidAppear:a3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = PUImportOneUpViewController;
  [(PUImportOneUpViewController *)&v6 viewWillAppear:?];
  [(UIViewController *)self pu_setupInitialBarsVisibilityOnViewWillAppearAnimated:v3];
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
  v3 = [(PUImportOneUpViewController *)self collectionView];
  v4 = [v3 indexPathsForVisibleSupplementaryElementsOfKind:@"PUSelectableAssetBadgeKind"];

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

- (void)transitionFromDataSource:(id)a3 toDataSource:(id)a4 animated:(BOOL)a5 completionHandler:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(PUImportOneUpViewController *)self collectionView];
  v14 = [(PUImportOneUpViewController *)self indexPathOfCenterVisibleItemInCollectionView:v13];

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
    v16 = [(PUImportOneUpViewController *)self importDataSourceManager];
    v17 = [v16 changeHistory];

    v18 = [(PUImportOneUpViewController *)self changeDetailsHelper];

    v19 = &unk_1B3D0C000;
    if (!v18)
    {
      objc_initWeak(&location, self);
      v20 = [PUImportChangeDetailsCollectionViewHelper alloc];
      v21 = [(PUImportOneUpViewController *)self collectionView];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __96__PUImportOneUpViewController_transitionFromDataSource_toDataSource_animated_completionHandler___block_invoke;
      v27[3] = &unk_1E7B78088;
      objc_copyWeak(&v28, &location);
      v22 = [(PUImportChangeDetailsCollectionViewHelper *)v20 initWithCollectionView:v21 dataSourceSettingHandler:v27];
      [(PUImportOneUpViewController *)self setChangeDetailsHelper:v22];

      objc_destroyWeak(&v28);
      objc_destroyWeak(&location);
      v19 = &unk_1B3D0C000;
    }

    v23 = [(PUImportOneUpViewController *)self changeDetailsHelper];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = v19[211];
    v24[2] = __96__PUImportOneUpViewController_transitionFromDataSource_toDataSource_animated_completionHandler___block_invoke_2;
    v24[3] = &unk_1E7B77890;
    v24[4] = self;
    v25 = v15;
    v26 = v12;
    [v23 transitionFromDataSource:v10 toDataSource:v11 changeHistory:v17 animated:v7 completionHandler:v24];
  }

  else
  {
    [(PUImportOneUpViewController *)self setImportDataSource:v11];
    if (v12)
    {
      v12[2](v12);
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

- (void)handleNewDataSource:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PUImportOneUpViewController *)self importDataSource];
  v6 = [v5 identifier];
  if (v6 != [v4 identifier])
  {
    if ([(PUImportOneUpViewController *)self performingDataSourceChange])
    {
      v7 = _importOneUpLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v15 = [v4 identifier];
        _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "Collection view is performing changes, making pending data source: %ti", buf, 0xCu);
      }

      [(PUImportOneUpViewController *)self setPendingDataSource:v4];
    }

    else
    {
      if ([(PUImportOneUpViewController *)self px_isVisible])
      {
        v8 = [(PUImportOneUpViewController *)self importController];
        v9 = [v8 isLoadingInitialBatchOfAssets];
        if (v4)
        {
          v10 = v5 == 0;
        }

        else
        {
          v10 = 1;
        }

        v11 = !v10;
        if (v9)
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
      [(PUImportOneUpViewController *)self transitionFromDataSource:v5 toDataSource:v4 animated:v12 completionHandler:v13];
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

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v8 = a3;
  if (PXImportControllerObserverContext == a5)
  {
    if ((v6 & 2) != 0 || (v6 & 4) != 0 || (v6 & 0x10) != 0)
    {
      [(PUImportOneUpViewController *)self updateToolbarItems];
    }
  }

  else if (PXImportAssetsDataSourceManagerObserverContext == a5)
  {
    if (v6)
    {
      v9 = [(PUImportOneUpViewController *)self importDataSourceManager];
      v10 = [v9 dataSource];

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __60__PUImportOneUpViewController_observable_didChange_context___block_invoke;
      v13[3] = &unk_1E7B80C38;
      v14 = v10;
      v15 = self;
      v11 = v10;
      dispatch_async(MEMORY[0x1E69E96A0], v13);
    }
  }

  else if ((v6 & 1) != 0 && PUImportSelectionManagerObserverContext == a5)
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

- (void)setImportDataSourceManager:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  importDataSourceManager = self->_importDataSourceManager;
  if (importDataSourceManager != v5)
  {
    [(PXImportAssetsDataSourceManager *)importDataSourceManager unregisterChangeObserver:self context:PXImportAssetsDataSourceManagerObserverContext];
    objc_storeStrong(&self->_importDataSourceManager, a3);
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
          v12 = [(PUImportOneUpViewController *)self startingAssetReference];
          v13 = [v12 asset];

          v14 = [v13 uuid];
          v15 = MEMORY[0x1E695DFD8];
          v18[0] = v14;
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
    v9 = [(PUImportOneUpViewController *)self importDataSourceManager];
    [v9 updateFilteredAssetsIfNeeded];

    v10 = [(PUImportOneUpViewController *)self importDataSourceManager];
    v11 = [v10 dataSource];

    [(PUImportOneUpViewController *)self handleNewDataSource:v11];
  }
}

- (void)setImportController:(id)a3
{
  v5 = a3;
  importController = self->_importController;
  if (importController != v5)
  {
    v9 = v5;
    v7 = [(PXImportController *)importController selectionManager];
    [v7 unregisterChangeObserver:self context:PUImportSelectionManagerObserverContext];

    [(PXImportController *)self->_importController unregisterChangeObserver:self context:PXImportControllerObserverContext];
    objc_storeStrong(&self->_importController, a3);
    [(PXImportController *)self->_importController registerChangeObserver:self context:PXImportControllerObserverContext];
    v8 = [(PXImportController *)self->_importController selectionManager];
    [v8 registerChangeObserver:self context:PUImportSelectionManagerObserverContext];

    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](importController, v5);
}

- (void)_cancelAlerts
{
  v3 = [(PUImportOneUpViewController *)self presentedViewController];

  if (v3)
  {
    v4 = [(PUImportOneUpViewController *)self presentedViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    [(PUImportOneUpViewController *)self dismissViewControllerAnimated:isKindOfClass & 1 completion:0];
  }
}

- (void)dealloc
{
  v3 = [(PUImportOneUpViewController *)self relayoutCoalescer];
  [v3 reset];

  [(PUImportOneUpViewController *)self setRelayoutCoalescer:0];
  [(PUImportOneUpViewController *)self _cancelAlerts];
  v4 = [(PUImportOneUpViewController *)self importController];
  v5 = [(PUImportOneUpViewController *)self importDataSourceManager];
  [v4 removeDataSourceManager:v5];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 removeObserver:self];

  v7 = [(PUImportOneUpViewController *)self tapGestureRecognizer];
  [v7 setDelegate:0];

  v8.receiver = self;
  v8.super_class = PUImportOneUpViewController;
  [(PUImportOneUpViewController *)&v8 dealloc];
}

- (PUImportOneUpViewController)initWithImportController:(id)a3 mediaProvider:(id)a4 startingAssetReference:(id)a5 presentationFilter:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v33.receiver = self;
  v33.super_class = PUImportOneUpViewController;
  v13 = [(PUImportOneUpViewController *)&v33 initWithNibName:0 bundle:0];
  if (v13)
  {
    v14 = [MEMORY[0x1E69C3620] sharedInstance];
    v15 = [v14 hide1UpToolbarAndMarginsForCollapsedAlreadyImportedItem];

    if (a6 == 3)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = [[PUImportOneUpViewControllerSpecManager alloc] initWithExtendedTraitCollection:0 options:0 style:v16];
    specManager = v13->_specManager;
    v13->_specManager = v17;

    objc_storeStrong(&v13->_mediaProvider, a4);
    objc_storeStrong(&v13->_startingAssetReference, a5);
    v13->_presentationFilter = a6;
    v19 = [MEMORY[0x1E69BE3B8] autoupdatingFormatterWithPreset:2];
    dayFormatter = v13->_dayFormatter;
    v13->_dayFormatter = v19;

    v21 = [MEMORY[0x1E69BE3B8] autoupdatingFormatterWithPreset:7];
    timeFormatter = v13->_timeFormatter;
    v13->_timeFormatter = v21;

    v13->_allowsSelection = 1;
    [(PUImportOneUpViewController *)v13 setImportController:v10];
    v23 = [v10 createDataSourceManagerWithLogIdentifier:@"1up"];
    [(PUImportOneUpViewController *)v13 setImportDataSourceManager:v23];

    v24 = [[PUImportActionCoordinator alloc] initWithViewController:v13 importController:v13->_importController loggingSource:1];
    actionCoordinator = v13->_actionCoordinator;
    v13->_actionCoordinator = v24;

    v26 = [(PUImportOneUpViewController *)v13 actionCoordinator];
    [v26 setDelegate:v13];

    v27 = [(PUImportOneUpViewController *)v13 actionCoordinator];
    [v27 setPresentsAdditionalDeleteAllConfirmation:1];

    v28 = [MEMORY[0x1E69BDD68] coalescerWithLabel:@"Import 1-up re-layout coalescer" target:v13 queue:MEMORY[0x1E69E96A0] action:&__block_literal_global_31539];
    relayoutCoalescer = v13->_relayoutCoalescer;
    v13->_relayoutCoalescer = v28;

    v30 = [MEMORY[0x1E695DF70] array];
    itemsNeedingRelayout = v13->_itemsNeedingRelayout;
    v13->_itemsNeedingRelayout = v30;
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