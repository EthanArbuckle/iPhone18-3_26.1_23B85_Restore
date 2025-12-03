@interface PUAvalancheReviewController
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)prefersStatusBarHidden;
- (BOOL)reviewScrubber:(id)scrubber shouldProvideFeedbackForCellAtIndexPath:(id)path;
- (CGRect)_frameAtIndexPath:(id)path inView:(id)view;
- (CGRect)_previousPreheatRect;
- (CGRect)embeddedActivityViewFrameWhenShowing:(BOOL)showing;
- (CGRect)layout:(id)layout collectionView:(id)view selectionBadgeFrameForItemFrame:(CGRect)frame atIndexPath:(id)path;
- (CGRect)oneUpAssetTransitionAssetFinalFrame:(id)frame;
- (CGRect)selectionBadgeFrameForItemFrame:(CGRect)frame atIndexPath:(id)path;
- (CGSize)_sizeForItemAtIndexPath:(id)path;
- (CGSize)layout:(id)layout collectionView:(id)view sizeForItemAtIndexPath:(id)path;
- (PHFetchResult)assetCollectionsFetchResult;
- (PUAvalancheReviewController)init;
- (PUAvalancheReviewController)initWithCoder:(id)coder;
- (PUAvalancheReviewController)initWithNibName:(id)name bundle:(id)bundle;
- (PUAvalancheReviewController)initWithSpec:(id)spec startingAtAsset:(id)asset inAvalanche:(id)avalanche currentAssetContainer:(id)container photoLibrary:(id)library;
- (PUAvalancheReviewControllerDelegate)delegate;
- (double)_horizontalOffsetInCollectionView:(id)view forCenteringOnItemAtIndexPath:(id)path;
- (id)_assetAtIndexPath:(id)path;
- (id)_currentAsset;
- (id)_indexPathInCollectionView:(id)view closestToPoint:(CGPoint)point excludingIndexPath:(id)path;
- (id)_indexPathOfCenterVisibleItemInCollectionView:(id)view;
- (id)_phAssetAtIndexPath:(id)path;
- (id)_selectionViewAtIndexPath:(id)path forCollectionView:(id)view;
- (id)assetsInAssetCollection:(id)collection;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (unint64_t)reviewScrubber:(id)scrubber numberOfItemsInSection:(unint64_t)section;
- (unsigned)reviewScrubberImageFormat;
- (void)_beginZoomingForCellAtIndexPath:(id)path;
- (void)_cancelReviewMode;
- (void)_dismissReviewControllerWithAsset:(id)asset;
- (void)_endZoomingForCell;
- (void)_finishReviewAndDeleteNonPicks:(BOOL)picks;
- (void)_getFirstValidIndexPath:(id *)path lastValidIndexPath:(id *)indexPath;
- (void)_getMainCollectionViewFrame:(CGRect *)frame collectionViewLayoutInsets:(UIEdgeInsets *)insets;
- (void)_handleDoneButton:(id)button;
- (void)_handlePhotoPinch:(id)pinch;
- (void)_handleTapAtIndexPath:(id)path;
- (void)_handleTapInMainCollectionView:(id)view;
- (void)_pageToIndexPath:(id)path animated:(BOOL)animated;
- (void)_promoteFavoriteAssetsAndDeleteNonPicks:(BOOL)picks withReviewCompletionHandler:(id)handler;
- (void)_reallyToggleCurrentPickStatusAtIndexPath:(id)path;
- (void)_reloadAvalancheDataWithAsset:(id)asset;
- (void)_resetPreheating;
- (void)_startPreheatingAllAssets;
- (void)_toggleCurrentPickStatusAtIndexPath:(id)path;
- (void)_updateBarItemsAnimated:(BOOL)animated;
- (void)_updateCell:(id)cell forItemAtIndexPath:(id)path;
- (void)_updateCollectionViewLayoutInsets;
- (void)_updateEnabledNavigationBarItems;
- (void)_updateMainView;
- (void)_updateNavigationItemTitle;
- (void)_updatePhotoForAsset:(id)asset cell:(id)cell atIndexPath:(id)path;
- (void)_updatePreheatedAssets;
- (void)_updateReviewScrubberFromContentOffset;
- (void)_updateReviewScrubberHeightIfNeeded;
- (void)dealloc;
- (void)oneUpAssetTransition:(id)transition requestTransitionContextWithCompletion:(id)completion;
- (void)reviewScrubber:(id)scrubber willDisplayCell:(id)cell atIndexPath:(id)path;
- (void)reviewScrubberDidScrub:(id)scrub;
- (void)reviewScrubberDidSelectItemAtIndexPath:(id)path;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setOneUpPhotosSharingTransitionInfo:(id)info;
- (void)setPhotosSharingTransitionContext:(id)context;
- (void)setPhotosSharingTransitionLayout:(id)layout animated:(BOOL)animated;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PUAvalancheReviewController

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

- (PUAvalancheReviewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updatePreheatedAssets
{
  v91 = *MEMORY[0x1E69E9840];
  _collectionView = [(PUAvalancheReviewController *)self _collectionView];
  collectionViewLayout = [_collectionView collectionViewLayout];
  v5 = collectionViewLayout;
  if (self->__transitionLayout)
  {
    v6 = 1;
  }

  else
  {
    v6 = collectionViewLayout == 0;
  }

  if (!v6)
  {
    [_collectionView bounds];
    x = v92.origin.x;
    y = v92.origin.y;
    width = v92.size.width;
    height = v92.size.height;
    if (!CGRectIsEmpty(v92))
    {
      if (([(PUAvalancheReviewController *)self interfaceOrientation]- 1) >= 2)
      {
        v11 = height;
      }

      else
      {
        v11 = width;
      }

      [(PUAvalancheReviewController *)self _previousPreheatRect];
      v13 = v12;
      v93.origin.x = x;
      v93.origin.y = y;
      v93.size.width = width;
      v93.size.height = height;
      v94 = CGRectInset(v93, v11 * -2.0, 0.0);
      v14 = v94.origin.x;
      v15 = v94.origin.y;
      v16 = v94.origin.x - v13;
      if (v16 < 0.0)
      {
        v16 = -v16;
      }

      if (v16 > v11 / 3.0)
      {
        v17 = v94.size.width;
        v18 = v94.size.height;
        if ([(PUAvalancheReviewController *)self px_isVisible])
        {
          [(PUAvalancheReviewController *)self _setPreviousPreheatRect:v14, v15, v17, v18];
          collectionViewLayout2 = [_collectionView collectionViewLayout];
          v20 = [collectionViewLayout2 layoutAttributesForElementsInRect:{v14, v15, v17, v18}];

          v21 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v20, "count")}];
          v71 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v20, "count")}];
          v81 = 0u;
          v82 = 0u;
          v83 = 0u;
          v84 = 0u;
          v22 = v20;
          v23 = v21;
          obj = v22;
          v24 = [v22 countByEnumeratingWithState:&v81 objects:v90 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v82;
            do
            {
              for (i = 0; i != v25; ++i)
              {
                if (*v82 != v26)
                {
                  objc_enumerationMutation(obj);
                }

                v28 = *(*(&v81 + 1) + 8 * i);
                if (![v28 representedElementCategory])
                {
                  indexPath = [v28 indexPath];
                  v30 = [(PUAvalancheReviewController *)self _phAssetAtIndexPath:indexPath];
                  [v23 addObject:v30];
                  [v71 setObject:indexPath forKey:v30];
                }
              }

              v25 = [obj countByEnumeratingWithState:&v81 objects:v90 count:16];
            }

            while (v25);
          }

          _preheatedAssets = [(PUAvalancheReviewController *)self _preheatedAssets];
          [(PUAvalancheReviewController *)self _setPreheatedAssets:v23];
          v32 = [v23 mutableCopy];
          [v32 minusSet:_preheatedAssets];
          v67 = [_preheatedAssets mutableCopy];
          [v67 minusSet:v23];
          if ([v32 count] || objc_msgSend(v67, "count"))
          {
            v63 = _preheatedAssets;
            v65 = v5;
            v66 = _collectionView;
            if (!self->__assetsToSizeDictionary)
            {
              dictionary = [MEMORY[0x1E695DF90] dictionary];
              [(PUAvalancheReviewController *)self _setAssetsToSizeDictionary:dictionary];
            }

            v64 = v23;
            v34 = objc_opt_new();
            [v34 setNetworkAccessAllowed:1];
            v72 = v34;
            [v34 setLoadingMode:0x40000];
            _cachingImageManager = [(PUAvalancheReviewController *)self _cachingImageManager];
            v77 = 0u;
            v78 = 0u;
            v79 = 0u;
            v80 = 0u;
            v62 = v32;
            v68 = v32;
            v36 = [v68 countByEnumeratingWithState:&v77 objects:v89 count:16];
            if (v36)
            {
              v37 = v36;
              v38 = *v78;
              do
              {
                for (j = 0; j != v37; ++j)
                {
                  if (*v78 != v38)
                  {
                    objc_enumerationMutation(v68);
                  }

                  v40 = *(*(&v77 + 1) + 8 * j);
                  v41 = [v71 objectForKeyedSubscript:{v40, v62}];
                  [(PUAvalancheReviewController *)self _sizeForItemAtIndexPath:v41];
                  v43 = PUPixelSizeFromPointSize(v42);
                  v45 = v44;
                  v88 = v40;
                  v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v88 count:1];
                  [_cachingImageManager startCachingImagesForAssets:v46 targetSize:0 contentMode:v72 options:{v43, v45}];

                  assetsToSizeDictionary = self->__assetsToSizeDictionary;
                  v48 = [MEMORY[0x1E696B098] valueWithCGSize:{v43, v45}];
                  [(NSMutableDictionary *)assetsToSizeDictionary setObject:v48 forKey:v40];
                }

                v37 = [v68 countByEnumeratingWithState:&v77 objects:v89 count:16];
              }

              while (v37);
            }

            v49 = objc_opt_new();
            [v49 setNetworkAccessAllowed:1];
            v75 = 0u;
            v76 = 0u;
            v73 = 0u;
            v74 = 0u;
            v69 = v67;
            v50 = [v69 countByEnumeratingWithState:&v73 objects:v87 count:16];
            if (v50)
            {
              v51 = v50;
              v52 = *v74;
              do
              {
                for (k = 0; k != v51; ++k)
                {
                  if (*v74 != v52)
                  {
                    objc_enumerationMutation(v69);
                  }

                  v54 = *(*(&v73 + 1) + 8 * k);
                  v55 = [(NSMutableDictionary *)self->__assetsToSizeDictionary objectForKeyedSubscript:v54, v62];
                  [v55 CGSizeValue];
                  v57 = v56;
                  v59 = v58;

                  v86 = v54;
                  v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v86 count:1];
                  [_cachingImageManager stopCachingImagesForAssets:v60 targetSize:0 contentMode:v72 options:{v57, v59}];

                  [(NSMutableDictionary *)self->__assetsToSizeDictionary removeObjectForKey:v54];
                  v85 = v54;
                  v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v85 count:1];
                  [_cachingImageManager startCachingImagesForAssets:v61 targetSize:0 contentMode:v49 options:{v57, v59}];
                }

                v51 = [v69 countByEnumeratingWithState:&v73 objects:v87 count:16];
              }

              while (v51);
            }

            v5 = v65;
            _collectionView = v66;
            _preheatedAssets = v63;
            v23 = v64;
            v32 = v62;
          }
        }
      }
    }
  }
}

- (void)_resetPreheating
{
  [(PUAvalancheReviewController *)self _stopPreheatingAllAssets];
  [(PUAvalancheReviewController *)self _startPreheatingAllAssets];
  [(PUAvalancheReviewController *)self _setPreviousPreheatRect:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(PUAvalancheReviewController *)self _setPreheatedAssets:0];

  [(PUAvalancheReviewController *)self _setAssetsToSizeDictionary:0];
}

- (void)oneUpAssetTransition:(id)transition requestTransitionContextWithCompletion:(id)completion
{
  completionCopy = completion;
  view = [(PUAvalancheReviewController *)self view];
  [view layoutIfNeeded];

  v7 = [(PUAvalancheReviewController *)self _indexPathOfCenterVisibleItemInCollectionView:self->__collectionView];
  v8 = [(UICollectionView *)self->__collectionView cellForItemAtIndexPath:v7];
  photoView = [v8 photoView];
  contentHelper = [photoView contentHelper];
  photoImage = [contentHelper photoImage];

  view2 = [(PUAvalancheReviewController *)self view];
  [(PUAvalancheReviewController *)self _frameAtIndexPath:v7 inView:view2];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v14, v16, v18, v20}];
  [v21 setImage:photoImage];
  mEMORY[0x1E69C3640] = [MEMORY[0x1E69C3640] sharedInstance];
  [mEMORY[0x1E69C3640] insetContentCornerRadius];
  v24 = v23;
  layer = [v21 layer];
  [layer setCornerRadius:v24];

  v26 = *MEMORY[0x1E69796E8];
  layer2 = [v21 layer];
  [layer2 setCornerCurve:v26];

  [v21 setClipsToBounds:1];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __91__PUAvalancheReviewController_oneUpAssetTransition_requestTransitionContextWithCompletion___block_invoke;
  v34[3] = &unk_1E7B7F3E0;
  v28 = photoImage;
  v35 = v28;
  selfCopy = self;
  v29 = v7;
  v37 = v29;
  v30 = [PUAssetTransitionInfo assetTransitionInfoWithConfigurationBlock:v34];
  view3 = [(PUAvalancheReviewController *)self view];
  v32 = [PUOneUpAssetTransitionContext oneUpAssetTransitionContextWithContainerView:0 fromView:view3 snapshotView:v21 transitionInfo:v30];

  v33 = [v32 oneUpTransitionContextWithContextShouldHideBackground:1];

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v33);
  }
}

void __91__PUAvalancheReviewController_oneUpAssetTransition_requestTransitionContextWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setImage:v3];
  v5 = [*(a1 + 40) _phAssetAtIndexPath:*(a1 + 48)];
  [v4 setAsset:v5];
}

- (CGRect)oneUpAssetTransitionAssetFinalFrame:(id)frame
{
  _collectionView = [(PUAvalancheReviewController *)self _collectionView];
  v5 = [(PUAvalancheReviewController *)self _indexPathOfCenterVisibleItemInCollectionView:_collectionView];

  view = [(PUAvalancheReviewController *)self view];
  [(PUAvalancheReviewController *)self _frameAtIndexPath:v5 inView:view];
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
  _collectionViewLayout = [(PUAvalancheReviewController *)self _collectionViewLayout];
  v9 = [_collectionViewLayout layoutAttributesForItemAtIndexPath:pathCopy];

  [v9 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  _collectionView = [(PUAvalancheReviewController *)self _collectionView];
  [viewCopy convertRect:_collectionView fromView:{v11, v13, v15, v17}];
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

- (CGRect)embeddedActivityViewFrameWhenShowing:(BOOL)showing
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setPhotosSharingTransitionLayout:(id)layout animated:(BOOL)animated
{
  animatedCopy = animated;
  layoutCopy = layout;
  _transitionLayout = [(PUAvalancheReviewController *)self _transitionLayout];

  v8 = layoutCopy;
  if (_transitionLayout != layoutCopy)
  {
    objc_storeStrong(&self->__transitionLayout, layout);
    if (layoutCopy)
    {
      _collectionViewLayout = layoutCopy;
    }

    else
    {
      _collectionViewLayout = [(PUAvalancheReviewController *)self _collectionViewLayout];
    }

    v10 = _collectionViewLayout;
    _collectionView = [(PUAvalancheReviewController *)self _collectionView];
    [_collectionView setCollectionViewLayout:v10 animated:animatedCopy];

    v8 = layoutCopy;
  }
}

- (void)setOneUpPhotosSharingTransitionInfo:(id)info
{
  infoCopy = info;
  if (self->__assetTransitionInfo != infoCopy)
  {
    v13 = infoCopy;
    objc_storeStrong(&self->__assetTransitionInfo, info);
    _collectionView = [(PUAvalancheReviewController *)self _collectionView];
    v7 = [(PUAvalancheReviewController *)self _indexPathOfCenterVisibleItemInCollectionView:_collectionView];

    _collectionView2 = [(PUAvalancheReviewController *)self _collectionView];
    v9 = [_collectionView2 cellForItemAtIndexPath:v7];

    photoView = [v9 photoView];
    contentHelper = [photoView contentHelper];
    image = [(PUAssetTransitionInfo *)v13 image];
    [contentHelper setPlaceHolderImage:image];

    infoCopy = v13;
  }
}

- (void)setPhotosSharingTransitionContext:(id)context
{
  v19 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if (self->__photosSharingTransitionContext != contextCopy)
  {
    objc_storeStrong(&self->__photosSharingTransitionContext, context);
    _collectionView = [(PUAvalancheReviewController *)self _collectionView];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    visibleCells = [_collectionView visibleCells];
    v8 = [visibleCells countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(visibleCells);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          v13 = [_collectionView indexPathForCell:v12];
          [(PUAvalancheReviewController *)self _updateCell:v12 forItemAtIndexPath:v13];
        }

        v9 = [visibleCells countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  _collectionView = [(PUAvalancheReviewController *)self _collectionView];
  tapGestureRecognizer = self->__tapGestureRecognizer;

  if (tapGestureRecognizer == recognizerCopy)
  {
    panGestureRecognizer = [_collectionView panGestureRecognizer];
    if (panGestureRecognizer == gestureRecognizerCopy)
    {
      isDecelerating = [_collectionView isDecelerating];
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

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  _photoZoomPinchGestureRecognizer = [(PUAvalancheReviewController *)self _photoZoomPinchGestureRecognizer];

  if (_photoZoomPinchGestureRecognizer == beginCopy)
  {
    _collectionView = [(PUAvalancheReviewController *)self _collectionView];
    if ([_collectionView isDragging] & 1) != 0 || (objc_msgSend(_collectionView, "isDecelerating"))
    {
      v6 = 0;
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      [(PUAvalancheReviewController *)self _getMainCollectionViewFrame:&v16 collectionViewLayoutInsets:&v14];
      v8 = *&v16 + *(&v14 + 1);
      v9 = *(&v16 + 1) + *&v14;
      v10 = *&v17 - (*(&v14 + 1) + *(&v15 + 1));
      v11 = *(&v17 + 1) - (*&v14 + *&v15);
      [beginCopy locationInView:_collectionView];
      v18.y = v12;
      v19.origin.x = v8;
      v19.origin.y = v9;
      v19.size.width = v10;
      v19.size.height = v11;
      v18.x = v8;
      v6 = CGRectContainsPoint(v19, v18);
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)reviewScrubber:(id)scrubber shouldProvideFeedbackForCellAtIndexPath:(id)path
{
  pathCopy = path;
  _avalancheBeingReviewed = [(PUAvalancheReviewController *)self _avalancheBeingReviewed];
  assets = [_avalancheBeingReviewed assets];
  item = [pathCopy item];

  v9 = [assets objectAtIndex:item];

  LOBYTE(assets) = [_avalancheBeingReviewed isAutoPick:v9];
  return assets;
}

- (unint64_t)reviewScrubber:(id)scrubber numberOfItemsInSection:(unint64_t)section
{
  v4 = [(PUAvalancheReviewController *)self _avalancheBeingReviewed:scrubber];
  assetsCount = [v4 assetsCount];

  return assetsCount;
}

- (void)reviewScrubberDidSelectItemAtIndexPath:(id)path
{
  collectionView = self->__collectionView;
  pathCopy = path;
  [(UICollectionView *)collectionView stopScrollingAndZooming];
  [(PUAvalancheReviewController *)self _pageToIndexPath:pathCopy animated:1];
}

- (void)reviewScrubberDidScrub:(id)scrub
{
  collectionView = self->__collectionView;
  scrubCopy = scrub;
  [(UICollectionView *)collectionView stopScrollingAndZooming];
  self->__updatingContentOffsetFromScrubbing = 1;
  selectedIndexPath = [scrubCopy selectedIndexPath];

  [(PUAvalancheReviewController *)self _pageToIndexPath:selectedIndexPath animated:0];
  self->__updatingContentOffsetFromScrubbing = 0;
}

- (void)reviewScrubber:(id)scrubber willDisplayCell:(id)cell atIndexPath:(id)path
{
  v35[2] = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  pathCopy = path;
  scrubberCopy = scrubber;
  _avalancheBeingReviewed = [(PUAvalancheReviewController *)self _avalancheBeingReviewed];
  assets = [_avalancheBeingReviewed assets];
  item = [pathCopy item];

  v14 = [assets objectAtIndex:item];

  [cellCopy setSuggested:{objc_msgSend(_avalancheBeingReviewed, "isAutoPick:", v14)}];
  [cellCopy setFavorite:{objc_msgSend(_avalancheBeingReviewed, "isUserFavorite:", v14)}];
  isCompactHeight = [scrubberCopy isCompactHeight];

  [cellCopy setWantsSmallSuggestionIndicators:isCompactHeight];
  v16 = [cellCopy tag] + 1;
  [cellCopy setTag:v16];
  v17 = objc_alloc_init(MEMORY[0x1E6978868]);
  [v17 setAllowPlaceholder:1];
  [v17 setDeliveryMode:1];
  [v17 setLoadingMode:0x40000];
  v18 = [MEMORY[0x1E69BF260] formatWithID:{-[PUAvalancheReviewController reviewScrubberImageFormat](self, "reviewScrubberImageFormat")}];
  contentMode = [v18 contentMode];
  [v18 sizeWithFallBackSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  v20 = v19;
  v22 = v21;
  v23 = objc_alloc(MEMORY[0x1E69786C0]);
  px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v25 = [v23 initWithPLManagedObject:v14 photoLibrary:px_deprecated_appPhotoLibrary];

  v26 = *MEMORY[0x1E6978C68];
  v35[0] = *MEMORY[0x1E6978C18];
  v35[1] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
  v28 = [v25 newObjectWithPropertySets:v27];

  [v17 setSynchronous:1];
  _cachingImageManager = [(PUAvalancheReviewController *)self _cachingImageManager];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __74__PUAvalancheReviewController_reviewScrubber_willDisplayCell_atIndexPath___block_invoke;
  v32[3] = &unk_1E7B758C0;
  v33 = cellCopy;
  v34 = v16;
  v30 = cellCopy;
  [_cachingImageManager requestImageForAsset:v28 targetSize:contentMode contentMode:v17 options:v32 resultHandler:{v20, v22}];
}

void __74__PUAvalancheReviewController_reviewScrubber_willDisplayCell_atIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) tag] == *(a1 + 40))
  {
    [*(a1 + 32) setImage:v3];
  }
}

- (CGRect)layout:(id)layout collectionView:(id)view selectionBadgeFrameForItemFrame:(CGRect)frame atIndexPath:(id)path
{
  [(PUAvalancheReviewController *)self selectionBadgeFrameForItemFrame:path atIndexPath:view, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGSize)layout:(id)layout collectionView:(id)view sizeForItemAtIndexPath:(id)path
{
  [(PUAvalancheReviewController *)self _sizeForItemAtIndexPath:path, view];
  result.height = v6;
  result.width = v5;
  return result;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  if (![kindCopy isEqualToString:@"PUAvalancheReviewBadgeKind"])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUAvalancheReviewController.m" lineNumber:1219 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v12 = [(PUAvalancheReviewController *)self _selectionViewAtIndexPath:pathCopy forCollectionView:viewCopy];

  return v12;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithReuseIdentifier:@"PUAvalancheReviewCellIdentifier" forIndexPath:pathCopy];
  [(PUAvalancheReviewController *)self _updateCell:v7 forItemAtIndexPath:pathCopy];

  return v7;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(PUAvalancheReviewController *)self _avalancheBeingReviewed:view];
  assetsCount = [v4 assetsCount];

  return assetsCount;
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
          if (([(PUAvalancheReviewController *)self _horizontalOffsetInCollectionView:draggingCopy forCenteringOnItemAtIndexPath:indexPath], v26 = v25, x == 0.0) || x > 0.0 && v25 > offset->x || x < 0.0 && v25 < offset->x)
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
  reviewScrubber = [(PUAvalancheReviewController *)self reviewScrubber];
  [reviewScrubber finishInteractiveUpdate];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    reviewScrubber = [(PUAvalancheReviewController *)self reviewScrubber];
    [reviewScrubber finishInteractiveUpdate];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  [(PUAvalancheReviewController *)self _updatePreheatedAssets];
  _photosSharingTransitionContext = [(PUAvalancheReviewController *)self _photosSharingTransitionContext];
  if (_photosSharingTransitionContext)
  {
  }

  else if (!self->__updatingContentOffsetFromScrubbing)
  {

    [(PUAvalancheReviewController *)self _updateReviewScrubberFromContentOffset];
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  reviewScrubber = [(PUAvalancheReviewController *)self reviewScrubber];
  [reviewScrubber beginInteractiveUpdate];
}

- (void)_startPreheatingAllAssets
{
  v27[1] = *MEMORY[0x1E69E9840];
  _avalancheBeingReviewed = [(PUAvalancheReviewController *)self _avalancheBeingReviewed];
  assetsCount = [_avalancheBeingReviewed assetsCount];

  v5 = objc_opt_new();
  [v5 setNetworkAccessAllowed:1];
  _cachingImageManager = [(PUAvalancheReviewController *)self _cachingImageManager];
  _avalancheBeingReviewed2 = [(PUAvalancheReviewController *)self _avalancheBeingReviewed];
  assets = [_avalancheBeingReviewed2 assets];
  _initialAsset = [(PUAvalancheReviewController *)self _initialAsset];
  v10 = [assets indexOfObject:_initialAsset];

  if (assetsCount)
  {
    for (i = 0; i < assetsCount; ++i)
    {
      if ((i + v10) >= assetsCount)
      {
        v17 = 0;
        v12 = 0;
      }

      else
      {
        v12 = [MEMORY[0x1E696AC88] indexPathForItem:i inSection:0];
        [(PUAvalancheReviewController *)self _sizeForItemAtIndexPath:v12];
        v14 = PUPixelSizeFromPointSize(v13);
        v16 = v15;
        v17 = [(PUAvalancheReviewController *)self _phAssetAtIndexPath:v12];
        v27[0] = v17;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
        [_cachingImageManager startCachingImagesForAssets:v18 targetSize:0 contentMode:v5 options:{v14, v16}];
      }

      if (((v10 - i) & 0x8000000000000000) != 0)
      {

        if ((i + v10) >= assetsCount)
        {
          break;
        }
      }

      else
      {
        v19 = [MEMORY[0x1E696AC88] indexPathForItem:i inSection:0];

        [(PUAvalancheReviewController *)self _sizeForItemAtIndexPath:v19];
        v21 = PUPixelSizeFromPointSize(v20);
        v23 = v22;
        v24 = [(PUAvalancheReviewController *)self _phAssetAtIndexPath:v19];

        v26 = v24;
        v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
        [_cachingImageManager startCachingImagesForAssets:v25 targetSize:0 contentMode:v5 options:{v21, v23}];
      }
    }
  }
}

- (void)_cancelReviewMode
{
  [(PUAvalancheReviewController *)self _updateBarItemsAnimated:1];
  _initialAsset = [(PUAvalancheReviewController *)self _initialAsset];
  px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v4 = [_initialAsset pl_PHAssetFromPhotoLibrary:px_deprecated_appPhotoLibrary];
  [(PUAvalancheReviewController *)self _dismissReviewControllerWithAsset:v4];
}

- (void)_handleDoneButton:(id)button
{
  buttonCopy = button;
  _initialFavorites = [(PUAvalancheReviewController *)self _initialFavorites];
  v6 = _initialFavorites;
  if (_initialFavorites)
  {
    orderedSet = _initialFavorites;
  }

  else
  {
    orderedSet = [MEMORY[0x1E695DFB8] orderedSet];
  }

  v8 = orderedSet;

  _avalancheBeingReviewed = [(PUAvalancheReviewController *)self _avalancheBeingReviewed];
  userFavorites = [_avalancheBeingReviewed userFavorites];
  v11 = userFavorites;
  if (userFavorites)
  {
    orderedSet2 = userFavorites;
  }

  else
  {
    orderedSet2 = [MEMORY[0x1E695DFB8] orderedSet];
  }

  v13 = orderedSet2;

  if ([v8 count])
  {
    v14 = 0;
  }

  else
  {
    v14 = [v13 count] != 0;
  }

  _avalancheBeingReviewed2 = [(PUAvalancheReviewController *)self _avalancheBeingReviewed];
  assetsCount = [_avalancheBeingReviewed2 assetsCount];

  v17 = [v13 count];
  if (v14 && (v18 = v17, v17 >= 1) && assetsCount - v17 >= 1)
  {
    v31 = buttonCopy;
    if (assetsCount - v17 == 1)
    {
      v20 = PULocalizedString(@"AVALANCHE_KEEP_OTHER_PHOTO_TITLE");
    }

    else
    {
      v19 = PULocalizedString(@"AVALANCHE_KEEP_OTHER_COUNT_PHOTOS_TITLE");
      v20 = PULocalizedStringWithValidatedFormat(v19, @"%lu");
    }

    v21 = PULocalizedString(@"AVALANCHE_KEEP_ONLY_COUNT_FAVORITES");
    v30 = v18;
    v22 = PULocalizedStringWithValidatedFormat(v21, @"%lu");

    v23 = PULocalizedString(@"AVALANCHE_KEEP_EVERYTHING");
    v24 = PULocalizedString(@"CANCEL");
    v25 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v20 message:0 preferredStyle:{0, v30}];
    v26 = [MEMORY[0x1E69DC648] actionWithTitle:v24 style:1 handler:0];
    [v25 addAction:v26];

    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __49__PUAvalancheReviewController__handleDoneButton___block_invoke;
    v33[3] = &unk_1E7B7E148;
    v33[4] = self;
    v27 = [MEMORY[0x1E69DC648] actionWithTitle:v23 style:0 handler:v33];
    [v25 addAction:v27];

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __49__PUAvalancheReviewController__handleDoneButton___block_invoke_2;
    v32[3] = &unk_1E7B7E148;
    v32[4] = self;
    v28 = [MEMORY[0x1E69DC648] actionWithTitle:v22 style:0 handler:v32];
    [v25 addAction:v28];

    [(PUAvalancheReviewController *)self presentViewController:v25 animated:1 completion:0];
    popoverPresentationController = [v25 popoverPresentationController];
    [popoverPresentationController setPermittedArrowDirections:15];
    buttonCopy = v31;
    [popoverPresentationController setBarButtonItem:v31];
  }

  else
  {
    [(PUAvalancheReviewController *)self _finishReviewAndDeleteNonPicks:0];
  }
}

- (void)_finishReviewAndDeleteNonPicks:(BOOL)picks
{
  picksCopy = picks;
  self->__completingReviewMode = 1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__PUAvalancheReviewController__finishReviewAndDeleteNonPicks___block_invoke;
  aBlock[3] = &unk_1E7B75898;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  [(PUAvalancheReviewController *)self _promoteFavoriteAssetsAndDeleteNonPicks:picksCopy withReviewCompletionHandler:v5];
}

void __62__PUAvalancheReviewController__finishReviewAndDeleteNonPicks___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 _updateBarItemsAnimated:1];
  v5 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v6 = [v4 pl_PHAssetFromPhotoLibrary:v5];

  [*(a1 + 32) _dismissReviewControllerWithAsset:v6];
}

- (void)_dismissReviewControllerWithAsset:(id)asset
{
  assetCopy = asset;
  avalancheBeingReviewed = self->__avalancheBeingReviewed;
  delegate = [(PUAvalancheReviewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate avalancheReviewControllerDidComplete:self withAsset:assetCopy animated:avalancheBeingReviewed != 0];
  }
}

- (void)_reallyToggleCurrentPickStatusAtIndexPath:(id)path
{
  pathCopy = path;
  _avalancheBeingReviewed = [(PUAvalancheReviewController *)self _avalancheBeingReviewed];
  assets = [_avalancheBeingReviewed assets];
  v6 = [assets objectAtIndex:{objc_msgSend(pathCopy, "item")}];

  v7 = [_avalancheBeingReviewed isUserFavorite:v6];
  reviewScrubber = [(PUAvalancheReviewController *)self reviewScrubber];
  [reviewScrubber toggleIndexPath:pathCopy animated:0];
  if (v7)
  {
    [_avalancheBeingReviewed removeUserFavorite:v6];
  }

  else
  {
    [_avalancheBeingReviewed addUserFavorite:v6];
  }

  _collectionView = [(PUAvalancheReviewController *)self _collectionView];
  v10 = [_collectionView cellForItemAtIndexPath:pathCopy];
  [v10 setSelected:v7 ^ 1u];
  v11 = [_collectionView _visibleSupplementaryViewOfKind:@"PUAvalancheReviewBadgeKind" atIndexPath:pathCopy];
  [v11 setSelected:v7 ^ 1u animated:0];
  [reviewScrubber reloadIndexPath:pathCopy animated:0];
  [(PUAvalancheReviewController *)self _updateNavigationItemTitle];
  [(PUAvalancheReviewController *)self _updateEnabledNavigationBarItems];
}

- (void)_toggleCurrentPickStatusAtIndexPath:(id)path
{
  v48[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  _avalancheBeingReviewed = [(PUAvalancheReviewController *)self _avalancheBeingReviewed];
  assets = [_avalancheBeingReviewed assets];
  v7 = [assets objectAtIndex:{objc_msgSend(pathCopy, "item")}];

  if (![_avalancheBeingReviewed isUserFavorite:v7])
  {
    goto LABEL_8;
  }

  v8 = [_avalancheBeingReviewed proposedStackAssetAfterRemovingFavorite:v7];
  v9 = v8;
  if (v7 == v8)
  {

    goto LABEL_8;
  }

  albums = [v7 albums];
  v11 = [albums count];

  if (v11 < 2)
  {
LABEL_8:
    [(PUAvalancheReviewController *)self _reallyToggleCurrentPickStatusAtIndexPath:pathCopy];
    goto LABEL_9;
  }

  albums2 = [v7 albums];
  [albums2 count];

  v48[0] = v7;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
  v14 = PLLocalizedHidePhotosEverywhereWarning();

  v15 = PLLocalizedFrameworkString();
  v16 = PLLocalizedFrameworkString();
  v17 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v14 message:0 preferredStyle:0];
  v45 = v16;
  v18 = [MEMORY[0x1E69DC648] actionWithTitle:v16 style:1 handler:0];
  [v17 addAction:v18];

  v19 = MEMORY[0x1E69DC648];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __67__PUAvalancheReviewController__toggleCurrentPickStatusAtIndexPath___block_invoke;
  v46[3] = &unk_1E7B7E120;
  v46[4] = self;
  v20 = pathCopy;
  v47 = v20;
  v21 = [v19 actionWithTitle:v15 style:2 handler:v46];
  [v17 addAction:v21];

  popoverPresentationController = [v17 popoverPresentationController];
  if (popoverPresentationController)
  {
    _collectionView = [(PUAvalancheReviewController *)self _collectionView];
    v24 = [_collectionView cellForItemAtIndexPath:v20];

    [v24 bounds];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    navigationController = [(PUAvalancheReviewController *)self navigationController];
    [navigationController view];
    v44 = v15;
    v35 = v34 = v14;
    [v24 convertRect:v35 toView:{v26, v28, v30, v32}];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v14 = v34;
    v15 = v44;

    [popoverPresentationController setSourceView:v24];
    [popoverPresentationController setSourceRect:{v37, v39, v41, v43}];
  }

  [(PUAvalancheReviewController *)self presentViewController:v17 animated:1 completion:0];

LABEL_9:
}

- (void)_promoteFavoriteAssetsAndDeleteNonPicks:(BOOL)picks withReviewCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _avalancheBeingReviewed = [(PUAvalancheReviewController *)self _avalancheBeingReviewed];
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__12307;
  v15[4] = __Block_byref_object_dispose__12308;
  _currentAsset = [(PUAvalancheReviewController *)self _currentAsset];
  if ([_avalancheBeingReviewed canPerformEditOperation:1])
  {
    photoLibrary = [_avalancheBeingReviewed photoLibrary];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __99__PUAvalancheReviewController__promoteFavoriteAssetsAndDeleteNonPicks_withReviewCompletionHandler___block_invoke;
    v9[3] = &unk_1E7B75870;
    picksCopy = picks;
    v10 = _avalancheBeingReviewed;
    selfCopy = self;
    v13 = v15;
    v12 = handlerCopy;
    [photoLibrary performTransaction:v9];
  }

  _Block_object_dispose(v15, 8);
}

void __99__PUAvalancheReviewController__promoteFavoriteAssetsAndDeleteNonPicks_withReviewCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) _currentAssetContainer];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __99__PUAvalancheReviewController__promoteFavoriteAssetsAndDeleteNonPicks_withReviewCompletionHandler___block_invoke_2;
  v7[3] = &unk_1E7B7B768;
  v8 = *(a1 + 32);
  v6 = *(a1 + 48);
  v5 = v6;
  v9 = v6;
  [v3 applyChangesAndDeleteNonPicks:v2 currentContainer:v4 completionHandler:v7];
}

uint64_t __99__PUAvalancheReviewController__promoteFavoriteAssetsAndDeleteNonPicks_withReviewCompletionHandler___block_invoke_2(uint64_t a1)
{
  if (([*(a1 + 32) isUserFavorite:*(*(*(a1 + 48) + 8) + 40)] & 1) == 0)
  {
    v2 = [*(a1 + 32) stackAsset];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)_reloadAvalancheDataWithAsset:(id)asset
{
  assetCopy = asset;
  _avalancheBeingReviewed = [(PUAvalancheReviewController *)self _avalancheBeingReviewed];
  assets = [_avalancheBeingReviewed assets];
  v6 = [assets indexOfObject:assetCopy];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    userFavorites = [_avalancheBeingReviewed userFavorites];
    firstObject = [userFavorites firstObject];

    assets2 = [_avalancheBeingReviewed assets];
    v6 = [assets2 indexOfObject:firstObject];
  }

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
  }

  else
  {
    v10 = v6;
  }

  v11 = [MEMORY[0x1E696AC88] indexPathForItem:v10 inSection:0];
  reviewScrubber = [(PUAvalancheReviewController *)self reviewScrubber];
  [reviewScrubber setSelectedIndexPath:v11];

  [(PUAvalancheReviewController *)self _pageToIndexPath:v11 animated:0];
  reviewScrubber2 = [(PUAvalancheReviewController *)self reviewScrubber];
  [reviewScrubber2 reloadData];
}

- (void)_updateReviewScrubberFromContentOffset
{
  v12 = [(PUAvalancheReviewController *)self _indexPathOfCenterVisibleItemInCollectionView:self->__collectionView];
  [(PUAvalancheReviewController *)self _sizeForItemAtIndexPath:v12];
  v4 = v3;
  [(UICollectionView *)self->__collectionView contentOffset];
  v6 = v5;
  [(UICollectionView *)self->__collectionView contentInset];
  v8 = v6 - v7;
  [(PUAvalancheReviewControllerSpec *)self->__spec interItemSpacing];
  v10 = v8 / (v4 + v9);
  reviewScrubber = [(PUAvalancheReviewController *)self reviewScrubber];
  [reviewScrubber updateWithAbsoluteProgress:v10];
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
  if ([(PUAvalancheReviewController *)self _needsUpdateReviewScrubberHeight])
  {
    [(PUAvalancheReviewController *)self _setNeedsUpdateReviewScrubberHeight:0];
    reviewScrubberHeightConstraint = [(PUAvalancheReviewController *)self reviewScrubberHeightConstraint];
    v7 = reviewScrubberHeightConstraint;
    reviewScrubber = [(PUAvalancheReviewController *)self reviewScrubber];
    traitCollection = [(PUAvalancheReviewController *)self traitCollection];
    [PUReviewScrubberSetupHelper configureHeightConstraint:&v7 forReviewScrubber:reviewScrubber withTraitCollection:traitCollection];
    v6 = v7;

    [(PUAvalancheReviewController *)self setReviewScrubberHeightConstraint:v6];
  }
}

- (void)_endZoomingForCell
{
  _photoZoomCell = [(PUAvalancheReviewController *)self _photoZoomCell];
  [_photoZoomCell removeFromSuperview];

  [(PUAvalancheReviewController *)self _setPhotoZoomCell:0];
  _collectionViewLayout = [(PUAvalancheReviewController *)self _collectionViewLayout];
  [_collectionViewLayout setZoomingCellIndexPath:0];

  view = [(PUAvalancheReviewController *)self view];
  [view setUserInteractionEnabled:1];

  navigationController = [(PUAvalancheReviewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setUserInteractionEnabled:1];

  _photoZoomAnimator = [(PUAvalancheReviewController *)self _photoZoomAnimator];
  [_photoZoomAnimator setDelegate:0];

  [(PUAvalancheReviewController *)self _setPhotoZoomAnimator:0];
}

- (void)_beginZoomingForCellAtIndexPath:(id)path
{
  pathCopy = path;
  if (!pathCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUAvalancheReviewController.m" lineNumber:819 description:@"expected index path"];
  }

  navigationController = [(PUAvalancheReviewController *)self navigationController];
  view = [navigationController view];

  _photoZoomPinchGestureRecognizer = [(PUAvalancheReviewController *)self _photoZoomPinchGestureRecognizer];
  _collectionView = [(PUAvalancheReviewController *)self _collectionView];
  v9 = [_collectionView cellForItemAtIndexPath:pathCopy];
  [v9 bounds];
  [v9 convertRect:view toView:?];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [_photoZoomPinchGestureRecognizer setInitialPinchRect:?];
  _spec = [(PUAvalancheReviewController *)self _spec];
  selectionBadgeCorner = [_spec selectionBadgeCorner];

  v20 = [(PUAvalancheReviewController *)self _selectionViewAtIndexPath:pathCopy forCollectionView:0];
  [(PUAvalancheReviewController *)self selectionBadgeFrameForItemFrame:pathCopy atIndexPath:v11, v13, v15, v17];
  [v20 setFrame:?];
  v21 = [[PUPhotosZoomingSharingGridCell alloc] initWithFrame:v20 selectionView:0 optionView:selectionBadgeCorner layoutAnchor:v11, v13, v15, v17];
  [(PUAvalancheReviewController *)self _setPhotoZoomCell:v21];
  [(PUAvalancheReviewController *)self _updateCell:v21 forItemAtIndexPath:pathCopy];
  [view addSubview:v21];
  _collectionViewLayout = [(PUAvalancheReviewController *)self _collectionViewLayout];
  [_collectionViewLayout setZoomingCellIndexPath:pathCopy];

  view2 = [(PUAvalancheReviewController *)self view];
  [view2 setUserInteractionEnabled:0];

  navigationController2 = [(PUAvalancheReviewController *)self navigationController];
  navigationBar = [navigationController2 navigationBar];
  [navigationBar setUserInteractionEnabled:0];

  v26 = [PUTransitionViewAnimator alloc];
  UIRectGetCenter();
  0x3FB999999999999ALL = [(PUTransitionViewAnimator *)v26 initWithView:v21 sourceFrame:1 targetFrame:0 anchorPoint:v11 shouldUseTargetAspectRatio:v13 rampUpDuration:v15 direction:v17, v11, v13, v15, v17, v27, v28, 0x3FB999999999999ALL];
  [(PUTransitionViewAnimator *)0x3FB999999999999ALL setAppliesScaleViaTransform:0];
  [(PUTransitionViewAnimator *)0x3FB999999999999ALL setDelegate:self];
  [(PUAvalancheReviewController *)self _setPhotoZoomAnimator:0x3FB999999999999ALL];
}

- (void)_updateCollectionViewLayoutInsets
{
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  [(PUAvalancheReviewController *)self _getMainCollectionViewFrame:&v16 collectionViewLayoutInsets:&v14];
  v12 = 0;
  v13 = 0;
  [(PUAvalancheReviewController *)self _getFirstValidIndexPath:&v13 lastValidIndexPath:&v12];
  v3 = v13;
  v4 = v12;
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
    v9 = *(&v14 + 1);
    v11 = *(&v15 + 1);
  }

  else
  {
    [(PUAvalancheReviewController *)self _sizeForItemAtIndexPath:v3];
    v8 = v7;
    [(PUAvalancheReviewController *)self _sizeForItemAtIndexPath:v5];
    v9 = *(&v14 + 1) + round((*&v17 - v8) * 0.5);
    v11 = *(&v15 + 1) + round((*&v17 - v10) * 0.5);
    *(&v14 + 1) = v9;
    *(&v15 + 1) = v11;
  }

  [(PUHorizontalCollectionViewLayout *)self->__collectionViewLayout setItemsContentInset:*&v14, v9, *&v15, v11];
}

- (id)_selectionViewAtIndexPath:(id)path forCollectionView:(id)view
{
  if (view)
  {
    v6 = [view dequeueReusableSupplementaryViewOfKind:@"PUAvalancheReviewBadgeKind" withReuseIdentifier:@"PUAvalancheReviewBadgeIdentifier" forIndexPath:path];
  }

  else
  {
    pathCopy = path;
    v6 = objc_alloc_init(PUPhotosSharingSelectionView);
  }

  v8 = v6;
  _avalancheBeingReviewed = [(PUAvalancheReviewController *)self _avalancheBeingReviewed];
  assets = [_avalancheBeingReviewed assets];
  item = [path item];

  v12 = [assets objectAtIndex:item];

  -[PUPhotosSharingSelectionView setSelected:animated:](v8, "setSelected:animated:", [_avalancheBeingReviewed isUserFavorite:v12], 0);

  return v8;
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

- (id)_indexPathOfCenterVisibleItemInCollectionView:(id)view
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
  v10 = [(PUAvalancheReviewController *)self _indexPathInCollectionView:viewCopy closestToPoint:0 excludingIndexPath:MidX, CGRectGetMidY(v14)];

  return v10;
}

- (void)_pageToIndexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  pathCopy = path;
  _collectionView = [(PUAvalancheReviewController *)self _collectionView];
  [_collectionView contentOffset];
  v8 = v7;
  [(PUAvalancheReviewController *)self _horizontalOffsetInCollectionView:_collectionView forCenteringOnItemAtIndexPath:pathCopy];
  v10 = v9;

  [_collectionView setContentOffset:animatedCopy animated:{v10, v8}];
}

- (CGSize)_sizeForItemAtIndexPath:(id)path
{
  pathCopy = path;
  _avalancheBeingReviewed = [(PUAvalancheReviewController *)self _avalancheBeingReviewed];
  assets = [_avalancheBeingReviewed assets];
  item = [pathCopy item];

  v8 = [assets objectAtIndex:item];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  [(PUAvalancheReviewController *)self _getMainCollectionViewFrame:&v38 collectionViewLayoutInsets:&v36];
  v9 = *&v39 - (*(&v36 + 1) + *(&v37 + 1));
  v10 = *(&v39 + 1) - (*&v36 + *&v37);
  [v8 imageSize];
  v12 = v11;
  v14 = v13;
  _spec = [(PUAvalancheReviewController *)self _spec];
  [_spec interItemSpacing];
  v17 = v16;

  v18 = v9 + v17 * -4.0;
  v19 = v10 + v17 * -2.0;
  _spec2 = [(PUAvalancheReviewController *)self _spec];
  [_spec2 selectionBadgeSize];
  v22 = v21;
  _spec3 = [(PUAvalancheReviewController *)self _spec];
  [_spec3 selectionBadgeOffset];
  v25 = v22 + v24 * 2.0;

  PURectWithSizeThatFitsInRect(v12, v14, 0.0, 0.0, v18, v19);
  if (v27 < v25 && v14 < v12)
  {
    v26 = v26 * (v25 / v27);
    v27 = v25;
  }

  if (v26 < v25 && v12 < v14)
  {
    v27 = v27 * (v25 / v26);
    v26 = v25;
  }

  if (v26 >= v25)
  {
    v30 = v26;
  }

  else
  {
    v30 = v25;
  }

  if (v18 < v30)
  {
    v30 = v18;
  }

  if (v27 >= v25)
  {
    v31 = v27;
  }

  else
  {
    v31 = v25;
  }

  if (v19 < v31)
  {
    v31 = v19;
  }

  v32 = round(v30);
  v33 = round(v31);

  v34 = v32;
  v35 = v33;
  result.height = v35;
  result.width = v34;
  return result;
}

- (id)_phAssetAtIndexPath:(id)path
{
  pathCopy = path;
  assetCollectionsFetchResult = [(PUAvalancheReviewController *)self assetCollectionsFetchResult];
  lastObject = [assetCollectionsFetchResult lastObject];

  v7 = [(PUAvalancheReviewController *)self assetsInAssetCollection:lastObject];
  item = [pathCopy item];

  v9 = [v7 objectAtIndex:item];

  return v9;
}

- (id)_assetAtIndexPath:(id)path
{
  pathCopy = path;
  _avalancheBeingReviewed = [(PUAvalancheReviewController *)self _avalancheBeingReviewed];
  assets = [_avalancheBeingReviewed assets];
  item = [pathCopy item];

  v8 = [assets objectAtIndex:item];

  return v8;
}

- (id)_currentAsset
{
  v3 = [(PUAvalancheReviewController *)self _indexPathOfCenterVisibleItemInCollectionView:self->__collectionView];
  _avalancheBeingReviewed = [(PUAvalancheReviewController *)self _avalancheBeingReviewed];
  assetsCount = [_avalancheBeingReviewed assetsCount];
  if ([v3 item] >= assetsCount)
  {
    v7 = 0;
  }

  else
  {
    assets = [_avalancheBeingReviewed assets];
    v7 = [assets objectAtIndex:{objc_msgSend(v3, "item")}];
  }

  return v7;
}

- (void)_handlePhotoPinch:(id)pinch
{
  pinchCopy = pinch;
  state = [pinchCopy state];
  if ((state - 3) < 3)
  {
    _photoZoomAnimator = [(PUAvalancheReviewController *)self _photoZoomAnimator];
    if (_photoZoomAnimator)
    {
      _photoZoomCell = [(PUAvalancheReviewController *)self _photoZoomCell];
      superview = [_photoZoomCell superview];

      [pinchCopy adjustedTranslationVelocityInView:superview];
      v9 = v8;
      v11 = v10;
      [pinchCopy adjustedScaleVelocityInView:superview];
      [_photoZoomAnimator finishWithTranslationVelocity:0 rotationVelocity:v9 scaleVelocity:v11 shouldBounce:{0.0, v12}];
      goto LABEL_14;
    }

    [(PUAvalancheReviewController *)self _endZoomingForCell];
LABEL_11:
    superview = 0;
    goto LABEL_14;
  }

  if (state == 2)
  {
    _photoZoomAnimator = [(PUAvalancheReviewController *)self _photoZoomAnimator];
    if (_photoZoomAnimator)
    {
      _photoZoomCell2 = [(PUAvalancheReviewController *)self _photoZoomCell];
      superview = [_photoZoomCell2 superview];

      [pinchCopy adjustedTranslationInView:superview];
      v15 = v14;
      v17 = v16;
      [pinchCopy adjustedScaleInView:superview];
      [_photoZoomAnimator updateWithTranslation:v15 rotation:v17 scale:{0.0, v18}];
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (state == 1)
  {
    superview = [(PUAvalancheReviewController *)self _collectionView];
    [pinchCopy locationInView:superview];
    _photoZoomAnimator = [(PUAvalancheReviewController *)self _indexPathInCollectionView:superview closestToPoint:0 excludingIndexPath:?];
    if (!_photoZoomAnimator)
    {
      goto LABEL_14;
    }

    [(PUAvalancheReviewController *)self _beginZoomingForCellAtIndexPath:_photoZoomAnimator];
  }

  else
  {
    superview = 0;
  }

  _photoZoomAnimator = 0;
LABEL_14:
}

- (void)_handleTapInMainCollectionView:(id)view
{
  viewCopy = view;
  _collectionView = [(PUAvalancheReviewController *)self _collectionView];
  [viewCopy locationInView:_collectionView];
  v6 = v5;
  v8 = v7;

  _collectionViewLayout = [(PUAvalancheReviewController *)self _collectionViewLayout];
  [_collectionView contentSize];
  v11 = v10;
  [_collectionViewLayout itemsContentInset];
  v14 = v11 - fabs(v13);
  if (v6 > fabs(v12) && v6 < v14)
  {
    v16 = [(PUAvalancheReviewController *)self _indexPathInCollectionView:_collectionView closestToPoint:0 excludingIndexPath:v6, v8];
    if (v16)
    {
      [(PUAvalancheReviewController *)self _handleTapAtIndexPath:v16];
    }
  }
}

- (void)_handleTapAtIndexPath:(id)path
{
  pathCopy = path;
  _collectionView = [(PUAvalancheReviewController *)self _collectionView];
  [(PUAvalancheReviewController *)self _toggleCurrentPickStatusAtIndexPath:pathCopy];
  if (([_collectionView isDragging] & 1) == 0 && (objc_msgSend(_collectionView, "isDecelerating") & 1) == 0 && objc_msgSend(_collectionView, "isTracking"))
  {
    reviewScrubber = [(PUAvalancheReviewController *)self reviewScrubber];
    [reviewScrubber beginInteractiveUpdate];
    [(PUAvalancheReviewController *)self _pageToIndexPath:pathCopy animated:1];
  }
}

- (CGRect)selectionBadgeFrameForItemFrame:(CGRect)frame atIndexPath:(id)path
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  _spec = [(PUAvalancheReviewController *)self _spec];
  [_spec selectionBadgeSize];
  v11 = v10;
  v13 = v12;

  _spec2 = [(PUAvalancheReviewController *)self _spec];
  [_spec2 selectionBadgeOffset];
  v16 = v15;
  v18 = v17;

  _spec3 = [(PUAvalancheReviewController *)self _spec];
  selectionBadgeCorner = [_spec3 selectionBadgeCorner];

  if (selectionBadgeCorner != 1)
  {
    v21 = y;
    v22 = *(MEMORY[0x1E695F058] + 8);
    if (selectionBadgeCorner == 4)
    {
      v28 = x;
      v29 = width;
      v30 = height;
    }

    else
    {
      v23 = height;
      v24 = *MEMORY[0x1E695F058];
      if (selectionBadgeCorner == 2)
      {
        v25 = x;
        v26 = width;
        v27 = CGRectGetWidth(*(&v21 - 1));
        v43.origin.x = v24;
        v43.origin.y = v22;
        v43.size.width = v11;
        v43.size.height = v13;
        v16 = v27 - CGRectGetWidth(v43) - v16;
        goto LABEL_8;
      }

      v31 = x;
      v41 = x;
      v42 = width;
      v32 = v21;
      v33 = width;
      v34 = v23;
      v40 = CGRectGetWidth(*(&v21 - 1));
      v44.origin.x = v24;
      v44.origin.y = v22;
      v44.size.width = v11;
      v44.size.height = v13;
      v16 = v40 - CGRectGetWidth(v44) - v16;
      v28 = v41;
      v29 = v42;
      v21 = v32;
      v30 = v34;
    }

    v35 = CGRectGetHeight(*(&v21 - 1));
    v45.origin.x = v16;
    v45.origin.y = v22;
    v45.size.width = v11;
    v45.size.height = v13;
    v18 = v35 - CGRectGetHeight(v45) - v18;
  }

LABEL_8:
  v36 = v16;
  v37 = v18;
  v38 = v11;
  v39 = v13;
  result.size.height = v39;
  result.size.width = v38;
  result.origin.y = v37;
  result.origin.x = v36;
  return result;
}

- (void)_updateCell:(id)cell forItemAtIndexPath:(id)path
{
  pathCopy = path;
  cellCopy = cell;
  _avalancheBeingReviewed = [(PUAvalancheReviewController *)self _avalancheBeingReviewed];
  assets = [_avalancheBeingReviewed assets];
  v9 = [assets objectAtIndex:{objc_msgSend(pathCopy, "item")}];

  [v9 imageSize];
  v11 = v10;
  v13 = v12;
  photoView = [cellCopy photoView];
  contentHelper = [photoView contentHelper];

  [contentHelper setPhotoSize:{v11, v13}];
  [contentHelper setFillMode:1];
  mEMORY[0x1E69C3640] = [MEMORY[0x1E69C3640] sharedInstance];
  [mEMORY[0x1E69C3640] insetContentCornerRadius];
  [contentHelper setCornerRadius:?];

  [contentHelper setContinuousCorners:1];
  [cellCopy setSelected:{objc_msgSend(_avalancheBeingReviewed, "isUserFavorite:", v9)}];
  [(PUAvalancheReviewController *)self _updatePhotoForAsset:v9 cell:cellCopy atIndexPath:pathCopy];
}

- (void)_updatePhotoForAsset:(id)asset cell:(id)cell atIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  v9 = [cellCopy tag] + 1;
  [cellCopy setTag:v9];
  _photoZoomCell = [(PUAvalancheReviewController *)self _photoZoomCell];

  _photosSharingTransitionContext = [(PUAvalancheReviewController *)self _photosSharingTransitionContext];
  keyAssetIndexPath = [_photosSharingTransitionContext keyAssetIndexPath];
  v13 = [keyAssetIndexPath isEqual:pathCopy];

  _existingView = [(PUAvalancheReviewController *)self _existingView];
  [_existingView bounds];
  v16 = v15;

  v17 = [(PUAvalancheReviewController *)self _phAssetAtIndexPath:pathCopy];

  v18 = objc_opt_new();
  v19 = v18;
  v20 = (_photoZoomCell == cellCopy) | v13;
  if (_photoZoomCell == cellCopy)
  {
    [v18 setDeliveryMode:1];
  }

  v21 = _photoZoomCell == cellCopy;
  v22 = _photoZoomCell != cellCopy;
  v23 = v21;
  [v19 setSynchronous:v23];
  [v19 setNetworkAccessAllowed:v22];
  [v19 setLoadingMode:0x40000];
  if ((v20 & 1) == 0)
  {
    [cellCopy frame];
    v16 = v24;
  }

  v25 = PUPixelSizeFromPointSize(v16);
  v27 = v26;
  photoView = [cellCopy photoView];
  contentHelper = [photoView contentHelper];

  _cachingImageManager = [(PUAvalancheReviewController *)self _cachingImageManager];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __69__PUAvalancheReviewController__updatePhotoForAsset_cell_atIndexPath___block_invoke;
  v33[3] = &unk_1E7B75848;
  v35 = contentHelper;
  v36 = v9;
  v34 = cellCopy;
  v31 = contentHelper;
  v32 = cellCopy;
  [_cachingImageManager requestImageForAsset:v17 targetSize:0 contentMode:v19 options:v33 resultHandler:{v25, v27}];
}

void __69__PUAvalancheReviewController__updatePhotoForAsset_cell_atIndexPath___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = a2;
  v5 = a3;
  if (v21 && [*(a1 + 32) tag] == *(a1 + 48))
  {
    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E6978E50]];
    v7 = [v6 BOOLValue];

    [v21 size];
    v9 = v8;
    v10 = [*(a1 + 40) photoImage];
    [v10 size];
    if (v9 >= v11)
    {
    }

    else
    {
      [v21 size];
      v13 = v12;
      v14 = [*(a1 + 40) photoImage];
      [v14 size];
      v16 = v15;

      if (v13 < v16)
      {
        goto LABEL_10;
      }
    }

    v17 = [*(a1 + 40) placeHolderImage];
    if (!v17 || (v18 = v17, [*(a1 + 40) placeHolderImage], v19 = objc_claimAutoreleasedReturnValue(), v20 = (v19 == 0) | v7, v19, v18, (v20 & 1) == 0))
    {
      [*(a1 + 40) setPhotoImage:v21];
    }
  }

LABEL_10:
}

- (void)_getFirstValidIndexPath:(id *)path lastValidIndexPath:(id *)indexPath
{
  _avalancheBeingReviewed = [(PUAvalancheReviewController *)self _avalancheBeingReviewed];
  assetsCount = [_avalancheBeingReviewed assetsCount];
  if (assetsCount)
  {
    v9 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
    assetsCount = [MEMORY[0x1E696AC88] indexPathForItem:assetsCount - 1 inSection:0];
    if (!path)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = 0;
  if (path)
  {
LABEL_3:
    *path = v9;
  }

LABEL_4:
  if (indexPath)
  {
    v8 = assetsCount;
    *indexPath = assetsCount;
  }
}

- (void)_getMainCollectionViewFrame:(CGRect *)frame collectionViewLayoutInsets:(UIEdgeInsets *)insets
{
  view = [(PUAvalancheReviewController *)self view];
  [view bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  if (frame)
  {
    frame->origin.x = v9;
    frame->origin.y = v11;
    frame->size.width = v13;
    frame->size.height = v15;
  }

  if (insets)
  {
    [(PUAvalancheReviewController *)self px_safeAreaInsets];
    reviewScrubberHeightConstraint = [(PUAvalancheReviewController *)self reviewScrubberHeightConstraint];
    [reviewScrubberHeightConstraint constant];

    UIEdgeInsetsMax();
    insets->top = v17;
    insets->left = v18;
    insets->bottom = v19;
    insets->right = v20;
  }
}

- (void)_updateMainView
{
  if (![(PUAvalancheReviewController *)self isViewLoaded])
  {
    return;
  }

  _spec = [(PUAvalancheReviewController *)self _spec];
  v19 = 0u;
  v20 = 0u;
  memset(v18, 0, sizeof(v18));
  [(PUAvalancheReviewController *)self _getMainCollectionViewFrame:&v19 collectionViewLayoutInsets:v18];
  v4 = +[PUInterfaceManager currentTheme];
  photoCollectionViewBackgroundColor = [v4 photoCollectionViewBackgroundColor];

  _collectionView = [(PUAvalancheReviewController *)self _collectionView];
  _collectionViewLayout = [(PUAvalancheReviewController *)self _collectionViewLayout];
  [_spec interItemSpacing];
  if (!_collectionViewLayout)
  {
    v13 = v8;
    _collectionViewLayout = objc_alloc_init(PUAvalancheReviewCollectionViewLayout);
    [(PUHorizontalCollectionViewLayout *)_collectionViewLayout setInteritemSpacing:v13];
    [(PUHorizontalCollectionViewLayout *)_collectionViewLayout setDelegate:self];
    objc_storeStrong(&self->__collectionViewLayout, _collectionViewLayout);
    if (_collectionView)
    {
      goto LABEL_4;
    }

LABEL_9:
    v14 = objc_alloc(MEMORY[0x1E69DC7F0]);
    _collectionView = [v14 initWithFrame:_collectionViewLayout collectionViewLayout:{v19, v20}];
    [_collectionView setAutoresizingMask:18];
    [_collectionView setAlwaysBounceVertical:0];
    [_collectionView setAlwaysBounceHorizontal:1];
    [_collectionView setPagingEnabled:0];
    [_collectionView setDecelerationRate:*MEMORY[0x1E69DE3A0]];
    [_collectionView setDataSource:self];
    [_collectionView setDelegate:self];
    [_collectionView setShowsHorizontalScrollIndicator:0];
    [_collectionView setBackgroundColor:photoCollectionViewBackgroundColor];
    [_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PUAvalancheReviewCellIdentifier"];
    [_collectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:@"PUAvalancheReviewBadgeKind" withReuseIdentifier:@"PUAvalancheReviewBadgeIdentifier"];
    [_collectionView setContentInsetAdjustmentBehavior:2];
    v15 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTapInMainCollectionView_];
    tapGestureRecognizer = self->__tapGestureRecognizer;
    self->__tapGestureRecognizer = v15;

    [(UITapGestureRecognizer *)self->__tapGestureRecognizer setNumberOfTapsRequired:1];
    [(UITapGestureRecognizer *)self->__tapGestureRecognizer setNumberOfTouchesRequired:1];
    [(UITapGestureRecognizer *)self->__tapGestureRecognizer setDelegate:self];
    [_collectionView addGestureRecognizer:self->__tapGestureRecognizer];
    objc_storeStrong(&self->__collectionView, _collectionView);
    view = [(PUAvalancheReviewController *)self view];
    [view addSubview:self->__collectionView];

    goto LABEL_4;
  }

  if (!_collectionView)
  {
    goto LABEL_9;
  }

LABEL_4:
  [_collectionView setFrame:{v19, v20}];
  [(PUAvalancheReviewController *)self _updateCollectionViewLayoutInsets];
  if (!self->_reviewScrubber)
  {
    v9 = [PUReviewScrubberSetupHelper createReviewScrubberWithDataSource:self delegate:self];
    reviewScrubber = self->_reviewScrubber;
    self->_reviewScrubber = v9;

    v11 = self->_reviewScrubber;
    view2 = [(PUAvalancheReviewController *)self view];
    [PUReviewScrubberSetupHelper setupBaseConstraintsForReviewScrubber:v11 inView:view2];

    [(PUAvalancheReviewController *)self _invalidateReviewScrubberHeight];
  }

  [(PUAvalancheReviewController *)self _updateReviewScrubberHeightIfNeeded];
}

- (void)_updateBarItemsAnimated:(BOOL)animated
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (!self->__doneBarButtonItem)
  {
    if (MEMORY[0x1B8C6D660]())
    {
      v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__handleDoneButton_];
    }

    else
    {
      v5 = [_BarButton alloc];
      v6 = PULocalizedString(@"AVALANCHE_DONE");
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
      v9 = [(_BarButton *)v5 initWithTitle:v6 titleColor:whiteColor backgroundColor:systemBlueColor target:self action:sel__handleDoneButton_];

      v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v9];
    }

    doneBarButtonItem = self->__doneBarButtonItem;
    self->__doneBarButtonItem = v4;
  }

  cancelBarButtonItem = self->__cancelBarButtonItem;
  if (!cancelBarButtonItem)
  {
    if (MEMORY[0x1B8C6D660]())
    {
      v12 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancelReviewModeAction_];
    }

    else
    {
      v13 = [_BarButton alloc];
      v14 = PULocalizedString(@"AVALANCHE_CANCEL");
      systemBlueColor2 = [MEMORY[0x1E69DC888] systemBlueColor];
      tertiarySystemFillColor = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
      v17 = [(_BarButton *)v13 initWithTitle:v14 titleColor:systemBlueColor2 backgroundColor:tertiarySystemFillColor target:self action:sel__cancelReviewModeAction_];

      v12 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v17];
    }

    v18 = self->__cancelBarButtonItem;
    self->__cancelBarButtonItem = v12;

    cancelBarButtonItem = self->__cancelBarButtonItem;
  }

  v23[0] = cancelBarButtonItem;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v22 = self->__doneBarButtonItem;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  navigationItem = [(PUAvalancheReviewController *)self navigationItem];
  [navigationItem setLeftBarButtonItems:v19];
  [navigationItem setRightBarButtonItems:v20];
  [(PUAvalancheReviewController *)self _updateNavigationItemTitle];
}

- (void)_updateNavigationItemTitle
{
  _avalancheBeingReviewed = [(PUAvalancheReviewController *)self _avalancheBeingReviewed];
  userFavorites = [_avalancheBeingReviewed userFavorites];
  v5 = [userFavorites count];

  if (v5)
  {
    v6 = PULocalizedString(@"REVIEW_COUNT_PHOTOS_SELECTED_TITLE_TEXT");
    v8 = v5;
    v9 = PULocalizedStringWithValidatedFormat(v6, @"%lu");
  }

  else
  {
    v9 = PULocalizedString(@"EMPTY_REVIEW_TITLE_TEXT");
  }

  navigationItem = [(PUAvalancheReviewController *)self navigationItem];
  [navigationItem setTitle:v9];
  [navigationItem setPrompt:0];
}

- (void)_updateEnabledNavigationBarItems
{
  _doneBarButtonItem = [(PUAvalancheReviewController *)self _doneBarButtonItem];
  [_doneBarButtonItem setEnabled:1];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v14.receiver = self;
  v14.super_class = PUAvalancheReviewController;
  coordinatorCopy = coordinator;
  [(PUAvalancheReviewController *)&v14 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  _collectionView = [(PUAvalancheReviewController *)self _collectionView];
  v9 = [(PUAvalancheReviewController *)self _indexPathOfCenterVisibleItemInCollectionView:_collectionView];

  inFlightReferenceIndexPath = self->__inFlightReferenceIndexPath;
  self->__inFlightReferenceIndexPath = v9;
  v11 = v9;

  v12[4] = self;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __82__PUAvalancheReviewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v13[3] = &unk_1E7B7DC38;
  v13[4] = self;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __82__PUAvalancheReviewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v12[3] = &unk_1E7B7DC38;
  [coordinatorCopy animateAlongsideTransition:v13 completion:v12];
}

void __82__PUAvalancheReviewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateMainView];
  v2 = *(a1 + 32);
  v3 = v2[137];
  if (v3)
  {
    [v2 _pageToIndexPath:v3 animated:0];
    v4 = *(a1 + 32);
    v5 = *(v4 + 1096);
    *(v4 + 1096) = 0;
  }
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = PUAvalancheReviewController;
  [(PUAvalancheReviewController *)&v3 viewWillLayoutSubviews];
  [(PUAvalancheReviewController *)self _updateCollectionViewLayoutInsets];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = PUAvalancheReviewController;
  [(PUAvalancheReviewController *)&v5 viewWillAppear:?];
  [(PUAvalancheReviewController *)self _updateMainView];
  [(PUAvalancheReviewController *)self _reloadAvalancheDataWithAsset:self->__initialAsset];
  [(UIViewController *)self pu_setupInitialBarsVisibilityOnViewWillAppearAnimated:appearCopy];
}

- (void)dealloc
{
  [(PUAvalancheReviewController *)self _stopPreheatingAllAssets];
  [(UITapGestureRecognizer *)self->__tapGestureRecognizer setDelegate:0];
  [(PUPhotoPinchGestureRecognizer *)self->__photoZoomPinchGestureRecognizer setDelegate:0];
  v3.receiver = self;
  v3.super_class = PUAvalancheReviewController;
  [(PUAvalancheReviewController *)&v3 dealloc];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PUAvalancheReviewController;
  [(PUAvalancheReviewController *)&v4 viewDidAppear:appear];
  [(PUAvalancheReviewController *)self _startPreheatingAllAssets];
}

- (void)viewDidLoad
{
  v15[1] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = PUAvalancheReviewController;
  [(PUAvalancheReviewController *)&v14 viewDidLoad];
  [(PUAvalancheReviewController *)self _updateMainView];
  [(PUAvalancheReviewController *)self _updateBarItemsAnimated:0];
  v3 = [[PUPhotoPinchGestureRecognizer alloc] initWithTarget:self action:sel__handlePhotoPinch_];
  [(PUPhotoPinchGestureRecognizer *)v3 setDelegate:self];
  [(PUAvalancheReviewController *)self _setPhotoZoomPinchGestureRecognizer:v3];
  view = [(PUAvalancheReviewController *)self view];
  [view addGestureRecognizer:v3];

  v5 = MEMORY[0x1E696AD98];
  _initialAsset = [(PUAvalancheReviewController *)self _initialAsset];
  [_initialAsset imageSize];
  PXSizeGetAspectRatio();
  v7 = [v5 numberWithDouble:?];
  reviewScrubber = [(PUAvalancheReviewController *)self reviewScrubber];
  [reviewScrubber setCellAspectRatio:v7];

  [(PUAvalancheReviewController *)self _invalidateReviewScrubberHeight];
  [(PUAvalancheReviewController *)self _updateReviewScrubberHeightIfNeeded];
  objc_initWeak(&location, self);
  v15[0] = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __42__PUAvalancheReviewController_viewDidLoad__block_invoke;
  v11[3] = &unk_1E7B79E70;
  objc_copyWeak(&v12, &location);
  v10 = [(PUAvalancheReviewController *)self registerForTraitChanges:v9 withHandler:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __42__PUAvalancheReviewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateReviewScrubberHeight];
}

- (BOOL)prefersStatusBarHidden
{
  v3.receiver = self;
  v3.super_class = PUAvalancheReviewController;
  [(PUAvalancheReviewController *)&v3 prefersStatusBarHidden];
  return PXShouldHideStatusBarWithCameraWorkaround();
}

- (id)assetsInAssetCollection:(id)collection
{
  collectionCopy = collection;
  if (collectionCopy)
  {
    if (!self->_assetCollectionsFetchResult)
    {
      assetCollectionsFetchResult = [(PUAvalancheReviewController *)self assetCollectionsFetchResult];
    }

    v6 = [(NSMutableDictionary *)self->_resultsForAssetCollection objectForKey:collectionCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (PHFetchResult)assetCollectionsFetchResult
{
  selfCopy = self;
  v40 = *MEMORY[0x1E69E9840];
  assetCollectionsFetchResult = self->_assetCollectionsFetchResult;
  if (!assetCollectionsFetchResult)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v5 = 1000;
    resultsForAssetCollection = selfCopy->_resultsForAssetCollection;
    selfCopy->_resultsForAssetCollection = dictionary;

    v7 = 1008;
    px_standardLibrarySpecificFetchOptions = [(PHPhotoLibrary *)selfCopy->_photoLibrary px_standardLibrarySpecificFetchOptions];
    [px_standardLibrarySpecificFetchOptions setWantsIncrementalChangeDetails:0];
    avalancheContainerList = [(PUAvalancheReviewController *)selfCopy avalancheContainerList];
    containers = [avalancheContainerList containers];

    v29 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(containers, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = containers;
    v30 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v30)
    {
      v11 = *v32;
      v12 = 0x1E6978000uLL;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v14 = [*(v12 + 1616) pl_PHAssetCollectionForAssetContainer:*(*(&v31 + 1) + 8 * i) photoLibrary:*(&selfCopy->super.super.super.isa + v7) includeTrash:1];
          if (v14)
          {
            [v29 addObject:v14];
            v15 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v14 options:px_standardLibrarySpecificFetchOptions];
            [*(&selfCopy->super.super.super.isa + v5) setObject:v15 forKey:v14];
            v16 = PLOneUpGetLog();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              [v14 uuid];
              v17 = v11;
              v18 = selfCopy;
              v19 = v7;
              v20 = v5;
              v22 = v21 = px_standardLibrarySpecificFetchOptions;
              v23 = [v15 count];
              *buf = 138543618;
              v36 = v22;
              v37 = 2048;
              v38 = v23;
              _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_DEFAULT, "PUAvalanceReviewController: Fetched assets for collection: %{public}@ with count: %lu", buf, 0x16u);

              px_standardLibrarySpecificFetchOptions = v21;
              v5 = v20;
              v7 = v19;
              selfCopy = v18;
              v11 = v17;
              v12 = 0x1E6978000;
            }
          }
        }

        v30 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v30);
    }

    v24 = [MEMORY[0x1E6978760] transientCollectionListWithCollections:v29 title:&stru_1F2AC6818];
    v25 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:v24 options:px_standardLibrarySpecificFetchOptions];
    v26 = selfCopy->_assetCollectionsFetchResult;
    selfCopy->_assetCollectionsFetchResult = v25;

    assetCollectionsFetchResult = selfCopy->_assetCollectionsFetchResult;
  }

  return assetCollectionsFetchResult;
}

- (PUAvalancheReviewController)initWithSpec:(id)spec startingAtAsset:(id)asset inAvalanche:(id)avalanche currentAssetContainer:(id)container photoLibrary:(id)library
{
  v47 = *MEMORY[0x1E69E9840];
  specCopy = spec;
  assetCopy = asset;
  avalancheCopy = avalanche;
  containerCopy = container;
  libraryCopy = library;
  if (assetCopy)
  {
    if (avalancheCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUAvalancheReviewController.m" lineNumber:164 description:{@"Invalid parameter not satisfying: %@", @"asset", libraryCopy}];

    if (avalancheCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUAvalancheReviewController.m" lineNumber:165 description:{@"Invalid parameter not satisfying: %@", @"avalanche"}];

LABEL_3:
  v36 = containerCopy;
  if (!containerCopy)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PUAvalancheReviewController.m" lineNumber:166 description:{@"Invalid parameter not satisfying: %@", @"currentAssetContainer"}];
  }

  assets = [avalancheCopy assets];
  v18 = [assets indexOfObject:assetCopy];

  if (v18 == 0x7FFFFFFFFFFFFFFFLL || (v40.receiver = self, v40.super_class = PUAvalancheReviewController, v19 = [(PUAvalancheReviewController *)&v40 initWithNibName:0 bundle:0], (self = v19) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    objc_storeStrong(&v19->__spec, spec);
    objc_storeStrong(&self->__avalancheBeingReviewed, avalanche);
    objc_storeStrong(&self->__initialAsset, asset);
    userFavorites = [avalancheCopy userFavorites];
    initialFavorites = self->__initialFavorites;
    self->__initialFavorites = userFavorites;

    objc_storeStrong(&self->__currentAssetContainer, container);
    objc_storeStrong(&self->_photoLibrary, library);
    v22 = objc_opt_new();
    cachingImageManager = self->__cachingImageManager;
    self->__cachingImageManager = v22;

    v24 = [objc_alloc(MEMORY[0x1E69BE7E8]) initWithAssetContainer:self->__avalancheBeingReviewed];
    avalancheContainerList = self->_avalancheContainerList;
    self->_avalancheContainerList = v24;

    v26 = PLOneUpGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      uuid = [(PLAvalanche *)self->__avalancheBeingReviewed uuid];
      assets2 = [(PLAvalanche *)self->__avalancheBeingReviewed assets];
      v29 = [assets2 count];
      containers = [(PLAssetContainerList *)self->_avalancheContainerList containers];
      v31 = [containers count];
      *buf = 138543874;
      v42 = uuid;
      v43 = 2048;
      v44 = v29;
      v45 = 2048;
      v46 = v31;
      _os_log_impl(&dword_1B36F3000, v26, OS_LOG_TYPE_DEFAULT, "PUAvalanceReviewController: Init with item avalanche %{public}@, count: %lu, container count: %lu", buf, 0x20u);
    }

    self = self;
    selfCopy = self;
  }

  return selfCopy;
}

- (PUAvalancheReviewController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUAvalancheReviewController.m" lineNumber:160 description:{@"%s is not available as initializer", "-[PUAvalancheReviewController init]"}];

  abort();
}

- (PUAvalancheReviewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUAvalancheReviewController.m" lineNumber:156 description:{@"%s is not available as initializer", "-[PUAvalancheReviewController initWithCoder:]"}];

  abort();
}

- (PUAvalancheReviewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUAvalancheReviewController.m" lineNumber:152 description:{@"%s is not available as initializer", "-[PUAvalancheReviewController initWithNibName:bundle:]"}];

  abort();
}

@end