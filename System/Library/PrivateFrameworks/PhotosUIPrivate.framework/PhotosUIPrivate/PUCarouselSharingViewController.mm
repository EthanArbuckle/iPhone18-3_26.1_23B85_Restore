@interface PUCarouselSharingViewController
- (BOOL)_isAnyAssetSelected;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)isItemAtIndexPathSelected:(id)a3;
- (BOOL)ppt_scrollToAssetAtRelativeIndex:(int64_t)a3 completion:(id)a4;
- (BOOL)prepareForDismissingForced:(BOOL)a3;
- (CGRect)_collectionViewContentFrame;
- (CGRect)_frameAtIndexPath:(id)a3 inView:(id)a4;
- (CGRect)_previousPreheatRect;
- (CGRect)frameForBadgeOfKind:(id)a3 forItemFrame:(CGRect)a4 atIndexPath:(id)a5;
- (CGRect)oneUpAssetTransitionAssetFinalFrame:(id)a3;
- (CGSize)_sizeForItemAtIndexPath:(id)a3;
- (CGSize)layout:(id)a3 collectionView:(id)a4 sizeForBadgeViewOfKind:(id)a5 forItemAtIndexPath:(id)a6;
- (CGSize)layout:(id)a3 collectionView:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (NSMutableSet)analyticsEventsSent;
- (NSString)localizedSelectionTitle;
- (OS_os_log)sharingLog;
- (PHAsset)currentAsset;
- (PUCarouselSharingViewController)initWithPhotoCollectionsFetchResult:(id)a3 assetsFetchResultsByAssetCollection:(id)a4 selection:(id)a5;
- (PUCarouselSharingViewControllerDelegate)delegate;
- (double)_horizontalOffsetInCollectionView:(id)a3 forCenteringOnItemAtIndexPath:(id)a4;
- (double)layout:(id)a3 collectionView:(id)a4 bottomBadgeInsetforItemAtIndexPath:(id)a5;
- (id)_activityAssetItemForAsset:(id)a3 createIfNecessary:(BOOL)a4;
- (id)_assetAtIndexPath:(id)a3;
- (id)_badgeTransitionInfosForCell:(id)a3;
- (id)_firstSelectedIndexPath;
- (id)_indexPathInCollectionView:(id)a3 closestToContentOffsetX:(double)a4;
- (id)_indexPathInCollectionView:(id)a3 closestToPoint:(CGPoint)a4;
- (id)_indexPathOfAsset:(id)a3 sectionHint:(int64_t)a4;
- (id)_indexPathOfCenterVisibleItemInCollectionView:(id)a3;
- (id)_optionViewAtIndexPath:(id)a3 forCollectionView:(id)a4;
- (id)_photoCollectionAtIndex:(int64_t)a3;
- (id)_selectionViewAtIndexPath:(id)a3 forCollectionView:(id)a4;
- (id)_updatedActivityAssetItemsForAssets:(id)a3;
- (id)_validIndexPathFromIndexPath:(id)a3;
- (id)adjacentVisibleAssetsTransitionInfos;
- (id)assetsInAssetCollection:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)currentActivityAssetItems;
- (id)currentIndexPath;
- (id)referenceAssetTransitionInfo;
- (int64_t)_numberOfItemsInSection:(int64_t)a3;
- (int64_t)_numberOfSections;
- (unint64_t)_indexForPhotoCollection:(id)a3;
- (void)_addActivityAssetItem:(id)a3;
- (void)_arrowKey:(id)a3;
- (void)_getFirstValidIndexPath:(id *)a3 lastValidIndexPath:(id *)a4;
- (void)_getMainCollectionViewFrame:(CGRect *)a3 collectionViewLayoutInsets:(UIEdgeInsets *)a4;
- (void)_handleAnimatedImageResult:(id)a3 forCell:(id)a4 asset:(id)a5 tag:(int64_t)a6;
- (void)_handleLivePhotoRequestResult:(id)a3 forCell:(id)a4 tag:(int64_t)a5;
- (void)_handleLoopingVideoRequestResult:(id)a3 forCell:(id)a4 asset:(id)a5 tag:(int64_t)a6;
- (void)_handlePhotoViewLoaderBlocks;
- (void)_handleSchedulingLivePhotoRequestResult:(id)a3 forCell:(id)a4 tag:(int64_t)a5;
- (void)_handleSchedulingStillPhotoRequestResult:(id)a3 forCell:(id)a4 tag:(int64_t)a5;
- (void)_handleSelectionOption:(id)a3;
- (void)_handleStillImageRequestResult:(id)a3 info:(id)a4 forCell:(id)a5 indexPath:(id)a6;
- (void)_handleStillPhotoRequestResult:(id)a3 forCell:(id)a4 tag:(int64_t)a5;
- (void)_handleTapAtIndexPath:(id)a3;
- (void)_handleTapInMainCollectionView:(id)a3;
- (void)_pageToIndexPath:(id)a3 animated:(BOOL)a4;
- (void)_playLivePhotoHintIfNeededAtIndexPath:(id)a3;
- (void)_playVitalityHintAfterViewDidAppear;
- (void)_processCollectionListChangeNotifications:(id)a3 singleCollectionNotifications:(id)a4 needsReloadData:(BOOL)a5;
- (void)_removeActivityAssetItem:(id)a3;
- (void)_replaceActivityAssetItem:(id)a3 withAssetItem:(id)a4 notifyDelegate:(BOOL)a5;
- (void)_resetPreheating;
- (void)_setLastKnownReferenceAsset:(id)a3 indexPath:(id)a4;
- (void)_setLastKnownReferenceIndexPath:(id)a3;
- (void)_setLoopingPlaybackAllowed:(BOOL)a3;
- (void)_setSelected:(BOOL)a3 atIndexPath:(id)a4 animated:(BOOL)a5;
- (void)_updateAdditionalContentForAsset:(id)a3 cell:(id)a4;
- (void)_updateAdditionalContentForVisibleCells;
- (void)_updateAssetTransitionInfo:(id)a3;
- (void)_updateCell:(id)a3 forItemAtIndexPath:(id)a4;
- (void)_updateCellAtIndexPath:(id)a3 withTransitionInfo:(id)a4;
- (void)_updateInterfaceForModelReloadAnimated:(BOOL)a3;
- (void)_updateLastKnownReferenceIndexPath;
- (void)_updateMainViewAnimated:(BOOL)a3;
- (void)_updateOptionView:(id)a3 atIndexPath:(id)a4;
- (void)_updatePhotoForAsset:(id)a3 cell:(id)a4 atIndexPath:(id)a5;
- (void)_updatePreheatedAssets;
- (void)_updateVisibleCellBadges;
- (void)_updateVisibleCells;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 didEndDisplayingSupplementaryView:(id)a4 forElementOfKind:(id)a5 atIndexPath:(id)a6;
- (void)dealloc;
- (void)oneUpAssetTransition:(id)a3 requestTransitionContextWithCompletion:(id)a4;
- (void)photoLibraryDidChangeOnMainQueue:(id)a3;
- (void)ppt_faultInScollViewContentSize;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setHideCellForCurrentReferenceAsset:(BOOL)a3;
- (void)setLeadingAssetTransitionInfo:(id)a3;
- (void)setOneUpPhotosSharingTransitionContext:(id)a3;
- (void)setOneUpPhotosSharingTransitionInfo:(id)a3;
- (void)setPhotosSharingTransitionContext:(id)a3;
- (void)setPhotosSharingTransitionLayout:(id)a3 animated:(BOOL)a4;
- (void)setReadyForInteraction:(BOOL)a3;
- (void)setSendAsAssetBundles:(BOOL)a3;
- (void)setTrailingAssetTransitionInfo:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PUCarouselSharingViewController

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

- (PUCarouselSharingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (OS_os_log)sharingLog
{
  if (sharingLog_onceToken != -1)
  {
    dispatch_once(&sharingLog_onceToken, &__block_literal_global_68807);
  }

  v3 = sharingLog_sharingLog;

  return v3;
}

uint64_t __45__PUCarouselSharingViewController_sharingLog__block_invoke()
{
  v0 = os_log_create("com.apple.photos.ui", "PUPhotosSharingViewController");
  v1 = sharingLog_sharingLog;
  sharingLog_sharingLog = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)oneUpAssetTransition:(id)a3 requestTransitionContextWithCompletion:(id)a4
{
  v5 = a4;
  v6 = [(PUCarouselSharingViewController *)self view];
  [v6 layoutIfNeeded];

  v7 = [(PUCarouselSharingViewController *)self mainCollectionView];
  v8 = [(PUCarouselSharingViewController *)self _indexPathOfCenterVisibleItemInCollectionView:v7];
  v9 = [v7 cellForItemAtIndexPath:v8];
  v10 = [v9 photoView];
  v11 = [v10 contentHelper];
  v12 = [v11 photoImage];

  v13 = [(PUCarouselSharingViewController *)self view];
  [(PUCarouselSharingViewController *)self _frameAtIndexPath:v8 inView:v13];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v15, v17, v19, v21}];
  [v22 setImage:v12];
  [v22 setClipsToBounds:1];
  [v22 setContentMode:2];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __95__PUCarouselSharingViewController_oneUpAssetTransition_requestTransitionContextWithCompletion___block_invoke;
  v29[3] = &unk_1E7B7F3E0;
  v23 = v12;
  v30 = v23;
  v31 = self;
  v24 = v8;
  v32 = v24;
  v25 = [PUAssetTransitionInfo assetTransitionInfoWithConfigurationBlock:v29];
  v26 = [(PUCarouselSharingViewController *)self view];
  v27 = [PUOneUpAssetTransitionContext oneUpAssetTransitionContextWithContainerView:0 fromView:v26 snapshotView:v22 transitionInfo:v25];

  v28 = [v27 oneUpTransitionContextWithContextShouldHideBackground:1];

  if (v5)
  {
    v5[2](v5, v28);
  }
}

void __95__PUCarouselSharingViewController_oneUpAssetTransition_requestTransitionContextWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setImage:v3];
  v5 = [*(a1 + 40) _assetAtIndexPath:*(a1 + 48)];
  [v4 setAsset:v5];
}

- (id)_badgeTransitionInfosForCell:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v42 = [v4 array];
  v6 = [(PUCarouselSharingViewController *)self mainCollectionView];
  v41 = v5;
  v7 = [v6 indexPathForCell:v5];
  v8 = [(PUCarouselSharingViewController *)self spec];
  [v8 selectionBadgeOffset];
  v10 = v9;
  v12 = v11;

  v13 = [v6 collectionViewLayout];
  v14 = [v13 layoutAttributesForSupplementaryViewOfKind:@"PUPhotosSharingOptionBadgeKind" atIndexPath:v7];

  v15 = *MEMORY[0x1E695EFF8];
  v16 = *(MEMORY[0x1E695EFF8] + 8);
  v43 = v14;
  [v14 frame];
  v19 = [[PUPhotosSharingOptionView alloc] initWithFrame:v15, v16, v17, v18];
  [(PUCarouselSharingViewController *)self _updateOptionView:v19 atIndexPath:v7];
  [(PUPhotosSharingOptionView *)v19 layoutSubviews];
  v20 = objc_alloc_init(PUBadgeTransitionInfo);
  [(PUBadgeTransitionInfo *)v20 setSnapshotView:v19];
  v21 = [(PUCarouselSharingViewController *)self spec];
  -[PUBadgeTransitionInfo setBadgesCorner:](v20, "setBadgesCorner:", [v21 optionBadgeCorner]);

  [(PUBadgeTransitionInfo *)v20 setBadgesOffset:v10, v12];
  [v14 frame];
  [v5 convertRect:v6 fromView:?];
  [(PUBadgeTransitionInfo *)v20 setFrame:?];
  [v42 addObject:v20];
  v22 = [v6 collectionViewLayout];
  v23 = [v22 layoutAttributesForSupplementaryViewOfKind:@"PUPhotosSharingSelectionBadgeKind" atIndexPath:v7];

  [v23 frame];
  v26 = [[PUPhotosSharingSelectionView alloc] initWithFrame:v15, v16, v24, v25];
  v27 = -[PUCarouselSharingViewController _photoCollectionAtIndex:](self, "_photoCollectionAtIndex:", [v7 section]);
  v28 = [(PUCarouselSharingViewController *)self photoSelectionManager];
  v29 = [v28 isAssetAtIndexSelected:objc_msgSend(v7 inAssetCollection:{"item"), v27}];

  [(PUPhotosSharingSelectionView *)v26 setSelected:v29 animated:0];
  v30 = objc_alloc_init(PUBadgeTransitionInfo);
  [(PUBadgeTransitionInfo *)v30 setSnapshotView:v26];
  v31 = [(PUCarouselSharingViewController *)self spec];
  -[PUBadgeTransitionInfo setBadgesCorner:](v30, "setBadgesCorner:", [v31 selectionBadgeCorner]);

  [(PUBadgeTransitionInfo *)v30 setBadgesOffset:v10, v12];
  [v23 frame];
  [v41 convertRect:v6 fromView:?];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  [(PUBadgeTransitionInfo *)v30 setFrame:v33, v35, v37, v39];
  [v42 addObject:v30];

  return v42;
}

- (id)adjacentVisibleAssetsTransitionInfos
{
  v54 = *MEMORY[0x1E69E9840];
  v3 = [(PUCarouselSharingViewController *)self view];
  [v3 layoutIfNeeded];

  v36 = [MEMORY[0x1E695DF70] array];
  v4 = [(PUCarouselSharingViewController *)self mainCollectionView];
  v5 = [v4 visibleCells];
  [(PUCarouselSharingViewController *)self _indexPathOfCenterVisibleItemInCollectionView:v4];
  v33 = v35 = v4;
  v38 = [v4 cellForItemAtIndexPath:?];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v5;
  v39 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v39)
  {
    v37 = *v50;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v50 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v49 + 1) + 8 * i);
        if (v7 != v38)
        {
          v8 = [*(*(&v49 + 1) + 8 * i) photoView];
          v9 = [v8 contentHelper];
          v10 = [v9 photoImage];
          v11 = v10;
          if (v10)
          {
            v12 = v10;
          }

          else
          {
            v12 = [v9 placeHolderImage];
          }

          v13 = v12;

          v14 = [v35 indexPathForCell:v7];
          v15 = [(PUCarouselSharingViewController *)self view];
          [(PUCarouselSharingViewController *)self _frameAtIndexPath:v14 inView:v15];
          v17 = v16;
          v19 = v18;
          v21 = v20;
          v23 = v22;

          v24 = [(PUCarouselSharingViewController *)self _assetAtIndexPath:v14];
          v25 = [(PUCarouselSharingViewController *)self _badgeTransitionInfosForCell:v7];
          v40[0] = MEMORY[0x1E69E9820];
          v40[1] = 3221225472;
          v40[2] = __71__PUCarouselSharingViewController_adjacentVisibleAssetsTransitionInfos__block_invoke;
          v40[3] = &unk_1E7B7D2E0;
          v45 = v17;
          v46 = v19;
          v47 = v21;
          v48 = v23;
          v41 = v13;
          v42 = v8;
          v43 = v25;
          v44 = v24;
          v26 = v24;
          v27 = v25;
          v28 = v8;
          v29 = v13;
          v30 = [PUAssetTransitionInfo assetTransitionInfoWithConfigurationBlock:v40];
          [v36 addObject:v30];
        }
      }

      v39 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v39);
  }

  v31 = [v36 copy];

  return v31;
}

void __71__PUCarouselSharingViewController_adjacentVisibleAssetsTransitionInfos__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  [v6 setImage:v3];
  [v6 setFrame:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
  v4 = [*(a1 + 40) contentHelper];
  [v4 cornerRadius];
  [v6 setCornerRadius:?];

  [v6 setBadgeTransitionInfos:*(a1 + 48)];
  v5 = [*(a1 + 40) contentHelper];
  [v6 setContentHelper:v5];

  [v6 setAsset:*(a1 + 56)];
}

- (id)referenceAssetTransitionInfo
{
  v3 = [(PUCarouselSharingViewController *)self view];
  [v3 layoutIfNeeded];

  v4 = [(PUCarouselSharingViewController *)self mainCollectionView];
  v5 = [(PUCarouselSharingViewController *)self _indexPathOfCenterVisibleItemInCollectionView:v4];
  v6 = [v4 cellForItemAtIndexPath:v5];
  v7 = [v6 photoView];
  v8 = [(PUCarouselSharingViewController *)self _assetAtIndexPath:v5];
  v9 = [v7 contentHelper];
  v10 = [v9 photoImage];

  v11 = [(PUCarouselSharingViewController *)self view];
  [(PUCarouselSharingViewController *)self _frameAtIndexPath:v5 inView:v11];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = [(PUCarouselSharingViewController *)self _badgeTransitionInfosForCell:v6];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __63__PUCarouselSharingViewController_referenceAssetTransitionInfo__block_invoke;
  v27[3] = &unk_1E7B7D2E0;
  v32 = v13;
  v33 = v15;
  v34 = v17;
  v35 = v19;
  v28 = v10;
  v29 = v7;
  v30 = v20;
  v31 = v8;
  v21 = v8;
  v22 = v20;
  v23 = v7;
  v24 = v10;
  v25 = [PUAssetTransitionInfo assetTransitionInfoWithConfigurationBlock:v27];

  return v25;
}

void __63__PUCarouselSharingViewController_referenceAssetTransitionInfo__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  [v6 setImage:v3];
  [v6 setFrame:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
  v4 = [*(a1 + 40) contentHelper];
  [v4 cornerRadius];
  [v6 setCornerRadius:?];

  [v6 setBadgeTransitionInfos:*(a1 + 48)];
  v5 = [*(a1 + 40) contentHelper];
  [v6 setContentHelper:v5];

  [v6 setAsset:*(a1 + 56)];
}

- (CGRect)oneUpAssetTransitionAssetFinalFrame:(id)a3
{
  v4 = [(PUCarouselSharingViewController *)self view];
  [v4 layoutIfNeeded];

  v5 = [(PUCarouselSharingViewController *)self currentIndexPath];
  v6 = [(PUCarouselSharingViewController *)self view];
  [(PUCarouselSharingViewController *)self _frameAtIndexPath:v5 inView:v6];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)_frameAtIndexPath:(id)a3 inView:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PUCarouselSharingViewController *)self mainCollectionViewLayout];
  v9 = [v8 layoutAttributesForItemAtIndexPath:v7];

  [v9 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(PUCarouselSharingViewController *)self mainCollectionView];
  [v6 convertRect:v18 fromView:{v11, v13, v15, v17}];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = v20;
  v28 = v22;
  v29 = v24;
  v30 = v26;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (BOOL)prepareForDismissingForced:(BOOL)a3
{
  v5 = [(PUCarouselSharingViewController *)self presentedViewController];
  if (!v5)
  {
    a3 = 1;
  }

  if (!a3)
  {
    NSLog(&cfstr_DismissCancell.isa, self);
  }

  return a3;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = a4;
  v6 = [(PUCarouselSharingViewController *)self mainCollectionView];
  [v5 locationInView:v6];
  v8 = v7;
  v10 = v9;

  v11 = [(PUCarouselSharingViewController *)self mainCollectionView];
  v12 = [(PUCarouselSharingViewController *)self _indexPathInCollectionView:v11 closestToPoint:v8, v10];

  v13 = -[PUCarouselSharingViewController _photoCollectionAtIndex:](self, "_photoCollectionAtIndex:", [v12 section]);
  v14 = [(PUCarouselSharingViewController *)self assetsInAssetCollection:v13];
  v15 = [v14 objectAtIndex:{objc_msgSend(v12, "item")}];
  if ([v15 canPlayPhotoIris])
  {
    v16 = [(PUCarouselSharingViewController *)self mainCollectionView];
    v17 = [v16 _visibleSupplementaryViewOfKind:@"PUPhotosSharingOptionBadgeKind" atIndexPath:v12];
  }

  else
  {
    v17 = 0;
  }

  v18 = [v17 pointInside:0 withEvent:{v8, v10}];

  return v18 ^ 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PUCarouselSharingViewController *)self mainCollectionView];
  tapGestureRecognizer = self->_tapGestureRecognizer;

  if (tapGestureRecognizer == v7)
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

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  v4 = [(PUCarouselSharingViewController *)self _pptOnDidEndScrollingBlock];
  if (v4)
  {
    v5 = v4;
    [(PUCarouselSharingViewController *)self _pptSetOnDidEndScrollingBlock:0];
    v5[2](v5);
    v4 = v5;
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  x = a4.x;
  v49 = *MEMORY[0x1E69E9840];
  v8 = a3;
  [v8 contentOffset];
  v10 = v9;
  v11 = a5->x;
  y = a5->y;
  [v8 bounds];
  width = v50.size.width;
  height = v50.size.height;
  v50.origin.x = v11;
  v50.origin.y = y;
  MidX = CGRectGetMidX(v50);
  v16 = [(PUCarouselSharingViewController *)self mainCollectionViewLayout];
  v17 = [v16 layoutAttributesForItemsInRect:{v11, y, width, height}];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v42 objects:v48 count:16];
  v20 = v18;
  if (!v19)
  {
    goto LABEL_23;
  }

  v21 = v19;
  v41 = a5;
  v22 = *v43;
  v23 = 1.79769313e308;
  v24 = 1.79769313e308;
  do
  {
    for (i = 0; i != v21; ++i)
    {
      if (*v43 != v22)
      {
        objc_enumerationMutation(v18);
      }

      v26 = *(*(&v42 + 1) + 8 * i);
      v27 = [v26 indexPath];
      v28 = [(PUCarouselSharingViewController *)self _assetAtIndexPath:v27];
      if ([(PUCarouselSharingViewController *)self _shouldShowAsset:v28])
      {
        [(PUCarouselSharingViewController *)self _horizontalOffsetInCollectionView:v8 forCenteringOnItemAtIndexPath:v27];
        v30 = v29;
        v31 = v29 > v10 && x > 0.0;
        v32 = v29 < v10 && x < 0.0;
        if (x == 0.0 || v31 || v32)
        {
          [v26 center];
          v34 = vabdd_f64(v33, MidX);
          if (v34 < v23)
          {
            v23 = v34;
            v24 = v30;
          }
        }
      }
    }

    v21 = [v18 countByEnumeratingWithState:&v42 objects:v48 count:16];
  }

  while (v21);

  if (v24 != 1.79769313e308)
  {
    v41->x = v24;
    v41->y = 0.0;
    v35 = [(PUCarouselSharingViewController *)self analyticsEventsSent];
    v36 = [v35 containsObject:@"com.apple.photos.CPAnalytics.shareSheetCarouselScrolled"];

    if ((v36 & 1) == 0)
    {
      v37 = MEMORY[0x1E6991F28];
      v46 = *MEMORY[0x1E6991E20];
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      v47 = v39;
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      [v37 sendEvent:@"com.apple.photos.CPAnalytics.shareSheetCarouselScrolled" withPayload:v40];

      v20 = [(PUCarouselSharingViewController *)self analyticsEventsSent];
      [v20 addObject:@"com.apple.photos.CPAnalytics.shareSheetCarouselScrolled"];
LABEL_23:
    }
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  [(PUScrollViewSpeedometer *)self->_speedometer scrollViewDidScroll:a3];
  [(PUCarouselSharingViewController *)self _updatePreheatedAssets];
  v4 = [(PUCarouselSharingViewController *)self photosSharingTransitionContext];

  if (!v4)
  {
    v5 = [(PUCarouselSharingViewController *)self _indexPathOfCenterVisibleItemInCollectionView:self->_mainCollectionView];
    [(PUCarouselSharingViewController *)self _setLastKnownReferenceAsset:0 indexPath:v5];
  }
}

- (double)layout:(id)a3 collectionView:(id)a4 bottomBadgeInsetforItemAtIndexPath:(id)a5
{
  v5 = [(PUCarouselSharingViewController *)self _assetAtIndexPath:a5, a4];
  if ([v5 playbackStyle] == 4 || (v6 = 0.0, objc_msgSend(v5, "playbackStyle") == 5) && (objc_msgSend(MEMORY[0x1E69C3378], "sharedInstance"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "showLoopBadges"), v7, v8))
  {
    v6 = 24.0;
  }

  return v6;
}

- (CGSize)layout:(id)a3 collectionView:(id)a4 sizeForBadgeViewOfKind:(id)a5 forItemAtIndexPath:(id)a6
{
  v8 = a5;
  v9 = a6;
  if ([v8 isEqualToString:@"PUPhotosSharingSelectionBadgeKind"])
  {
    v10 = [(PUCarouselSharingViewController *)self spec];
    [v10 selectionBadgeSize];
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v12 = *MEMORY[0x1E695F060];
    v14 = *(MEMORY[0x1E695F060] + 8);
    if (![v8 isEqualToString:@"PUPhotosSharingOptionBadgeKind"])
    {
      goto LABEL_8;
    }

    v10 = [(PUCarouselSharingViewController *)self _assetAtIndexPath:v9];
    v15 = +[PURootSettings sharedInstance];
    v16 = [v15 irisUIEnabled];

    if (v16 && [v10 canPlayPhotoIris])
    {
      v17 = [(PUCarouselSharingViewController *)self spec];
      [v17 optionBadgeSize];
      v12 = v18;
      v14 = v19;
    }
  }

LABEL_8:
  v20 = v12;
  v21 = v14;
  result.height = v21;
  result.width = v20;
  return result;
}

- (CGSize)layout:(id)a3 collectionView:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  [(PUCarouselSharingViewController *)self _sizeForItemAtIndexPath:a5, a4];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)collectionView:(id)a3 didEndDisplayingSupplementaryView:(id)a4 forElementOfKind:(id)a5 atIndexPath:(id)a6
{
  v8 = a4;
  if ([a5 isEqualToString:@"PUPhotosSharingOptionBadgeKind"])
  {
    [(NSMapTable *)self->_indexPathsByOptionView removeObjectForKey:v8];
  }
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v13 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = v13;
  if (isKindOfClass)
  {
    v8 = v13;
    v9 = [v8 currentImageRequestID];
    if (v9)
    {
      v10 = [(PUCarouselSharingViewController *)self cachingImageManager];
      [v10 cancelImageRequest:v9];

      [v8 setCurrentImageRequestID:0];
    }

    v11 = [v8 photoView];
    v12 = [v11 contentHelper];

    [v12 setLivePhoto:0];
    [v12 setLoopingVideoAsset:0];
    [v12 setAnimatedImage:0];
    [v12 setLoopingPlaybackAllowed:0];

    v7 = v13;
  }

  MEMORY[0x1EEE66BB8](isKindOfClass, v7);
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v10 isEqualToString:@"PUPhotosSharingSelectionBadgeKind"])
  {
    v12 = [(PUCarouselSharingViewController *)self _selectionViewAtIndexPath:v11 forCollectionView:v9];
  }

  else
  {
    if (![v10 isEqualToString:@"PUPhotosSharingOptionBadgeKind"])
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      [v15 handleFailureInMethod:a2 object:self file:@"PUCarouselSharingViewController.m" lineNumber:1745 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v12 = [(PUCarouselSharingViewController *)self _optionViewAtIndexPath:v11 forCollectionView:v9];
  }

  v13 = v12;

  return v13;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithReuseIdentifier:@"PUPhotosSharingCellIdentifier" forIndexPath:v6];
  [(PUCarouselSharingViewController *)self _updateCell:v7 forItemAtIndexPath:v6];

  return v7;
}

- (void)setHideCellForCurrentReferenceAsset:(BOOL)a3
{
  v3 = a3;
  v9 = [(PUCarouselSharingViewController *)self mainCollectionView];
  v5 = [(PUCarouselSharingViewController *)self _indexPathOfCenterVisibleItemInCollectionView:v9];
  v6 = [v9 cellForItemAtIndexPath:v5];
  v7 = [v9 _visibleSupplementaryViewOfKind:@"PUPhotosSharingSelectionBadgeKind" atIndexPath:v5];
  v8 = [v9 _visibleSupplementaryViewOfKind:@"PUPhotosSharingOptionBadgeKind" atIndexPath:v5];
  [v6 setHidden:v3];
  [v7 setHidden:v3];
  [v8 setHidden:v3];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [(PUCarouselSharingViewController *)self mainCollectionView];
  v9 = [(PUCarouselSharingViewController *)self _indexPathOfCenterVisibleItemInCollectionView:v8];

  inFlightReferenceIndexPath = self->_inFlightReferenceIndexPath;
  self->_inFlightReferenceIndexPath = v9;
  v11 = v9;

  self->_inFlightRotation = 1;
  v13[4] = self;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __86__PUCarouselSharingViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v14[3] = &unk_1E7B7DC38;
  v14[4] = self;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __86__PUCarouselSharingViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v13[3] = &unk_1E7B7DC38;
  [v7 animateAlongsideTransition:v14 completion:v13];
  v12.receiver = self;
  v12.super_class = PUCarouselSharingViewController;
  [(PUCarouselSharingViewController *)&v12 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
}

void *__86__PUCarouselSharingViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [v2 isSuspended];

  [*(a1 + 32) _updateMainViewAnimated:0];
  result = *(a1 + 32);
  if (result[129])
  {
    v5 = [result mainCollectionView];
    [v5 layoutIfNeeded];

    v6 = *(a1 + 32);
    v7 = v6[129];

    return [v6 _pageToIndexPath:v7 animated:v3 ^ 1u];
  }

  return result;
}

uint64_t __86__PUCarouselSharingViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _resetPreheating];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1032);
  *(v2 + 1032) = 0;

  result = [*(a1 + 32) _updateLastKnownReferenceIndexPath];
  *(*(a1 + 32) + 1041) = 0;
  return result;
}

- (void)viewDidLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = PUCarouselSharingViewController;
  [(PUCarouselSharingViewController *)&v8 viewDidLayoutSubviews];
  v3 = [(PUCarouselSharingViewController *)self photosSharingTransitionContext];
  v4 = v3;
  if (self->_shouldScrollToSelection)
  {
    v5 = [v3 keyAssetIndexPath];
    if (v5 || ([(PUCarouselSharingViewController *)self _firstSelectedIndexPath], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v6 = v5;
      [(PUCarouselSharingViewController *)self _pageToIndexPath:v5 animated:0];
    }

    self->_shouldScrollToSelection = 0;
  }

  if (!self->_inFlightRotation)
  {
    inFlightReferenceIndexPath = self->_inFlightReferenceIndexPath;
    self->_inFlightReferenceIndexPath = 0;
  }
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PUCarouselSharingViewController;
  [(PUCarouselSharingViewController *)&v5 viewWillLayoutSubviews];
  if (!self->_inFlightRotation && !self->_inFlightReferenceIndexPath)
  {
    v3 = [(PUCarouselSharingViewController *)self currentIndexPath];
    inFlightReferenceIndexPath = self->_inFlightReferenceIndexPath;
    self->_inFlightReferenceIndexPath = v3;
  }

  [(PUCarouselSharingViewController *)self _updateMainViewAnimated:0];
}

- (void)viewDidLoad
{
  v22 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = PUCarouselSharingViewController;
  [(PUCarouselSharingViewController *)&v19 viewDidLoad];
  [(PUCarouselSharingViewController *)self _updateMainViewAnimated:0];
  [(PUCarouselSharingViewController *)self _setViewInSyncWithModel:0];
  v3 = [(PUCarouselSharingViewController *)self _lastKnownReferenceAsset];
  if (v3)
  {
    goto LABEL_2;
  }

  v4 = [(PUCarouselSharingViewController *)self _lastKnownReferenceIndexPath];

  if (!v4)
  {
    v3 = [(PUCarouselSharingViewController *)self _firstSelectedIndexPath];
    [(PUCarouselSharingViewController *)self _setLastKnownReferenceAsset:0 indexPath:v3];
LABEL_2:
  }

  v5 = [(PUCarouselSharingViewController *)self view];
  v6 = +[PUInterfaceManager currentTheme];
  v7 = [v6 photoCollectionViewBackgroundColor];
  [v5 setBackgroundColor:v7];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = *MEMORY[0x1E69DDF28];
  v20[0] = *MEMORY[0x1E69DDF10];
  v20[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:{2, 0}];
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*(*(&v15 + 1) + 8 * i) modifierFlags:0 action:sel__arrowKey_];
        [v14 setWantsPriorityOverSystemBehavior:1];
        [(PUCarouselSharingViewController *)self addKeyCommand:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v11);
  }
}

- (id)_firstSelectedIndexPath
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__68850;
  v12 = __Block_byref_object_dispose__68851;
  v13 = 0;
  v3 = [(PUCarouselSharingViewController *)self photoSelectionManager];
  photoCollectionsFetchResult = self->_photoCollectionsFetchResult;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__PUCarouselSharingViewController__firstSelectedIndexPath__block_invoke;
  v7[3] = &unk_1E7B7D2B8;
  v7[4] = &v8;
  [v3 enumerateSelectedAssetsWithAssetCollectionOrdering:photoCollectionsFetchResult block:v7];
  v5 = v9[5];

  _Block_object_dispose(&v8, 8);

  return v5;
}

void __58__PUCarouselSharingViewController__firstSelectedIndexPath__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = [MEMORY[0x1E696AC88] indexPathForItem:? inSection:?];
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  *a5 = 1;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PUCarouselSharingViewController;
  [(PUCarouselSharingViewController *)&v5 viewWillDisappear:a3];
  v4 = [(PUCarouselSharingViewController *)self presentedViewController];

  if (!v4)
  {
    self->_shouldPlayVitalityHintAfterViewDidAppear = 0;
  }

  [(PUCarouselSharingViewController *)self _setLoopingPlaybackAllowed:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PUCarouselSharingViewController;
  [(PUCarouselSharingViewController *)&v4 viewDidAppear:a3];
  [(PUCarouselSharingViewController *)self _handlePhotoViewLoaderBlocks];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PUCarouselSharingViewController;
  [(PUCarouselSharingViewController *)&v4 viewWillAppear:a3];
  [(PUCarouselSharingViewController *)self _updateMainViewAnimated:0];
  if (![(PUCarouselSharingViewController *)self _isViewInSyncWithModel])
  {
    [(PUCarouselSharingViewController *)self _updateInterfaceForModelReloadAnimated:0];
  }

  [(PUCarouselSharingViewController *)self _setLoopingPlaybackAllowed:1];
}

- (void)setSendAsAssetBundles:(BOOL)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_sendAsAssetBundles != a3)
  {
    self->_sendAsAssetBundles = a3;
    if (a3)
    {
      v4 = [(PUCarouselSharingViewController *)self photoSelectionManager];
      v5 = [v4 orderedSelectedAssets];

      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v6 = v5;
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

            v11 = [(PUCarouselSharingViewController *)self _activityAssetItemForAsset:*(*(&v13 + 1) + 8 * i) createIfNecessary:0, v13];
            v12 = [v11 copy];
            [v12 setExcludeLiveness:0];
            [v12 setExcludeLocation:0];
            [v12 setExcludeCaption:0];
            [v12 setExcludeAccessibilityDescription:0];
            [(PUCarouselSharingViewController *)self _replaceActivityAssetItem:v11 withAssetItem:v12 notifyDelegate:0];
          }

          v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v8);
      }
    }

    [(PUCarouselSharingViewController *)self _updateVisibleCellBadges];
  }
}

- (void)setReadyForInteraction:(BOOL)a3
{
  if (self->_readyForInteraction != a3)
  {
    self->_readyForInteraction = a3;
    [(PUCarouselSharingViewController *)self _handlePhotoViewLoaderBlocks];
  }
}

- (void)_setLoopingPlaybackAllowed:(BOOL)a3
{
  if (self->__loopingPlaybackAllowed != a3)
  {
    self->__loopingPlaybackAllowed = a3;
    [(PUCarouselSharingViewController *)self _updateAdditionalContentForVisibleCells];
  }
}

- (void)_updateMainViewAnimated:(BOOL)a3
{
  if (![(PUCarouselSharingViewController *)self isViewLoaded])
  {
    return;
  }

  v4 = [(PUCarouselSharingViewController *)self spec];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  [(PUCarouselSharingViewController *)self _getMainCollectionViewFrame:&v27 collectionViewLayoutInsets:&v29];
  v5 = [(PUCarouselSharingViewController *)self mainCollectionView];
  v6 = [(PUCarouselSharingViewController *)self mainCollectionViewLayout];
  [v4 interItemSpacing];
  if (v6)
  {
    if (v5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v16 = v7;
    v6 = objc_alloc_init(PUPhotosSharingCollectionViewLayout);
    -[PUPhotosSharingCollectionViewLayout setSharingBadgesCorner:](v6, "setSharingBadgesCorner:", [v4 selectionBadgeCorner]);
    [v4 selectionBadgeOffset];
    [(PUPhotosSharingCollectionViewLayout *)v6 setSharingBadgesOffset:?];
    [(PUPhotosSharingCollectionViewLayout *)v6 _setWantsRightToLeftHorizontalMirroringIfNeeded:1];
    [(PUHorizontalTiledCollectionViewLayout *)v6 setDelegate:self];
    [(PUCarouselSharingViewController *)self _setMainCollectionViewLayout:v6];
    [(PUHorizontalTiledCollectionViewLayout *)v6 setInteritemSpacing:v16];
    if (v5)
    {
      goto LABEL_4;
    }
  }

  v17 = objc_alloc(MEMORY[0x1E69DC7F0]);
  v5 = [v17 initWithFrame:v6 collectionViewLayout:{v27, v28}];
  [v5 setAutoresizingMask:18];
  [(PUCarouselSharingViewController *)self _setMainCollectionView:v5];
  v18 = [(PUCarouselSharingViewController *)self view];
  [v18 addSubview:v5];

  [v5 setAlwaysBounceVertical:0];
  [v5 setAlwaysBounceHorizontal:1];
  [v5 setPagingEnabled:0];
  [v5 setDecelerationRate:*MEMORY[0x1E69DE3A0]];
  [v5 setDataSource:self];
  [v5 setDelegate:self];
  [v5 setShowsHorizontalScrollIndicator:0];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PUPhotosSharingCellIdentifier"];
  [v5 registerClass:objc_opt_class() forSupplementaryViewOfKind:@"PUPhotosSharingSelectionBadgeKind" withReuseIdentifier:@"PUPhotosSharingBadgeIdentifier"];
  [v5 registerClass:objc_opt_class() forSupplementaryViewOfKind:@"PUPhotosSharingOptionBadgeKind" withReuseIdentifier:@"PUPhotosSharingOptionIdentifier"];
  [v5 setContentInsetAdjustmentBehavior:2];
  v19 = +[PUInterfaceManager currentTheme];
  v20 = [v19 photoCollectionViewBackgroundColor];

  [v5 setBackgroundColor:v20];
  v21 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTapInMainCollectionView_];
  tapGestureRecognizer = self->_tapGestureRecognizer;
  self->_tapGestureRecognizer = v21;

  [(UITapGestureRecognizer *)self->_tapGestureRecognizer setNumberOfTapsRequired:1];
  [(UITapGestureRecognizer *)self->_tapGestureRecognizer setNumberOfTouchesRequired:1];
  [(UITapGestureRecognizer *)self->_tapGestureRecognizer setDelegate:self];
  [v5 addGestureRecognizer:self->_tapGestureRecognizer];
  v23 = objc_alloc_init(PUScrollViewSpeedometer);
  speedometer = self->_speedometer;
  self->_speedometer = v23;

  [(PUScrollViewSpeedometer *)self->_speedometer setMediumLowerThreshold:100.0];
  [(PUScrollViewSpeedometer *)self->_speedometer setMediumUpperThreshold:500.0];
  [(PUScrollViewSpeedometer *)self->_speedometer setFastLowerThreshold:500.0];
  [(PUScrollViewSpeedometer *)self->_speedometer setFastUpperThreshold:1000.0];
  [(PUScrollViewSpeedometer *)self->_speedometer setDelegate:self];

LABEL_4:
  [v5 setFrame:{v27, v28}];
  v25 = 0;
  v26 = 0;
  [(PUCarouselSharingViewController *)self _getFirstValidIndexPath:&v26 lastValidIndexPath:&v25];
  v8 = v26;
  v9 = v25;
  v10 = v9;
  if (v8 && v9)
  {
    [(PUCarouselSharingViewController *)self _sizeForItemAtIndexPath:v8];
    v12 = v11;
    [(PUCarouselSharingViewController *)self _sizeForItemAtIndexPath:v10];
    v13 = *(&v29 + 1) + round((*&v28 - v12) * 0.5);
    v15 = *(&v30 + 1) + round((*&v28 - v14) * 0.5);
    *(&v29 + 1) = v13;
    *(&v30 + 1) = v15;
  }

  else
  {
    v13 = *(&v29 + 1);
    v15 = *(&v30 + 1);
  }

  [(PUHorizontalTiledCollectionViewLayout *)v6 setItemsContentInset:*&v29, v13, *&v30, v15];
}

- (void)_processCollectionListChangeNotifications:(id)a3 singleCollectionNotifications:(id)a4 needsReloadData:(BOOL)a5
{
  v5 = a5;
  v18 = a4;
  if (![a3 count] && !objc_msgSend(v18, "count"))
  {
    goto LABEL_19;
  }

  v8 = [(PUCarouselSharingViewController *)self _lastKnownReferenceAsset];
  v9 = [(PUCarouselSharingViewController *)self _lastKnownReferenceIndexPath];
  v10 = v9;
  if (!v8)
  {
    v12 = 0;
    goto LABEL_9;
  }

  if (v9)
  {
    v11 = [v9 section];
  }

  else
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v12 = [(PUCarouselSharingViewController *)self _indexPathOfAsset:v8 sectionHint:v11];
  if (!v12)
  {
LABEL_9:
    if (v10)
    {
      v12 = [(PUCarouselSharingViewController *)self _validIndexPathFromIndexPath:v10];
    }
  }

  [(PUCarouselSharingViewController *)self _setLastKnownReferenceAsset:0 indexPath:v12];
  if (self->_inFlightReferenceIndexPath)
  {
    v13 = [(PUCarouselSharingViewController *)self _validIndexPathFromIndexPath:?];
    inFlightReferenceIndexPath = self->_inFlightReferenceIndexPath;
    self->_inFlightReferenceIndexPath = v13;
  }

  if (v5)
  {
    if (-[PUCarouselSharingViewController isViewLoaded](self, "isViewLoaded") && (-[PUCarouselSharingViewController view](self, "view"), v15 = objc_claimAutoreleasedReturnValue(), [v15 window], v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v16))
    {
      v17 = [(PUCarouselSharingViewController *)self mainCollectionView];
      [v17 reloadData];

      [(PUCarouselSharingViewController *)self _setViewInSyncWithModel:1];
      [(PUCarouselSharingViewController *)self _updatePreheatedAssets];
    }

    else
    {
      [(PUCarouselSharingViewController *)self _setViewInSyncWithModel:0];
    }
  }

LABEL_19:
}

- (void)photoLibraryDidChangeOnMainQueue:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [(PUCarouselSharingViewController *)self photoCollectionsFetchResult];
  v7 = [v4 changeDetailsForFetchResult:v6];

  if (v7)
  {
    if (([v7 hasMoves] & 1) == 0 && objc_msgSend(v7, "hasIncrementalChanges"))
    {
      v8 = [v7 insertedIndexes];
      if ([v8 count])
      {
      }

      else
      {
        v9 = [v7 removedIndexes];
        v10 = [v9 count] == 0;

        if (v10)
        {
LABEL_8:
          [v5 addObject:v7];
          v11 = [v7 fetchResultAfterChanges];
          photoCollectionsFetchResult = self->_photoCollectionsFetchResult;
          self->_photoCollectionsFetchResult = v11;

          goto LABEL_9;
        }
      }
    }

    *(v37 + 24) = 1;
    goto LABEL_8;
  }

LABEL_9:
  v13 = [MEMORY[0x1E695DF90] dictionary];
  resultsForAssetCollection = self->_resultsForAssetCollection;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __68__PUCarouselSharingViewController_photoLibraryDidChangeOnMainQueue___block_invoke;
  v32[3] = &unk_1E7B7D268;
  v15 = v4;
  v33 = v15;
  v35 = &v36;
  v16 = v13;
  v34 = v16;
  [(NSMutableDictionary *)resultsForAssetCollection enumerateKeysAndObjectsUsingBlock:v32];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = self->__preheatedAssets;
  v18 = [(NSMutableSet *)v17 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v18)
  {
    v19 = *v29;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = [v15 changeDetailsForObject:*(*(&v28 + 1) + 8 * i)];
        if ([v21 assetContentChanged])
        {
          *(v37 + 24) = 1;

          goto LABEL_19;
        }
      }

      v18 = [(NSMutableSet *)v17 countByEnumeratingWithState:&v28 objects:v40 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __68__PUCarouselSharingViewController_photoLibraryDidChangeOnMainQueue___block_invoke_2;
  v27[3] = &unk_1E7B7D290;
  v27[4] = self;
  [v16 enumerateKeysAndObjectsUsingBlock:v27];
  if ([v5 count] || objc_msgSend(v16, "count"))
  {
    v22 = [(PUCarouselSharingViewController *)self photoSelectionManager];
    [v22 handlePhotoLibraryChange:v15];

    v23 = [(PUCarouselSharingViewController *)self photoSelectionManager];
    v24 = [v23 orderedSelectedAssets];

    v25 = [(PUCarouselSharingViewController *)self _updatedActivityAssetItemsForAssets:v24];
    v26 = [(PUCarouselSharingViewController *)self delegate];
    [v26 carouselSharingViewController:self setAssetItems:v25];

    [(PUCarouselSharingViewController *)self _processCollectionListChangeNotifications:v5 singleCollectionNotifications:v16 needsReloadData:*(v37 + 24)];
  }

  _Block_object_dispose(&v36, 8);
}

void __68__PUCarouselSharingViewController_photoLibraryDidChangeOnMainQueue___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  v5 = [*(a1 + 32) changeDetailsForFetchResult:a3];
  v6 = v5;
  if (v5)
  {
    if (([v5 hasMoves] & 1) == 0 && objc_msgSend(v6, "hasIncrementalChanges"))
    {
      v7 = [v6 insertedIndexes];
      if ([v7 count])
      {
      }

      else
      {
        v8 = [v6 removedIndexes];
        v9 = [v8 count];

        if (!v9)
        {
LABEL_8:
          [*(a1 + 40) setObject:v6 forKey:v10];
          goto LABEL_9;
        }
      }
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    goto LABEL_8;
  }

LABEL_9:
}

void __68__PUCarouselSharingViewController_photoLibraryDidChangeOnMainQueue___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(*(a1 + 32) + 1000);
  v5 = a2;
  v6 = [a3 fetchResultAfterChanges];
  [v4 setObject:v6 forKey:v5];
}

- (void)ppt_faultInScollViewContentSize
{
  v5 = 0;
  v6 = 0;
  [(PUCarouselSharingViewController *)self _getFirstValidIndexPath:&v6 lastValidIndexPath:&v5];
  v3 = v6;
  v4 = v5;
  [(PUCarouselSharingViewController *)self _pageToIndexPath:v4 animated:0];
  [(PUCarouselSharingViewController *)self _pageToIndexPath:v3 animated:0];
}

- (BOOL)ppt_scrollToAssetAtRelativeIndex:(int64_t)a3 completion:(id)a4
{
  v7 = a4;
  if (a3 != -1 && a3 != 1)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PUCarouselSharingViewController.m" lineNumber:1325 description:@"only support single step"];
  }

  v9 = [(PUCarouselSharingViewController *)self currentIndexPath];
  v10 = [(PUCarouselSharingViewController *)self mainCollectionView];
  v11 = [v10 next:a3 indexPathFromIndexPath:v9];

  if (v11)
  {
    [(PUCarouselSharingViewController *)self _pptSetOnDidEndScrollingBlock:v7];
    [(PUCarouselSharingViewController *)self _pageToIndexPath:v11 animated:1];
  }

  return v11 != 0;
}

- (CGRect)frameForBadgeOfKind:(id)a3 forItemFrame:(CGRect)a4 atIndexPath:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3;
  v12 = a5;
  v13 = [[PUPhotosSharingCollectionViewItemSublayout alloc] initWithIndexPath:v12 itemFrame:x, y, width, height];
  [(PUCarouselSharingViewController *)self layout:0 collectionView:0 sizeForBadgeViewOfKind:@"PUPhotosSharingSelectionBadgeKind" forItemAtIndexPath:v12];
  [(PUPhotosSharingCollectionViewItemSublayout *)v13 setSelectionBadgeSize:?];
  [(PUCarouselSharingViewController *)self layout:0 collectionView:0 sizeForBadgeViewOfKind:@"PUPhotosSharingOptionBadgeKind" forItemAtIndexPath:v12];
  v15 = v14;
  v17 = v16;

  [(PUPhotosSharingCollectionViewItemSublayout *)v13 setOptionBadgeSize:v15, v17];
  LOBYTE(v12) = [v11 isEqualToString:@"PUPhotosSharingSelectionBadgeKind"];
  v18 = [(PUCarouselSharingViewController *)self spec];
  v19 = v18;
  if (v12)
  {
    v20 = [v18 selectionBadgeCorner];
  }

  else
  {
    v20 = [v18 optionBadgeCorner];
  }

  v21 = v20;

  [(PUPhotosSharingCollectionViewItemSublayout *)v13 setBadgesCorner:v21];
  v22 = [(PUCarouselSharingViewController *)self spec];
  [v22 selectionBadgeOffset];
  [(PUPhotosSharingCollectionViewItemSublayout *)v13 setBadgesOffset:?];

  [(PUPhotosSharingCollectionViewItemSublayout *)v13 prepareSublayout];
  if ([v11 isEqualToString:@"PUPhotosSharingSelectionBadgeKind"])
  {
    v23 = [(PUPhotosSharingCollectionViewItemSublayout *)v13 selectionBadgeLayoutAttributes];
  }

  else
  {
    if (![v11 isEqualToString:@"PUPhotosSharingOptionBadgeKind"])
    {
LABEL_10:
      v26 = *MEMORY[0x1E695F058];
      v28 = *(MEMORY[0x1E695F058] + 8);
      v30 = *(MEMORY[0x1E695F058] + 16);
      v32 = *(MEMORY[0x1E695F058] + 24);
      goto LABEL_11;
    }

    v23 = [(PUPhotosSharingCollectionViewItemSublayout *)v13 optionBadgeLayoutAttributes];
  }

  v24 = v23;
  if (!v23)
  {
    goto LABEL_10;
  }

  [v23 frame];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

LABEL_11:
  v33 = v26;
  v34 = v28;
  v35 = v30;
  v36 = v32;
  result.size.height = v36;
  result.size.width = v35;
  result.origin.y = v34;
  result.origin.x = v33;
  return result;
}

- (void)_updatePreheatedAssets
{
  v85 = *MEMORY[0x1E69E9840];
  v3 = [(PUCarouselSharingViewController *)self mainCollectionView];
  [v3 bounds];
  x = v86.origin.x;
  y = v86.origin.y;
  width = v86.size.width;
  height = v86.size.height;
  if (!CGRectIsEmpty(v86))
  {
    if (([(PUCarouselSharingViewController *)self interfaceOrientation]- 1) >= 2)
    {
      v8 = height;
    }

    else
    {
      v8 = width;
    }

    [(PUCarouselSharingViewController *)self _previousPreheatRect];
    v10 = v9;
    v87.origin.x = x;
    v87.origin.y = y;
    v87.size.width = width;
    v87.size.height = height;
    v88 = CGRectInset(v87, v8 * -2.0, 0.0);
    v11 = v88.origin.x;
    v12 = v88.origin.y;
    v13 = v88.origin.x - v10;
    if (v13 < 0.0)
    {
      v13 = -v13;
    }

    if (v13 > v8 / 3.0)
    {
      v14 = v88.size.width;
      v15 = v88.size.height;
      if ([(PUCarouselSharingViewController *)self px_isVisible])
      {
        [(PUCarouselSharingViewController *)self _setPreviousPreheatRect:v11, v12, v14, v15];
        photosSharingTransitionContext = self->_photosSharingTransitionContext;
        v17 = [v3 collectionViewLayout];
        v18 = v17;
        if (photosSharingTransitionContext)
        {
          [v17 layoutAttributesForElementsInRect:{v11, v12, v14, v15}];
        }

        else
        {
          [v17 layoutAttributesForItemsInRect:{v11, v12, v14, v15}];
        }
        v19 = ;

        v20 = [MEMORY[0x1E695DF90] dictionary];
        v21 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v19, "count")}];
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v22 = v19;
        v23 = v20;
        obj = v22;
        v24 = [v22 countByEnumeratingWithState:&v76 objects:v84 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v77;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v77 != v26)
              {
                objc_enumerationMutation(obj);
              }

              v28 = *(*(&v76 + 1) + 8 * i);
              if (![v28 representedElementCategory])
              {
                v29 = [v28 indexPath];
                v30 = [(PUCarouselSharingViewController *)self _assetAtIndexPath:v29];
                [v21 addObject:v30];
                [v23 setObject:v28 forKey:v30];
              }
            }

            v25 = [obj countByEnumeratingWithState:&v76 objects:v84 count:16];
          }

          while (v25);
        }

        v31 = [(PUCarouselSharingViewController *)self _preheatedAssets];
        [(PUCarouselSharingViewController *)self _setPreheatedAssets:v21];
        v32 = [v21 mutableCopy];
        [v32 minusSet:v31];
        v65 = [v31 mutableCopy];
        [v65 minusSet:v21];
        if ([v32 count] || objc_msgSend(v65, "count"))
        {
          v61 = v31;
          v62 = v21;
          v64 = v3;
          v33 = objc_opt_new();
          v34 = [(PUCarouselSharingViewController *)self cachingImageManager];
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          v75 = 0u;
          v60 = v32;
          v35 = v32;
          v36 = [v35 countByEnumeratingWithState:&v72 objects:v83 count:16];
          if (v36)
          {
            v37 = v36;
            v38 = *v73;
            do
            {
              for (j = 0; j != v37; ++j)
              {
                if (*v73 != v38)
                {
                  objc_enumerationMutation(v35);
                }

                v40 = *(*(&v72 + 1) + 8 * j);
                v41 = [v23 objectForKeyedSubscript:{v40, v60}];
                [v41 frame];
                v43 = PUPixelSizeFromPointSize(v42);
                v45 = v44;
                v82 = v40;
                v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v82 count:1];
                [v34 startCachingImagesForAssets:v46 targetSize:0 contentMode:v33 options:{v43, v45}];
              }

              v37 = [v35 countByEnumeratingWithState:&v72 objects:v83 count:16];
            }

            while (v37);
          }

          v63 = v23;

          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          v66 = v65;
          v47 = [v66 countByEnumeratingWithState:&v68 objects:v81 count:16];
          if (v47)
          {
            v48 = v47;
            v49 = *v69;
            do
            {
              for (k = 0; k != v48; ++k)
              {
                if (*v69 != v49)
                {
                  objc_enumerationMutation(v66);
                }

                v51 = *(*(&v68 + 1) + 8 * k);
                v52 = [(PUCarouselSharingViewController *)self _indexPathOfAsset:v51 sectionHint:0x7FFFFFFFFFFFFFFFLL, v60];
                v53 = [(PUCarouselSharingViewController *)self mainCollectionViewLayout];
                v54 = [v53 layoutAttributesForItemAtIndexPath:v52];

                [v54 frame];
                v56 = PUPixelSizeFromPointSize(v55);
                v58 = v57;
                v80 = v51;
                v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];
                [v34 stopCachingImagesForAssets:v59 targetSize:0 contentMode:v33 options:{v56, v58}];
              }

              v48 = [v66 countByEnumeratingWithState:&v68 objects:v81 count:16];
            }

            while (v48);
          }

          v23 = v63;
          v3 = v64;
          v31 = v61;
          v21 = v62;
          v32 = v60;
        }
      }
    }
  }
}

- (void)_resetPreheating
{
  [(PHCachingImageManager *)self->_cachingImageManager stopCachingImagesForAllAssets];
  [(PUCarouselSharingViewController *)self _setPreviousPreheatRect:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  [(PUCarouselSharingViewController *)self _setPreheatedAssets:0];
}

- (id)_optionViewAtIndexPath:(id)a3 forCollectionView:(id)a4
{
  if (a4)
  {
    v7 = a3;
    v8 = [a4 dequeueReusableSupplementaryViewOfKind:@"PUPhotosSharingOptionBadgeKind" withReuseIdentifier:@"PUPhotosSharingOptionIdentifier" forIndexPath:v7];
    [(PUPhotosSharingOptionView *)v8 setTarget:self action:sel__handleSelectionOption_];
    [(NSMapTable *)self->_indexPathsByOptionView setObject:v7 forKey:v8];
  }

  else
  {
    v9 = a3;
    v8 = objc_alloc_init(PUPhotosSharingOptionView);
  }

  [(PUCarouselSharingViewController *)self _updateOptionView:v8 atIndexPath:a3];

  return v8;
}

- (id)_selectionViewAtIndexPath:(id)a3 forCollectionView:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PUCarouselSharingViewController.m" lineNumber:1206 description:{@"Invalid parameter not satisfying: %@", @"collectionView"}];
  }

  v9 = [v8 dequeueReusableSupplementaryViewOfKind:@"PUPhotosSharingSelectionBadgeKind" withReuseIdentifier:@"PUPhotosSharingBadgeIdentifier" forIndexPath:v7];
  v10 = -[PUCarouselSharingViewController _photoCollectionAtIndex:](self, "_photoCollectionAtIndex:", [v7 section]);
  v11 = [(PUCarouselSharingViewController *)self photoSelectionManager];
  v12 = [v11 isAssetAtIndexSelected:objc_msgSend(v7 inAssetCollection:{"item"), v10}];

  [v9 setSelected:v12 animated:0];

  return v9;
}

- (void)setPhotosSharingTransitionLayout:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v12 = a3;
  v7 = [(PUCarouselSharingViewController *)self _transitionLayout];

  v8 = v12;
  if (v7 != v12)
  {
    objc_storeStrong(&self->__transitionLayout, a3);
    if (v12)
    {
      v9 = v12;
    }

    else
    {
      v9 = [(PUCarouselSharingViewController *)self mainCollectionViewLayout];
    }

    v10 = v9;
    v11 = [(PUCarouselSharingViewController *)self mainCollectionView];
    [v11 setCollectionViewLayout:v10 animated:v4];

    v8 = v12;
  }
}

- (void)_updateCellAtIndexPath:(id)a3 withTransitionInfo:(id)a4
{
  v25 = a4;
  v7 = a3;
  v8 = [(PUCarouselSharingViewController *)self mainCollectionView];
  v9 = [v8 cellForItemAtIndexPath:v7];

  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = [v9 px_descriptionForAssertionMessage];
      [v21 handleFailureInMethod:a2 object:self file:@"PUCarouselSharingViewController.m" lineNumber:1180 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"[self.mainCollectionView cellForItemAtIndexPath:indexPath]", v23, v24}];
    }

    v10 = [v25 image];
    v11 = [v9 photoView];
    v12 = [v11 contentHelper];
    v13 = [v12 photoImage];

    [v10 size];
    v15 = v14;
    [v13 size];
    if (v15 > v16)
    {
      v17 = [v9 photoView];
      v18 = [v17 contentHelper];
      [v18 setPhotoImage:0];

      v19 = [v9 photoView];
      v20 = [v19 contentHelper];
      [v20 setPlaceHolderImage:v10];
    }
  }
}

- (void)_updateAssetTransitionInfo:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v15 = v5;
    v6 = [v5 asset];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_6:

      v5 = v15;
      goto LABEL_7;
    }

    v7 = v6;
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_5:
        v8 = [(PUCarouselSharingViewController *)self currentIndexPath];
        v9 = -[PUCarouselSharingViewController _indexPathOfAsset:sectionHint:](self, "_indexPathOfAsset:sectionHint:", v7, [v8 section]);

        [(PUCarouselSharingViewController *)self _updateCellAtIndexPath:v9 withTransitionInfo:v15];
        goto LABEL_6;
      }

      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = objc_opt_class();
      v12 = NSStringFromClass(v13);
      v14 = [v7 px_descriptionForAssertionMessage];
      [v10 handleFailureInMethod:a2 object:self file:@"PUCarouselSharingViewController.m" lineNumber:1172 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"displayAsset", v12, v14}];
    }

    else
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      [v10 handleFailureInMethod:a2 object:self file:@"PUCarouselSharingViewController.m" lineNumber:1172 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"displayAsset", v12}];
    }

    goto LABEL_5;
  }

LABEL_7:
}

- (void)setTrailingAssetTransitionInfo:(id)a3
{
  v5 = a3;
  if (self->_trailingAssetTransitionInfo != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_trailingAssetTransitionInfo, a3);
    [(PUCarouselSharingViewController *)self _updateAssetTransitionInfo:self->_trailingAssetTransitionInfo];
    v5 = v6;
  }
}

- (void)setLeadingAssetTransitionInfo:(id)a3
{
  v5 = a3;
  if (self->_leadingAssetTransitionInfo != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_leadingAssetTransitionInfo, a3);
    [(PUCarouselSharingViewController *)self _updateAssetTransitionInfo:self->_leadingAssetTransitionInfo];
    v5 = v6;
  }
}

- (void)setOneUpPhotosSharingTransitionInfo:(id)a3
{
  v6 = a3;
  if (self->_assetTransitionInfo != v6)
  {
    objc_storeStrong(&self->_assetTransitionInfo, a3);
    if (self->_assetTransitionInfo)
    {
      v5 = [(PUCarouselSharingViewController *)self currentIndexPath];
      [(PUCarouselSharingViewController *)self _updateCellAtIndexPath:v5 withTransitionInfo:self->_assetTransitionInfo];
    }
  }
}

- (void)setOneUpPhotosSharingTransitionContext:(id)a3
{
  v6 = a3;
  if (self->_photosSharingTransitionContext != v6)
  {
    v15 = v6;
    objc_storeStrong(&self->_photosSharingTransitionContext, a3);
    v6 = v15;
    if (v15)
    {
      v7 = [(PUPhotosSharingTransitionContext *)v15 currentAssetReference];
      v8 = [v7 asset];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_7:

        v6 = v15;
        goto LABEL_8;
      }

      v9 = v8;
      if (v9)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
LABEL_6:
          [(PUCarouselSharingViewController *)self _setLastKnownReferenceAsset:v9 indexPath:0];

          goto LABEL_7;
        }

        v10 = [MEMORY[0x1E696AAA8] currentHandler];
        v13 = objc_opt_class();
        v12 = NSStringFromClass(v13);
        v14 = [v9 px_descriptionForAssertionMessage];
        [v10 handleFailureInMethod:a2 object:self file:@"PUCarouselSharingViewController.m" lineNumber:1133 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"displayAsset", v12, v14}];
      }

      else
      {
        v10 = [MEMORY[0x1E696AAA8] currentHandler];
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        [v10 handleFailureInMethod:a2 object:self file:@"PUCarouselSharingViewController.m" lineNumber:1133 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"displayAsset", v12}];
      }

      goto LABEL_6;
    }
  }

LABEL_8:
}

- (void)setPhotosSharingTransitionContext:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_photosSharingTransitionContext != v5)
  {
    objc_storeStrong(&self->_photosSharingTransitionContext, a3);
    photosSharingTransitionContext = self->_photosSharingTransitionContext;
    if (photosSharingTransitionContext)
    {
      v7 = [(PUPhotosSharingTransitionContext *)photosSharingTransitionContext keyAssetIndexPath];
      [(PUCarouselSharingViewController *)self _setLastKnownReferenceAsset:0 indexPath:v7];
    }

    v8 = [(PUCarouselSharingViewController *)self mainCollectionView];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = [v8 visibleCells];
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v16 + 1) + 8 * i);
          v15 = [v8 indexPathForCell:v14];
          [(PUCarouselSharingViewController *)self _updateCell:v14 forItemAtIndexPath:v15];
        }

        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }
}

- (PHAsset)currentAsset
{
  v3 = [(PUCarouselSharingViewController *)self _lastKnownReferenceAsset];
  if (v3)
  {
    v4 = [(PUCarouselSharingViewController *)self currentIndexPath];
    if (v4)
    {
      v5 = [(PUCarouselSharingViewController *)self _lastKnownReferenceAsset];

      v3 = v5;
    }
  }

  return v3;
}

- (id)currentIndexPath
{
  v3 = [(PUCarouselSharingViewController *)self _lastKnownReferenceIndexPath];

  if (v3 && ([(PUCarouselSharingViewController *)self _lastKnownReferenceIndexPath], (v4 = objc_claimAutoreleasedReturnValue()) != 0) || ([(PUCarouselSharingViewController *)self _updateLastKnownReferenceIndexPath], [(PUCarouselSharingViewController *)self _lastKnownReferenceIndexPath], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
LABEL_4:
    v5 = v4;
    goto LABEL_5;
  }

  v7 = [(PUCarouselSharingViewController *)self _lastKnownReferenceAsset];

  if (!v7 || ([(PUCarouselSharingViewController *)self _lastKnownReferenceAsset], v8 = objc_claimAutoreleasedReturnValue(), [(PUCarouselSharingViewController *)self _indexPathOfAsset:v8 sectionHint:0x7FFFFFFFFFFFFFFFLL], v5 = objc_claimAutoreleasedReturnValue(), v8, !v5))
  {
    v4 = self->_inFlightReferenceIndexPath;
    if (!v4)
    {
      v9 = 0;
      [(PUCarouselSharingViewController *)self _getFirstValidIndexPath:&v9 lastValidIndexPath:0];
      v4 = v9;
    }

    goto LABEL_4;
  }

LABEL_5:
  [(PUCarouselSharingViewController *)self _setLastKnownReferenceAsset:0 indexPath:v5];

  return v5;
}

- (void)_setLastKnownReferenceAsset:(id)a3 indexPath:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ((!v7 || v6) && !v7 && v6)
  {
    v7 = [(PUCarouselSharingViewController *)self _assetAtIndexPath:v6];
  }

  [(PUCarouselSharingViewController *)self _setLastKnownReferenceIndexPath:v6];
  [(PUCarouselSharingViewController *)self _setLastKnownReferenceAsset:v7];
}

- (void)_updateLastKnownReferenceIndexPath
{
  v5 = [(PUCarouselSharingViewController *)self mainCollectionView];
  v3 = [(PUCarouselSharingViewController *)self mainCollectionViewLayout];
  if (v5 && [v3 hasReferenceIndexPath])
  {
    v4 = [(PUCarouselSharingViewController *)self _indexPathOfCenterVisibleItemInCollectionView:v5];
    [(PUCarouselSharingViewController *)self _setLastKnownReferenceAsset:0 indexPath:v4];
  }
}

- (id)_validIndexPathFromIndexPath:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PUCarouselSharingViewController.m" lineNumber:1024 description:@"expected index path"];
  }

  v6 = [(PUCarouselSharingViewController *)self _numberOfSections]- 1;
  v7 = [v5 section];
  if (v6 >= v7)
  {
    v6 = v7;
  }

  v8 = [v5 item];
  if ((v6 & 0x8000000000000000) == 0)
  {
    v9 = v8;
    v10 = [(PUCarouselSharingViewController *)self _numberOfItemsInSection:v6];
    if (v10)
    {
LABEL_12:
      if (v10 - 1 >= v9)
      {
        v12 = v9;
      }

      else
      {
        v12 = v10 - 1;
      }

      v11 = [MEMORY[0x1E696AC88] indexPathForItem:v12 inSection:v6];
      goto LABEL_16;
    }

    while (v6 > 0)
    {
      v10 = [(PUCarouselSharingViewController *)self _numberOfItemsInSection:--v6];
      if (v10)
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_12;
      }
    }
  }

  v11 = 0;
LABEL_16:

  return v11;
}

- (void)_getMainCollectionViewFrame:(CGRect *)a3 collectionViewLayoutInsets:(UIEdgeInsets *)a4
{
  v6 = [(PUCarouselSharingViewController *)self view];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  if (a3)
  {
    a3->origin.x = v8;
    a3->origin.y = v10;
    a3->size.width = v12;
    a3->size.height = v14;
  }

  if (a4)
  {
    v15 = *(MEMORY[0x1E69DDCE0] + 16);
    *&a4->top = *MEMORY[0x1E69DDCE0];
    *&a4->bottom = v15;
  }
}

- (CGRect)_collectionViewContentFrame
{
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  [(PUCarouselSharingViewController *)self _getMainCollectionViewFrame:&v8 collectionViewLayoutInsets:&v6];
  v2 = *&v8 + *(&v6 + 1);
  v3 = *(&v8 + 1) + *&v6;
  v4 = *&v9 - (*(&v6 + 1) + *(&v7 + 1));
  v5 = *(&v9 + 1) - (*&v6 + *&v7);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)_handleTapInMainCollectionView:(id)a3
{
  v4 = a3;
  v8 = [(PUCarouselSharingViewController *)self mainCollectionView];
  [v4 locationInView:v8];
  v6 = v5;

  v7 = [(PUCarouselSharingViewController *)self _indexPathInCollectionView:v8 closestToContentOffsetX:v6];
  if (v7)
  {
    [(PUCarouselSharingViewController *)self _handleTapAtIndexPath:v7];
  }
}

- (void)_handleTapAtIndexPath:(id)a3
{
  v9 = a3;
  v4 = [(PUCarouselSharingViewController *)self mainCollectionView];
  v5 = [(PUCarouselSharingViewController *)self _assetAtIndexPath:v9];
  if ([v5 canPerformSharingAction] && -[PUCarouselSharingViewController selectionEnabled](self, "selectionEnabled"))
  {
    v6 = -[PUCarouselSharingViewController _photoCollectionAtIndex:](self, "_photoCollectionAtIndex:", [v9 section]);
    v7 = [(PUCarouselSharingViewController *)self photoSelectionManager];
    v8 = [v7 isAssetAtIndexSelected:objc_msgSend(v9 inAssetCollection:{"item"), v6}];

    [(PUCarouselSharingViewController *)self _setSelected:v8 ^ 1u atIndexPath:v9 animated:0];
  }

  if (([v4 isDragging] & 1) == 0 && (objc_msgSend(v4, "isDecelerating") & 1) == 0 && objc_msgSend(v4, "isTracking"))
  {
    [(PUCarouselSharingViewController *)self _pageToIndexPath:v9 animated:1];
  }
}

- (void)_playLivePhotoHintIfNeededAtIndexPath:(id)a3
{
  mainCollectionView = self->_mainCollectionView;
  v5 = a3;
  v14 = [(UICollectionView *)mainCollectionView cellForItemAtIndexPath:v5];
  v6 = [(PUCarouselSharingViewController *)self _assetAtIndexPath:v5];
  v7 = [(PUCarouselSharingViewController *)self _activityAssetItemForAsset:v6 createIfNecessary:0];
  v8 = -[PUCarouselSharingViewController _photoCollectionAtIndex:](self, "_photoCollectionAtIndex:", [v5 section]);
  v9 = [(PUCarouselSharingViewController *)self photoSelectionManager];
  v10 = [v5 item];

  v11 = [v9 isAssetAtIndexSelected:v10 inAssetCollection:v8];
  if (([v7 excludeLiveness] & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v14 photoView];
      v13 = [v12 contentHelper];

      if (v11)
      {
        [v13 startPlaybackWithStyle:2];
      }

      else
      {
        [v13 stopPlayback];
      }
    }
  }
}

- (void)_arrowKey:(id)a3
{
  v16 = a3;
  v4 = [(PUCarouselSharingViewController *)self viewIfLoaded];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 effectiveUserInterfaceLayoutDirection];
    v7 = [v16 input];
    v8 = [v7 isEqualToString:*MEMORY[0x1E69DDF28]];

    if (v8)
    {
      if (v6 == 1)
      {
        v9 = -1;
      }

      else
      {
        v9 = 1;
      }
    }

    else
    {
      v10 = [v16 input];
      v11 = [v10 isEqualToString:*MEMORY[0x1E69DDF10]];

      if (v6 == 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = -1;
      }

      if (v11)
      {
        v9 = v12;
      }

      else
      {
        v9 = 0;
      }
    }

    v13 = [(PUCarouselSharingViewController *)self currentIndexPath];
    v14 = [(PUCarouselSharingViewController *)self mainCollectionView];
    v15 = [v14 next:v9 indexPathFromIndexPath:v13];

    if (v15)
    {
      [(PUCarouselSharingViewController *)self _pageToIndexPath:v15 animated:1];
    }
  }
}

- (void)_handleSelectionOption:(id)a3
{
  v29[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [(NSMapTable *)self->_indexPathsByOptionView objectForKey:v6];
  v8 = [(PUCarouselSharingViewController *)self _assetAtIndexPath:v7];
  v9 = [(PUCarouselSharingViewController *)self _activityAssetItemForAsset:v8 createIfNecessary:0];
  v10 = -[PUCarouselSharingViewController _photoCollectionAtIndex:](self, "_photoCollectionAtIndex:", [v7 section]);
  v11 = [(PUCarouselSharingViewController *)self photoSelectionManager];
  v12 = [v11 isAssetAtIndexSelected:objc_msgSend(v7 inAssetCollection:{"item"), v10}];

  if (v12)
  {
    v13 = [v9 copy];
    v14 = [v9 excludeLiveness] ^ 1;
    [v13 setExcludeLiveness:v14];
    v27 = v13;
    [(PUCarouselSharingViewController *)self _replaceActivityAssetItem:v9 withAssetItem:v13 notifyDelegate:1];
    [(PUCarouselSharingViewController *)self _updateOptionView:v6 atIndexPath:v7];
    v15 = [v8 canPlayPhotoIris];
    if ((v14 & 1) == 0 && v15)
    {
      [(PUCarouselSharingViewController *)self _playLivePhotoHintIfNeededAtIndexPath:v7];
    }

    v16 = [(PUCarouselSharingViewController *)self mainCollectionView];
    v17 = [v16 cellForItemAtIndexPath:v7];

    v26 = v17;
    v18 = [v17 photoView];
    v19 = [v18 contentHelper];

    [v19 setLivePhotoHidden:v14];
    v20 = [(PUCarouselSharingViewController *)self analyticsEventsSent];
    LOBYTE(v18) = [v20 containsObject:@"com.apple.photos.CPAnalytics.shareSheetCarouselLiveToggled"];

    if ((v18 & 1) == 0)
    {
      v25 = MEMORY[0x1E6991F28];
      v28 = *MEMORY[0x1E6991E20];
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v29[0] = v22;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      [v25 sendEvent:@"com.apple.photos.CPAnalytics.shareSheetCarouselLiveToggled" withPayload:v23];

      v24 = [(PUCarouselSharingViewController *)self analyticsEventsSent];
      [v24 addObject:@"com.apple.photos.CPAnalytics.shareSheetCarouselLiveToggled"];
    }
  }

  else
  {
    [(PUCarouselSharingViewController *)self _setSelected:1 atIndexPath:v7 animated:1];
  }
}

- (NSString)localizedSelectionTitle
{
  if ([(PUCarouselSharingViewController *)self _isAnyAssetSelected])
  {
    v3 = [(PUCarouselSharingViewController *)self photoSelectionManager];
    v4 = [v3 localizedSelectionString];
  }

  else
  {
    v4 = PULocalizedString(@"SHARING_HEADER_NO_ITEMS_TITLE");
  }

  return v4;
}

- (void)_updateOptionView:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([(PUCarouselSharingViewController *)self selectionEnabled])
  {
    v8 = [(PUCarouselSharingViewController *)self sendAsAssetBundles]^ 1;
  }

  else
  {
    v8 = 0;
  }

  v16 = [(PUCarouselSharingViewController *)self _assetAtIndexPath:v6];
  v9 = 1;
  v10 = [(PUCarouselSharingViewController *)self _activityAssetItemForAsset:v16 createIfNecessary:1];
  v11 = [v16 playbackStyle];
  v12 = -[PUCarouselSharingViewController _photoCollectionAtIndex:](self, "_photoCollectionAtIndex:", [v6 section]);
  v13 = [(PUCarouselSharingViewController *)self photoSelectionManager];
  v14 = [v6 item];

  v15 = [v13 isAssetAtIndexSelected:v14 inAssetCollection:v12];
  if (v15)
  {
    v9 = [v10 excludeLiveness] ^ 1;
  }

  [v7 setInteractive:v8];
  [v7 setToggled:v9];
  [v7 setHidden:v11 != 3];
}

- (BOOL)isItemAtIndexPathSelected:(id)a3
{
  v4 = a3;
  v5 = -[PUCarouselSharingViewController _photoCollectionAtIndex:](self, "_photoCollectionAtIndex:", [v4 section]);
  v6 = [(PUCarouselSharingViewController *)self photoSelectionManager];
  v7 = [v4 item];

  LOBYTE(v4) = [v6 isAssetAtIndexSelected:v7 inAssetCollection:v5];
  return v4;
}

- (BOOL)_isAnyAssetSelected
{
  v2 = self;
  v3 = [(PUCarouselSharingViewController *)self photoSelectionManager];
  LOBYTE(v2) = [v3 isAnyAssetSelectedInAssetCollections:v2->_photoCollectionsFetchResult];

  return v2;
}

- (void)_setSelected:(BOOL)a3 atIndexPath:(id)a4 animated:(BOOL)a5
{
  v5 = a3;
  v27[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = -[PUCarouselSharingViewController _photoCollectionAtIndex:](self, "_photoCollectionAtIndex:", [v7 section]);
  v25 = [(PUCarouselSharingViewController *)self assetsInAssetCollection:v8];
  v9 = [v25 objectAtIndex:{objc_msgSend(v7, "item")}];
  v10 = [(PUCarouselSharingViewController *)self _activityAssetItemForAsset:v9 createIfNecessary:1];
  v11 = [(PUCarouselSharingViewController *)self photoSelectionManager];
  v12 = [v7 item];
  if (v5)
  {
    [v11 selectAssetAtIndex:v12 inAssetCollection:v8];

    [(PUCarouselSharingViewController *)self _addActivityAssetItem:v10];
    v13 = @"com.apple.photos.CPAnalytics.shareSheetCarouselSelected";
  }

  else
  {
    [v11 deselectAssetAtIndex:v12 inAssetCollection:v8];

    [v10 setExcludeLiveness:0];
    [(PUCarouselSharingViewController *)self _removeActivityAssetItem:v10];
    v13 = @"com.apple.photos.CPAnalytics.shareSheetCarouselDeselected";
  }

  v14 = [(PUCarouselSharingViewController *)self analyticsEventsSent];
  v15 = [v14 containsObject:v13];

  if ((v15 & 1) == 0)
  {
    v16 = MEMORY[0x1E6991F28];
    v26 = *MEMORY[0x1E6991E20];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v27[0] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    [v16 sendEvent:v13 withPayload:v19];

    v20 = [(PUCarouselSharingViewController *)self analyticsEventsSent];
    [v20 addObject:v13];
  }

  v21 = [(PUCarouselSharingViewController *)self mainCollectionView];
  v22 = [v21 cellForItemAtIndexPath:v7];
  [v22 setSelected:v5];
  v23 = [v21 _visibleSupplementaryViewOfKind:@"PUPhotosSharingSelectionBadgeKind" atIndexPath:v7];
  [v23 setSelected:v5 animated:1];
  if ([v9 playbackStyle] == 3)
  {
    v24 = [v21 _visibleSupplementaryViewOfKind:@"PUPhotosSharingOptionBadgeKind" atIndexPath:v7];
    [(PUCarouselSharingViewController *)self _updateOptionView:v24 atIndexPath:v7];
  }
}

- (void)_replaceActivityAssetItem:(id)a3 withAssetItem:(id)a4 notifyDelegate:(BOOL)a5
{
  v5 = a5;
  v15 = a3;
  v9 = a4;
  v10 = [v15 asset];
  v11 = [v9 asset];
  if (([v10 isEqual:v11] & 1) == 0)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PUCarouselSharingViewController.m" lineNumber:786 description:{@"Invalid parameter not satisfying: %@", @"[previousAsset isEqual:asset]"}];
  }

  v12 = [v10 localIdentifier];
  [(NSMutableDictionary *)self->_assetItemsByAssetIdentifier setObject:v9 forKeyedSubscript:v12];
  if (v5)
  {
    v13 = [(PUCarouselSharingViewController *)self delegate];
    [v13 carouselSharingViewController:self replaceAssetItem:v15 withAssetItem:v9];
  }
}

- (void)_removeActivityAssetItem:(id)a3
{
  v4 = a3;
  v5 = [v4 asset];
  v7 = [v5 localIdentifier];

  [(NSMutableDictionary *)self->_assetItemsByAssetIdentifier setObject:0 forKeyedSubscript:v7];
  v6 = [(PUCarouselSharingViewController *)self delegate];
  [v6 carouselSharingViewController:self removeAssetItem:v4];
}

- (void)_addActivityAssetItem:(id)a3
{
  v4 = a3;
  v5 = [(PUCarouselSharingViewController *)self delegate];
  [v5 carouselSharingViewController:self addAssetItem:v4];
}

- (id)_updatedActivityAssetItemsForAssets:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v6 = [(NSMutableDictionary *)self->_assetItemsByAssetIdentifier allKeys];
  v7 = [v6 mutableCopy];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [(PUCarouselSharingViewController *)self _activityAssetItemForAsset:v13 createIfNecessary:1, v17];
        [v5 addObject:v14];

        v15 = [v13 localIdentifier];
        [v7 removeObject:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  [(NSMutableDictionary *)self->_assetItemsByAssetIdentifier removeObjectsForKeys:v7];

  return v5;
}

- (id)currentActivityAssetItems
{
  v3 = [(PUCarouselSharingViewController *)self photoSelectionManager];
  v4 = [v3 orderedSelectedAssets];

  v5 = [(PUCarouselSharingViewController *)self _updatedActivityAssetItemsForAssets:v4];

  return v5;
}

- (id)_activityAssetItemForAsset:(id)a3 createIfNecessary:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 localIdentifier];
  v8 = [(NSMutableDictionary *)self->_assetItemsByAssetIdentifier objectForKey:v7];
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = !v4;
  }

  if (!v9)
  {
    v8 = [[PUActivityAssetItem alloc] initWithAsset:v6];
    [(NSMutableDictionary *)self->_assetItemsByAssetIdentifier setObject:v8 forKey:v7];
    if (![(PUCarouselSharingViewController *)self sendAsAssetBundles])
    {
      v10 = +[PURootSettings sharedInstance];
      v11 = [v10 irisUIEnabled];

      [(PUActivityAssetItem *)v8 setExcludeLiveness:v11 ^ 1u];
      [(PUActivityAssetItem *)v8 setExcludeLocation:0];
      [(PUActivityAssetItem *)v8 setExcludeCaption:0];
      [(PUActivityAssetItem *)v8 setExcludeAccessibilityDescription:0];
    }
  }

  return v8;
}

- (void)_handlePhotoViewLoaderBlocks
{
  if ([(PUCarouselSharingViewController *)self isReadyForInteraction]&& [(PUCarouselSharingViewController *)self _appearState]== 2)
  {
    v3 = [(PUCarouselSharingViewController *)self _photoViewLoaderBlocks];
    v4 = [v3 copy];

    v5 = [(PUCarouselSharingViewController *)self _photoViewLoaderBlocks];
    [v5 removeAllObjects];

    v6 = [(PUCarouselSharingViewController *)self _livePhotoViewLoaderBlocks];
    v7 = [v6 copy];

    v8 = [(PUCarouselSharingViewController *)self _livePhotoViewLoaderBlocks];
    [v8 removeAllObjects];

    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__PUCarouselSharingViewController__handlePhotoViewLoaderBlocks__block_invoke;
    aBlock[3] = &unk_1E7B80638;
    objc_copyWeak(&v16, &location);
    v9 = _Block_copy(aBlock);
    if ([v4 count] || objc_msgSend(v7, "count"))
    {
      objc_copyWeak(&v14, &location);
      v11 = v4;
      v12 = v7;
      v13 = v9;
      px_dispatch_on_main_queue();

      objc_destroyWeak(&v14);
    }

    else
    {
      v10 = v9;
      px_dispatch_on_main_queue();
    }

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __63__PUCarouselSharingViewController__handlePhotoViewLoaderBlocks__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _playVitalityHintAfterViewDidAppear];
}

void __63__PUCarouselSharingViewController__handlePhotoViewLoaderBlocks__block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained _appearState];

  if (v3 == 2)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = *(a1 + 32);
    v5 = [v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      do
      {
        v8 = 0;
        do
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v4);
          }

          (*(*(*(&v18 + 1) + 8 * v8++) + 16))();
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v6);
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = *(a1 + 40);
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          (*(*(*(&v14 + 1) + 8 * v13) + 16))(*(*(&v14 + 1) + 8 * v13));
          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
      }

      while (v11);
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48));
  }
}

- (void)_playVitalityHintAfterViewDidAppear
{
  if (self->_shouldPlayVitalityHintAfterViewDidAppear && [(PUCarouselSharingViewController *)self _appearState]== 2)
  {
    self->_shouldPlayVitalityHintAfterViewDidAppear = 0;
    v3 = [(PUCarouselSharingViewController *)self _lastKnownReferenceIndexPath];
    [(PUCarouselSharingViewController *)self _playLivePhotoHintIfNeededAtIndexPath:v3];
  }
}

- (id)assetsInAssetCollection:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    if (!v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"PUCarouselSharingViewController.m" lineNumber:661 description:{@"%s must be called on the main thread", "-[PUCarouselSharingViewController assetsInAssetCollection:]"}];

    if (!v5)
    {
      goto LABEL_17;
    }
  }

  v6 = [(NSMutableDictionary *)self->_resultsForAssetCollection objectForKey:v5];
  if (v6)
  {
    goto LABEL_18;
  }

  v7 = PLShareSheetGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v10 = [v5 assetCollectionType];
    v11 = [v5 assetCollectionSubtype];
    v12 = [v5 uuid];
    *buf = 138413314;
    v35 = v8;
    v36 = 2048;
    v37 = self;
    v38 = 2048;
    v39 = v10;
    v40 = 2048;
    v41 = v11;
    v42 = 2114;
    v43 = v12;
    _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "<%@:%p>: no cached assets for assetCollection: assetCollectionType=%ld/%ld, uuid=%{public}@", buf, 0x34u);
  }

  v13 = [(PUCarouselSharingViewController *)self photosDataSource];
  v14 = [v13 sectionForAssetCollection:v5];

  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [MEMORY[0x1E6978830] fetchOptionsWithPhotoLibrary:0 orObject:v5];
    v6 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v5 options:v15];
    v16 = PLShareSheetGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = v17;
      v19 = [v6 count];
      *buf = 138412802;
      v35 = v17;
      v36 = 2048;
      v37 = self;
      v38 = 2048;
      v39 = v19;
      _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_DEFAULT, "<%@:%p>: will use [PHAsset fetchAssetsInAssetCollection:options] - %lu", buf, 0x20u);
    }
  }

  else
  {
    v20 = [(PUCarouselSharingViewController *)self photosDataSource];
    v21 = [MEMORY[0x1E696AC90] indexSetWithIndex:v14];
    [v20 forceAccurateSectionsIfNeeded:v21];

    v22 = [(PUCarouselSharingViewController *)self photosDataSource];
    v6 = [v22 assetsInSection:v14];

    v15 = PLShareSheetGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_opt_class();
      v24 = v23;
      v25 = [v6 count];
      *buf = 138412802;
      v35 = v23;
      v36 = 2048;
      v37 = self;
      v38 = 2048;
      v39 = v25;
      _os_log_impl(&dword_1B36F3000, v15, OS_LOG_TYPE_DEFAULT, "<%@:%p>: will use [self.photosDataSource assetsInSection:] - %lu", buf, 0x20u);
    }
  }

  if (v6)
  {
    [(NSMutableDictionary *)self->_resultsForAssetCollection setObject:v6 forKey:v5];
    goto LABEL_18;
  }

  v26 = PLShareSheetGetLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = objc_opt_class();
    v28 = v27;
    v29 = [v5 assetCollectionType];
    v30 = [v5 assetCollectionSubtype];
    v31 = [v5 uuid];
    *buf = 138413314;
    v35 = v27;
    v36 = 2048;
    v37 = self;
    v38 = 2048;
    v39 = v29;
    v40 = 2048;
    v41 = v30;
    v42 = 2114;
    v43 = v31;
    _os_log_impl(&dword_1B36F3000, v26, OS_LOG_TYPE_ERROR, "<%@:%p>: fetched assets are nil for assetCollection: assetCollectionType=%ld/%ld, uuid=%{public}@", buf, 0x34u);
  }

LABEL_17:
  v6 = 0;
LABEL_18:

  return v6;
}

- (void)_updateVisibleCellBadges
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(UICollectionView *)self->_mainCollectionView indexPathsForVisibleItems];
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
        v9 = [(UICollectionView *)self->_mainCollectionView supplementaryViewForElementKind:@"PUPhotosSharingOptionBadgeKind" atIndexPath:v8];
        if (v9)
        {
          [(PUCarouselSharingViewController *)self _updateOptionView:v9 atIndexPath:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)_updateAdditionalContentForVisibleCells
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(UICollectionView *)self->_mainCollectionView indexPathsForVisibleItems];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [(UICollectionView *)self->_mainCollectionView cellForItemAtIndexPath:v8];
        if (v9)
        {
          v10 = -[PUCarouselSharingViewController _photoCollectionAtIndex:](self, "_photoCollectionAtIndex:", [v8 section]);
          v11 = [(PUCarouselSharingViewController *)self assetsInAssetCollection:v10];
          v12 = [v11 objectAtIndex:{objc_msgSend(v8, "item")}];
          [(PUCarouselSharingViewController *)self _updateAdditionalContentForAsset:v12 cell:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

- (void)_updateVisibleCells
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(UICollectionView *)self->_mainCollectionView indexPathsForVisibleItems];
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
        v9 = [(UICollectionView *)self->_mainCollectionView cellForItemAtIndexPath:v8];
        if (v9)
        {
          [(PUCarouselSharingViewController *)self _updateCell:v9 forItemAtIndexPath:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (id)_indexPathOfAsset:(id)a3 sectionHint:(int64_t)a4
{
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__68850;
  v24 = __Block_byref_object_dispose__68851;
  v25 = 0;
  if (v6)
  {
    v7 = [(PUCarouselSharingViewController *)self photoCollectionsFetchResult];
    v8 = v7;
    if ((a4 & 0x8000000000000000) == 0 && [v7 count] > a4)
    {
      v9 = [v8 objectAtIndex:a4];
      v10 = [(PUCarouselSharingViewController *)self assetsInAssetCollection:v9];

      v11 = [v10 indexOfObject:v6];
      if (v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = [MEMORY[0x1E696AC88] indexPathForItem:v11 inSection:a4];
        v13 = v21[5];
        v21[5] = v12;
      }
    }

    if (!v21[5])
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __65__PUCarouselSharingViewController__indexPathOfAsset_sectionHint___block_invoke;
      v17[3] = &unk_1E7B7D240;
      v17[4] = self;
      v18 = v6;
      v19 = &v20;
      [v8 enumerateObjectsUsingBlock:v17];
    }

    v14 = v21[5];
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  _Block_object_dispose(&v20, 8);

  return v15;
}

void __65__PUCarouselSharingViewController__indexPathOfAsset_sectionHint___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7 = [*(a1 + 32) assetsInAssetCollection:a2];
  v8 = [v7 indexOfObject:*(a1 + 40)];

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [MEMORY[0x1E696AC88] indexPathForItem:v8 inSection:a3];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *a4 = 1;
  }
}

- (id)_assetAtIndexPath:(id)a3
{
  v5 = a3;
  v6 = [v5 section];
  if (v6 >= [(PUCarouselSharingViewController *)self _numberOfSections])
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [v5 section];
    v14 = [(PUCarouselSharingViewController *)self _numberOfSections];
    v15 = [(PUCarouselSharingViewController *)self photoCollectionsFetchResult];
    [v12 handleFailureInMethod:a2 object:self file:@"PUCarouselSharingViewController.m" lineNumber:584 description:{@"Out-of-bounds section %li/%li - sections: %@ ", v13, v14, v15}];
  }

  v7 = -[PUCarouselSharingViewController _photoCollectionAtIndex:](self, "_photoCollectionAtIndex:", [v5 section]);
  v8 = [v5 item];
  if (v8 >= -[PUCarouselSharingViewController _numberOfItemsInSection:](self, "_numberOfItemsInSection:", [v5 section]))
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = [v5 item];
    v17 = -[PUCarouselSharingViewController _numberOfItemsInSection:](self, "_numberOfItemsInSection:", [v5 section]);
    v18 = [v5 section];
    v19 = [v7 assetCollectionType];
    v20 = [v7 assetCollectionSubtype];
    v21 = [v7 uuid];
    [v16 handleFailureInMethod:a2 object:self file:@"PUCarouselSharingViewController.m" lineNumber:591 description:{@"Out-of-bounds item %li/%li from section %li - assetCollectionType=%ld/%ld, uuid=%@", v22, v17, v18, v19, v20, v21}];
  }

  v9 = [(PUCarouselSharingViewController *)self assetsInAssetCollection:v7];
  v10 = [v9 objectAtIndex:{objc_msgSend(v5, "item")}];

  return v10;
}

- (id)_photoCollectionAtIndex:(int64_t)a3
{
  v4 = [(PUCarouselSharingViewController *)self photoCollectionsFetchResult];
  v5 = [v4 objectAtIndex:a3];

  return v5;
}

- (unint64_t)_indexForPhotoCollection:(id)a3
{
  v4 = a3;
  v5 = [(PUCarouselSharingViewController *)self photoCollectionsFetchResult];
  v6 = [v5 indexOfObject:v4];

  return v6;
}

- (int64_t)_numberOfItemsInSection:(int64_t)a3
{
  v4 = [(PUCarouselSharingViewController *)self _photoCollectionAtIndex:a3];
  v5 = [(PUCarouselSharingViewController *)self assetsInAssetCollection:v4];
  v6 = [v5 count];

  return v6;
}

- (int64_t)_numberOfSections
{
  v2 = [(PUCarouselSharingViewController *)self photoCollectionsFetchResult];
  v3 = [v2 count];

  return v3;
}

- (id)_indexPathInCollectionView:(id)a3 closestToContentOffsetX:(double)a4
{
  v6 = a3;
  [(PUCarouselSharingViewController *)self _collectionViewContentFrame];
  MidY = CGRectGetMidY(v32);
  v8 = [v6 indexPathForItemAtPoint:{a4, MidY}];
  if (v8)
  {
    v9 = v8;
    goto LABEL_22;
  }

  v10 = [(PUCarouselSharingViewController *)self spec];
  [v10 interItemSpacing];
  v12 = v11;

  v13 = [v6 indexPathForItemAtPoint:{a4 - v12, MidY}];
  v14 = [v6 indexPathForItemAtPoint:{v12 + a4, MidY}];
  v15 = v14;
  if (v13)
  {
    v16 = v14 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    v19 = [v6 cellForItemAtIndexPath:v13];
    v20 = [v6 cellForItemAtIndexPath:v15];
    [v19 frame];
    v25 = a4 - CGRectGetMaxX(*&v21);
    if (v25 >= 0.0)
    {
      v26 = v25;
    }

    else
    {
      v26 = -v25;
    }

    [v20 frame];
    v27 = a4 - CGRectGetMinX(v33);
    if (v27 < 0.0)
    {
      v27 = -v27;
    }

    if (v26 >= v27)
    {
      v28 = v15;
    }

    else
    {
      v28 = v13;
    }

    v9 = v28;

LABEL_22:
    v18 = [(PUCarouselSharingViewController *)self _assetAtIndexPath:v9];
    if ([(PUCarouselSharingViewController *)self _shouldShowAsset:v18])
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = v14;
  }

  v9 = v17;

  if (v9)
  {
    goto LABEL_22;
  }

  v18 = 0;
LABEL_23:
  v29 = [(PUCarouselSharingViewController *)self _indexPathInCollectionView:v6 closestToPoint:a4, MidY];

  v9 = v29;
LABEL_24:

  return v9;
}

- (id)_indexPathInCollectionView:(id)a3 closestToPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v28 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [v7 indexPathForItemAtPoint:{x, y}];
  if (!v8)
  {
    v9 = [v7 visibleCells];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v8 = 0;
      v12 = *v24;
      v13 = 1.79769313e308;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          v16 = [v7 indexPathForCell:v15];
          v17 = [(PUCarouselSharingViewController *)self _assetAtIndexPath:v16];
          if ([(PUCarouselSharingViewController *)self _shouldShowAsset:v17])
          {
            [v15 center];
            v20 = (v19 - y) * (v19 - y) + (v18 - x) * (v18 - x);
            if (v20 < v13)
            {
              v21 = v16;

              v13 = v20;
              v8 = v21;
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)_indexPathOfCenterVisibleItemInCollectionView:(id)a3
{
  v4 = a3;
  [v4 bounds];
  v5 = [(PUCarouselSharingViewController *)self _indexPathInCollectionView:v4 closestToContentOffsetX:CGRectGetMidX(v8)];

  return v5;
}

- (void)_pageToIndexPath:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v11 = [(PUCarouselSharingViewController *)self mainCollectionView];
  [v11 contentOffset];
  v8 = v7;
  [(PUCarouselSharingViewController *)self _horizontalOffsetInCollectionView:v11 forCenteringOnItemAtIndexPath:v6];
  v10 = v9;

  [v11 setContentOffset:v4 animated:{v10, v8}];
}

- (void)_updateCell:(id)a3 forItemAtIndexPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"PUCarouselSharingViewController.m" lineNumber:463 description:@"expected cell"];
  }

  v9 = -[PUCarouselSharingViewController _photoCollectionAtIndex:](self, "_photoCollectionAtIndex:", [v8 section]);
  v10 = [(PUCarouselSharingViewController *)self assetsInAssetCollection:v9];
  v11 = [v10 objectAtIndex:{objc_msgSend(v8, "item")}];
  v12 = [v11 pixelWidth];
  v13 = [v11 pixelHeight];
  v14 = [v7 photoView];
  v15 = [v14 contentHelper];

  [v15 setPreferredImageDynamicRange:0];
  [v15 setPhotoSize:{v12, v13}];
  [v15 setFillMode:1];
  v16 = [(PUCarouselSharingViewController *)self spec];
  [v16 contentCornerRadius];
  [v15 setCornerRadius:?];

  v17 = [(PUCarouselSharingViewController *)self spec];
  [v17 selectionBadgeOffset];
  v19 = v18;
  v21 = v20;

  [v15 setCustomPaddingForBadgeElements:{v19, v21}];
  v31 = 0u;
  v32 = 0u;
  v22 = [(PUCarouselSharingViewController *)self _badgeManager];
  v23 = v22;
  if (v22)
  {
    [v22 badgeInfoForAsset:v11 inCollection:v9 options:8];
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v30[0] = v31;
  v30[1] = v32;
  [v15 setBadgeInfo:v30];
  v24 = [(PUCarouselSharingViewController *)self photoSelectionManager];
  v25 = [v24 isAssetAtIndexSelected:objc_msgSend(v8 inAssetCollection:{"item"), v9}];

  [v7 setSelected:v25];
  [v15 setDelegate:self];
  [(PUCarouselSharingViewController *)self _updatePhotoForAsset:v11 cell:v7 atIndexPath:v8];
  [(PUCarouselSharingViewController *)self _updateAdditionalContentForAsset:v11 cell:v7];
  v26 = [(PUCarouselSharingViewController *)self _activityAssetItemForAsset:v11 createIfNecessary:0];
  v27 = v26;
  if (v26)
  {
    v28 = [v26 excludeLiveness];
  }

  else
  {
    v28 = 0;
  }

  [v15 setLivePhotoHidden:v28];
}

- (void)_handleAnimatedImageResult:(id)a3 forCell:(id)a4 asset:(id)a5 tag:(int64_t)a6
{
  v13 = a3;
  v9 = a4;
  v10 = a5;
  if (v9 && [v9 tag] == a6)
  {
    v11 = [v9 photoView];
    v12 = [v11 contentHelper];

    [v12 setAnimatedImage:v13];
  }
}

- (void)_handleLoopingVideoRequestResult:(id)a3 forCell:(id)a4 asset:(id)a5 tag:(int64_t)a6
{
  v14 = a3;
  v10 = a4;
  v11 = a5;
  if (v10 && [v10 tag] == a6 && -[PUCarouselSharingViewController _isLoopingPlaybackAllowed](self, "_isLoopingPlaybackAllowed"))
  {
    v12 = [v10 photoView];
    v13 = [v12 contentHelper];

    [v13 setLoopingVideoAsset:v14];
  }
}

- (void)_handleLivePhotoRequestResult:(id)a3 forCell:(id)a4 tag:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9 && [v9 tag] == a5)
  {
    v11 = [(PUCarouselSharingViewController *)self sharingLog];
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B36F3000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "displayLivePhoto", "", buf, 2u);
    }

    v12 = [v10 photoView];
    v13 = [v12 contentHelper];
    [v13 setShowsLivePhoto:1];

    v14 = [(PUScrollViewSpeedometer *)self->_speedometer regime]!= 3;
    v15 = [v10 photoView];
    v16 = [v15 contentHelper];

    [v16 setShouldPrepareForPlayback:v14];
    [v16 setLivePhoto:v8];
    v17 = [(PUCarouselSharingViewController *)self sharingLog];
    if (os_signpost_enabled(v17))
    {
      *v18 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B36F3000, v17, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "displayLivePhoto", "", v18, 2u);
    }
  }
}

- (void)_handleSchedulingLivePhotoRequestResult:(id)a3 forCell:(id)a4 tag:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if ([(PUCarouselSharingViewController *)self isReadyForInteraction])
  {
    [(PUCarouselSharingViewController *)self _handleLivePhotoRequestResult:v8 forCell:v9 tag:a5];
  }

  else
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __87__PUCarouselSharingViewController__handleSchedulingLivePhotoRequestResult_forCell_tag___block_invoke;
    aBlock[3] = &unk_1E7B7D1F0;
    objc_copyWeak(v16, &location);
    v14 = v8;
    v15 = v9;
    v16[1] = a5;
    v10 = _Block_copy(aBlock);
    v11 = [(PUCarouselSharingViewController *)self _livePhotoViewLoaderBlocks];
    v12 = _Block_copy(v10);
    [v11 addObject:v12];

    objc_destroyWeak(v16);
    objc_destroyWeak(&location);
  }
}

void __87__PUCarouselSharingViewController__handleSchedulingLivePhotoRequestResult_forCell_tag___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleLivePhotoRequestResult:*(a1 + 32) forCell:*(a1 + 40) tag:*(a1 + 56)];
}

- (void)_handleStillPhotoRequestResult:(id)a3 forCell:(id)a4 tag:(int64_t)a5
{
  v15 = a3;
  v7 = a4;
  if ([v7 tag] == a5)
  {
    v8 = [v7 photoView];
    v9 = [v8 contentHelper];

    v10 = [v9 placeHolderImage];
    v11 = [v10 isHighDynamicRange];

    if (v11)
    {
      v12 = +[PUOneUpSettings sharedInstance];
      [v12 hdrShareSheetCrossfadeAnimationDuration];
      v14 = v13;

      [v9 animateCrossfadeToImage:v15 duration:v14];
    }

    else
    {
      [v9 setPhotoImage:v15];
    }
  }
}

- (void)_handleSchedulingStillPhotoRequestResult:(id)a3 forCell:(id)a4 tag:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if ([(PUCarouselSharingViewController *)self isReadyForInteraction])
  {
    [(PUCarouselSharingViewController *)self _handleStillPhotoRequestResult:v8 forCell:v9 tag:a5];
  }

  else
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __88__PUCarouselSharingViewController__handleSchedulingStillPhotoRequestResult_forCell_tag___block_invoke;
    aBlock[3] = &unk_1E7B7D1F0;
    objc_copyWeak(v16, &location);
    v14 = v8;
    v15 = v9;
    v16[1] = a5;
    v10 = _Block_copy(aBlock);
    v11 = [(PUCarouselSharingViewController *)self _photoViewLoaderBlocks];
    v12 = _Block_copy(v10);
    [v11 addObject:v12];

    objc_destroyWeak(v16);
    objc_destroyWeak(&location);
  }
}

void __88__PUCarouselSharingViewController__handleSchedulingStillPhotoRequestResult_forCell_tag___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleStillPhotoRequestResult:*(a1 + 32) forCell:*(a1 + 40) tag:*(a1 + 56)];
}

- (void)_updateAdditionalContentForAsset:(id)a3 cell:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 tag];
  if ([v6 playbackStyle] != 5)
  {
    v10 = [v6 playbackStyle] == 2;
LABEL_5:
    if ([v6 playbackStyle] == 3)
    {
      v11 = [v6 canPlayPhotoIris];
      v12 = 0;
    }

    else
    {
      v12 = 0;
      v11 = 0;
    }

    goto LABEL_8;
  }

  v9 = [(PUCarouselSharingViewController *)self _isLoopingPlaybackAllowed];
  v10 = [v6 playbackStyle] == 2;
  if (!v9)
  {
    goto LABEL_5;
  }

  v11 = 0;
  v12 = 1;
LABEL_8:
  v13 = [(PUCarouselSharingViewController *)self _isLoopingPlaybackAllowed];
  v14 = [v7 photoView];
  v15 = [v14 contentHelper];
  [v15 setLoopingPlaybackAllowed:v13];

  if (v12)
  {
    v16 = [(PUCarouselSharingViewController *)self cachingImageManager];
    v17 = objc_alloc_init(MEMORY[0x1E6978B18]);
    [v17 setNetworkAccessAllowed:1];
    [v17 setVideoComplementAllowed:1];
    objc_initWeak(location, self);
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __73__PUCarouselSharingViewController__updateAdditionalContentForAsset_cell___block_invoke;
    v40[3] = &unk_1E7B7D1A0;
    objc_copyWeak(v43, location);
    v41 = v7;
    v42 = v6;
    v43[1] = v8;
    [v16 requestAVAssetForVideo:v42 options:v17 resultHandler:v40];

    objc_destroyWeak(v43);
    objc_destroyWeak(location);
  }

  else
  {
    v18 = [v7 photoView];
    v19 = [v18 contentHelper];

    [v19 setLoopingVideoAsset:0];
  }

  v20 = [v7 photoView];
  v21 = [v20 contentHelper];

  if (v10)
  {
    if ([(PUCarouselSharingViewController *)self _isLoopingPlaybackAllowed])
    {
      v22 = [v21 animatedImage];

      if (!v22)
      {
        v23 = [(PUCarouselSharingViewController *)self cachingImageManager];
        v24 = objc_alloc_init(MEMORY[0x1E6978868]);
        [v24 setVersion:2];
        [v24 setNetworkAccessAllowed:0];
        objc_initWeak(location, self);
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __73__PUCarouselSharingViewController__updateAdditionalContentForAsset_cell___block_invoke_3;
        v36[3] = &unk_1E7B7D1C8;
        objc_copyWeak(v39, location);
        v37 = v7;
        v38 = v6;
        v39[1] = v8;
        [v23 requestAnimatedImageForAsset:v38 options:v24 resultHandler:v36];

        objc_destroyWeak(v39);
        objc_destroyWeak(location);
      }
    }
  }

  else
  {
    [v21 setAnimatedImage:0];
  }

  v25 = [v7 photoView];
  v26 = [v25 contentHelper];
  v27 = v26;
  if (!v11)
  {
    [v26 setShowsLivePhoto:0];
    goto LABEL_22;
  }

  v28 = [v26 livePhoto];

  if (!v28)
  {
    v25 = [(PUCarouselSharingViewController *)self cachingImageManager];
    [v7 frame];
    v31 = PUPixelSizeFromPointSize(v29);
    v32 = v30;
    if (v31 == *MEMORY[0x1E695F060] && v30 == *(MEMORY[0x1E695F060] + 8))
    {
      goto LABEL_23;
    }

    v27 = objc_alloc_init(MEMORY[0x1E69788D8]);
    [v27 setDeliveryMode:1];
    objc_initWeak(location, self);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __73__PUCarouselSharingViewController__updateAdditionalContentForAsset_cell___block_invoke_239;
    v33[3] = &unk_1E7B7D218;
    objc_copyWeak(v35, location);
    v34 = v7;
    v35[1] = v8;
    [v25 requestLivePhotoForAsset:v6 targetSize:0 contentMode:v27 options:v33 resultHandler:{v31, v32}];

    objc_destroyWeak(v35);
    objc_destroyWeak(location);
LABEL_22:

LABEL_23:
  }
}

void __73__PUCarouselSharingViewController__updateAdditionalContentForAsset_cell___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  objc_copyWeak(v13, a1 + 6);
  v10 = v7;
  v11 = a1[4];
  v12 = a1[5];
  v13[1] = a1[7];
  px_dispatch_on_main_queue();

  objc_destroyWeak(v13);
}

void __73__PUCarouselSharingViewController__updateAdditionalContentForAsset_cell___block_invoke_3(id *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    objc_copyWeak(v13, a1 + 6);
    v10 = v5;
    v11 = a1[4];
    v12 = a1[5];
    v13[1] = a1[7];
    px_dispatch_on_main_queue();

    objc_destroyWeak(v13);
  }

  else
  {
    v7 = PLUIGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v6 objectForKeyedSubscript:*MEMORY[0x1E6978E60]];
      v9 = [v6 objectForKeyedSubscript:*MEMORY[0x1E6978DF0]];
      *buf = 138412546;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "Did not load animated image for playback in the share sheet. In cloud = %@. Error = %@", buf, 0x16u);
    }
  }
}

void __73__PUCarouselSharingViewController__updateAdditionalContentForAsset_cell___block_invoke_239(id *a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    objc_copyWeak(v12, a1 + 5);
    v10 = v5;
    v11 = a1[4];
    v12[1] = a1[6];
    px_dispatch_on_main_queue();

    objc_destroyWeak(v12);
  }

  else
  {
    v7 = PLUIGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v6 objectForKeyedSubscript:*MEMORY[0x1E6978E60]];
      v9 = [v6 objectForKeyedSubscript:*MEMORY[0x1E6978DF0]];
      *buf = 138412546;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "Did not load live photo for playback in the share sheet. In cloud = %@. Error = %@", buf, 0x16u);
    }
  }
}

void __73__PUCarouselSharingViewController__updateAdditionalContentForAsset_cell___block_invoke_2_240(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleSchedulingLivePhotoRequestResult:*(a1 + 32) forCell:*(a1 + 40) tag:*(a1 + 56)];
}

void __73__PUCarouselSharingViewController__updateAdditionalContentForAsset_cell___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handleAnimatedImageResult:*(a1 + 32) forCell:*(a1 + 40) asset:*(a1 + 48) tag:*(a1 + 64)];
}

void __73__PUCarouselSharingViewController__updateAdditionalContentForAsset_cell___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handleLoopingVideoRequestResult:*(a1 + 32) forCell:*(a1 + 40) asset:*(a1 + 48) tag:*(a1 + 64)];
}

- (void)_handleStillImageRequestResult:(id)a3 info:(id)a4 forCell:(id)a5 indexPath:(id)a6
{
  v21 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [a4 objectForKeyedSubscript:*MEMORY[0x1E6978E50]];
  v13 = [v12 BOOLValue];

  if (v13)
  {
    v14 = [v10 photoView];
    v15 = [v14 contentHelper];

    v16 = [v15 placeHolderImage];
    if (!v16)
    {
      v17 = [(PUCarouselSharingViewController *)self currentIndexPath];
      v18 = [v17 isEqual:v11];

      if (v18)
      {
        v19 = [(PUCarouselSharingViewController *)self assetTransitionInfo];
        v20 = [v19 image];

        if (v20)
        {
          [v15 setPlaceHolderImage:v20];
        }

        else
        {
          [v15 setPhotoImage:v21];
        }
      }

      else
      {
        [v15 setPhotoImage:v21];
      }
    }
  }

  else
  {
    -[PUCarouselSharingViewController _handleSchedulingStillPhotoRequestResult:forCell:tag:](self, "_handleSchedulingStillPhotoRequestResult:forCell:tag:", v21, v10, [v10 tag]);
  }
}

- (void)_updatePhotoForAsset:(id)a3 cell:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = ([v9 tag] + 1);
  [v9 setTag:v11];
  v12 = objc_opt_new();
  [v12 setNetworkAccessAllowed:1];
  [v9 frame];
  v14 = PUPixelSizeFromPointSize(v13);
  v16 = v15;
  objc_initWeak(&location, self);
  v17 = [(PUCarouselSharingViewController *)self cachingImageManager];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __73__PUCarouselSharingViewController__updatePhotoForAsset_cell_atIndexPath___block_invoke;
  v24 = &unk_1E7B7D178;
  v18 = v8;
  v25 = v18;
  v19 = v9;
  v26 = v19;
  v28[1] = v11;
  objc_copyWeak(v28, &location);
  v20 = v10;
  v27 = v20;
  LODWORD(v11) = [v17 requestImageForAsset:v18 targetSize:0 contentMode:v12 options:&v21 resultHandler:{v14, v16}];

  [v19 setCurrentImageRequestID:{v11, v21, v22, v23, v24}];
  objc_destroyWeak(v28);

  objc_destroyWeak(&location);
}

void __73__PUCarouselSharingViewController__updatePhotoForAsset_cell_atIndexPath___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E6978AB0];
  v12 = a3;
  v13 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = a2;
  [v5 protectImageManagerResult:v8 outImage:&v13 infoDictionary:v7 outInfoDictionary:&v12 forImageRequestFromAsset:v6 applyLiveBlurIfSensitive:1];
  v9 = v13;

  v10 = v12;
  if (v9 && [*(a1 + 40) tag] == *(a1 + 64))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained _handleStillImageRequestResult:v9 info:v10 forCell:*(a1 + 40) indexPath:*(a1 + 48)];
  }
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

- (CGSize)_sizeForItemAtIndexPath:(id)a3
{
  v4 = [(PUCarouselSharingViewController *)self _assetAtIndexPath:a3];
  if ([(PUCarouselSharingViewController *)self _shouldShowAsset:v4])
  {
    [(PUCarouselSharingViewController *)self _collectionViewContentFrame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [v4 pixelWidth];
    v14 = [v4 pixelHeight];
    v15 = [(PUCarouselSharingViewController *)self spec];
    [v15 interItemSpacing];
    v17 = v16;

    [(PUCarouselSharingViewController *)self px_safeAreaInsets];
    v19 = v8 + v18;
    v22 = v10 - (v20 + v21);
    v50.size.height = v12 - (v18 + v23);
    v50.origin.x = v6 + v20;
    v50.origin.y = v19;
    v50.size.width = v22;
    v24 = CGRectGetWidth(v50) + v17 * -4.0;
    v25 = [(PUCarouselSharingViewController *)self spec];
    [v25 selectionBadgeSize];
    v27 = v26;
    v28 = [(PUCarouselSharingViewController *)self spec];
    [v28 selectionBadgeOffset];
    v30 = v27 + v29 * 2.0;

    if (v13)
    {
      v31 = v14 == 0;
    }

    else
    {
      v31 = 1;
    }

    v32 = v31;
    if (v24 >= v12)
    {
      v33 = v12;
    }

    else
    {
      v33 = v24;
    }

    if (v32)
    {
      v34 = v33;
    }

    else
    {
      v34 = v14;
    }

    if (v32)
    {
      v35 = v33;
    }

    else
    {
      v35 = v13;
    }

    v36 = [(PUCarouselSharingViewController *)self spec];
    v37 = [(PUCarouselSharingViewController *)self _existingView];
    [v37 bounds];
    v38 = [v36 maximizeImageHeightForBounds:?];

    if (v38)
    {
      v39 = v12 * v35 / v34;
      if (v39 < v30)
      {
        v39 = v30;
      }

      if (v24 < v39)
      {
        v39 = v24;
      }
    }

    else
    {
      PURectWithSizeThatFitsInRect(v35, v34, 0.0, 0.0, v24, v12);
      v44 = v43 < v30 && v34 < v35;
      if (v44 && v43 > 0.0)
      {
        v42 = v42 * (v30 / v43);
        v43 = v30;
      }

      v45 = v42 < v30 && v35 < v34;
      if (v45 && v42 > 0.0)
      {
        v43 = v43 * (v30 / v42);
        v42 = v30;
      }

      if (v42 >= v30)
      {
        v39 = v42;
      }

      else
      {
        v39 = v30;
      }

      if (v24 < v39)
      {
        v39 = v24;
      }

      if (v43 >= v30)
      {
        v46 = v43;
      }

      else
      {
        v46 = v30;
      }

      if (v12 >= v46)
      {
        v12 = v46;
      }
    }

    v41 = round(v39);
    v40 = round(v12);
  }

  else
  {
    v41 = *MEMORY[0x1E695F060];
    v40 = *(MEMORY[0x1E695F060] + 8);
  }

  v47 = v41;
  v48 = v40;
  result.height = v48;
  result.width = v47;
  return result;
}

- (void)_getFirstValidIndexPath:(id *)a3 lastValidIndexPath:(id *)a4
{
  v7 = [(PUCarouselSharingViewController *)self _numberOfSections];
  v8 = v7 - 1;
  if (v7 < 1)
  {
    v10 = 0;
    v14 = 0;
    if (a3)
    {
LABEL_13:
      *a3 = v14;
    }
  }

  else
  {
    v9 = 0;
    v14 = 0;
    v10 = 0;
    do
    {
      if (v14 && v10)
      {
        break;
      }

      v11 = [(PUCarouselSharingViewController *)self _numberOfItemsInSection:v9];
      if (!v14 && v11)
      {
        v14 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:v9];
      }

      v12 = [(PUCarouselSharingViewController *)self _numberOfItemsInSection:v8];
      if (v12 && !v10)
      {
        v10 = [MEMORY[0x1E696AC88] indexPathForItem:v12 - 1 inSection:v8];
      }

      ++v9;
      --v8;
    }

    while (v8 != -1);
    if (a3)
    {
      goto LABEL_13;
    }
  }

  if (a4)
  {
    v13 = v10;
    *a4 = v10;
  }
}

- (void)_updateInterfaceForModelReloadAnimated:(BOOL)a3
{
  [(PUCarouselSharingViewController *)self _resetPreheating];
  v4 = [(PUCarouselSharingViewController *)self mainCollectionView];
  [v4 reloadData];

  [(PUCarouselSharingViewController *)self _setViewInSyncWithModel:1];
}

- (void)_setLastKnownReferenceIndexPath:(id)a3
{
  v5 = a3;
  lastKnownReferenceIndexPath = self->__lastKnownReferenceIndexPath;
  if (lastKnownReferenceIndexPath != v5)
  {
    v7 = v5;
    lastKnownReferenceIndexPath = [(NSIndexPath *)lastKnownReferenceIndexPath isEqual:v5];
    v5 = v7;
    if ((lastKnownReferenceIndexPath & 1) == 0)
    {
      objc_storeStrong(&self->__lastKnownReferenceIndexPath, a3);
      v5 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](lastKnownReferenceIndexPath, v5);
}

- (NSMutableSet)analyticsEventsSent
{
  analyticsEventsSent = self->_analyticsEventsSent;
  if (!analyticsEventsSent)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v5 = self->_analyticsEventsSent;
    self->_analyticsEventsSent = v4;

    analyticsEventsSent = self->_analyticsEventsSent;
  }

  return analyticsEventsSent;
}

- (void)dealloc
{
  v3 = [(PHFetchResult *)self->_photoCollectionsFetchResult photoLibrary];
  [v3 px_unregisterChangeObserver:self];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self];

  [(UITapGestureRecognizer *)self->_tapGestureRecognizer setDelegate:0];
  v5.receiver = self;
  v5.super_class = PUCarouselSharingViewController;
  [(PUCarouselSharingViewController *)&v5 dealloc];
}

- (PUCarouselSharingViewController)initWithPhotoCollectionsFetchResult:(id)a3 assetsFetchResultsByAssetCollection:(id)a4 selection:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (v10)
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"PUCarouselSharingViewController.m" lineNumber:123 description:{@"Invalid parameter not satisfying: %@", @"photoCollectionsFetchResult"}];

    if (v13)
    {
      goto LABEL_3;
    }
  }

  v34 = [MEMORY[0x1E696AAA8] currentHandler];
  [v34 handleFailureInMethod:a2 object:self file:@"PUCarouselSharingViewController.m" lineNumber:124 description:{@"Invalid parameter not satisfying: %@", @"selection"}];

LABEL_3:
  v35.receiver = self;
  v35.super_class = PUCarouselSharingViewController;
  v14 = [(PUCarouselSharingViewController *)&v35 init];
  if (v14)
  {
    v15 = objc_alloc_init(PUPhotosSharingViewControllerSpec);
    spec = v14->_spec;
    v14->_spec = v15;

    objc_storeStrong(&v14->_photoCollectionsFetchResult, a3);
    objc_storeStrong(&v14->_photoSelectionManager, a5);
    if (v11)
    {
      v17 = [v11 mutableCopy];
    }

    else
    {
      v17 = [MEMORY[0x1E695DF90] dictionary];
    }

    v18 = v17;
    objc_storeStrong(&v14->_resultsForAssetCollection, v17);

    v19 = [MEMORY[0x1E695DF90] dictionary];
    assetItemsByAssetIdentifier = v14->_assetItemsByAssetIdentifier;
    v14->_assetItemsByAssetIdentifier = v19;

    v21 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    indexPathsByOptionView = v14->_indexPathsByOptionView;
    v14->_indexPathsByOptionView = v21;

    v14->_shouldScrollToSelection = 1;
    v23 = objc_opt_new();
    cachingImageManager = v14->_cachingImageManager;
    v14->_cachingImageManager = v23;

    v14->_shouldPlayVitalityHintAfterViewDidAppear = 0;
    [(PUCarouselSharingViewController *)v14 setExtendedLayoutIncludesOpaqueBars:1];
    v25 = objc_alloc_init(MEMORY[0x1E69C4490]);
    badgeManager = v14->__badgeManager;
    v14->__badgeManager = v25;

    v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    photoViewLoaderBlocks = v14->__photoViewLoaderBlocks;
    v14->__photoViewLoaderBlocks = v27;

    v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
    livePhotoViewLoaderBlocks = v14->__livePhotoViewLoaderBlocks;
    v14->__livePhotoViewLoaderBlocks = v29;

    v14->_readyForInteraction = 1;
    v14->_selectionEnabled = 1;
    v31 = [v10 photoLibrary];
    [v31 px_registerChangeObserver:v14];
  }

  return v14;
}

@end