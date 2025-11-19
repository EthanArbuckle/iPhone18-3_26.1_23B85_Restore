@interface PUAvalancheReviewController
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)prefersStatusBarHidden;
- (BOOL)reviewScrubber:(id)a3 shouldProvideFeedbackForCellAtIndexPath:(id)a4;
- (CGRect)_frameAtIndexPath:(id)a3 inView:(id)a4;
- (CGRect)_previousPreheatRect;
- (CGRect)embeddedActivityViewFrameWhenShowing:(BOOL)a3;
- (CGRect)layout:(id)a3 collectionView:(id)a4 selectionBadgeFrameForItemFrame:(CGRect)a5 atIndexPath:(id)a6;
- (CGRect)oneUpAssetTransitionAssetFinalFrame:(id)a3;
- (CGRect)selectionBadgeFrameForItemFrame:(CGRect)a3 atIndexPath:(id)a4;
- (CGSize)_sizeForItemAtIndexPath:(id)a3;
- (CGSize)layout:(id)a3 collectionView:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (PHFetchResult)assetCollectionsFetchResult;
- (PUAvalancheReviewController)init;
- (PUAvalancheReviewController)initWithCoder:(id)a3;
- (PUAvalancheReviewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PUAvalancheReviewController)initWithSpec:(id)a3 startingAtAsset:(id)a4 inAvalanche:(id)a5 currentAssetContainer:(id)a6 photoLibrary:(id)a7;
- (PUAvalancheReviewControllerDelegate)delegate;
- (double)_horizontalOffsetInCollectionView:(id)a3 forCenteringOnItemAtIndexPath:(id)a4;
- (id)_assetAtIndexPath:(id)a3;
- (id)_currentAsset;
- (id)_indexPathInCollectionView:(id)a3 closestToPoint:(CGPoint)a4 excludingIndexPath:(id)a5;
- (id)_indexPathOfCenterVisibleItemInCollectionView:(id)a3;
- (id)_phAssetAtIndexPath:(id)a3;
- (id)_selectionViewAtIndexPath:(id)a3 forCollectionView:(id)a4;
- (id)assetsInAssetCollection:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (unint64_t)reviewScrubber:(id)a3 numberOfItemsInSection:(unint64_t)a4;
- (unsigned)reviewScrubberImageFormat;
- (void)_beginZoomingForCellAtIndexPath:(id)a3;
- (void)_cancelReviewMode;
- (void)_dismissReviewControllerWithAsset:(id)a3;
- (void)_endZoomingForCell;
- (void)_finishReviewAndDeleteNonPicks:(BOOL)a3;
- (void)_getFirstValidIndexPath:(id *)a3 lastValidIndexPath:(id *)a4;
- (void)_getMainCollectionViewFrame:(CGRect *)a3 collectionViewLayoutInsets:(UIEdgeInsets *)a4;
- (void)_handleDoneButton:(id)a3;
- (void)_handlePhotoPinch:(id)a3;
- (void)_handleTapAtIndexPath:(id)a3;
- (void)_handleTapInMainCollectionView:(id)a3;
- (void)_pageToIndexPath:(id)a3 animated:(BOOL)a4;
- (void)_promoteFavoriteAssetsAndDeleteNonPicks:(BOOL)a3 withReviewCompletionHandler:(id)a4;
- (void)_reallyToggleCurrentPickStatusAtIndexPath:(id)a3;
- (void)_reloadAvalancheDataWithAsset:(id)a3;
- (void)_resetPreheating;
- (void)_startPreheatingAllAssets;
- (void)_toggleCurrentPickStatusAtIndexPath:(id)a3;
- (void)_updateBarItemsAnimated:(BOOL)a3;
- (void)_updateCell:(id)a3 forItemAtIndexPath:(id)a4;
- (void)_updateCollectionViewLayoutInsets;
- (void)_updateEnabledNavigationBarItems;
- (void)_updateMainView;
- (void)_updateNavigationItemTitle;
- (void)_updatePhotoForAsset:(id)a3 cell:(id)a4 atIndexPath:(id)a5;
- (void)_updatePreheatedAssets;
- (void)_updateReviewScrubberFromContentOffset;
- (void)_updateReviewScrubberHeightIfNeeded;
- (void)dealloc;
- (void)oneUpAssetTransition:(id)a3 requestTransitionContextWithCompletion:(id)a4;
- (void)reviewScrubber:(id)a3 willDisplayCell:(id)a4 atIndexPath:(id)a5;
- (void)reviewScrubberDidScrub:(id)a3;
- (void)reviewScrubberDidSelectItemAtIndexPath:(id)a3;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setOneUpPhotosSharingTransitionInfo:(id)a3;
- (void)setPhotosSharingTransitionContext:(id)a3;
- (void)setPhotosSharingTransitionLayout:(id)a3 animated:(BOOL)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
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
  v3 = [(PUAvalancheReviewController *)self _collectionView];
  v4 = [v3 collectionViewLayout];
  v5 = v4;
  if (self->__transitionLayout)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (!v6)
  {
    [v3 bounds];
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
          v19 = [v3 collectionViewLayout];
          v20 = [v19 layoutAttributesForElementsInRect:{v14, v15, v17, v18}];

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
                  v29 = [v28 indexPath];
                  v30 = [(PUAvalancheReviewController *)self _phAssetAtIndexPath:v29];
                  [v23 addObject:v30];
                  [v71 setObject:v29 forKey:v30];
                }
              }

              v25 = [obj countByEnumeratingWithState:&v81 objects:v90 count:16];
            }

            while (v25);
          }

          v31 = [(PUAvalancheReviewController *)self _preheatedAssets];
          [(PUAvalancheReviewController *)self _setPreheatedAssets:v23];
          v32 = [v23 mutableCopy];
          [v32 minusSet:v31];
          v67 = [v31 mutableCopy];
          [v67 minusSet:v23];
          if ([v32 count] || objc_msgSend(v67, "count"))
          {
            v63 = v31;
            v65 = v5;
            v66 = v3;
            if (!self->__assetsToSizeDictionary)
            {
              v33 = [MEMORY[0x1E695DF90] dictionary];
              [(PUAvalancheReviewController *)self _setAssetsToSizeDictionary:v33];
            }

            v64 = v23;
            v34 = objc_opt_new();
            [v34 setNetworkAccessAllowed:1];
            v72 = v34;
            [v34 setLoadingMode:0x40000];
            v35 = [(PUAvalancheReviewController *)self _cachingImageManager];
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
                  [v35 startCachingImagesForAssets:v46 targetSize:0 contentMode:v72 options:{v43, v45}];

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
                  [v35 stopCachingImagesForAssets:v60 targetSize:0 contentMode:v72 options:{v57, v59}];

                  [(NSMutableDictionary *)self->__assetsToSizeDictionary removeObjectForKey:v54];
                  v85 = v54;
                  v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v85 count:1];
                  [v35 startCachingImagesForAssets:v61 targetSize:0 contentMode:v49 options:{v57, v59}];
                }

                v51 = [v69 countByEnumeratingWithState:&v73 objects:v87 count:16];
              }

              while (v51);
            }

            v5 = v65;
            v3 = v66;
            v31 = v63;
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

- (void)oneUpAssetTransition:(id)a3 requestTransitionContextWithCompletion:(id)a4
{
  v5 = a4;
  v6 = [(PUAvalancheReviewController *)self view];
  [v6 layoutIfNeeded];

  v7 = [(PUAvalancheReviewController *)self _indexPathOfCenterVisibleItemInCollectionView:self->__collectionView];
  v8 = [(UICollectionView *)self->__collectionView cellForItemAtIndexPath:v7];
  v9 = [v8 photoView];
  v10 = [v9 contentHelper];
  v11 = [v10 photoImage];

  v12 = [(PUAvalancheReviewController *)self view];
  [(PUAvalancheReviewController *)self _frameAtIndexPath:v7 inView:v12];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v14, v16, v18, v20}];
  [v21 setImage:v11];
  v22 = [MEMORY[0x1E69C3640] sharedInstance];
  [v22 insetContentCornerRadius];
  v24 = v23;
  v25 = [v21 layer];
  [v25 setCornerRadius:v24];

  v26 = *MEMORY[0x1E69796E8];
  v27 = [v21 layer];
  [v27 setCornerCurve:v26];

  [v21 setClipsToBounds:1];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __91__PUAvalancheReviewController_oneUpAssetTransition_requestTransitionContextWithCompletion___block_invoke;
  v34[3] = &unk_1E7B7F3E0;
  v28 = v11;
  v35 = v28;
  v36 = self;
  v29 = v7;
  v37 = v29;
  v30 = [PUAssetTransitionInfo assetTransitionInfoWithConfigurationBlock:v34];
  v31 = [(PUAvalancheReviewController *)self view];
  v32 = [PUOneUpAssetTransitionContext oneUpAssetTransitionContextWithContainerView:0 fromView:v31 snapshotView:v21 transitionInfo:v30];

  v33 = [v32 oneUpTransitionContextWithContextShouldHideBackground:1];

  if (v5)
  {
    v5[2](v5, v33);
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

- (CGRect)oneUpAssetTransitionAssetFinalFrame:(id)a3
{
  v4 = [(PUAvalancheReviewController *)self _collectionView];
  v5 = [(PUAvalancheReviewController *)self _indexPathOfCenterVisibleItemInCollectionView:v4];

  v6 = [(PUAvalancheReviewController *)self view];
  [(PUAvalancheReviewController *)self _frameAtIndexPath:v5 inView:v6];
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
  v8 = [(PUAvalancheReviewController *)self _collectionViewLayout];
  v9 = [v8 layoutAttributesForItemAtIndexPath:v7];

  [v9 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(PUAvalancheReviewController *)self _collectionView];
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

- (CGRect)embeddedActivityViewFrameWhenShowing:(BOOL)a3
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

- (void)setPhotosSharingTransitionLayout:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v12 = a3;
  v7 = [(PUAvalancheReviewController *)self _transitionLayout];

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
      v9 = [(PUAvalancheReviewController *)self _collectionViewLayout];
    }

    v10 = v9;
    v11 = [(PUAvalancheReviewController *)self _collectionView];
    [v11 setCollectionViewLayout:v10 animated:v4];

    v8 = v12;
  }
}

- (void)setOneUpPhotosSharingTransitionInfo:(id)a3
{
  v5 = a3;
  if (self->__assetTransitionInfo != v5)
  {
    v13 = v5;
    objc_storeStrong(&self->__assetTransitionInfo, a3);
    v6 = [(PUAvalancheReviewController *)self _collectionView];
    v7 = [(PUAvalancheReviewController *)self _indexPathOfCenterVisibleItemInCollectionView:v6];

    v8 = [(PUAvalancheReviewController *)self _collectionView];
    v9 = [v8 cellForItemAtIndexPath:v7];

    v10 = [v9 photoView];
    v11 = [v10 contentHelper];
    v12 = [(PUAssetTransitionInfo *)v13 image];
    [v11 setPlaceHolderImage:v12];

    v5 = v13;
  }
}

- (void)setPhotosSharingTransitionContext:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->__photosSharingTransitionContext != v5)
  {
    objc_storeStrong(&self->__photosSharingTransitionContext, a3);
    v6 = [(PUAvalancheReviewController *)self _collectionView];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [v6 visibleCells];
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          v13 = [v6 indexPathForCell:v12];
          [(PUAvalancheReviewController *)self _updateCell:v12 forItemAtIndexPath:v13];
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PUAvalancheReviewController *)self _collectionView];
  tapGestureRecognizer = self->__tapGestureRecognizer;

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

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(PUAvalancheReviewController *)self _photoZoomPinchGestureRecognizer];

  if (v5 == v4)
  {
    v7 = [(PUAvalancheReviewController *)self _collectionView];
    if ([v7 isDragging] & 1) != 0 || (objc_msgSend(v7, "isDecelerating"))
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
      [v4 locationInView:v7];
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

- (BOOL)reviewScrubber:(id)a3 shouldProvideFeedbackForCellAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(PUAvalancheReviewController *)self _avalancheBeingReviewed];
  v7 = [v6 assets];
  v8 = [v5 item];

  v9 = [v7 objectAtIndex:v8];

  LOBYTE(v7) = [v6 isAutoPick:v9];
  return v7;
}

- (unint64_t)reviewScrubber:(id)a3 numberOfItemsInSection:(unint64_t)a4
{
  v4 = [(PUAvalancheReviewController *)self _avalancheBeingReviewed:a3];
  v5 = [v4 assetsCount];

  return v5;
}

- (void)reviewScrubberDidSelectItemAtIndexPath:(id)a3
{
  collectionView = self->__collectionView;
  v5 = a3;
  [(UICollectionView *)collectionView stopScrollingAndZooming];
  [(PUAvalancheReviewController *)self _pageToIndexPath:v5 animated:1];
}

- (void)reviewScrubberDidScrub:(id)a3
{
  collectionView = self->__collectionView;
  v5 = a3;
  [(UICollectionView *)collectionView stopScrollingAndZooming];
  self->__updatingContentOffsetFromScrubbing = 1;
  v6 = [v5 selectedIndexPath];

  [(PUAvalancheReviewController *)self _pageToIndexPath:v6 animated:0];
  self->__updatingContentOffsetFromScrubbing = 0;
}

- (void)reviewScrubber:(id)a3 willDisplayCell:(id)a4 atIndexPath:(id)a5
{
  v35[2] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [(PUAvalancheReviewController *)self _avalancheBeingReviewed];
  v12 = [v11 assets];
  v13 = [v9 item];

  v14 = [v12 objectAtIndex:v13];

  [v8 setSuggested:{objc_msgSend(v11, "isAutoPick:", v14)}];
  [v8 setFavorite:{objc_msgSend(v11, "isUserFavorite:", v14)}];
  v15 = [v10 isCompactHeight];

  [v8 setWantsSmallSuggestionIndicators:v15];
  v16 = [v8 tag] + 1;
  [v8 setTag:v16];
  v17 = objc_alloc_init(MEMORY[0x1E6978868]);
  [v17 setAllowPlaceholder:1];
  [v17 setDeliveryMode:1];
  [v17 setLoadingMode:0x40000];
  v18 = [MEMORY[0x1E69BF260] formatWithID:{-[PUAvalancheReviewController reviewScrubberImageFormat](self, "reviewScrubberImageFormat")}];
  v31 = [v18 contentMode];
  [v18 sizeWithFallBackSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  v20 = v19;
  v22 = v21;
  v23 = objc_alloc(MEMORY[0x1E69786C0]);
  v24 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v25 = [v23 initWithPLManagedObject:v14 photoLibrary:v24];

  v26 = *MEMORY[0x1E6978C68];
  v35[0] = *MEMORY[0x1E6978C18];
  v35[1] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
  v28 = [v25 newObjectWithPropertySets:v27];

  [v17 setSynchronous:1];
  v29 = [(PUAvalancheReviewController *)self _cachingImageManager];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __74__PUAvalancheReviewController_reviewScrubber_willDisplayCell_atIndexPath___block_invoke;
  v32[3] = &unk_1E7B758C0;
  v33 = v8;
  v34 = v16;
  v30 = v8;
  [v29 requestImageForAsset:v28 targetSize:v31 contentMode:v17 options:v32 resultHandler:{v20, v22}];
}

void __74__PUAvalancheReviewController_reviewScrubber_willDisplayCell_atIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) tag] == *(a1 + 40))
  {
    [*(a1 + 32) setImage:v3];
  }
}

- (CGRect)layout:(id)a3 collectionView:(id)a4 selectionBadgeFrameForItemFrame:(CGRect)a5 atIndexPath:(id)a6
{
  [(PUAvalancheReviewController *)self selectionBadgeFrameForItemFrame:a6 atIndexPath:a4, a5.origin.x, a5.origin.y, a5.size.width, a5.size.height];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGSize)layout:(id)a3 collectionView:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  [(PUAvalancheReviewController *)self _sizeForItemAtIndexPath:a5, a4];
  result.height = v6;
  result.width = v5;
  return result;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (![v10 isEqualToString:@"PUAvalancheReviewBadgeKind"])
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PUAvalancheReviewController.m" lineNumber:1219 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v12 = [(PUAvalancheReviewController *)self _selectionViewAtIndexPath:v11 forCollectionView:v9];

  return v12;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithReuseIdentifier:@"PUAvalancheReviewCellIdentifier" forIndexPath:v6];
  [(PUAvalancheReviewController *)self _updateCell:v7 forItemAtIndexPath:v6];

  return v7;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(PUAvalancheReviewController *)self _avalancheBeingReviewed:a3];
  v5 = [v4 assetsCount];

  return v5;
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
          if (([(PUAvalancheReviewController *)self _horizontalOffsetInCollectionView:v8 forCenteringOnItemAtIndexPath:v24], v26 = v25, x == 0.0) || x > 0.0 && v25 > a5->x || x < 0.0 && v25 < a5->x)
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
  v3 = [(PUAvalancheReviewController *)self reviewScrubber];
  [v3 finishInteractiveUpdate];
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    v5 = [(PUAvalancheReviewController *)self reviewScrubber];
    [v5 finishInteractiveUpdate];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  [(PUAvalancheReviewController *)self _updatePreheatedAssets];
  v4 = [(PUAvalancheReviewController *)self _photosSharingTransitionContext];
  if (v4)
  {
  }

  else if (!self->__updatingContentOffsetFromScrubbing)
  {

    [(PUAvalancheReviewController *)self _updateReviewScrubberFromContentOffset];
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v3 = [(PUAvalancheReviewController *)self reviewScrubber];
  [v3 beginInteractiveUpdate];
}

- (void)_startPreheatingAllAssets
{
  v27[1] = *MEMORY[0x1E69E9840];
  v3 = [(PUAvalancheReviewController *)self _avalancheBeingReviewed];
  v4 = [v3 assetsCount];

  v5 = objc_opt_new();
  [v5 setNetworkAccessAllowed:1];
  v6 = [(PUAvalancheReviewController *)self _cachingImageManager];
  v7 = [(PUAvalancheReviewController *)self _avalancheBeingReviewed];
  v8 = [v7 assets];
  v9 = [(PUAvalancheReviewController *)self _initialAsset];
  v10 = [v8 indexOfObject:v9];

  if (v4)
  {
    for (i = 0; i < v4; ++i)
    {
      if ((i + v10) >= v4)
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
        [v6 startCachingImagesForAssets:v18 targetSize:0 contentMode:v5 options:{v14, v16}];
      }

      if (((v10 - i) & 0x8000000000000000) != 0)
      {

        if ((i + v10) >= v4)
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
        [v6 startCachingImagesForAssets:v25 targetSize:0 contentMode:v5 options:{v21, v23}];
      }
    }
  }
}

- (void)_cancelReviewMode
{
  [(PUAvalancheReviewController *)self _updateBarItemsAnimated:1];
  v5 = [(PUAvalancheReviewController *)self _initialAsset];
  v3 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v4 = [v5 pl_PHAssetFromPhotoLibrary:v3];
  [(PUAvalancheReviewController *)self _dismissReviewControllerWithAsset:v4];
}

- (void)_handleDoneButton:(id)a3
{
  v4 = a3;
  v5 = [(PUAvalancheReviewController *)self _initialFavorites];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x1E695DFB8] orderedSet];
  }

  v8 = v7;

  v9 = [(PUAvalancheReviewController *)self _avalancheBeingReviewed];
  v10 = [v9 userFavorites];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [MEMORY[0x1E695DFB8] orderedSet];
  }

  v13 = v12;

  if ([v8 count])
  {
    v14 = 0;
  }

  else
  {
    v14 = [v13 count] != 0;
  }

  v15 = [(PUAvalancheReviewController *)self _avalancheBeingReviewed];
  v16 = [v15 assetsCount];

  v17 = [v13 count];
  if (v14 && (v18 = v17, v17 >= 1) && v16 - v17 >= 1)
  {
    v31 = v4;
    if (v16 - v17 == 1)
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
    v29 = [v25 popoverPresentationController];
    [v29 setPermittedArrowDirections:15];
    v4 = v31;
    [v29 setBarButtonItem:v31];
  }

  else
  {
    [(PUAvalancheReviewController *)self _finishReviewAndDeleteNonPicks:0];
  }
}

- (void)_finishReviewAndDeleteNonPicks:(BOOL)a3
{
  v3 = a3;
  self->__completingReviewMode = 1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__PUAvalancheReviewController__finishReviewAndDeleteNonPicks___block_invoke;
  aBlock[3] = &unk_1E7B75898;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  [(PUAvalancheReviewController *)self _promoteFavoriteAssetsAndDeleteNonPicks:v3 withReviewCompletionHandler:v5];
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

- (void)_dismissReviewControllerWithAsset:(id)a3
{
  v6 = a3;
  avalancheBeingReviewed = self->__avalancheBeingReviewed;
  v5 = [(PUAvalancheReviewController *)self delegate];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v5 avalancheReviewControllerDidComplete:self withAsset:v6 animated:avalancheBeingReviewed != 0];
  }
}

- (void)_reallyToggleCurrentPickStatusAtIndexPath:(id)a3
{
  v12 = a3;
  v4 = [(PUAvalancheReviewController *)self _avalancheBeingReviewed];
  v5 = [v4 assets];
  v6 = [v5 objectAtIndex:{objc_msgSend(v12, "item")}];

  v7 = [v4 isUserFavorite:v6];
  v8 = [(PUAvalancheReviewController *)self reviewScrubber];
  [v8 toggleIndexPath:v12 animated:0];
  if (v7)
  {
    [v4 removeUserFavorite:v6];
  }

  else
  {
    [v4 addUserFavorite:v6];
  }

  v9 = [(PUAvalancheReviewController *)self _collectionView];
  v10 = [v9 cellForItemAtIndexPath:v12];
  [v10 setSelected:v7 ^ 1u];
  v11 = [v9 _visibleSupplementaryViewOfKind:@"PUAvalancheReviewBadgeKind" atIndexPath:v12];
  [v11 setSelected:v7 ^ 1u animated:0];
  [v8 reloadIndexPath:v12 animated:0];
  [(PUAvalancheReviewController *)self _updateNavigationItemTitle];
  [(PUAvalancheReviewController *)self _updateEnabledNavigationBarItems];
}

- (void)_toggleCurrentPickStatusAtIndexPath:(id)a3
{
  v48[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PUAvalancheReviewController *)self _avalancheBeingReviewed];
  v6 = [v5 assets];
  v7 = [v6 objectAtIndex:{objc_msgSend(v4, "item")}];

  if (![v5 isUserFavorite:v7])
  {
    goto LABEL_8;
  }

  v8 = [v5 proposedStackAssetAfterRemovingFavorite:v7];
  v9 = v8;
  if (v7 == v8)
  {

    goto LABEL_8;
  }

  v10 = [v7 albums];
  v11 = [v10 count];

  if (v11 < 2)
  {
LABEL_8:
    [(PUAvalancheReviewController *)self _reallyToggleCurrentPickStatusAtIndexPath:v4];
    goto LABEL_9;
  }

  v12 = [v7 albums];
  [v12 count];

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
  v20 = v4;
  v47 = v20;
  v21 = [v19 actionWithTitle:v15 style:2 handler:v46];
  [v17 addAction:v21];

  v22 = [v17 popoverPresentationController];
  if (v22)
  {
    v23 = [(PUAvalancheReviewController *)self _collectionView];
    v24 = [v23 cellForItemAtIndexPath:v20];

    [v24 bounds];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = [(PUAvalancheReviewController *)self navigationController];
    [v33 view];
    v44 = v15;
    v35 = v34 = v14;
    [v24 convertRect:v35 toView:{v26, v28, v30, v32}];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v14 = v34;
    v15 = v44;

    [v22 setSourceView:v24];
    [v22 setSourceRect:{v37, v39, v41, v43}];
  }

  [(PUAvalancheReviewController *)self presentViewController:v17 animated:1 completion:0];

LABEL_9:
}

- (void)_promoteFavoriteAssetsAndDeleteNonPicks:(BOOL)a3 withReviewCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = [(PUAvalancheReviewController *)self _avalancheBeingReviewed];
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__12307;
  v15[4] = __Block_byref_object_dispose__12308;
  v16 = [(PUAvalancheReviewController *)self _currentAsset];
  if ([v7 canPerformEditOperation:1])
  {
    v8 = [v7 photoLibrary];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __99__PUAvalancheReviewController__promoteFavoriteAssetsAndDeleteNonPicks_withReviewCompletionHandler___block_invoke;
    v9[3] = &unk_1E7B75870;
    v14 = a3;
    v10 = v7;
    v11 = self;
    v13 = v15;
    v12 = v6;
    [v8 performTransaction:v9];
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

- (void)_reloadAvalancheDataWithAsset:(id)a3
{
  v4 = a3;
  v14 = [(PUAvalancheReviewController *)self _avalancheBeingReviewed];
  v5 = [v14 assets];
  v6 = [v5 indexOfObject:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v14 userFavorites];
    v8 = [v7 firstObject];

    v9 = [v14 assets];
    v6 = [v9 indexOfObject:v8];
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
  v12 = [(PUAvalancheReviewController *)self reviewScrubber];
  [v12 setSelectedIndexPath:v11];

  [(PUAvalancheReviewController *)self _pageToIndexPath:v11 animated:0];
  v13 = [(PUAvalancheReviewController *)self reviewScrubber];
  [v13 reloadData];
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
  v11 = [(PUAvalancheReviewController *)self reviewScrubber];
  [v11 updateWithAbsoluteProgress:v10];
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
  if ([(PUAvalancheReviewController *)self _needsUpdateReviewScrubberHeight])
  {
    [(PUAvalancheReviewController *)self _setNeedsUpdateReviewScrubberHeight:0];
    v3 = [(PUAvalancheReviewController *)self reviewScrubberHeightConstraint];
    v7 = v3;
    v4 = [(PUAvalancheReviewController *)self reviewScrubber];
    v5 = [(PUAvalancheReviewController *)self traitCollection];
    [PUReviewScrubberSetupHelper configureHeightConstraint:&v7 forReviewScrubber:v4 withTraitCollection:v5];
    v6 = v7;

    [(PUAvalancheReviewController *)self setReviewScrubberHeightConstraint:v6];
  }
}

- (void)_endZoomingForCell
{
  v3 = [(PUAvalancheReviewController *)self _photoZoomCell];
  [v3 removeFromSuperview];

  [(PUAvalancheReviewController *)self _setPhotoZoomCell:0];
  v4 = [(PUAvalancheReviewController *)self _collectionViewLayout];
  [v4 setZoomingCellIndexPath:0];

  v5 = [(PUAvalancheReviewController *)self view];
  [v5 setUserInteractionEnabled:1];

  v6 = [(PUAvalancheReviewController *)self navigationController];
  v7 = [v6 navigationBar];
  [v7 setUserInteractionEnabled:1];

  v8 = [(PUAvalancheReviewController *)self _photoZoomAnimator];
  [v8 setDelegate:0];

  [(PUAvalancheReviewController *)self _setPhotoZoomAnimator:0];
}

- (void)_beginZoomingForCellAtIndexPath:(id)a3
{
  v31 = a3;
  if (!v31)
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"PUAvalancheReviewController.m" lineNumber:819 description:@"expected index path"];
  }

  v5 = [(PUAvalancheReviewController *)self navigationController];
  v6 = [v5 view];

  v7 = [(PUAvalancheReviewController *)self _photoZoomPinchGestureRecognizer];
  v8 = [(PUAvalancheReviewController *)self _collectionView];
  v9 = [v8 cellForItemAtIndexPath:v31];
  [v9 bounds];
  [v9 convertRect:v6 toView:?];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [v7 setInitialPinchRect:?];
  v18 = [(PUAvalancheReviewController *)self _spec];
  v19 = [v18 selectionBadgeCorner];

  v20 = [(PUAvalancheReviewController *)self _selectionViewAtIndexPath:v31 forCollectionView:0];
  [(PUAvalancheReviewController *)self selectionBadgeFrameForItemFrame:v31 atIndexPath:v11, v13, v15, v17];
  [v20 setFrame:?];
  v21 = [[PUPhotosZoomingSharingGridCell alloc] initWithFrame:v20 selectionView:0 optionView:v19 layoutAnchor:v11, v13, v15, v17];
  [(PUAvalancheReviewController *)self _setPhotoZoomCell:v21];
  [(PUAvalancheReviewController *)self _updateCell:v21 forItemAtIndexPath:v31];
  [v6 addSubview:v21];
  v22 = [(PUAvalancheReviewController *)self _collectionViewLayout];
  [v22 setZoomingCellIndexPath:v31];

  v23 = [(PUAvalancheReviewController *)self view];
  [v23 setUserInteractionEnabled:0];

  v24 = [(PUAvalancheReviewController *)self navigationController];
  v25 = [v24 navigationBar];
  [v25 setUserInteractionEnabled:0];

  v26 = [PUTransitionViewAnimator alloc];
  UIRectGetCenter();
  v29 = [(PUTransitionViewAnimator *)v26 initWithView:v21 sourceFrame:1 targetFrame:0 anchorPoint:v11 shouldUseTargetAspectRatio:v13 rampUpDuration:v15 direction:v17, v11, v13, v15, v17, v27, v28, 0x3FB999999999999ALL];
  [(PUTransitionViewAnimator *)v29 setAppliesScaleViaTransform:0];
  [(PUTransitionViewAnimator *)v29 setDelegate:self];
  [(PUAvalancheReviewController *)self _setPhotoZoomAnimator:v29];
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

- (id)_selectionViewAtIndexPath:(id)a3 forCollectionView:(id)a4
{
  if (a4)
  {
    v6 = [a4 dequeueReusableSupplementaryViewOfKind:@"PUAvalancheReviewBadgeKind" withReuseIdentifier:@"PUAvalancheReviewBadgeIdentifier" forIndexPath:a3];
  }

  else
  {
    v7 = a3;
    v6 = objc_alloc_init(PUPhotosSharingSelectionView);
  }

  v8 = v6;
  v9 = [(PUAvalancheReviewController *)self _avalancheBeingReviewed];
  v10 = [v9 assets];
  v11 = [a3 item];

  v12 = [v10 objectAtIndex:v11];

  -[PUPhotosSharingSelectionView setSelected:animated:](v8, "setSelected:animated:", [v9 isUserFavorite:v12], 0);

  return v8;
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

- (id)_indexPathOfCenterVisibleItemInCollectionView:(id)a3
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
  v10 = [(PUAvalancheReviewController *)self _indexPathInCollectionView:v4 closestToPoint:0 excludingIndexPath:MidX, CGRectGetMidY(v14)];

  return v10;
}

- (void)_pageToIndexPath:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v11 = [(PUAvalancheReviewController *)self _collectionView];
  [v11 contentOffset];
  v8 = v7;
  [(PUAvalancheReviewController *)self _horizontalOffsetInCollectionView:v11 forCenteringOnItemAtIndexPath:v6];
  v10 = v9;

  [v11 setContentOffset:v4 animated:{v10, v8}];
}

- (CGSize)_sizeForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PUAvalancheReviewController *)self _avalancheBeingReviewed];
  v6 = [v5 assets];
  v7 = [v4 item];

  v8 = [v6 objectAtIndex:v7];

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
  v15 = [(PUAvalancheReviewController *)self _spec];
  [v15 interItemSpacing];
  v17 = v16;

  v18 = v9 + v17 * -4.0;
  v19 = v10 + v17 * -2.0;
  v20 = [(PUAvalancheReviewController *)self _spec];
  [v20 selectionBadgeSize];
  v22 = v21;
  v23 = [(PUAvalancheReviewController *)self _spec];
  [v23 selectionBadgeOffset];
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

- (id)_phAssetAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PUAvalancheReviewController *)self assetCollectionsFetchResult];
  v6 = [v5 lastObject];

  v7 = [(PUAvalancheReviewController *)self assetsInAssetCollection:v6];
  v8 = [v4 item];

  v9 = [v7 objectAtIndex:v8];

  return v9;
}

- (id)_assetAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PUAvalancheReviewController *)self _avalancheBeingReviewed];
  v6 = [v5 assets];
  v7 = [v4 item];

  v8 = [v6 objectAtIndex:v7];

  return v8;
}

- (id)_currentAsset
{
  v3 = [(PUAvalancheReviewController *)self _indexPathOfCenterVisibleItemInCollectionView:self->__collectionView];
  v4 = [(PUAvalancheReviewController *)self _avalancheBeingReviewed];
  v5 = [v4 assetsCount];
  if ([v3 item] >= v5)
  {
    v7 = 0;
  }

  else
  {
    v6 = [v4 assets];
    v7 = [v6 objectAtIndex:{objc_msgSend(v3, "item")}];
  }

  return v7;
}

- (void)_handlePhotoPinch:(id)a3
{
  v19 = a3;
  v4 = [v19 state];
  if ((v4 - 3) < 3)
  {
    v5 = [(PUAvalancheReviewController *)self _photoZoomAnimator];
    if (v5)
    {
      v6 = [(PUAvalancheReviewController *)self _photoZoomCell];
      v7 = [v6 superview];

      [v19 adjustedTranslationVelocityInView:v7];
      v9 = v8;
      v11 = v10;
      [v19 adjustedScaleVelocityInView:v7];
      [v5 finishWithTranslationVelocity:0 rotationVelocity:v9 scaleVelocity:v11 shouldBounce:{0.0, v12}];
      goto LABEL_14;
    }

    [(PUAvalancheReviewController *)self _endZoomingForCell];
LABEL_11:
    v7 = 0;
    goto LABEL_14;
  }

  if (v4 == 2)
  {
    v5 = [(PUAvalancheReviewController *)self _photoZoomAnimator];
    if (v5)
    {
      v13 = [(PUAvalancheReviewController *)self _photoZoomCell];
      v7 = [v13 superview];

      [v19 adjustedTranslationInView:v7];
      v15 = v14;
      v17 = v16;
      [v19 adjustedScaleInView:v7];
      [v5 updateWithTranslation:v15 rotation:v17 scale:{0.0, v18}];
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (v4 == 1)
  {
    v7 = [(PUAvalancheReviewController *)self _collectionView];
    [v19 locationInView:v7];
    v5 = [(PUAvalancheReviewController *)self _indexPathInCollectionView:v7 closestToPoint:0 excludingIndexPath:?];
    if (!v5)
    {
      goto LABEL_14;
    }

    [(PUAvalancheReviewController *)self _beginZoomingForCellAtIndexPath:v5];
  }

  else
  {
    v7 = 0;
  }

  v5 = 0;
LABEL_14:
}

- (void)_handleTapInMainCollectionView:(id)a3
{
  v4 = a3;
  v17 = [(PUAvalancheReviewController *)self _collectionView];
  [v4 locationInView:v17];
  v6 = v5;
  v8 = v7;

  v9 = [(PUAvalancheReviewController *)self _collectionViewLayout];
  [v17 contentSize];
  v11 = v10;
  [v9 itemsContentInset];
  v14 = v11 - fabs(v13);
  if (v6 > fabs(v12) && v6 < v14)
  {
    v16 = [(PUAvalancheReviewController *)self _indexPathInCollectionView:v17 closestToPoint:0 excludingIndexPath:v6, v8];
    if (v16)
    {
      [(PUAvalancheReviewController *)self _handleTapAtIndexPath:v16];
    }
  }
}

- (void)_handleTapAtIndexPath:(id)a3
{
  v6 = a3;
  v4 = [(PUAvalancheReviewController *)self _collectionView];
  [(PUAvalancheReviewController *)self _toggleCurrentPickStatusAtIndexPath:v6];
  if (([v4 isDragging] & 1) == 0 && (objc_msgSend(v4, "isDecelerating") & 1) == 0 && objc_msgSend(v4, "isTracking"))
  {
    v5 = [(PUAvalancheReviewController *)self reviewScrubber];
    [v5 beginInteractiveUpdate];
    [(PUAvalancheReviewController *)self _pageToIndexPath:v6 animated:1];
  }
}

- (CGRect)selectionBadgeFrameForItemFrame:(CGRect)a3 atIndexPath:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [(PUAvalancheReviewController *)self _spec];
  [v9 selectionBadgeSize];
  v11 = v10;
  v13 = v12;

  v14 = [(PUAvalancheReviewController *)self _spec];
  [v14 selectionBadgeOffset];
  v16 = v15;
  v18 = v17;

  v19 = [(PUAvalancheReviewController *)self _spec];
  v20 = [v19 selectionBadgeCorner];

  if (v20 != 1)
  {
    v21 = y;
    v22 = *(MEMORY[0x1E695F058] + 8);
    if (v20 == 4)
    {
      v28 = x;
      v29 = width;
      v30 = height;
    }

    else
    {
      v23 = height;
      v24 = *MEMORY[0x1E695F058];
      if (v20 == 2)
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

- (void)_updateCell:(id)a3 forItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v17 = [(PUAvalancheReviewController *)self _avalancheBeingReviewed];
  v8 = [v17 assets];
  v9 = [v8 objectAtIndex:{objc_msgSend(v6, "item")}];

  [v9 imageSize];
  v11 = v10;
  v13 = v12;
  v14 = [v7 photoView];
  v15 = [v14 contentHelper];

  [v15 setPhotoSize:{v11, v13}];
  [v15 setFillMode:1];
  v16 = [MEMORY[0x1E69C3640] sharedInstance];
  [v16 insetContentCornerRadius];
  [v15 setCornerRadius:?];

  [v15 setContinuousCorners:1];
  [v7 setSelected:{objc_msgSend(v17, "isUserFavorite:", v9)}];
  [(PUAvalancheReviewController *)self _updatePhotoForAsset:v9 cell:v7 atIndexPath:v6];
}

- (void)_updatePhotoForAsset:(id)a3 cell:(id)a4 atIndexPath:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v7 tag] + 1;
  [v7 setTag:v9];
  v10 = [(PUAvalancheReviewController *)self _photoZoomCell];

  v11 = [(PUAvalancheReviewController *)self _photosSharingTransitionContext];
  v12 = [v11 keyAssetIndexPath];
  v13 = [v12 isEqual:v8];

  v14 = [(PUAvalancheReviewController *)self _existingView];
  [v14 bounds];
  v16 = v15;

  v17 = [(PUAvalancheReviewController *)self _phAssetAtIndexPath:v8];

  v18 = objc_opt_new();
  v19 = v18;
  v20 = (v10 == v7) | v13;
  if (v10 == v7)
  {
    [v18 setDeliveryMode:1];
  }

  v21 = v10 == v7;
  v22 = v10 != v7;
  v23 = v21;
  [v19 setSynchronous:v23];
  [v19 setNetworkAccessAllowed:v22];
  [v19 setLoadingMode:0x40000];
  if ((v20 & 1) == 0)
  {
    [v7 frame];
    v16 = v24;
  }

  v25 = PUPixelSizeFromPointSize(v16);
  v27 = v26;
  v28 = [v7 photoView];
  v29 = [v28 contentHelper];

  v30 = [(PUAvalancheReviewController *)self _cachingImageManager];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __69__PUAvalancheReviewController__updatePhotoForAsset_cell_atIndexPath___block_invoke;
  v33[3] = &unk_1E7B75848;
  v35 = v29;
  v36 = v9;
  v34 = v7;
  v31 = v29;
  v32 = v7;
  [v30 requestImageForAsset:v17 targetSize:0 contentMode:v19 options:v33 resultHandler:{v25, v27}];
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

- (void)_getFirstValidIndexPath:(id *)a3 lastValidIndexPath:(id *)a4
{
  v6 = [(PUAvalancheReviewController *)self _avalancheBeingReviewed];
  v7 = [v6 assetsCount];
  if (v7)
  {
    v9 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
    v7 = [MEMORY[0x1E696AC88] indexPathForItem:v7 - 1 inSection:0];
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = 0;
  if (a3)
  {
LABEL_3:
    *a3 = v9;
  }

LABEL_4:
  if (a4)
  {
    v8 = v7;
    *a4 = v7;
  }
}

- (void)_getMainCollectionViewFrame:(CGRect *)a3 collectionViewLayoutInsets:(UIEdgeInsets *)a4
{
  v7 = [(PUAvalancheReviewController *)self view];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  if (a3)
  {
    a3->origin.x = v9;
    a3->origin.y = v11;
    a3->size.width = v13;
    a3->size.height = v15;
  }

  if (a4)
  {
    [(PUAvalancheReviewController *)self px_safeAreaInsets];
    v16 = [(PUAvalancheReviewController *)self reviewScrubberHeightConstraint];
    [v16 constant];

    UIEdgeInsetsMax();
    a4->top = v17;
    a4->left = v18;
    a4->bottom = v19;
    a4->right = v20;
  }
}

- (void)_updateMainView
{
  if (![(PUAvalancheReviewController *)self isViewLoaded])
  {
    return;
  }

  v3 = [(PUAvalancheReviewController *)self _spec];
  v19 = 0u;
  v20 = 0u;
  memset(v18, 0, sizeof(v18));
  [(PUAvalancheReviewController *)self _getMainCollectionViewFrame:&v19 collectionViewLayoutInsets:v18];
  v4 = +[PUInterfaceManager currentTheme];
  v5 = [v4 photoCollectionViewBackgroundColor];

  v6 = [(PUAvalancheReviewController *)self _collectionView];
  v7 = [(PUAvalancheReviewController *)self _collectionViewLayout];
  [v3 interItemSpacing];
  if (!v7)
  {
    v13 = v8;
    v7 = objc_alloc_init(PUAvalancheReviewCollectionViewLayout);
    [(PUHorizontalCollectionViewLayout *)v7 setInteritemSpacing:v13];
    [(PUHorizontalCollectionViewLayout *)v7 setDelegate:self];
    objc_storeStrong(&self->__collectionViewLayout, v7);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_9:
    v14 = objc_alloc(MEMORY[0x1E69DC7F0]);
    v6 = [v14 initWithFrame:v7 collectionViewLayout:{v19, v20}];
    [v6 setAutoresizingMask:18];
    [v6 setAlwaysBounceVertical:0];
    [v6 setAlwaysBounceHorizontal:1];
    [v6 setPagingEnabled:0];
    [v6 setDecelerationRate:*MEMORY[0x1E69DE3A0]];
    [v6 setDataSource:self];
    [v6 setDelegate:self];
    [v6 setShowsHorizontalScrollIndicator:0];
    [v6 setBackgroundColor:v5];
    [v6 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PUAvalancheReviewCellIdentifier"];
    [v6 registerClass:objc_opt_class() forSupplementaryViewOfKind:@"PUAvalancheReviewBadgeKind" withReuseIdentifier:@"PUAvalancheReviewBadgeIdentifier"];
    [v6 setContentInsetAdjustmentBehavior:2];
    v15 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTapInMainCollectionView_];
    tapGestureRecognizer = self->__tapGestureRecognizer;
    self->__tapGestureRecognizer = v15;

    [(UITapGestureRecognizer *)self->__tapGestureRecognizer setNumberOfTapsRequired:1];
    [(UITapGestureRecognizer *)self->__tapGestureRecognizer setNumberOfTouchesRequired:1];
    [(UITapGestureRecognizer *)self->__tapGestureRecognizer setDelegate:self];
    [v6 addGestureRecognizer:self->__tapGestureRecognizer];
    objc_storeStrong(&self->__collectionView, v6);
    v17 = [(PUAvalancheReviewController *)self view];
    [v17 addSubview:self->__collectionView];

    goto LABEL_4;
  }

  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_4:
  [v6 setFrame:{v19, v20}];
  [(PUAvalancheReviewController *)self _updateCollectionViewLayoutInsets];
  if (!self->_reviewScrubber)
  {
    v9 = [PUReviewScrubberSetupHelper createReviewScrubberWithDataSource:self delegate:self];
    reviewScrubber = self->_reviewScrubber;
    self->_reviewScrubber = v9;

    v11 = self->_reviewScrubber;
    v12 = [(PUAvalancheReviewController *)self view];
    [PUReviewScrubberSetupHelper setupBaseConstraintsForReviewScrubber:v11 inView:v12];

    [(PUAvalancheReviewController *)self _invalidateReviewScrubberHeight];
  }

  [(PUAvalancheReviewController *)self _updateReviewScrubberHeightIfNeeded];
}

- (void)_updateBarItemsAnimated:(BOOL)a3
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
      v7 = [MEMORY[0x1E69DC888] whiteColor];
      v8 = [MEMORY[0x1E69DC888] systemBlueColor];
      v9 = [(_BarButton *)v5 initWithTitle:v6 titleColor:v7 backgroundColor:v8 target:self action:sel__handleDoneButton_];

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
      v15 = [MEMORY[0x1E69DC888] systemBlueColor];
      v16 = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
      v17 = [(_BarButton *)v13 initWithTitle:v14 titleColor:v15 backgroundColor:v16 target:self action:sel__cancelReviewModeAction_];

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
  v21 = [(PUAvalancheReviewController *)self navigationItem];
  [v21 setLeftBarButtonItems:v19];
  [v21 setRightBarButtonItems:v20];
  [(PUAvalancheReviewController *)self _updateNavigationItemTitle];
}

- (void)_updateNavigationItemTitle
{
  v3 = [(PUAvalancheReviewController *)self _avalancheBeingReviewed];
  v4 = [v3 userFavorites];
  v5 = [v4 count];

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

  v7 = [(PUAvalancheReviewController *)self navigationItem];
  [v7 setTitle:v9];
  [v7 setPrompt:0];
}

- (void)_updateEnabledNavigationBarItems
{
  v2 = [(PUAvalancheReviewController *)self _doneBarButtonItem];
  [v2 setEnabled:1];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v14.receiver = self;
  v14.super_class = PUAvalancheReviewController;
  v7 = a4;
  [(PUAvalancheReviewController *)&v14 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(PUAvalancheReviewController *)self _collectionView];
  v9 = [(PUAvalancheReviewController *)self _indexPathOfCenterVisibleItemInCollectionView:v8];

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
  [v7 animateAlongsideTransition:v13 completion:v12];
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

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = PUAvalancheReviewController;
  [(PUAvalancheReviewController *)&v5 viewWillAppear:?];
  [(PUAvalancheReviewController *)self _updateMainView];
  [(PUAvalancheReviewController *)self _reloadAvalancheDataWithAsset:self->__initialAsset];
  [(UIViewController *)self pu_setupInitialBarsVisibilityOnViewWillAppearAnimated:v3];
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

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PUAvalancheReviewController;
  [(PUAvalancheReviewController *)&v4 viewDidAppear:a3];
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
  v4 = [(PUAvalancheReviewController *)self view];
  [v4 addGestureRecognizer:v3];

  v5 = MEMORY[0x1E696AD98];
  v6 = [(PUAvalancheReviewController *)self _initialAsset];
  [v6 imageSize];
  PXSizeGetAspectRatio();
  v7 = [v5 numberWithDouble:?];
  v8 = [(PUAvalancheReviewController *)self reviewScrubber];
  [v8 setCellAspectRatio:v7];

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

- (id)assetsInAssetCollection:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (!self->_assetCollectionsFetchResult)
    {
      v5 = [(PUAvalancheReviewController *)self assetCollectionsFetchResult];
    }

    v6 = [(NSMutableDictionary *)self->_resultsForAssetCollection objectForKey:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (PHFetchResult)assetCollectionsFetchResult
{
  v2 = self;
  v40 = *MEMORY[0x1E69E9840];
  assetCollectionsFetchResult = self->_assetCollectionsFetchResult;
  if (!assetCollectionsFetchResult)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v5 = 1000;
    resultsForAssetCollection = v2->_resultsForAssetCollection;
    v2->_resultsForAssetCollection = v4;

    v7 = 1008;
    v8 = [(PHPhotoLibrary *)v2->_photoLibrary px_standardLibrarySpecificFetchOptions];
    [v8 setWantsIncrementalChangeDetails:0];
    v9 = [(PUAvalancheReviewController *)v2 avalancheContainerList];
    v10 = [v9 containers];

    v29 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v10, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v10;
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

          v14 = [*(v12 + 1616) pl_PHAssetCollectionForAssetContainer:*(*(&v31 + 1) + 8 * i) photoLibrary:*(&v2->super.super.super.isa + v7) includeTrash:1];
          if (v14)
          {
            [v29 addObject:v14];
            v15 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v14 options:v8];
            [*(&v2->super.super.super.isa + v5) setObject:v15 forKey:v14];
            v16 = PLOneUpGetLog();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              [v14 uuid];
              v17 = v11;
              v18 = v2;
              v19 = v7;
              v20 = v5;
              v22 = v21 = v8;
              v23 = [v15 count];
              *buf = 138543618;
              v36 = v22;
              v37 = 2048;
              v38 = v23;
              _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_DEFAULT, "PUAvalanceReviewController: Fetched assets for collection: %{public}@ with count: %lu", buf, 0x16u);

              v8 = v21;
              v5 = v20;
              v7 = v19;
              v2 = v18;
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
    v25 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:v24 options:v8];
    v26 = v2->_assetCollectionsFetchResult;
    v2->_assetCollectionsFetchResult = v25;

    assetCollectionsFetchResult = v2->_assetCollectionsFetchResult;
  }

  return assetCollectionsFetchResult;
}

- (PUAvalancheReviewController)initWithSpec:(id)a3 startingAtAsset:(id)a4 inAvalanche:(id)a5 currentAssetContainer:(id)a6 photoLibrary:(id)a7
{
  v47 = *MEMORY[0x1E69E9840];
  v39 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v35 = a7;
  if (v14)
  {
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    [v37 handleFailureInMethod:a2 object:self file:@"PUAvalancheReviewController.m" lineNumber:164 description:{@"Invalid parameter not satisfying: %@", @"asset", v35}];

    if (v15)
    {
      goto LABEL_3;
    }
  }

  v38 = [MEMORY[0x1E696AAA8] currentHandler];
  [v38 handleFailureInMethod:a2 object:self file:@"PUAvalancheReviewController.m" lineNumber:165 description:{@"Invalid parameter not satisfying: %@", @"avalanche"}];

LABEL_3:
  v36 = v16;
  if (!v16)
  {
    v34 = [MEMORY[0x1E696AAA8] currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"PUAvalancheReviewController.m" lineNumber:166 description:{@"Invalid parameter not satisfying: %@", @"currentAssetContainer"}];
  }

  v17 = [v15 assets];
  v18 = [v17 indexOfObject:v14];

  if (v18 == 0x7FFFFFFFFFFFFFFFLL || (v40.receiver = self, v40.super_class = PUAvalancheReviewController, v19 = [(PUAvalancheReviewController *)&v40 initWithNibName:0 bundle:0], (self = v19) == 0))
  {
    v32 = 0;
  }

  else
  {
    objc_storeStrong(&v19->__spec, a3);
    objc_storeStrong(&self->__avalancheBeingReviewed, a5);
    objc_storeStrong(&self->__initialAsset, a4);
    v20 = [v15 userFavorites];
    initialFavorites = self->__initialFavorites;
    self->__initialFavorites = v20;

    objc_storeStrong(&self->__currentAssetContainer, a6);
    objc_storeStrong(&self->_photoLibrary, a7);
    v22 = objc_opt_new();
    cachingImageManager = self->__cachingImageManager;
    self->__cachingImageManager = v22;

    v24 = [objc_alloc(MEMORY[0x1E69BE7E8]) initWithAssetContainer:self->__avalancheBeingReviewed];
    avalancheContainerList = self->_avalancheContainerList;
    self->_avalancheContainerList = v24;

    v26 = PLOneUpGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [(PLAvalanche *)self->__avalancheBeingReviewed uuid];
      v28 = [(PLAvalanche *)self->__avalancheBeingReviewed assets];
      v29 = [v28 count];
      v30 = [(PLAssetContainerList *)self->_avalancheContainerList containers];
      v31 = [v30 count];
      *buf = 138543874;
      v42 = v27;
      v43 = 2048;
      v44 = v29;
      v45 = 2048;
      v46 = v31;
      _os_log_impl(&dword_1B36F3000, v26, OS_LOG_TYPE_DEFAULT, "PUAvalanceReviewController: Init with item avalanche %{public}@, count: %lu, container count: %lu", buf, 0x20u);
    }

    self = self;
    v32 = self;
  }

  return v32;
}

- (PUAvalancheReviewController)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUAvalancheReviewController.m" lineNumber:160 description:{@"%s is not available as initializer", "-[PUAvalancheReviewController init]"}];

  abort();
}

- (PUAvalancheReviewController)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PUAvalancheReviewController.m" lineNumber:156 description:{@"%s is not available as initializer", "-[PUAvalancheReviewController initWithCoder:]"}];

  abort();
}

- (PUAvalancheReviewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"PUAvalancheReviewController.m" lineNumber:152 description:{@"%s is not available as initializer", "-[PUAvalancheReviewController initWithNibName:bundle:]"}];

  abort();
}

@end