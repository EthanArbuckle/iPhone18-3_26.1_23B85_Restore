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
  v50 = [(PUViewControllerTransition *)self toViewController];
  v3 = [v50 view];
  v4 = [(PUPhotosSharingTransition *)self sharingTransitionViewController];
  v5 = [v4 view];
  v49 = [(PUViewControllerTransition *)self fromViewController];
  v6 = [v49 view];
  v51 = [(PUViewControllerTransition *)self containerView];
  [(PUViewControllerTransition *)self finalToViewFrame];
  v48 = v3;
  [v3 setFrame:?];
  [v51 insertSubview:v3 belowSubview:v6];
  [v3 layoutIfNeeded];
  v7 = [(PUPhotosSharingTransition *)self photosSharingTransitionContext];
  v8 = [v7 keyAssetIndexPath];
  v46 = v7;
  v9 = [v7 assetCollectionsDataSource];
  v43 = [v5 superview];
  v10 = objc_alloc(MEMORY[0x1E69DD250]);
  v44 = [v10 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v43 insertSubview:v44 aboveSubview:v5];
  v11 = [(PUPhotosSharingTransition *)self delegate];
  v47 = [v11 photosSharingTransition:self viewForTransitionWithAssetCollectionsDataSource:v9];

  [v47 insertSubview:v5 aboveSubview:v6];
  v12 = [v4 transitionCollectionView];
  v13 = [MEMORY[0x1E69DC888] clearColor];
  [v12 setBackgroundColor:v13];

  v14 = [v6 layer];
  [v14 setAllowsGroupOpacity:0];

  v15 = [(PUPhotosSharingTransition *)self delegate];
  v16 = [v15 photosSharingTransition:self layoutForKeyAssetIndexPath:v8 inAssetCollectionsDataSource:v9];

  v45 = v16;
  [(PUPhotosSharingTransition *)self _setTransitionLayout:v16];
  [v4 setPhotosSharingTransitionContext:v7];
  v17 = [v4 embeddedActivityView];
  [v4 embeddedActivityViewFrameWhenShowing:0];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  [v51 addSubview:v17];
  v26 = [(PUPhotosSharingTransition *)self delegate];
  [v26 photosSharingTransition:self setVisibility:0 forKeyAssetIndexPath:v8 inAssetCollectionsDataSource:v9];

  [v4 setPhotosSharingTransitionLayout:v16 animated:1];
  v27 = [v9 assetCollectionsFetchResult];
  v28 = [v27 photoLibrary];

  v29 = [v28 px_beginPausingChangesWithTimeout:@"PUPhotosSharingTransition-Dismiss" identifier:*MEMORY[0x1E69C4138]];
  v42 = MEMORY[0x1E69DD250];
  [(PUViewControllerTransition *)self duration];
  v31 = v30;
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __53__PUPhotosSharingTransition_animateDismissTransition__block_invoke;
  v62[3] = &unk_1E7B7CED8;
  v62[4] = self;
  v63 = v6;
  v64 = v17;
  v65 = v19;
  v66 = v21;
  v67 = v23;
  v68 = v25;
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __53__PUPhotosSharingTransition_animateDismissTransition__block_invoke_2;
  v52[3] = &unk_1E7B7CF28;
  v52[4] = self;
  v53 = v8;
  v54 = v9;
  v55 = v43;
  v56 = v5;
  v57 = v44;
  v58 = v64;
  v59 = v4;
  v60 = v28;
  v61 = v29;
  v41 = v29;
  v40 = v28;
  v32 = v4;
  v33 = v64;
  v34 = v44;
  v35 = v5;
  v36 = v43;
  v37 = v9;
  v38 = v8;
  v39 = v6;
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
  v65 = [(PUViewControllerTransition *)self toViewController];
  v3 = [v65 view];
  v4 = [(PUPhotosSharingTransition *)self sharingTransitionViewController];
  v5 = [v4 view];
  v64 = [(PUViewControllerTransition *)self fromViewController];
  v59 = [v64 view];
  v6 = [(PUViewControllerTransition *)self containerView];
  [(PUViewControllerTransition *)self finalToViewFrame];
  [v3 setFrame:?];
  v56 = v6;
  [v6 insertSubview:v3 aboveSubview:v59];
  v7 = [v3 layer];
  v57 = [v7 allowsGroupOpacity];

  v8 = [v3 layer];
  [v8 setAllowsGroupOpacity:0];

  [v3 setAlpha:0.0];
  v9 = [(PUPhotosSharingTransition *)self photosSharingTransitionContext];
  v10 = [v9 keyAssetIndexPath];
  v63 = v9;
  v11 = [v9 assetCollectionsDataSource];
  v12 = [(PUPhotosSharingTransition *)self delegate];
  v62 = [v12 photosSharingTransition:self layoutForKeyAssetIndexPath:v10 inAssetCollectionsDataSource:v11];

  [(PUPhotosSharingTransition *)self _setTransitionLayout:v62];
  [v4 setPhotosSharingTransitionContext:v9];
  [v4 setPhotosSharingTransitionLayout:v62 animated:0];
  v13 = [(PUPhotosSharingTransition *)self delegate];
  [v13 photosSharingTransition:self contentOffsetForKeyAssetIndexPath:v10 inAssetCollectionsDataSource:v11];
  v15 = v14;
  v17 = v16;

  v18 = [v4 transitionCollectionView];
  [v18 setContentOffset:{v15, v17}];

  [v3 layoutIfNeeded];
  v19 = [v5 superview];
  v20 = objc_alloc(MEMORY[0x1E69DD250]);
  v54 = v5;
  v55 = [v20 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v21 = v19;
  [v19 insertSubview:v55 aboveSubview:v5];
  v22 = [(PUPhotosSharingTransition *)self delegate];
  v61 = [v22 photosSharingTransition:self viewForTransitionWithAssetCollectionsDataSource:v11];

  [v61 addSubview:v5];
  v23 = [v4 transitionCollectionView];
  v52 = [v23 backgroundColor];

  v24 = [v4 transitionCollectionView];
  v25 = [MEMORY[0x1E69DC888] clearColor];
  [v24 setBackgroundColor:v25];

  v26 = [v4 embeddedActivityView];
  [v4 embeddedActivityViewFrameWhenShowing:0];
  [v26 setFrame:?];
  [v4 embeddedActivityViewFrameWhenShowing:1];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  [v6 addSubview:v26];
  v35 = [(PUPhotosSharingTransition *)self delegate];
  [v35 photosSharingTransition:self setVisibility:0 forKeyAssetIndexPath:v10 inAssetCollectionsDataSource:v11];

  [v4 setPhotosSharingTransitionLayout:0 animated:1];
  v49 = v11;
  v36 = [v11 assetCollectionsFetchResult];
  v37 = [v36 photoLibrary];

  v38 = [v37 px_beginPausingChangesWithTimeout:@"PUPhotosSharingTransition-Present" identifier:*MEMORY[0x1E69C4138]];
  v50 = MEMORY[0x1E69DD250];
  [(PUViewControllerTransition *)self duration];
  v40 = v39;
  v80[0] = MEMORY[0x1E69E9820];
  v80[1] = 3221225472;
  v80[2] = __53__PUPhotosSharingTransition_animatePresentTransition__block_invoke;
  v80[3] = &unk_1E7B7CED8;
  v80[4] = self;
  v81 = v3;
  v82 = v26;
  v83 = v28;
  v84 = v30;
  v85 = v32;
  v86 = v34;
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __53__PUPhotosSharingTransition_animatePresentTransition__block_invoke_2;
  v66[3] = &unk_1E7B7CF00;
  v66[4] = self;
  v67 = v10;
  v68 = v11;
  v69 = v81;
  v79 = v57;
  v70 = v21;
  v71 = v54;
  v72 = v55;
  v73 = v82;
  v74 = v4;
  v75 = v52;
  v76 = v59;
  v77 = v37;
  v78 = v38;
  v58 = v38;
  v51 = v37;
  v60 = v59;
  v41 = v52;
  v53 = v4;
  v42 = v82;
  v43 = v55;
  v44 = v54;
  v45 = v21;
  v46 = v81;
  v47 = v49;
  v48 = v10;
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