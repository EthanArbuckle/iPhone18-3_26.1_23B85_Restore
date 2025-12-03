@interface PUCarouselSharingViewController
- (BOOL)_isAnyAssetSelected;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)isItemAtIndexPathSelected:(id)selected;
- (BOOL)ppt_scrollToAssetAtRelativeIndex:(int64_t)index completion:(id)completion;
- (BOOL)prepareForDismissingForced:(BOOL)forced;
- (CGRect)_collectionViewContentFrame;
- (CGRect)_frameAtIndexPath:(id)path inView:(id)view;
- (CGRect)_previousPreheatRect;
- (CGRect)frameForBadgeOfKind:(id)kind forItemFrame:(CGRect)frame atIndexPath:(id)path;
- (CGRect)oneUpAssetTransitionAssetFinalFrame:(id)frame;
- (CGSize)_sizeForItemAtIndexPath:(id)path;
- (CGSize)layout:(id)layout collectionView:(id)view sizeForBadgeViewOfKind:(id)kind forItemAtIndexPath:(id)path;
- (CGSize)layout:(id)layout collectionView:(id)view sizeForItemAtIndexPath:(id)path;
- (NSMutableSet)analyticsEventsSent;
- (NSString)localizedSelectionTitle;
- (OS_os_log)sharingLog;
- (PHAsset)currentAsset;
- (PUCarouselSharingViewController)initWithPhotoCollectionsFetchResult:(id)result assetsFetchResultsByAssetCollection:(id)collection selection:(id)selection;
- (PUCarouselSharingViewControllerDelegate)delegate;
- (double)_horizontalOffsetInCollectionView:(id)view forCenteringOnItemAtIndexPath:(id)path;
- (double)layout:(id)layout collectionView:(id)view bottomBadgeInsetforItemAtIndexPath:(id)path;
- (id)_activityAssetItemForAsset:(id)asset createIfNecessary:(BOOL)necessary;
- (id)_assetAtIndexPath:(id)path;
- (id)_badgeTransitionInfosForCell:(id)cell;
- (id)_firstSelectedIndexPath;
- (id)_indexPathInCollectionView:(id)view closestToContentOffsetX:(double)x;
- (id)_indexPathInCollectionView:(id)view closestToPoint:(CGPoint)point;
- (id)_indexPathOfAsset:(id)asset sectionHint:(int64_t)hint;
- (id)_indexPathOfCenterVisibleItemInCollectionView:(id)view;
- (id)_optionViewAtIndexPath:(id)path forCollectionView:(id)view;
- (id)_photoCollectionAtIndex:(int64_t)index;
- (id)_selectionViewAtIndexPath:(id)path forCollectionView:(id)view;
- (id)_updatedActivityAssetItemsForAssets:(id)assets;
- (id)_validIndexPathFromIndexPath:(id)path;
- (id)adjacentVisibleAssetsTransitionInfos;
- (id)assetsInAssetCollection:(id)collection;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)currentActivityAssetItems;
- (id)currentIndexPath;
- (id)referenceAssetTransitionInfo;
- (int64_t)_numberOfItemsInSection:(int64_t)section;
- (int64_t)_numberOfSections;
- (unint64_t)_indexForPhotoCollection:(id)collection;
- (void)_addActivityAssetItem:(id)item;
- (void)_arrowKey:(id)key;
- (void)_getFirstValidIndexPath:(id *)path lastValidIndexPath:(id *)indexPath;
- (void)_getMainCollectionViewFrame:(CGRect *)frame collectionViewLayoutInsets:(UIEdgeInsets *)insets;
- (void)_handleAnimatedImageResult:(id)result forCell:(id)cell asset:(id)asset tag:(int64_t)tag;
- (void)_handleLivePhotoRequestResult:(id)result forCell:(id)cell tag:(int64_t)tag;
- (void)_handleLoopingVideoRequestResult:(id)result forCell:(id)cell asset:(id)asset tag:(int64_t)tag;
- (void)_handlePhotoViewLoaderBlocks;
- (void)_handleSchedulingLivePhotoRequestResult:(id)result forCell:(id)cell tag:(int64_t)tag;
- (void)_handleSchedulingStillPhotoRequestResult:(id)result forCell:(id)cell tag:(int64_t)tag;
- (void)_handleSelectionOption:(id)option;
- (void)_handleStillImageRequestResult:(id)result info:(id)info forCell:(id)cell indexPath:(id)path;
- (void)_handleStillPhotoRequestResult:(id)result forCell:(id)cell tag:(int64_t)tag;
- (void)_handleTapAtIndexPath:(id)path;
- (void)_handleTapInMainCollectionView:(id)view;
- (void)_pageToIndexPath:(id)path animated:(BOOL)animated;
- (void)_playLivePhotoHintIfNeededAtIndexPath:(id)path;
- (void)_playVitalityHintAfterViewDidAppear;
- (void)_processCollectionListChangeNotifications:(id)notifications singleCollectionNotifications:(id)collectionNotifications needsReloadData:(BOOL)data;
- (void)_removeActivityAssetItem:(id)item;
- (void)_replaceActivityAssetItem:(id)item withAssetItem:(id)assetItem notifyDelegate:(BOOL)delegate;
- (void)_resetPreheating;
- (void)_setLastKnownReferenceAsset:(id)asset indexPath:(id)path;
- (void)_setLastKnownReferenceIndexPath:(id)path;
- (void)_setLoopingPlaybackAllowed:(BOOL)allowed;
- (void)_setSelected:(BOOL)selected atIndexPath:(id)path animated:(BOOL)animated;
- (void)_updateAdditionalContentForAsset:(id)asset cell:(id)cell;
- (void)_updateAdditionalContentForVisibleCells;
- (void)_updateAssetTransitionInfo:(id)info;
- (void)_updateCell:(id)cell forItemAtIndexPath:(id)path;
- (void)_updateCellAtIndexPath:(id)path withTransitionInfo:(id)info;
- (void)_updateInterfaceForModelReloadAnimated:(BOOL)animated;
- (void)_updateLastKnownReferenceIndexPath;
- (void)_updateMainViewAnimated:(BOOL)animated;
- (void)_updateOptionView:(id)view atIndexPath:(id)path;
- (void)_updatePhotoForAsset:(id)asset cell:(id)cell atIndexPath:(id)path;
- (void)_updatePreheatedAssets;
- (void)_updateVisibleCellBadges;
- (void)_updateVisibleCells;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didEndDisplayingSupplementaryView:(id)supplementaryView forElementOfKind:(id)kind atIndexPath:(id)path;
- (void)dealloc;
- (void)oneUpAssetTransition:(id)transition requestTransitionContextWithCompletion:(id)completion;
- (void)photoLibraryDidChangeOnMainQueue:(id)queue;
- (void)ppt_faultInScollViewContentSize;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setHideCellForCurrentReferenceAsset:(BOOL)asset;
- (void)setLeadingAssetTransitionInfo:(id)info;
- (void)setOneUpPhotosSharingTransitionContext:(id)context;
- (void)setOneUpPhotosSharingTransitionInfo:(id)info;
- (void)setPhotosSharingTransitionContext:(id)context;
- (void)setPhotosSharingTransitionLayout:(id)layout animated:(BOOL)animated;
- (void)setReadyForInteraction:(BOOL)interaction;
- (void)setSendAsAssetBundles:(BOOL)bundles;
- (void)setTrailingAssetTransitionInfo:(id)info;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
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

- (void)oneUpAssetTransition:(id)transition requestTransitionContextWithCompletion:(id)completion
{
  completionCopy = completion;
  view = [(PUCarouselSharingViewController *)self view];
  [view layoutIfNeeded];

  mainCollectionView = [(PUCarouselSharingViewController *)self mainCollectionView];
  v8 = [(PUCarouselSharingViewController *)self _indexPathOfCenterVisibleItemInCollectionView:mainCollectionView];
  v9 = [mainCollectionView cellForItemAtIndexPath:v8];
  photoView = [v9 photoView];
  contentHelper = [photoView contentHelper];
  photoImage = [contentHelper photoImage];

  view2 = [(PUCarouselSharingViewController *)self view];
  [(PUCarouselSharingViewController *)self _frameAtIndexPath:v8 inView:view2];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v15, v17, v19, v21}];
  [v22 setImage:photoImage];
  [v22 setClipsToBounds:1];
  [v22 setContentMode:2];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __95__PUCarouselSharingViewController_oneUpAssetTransition_requestTransitionContextWithCompletion___block_invoke;
  v29[3] = &unk_1E7B7F3E0;
  v23 = photoImage;
  v30 = v23;
  selfCopy = self;
  v24 = v8;
  v32 = v24;
  v25 = [PUAssetTransitionInfo assetTransitionInfoWithConfigurationBlock:v29];
  view3 = [(PUCarouselSharingViewController *)self view];
  v27 = [PUOneUpAssetTransitionContext oneUpAssetTransitionContextWithContainerView:0 fromView:view3 snapshotView:v22 transitionInfo:v25];

  v28 = [v27 oneUpTransitionContextWithContextShouldHideBackground:1];

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v28);
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

- (id)_badgeTransitionInfosForCell:(id)cell
{
  v4 = MEMORY[0x1E695DF70];
  cellCopy = cell;
  array = [v4 array];
  mainCollectionView = [(PUCarouselSharingViewController *)self mainCollectionView];
  v41 = cellCopy;
  v7 = [mainCollectionView indexPathForCell:cellCopy];
  spec = [(PUCarouselSharingViewController *)self spec];
  [spec selectionBadgeOffset];
  v10 = v9;
  v12 = v11;

  collectionViewLayout = [mainCollectionView collectionViewLayout];
  v14 = [collectionViewLayout layoutAttributesForSupplementaryViewOfKind:@"PUPhotosSharingOptionBadgeKind" atIndexPath:v7];

  v15 = *MEMORY[0x1E695EFF8];
  v16 = *(MEMORY[0x1E695EFF8] + 8);
  v43 = v14;
  [v14 frame];
  v19 = [[PUPhotosSharingOptionView alloc] initWithFrame:v15, v16, v17, v18];
  [(PUCarouselSharingViewController *)self _updateOptionView:v19 atIndexPath:v7];
  [(PUPhotosSharingOptionView *)v19 layoutSubviews];
  v20 = objc_alloc_init(PUBadgeTransitionInfo);
  [(PUBadgeTransitionInfo *)v20 setSnapshotView:v19];
  spec2 = [(PUCarouselSharingViewController *)self spec];
  -[PUBadgeTransitionInfo setBadgesCorner:](v20, "setBadgesCorner:", [spec2 optionBadgeCorner]);

  [(PUBadgeTransitionInfo *)v20 setBadgesOffset:v10, v12];
  [v14 frame];
  [cellCopy convertRect:mainCollectionView fromView:?];
  [(PUBadgeTransitionInfo *)v20 setFrame:?];
  [array addObject:v20];
  collectionViewLayout2 = [mainCollectionView collectionViewLayout];
  v23 = [collectionViewLayout2 layoutAttributesForSupplementaryViewOfKind:@"PUPhotosSharingSelectionBadgeKind" atIndexPath:v7];

  [v23 frame];
  v26 = [[PUPhotosSharingSelectionView alloc] initWithFrame:v15, v16, v24, v25];
  v27 = -[PUCarouselSharingViewController _photoCollectionAtIndex:](self, "_photoCollectionAtIndex:", [v7 section]);
  photoSelectionManager = [(PUCarouselSharingViewController *)self photoSelectionManager];
  v29 = [photoSelectionManager isAssetAtIndexSelected:objc_msgSend(v7 inAssetCollection:{"item"), v27}];

  [(PUPhotosSharingSelectionView *)v26 setSelected:v29 animated:0];
  v30 = objc_alloc_init(PUBadgeTransitionInfo);
  [(PUBadgeTransitionInfo *)v30 setSnapshotView:v26];
  spec3 = [(PUCarouselSharingViewController *)self spec];
  -[PUBadgeTransitionInfo setBadgesCorner:](v30, "setBadgesCorner:", [spec3 selectionBadgeCorner]);

  [(PUBadgeTransitionInfo *)v30 setBadgesOffset:v10, v12];
  [v23 frame];
  [v41 convertRect:mainCollectionView fromView:?];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  [(PUBadgeTransitionInfo *)v30 setFrame:v33, v35, v37, v39];
  [array addObject:v30];

  return array;
}

- (id)adjacentVisibleAssetsTransitionInfos
{
  v54 = *MEMORY[0x1E69E9840];
  view = [(PUCarouselSharingViewController *)self view];
  [view layoutIfNeeded];

  array = [MEMORY[0x1E695DF70] array];
  mainCollectionView = [(PUCarouselSharingViewController *)self mainCollectionView];
  visibleCells = [mainCollectionView visibleCells];
  [(PUCarouselSharingViewController *)self _indexPathOfCenterVisibleItemInCollectionView:mainCollectionView];
  v33 = v35 = mainCollectionView;
  v38 = [mainCollectionView cellForItemAtIndexPath:?];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = visibleCells;
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
          photoView = [*(*(&v49 + 1) + 8 * i) photoView];
          contentHelper = [photoView contentHelper];
          photoImage = [contentHelper photoImage];
          v11 = photoImage;
          if (photoImage)
          {
            placeHolderImage = photoImage;
          }

          else
          {
            placeHolderImage = [contentHelper placeHolderImage];
          }

          v13 = placeHolderImage;

          v14 = [v35 indexPathForCell:v7];
          view2 = [(PUCarouselSharingViewController *)self view];
          [(PUCarouselSharingViewController *)self _frameAtIndexPath:v14 inView:view2];
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
          v42 = photoView;
          v43 = v25;
          v44 = v24;
          v26 = v24;
          v27 = v25;
          v28 = photoView;
          v29 = v13;
          v30 = [PUAssetTransitionInfo assetTransitionInfoWithConfigurationBlock:v40];
          [array addObject:v30];
        }
      }

      v39 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v39);
  }

  v31 = [array copy];

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
  view = [(PUCarouselSharingViewController *)self view];
  [view layoutIfNeeded];

  mainCollectionView = [(PUCarouselSharingViewController *)self mainCollectionView];
  v5 = [(PUCarouselSharingViewController *)self _indexPathOfCenterVisibleItemInCollectionView:mainCollectionView];
  v6 = [mainCollectionView cellForItemAtIndexPath:v5];
  photoView = [v6 photoView];
  v8 = [(PUCarouselSharingViewController *)self _assetAtIndexPath:v5];
  contentHelper = [photoView contentHelper];
  photoImage = [contentHelper photoImage];

  view2 = [(PUCarouselSharingViewController *)self view];
  [(PUCarouselSharingViewController *)self _frameAtIndexPath:v5 inView:view2];
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
  v28 = photoImage;
  v29 = photoView;
  v30 = v20;
  v31 = v8;
  v21 = v8;
  v22 = v20;
  v23 = photoView;
  v24 = photoImage;
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

- (CGRect)oneUpAssetTransitionAssetFinalFrame:(id)frame
{
  view = [(PUCarouselSharingViewController *)self view];
  [view layoutIfNeeded];

  currentIndexPath = [(PUCarouselSharingViewController *)self currentIndexPath];
  view2 = [(PUCarouselSharingViewController *)self view];
  [(PUCarouselSharingViewController *)self _frameAtIndexPath:currentIndexPath inView:view2];
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

- (CGRect)_frameAtIndexPath:(id)path inView:(id)view
{
  viewCopy = view;
  pathCopy = path;
  mainCollectionViewLayout = [(PUCarouselSharingViewController *)self mainCollectionViewLayout];
  v9 = [mainCollectionViewLayout layoutAttributesForItemAtIndexPath:pathCopy];

  [v9 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  mainCollectionView = [(PUCarouselSharingViewController *)self mainCollectionView];
  [viewCopy convertRect:mainCollectionView fromView:{v11, v13, v15, v17}];
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

- (BOOL)prepareForDismissingForced:(BOOL)forced
{
  presentedViewController = [(PUCarouselSharingViewController *)self presentedViewController];
  if (!presentedViewController)
  {
    forced = 1;
  }

  if (!forced)
  {
    NSLog(&cfstr_DismissCancell.isa, self);
  }

  return forced;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  mainCollectionView = [(PUCarouselSharingViewController *)self mainCollectionView];
  [touchCopy locationInView:mainCollectionView];
  v8 = v7;
  v10 = v9;

  mainCollectionView2 = [(PUCarouselSharingViewController *)self mainCollectionView];
  v12 = [(PUCarouselSharingViewController *)self _indexPathInCollectionView:mainCollectionView2 closestToPoint:v8, v10];

  v13 = -[PUCarouselSharingViewController _photoCollectionAtIndex:](self, "_photoCollectionAtIndex:", [v12 section]);
  v14 = [(PUCarouselSharingViewController *)self assetsInAssetCollection:v13];
  v15 = [v14 objectAtIndex:{objc_msgSend(v12, "item")}];
  if ([v15 canPlayPhotoIris])
  {
    mainCollectionView3 = [(PUCarouselSharingViewController *)self mainCollectionView];
    v17 = [mainCollectionView3 _visibleSupplementaryViewOfKind:@"PUPhotosSharingOptionBadgeKind" atIndexPath:v12];
  }

  else
  {
    v17 = 0;
  }

  v18 = [v17 pointInside:0 withEvent:{v8, v10}];

  return v18 ^ 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  mainCollectionView = [(PUCarouselSharingViewController *)self mainCollectionView];
  tapGestureRecognizer = self->_tapGestureRecognizer;

  if (tapGestureRecognizer == recognizerCopy)
  {
    panGestureRecognizer = [mainCollectionView panGestureRecognizer];
    if (panGestureRecognizer == gestureRecognizerCopy)
    {
      isDecelerating = [mainCollectionView isDecelerating];
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

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  _pptOnDidEndScrollingBlock = [(PUCarouselSharingViewController *)self _pptOnDidEndScrollingBlock];
  if (_pptOnDidEndScrollingBlock)
  {
    v5 = _pptOnDidEndScrollingBlock;
    [(PUCarouselSharingViewController *)self _pptSetOnDidEndScrollingBlock:0];
    v5[2](v5);
    _pptOnDidEndScrollingBlock = v5;
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  x = velocity.x;
  v49 = *MEMORY[0x1E69E9840];
  draggingCopy = dragging;
  [draggingCopy contentOffset];
  v10 = v9;
  v11 = offset->x;
  y = offset->y;
  [draggingCopy bounds];
  width = v50.size.width;
  height = v50.size.height;
  v50.origin.x = v11;
  v50.origin.y = y;
  MidX = CGRectGetMidX(v50);
  mainCollectionViewLayout = [(PUCarouselSharingViewController *)self mainCollectionViewLayout];
  v17 = [mainCollectionViewLayout layoutAttributesForItemsInRect:{v11, y, width, height}];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v42 objects:v48 count:16];
  analyticsEventsSent2 = v18;
  if (!v19)
  {
    goto LABEL_23;
  }

  v21 = v19;
  offsetCopy = offset;
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
      indexPath = [v26 indexPath];
      v28 = [(PUCarouselSharingViewController *)self _assetAtIndexPath:indexPath];
      if ([(PUCarouselSharingViewController *)self _shouldShowAsset:v28])
      {
        [(PUCarouselSharingViewController *)self _horizontalOffsetInCollectionView:draggingCopy forCenteringOnItemAtIndexPath:indexPath];
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
    offsetCopy->x = v24;
    offsetCopy->y = 0.0;
    analyticsEventsSent = [(PUCarouselSharingViewController *)self analyticsEventsSent];
    v36 = [analyticsEventsSent containsObject:@"com.apple.photos.CPAnalytics.shareSheetCarouselScrolled"];

    if ((v36 & 1) == 0)
    {
      v37 = MEMORY[0x1E6991F28];
      v46 = *MEMORY[0x1E6991E20];
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      v47 = v39;
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      [v37 sendEvent:@"com.apple.photos.CPAnalytics.shareSheetCarouselScrolled" withPayload:v40];

      analyticsEventsSent2 = [(PUCarouselSharingViewController *)self analyticsEventsSent];
      [analyticsEventsSent2 addObject:@"com.apple.photos.CPAnalytics.shareSheetCarouselScrolled"];
LABEL_23:
    }
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  [(PUScrollViewSpeedometer *)self->_speedometer scrollViewDidScroll:scroll];
  [(PUCarouselSharingViewController *)self _updatePreheatedAssets];
  photosSharingTransitionContext = [(PUCarouselSharingViewController *)self photosSharingTransitionContext];

  if (!photosSharingTransitionContext)
  {
    v5 = [(PUCarouselSharingViewController *)self _indexPathOfCenterVisibleItemInCollectionView:self->_mainCollectionView];
    [(PUCarouselSharingViewController *)self _setLastKnownReferenceAsset:0 indexPath:v5];
  }
}

- (double)layout:(id)layout collectionView:(id)view bottomBadgeInsetforItemAtIndexPath:(id)path
{
  view = [(PUCarouselSharingViewController *)self _assetAtIndexPath:path, view];
  if ([view playbackStyle] == 4 || (v6 = 0.0, objc_msgSend(view, "playbackStyle") == 5) && (objc_msgSend(MEMORY[0x1E69C3378], "sharedInstance"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "showLoopBadges"), v7, v8))
  {
    v6 = 24.0;
  }

  return v6;
}

- (CGSize)layout:(id)layout collectionView:(id)view sizeForBadgeViewOfKind:(id)kind forItemAtIndexPath:(id)path
{
  kindCopy = kind;
  pathCopy = path;
  if ([kindCopy isEqualToString:@"PUPhotosSharingSelectionBadgeKind"])
  {
    spec = [(PUCarouselSharingViewController *)self spec];
    [spec selectionBadgeSize];
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v12 = *MEMORY[0x1E695F060];
    v14 = *(MEMORY[0x1E695F060] + 8);
    if (![kindCopy isEqualToString:@"PUPhotosSharingOptionBadgeKind"])
    {
      goto LABEL_8;
    }

    spec = [(PUCarouselSharingViewController *)self _assetAtIndexPath:pathCopy];
    v15 = +[PURootSettings sharedInstance];
    irisUIEnabled = [v15 irisUIEnabled];

    if (irisUIEnabled && [spec canPlayPhotoIris])
    {
      spec2 = [(PUCarouselSharingViewController *)self spec];
      [spec2 optionBadgeSize];
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

- (CGSize)layout:(id)layout collectionView:(id)view sizeForItemAtIndexPath:(id)path
{
  [(PUCarouselSharingViewController *)self _sizeForItemAtIndexPath:path, view];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)collectionView:(id)view didEndDisplayingSupplementaryView:(id)supplementaryView forElementOfKind:(id)kind atIndexPath:(id)path
{
  supplementaryViewCopy = supplementaryView;
  if ([kind isEqualToString:@"PUPhotosSharingOptionBadgeKind"])
  {
    [(NSMapTable *)self->_indexPathsByOptionView removeObjectForKey:supplementaryViewCopy];
  }
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = cellCopy;
  if (isKindOfClass)
  {
    v8 = cellCopy;
    currentImageRequestID = [v8 currentImageRequestID];
    if (currentImageRequestID)
    {
      cachingImageManager = [(PUCarouselSharingViewController *)self cachingImageManager];
      [cachingImageManager cancelImageRequest:currentImageRequestID];

      [v8 setCurrentImageRequestID:0];
    }

    photoView = [v8 photoView];
    contentHelper = [photoView contentHelper];

    [contentHelper setLivePhoto:0];
    [contentHelper setLoopingVideoAsset:0];
    [contentHelper setAnimatedImage:0];
    [contentHelper setLoopingPlaybackAllowed:0];

    v7 = cellCopy;
  }

  MEMORY[0x1EEE66BB8](isKindOfClass, v7);
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  if ([kindCopy isEqualToString:@"PUPhotosSharingSelectionBadgeKind"])
  {
    v12 = [(PUCarouselSharingViewController *)self _selectionViewAtIndexPath:pathCopy forCollectionView:viewCopy];
  }

  else
  {
    if (![kindCopy isEqualToString:@"PUPhotosSharingOptionBadgeKind"])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUCarouselSharingViewController.m" lineNumber:1745 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v12 = [(PUCarouselSharingViewController *)self _optionViewAtIndexPath:pathCopy forCollectionView:viewCopy];
  }

  v13 = v12;

  return v13;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithReuseIdentifier:@"PUPhotosSharingCellIdentifier" forIndexPath:pathCopy];
  [(PUCarouselSharingViewController *)self _updateCell:v7 forItemAtIndexPath:pathCopy];

  return v7;
}

- (void)setHideCellForCurrentReferenceAsset:(BOOL)asset
{
  assetCopy = asset;
  mainCollectionView = [(PUCarouselSharingViewController *)self mainCollectionView];
  v5 = [(PUCarouselSharingViewController *)self _indexPathOfCenterVisibleItemInCollectionView:mainCollectionView];
  v6 = [mainCollectionView cellForItemAtIndexPath:v5];
  v7 = [mainCollectionView _visibleSupplementaryViewOfKind:@"PUPhotosSharingSelectionBadgeKind" atIndexPath:v5];
  v8 = [mainCollectionView _visibleSupplementaryViewOfKind:@"PUPhotosSharingOptionBadgeKind" atIndexPath:v5];
  [v6 setHidden:assetCopy];
  [v7 setHidden:assetCopy];
  [v8 setHidden:assetCopy];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  mainCollectionView = [(PUCarouselSharingViewController *)self mainCollectionView];
  v9 = [(PUCarouselSharingViewController *)self _indexPathOfCenterVisibleItemInCollectionView:mainCollectionView];

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
  [coordinatorCopy animateAlongsideTransition:v14 completion:v13];
  v12.receiver = self;
  v12.super_class = PUCarouselSharingViewController;
  [(PUCarouselSharingViewController *)&v12 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
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
  photosSharingTransitionContext = [(PUCarouselSharingViewController *)self photosSharingTransitionContext];
  v4 = photosSharingTransitionContext;
  if (self->_shouldScrollToSelection)
  {
    keyAssetIndexPath = [photosSharingTransitionContext keyAssetIndexPath];
    if (keyAssetIndexPath || ([(PUCarouselSharingViewController *)self _firstSelectedIndexPath], (keyAssetIndexPath = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v6 = keyAssetIndexPath;
      [(PUCarouselSharingViewController *)self _pageToIndexPath:keyAssetIndexPath animated:0];
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
    currentIndexPath = [(PUCarouselSharingViewController *)self currentIndexPath];
    inFlightReferenceIndexPath = self->_inFlightReferenceIndexPath;
    self->_inFlightReferenceIndexPath = currentIndexPath;
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
  _lastKnownReferenceAsset = [(PUCarouselSharingViewController *)self _lastKnownReferenceAsset];
  if (_lastKnownReferenceAsset)
  {
    goto LABEL_2;
  }

  _lastKnownReferenceIndexPath = [(PUCarouselSharingViewController *)self _lastKnownReferenceIndexPath];

  if (!_lastKnownReferenceIndexPath)
  {
    _lastKnownReferenceAsset = [(PUCarouselSharingViewController *)self _firstSelectedIndexPath];
    [(PUCarouselSharingViewController *)self _setLastKnownReferenceAsset:0 indexPath:_lastKnownReferenceAsset];
LABEL_2:
  }

  view = [(PUCarouselSharingViewController *)self view];
  v6 = +[PUInterfaceManager currentTheme];
  photoCollectionViewBackgroundColor = [v6 photoCollectionViewBackgroundColor];
  [view setBackgroundColor:photoCollectionViewBackgroundColor];

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
  photoSelectionManager = [(PUCarouselSharingViewController *)self photoSelectionManager];
  photoCollectionsFetchResult = self->_photoCollectionsFetchResult;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__PUCarouselSharingViewController__firstSelectedIndexPath__block_invoke;
  v7[3] = &unk_1E7B7D2B8;
  v7[4] = &v8;
  [photoSelectionManager enumerateSelectedAssetsWithAssetCollectionOrdering:photoCollectionsFetchResult block:v7];
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

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PUCarouselSharingViewController;
  [(PUCarouselSharingViewController *)&v5 viewWillDisappear:disappear];
  presentedViewController = [(PUCarouselSharingViewController *)self presentedViewController];

  if (!presentedViewController)
  {
    self->_shouldPlayVitalityHintAfterViewDidAppear = 0;
  }

  [(PUCarouselSharingViewController *)self _setLoopingPlaybackAllowed:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PUCarouselSharingViewController;
  [(PUCarouselSharingViewController *)&v4 viewDidAppear:appear];
  [(PUCarouselSharingViewController *)self _handlePhotoViewLoaderBlocks];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PUCarouselSharingViewController;
  [(PUCarouselSharingViewController *)&v4 viewWillAppear:appear];
  [(PUCarouselSharingViewController *)self _updateMainViewAnimated:0];
  if (![(PUCarouselSharingViewController *)self _isViewInSyncWithModel])
  {
    [(PUCarouselSharingViewController *)self _updateInterfaceForModelReloadAnimated:0];
  }

  [(PUCarouselSharingViewController *)self _setLoopingPlaybackAllowed:1];
}

- (void)setSendAsAssetBundles:(BOOL)bundles
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_sendAsAssetBundles != bundles)
  {
    self->_sendAsAssetBundles = bundles;
    if (bundles)
    {
      photoSelectionManager = [(PUCarouselSharingViewController *)self photoSelectionManager];
      orderedSelectedAssets = [photoSelectionManager orderedSelectedAssets];

      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v6 = orderedSelectedAssets;
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

- (void)setReadyForInteraction:(BOOL)interaction
{
  if (self->_readyForInteraction != interaction)
  {
    self->_readyForInteraction = interaction;
    [(PUCarouselSharingViewController *)self _handlePhotoViewLoaderBlocks];
  }
}

- (void)_setLoopingPlaybackAllowed:(BOOL)allowed
{
  if (self->__loopingPlaybackAllowed != allowed)
  {
    self->__loopingPlaybackAllowed = allowed;
    [(PUCarouselSharingViewController *)self _updateAdditionalContentForVisibleCells];
  }
}

- (void)_updateMainViewAnimated:(BOOL)animated
{
  if (![(PUCarouselSharingViewController *)self isViewLoaded])
  {
    return;
  }

  spec = [(PUCarouselSharingViewController *)self spec];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  [(PUCarouselSharingViewController *)self _getMainCollectionViewFrame:&v27 collectionViewLayoutInsets:&v29];
  mainCollectionView = [(PUCarouselSharingViewController *)self mainCollectionView];
  mainCollectionViewLayout = [(PUCarouselSharingViewController *)self mainCollectionViewLayout];
  [spec interItemSpacing];
  if (mainCollectionViewLayout)
  {
    if (mainCollectionView)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v16 = v7;
    mainCollectionViewLayout = objc_alloc_init(PUPhotosSharingCollectionViewLayout);
    -[PUPhotosSharingCollectionViewLayout setSharingBadgesCorner:](mainCollectionViewLayout, "setSharingBadgesCorner:", [spec selectionBadgeCorner]);
    [spec selectionBadgeOffset];
    [(PUPhotosSharingCollectionViewLayout *)mainCollectionViewLayout setSharingBadgesOffset:?];
    [(PUPhotosSharingCollectionViewLayout *)mainCollectionViewLayout _setWantsRightToLeftHorizontalMirroringIfNeeded:1];
    [(PUHorizontalTiledCollectionViewLayout *)mainCollectionViewLayout setDelegate:self];
    [(PUCarouselSharingViewController *)self _setMainCollectionViewLayout:mainCollectionViewLayout];
    [(PUHorizontalTiledCollectionViewLayout *)mainCollectionViewLayout setInteritemSpacing:v16];
    if (mainCollectionView)
    {
      goto LABEL_4;
    }
  }

  v17 = objc_alloc(MEMORY[0x1E69DC7F0]);
  mainCollectionView = [v17 initWithFrame:mainCollectionViewLayout collectionViewLayout:{v27, v28}];
  [mainCollectionView setAutoresizingMask:18];
  [(PUCarouselSharingViewController *)self _setMainCollectionView:mainCollectionView];
  view = [(PUCarouselSharingViewController *)self view];
  [view addSubview:mainCollectionView];

  [mainCollectionView setAlwaysBounceVertical:0];
  [mainCollectionView setAlwaysBounceHorizontal:1];
  [mainCollectionView setPagingEnabled:0];
  [mainCollectionView setDecelerationRate:*MEMORY[0x1E69DE3A0]];
  [mainCollectionView setDataSource:self];
  [mainCollectionView setDelegate:self];
  [mainCollectionView setShowsHorizontalScrollIndicator:0];
  [mainCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PUPhotosSharingCellIdentifier"];
  [mainCollectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:@"PUPhotosSharingSelectionBadgeKind" withReuseIdentifier:@"PUPhotosSharingBadgeIdentifier"];
  [mainCollectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:@"PUPhotosSharingOptionBadgeKind" withReuseIdentifier:@"PUPhotosSharingOptionIdentifier"];
  [mainCollectionView setContentInsetAdjustmentBehavior:2];
  v19 = +[PUInterfaceManager currentTheme];
  photoCollectionViewBackgroundColor = [v19 photoCollectionViewBackgroundColor];

  [mainCollectionView setBackgroundColor:photoCollectionViewBackgroundColor];
  v21 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTapInMainCollectionView_];
  tapGestureRecognizer = self->_tapGestureRecognizer;
  self->_tapGestureRecognizer = v21;

  [(UITapGestureRecognizer *)self->_tapGestureRecognizer setNumberOfTapsRequired:1];
  [(UITapGestureRecognizer *)self->_tapGestureRecognizer setNumberOfTouchesRequired:1];
  [(UITapGestureRecognizer *)self->_tapGestureRecognizer setDelegate:self];
  [mainCollectionView addGestureRecognizer:self->_tapGestureRecognizer];
  v23 = objc_alloc_init(PUScrollViewSpeedometer);
  speedometer = self->_speedometer;
  self->_speedometer = v23;

  [(PUScrollViewSpeedometer *)self->_speedometer setMediumLowerThreshold:100.0];
  [(PUScrollViewSpeedometer *)self->_speedometer setMediumUpperThreshold:500.0];
  [(PUScrollViewSpeedometer *)self->_speedometer setFastLowerThreshold:500.0];
  [(PUScrollViewSpeedometer *)self->_speedometer setFastUpperThreshold:1000.0];
  [(PUScrollViewSpeedometer *)self->_speedometer setDelegate:self];

LABEL_4:
  [mainCollectionView setFrame:{v27, v28}];
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

  [(PUHorizontalTiledCollectionViewLayout *)mainCollectionViewLayout setItemsContentInset:*&v29, v13, *&v30, v15];
}

- (void)_processCollectionListChangeNotifications:(id)notifications singleCollectionNotifications:(id)collectionNotifications needsReloadData:(BOOL)data
{
  dataCopy = data;
  collectionNotificationsCopy = collectionNotifications;
  if (![notifications count] && !objc_msgSend(collectionNotificationsCopy, "count"))
  {
    goto LABEL_19;
  }

  _lastKnownReferenceAsset = [(PUCarouselSharingViewController *)self _lastKnownReferenceAsset];
  _lastKnownReferenceIndexPath = [(PUCarouselSharingViewController *)self _lastKnownReferenceIndexPath];
  v10 = _lastKnownReferenceIndexPath;
  if (!_lastKnownReferenceAsset)
  {
    v12 = 0;
    goto LABEL_9;
  }

  if (_lastKnownReferenceIndexPath)
  {
    section = [_lastKnownReferenceIndexPath section];
  }

  else
  {
    section = 0x7FFFFFFFFFFFFFFFLL;
  }

  v12 = [(PUCarouselSharingViewController *)self _indexPathOfAsset:_lastKnownReferenceAsset sectionHint:section];
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

  if (dataCopy)
  {
    if (-[PUCarouselSharingViewController isViewLoaded](self, "isViewLoaded") && (-[PUCarouselSharingViewController view](self, "view"), v15 = objc_claimAutoreleasedReturnValue(), [v15 window], v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v16))
    {
      mainCollectionView = [(PUCarouselSharingViewController *)self mainCollectionView];
      [mainCollectionView reloadData];

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

- (void)photoLibraryDidChangeOnMainQueue:(id)queue
{
  v41 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  array = [MEMORY[0x1E695DF70] array];
  photoCollectionsFetchResult = [(PUCarouselSharingViewController *)self photoCollectionsFetchResult];
  v7 = [queueCopy changeDetailsForFetchResult:photoCollectionsFetchResult];

  if (v7)
  {
    if (([v7 hasMoves] & 1) == 0 && objc_msgSend(v7, "hasIncrementalChanges"))
    {
      insertedIndexes = [v7 insertedIndexes];
      if ([insertedIndexes count])
      {
      }

      else
      {
        removedIndexes = [v7 removedIndexes];
        v10 = [removedIndexes count] == 0;

        if (v10)
        {
LABEL_8:
          [array addObject:v7];
          fetchResultAfterChanges = [v7 fetchResultAfterChanges];
          photoCollectionsFetchResult = self->_photoCollectionsFetchResult;
          self->_photoCollectionsFetchResult = fetchResultAfterChanges;

          goto LABEL_9;
        }
      }
    }

    *(v37 + 24) = 1;
    goto LABEL_8;
  }

LABEL_9:
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  resultsForAssetCollection = self->_resultsForAssetCollection;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __68__PUCarouselSharingViewController_photoLibraryDidChangeOnMainQueue___block_invoke;
  v32[3] = &unk_1E7B7D268;
  v15 = queueCopy;
  v33 = v15;
  v35 = &v36;
  v16 = dictionary;
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
  if ([array count] || objc_msgSend(v16, "count"))
  {
    photoSelectionManager = [(PUCarouselSharingViewController *)self photoSelectionManager];
    [photoSelectionManager handlePhotoLibraryChange:v15];

    photoSelectionManager2 = [(PUCarouselSharingViewController *)self photoSelectionManager];
    orderedSelectedAssets = [photoSelectionManager2 orderedSelectedAssets];

    v25 = [(PUCarouselSharingViewController *)self _updatedActivityAssetItemsForAssets:orderedSelectedAssets];
    delegate = [(PUCarouselSharingViewController *)self delegate];
    [delegate carouselSharingViewController:self setAssetItems:v25];

    [(PUCarouselSharingViewController *)self _processCollectionListChangeNotifications:array singleCollectionNotifications:v16 needsReloadData:*(v37 + 24)];
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

- (BOOL)ppt_scrollToAssetAtRelativeIndex:(int64_t)index completion:(id)completion
{
  completionCopy = completion;
  if (index != -1 && index != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUCarouselSharingViewController.m" lineNumber:1325 description:@"only support single step"];
  }

  currentIndexPath = [(PUCarouselSharingViewController *)self currentIndexPath];
  mainCollectionView = [(PUCarouselSharingViewController *)self mainCollectionView];
  v11 = [mainCollectionView next:index indexPathFromIndexPath:currentIndexPath];

  if (v11)
  {
    [(PUCarouselSharingViewController *)self _pptSetOnDidEndScrollingBlock:completionCopy];
    [(PUCarouselSharingViewController *)self _pageToIndexPath:v11 animated:1];
  }

  return v11 != 0;
}

- (CGRect)frameForBadgeOfKind:(id)kind forItemFrame:(CGRect)frame atIndexPath:(id)path
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  kindCopy = kind;
  pathCopy = path;
  height = [[PUPhotosSharingCollectionViewItemSublayout alloc] initWithIndexPath:pathCopy itemFrame:x, y, width, height];
  [(PUCarouselSharingViewController *)self layout:0 collectionView:0 sizeForBadgeViewOfKind:@"PUPhotosSharingSelectionBadgeKind" forItemAtIndexPath:pathCopy];
  [(PUPhotosSharingCollectionViewItemSublayout *)height setSelectionBadgeSize:?];
  [(PUCarouselSharingViewController *)self layout:0 collectionView:0 sizeForBadgeViewOfKind:@"PUPhotosSharingOptionBadgeKind" forItemAtIndexPath:pathCopy];
  v15 = v14;
  v17 = v16;

  [(PUPhotosSharingCollectionViewItemSublayout *)height setOptionBadgeSize:v15, v17];
  LOBYTE(pathCopy) = [kindCopy isEqualToString:@"PUPhotosSharingSelectionBadgeKind"];
  spec = [(PUCarouselSharingViewController *)self spec];
  v19 = spec;
  if (pathCopy)
  {
    selectionBadgeCorner = [spec selectionBadgeCorner];
  }

  else
  {
    selectionBadgeCorner = [spec optionBadgeCorner];
  }

  v21 = selectionBadgeCorner;

  [(PUPhotosSharingCollectionViewItemSublayout *)height setBadgesCorner:v21];
  spec2 = [(PUCarouselSharingViewController *)self spec];
  [spec2 selectionBadgeOffset];
  [(PUPhotosSharingCollectionViewItemSublayout *)height setBadgesOffset:?];

  [(PUPhotosSharingCollectionViewItemSublayout *)height prepareSublayout];
  if ([kindCopy isEqualToString:@"PUPhotosSharingSelectionBadgeKind"])
  {
    selectionBadgeLayoutAttributes = [(PUPhotosSharingCollectionViewItemSublayout *)height selectionBadgeLayoutAttributes];
  }

  else
  {
    if (![kindCopy isEqualToString:@"PUPhotosSharingOptionBadgeKind"])
    {
LABEL_10:
      v26 = *MEMORY[0x1E695F058];
      v28 = *(MEMORY[0x1E695F058] + 8);
      v30 = *(MEMORY[0x1E695F058] + 16);
      v32 = *(MEMORY[0x1E695F058] + 24);
      goto LABEL_11;
    }

    selectionBadgeLayoutAttributes = [(PUPhotosSharingCollectionViewItemSublayout *)height optionBadgeLayoutAttributes];
  }

  v24 = selectionBadgeLayoutAttributes;
  if (!selectionBadgeLayoutAttributes)
  {
    goto LABEL_10;
  }

  [selectionBadgeLayoutAttributes frame];
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
  mainCollectionView = [(PUCarouselSharingViewController *)self mainCollectionView];
  [mainCollectionView bounds];
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
        collectionViewLayout = [mainCollectionView collectionViewLayout];
        v18 = collectionViewLayout;
        if (photosSharingTransitionContext)
        {
          [collectionViewLayout layoutAttributesForElementsInRect:{v11, v12, v14, v15}];
        }

        else
        {
          [collectionViewLayout layoutAttributesForItemsInRect:{v11, v12, v14, v15}];
        }
        v19 = ;

        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v21 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v19, "count")}];
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v22 = v19;
        v23 = dictionary;
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
                indexPath = [v28 indexPath];
                v30 = [(PUCarouselSharingViewController *)self _assetAtIndexPath:indexPath];
                [v21 addObject:v30];
                [v23 setObject:v28 forKey:v30];
              }
            }

            v25 = [obj countByEnumeratingWithState:&v76 objects:v84 count:16];
          }

          while (v25);
        }

        _preheatedAssets = [(PUCarouselSharingViewController *)self _preheatedAssets];
        [(PUCarouselSharingViewController *)self _setPreheatedAssets:v21];
        v32 = [v21 mutableCopy];
        [v32 minusSet:_preheatedAssets];
        v65 = [_preheatedAssets mutableCopy];
        [v65 minusSet:v21];
        if ([v32 count] || objc_msgSend(v65, "count"))
        {
          v61 = _preheatedAssets;
          v62 = v21;
          v64 = mainCollectionView;
          v33 = objc_opt_new();
          cachingImageManager = [(PUCarouselSharingViewController *)self cachingImageManager];
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
                [cachingImageManager startCachingImagesForAssets:v46 targetSize:0 contentMode:v33 options:{v43, v45}];
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
                mainCollectionViewLayout = [(PUCarouselSharingViewController *)self mainCollectionViewLayout];
                v54 = [mainCollectionViewLayout layoutAttributesForItemAtIndexPath:v52];

                [v54 frame];
                v56 = PUPixelSizeFromPointSize(v55);
                v58 = v57;
                v80 = v51;
                v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];
                [cachingImageManager stopCachingImagesForAssets:v59 targetSize:0 contentMode:v33 options:{v56, v58}];
              }

              v48 = [v66 countByEnumeratingWithState:&v68 objects:v81 count:16];
            }

            while (v48);
          }

          v23 = v63;
          mainCollectionView = v64;
          _preheatedAssets = v61;
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

- (id)_optionViewAtIndexPath:(id)path forCollectionView:(id)view
{
  if (view)
  {
    pathCopy = path;
    v8 = [view dequeueReusableSupplementaryViewOfKind:@"PUPhotosSharingOptionBadgeKind" withReuseIdentifier:@"PUPhotosSharingOptionIdentifier" forIndexPath:pathCopy];
    [(PUPhotosSharingOptionView *)v8 setTarget:self action:sel__handleSelectionOption_];
    [(NSMapTable *)self->_indexPathsByOptionView setObject:pathCopy forKey:v8];
  }

  else
  {
    pathCopy2 = path;
    v8 = objc_alloc_init(PUPhotosSharingOptionView);
  }

  [(PUCarouselSharingViewController *)self _updateOptionView:v8 atIndexPath:path];

  return v8;
}

- (id)_selectionViewAtIndexPath:(id)path forCollectionView:(id)view
{
  pathCopy = path;
  viewCopy = view;
  if (!viewCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUCarouselSharingViewController.m" lineNumber:1206 description:{@"Invalid parameter not satisfying: %@", @"collectionView"}];
  }

  v9 = [viewCopy dequeueReusableSupplementaryViewOfKind:@"PUPhotosSharingSelectionBadgeKind" withReuseIdentifier:@"PUPhotosSharingBadgeIdentifier" forIndexPath:pathCopy];
  v10 = -[PUCarouselSharingViewController _photoCollectionAtIndex:](self, "_photoCollectionAtIndex:", [pathCopy section]);
  photoSelectionManager = [(PUCarouselSharingViewController *)self photoSelectionManager];
  v12 = [photoSelectionManager isAssetAtIndexSelected:objc_msgSend(pathCopy inAssetCollection:{"item"), v10}];

  [v9 setSelected:v12 animated:0];

  return v9;
}

- (void)setPhotosSharingTransitionLayout:(id)layout animated:(BOOL)animated
{
  animatedCopy = animated;
  layoutCopy = layout;
  _transitionLayout = [(PUCarouselSharingViewController *)self _transitionLayout];

  v8 = layoutCopy;
  if (_transitionLayout != layoutCopy)
  {
    objc_storeStrong(&self->__transitionLayout, layout);
    if (layoutCopy)
    {
      mainCollectionViewLayout = layoutCopy;
    }

    else
    {
      mainCollectionViewLayout = [(PUCarouselSharingViewController *)self mainCollectionViewLayout];
    }

    v10 = mainCollectionViewLayout;
    mainCollectionView = [(PUCarouselSharingViewController *)self mainCollectionView];
    [mainCollectionView setCollectionViewLayout:v10 animated:animatedCopy];

    v8 = layoutCopy;
  }
}

- (void)_updateCellAtIndexPath:(id)path withTransitionInfo:(id)info
{
  infoCopy = info;
  pathCopy = path;
  mainCollectionView = [(PUCarouselSharingViewController *)self mainCollectionView];
  v9 = [mainCollectionView cellForItemAtIndexPath:pathCopy];

  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      px_descriptionForAssertionMessage = [v9 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUCarouselSharingViewController.m" lineNumber:1180 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"[self.mainCollectionView cellForItemAtIndexPath:indexPath]", v23, px_descriptionForAssertionMessage}];
    }

    image = [infoCopy image];
    photoView = [v9 photoView];
    contentHelper = [photoView contentHelper];
    photoImage = [contentHelper photoImage];

    [image size];
    v15 = v14;
    [photoImage size];
    if (v15 > v16)
    {
      photoView2 = [v9 photoView];
      contentHelper2 = [photoView2 contentHelper];
      [contentHelper2 setPhotoImage:0];

      photoView3 = [v9 photoView];
      contentHelper3 = [photoView3 contentHelper];
      [contentHelper3 setPlaceHolderImage:image];
    }
  }
}

- (void)_updateAssetTransitionInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    v15 = infoCopy;
    asset = [infoCopy asset];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_6:

      infoCopy = v15;
      goto LABEL_7;
    }

    v7 = asset;
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_5:
        currentIndexPath = [(PUCarouselSharingViewController *)self currentIndexPath];
        v9 = -[PUCarouselSharingViewController _indexPathOfAsset:sectionHint:](self, "_indexPathOfAsset:sectionHint:", v7, [currentIndexPath section]);

        [(PUCarouselSharingViewController *)self _updateCellAtIndexPath:v9 withTransitionInfo:v15];
        goto LABEL_6;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = objc_opt_class();
      v12 = NSStringFromClass(v13);
      px_descriptionForAssertionMessage = [v7 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUCarouselSharingViewController.m" lineNumber:1172 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"displayAsset", v12, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUCarouselSharingViewController.m" lineNumber:1172 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"displayAsset", v12}];
    }

    goto LABEL_5;
  }

LABEL_7:
}

- (void)setTrailingAssetTransitionInfo:(id)info
{
  infoCopy = info;
  if (self->_trailingAssetTransitionInfo != infoCopy)
  {
    v6 = infoCopy;
    objc_storeStrong(&self->_trailingAssetTransitionInfo, info);
    [(PUCarouselSharingViewController *)self _updateAssetTransitionInfo:self->_trailingAssetTransitionInfo];
    infoCopy = v6;
  }
}

- (void)setLeadingAssetTransitionInfo:(id)info
{
  infoCopy = info;
  if (self->_leadingAssetTransitionInfo != infoCopy)
  {
    v6 = infoCopy;
    objc_storeStrong(&self->_leadingAssetTransitionInfo, info);
    [(PUCarouselSharingViewController *)self _updateAssetTransitionInfo:self->_leadingAssetTransitionInfo];
    infoCopy = v6;
  }
}

- (void)setOneUpPhotosSharingTransitionInfo:(id)info
{
  infoCopy = info;
  if (self->_assetTransitionInfo != infoCopy)
  {
    objc_storeStrong(&self->_assetTransitionInfo, info);
    if (self->_assetTransitionInfo)
    {
      currentIndexPath = [(PUCarouselSharingViewController *)self currentIndexPath];
      [(PUCarouselSharingViewController *)self _updateCellAtIndexPath:currentIndexPath withTransitionInfo:self->_assetTransitionInfo];
    }
  }
}

- (void)setOneUpPhotosSharingTransitionContext:(id)context
{
  contextCopy = context;
  if (self->_photosSharingTransitionContext != contextCopy)
  {
    v15 = contextCopy;
    objc_storeStrong(&self->_photosSharingTransitionContext, context);
    contextCopy = v15;
    if (v15)
    {
      currentAssetReference = [(PUPhotosSharingTransitionContext *)v15 currentAssetReference];
      asset = [currentAssetReference asset];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_7:

        contextCopy = v15;
        goto LABEL_8;
      }

      v9 = asset;
      if (v9)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
LABEL_6:
          [(PUCarouselSharingViewController *)self _setLastKnownReferenceAsset:v9 indexPath:0];

          goto LABEL_7;
        }

        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v13 = objc_opt_class();
        v12 = NSStringFromClass(v13);
        px_descriptionForAssertionMessage = [v9 px_descriptionForAssertionMessage];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PUCarouselSharingViewController.m" lineNumber:1133 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"displayAsset", v12, px_descriptionForAssertionMessage}];
      }

      else
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        [currentHandler handleFailureInMethod:a2 object:self file:@"PUCarouselSharingViewController.m" lineNumber:1133 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"displayAsset", v12}];
      }

      goto LABEL_6;
    }
  }

LABEL_8:
}

- (void)setPhotosSharingTransitionContext:(id)context
{
  v21 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if (self->_photosSharingTransitionContext != contextCopy)
  {
    objc_storeStrong(&self->_photosSharingTransitionContext, context);
    photosSharingTransitionContext = self->_photosSharingTransitionContext;
    if (photosSharingTransitionContext)
    {
      keyAssetIndexPath = [(PUPhotosSharingTransitionContext *)photosSharingTransitionContext keyAssetIndexPath];
      [(PUCarouselSharingViewController *)self _setLastKnownReferenceAsset:0 indexPath:keyAssetIndexPath];
    }

    mainCollectionView = [(PUCarouselSharingViewController *)self mainCollectionView];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    visibleCells = [mainCollectionView visibleCells];
    v10 = [visibleCells countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(visibleCells);
          }

          v14 = *(*(&v16 + 1) + 8 * i);
          v15 = [mainCollectionView indexPathForCell:v14];
          [(PUCarouselSharingViewController *)self _updateCell:v14 forItemAtIndexPath:v15];
        }

        v11 = [visibleCells countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }
}

- (PHAsset)currentAsset
{
  _lastKnownReferenceAsset = [(PUCarouselSharingViewController *)self _lastKnownReferenceAsset];
  if (_lastKnownReferenceAsset)
  {
    currentIndexPath = [(PUCarouselSharingViewController *)self currentIndexPath];
    if (currentIndexPath)
    {
      _lastKnownReferenceAsset2 = [(PUCarouselSharingViewController *)self _lastKnownReferenceAsset];

      _lastKnownReferenceAsset = _lastKnownReferenceAsset2;
    }
  }

  return _lastKnownReferenceAsset;
}

- (id)currentIndexPath
{
  _lastKnownReferenceIndexPath = [(PUCarouselSharingViewController *)self _lastKnownReferenceIndexPath];

  if (_lastKnownReferenceIndexPath && ([(PUCarouselSharingViewController *)self _lastKnownReferenceIndexPath], (v4 = objc_claimAutoreleasedReturnValue()) != 0) || ([(PUCarouselSharingViewController *)self _updateLastKnownReferenceIndexPath], [(PUCarouselSharingViewController *)self _lastKnownReferenceIndexPath], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
LABEL_4:
    v5 = v4;
    goto LABEL_5;
  }

  _lastKnownReferenceAsset = [(PUCarouselSharingViewController *)self _lastKnownReferenceAsset];

  if (!_lastKnownReferenceAsset || ([(PUCarouselSharingViewController *)self _lastKnownReferenceAsset], v8 = objc_claimAutoreleasedReturnValue(), [(PUCarouselSharingViewController *)self _indexPathOfAsset:v8 sectionHint:0x7FFFFFFFFFFFFFFFLL], v5 = objc_claimAutoreleasedReturnValue(), v8, !v5))
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

- (void)_setLastKnownReferenceAsset:(id)asset indexPath:(id)path
{
  assetCopy = asset;
  pathCopy = path;
  if ((!assetCopy || pathCopy) && !assetCopy && pathCopy)
  {
    assetCopy = [(PUCarouselSharingViewController *)self _assetAtIndexPath:pathCopy];
  }

  [(PUCarouselSharingViewController *)self _setLastKnownReferenceIndexPath:pathCopy];
  [(PUCarouselSharingViewController *)self _setLastKnownReferenceAsset:assetCopy];
}

- (void)_updateLastKnownReferenceIndexPath
{
  mainCollectionView = [(PUCarouselSharingViewController *)self mainCollectionView];
  mainCollectionViewLayout = [(PUCarouselSharingViewController *)self mainCollectionViewLayout];
  if (mainCollectionView && [mainCollectionViewLayout hasReferenceIndexPath])
  {
    v4 = [(PUCarouselSharingViewController *)self _indexPathOfCenterVisibleItemInCollectionView:mainCollectionView];
    [(PUCarouselSharingViewController *)self _setLastKnownReferenceAsset:0 indexPath:v4];
  }
}

- (id)_validIndexPathFromIndexPath:(id)path
{
  pathCopy = path;
  if (!pathCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUCarouselSharingViewController.m" lineNumber:1024 description:@"expected index path"];
  }

  v6 = [(PUCarouselSharingViewController *)self _numberOfSections]- 1;
  section = [pathCopy section];
  if (v6 >= section)
  {
    v6 = section;
  }

  item = [pathCopy item];
  if ((v6 & 0x8000000000000000) == 0)
  {
    v9 = item;
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

- (void)_getMainCollectionViewFrame:(CGRect *)frame collectionViewLayoutInsets:(UIEdgeInsets *)insets
{
  view = [(PUCarouselSharingViewController *)self view];
  [view bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  if (frame)
  {
    frame->origin.x = v8;
    frame->origin.y = v10;
    frame->size.width = v12;
    frame->size.height = v14;
  }

  if (insets)
  {
    v15 = *(MEMORY[0x1E69DDCE0] + 16);
    *&insets->top = *MEMORY[0x1E69DDCE0];
    *&insets->bottom = v15;
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

- (void)_handleTapInMainCollectionView:(id)view
{
  viewCopy = view;
  mainCollectionView = [(PUCarouselSharingViewController *)self mainCollectionView];
  [viewCopy locationInView:mainCollectionView];
  v6 = v5;

  v7 = [(PUCarouselSharingViewController *)self _indexPathInCollectionView:mainCollectionView closestToContentOffsetX:v6];
  if (v7)
  {
    [(PUCarouselSharingViewController *)self _handleTapAtIndexPath:v7];
  }
}

- (void)_handleTapAtIndexPath:(id)path
{
  pathCopy = path;
  mainCollectionView = [(PUCarouselSharingViewController *)self mainCollectionView];
  v5 = [(PUCarouselSharingViewController *)self _assetAtIndexPath:pathCopy];
  if ([v5 canPerformSharingAction] && -[PUCarouselSharingViewController selectionEnabled](self, "selectionEnabled"))
  {
    v6 = -[PUCarouselSharingViewController _photoCollectionAtIndex:](self, "_photoCollectionAtIndex:", [pathCopy section]);
    photoSelectionManager = [(PUCarouselSharingViewController *)self photoSelectionManager];
    v8 = [photoSelectionManager isAssetAtIndexSelected:objc_msgSend(pathCopy inAssetCollection:{"item"), v6}];

    [(PUCarouselSharingViewController *)self _setSelected:v8 ^ 1u atIndexPath:pathCopy animated:0];
  }

  if (([mainCollectionView isDragging] & 1) == 0 && (objc_msgSend(mainCollectionView, "isDecelerating") & 1) == 0 && objc_msgSend(mainCollectionView, "isTracking"))
  {
    [(PUCarouselSharingViewController *)self _pageToIndexPath:pathCopy animated:1];
  }
}

- (void)_playLivePhotoHintIfNeededAtIndexPath:(id)path
{
  mainCollectionView = self->_mainCollectionView;
  pathCopy = path;
  v14 = [(UICollectionView *)mainCollectionView cellForItemAtIndexPath:pathCopy];
  v6 = [(PUCarouselSharingViewController *)self _assetAtIndexPath:pathCopy];
  v7 = [(PUCarouselSharingViewController *)self _activityAssetItemForAsset:v6 createIfNecessary:0];
  v8 = -[PUCarouselSharingViewController _photoCollectionAtIndex:](self, "_photoCollectionAtIndex:", [pathCopy section]);
  photoSelectionManager = [(PUCarouselSharingViewController *)self photoSelectionManager];
  item = [pathCopy item];

  v11 = [photoSelectionManager isAssetAtIndexSelected:item inAssetCollection:v8];
  if (([v7 excludeLiveness] & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      photoView = [v14 photoView];
      contentHelper = [photoView contentHelper];

      if (v11)
      {
        [contentHelper startPlaybackWithStyle:2];
      }

      else
      {
        [contentHelper stopPlayback];
      }
    }
  }
}

- (void)_arrowKey:(id)key
{
  keyCopy = key;
  viewIfLoaded = [(PUCarouselSharingViewController *)self viewIfLoaded];
  v5 = viewIfLoaded;
  if (viewIfLoaded)
  {
    effectiveUserInterfaceLayoutDirection = [viewIfLoaded effectiveUserInterfaceLayoutDirection];
    input = [keyCopy input];
    v8 = [input isEqualToString:*MEMORY[0x1E69DDF28]];

    if (v8)
    {
      if (effectiveUserInterfaceLayoutDirection == 1)
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
      input2 = [keyCopy input];
      v11 = [input2 isEqualToString:*MEMORY[0x1E69DDF10]];

      if (effectiveUserInterfaceLayoutDirection == 1)
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

    currentIndexPath = [(PUCarouselSharingViewController *)self currentIndexPath];
    mainCollectionView = [(PUCarouselSharingViewController *)self mainCollectionView];
    v15 = [mainCollectionView next:v9 indexPathFromIndexPath:currentIndexPath];

    if (v15)
    {
      [(PUCarouselSharingViewController *)self _pageToIndexPath:v15 animated:1];
    }
  }
}

- (void)_handleSelectionOption:(id)option
{
  v29[1] = *MEMORY[0x1E69E9840];
  optionCopy = option;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = optionCopy;
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
  photoSelectionManager = [(PUCarouselSharingViewController *)self photoSelectionManager];
  v12 = [photoSelectionManager isAssetAtIndexSelected:objc_msgSend(v7 inAssetCollection:{"item"), v10}];

  if (v12)
  {
    v13 = [v9 copy];
    v14 = [v9 excludeLiveness] ^ 1;
    [v13 setExcludeLiveness:v14];
    v27 = v13;
    [(PUCarouselSharingViewController *)self _replaceActivityAssetItem:v9 withAssetItem:v13 notifyDelegate:1];
    [(PUCarouselSharingViewController *)self _updateOptionView:v6 atIndexPath:v7];
    canPlayPhotoIris = [v8 canPlayPhotoIris];
    if ((v14 & 1) == 0 && canPlayPhotoIris)
    {
      [(PUCarouselSharingViewController *)self _playLivePhotoHintIfNeededAtIndexPath:v7];
    }

    mainCollectionView = [(PUCarouselSharingViewController *)self mainCollectionView];
    v17 = [mainCollectionView cellForItemAtIndexPath:v7];

    v26 = v17;
    photoView = [v17 photoView];
    contentHelper = [photoView contentHelper];

    [contentHelper setLivePhotoHidden:v14];
    analyticsEventsSent = [(PUCarouselSharingViewController *)self analyticsEventsSent];
    LOBYTE(photoView) = [analyticsEventsSent containsObject:@"com.apple.photos.CPAnalytics.shareSheetCarouselLiveToggled"];

    if ((photoView & 1) == 0)
    {
      v25 = MEMORY[0x1E6991F28];
      v28 = *MEMORY[0x1E6991E20];
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v29[0] = v22;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      [v25 sendEvent:@"com.apple.photos.CPAnalytics.shareSheetCarouselLiveToggled" withPayload:v23];

      analyticsEventsSent2 = [(PUCarouselSharingViewController *)self analyticsEventsSent];
      [analyticsEventsSent2 addObject:@"com.apple.photos.CPAnalytics.shareSheetCarouselLiveToggled"];
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
    photoSelectionManager = [(PUCarouselSharingViewController *)self photoSelectionManager];
    localizedSelectionString = [photoSelectionManager localizedSelectionString];
  }

  else
  {
    localizedSelectionString = PULocalizedString(@"SHARING_HEADER_NO_ITEMS_TITLE");
  }

  return localizedSelectionString;
}

- (void)_updateOptionView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  if ([(PUCarouselSharingViewController *)self selectionEnabled])
  {
    v8 = [(PUCarouselSharingViewController *)self sendAsAssetBundles]^ 1;
  }

  else
  {
    v8 = 0;
  }

  v16 = [(PUCarouselSharingViewController *)self _assetAtIndexPath:pathCopy];
  v9 = 1;
  v10 = [(PUCarouselSharingViewController *)self _activityAssetItemForAsset:v16 createIfNecessary:1];
  playbackStyle = [v16 playbackStyle];
  v12 = -[PUCarouselSharingViewController _photoCollectionAtIndex:](self, "_photoCollectionAtIndex:", [pathCopy section]);
  photoSelectionManager = [(PUCarouselSharingViewController *)self photoSelectionManager];
  item = [pathCopy item];

  v15 = [photoSelectionManager isAssetAtIndexSelected:item inAssetCollection:v12];
  if (v15)
  {
    v9 = [v10 excludeLiveness] ^ 1;
  }

  [viewCopy setInteractive:v8];
  [viewCopy setToggled:v9];
  [viewCopy setHidden:playbackStyle != 3];
}

- (BOOL)isItemAtIndexPathSelected:(id)selected
{
  selectedCopy = selected;
  v5 = -[PUCarouselSharingViewController _photoCollectionAtIndex:](self, "_photoCollectionAtIndex:", [selectedCopy section]);
  photoSelectionManager = [(PUCarouselSharingViewController *)self photoSelectionManager];
  item = [selectedCopy item];

  LOBYTE(selectedCopy) = [photoSelectionManager isAssetAtIndexSelected:item inAssetCollection:v5];
  return selectedCopy;
}

- (BOOL)_isAnyAssetSelected
{
  selfCopy = self;
  photoSelectionManager = [(PUCarouselSharingViewController *)self photoSelectionManager];
  LOBYTE(selfCopy) = [photoSelectionManager isAnyAssetSelectedInAssetCollections:selfCopy->_photoCollectionsFetchResult];

  return selfCopy;
}

- (void)_setSelected:(BOOL)selected atIndexPath:(id)path animated:(BOOL)animated
{
  selectedCopy = selected;
  v27[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v8 = -[PUCarouselSharingViewController _photoCollectionAtIndex:](self, "_photoCollectionAtIndex:", [pathCopy section]);
  v25 = [(PUCarouselSharingViewController *)self assetsInAssetCollection:v8];
  v9 = [v25 objectAtIndex:{objc_msgSend(pathCopy, "item")}];
  v10 = [(PUCarouselSharingViewController *)self _activityAssetItemForAsset:v9 createIfNecessary:1];
  photoSelectionManager = [(PUCarouselSharingViewController *)self photoSelectionManager];
  item = [pathCopy item];
  if (selectedCopy)
  {
    [photoSelectionManager selectAssetAtIndex:item inAssetCollection:v8];

    [(PUCarouselSharingViewController *)self _addActivityAssetItem:v10];
    v13 = @"com.apple.photos.CPAnalytics.shareSheetCarouselSelected";
  }

  else
  {
    [photoSelectionManager deselectAssetAtIndex:item inAssetCollection:v8];

    [v10 setExcludeLiveness:0];
    [(PUCarouselSharingViewController *)self _removeActivityAssetItem:v10];
    v13 = @"com.apple.photos.CPAnalytics.shareSheetCarouselDeselected";
  }

  analyticsEventsSent = [(PUCarouselSharingViewController *)self analyticsEventsSent];
  v15 = [analyticsEventsSent containsObject:v13];

  if ((v15 & 1) == 0)
  {
    v16 = MEMORY[0x1E6991F28];
    v26 = *MEMORY[0x1E6991E20];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v27[0] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    [v16 sendEvent:v13 withPayload:v19];

    analyticsEventsSent2 = [(PUCarouselSharingViewController *)self analyticsEventsSent];
    [analyticsEventsSent2 addObject:v13];
  }

  mainCollectionView = [(PUCarouselSharingViewController *)self mainCollectionView];
  v22 = [mainCollectionView cellForItemAtIndexPath:pathCopy];
  [v22 setSelected:selectedCopy];
  v23 = [mainCollectionView _visibleSupplementaryViewOfKind:@"PUPhotosSharingSelectionBadgeKind" atIndexPath:pathCopy];
  [v23 setSelected:selectedCopy animated:1];
  if ([v9 playbackStyle] == 3)
  {
    v24 = [mainCollectionView _visibleSupplementaryViewOfKind:@"PUPhotosSharingOptionBadgeKind" atIndexPath:pathCopy];
    [(PUCarouselSharingViewController *)self _updateOptionView:v24 atIndexPath:pathCopy];
  }
}

- (void)_replaceActivityAssetItem:(id)item withAssetItem:(id)assetItem notifyDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  itemCopy = item;
  assetItemCopy = assetItem;
  asset = [itemCopy asset];
  asset2 = [assetItemCopy asset];
  if (([asset isEqual:asset2] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUCarouselSharingViewController.m" lineNumber:786 description:{@"Invalid parameter not satisfying: %@", @"[previousAsset isEqual:asset]"}];
  }

  localIdentifier = [asset localIdentifier];
  [(NSMutableDictionary *)self->_assetItemsByAssetIdentifier setObject:assetItemCopy forKeyedSubscript:localIdentifier];
  if (delegateCopy)
  {
    delegate = [(PUCarouselSharingViewController *)self delegate];
    [delegate carouselSharingViewController:self replaceAssetItem:itemCopy withAssetItem:assetItemCopy];
  }
}

- (void)_removeActivityAssetItem:(id)item
{
  itemCopy = item;
  asset = [itemCopy asset];
  localIdentifier = [asset localIdentifier];

  [(NSMutableDictionary *)self->_assetItemsByAssetIdentifier setObject:0 forKeyedSubscript:localIdentifier];
  delegate = [(PUCarouselSharingViewController *)self delegate];
  [delegate carouselSharingViewController:self removeAssetItem:itemCopy];
}

- (void)_addActivityAssetItem:(id)item
{
  itemCopy = item;
  delegate = [(PUCarouselSharingViewController *)self delegate];
  [delegate carouselSharingViewController:self addAssetItem:itemCopy];
}

- (id)_updatedActivityAssetItemsForAssets:(id)assets
{
  v22 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  v5 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:{objc_msgSend(assetsCopy, "count")}];
  allKeys = [(NSMutableDictionary *)self->_assetItemsByAssetIdentifier allKeys];
  v7 = [allKeys mutableCopy];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = assetsCopy;
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

        localIdentifier = [v13 localIdentifier];
        [v7 removeObject:localIdentifier];
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
  photoSelectionManager = [(PUCarouselSharingViewController *)self photoSelectionManager];
  orderedSelectedAssets = [photoSelectionManager orderedSelectedAssets];

  v5 = [(PUCarouselSharingViewController *)self _updatedActivityAssetItemsForAssets:orderedSelectedAssets];

  return v5;
}

- (id)_activityAssetItemForAsset:(id)asset createIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  assetCopy = asset;
  localIdentifier = [assetCopy localIdentifier];
  v8 = [(NSMutableDictionary *)self->_assetItemsByAssetIdentifier objectForKey:localIdentifier];
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = !necessaryCopy;
  }

  if (!v9)
  {
    v8 = [[PUActivityAssetItem alloc] initWithAsset:assetCopy];
    [(NSMutableDictionary *)self->_assetItemsByAssetIdentifier setObject:v8 forKey:localIdentifier];
    if (![(PUCarouselSharingViewController *)self sendAsAssetBundles])
    {
      v10 = +[PURootSettings sharedInstance];
      irisUIEnabled = [v10 irisUIEnabled];

      [(PUActivityAssetItem *)v8 setExcludeLiveness:irisUIEnabled ^ 1u];
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
    _photoViewLoaderBlocks = [(PUCarouselSharingViewController *)self _photoViewLoaderBlocks];
    v4 = [_photoViewLoaderBlocks copy];

    _photoViewLoaderBlocks2 = [(PUCarouselSharingViewController *)self _photoViewLoaderBlocks];
    [_photoViewLoaderBlocks2 removeAllObjects];

    _livePhotoViewLoaderBlocks = [(PUCarouselSharingViewController *)self _livePhotoViewLoaderBlocks];
    v7 = [_livePhotoViewLoaderBlocks copy];

    _livePhotoViewLoaderBlocks2 = [(PUCarouselSharingViewController *)self _livePhotoViewLoaderBlocks];
    [_livePhotoViewLoaderBlocks2 removeAllObjects];

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
    _lastKnownReferenceIndexPath = [(PUCarouselSharingViewController *)self _lastKnownReferenceIndexPath];
    [(PUCarouselSharingViewController *)self _playLivePhotoHintIfNeededAtIndexPath:_lastKnownReferenceIndexPath];
  }
}

- (id)assetsInAssetCollection:(id)collection
{
  v44 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    if (!collectionCopy)
    {
      goto LABEL_17;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUCarouselSharingViewController.m" lineNumber:661 description:{@"%s must be called on the main thread", "-[PUCarouselSharingViewController assetsInAssetCollection:]"}];

    if (!collectionCopy)
    {
      goto LABEL_17;
    }
  }

  v6 = [(NSMutableDictionary *)self->_resultsForAssetCollection objectForKey:collectionCopy];
  if (v6)
  {
    goto LABEL_18;
  }

  v7 = PLShareSheetGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    assetCollectionType = [collectionCopy assetCollectionType];
    assetCollectionSubtype = [collectionCopy assetCollectionSubtype];
    uuid = [collectionCopy uuid];
    *buf = 138413314;
    v35 = v8;
    v36 = 2048;
    selfCopy4 = self;
    v38 = 2048;
    v39 = assetCollectionType;
    v40 = 2048;
    v41 = assetCollectionSubtype;
    v42 = 2114;
    v43 = uuid;
    _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "<%@:%p>: no cached assets for assetCollection: assetCollectionType=%ld/%ld, uuid=%{public}@", buf, 0x34u);
  }

  photosDataSource = [(PUCarouselSharingViewController *)self photosDataSource];
  v14 = [photosDataSource sectionForAssetCollection:collectionCopy];

  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [MEMORY[0x1E6978830] fetchOptionsWithPhotoLibrary:0 orObject:collectionCopy];
    v6 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:collectionCopy options:v15];
    v16 = PLShareSheetGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = v17;
      v19 = [v6 count];
      *buf = 138412802;
      v35 = v17;
      v36 = 2048;
      selfCopy4 = self;
      v38 = 2048;
      v39 = v19;
      _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_DEFAULT, "<%@:%p>: will use [PHAsset fetchAssetsInAssetCollection:options] - %lu", buf, 0x20u);
    }
  }

  else
  {
    photosDataSource2 = [(PUCarouselSharingViewController *)self photosDataSource];
    v21 = [MEMORY[0x1E696AC90] indexSetWithIndex:v14];
    [photosDataSource2 forceAccurateSectionsIfNeeded:v21];

    photosDataSource3 = [(PUCarouselSharingViewController *)self photosDataSource];
    v6 = [photosDataSource3 assetsInSection:v14];

    v15 = PLShareSheetGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_opt_class();
      v24 = v23;
      v25 = [v6 count];
      *buf = 138412802;
      v35 = v23;
      v36 = 2048;
      selfCopy4 = self;
      v38 = 2048;
      v39 = v25;
      _os_log_impl(&dword_1B36F3000, v15, OS_LOG_TYPE_DEFAULT, "<%@:%p>: will use [self.photosDataSource assetsInSection:] - %lu", buf, 0x20u);
    }
  }

  if (v6)
  {
    [(NSMutableDictionary *)self->_resultsForAssetCollection setObject:v6 forKey:collectionCopy];
    goto LABEL_18;
  }

  v26 = PLShareSheetGetLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = objc_opt_class();
    v28 = v27;
    assetCollectionType2 = [collectionCopy assetCollectionType];
    assetCollectionSubtype2 = [collectionCopy assetCollectionSubtype];
    uuid2 = [collectionCopy uuid];
    *buf = 138413314;
    v35 = v27;
    v36 = 2048;
    selfCopy4 = self;
    v38 = 2048;
    v39 = assetCollectionType2;
    v40 = 2048;
    v41 = assetCollectionSubtype2;
    v42 = 2114;
    v43 = uuid2;
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
  indexPathsForVisibleItems = [(UICollectionView *)self->_mainCollectionView indexPathsForVisibleItems];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [indexPathsForVisibleItems countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(indexPathsForVisibleItems);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [(UICollectionView *)self->_mainCollectionView supplementaryViewForElementKind:@"PUPhotosSharingOptionBadgeKind" atIndexPath:v8];
        if (v9)
        {
          [(PUCarouselSharingViewController *)self _updateOptionView:v9 atIndexPath:v8];
        }
      }

      v5 = [indexPathsForVisibleItems countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  indexPathsForVisibleItems = [(UICollectionView *)self->_mainCollectionView indexPathsForVisibleItems];
  v4 = [indexPathsForVisibleItems countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(indexPathsForVisibleItems);
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

      v5 = [indexPathsForVisibleItems countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  indexPathsForVisibleItems = [(UICollectionView *)self->_mainCollectionView indexPathsForVisibleItems];
  v4 = [indexPathsForVisibleItems countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(indexPathsForVisibleItems);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [(UICollectionView *)self->_mainCollectionView cellForItemAtIndexPath:v8];
        if (v9)
        {
          [(PUCarouselSharingViewController *)self _updateCell:v9 forItemAtIndexPath:v8];
        }
      }

      v5 = [indexPathsForVisibleItems countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (id)_indexPathOfAsset:(id)asset sectionHint:(int64_t)hint
{
  assetCopy = asset;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__68850;
  v24 = __Block_byref_object_dispose__68851;
  v25 = 0;
  if (assetCopy)
  {
    photoCollectionsFetchResult = [(PUCarouselSharingViewController *)self photoCollectionsFetchResult];
    v8 = photoCollectionsFetchResult;
    if ((hint & 0x8000000000000000) == 0 && [photoCollectionsFetchResult count] > hint)
    {
      v9 = [v8 objectAtIndex:hint];
      v10 = [(PUCarouselSharingViewController *)self assetsInAssetCollection:v9];

      v11 = [v10 indexOfObject:assetCopy];
      if (v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = [MEMORY[0x1E696AC88] indexPathForItem:v11 inSection:hint];
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
      v18 = assetCopy;
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

- (id)_assetAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  if (section >= [(PUCarouselSharingViewController *)self _numberOfSections])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    section2 = [pathCopy section];
    _numberOfSections = [(PUCarouselSharingViewController *)self _numberOfSections];
    photoCollectionsFetchResult = [(PUCarouselSharingViewController *)self photoCollectionsFetchResult];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUCarouselSharingViewController.m" lineNumber:584 description:{@"Out-of-bounds section %li/%li - sections: %@ ", section2, _numberOfSections, photoCollectionsFetchResult}];
  }

  v7 = -[PUCarouselSharingViewController _photoCollectionAtIndex:](self, "_photoCollectionAtIndex:", [pathCopy section]);
  item = [pathCopy item];
  if (item >= -[PUCarouselSharingViewController _numberOfItemsInSection:](self, "_numberOfItemsInSection:", [pathCopy section]))
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    item2 = [pathCopy item];
    v17 = -[PUCarouselSharingViewController _numberOfItemsInSection:](self, "_numberOfItemsInSection:", [pathCopy section]);
    section3 = [pathCopy section];
    assetCollectionType = [v7 assetCollectionType];
    assetCollectionSubtype = [v7 assetCollectionSubtype];
    uuid = [v7 uuid];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUCarouselSharingViewController.m" lineNumber:591 description:{@"Out-of-bounds item %li/%li from section %li - assetCollectionType=%ld/%ld, uuid=%@", item2, v17, section3, assetCollectionType, assetCollectionSubtype, uuid}];
  }

  v9 = [(PUCarouselSharingViewController *)self assetsInAssetCollection:v7];
  v10 = [v9 objectAtIndex:{objc_msgSend(pathCopy, "item")}];

  return v10;
}

- (id)_photoCollectionAtIndex:(int64_t)index
{
  photoCollectionsFetchResult = [(PUCarouselSharingViewController *)self photoCollectionsFetchResult];
  v5 = [photoCollectionsFetchResult objectAtIndex:index];

  return v5;
}

- (unint64_t)_indexForPhotoCollection:(id)collection
{
  collectionCopy = collection;
  photoCollectionsFetchResult = [(PUCarouselSharingViewController *)self photoCollectionsFetchResult];
  v6 = [photoCollectionsFetchResult indexOfObject:collectionCopy];

  return v6;
}

- (int64_t)_numberOfItemsInSection:(int64_t)section
{
  v4 = [(PUCarouselSharingViewController *)self _photoCollectionAtIndex:section];
  v5 = [(PUCarouselSharingViewController *)self assetsInAssetCollection:v4];
  v6 = [v5 count];

  return v6;
}

- (int64_t)_numberOfSections
{
  photoCollectionsFetchResult = [(PUCarouselSharingViewController *)self photoCollectionsFetchResult];
  v3 = [photoCollectionsFetchResult count];

  return v3;
}

- (id)_indexPathInCollectionView:(id)view closestToContentOffsetX:(double)x
{
  viewCopy = view;
  [(PUCarouselSharingViewController *)self _collectionViewContentFrame];
  MidY = CGRectGetMidY(v32);
  v8 = [viewCopy indexPathForItemAtPoint:{x, MidY}];
  if (v8)
  {
    v9 = v8;
    goto LABEL_22;
  }

  spec = [(PUCarouselSharingViewController *)self spec];
  [spec interItemSpacing];
  v12 = v11;

  v13 = [viewCopy indexPathForItemAtPoint:{x - v12, MidY}];
  v14 = [viewCopy indexPathForItemAtPoint:{v12 + x, MidY}];
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
    v19 = [viewCopy cellForItemAtIndexPath:v13];
    v20 = [viewCopy cellForItemAtIndexPath:v15];
    [v19 frame];
    v25 = x - CGRectGetMaxX(*&v21);
    if (v25 >= 0.0)
    {
      v26 = v25;
    }

    else
    {
      v26 = -v25;
    }

    [v20 frame];
    v27 = x - CGRectGetMinX(v33);
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
  midY = [(PUCarouselSharingViewController *)self _indexPathInCollectionView:viewCopy closestToPoint:x, MidY];

  v9 = midY;
LABEL_24:

  return v9;
}

- (id)_indexPathInCollectionView:(id)view closestToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v28 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v8 = [viewCopy indexPathForItemAtPoint:{x, y}];
  if (!v8)
  {
    visibleCells = [viewCopy visibleCells];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = [visibleCells countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(visibleCells);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          v16 = [viewCopy indexPathForCell:v15];
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

        v11 = [visibleCells countByEnumeratingWithState:&v23 objects:v27 count:16];
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

- (id)_indexPathOfCenterVisibleItemInCollectionView:(id)view
{
  viewCopy = view;
  [viewCopy bounds];
  v5 = [(PUCarouselSharingViewController *)self _indexPathInCollectionView:viewCopy closestToContentOffsetX:CGRectGetMidX(v8)];

  return v5;
}

- (void)_pageToIndexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  pathCopy = path;
  mainCollectionView = [(PUCarouselSharingViewController *)self mainCollectionView];
  [mainCollectionView contentOffset];
  v8 = v7;
  [(PUCarouselSharingViewController *)self _horizontalOffsetInCollectionView:mainCollectionView forCenteringOnItemAtIndexPath:pathCopy];
  v10 = v9;

  [mainCollectionView setContentOffset:animatedCopy animated:{v10, v8}];
}

- (void)_updateCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  if (!cellCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUCarouselSharingViewController.m" lineNumber:463 description:@"expected cell"];
  }

  v9 = -[PUCarouselSharingViewController _photoCollectionAtIndex:](self, "_photoCollectionAtIndex:", [pathCopy section]);
  v10 = [(PUCarouselSharingViewController *)self assetsInAssetCollection:v9];
  v11 = [v10 objectAtIndex:{objc_msgSend(pathCopy, "item")}];
  pixelWidth = [v11 pixelWidth];
  pixelHeight = [v11 pixelHeight];
  photoView = [cellCopy photoView];
  contentHelper = [photoView contentHelper];

  [contentHelper setPreferredImageDynamicRange:0];
  [contentHelper setPhotoSize:{pixelWidth, pixelHeight}];
  [contentHelper setFillMode:1];
  spec = [(PUCarouselSharingViewController *)self spec];
  [spec contentCornerRadius];
  [contentHelper setCornerRadius:?];

  spec2 = [(PUCarouselSharingViewController *)self spec];
  [spec2 selectionBadgeOffset];
  v19 = v18;
  v21 = v20;

  [contentHelper setCustomPaddingForBadgeElements:{v19, v21}];
  v31 = 0u;
  v32 = 0u;
  _badgeManager = [(PUCarouselSharingViewController *)self _badgeManager];
  v23 = _badgeManager;
  if (_badgeManager)
  {
    [_badgeManager badgeInfoForAsset:v11 inCollection:v9 options:8];
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v30[0] = v31;
  v30[1] = v32;
  [contentHelper setBadgeInfo:v30];
  photoSelectionManager = [(PUCarouselSharingViewController *)self photoSelectionManager];
  v25 = [photoSelectionManager isAssetAtIndexSelected:objc_msgSend(pathCopy inAssetCollection:{"item"), v9}];

  [cellCopy setSelected:v25];
  [contentHelper setDelegate:self];
  [(PUCarouselSharingViewController *)self _updatePhotoForAsset:v11 cell:cellCopy atIndexPath:pathCopy];
  [(PUCarouselSharingViewController *)self _updateAdditionalContentForAsset:v11 cell:cellCopy];
  v26 = [(PUCarouselSharingViewController *)self _activityAssetItemForAsset:v11 createIfNecessary:0];
  v27 = v26;
  if (v26)
  {
    excludeLiveness = [v26 excludeLiveness];
  }

  else
  {
    excludeLiveness = 0;
  }

  [contentHelper setLivePhotoHidden:excludeLiveness];
}

- (void)_handleAnimatedImageResult:(id)result forCell:(id)cell asset:(id)asset tag:(int64_t)tag
{
  resultCopy = result;
  cellCopy = cell;
  assetCopy = asset;
  if (cellCopy && [cellCopy tag] == tag)
  {
    photoView = [cellCopy photoView];
    contentHelper = [photoView contentHelper];

    [contentHelper setAnimatedImage:resultCopy];
  }
}

- (void)_handleLoopingVideoRequestResult:(id)result forCell:(id)cell asset:(id)asset tag:(int64_t)tag
{
  resultCopy = result;
  cellCopy = cell;
  assetCopy = asset;
  if (cellCopy && [cellCopy tag] == tag && -[PUCarouselSharingViewController _isLoopingPlaybackAllowed](self, "_isLoopingPlaybackAllowed"))
  {
    photoView = [cellCopy photoView];
    contentHelper = [photoView contentHelper];

    [contentHelper setLoopingVideoAsset:resultCopy];
  }
}

- (void)_handleLivePhotoRequestResult:(id)result forCell:(id)cell tag:(int64_t)tag
{
  resultCopy = result;
  cellCopy = cell;
  v10 = cellCopy;
  if (cellCopy && [cellCopy tag] == tag)
  {
    sharingLog = [(PUCarouselSharingViewController *)self sharingLog];
    if (os_signpost_enabled(sharingLog))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B36F3000, sharingLog, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "displayLivePhoto", "", buf, 2u);
    }

    photoView = [v10 photoView];
    contentHelper = [photoView contentHelper];
    [contentHelper setShowsLivePhoto:1];

    v14 = [(PUScrollViewSpeedometer *)self->_speedometer regime]!= 3;
    photoView2 = [v10 photoView];
    contentHelper2 = [photoView2 contentHelper];

    [contentHelper2 setShouldPrepareForPlayback:v14];
    [contentHelper2 setLivePhoto:resultCopy];
    sharingLog2 = [(PUCarouselSharingViewController *)self sharingLog];
    if (os_signpost_enabled(sharingLog2))
    {
      *v18 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B36F3000, sharingLog2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "displayLivePhoto", "", v18, 2u);
    }
  }
}

- (void)_handleSchedulingLivePhotoRequestResult:(id)result forCell:(id)cell tag:(int64_t)tag
{
  resultCopy = result;
  cellCopy = cell;
  if ([(PUCarouselSharingViewController *)self isReadyForInteraction])
  {
    [(PUCarouselSharingViewController *)self _handleLivePhotoRequestResult:resultCopy forCell:cellCopy tag:tag];
  }

  else
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __87__PUCarouselSharingViewController__handleSchedulingLivePhotoRequestResult_forCell_tag___block_invoke;
    aBlock[3] = &unk_1E7B7D1F0;
    objc_copyWeak(v16, &location);
    v14 = resultCopy;
    v15 = cellCopy;
    v16[1] = tag;
    v10 = _Block_copy(aBlock);
    _livePhotoViewLoaderBlocks = [(PUCarouselSharingViewController *)self _livePhotoViewLoaderBlocks];
    v12 = _Block_copy(v10);
    [_livePhotoViewLoaderBlocks addObject:v12];

    objc_destroyWeak(v16);
    objc_destroyWeak(&location);
  }
}

void __87__PUCarouselSharingViewController__handleSchedulingLivePhotoRequestResult_forCell_tag___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleLivePhotoRequestResult:*(a1 + 32) forCell:*(a1 + 40) tag:*(a1 + 56)];
}

- (void)_handleStillPhotoRequestResult:(id)result forCell:(id)cell tag:(int64_t)tag
{
  resultCopy = result;
  cellCopy = cell;
  if ([cellCopy tag] == tag)
  {
    photoView = [cellCopy photoView];
    contentHelper = [photoView contentHelper];

    placeHolderImage = [contentHelper placeHolderImage];
    isHighDynamicRange = [placeHolderImage isHighDynamicRange];

    if (isHighDynamicRange)
    {
      v12 = +[PUOneUpSettings sharedInstance];
      [v12 hdrShareSheetCrossfadeAnimationDuration];
      v14 = v13;

      [contentHelper animateCrossfadeToImage:resultCopy duration:v14];
    }

    else
    {
      [contentHelper setPhotoImage:resultCopy];
    }
  }
}

- (void)_handleSchedulingStillPhotoRequestResult:(id)result forCell:(id)cell tag:(int64_t)tag
{
  resultCopy = result;
  cellCopy = cell;
  if ([(PUCarouselSharingViewController *)self isReadyForInteraction])
  {
    [(PUCarouselSharingViewController *)self _handleStillPhotoRequestResult:resultCopy forCell:cellCopy tag:tag];
  }

  else
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __88__PUCarouselSharingViewController__handleSchedulingStillPhotoRequestResult_forCell_tag___block_invoke;
    aBlock[3] = &unk_1E7B7D1F0;
    objc_copyWeak(v16, &location);
    v14 = resultCopy;
    v15 = cellCopy;
    v16[1] = tag;
    v10 = _Block_copy(aBlock);
    _photoViewLoaderBlocks = [(PUCarouselSharingViewController *)self _photoViewLoaderBlocks];
    v12 = _Block_copy(v10);
    [_photoViewLoaderBlocks addObject:v12];

    objc_destroyWeak(v16);
    objc_destroyWeak(&location);
  }
}

void __88__PUCarouselSharingViewController__handleSchedulingStillPhotoRequestResult_forCell_tag___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleStillPhotoRequestResult:*(a1 + 32) forCell:*(a1 + 40) tag:*(a1 + 56)];
}

- (void)_updateAdditionalContentForAsset:(id)asset cell:(id)cell
{
  assetCopy = asset;
  cellCopy = cell;
  v8 = [cellCopy tag];
  if ([assetCopy playbackStyle] != 5)
  {
    v10 = [assetCopy playbackStyle] == 2;
LABEL_5:
    if ([assetCopy playbackStyle] == 3)
    {
      canPlayPhotoIris = [assetCopy canPlayPhotoIris];
      v12 = 0;
    }

    else
    {
      v12 = 0;
      canPlayPhotoIris = 0;
    }

    goto LABEL_8;
  }

  _isLoopingPlaybackAllowed = [(PUCarouselSharingViewController *)self _isLoopingPlaybackAllowed];
  v10 = [assetCopy playbackStyle] == 2;
  if (!_isLoopingPlaybackAllowed)
  {
    goto LABEL_5;
  }

  canPlayPhotoIris = 0;
  v12 = 1;
LABEL_8:
  _isLoopingPlaybackAllowed2 = [(PUCarouselSharingViewController *)self _isLoopingPlaybackAllowed];
  photoView = [cellCopy photoView];
  contentHelper = [photoView contentHelper];
  [contentHelper setLoopingPlaybackAllowed:_isLoopingPlaybackAllowed2];

  if (v12)
  {
    cachingImageManager = [(PUCarouselSharingViewController *)self cachingImageManager];
    v17 = objc_alloc_init(MEMORY[0x1E6978B18]);
    [v17 setNetworkAccessAllowed:1];
    [v17 setVideoComplementAllowed:1];
    objc_initWeak(location, self);
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __73__PUCarouselSharingViewController__updateAdditionalContentForAsset_cell___block_invoke;
    v40[3] = &unk_1E7B7D1A0;
    objc_copyWeak(v43, location);
    v41 = cellCopy;
    v42 = assetCopy;
    v43[1] = v8;
    [cachingImageManager requestAVAssetForVideo:v42 options:v17 resultHandler:v40];

    objc_destroyWeak(v43);
    objc_destroyWeak(location);
  }

  else
  {
    photoView2 = [cellCopy photoView];
    contentHelper2 = [photoView2 contentHelper];

    [contentHelper2 setLoopingVideoAsset:0];
  }

  photoView3 = [cellCopy photoView];
  contentHelper3 = [photoView3 contentHelper];

  if (v10)
  {
    if ([(PUCarouselSharingViewController *)self _isLoopingPlaybackAllowed])
    {
      animatedImage = [contentHelper3 animatedImage];

      if (!animatedImage)
      {
        cachingImageManager2 = [(PUCarouselSharingViewController *)self cachingImageManager];
        v24 = objc_alloc_init(MEMORY[0x1E6978868]);
        [v24 setVersion:2];
        [v24 setNetworkAccessAllowed:0];
        objc_initWeak(location, self);
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __73__PUCarouselSharingViewController__updateAdditionalContentForAsset_cell___block_invoke_3;
        v36[3] = &unk_1E7B7D1C8;
        objc_copyWeak(v39, location);
        v37 = cellCopy;
        v38 = assetCopy;
        v39[1] = v8;
        [cachingImageManager2 requestAnimatedImageForAsset:v38 options:v24 resultHandler:v36];

        objc_destroyWeak(v39);
        objc_destroyWeak(location);
      }
    }
  }

  else
  {
    [contentHelper3 setAnimatedImage:0];
  }

  photoView4 = [cellCopy photoView];
  contentHelper4 = [photoView4 contentHelper];
  v27 = contentHelper4;
  if (!canPlayPhotoIris)
  {
    [contentHelper4 setShowsLivePhoto:0];
    goto LABEL_22;
  }

  livePhoto = [contentHelper4 livePhoto];

  if (!livePhoto)
  {
    photoView4 = [(PUCarouselSharingViewController *)self cachingImageManager];
    [cellCopy frame];
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
    v34 = cellCopy;
    v35[1] = v8;
    [photoView4 requestLivePhotoForAsset:assetCopy targetSize:0 contentMode:v27 options:v33 resultHandler:{v31, v32}];

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

- (void)_handleStillImageRequestResult:(id)result info:(id)info forCell:(id)cell indexPath:(id)path
{
  resultCopy = result;
  cellCopy = cell;
  pathCopy = path;
  v12 = [info objectForKeyedSubscript:*MEMORY[0x1E6978E50]];
  bOOLValue = [v12 BOOLValue];

  if (bOOLValue)
  {
    photoView = [cellCopy photoView];
    contentHelper = [photoView contentHelper];

    placeHolderImage = [contentHelper placeHolderImage];
    if (!placeHolderImage)
    {
      currentIndexPath = [(PUCarouselSharingViewController *)self currentIndexPath];
      v18 = [currentIndexPath isEqual:pathCopy];

      if (v18)
      {
        assetTransitionInfo = [(PUCarouselSharingViewController *)self assetTransitionInfo];
        image = [assetTransitionInfo image];

        if (image)
        {
          [contentHelper setPlaceHolderImage:image];
        }

        else
        {
          [contentHelper setPhotoImage:resultCopy];
        }
      }

      else
      {
        [contentHelper setPhotoImage:resultCopy];
      }
    }
  }

  else
  {
    -[PUCarouselSharingViewController _handleSchedulingStillPhotoRequestResult:forCell:tag:](self, "_handleSchedulingStillPhotoRequestResult:forCell:tag:", resultCopy, cellCopy, [cellCopy tag]);
  }
}

- (void)_updatePhotoForAsset:(id)asset cell:(id)cell atIndexPath:(id)path
{
  assetCopy = asset;
  cellCopy = cell;
  pathCopy = path;
  v11 = ([cellCopy tag] + 1);
  [cellCopy setTag:v11];
  v12 = objc_opt_new();
  [v12 setNetworkAccessAllowed:1];
  [cellCopy frame];
  v14 = PUPixelSizeFromPointSize(v13);
  v16 = v15;
  objc_initWeak(&location, self);
  cachingImageManager = [(PUCarouselSharingViewController *)self cachingImageManager];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __73__PUCarouselSharingViewController__updatePhotoForAsset_cell_atIndexPath___block_invoke;
  v24 = &unk_1E7B7D178;
  v18 = assetCopy;
  v25 = v18;
  v19 = cellCopy;
  v26 = v19;
  v28[1] = v11;
  objc_copyWeak(v28, &location);
  v20 = pathCopy;
  v27 = v20;
  LODWORD(v11) = [cachingImageManager requestImageForAsset:v18 targetSize:0 contentMode:v12 options:&v21 resultHandler:{v14, v16}];

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

- (CGSize)_sizeForItemAtIndexPath:(id)path
{
  v4 = [(PUCarouselSharingViewController *)self _assetAtIndexPath:path];
  if ([(PUCarouselSharingViewController *)self _shouldShowAsset:v4])
  {
    [(PUCarouselSharingViewController *)self _collectionViewContentFrame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    pixelWidth = [v4 pixelWidth];
    pixelHeight = [v4 pixelHeight];
    spec = [(PUCarouselSharingViewController *)self spec];
    [spec interItemSpacing];
    v17 = v16;

    [(PUCarouselSharingViewController *)self px_safeAreaInsets];
    v19 = v8 + v18;
    v22 = v10 - (v20 + v21);
    v50.size.height = v12 - (v18 + v23);
    v50.origin.x = v6 + v20;
    v50.origin.y = v19;
    v50.size.width = v22;
    v24 = CGRectGetWidth(v50) + v17 * -4.0;
    spec2 = [(PUCarouselSharingViewController *)self spec];
    [spec2 selectionBadgeSize];
    v27 = v26;
    spec3 = [(PUCarouselSharingViewController *)self spec];
    [spec3 selectionBadgeOffset];
    v30 = v27 + v29 * 2.0;

    if (pixelWidth)
    {
      v31 = pixelHeight == 0;
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
      v34 = pixelHeight;
    }

    if (v32)
    {
      v35 = v33;
    }

    else
    {
      v35 = pixelWidth;
    }

    spec4 = [(PUCarouselSharingViewController *)self spec];
    _existingView = [(PUCarouselSharingViewController *)self _existingView];
    [_existingView bounds];
    v38 = [spec4 maximizeImageHeightForBounds:?];

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

- (void)_getFirstValidIndexPath:(id *)path lastValidIndexPath:(id *)indexPath
{
  _numberOfSections = [(PUCarouselSharingViewController *)self _numberOfSections];
  v8 = _numberOfSections - 1;
  if (_numberOfSections < 1)
  {
    v10 = 0;
    v14 = 0;
    if (path)
    {
LABEL_13:
      *path = v14;
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
    if (path)
    {
      goto LABEL_13;
    }
  }

  if (indexPath)
  {
    v13 = v10;
    *indexPath = v10;
  }
}

- (void)_updateInterfaceForModelReloadAnimated:(BOOL)animated
{
  [(PUCarouselSharingViewController *)self _resetPreheating];
  mainCollectionView = [(PUCarouselSharingViewController *)self mainCollectionView];
  [mainCollectionView reloadData];

  [(PUCarouselSharingViewController *)self _setViewInSyncWithModel:1];
}

- (void)_setLastKnownReferenceIndexPath:(id)path
{
  pathCopy = path;
  lastKnownReferenceIndexPath = self->__lastKnownReferenceIndexPath;
  if (lastKnownReferenceIndexPath != pathCopy)
  {
    v7 = pathCopy;
    lastKnownReferenceIndexPath = [(NSIndexPath *)lastKnownReferenceIndexPath isEqual:pathCopy];
    pathCopy = v7;
    if ((lastKnownReferenceIndexPath & 1) == 0)
    {
      objc_storeStrong(&self->__lastKnownReferenceIndexPath, path);
      pathCopy = v7;
    }
  }

  MEMORY[0x1EEE66BB8](lastKnownReferenceIndexPath, pathCopy);
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
  photoLibrary = [(PHFetchResult *)self->_photoCollectionsFetchResult photoLibrary];
  [photoLibrary px_unregisterChangeObserver:self];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(UITapGestureRecognizer *)self->_tapGestureRecognizer setDelegate:0];
  v5.receiver = self;
  v5.super_class = PUCarouselSharingViewController;
  [(PUCarouselSharingViewController *)&v5 dealloc];
}

- (PUCarouselSharingViewController)initWithPhotoCollectionsFetchResult:(id)result assetsFetchResultsByAssetCollection:(id)collection selection:(id)selection
{
  resultCopy = result;
  collectionCopy = collection;
  selectionCopy = selection;
  v13 = selectionCopy;
  if (resultCopy)
  {
    if (selectionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUCarouselSharingViewController.m" lineNumber:123 description:{@"Invalid parameter not satisfying: %@", @"photoCollectionsFetchResult"}];

    if (v13)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUCarouselSharingViewController.m" lineNumber:124 description:{@"Invalid parameter not satisfying: %@", @"selection"}];

LABEL_3:
  v35.receiver = self;
  v35.super_class = PUCarouselSharingViewController;
  v14 = [(PUCarouselSharingViewController *)&v35 init];
  if (v14)
  {
    v15 = objc_alloc_init(PUPhotosSharingViewControllerSpec);
    spec = v14->_spec;
    v14->_spec = v15;

    objc_storeStrong(&v14->_photoCollectionsFetchResult, result);
    objc_storeStrong(&v14->_photoSelectionManager, selection);
    if (collectionCopy)
    {
      dictionary = [collectionCopy mutableCopy];
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    v18 = dictionary;
    objc_storeStrong(&v14->_resultsForAssetCollection, dictionary);

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    assetItemsByAssetIdentifier = v14->_assetItemsByAssetIdentifier;
    v14->_assetItemsByAssetIdentifier = dictionary2;

    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    indexPathsByOptionView = v14->_indexPathsByOptionView;
    v14->_indexPathsByOptionView = strongToStrongObjectsMapTable;

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
    photoLibrary = [resultCopy photoLibrary];
    [photoLibrary px_registerChangeObserver:v14];
  }

  return v14;
}

@end