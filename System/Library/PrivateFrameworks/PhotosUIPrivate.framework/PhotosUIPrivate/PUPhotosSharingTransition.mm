@interface PUPhotosSharingTransition
- (PUPhotosSharingTransitionDelegate)delegate;
- (void)animateDismissTransition;
- (void)animatePresentTransition;
@end

@implementation PUPhotosSharingTransition

- (PUPhotosSharingTransitionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)animateDismissTransition
{
  toViewController = [(PUViewControllerTransition *)self toViewController];
  view = [toViewController view];
  sharingTransitionViewController = [(PUPhotosSharingTransition *)self sharingTransitionViewController];
  view2 = [sharingTransitionViewController view];
  fromViewController = [(PUViewControllerTransition *)self fromViewController];
  view3 = [fromViewController view];
  containerView = [(PUViewControllerTransition *)self containerView];
  [(PUViewControllerTransition *)self finalToViewFrame];
  v48 = view;
  [view setFrame:?];
  [containerView insertSubview:view belowSubview:view3];
  [view layoutIfNeeded];
  photosSharingTransitionContext = [(PUPhotosSharingTransition *)self photosSharingTransitionContext];
  keyAssetIndexPath = [photosSharingTransitionContext keyAssetIndexPath];
  v46 = photosSharingTransitionContext;
  assetCollectionsDataSource = [photosSharingTransitionContext assetCollectionsDataSource];
  superview = [view2 superview];
  v10 = objc_alloc(MEMORY[0x1E69DD250]);
  v44 = [v10 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [superview insertSubview:v44 aboveSubview:view2];
  delegate = [(PUPhotosSharingTransition *)self delegate];
  v47 = [delegate photosSharingTransition:self viewForTransitionWithAssetCollectionsDataSource:assetCollectionsDataSource];

  [v47 insertSubview:view2 aboveSubview:view3];
  transitionCollectionView = [sharingTransitionViewController transitionCollectionView];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [transitionCollectionView setBackgroundColor:clearColor];

  layer = [view3 layer];
  [layer setAllowsGroupOpacity:0];

  delegate2 = [(PUPhotosSharingTransition *)self delegate];
  v16 = [delegate2 photosSharingTransition:self layoutForKeyAssetIndexPath:keyAssetIndexPath inAssetCollectionsDataSource:assetCollectionsDataSource];

  v45 = v16;
  [(PUPhotosSharingTransition *)self _setTransitionLayout:v16];
  [sharingTransitionViewController setPhotosSharingTransitionContext:photosSharingTransitionContext];
  embeddedActivityView = [sharingTransitionViewController embeddedActivityView];
  [sharingTransitionViewController embeddedActivityViewFrameWhenShowing:0];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  [containerView addSubview:embeddedActivityView];
  delegate3 = [(PUPhotosSharingTransition *)self delegate];
  [delegate3 photosSharingTransition:self setVisibility:0 forKeyAssetIndexPath:keyAssetIndexPath inAssetCollectionsDataSource:assetCollectionsDataSource];

  [sharingTransitionViewController setPhotosSharingTransitionLayout:v16 animated:1];
  assetCollectionsFetchResult = [assetCollectionsDataSource assetCollectionsFetchResult];
  photoLibrary = [assetCollectionsFetchResult photoLibrary];

  v29 = [photoLibrary px_beginPausingChangesWithTimeout:@"PUPhotosSharingTransition-Dismiss" identifier:*MEMORY[0x1E69C4138]];
  v42 = MEMORY[0x1E69DD250];
  [(PUViewControllerTransition *)self duration];
  v31 = v30;
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __53__PUPhotosSharingTransition_animateDismissTransition__block_invoke;
  v62[3] = &unk_1E7B7CED8;
  v62[4] = self;
  v63 = view3;
  v64 = embeddedActivityView;
  v65 = v19;
  v66 = v21;
  v67 = v23;
  v68 = v25;
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __53__PUPhotosSharingTransition_animateDismissTransition__block_invoke_2;
  v52[3] = &unk_1E7B7CF28;
  v52[4] = self;
  v53 = keyAssetIndexPath;
  v54 = assetCollectionsDataSource;
  v55 = superview;
  v56 = view2;
  v57 = v44;
  v58 = v64;
  v59 = sharingTransitionViewController;
  v60 = photoLibrary;
  v61 = v29;
  v41 = v29;
  v40 = photoLibrary;
  v32 = sharingTransitionViewController;
  v33 = v64;
  v34 = v44;
  v35 = view2;
  v36 = superview;
  v37 = assetCollectionsDataSource;
  v38 = keyAssetIndexPath;
  v39 = view3;
  [v42 animateWithDuration:v62 animations:v52 completion:v31];
}

uint64_t __53__PUPhotosSharingTransition_animateDismissTransition__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 photosSharingTransition:*(a1 + 32) willAnimatePresent:0];

  [*(a1 + 40) setAlpha:0.0];
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);

  return [v3 setFrame:{v4, v5, v6, v7}];
}

uint64_t __53__PUPhotosSharingTransition_animateDismissTransition__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 photosSharingTransition:*(a1 + 32) setVisibility:1 forKeyAssetIndexPath:*(a1 + 40) inAssetCollectionsDataSource:*(a1 + 48)];

  [*(a1 + 56) insertSubview:*(a1 + 64) aboveSubview:*(a1 + 72)];
  [*(a1 + 72) removeFromSuperview];
  [*(a1 + 64) addSubview:*(a1 + 80)];
  [*(a1 + 88) setPhotosSharingTransitionContext:0];
  [*(a1 + 96) px_endPausingChanges:*(a1 + 104)];
  v3 = [*(a1 + 32) transitionContext];
  v4 = [v3 transitionWasCancelled];

  v5 = *(a1 + 32);

  return [v5 completeTransition:v4 ^ 1u];
}

- (void)animatePresentTransition
{
  toViewController = [(PUViewControllerTransition *)self toViewController];
  view = [toViewController view];
  sharingTransitionViewController = [(PUPhotosSharingTransition *)self sharingTransitionViewController];
  view2 = [sharingTransitionViewController view];
  fromViewController = [(PUViewControllerTransition *)self fromViewController];
  view3 = [fromViewController view];
  containerView = [(PUViewControllerTransition *)self containerView];
  [(PUViewControllerTransition *)self finalToViewFrame];
  [view setFrame:?];
  v56 = containerView;
  [containerView insertSubview:view aboveSubview:view3];
  layer = [view layer];
  allowsGroupOpacity = [layer allowsGroupOpacity];

  layer2 = [view layer];
  [layer2 setAllowsGroupOpacity:0];

  [view setAlpha:0.0];
  photosSharingTransitionContext = [(PUPhotosSharingTransition *)self photosSharingTransitionContext];
  keyAssetIndexPath = [photosSharingTransitionContext keyAssetIndexPath];
  v63 = photosSharingTransitionContext;
  assetCollectionsDataSource = [photosSharingTransitionContext assetCollectionsDataSource];
  delegate = [(PUPhotosSharingTransition *)self delegate];
  v62 = [delegate photosSharingTransition:self layoutForKeyAssetIndexPath:keyAssetIndexPath inAssetCollectionsDataSource:assetCollectionsDataSource];

  [(PUPhotosSharingTransition *)self _setTransitionLayout:v62];
  [sharingTransitionViewController setPhotosSharingTransitionContext:photosSharingTransitionContext];
  [sharingTransitionViewController setPhotosSharingTransitionLayout:v62 animated:0];
  delegate2 = [(PUPhotosSharingTransition *)self delegate];
  [delegate2 photosSharingTransition:self contentOffsetForKeyAssetIndexPath:keyAssetIndexPath inAssetCollectionsDataSource:assetCollectionsDataSource];
  v15 = v14;
  v17 = v16;

  transitionCollectionView = [sharingTransitionViewController transitionCollectionView];
  [transitionCollectionView setContentOffset:{v15, v17}];

  [view layoutIfNeeded];
  superview = [view2 superview];
  v20 = objc_alloc(MEMORY[0x1E69DD250]);
  v54 = view2;
  v55 = [v20 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v21 = superview;
  [superview insertSubview:v55 aboveSubview:view2];
  delegate3 = [(PUPhotosSharingTransition *)self delegate];
  v61 = [delegate3 photosSharingTransition:self viewForTransitionWithAssetCollectionsDataSource:assetCollectionsDataSource];

  [v61 addSubview:view2];
  transitionCollectionView2 = [sharingTransitionViewController transitionCollectionView];
  backgroundColor = [transitionCollectionView2 backgroundColor];

  transitionCollectionView3 = [sharingTransitionViewController transitionCollectionView];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [transitionCollectionView3 setBackgroundColor:clearColor];

  embeddedActivityView = [sharingTransitionViewController embeddedActivityView];
  [sharingTransitionViewController embeddedActivityViewFrameWhenShowing:0];
  [embeddedActivityView setFrame:?];
  [sharingTransitionViewController embeddedActivityViewFrameWhenShowing:1];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  [containerView addSubview:embeddedActivityView];
  delegate4 = [(PUPhotosSharingTransition *)self delegate];
  [delegate4 photosSharingTransition:self setVisibility:0 forKeyAssetIndexPath:keyAssetIndexPath inAssetCollectionsDataSource:assetCollectionsDataSource];

  [sharingTransitionViewController setPhotosSharingTransitionLayout:0 animated:1];
  v49 = assetCollectionsDataSource;
  assetCollectionsFetchResult = [assetCollectionsDataSource assetCollectionsFetchResult];
  photoLibrary = [assetCollectionsFetchResult photoLibrary];

  v38 = [photoLibrary px_beginPausingChangesWithTimeout:@"PUPhotosSharingTransition-Present" identifier:*MEMORY[0x1E69C4138]];
  v50 = MEMORY[0x1E69DD250];
  [(PUViewControllerTransition *)self duration];
  v40 = v39;
  v80[0] = MEMORY[0x1E69E9820];
  v80[1] = 3221225472;
  v80[2] = __53__PUPhotosSharingTransition_animatePresentTransition__block_invoke;
  v80[3] = &unk_1E7B7CED8;
  v80[4] = self;
  v81 = view;
  v82 = embeddedActivityView;
  v83 = v28;
  v84 = v30;
  v85 = v32;
  v86 = v34;
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __53__PUPhotosSharingTransition_animatePresentTransition__block_invoke_2;
  v66[3] = &unk_1E7B7CF00;
  v66[4] = self;
  v67 = keyAssetIndexPath;
  v68 = assetCollectionsDataSource;
  v69 = v81;
  v79 = allowsGroupOpacity;
  v70 = v21;
  v71 = v54;
  v72 = v55;
  v73 = v82;
  v74 = sharingTransitionViewController;
  v75 = backgroundColor;
  v76 = view3;
  v77 = photoLibrary;
  v78 = v38;
  v58 = v38;
  v51 = photoLibrary;
  v60 = view3;
  v41 = backgroundColor;
  v53 = sharingTransitionViewController;
  v42 = v82;
  v43 = v55;
  v44 = v54;
  v45 = v21;
  v46 = v81;
  v47 = v49;
  v48 = keyAssetIndexPath;
  [v50 animateWithDuration:v80 animations:v66 completion:v40];
}

uint64_t __53__PUPhotosSharingTransition_animatePresentTransition__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 photosSharingTransition:*(a1 + 32) willAnimatePresent:1];

  [*(a1 + 40) setAlpha:1.0];
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);

  return [v3 setFrame:{v4, v5, v6, v7}];
}

uint64_t __53__PUPhotosSharingTransition_animatePresentTransition__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 photosSharingTransition:*(a1 + 32) setVisibility:1 forKeyAssetIndexPath:*(a1 + 40) inAssetCollectionsDataSource:*(a1 + 48)];

  v3 = [*(a1 + 56) layer];
  [v3 setAllowsGroupOpacity:*(a1 + 136)];

  [*(a1 + 64) insertSubview:*(a1 + 72) aboveSubview:*(a1 + 80)];
  [*(a1 + 80) removeFromSuperview];
  [*(a1 + 72) addSubview:*(a1 + 88)];
  v4 = [*(a1 + 96) transitionCollectionView];
  [v4 setBackgroundColor:*(a1 + 104)];

  [*(a1 + 112) removeFromSuperview];
  [*(a1 + 96) setPhotosSharingTransitionContext:0];
  [*(a1 + 120) px_endPausingChanges:*(a1 + 128)];
  v5 = [*(a1 + 32) transitionContext];
  v6 = [v5 transitionWasCancelled];

  v7 = *(a1 + 32);

  return [v7 completeTransition:v6 ^ 1u];
}

@end