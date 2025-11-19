@interface PUOneUpPhotosSharingTransition
- (PUOneUpAssetTransitionViewController)presentingViewController;
- (PUOneUpPhotosSharingTransitionDelegate)delegate;
- (PUOneUpPhotosSharingTransitionViewController)sharingTransitionViewController;
- (void)animateDismissTransition;
- (void)animatePresentTransition;
@end

@implementation PUOneUpPhotosSharingTransition

- (PUOneUpPhotosSharingTransitionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PUOneUpAssetTransitionViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

- (PUOneUpPhotosSharingTransitionViewController)sharingTransitionViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_sharingTransitionViewController);

  return WeakRetained;
}

- (void)animateDismissTransition
{
  v30 = [(PUViewControllerTransition *)self toViewController];
  v3 = [v30 view];
  v4 = [(PUOneUpPhotosSharingTransition *)self sharingTransitionViewController];
  v5 = [v4 view];
  v29 = [(PUViewControllerTransition *)self fromViewController];
  v6 = [v29 view];
  v28 = [(PUViewControllerTransition *)self containerView];
  v7 = [(PUOneUpPhotosSharingTransition *)self presentingViewController];
  [v3 layoutIfNeeded];
  [(PUViewControllerTransition *)self finalToViewFrame];
  [v3 setFrame:?];
  [v28 insertSubview:v3 aboveSubview:v6];
  v8 = [v6 backgroundColor];
  [v28 setBackgroundColor:v8];

  v9 = [(PUOneUpPhotosSharingTransition *)self oneUpPhotosSharingTransitionContext];
  v10 = [v9 currentAssetReference];
  v11 = [v4 transitionCollectionView];
  v12 = [MEMORY[0x1E69DC888] clearColor];
  [v11 setBackgroundColor:v12];

  v13 = [v6 layer];
  [v13 setAllowsGroupOpacity:0];

  v14 = [(PUOneUpPhotosSharingTransition *)self delegate];
  v15 = [v14 photosSharingTransition:self layoutForAssetReference:v10];

  [(PUOneUpPhotosSharingTransition *)self _setTransitionLayout:v15];
  [v4 setOneUpPhotosSharingTransitionContext:v9];
  v16 = [v4 embeddedActivityView];
  [v4 embeddedActivityViewFrameWhenShowing:0];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __58__PUOneUpPhotosSharingTransition_animateDismissTransition__block_invoke;
  v31[3] = &unk_1E7B79C90;
  v31[4] = self;
  v32 = v16;
  v39 = v17;
  v40 = v18;
  v41 = v19;
  v42 = v20;
  v33 = v4;
  v34 = v15;
  v35 = v10;
  v36 = v6;
  v37 = v7;
  v38 = v5;
  v21 = v5;
  v22 = v7;
  v23 = v6;
  v24 = v10;
  v25 = v15;
  v26 = v4;
  v27 = v16;
  [v26 oneUpAssetTransition:self requestTransitionContextWithCompletion:v31];
}

void __58__PUOneUpPhotosSharingTransition_animateDismissTransition__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 containerView];
  v6 = [v4 oneUpTransitionContextWithContextWithContainerView:v5];

  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __58__PUOneUpPhotosSharingTransition_animateDismissTransition__block_invoke_2;
  v40[3] = &unk_1E7B7FF20;
  v41 = *(a1 + 40);
  v7 = *(a1 + 112);
  v42 = *(a1 + 96);
  v43 = v7;
  v8 = [v6 oneUpTransitionContextWithAnimationBlock:v40];

  [*(a1 + 48) setPhotosSharingTransitionLayout:*(a1 + 56) animated:1];
  v9 = _PhotoLibraryForAssetReference(*(a1 + 64));
  v10 = [v9 px_beginPausingChangesWithTimeout:@"PUOneUpPhotosSharingTransition-Dismiss" identifier:*MEMORY[0x1E69C4138]];
  v11 = [*(a1 + 32) delegate];
  v12 = [v11 viewToHideWhilePresentingWithTransition:*(a1 + 32)];

  [v12 setAlpha:0.0];
  v13 = MEMORY[0x1E69DD250];
  [*(a1 + 32) duration];
  v15 = v14 * 0.5;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __58__PUOneUpPhotosSharingTransition_animateDismissTransition__block_invoke_3;
  v38[3] = &unk_1E7B80DD0;
  v39 = *(a1 + 72);
  [v13 animateWithDuration:v38 animations:v15];
  v16 = MEMORY[0x1E69DD250];
  [*(a1 + 32) duration];
  v18 = v17 * 0.5;
  [*(a1 + 32) duration];
  v20 = v19 * 0.5;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __58__PUOneUpPhotosSharingTransition_animateDismissTransition__block_invoke_4;
  v36[3] = &unk_1E7B80DD0;
  v37 = v12;
  v21 = v12;
  [v16 animateWithDuration:0 delay:v36 options:0 animations:v18 completion:v20];
  v22 = *(a1 + 80);
  v23 = *(a1 + 32);
  [v23 duration];
  v25 = v24;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __58__PUOneUpPhotosSharingTransition_animateDismissTransition__block_invoke_5;
  v29[3] = &unk_1E7B79C68;
  v30 = *(a1 + 88);
  v31 = *(a1 + 40);
  v32 = *(a1 + 48);
  v33 = v9;
  v26 = *(a1 + 32);
  v34 = v10;
  v35 = v26;
  v27 = v10;
  v28 = v9;
  [v22 oneUpAssetTransition:v23 animateTransitionWithContext:v8 duration:v29 completion:v25];
}

uint64_t __58__PUOneUpPhotosSharingTransition_animateDismissTransition__block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) addSubview:*(a1 + 40)];
  [*(a1 + 48) setOneUpPhotosSharingTransitionContext:0];
  [*(a1 + 56) px_endPausingChanges:*(a1 + 64)];
  v2 = [*(a1 + 72) transitionContext];
  v3 = [v2 transitionWasCancelled];

  v4 = *(a1 + 72);

  return [v4 completeTransition:v3 ^ 1u];
}

- (void)animatePresentTransition
{
  v4 = [(PUOneUpPhotosSharingTransition *)self presentingViewController];
  v5 = [(PUViewControllerTransition *)self fromViewController];
  v6 = [(PUOneUpPhotosSharingTransition *)self sharingTransitionViewController];
  v7 = [(PUViewControllerTransition *)self toViewController];
  if (([v4 conformsToProtocol:&unk_1F2BE7160] & 1) == 0)
  {
    v53 = [MEMORY[0x1E696AAA8] currentHandler];
    [v53 handleFailureInMethod:a2 object:self file:@"PUOneUpPhotosSharingTransition.m" lineNumber:51 description:{@"%@ (fromViewController) isn't conforming to PUOneUpAssetTransitionViewController", v5}];
  }

  if (([v6 conformsToProtocol:&unk_1F2BE7160] & 1) == 0)
  {
    v54 = [MEMORY[0x1E696AAA8] currentHandler];
    [v54 handleFailureInMethod:a2 object:self file:@"PUOneUpPhotosSharingTransition.m" lineNumber:52 description:{@"%@ (toViewController) isn't conforming to PUOneUpAssetTransitionViewController", v7}];
  }

  v74 = v7;
  v8 = [v7 view];
  v9 = [v6 view];
  v10 = [v5 view];
  v75 = [(PUViewControllerTransition *)self containerView];
  v76 = v5;
  [(PUViewControllerTransition *)self finalToViewFrame];
  [v8 setFrame:?];
  v67 = v10;
  [v75 insertSubview:v8 aboveSubview:v10];
  v11 = [v8 layer];
  v63 = [v11 allowsGroupOpacity];

  v12 = [v8 layer];
  [v12 setAllowsGroupOpacity:0];

  [v8 setAlpha:0.0];
  v13 = [(PUOneUpPhotosSharingTransition *)self oneUpPhotosSharingTransitionContext];
  v14 = [v13 currentAssetReference];
  v15 = [(PUOneUpPhotosSharingTransition *)self delegate];
  v16 = [v15 photosSharingTransition:self layoutForAssetReference:v14];

  [(PUOneUpPhotosSharingTransition *)self _setTransitionLayout:v16];
  v73 = v13;
  [v6 setOneUpPhotosSharingTransitionContext:v13];
  v72 = v16;
  [v6 setPhotosSharingTransitionLayout:v16 animated:0];
  v17 = [(PUOneUpPhotosSharingTransition *)self delegate];
  [v17 photosSharingTransition:self contentOffsetForAssetReference:v14];
  v19 = v18;
  v21 = v20;

  v22 = [v6 transitionCollectionView];
  [v22 setContentOffset:{v19, v21}];

  v77 = v4;
  v71 = [v4 createAssetTransitionInfo];
  [v6 setOneUpPhotosSharingTransitionInfo:?];
  [v8 layoutIfNeeded];
  v23 = [v9 superview];
  v24 = objc_alloc(MEMORY[0x1E69DD250]);
  v59 = [v24 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v61 = v23;
  [v23 insertSubview:? aboveSubview:?];
  v25 = [(PUOneUpPhotosSharingTransition *)self delegate];
  v26 = [v25 photosSharingTransitionTransitioningView:self];

  v69 = v26;
  v70 = v9;
  [v26 addSubview:v9];
  v27 = [v6 transitionCollectionView];
  v58 = [v27 backgroundColor];

  v28 = [v6 transitionCollectionView];
  v29 = [MEMORY[0x1E69DC888] clearColor];
  [v28 setBackgroundColor:v29];

  v30 = [v6 embeddedActivityView];
  [v6 embeddedActivityViewFrameWhenShowing:0];
  [v30 setFrame:?];
  [v6 embeddedActivityViewFrameWhenShowing:1];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  [v75 addSubview:v30];
  v39 = [(PUOneUpPhotosSharingTransition *)self delegate];
  [v39 photosSharingTransition:self setVisibility:0 forAssetReference:v14];

  v65 = v14;
  v40 = _PhotoLibraryForAssetReference(v14);
  v56 = [v40 px_beginPausingChangesWithTimeout:@"PUOneUpPhotosSharingTransition-Present" identifier:*MEMORY[0x1E69C4138]];
  [v6 setPhotosSharingTransitionLayout:0 animated:1];
  v41 = [(PUOneUpPhotosSharingTransition *)self delegate];
  v42 = [v41 viewToHideWhilePresentingWithTransition:self];

  objc_opt_class();
  v43 = 0;
  if (objc_opt_isKindOfClass())
  {
    v43 = v76;
  }

  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __58__PUOneUpPhotosSharingTransition_animatePresentTransition__block_invoke;
  v78[3] = &unk_1E7B79C40;
  v79 = v75;
  v80 = v77;
  v81 = v6;
  v82 = self;
  v83 = v8;
  v84 = v70;
  v85 = v42;
  v86 = v43;
  v87 = v30;
  v95 = v32;
  v96 = v34;
  v97 = v36;
  v98 = v38;
  v55 = v42;
  v99 = v63;
  v88 = v14;
  v89 = v61;
  v90 = v59;
  v91 = v58;
  v92 = v67;
  v93 = v40;
  v94 = v56;
  v64 = v56;
  v57 = v40;
  v44 = v67;
  v68 = v58;
  v45 = v59;
  v62 = v61;
  v66 = v65;
  v60 = v30;
  v46 = v43;
  v47 = v55;
  v48 = v70;
  v49 = v8;
  v50 = v6;
  v51 = v77;
  v52 = v75;
  [v51 oneUpAssetTransition:self requestTransitionContextWithCompletion:v78];
}

void __58__PUOneUpPhotosSharingTransition_animatePresentTransition__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 snapshotView];
  v4 = *(a1 + 32);
  [v3 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [*(a1 + 40) view];
  [v4 convertRect:v13 fromView:{v6, v8, v10, v12}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [v3 setFrame:{v15, v17, v19, v21}];
  [*(a1 + 32) addSubview:v3];
  [*(a1 + 48) oneUpAssetTransitionAssetFinalFrame:*(a1 + 56)];
  [*(a1 + 64) convertRect:*(a1 + 72) fromView:?];
  [*(a1 + 32) convertRect:*(a1 + 64) fromView:?];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  [*(a1 + 56) duration];
  v31 = v30 * 0.5;
  v32 = MEMORY[0x1E69DD250];
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __58__PUOneUpPhotosSharingTransition_animatePresentTransition__block_invoke_2;
  v69[3] = &unk_1E7B80C38;
  v70 = *(a1 + 80);
  v71 = *(a1 + 88);
  [v32 animateWithDuration:v69 animations:v31];
  [*(a1 + 88) _setToolbarHidden:1 edge:15 duration:v31];
  v33 = MEMORY[0x1E69DD250];
  [*(a1 + 56) duration];
  v35 = v34 * 0.5;
  [*(a1 + 56) duration];
  v37 = v36 * 0.5;
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __58__PUOneUpPhotosSharingTransition_animatePresentTransition__block_invoke_3;
  v67[3] = &unk_1E7B80DD0;
  v68 = *(a1 + 64);
  [v33 animateWithDuration:0 delay:v67 options:0 animations:v35 completion:v37];
  v38 = MEMORY[0x1E69DD250];
  [*(a1 + 56) duration];
  v40 = v39;
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __58__PUOneUpPhotosSharingTransition_animatePresentTransition__block_invoke_4;
  v58[3] = &unk_1E7B79BF0;
  v58[4] = *(a1 + 56);
  v59 = *(a1 + 96);
  v41 = *(a1 + 176);
  v61 = *(a1 + 160);
  v62 = v41;
  v60 = v3;
  v63 = v23;
  v64 = v25;
  v65 = v27;
  v66 = v29;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __58__PUOneUpPhotosSharingTransition_animatePresentTransition__block_invoke_5;
  v43[3] = &unk_1E7B79C18;
  v43[4] = *(a1 + 56);
  v44 = *(a1 + 104);
  v45 = *(a1 + 80);
  v46 = *(a1 + 64);
  v57 = *(a1 + 192);
  v47 = *(a1 + 112);
  v48 = *(a1 + 72);
  v49 = *(a1 + 120);
  v50 = *(a1 + 96);
  v51 = *(a1 + 48);
  v52 = *(a1 + 128);
  v53 = v60;
  v54 = *(a1 + 136);
  v55 = *(a1 + 144);
  v56 = *(a1 + 152);
  v42 = v60;
  [v38 animateWithDuration:v58 animations:v43 completion:v40];
}

void __58__PUOneUpPhotosSharingTransition_animatePresentTransition__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = [*(a1 + 40) navigationBar];
  [v2 setAlpha:0.0];
}

uint64_t __58__PUOneUpPhotosSharingTransition_animatePresentTransition__block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 photosSharingTransitionWillAnimatePresentation:*(a1 + 32)];

  [*(a1 + 40) setFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  [*(a1 + 48) setFrame:{*(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112)}];
  v3 = *(a1 + 48);

  return [v3 setAlpha:0.0];
}

void __58__PUOneUpPhotosSharingTransition_animatePresentTransition__block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 photosSharingTransition:*(a1 + 32) setVisibility:1 forAssetReference:*(a1 + 40)];

  [*(a1 + 48) setAlpha:1.0];
  v3 = [*(a1 + 56) layer];
  [v3 setAllowsGroupOpacity:*(a1 + 144)];

  v4 = +[PUInterfaceManager currentTheme];
  v8 = [v4 photoCollectionViewBackgroundColor];

  [*(a1 + 56) setBackgroundColor:v8];
  [*(a1 + 64) insertSubview:*(a1 + 72) aboveSubview:*(a1 + 80)];
  [*(a1 + 80) removeFromSuperview];
  [*(a1 + 72) addSubview:*(a1 + 88)];
  v5 = [*(a1 + 96) transitionCollectionView];
  [v5 setBackgroundColor:*(a1 + 104)];

  [*(a1 + 112) removeFromSuperview];
  [*(a1 + 120) removeFromSuperview];
  [*(a1 + 96) setOneUpPhotosSharingTransitionContext:0];
  [*(a1 + 128) px_endPausingChanges:*(a1 + 136)];
  v6 = [*(a1 + 32) transitionContext];
  v7 = [v6 transitionWasCancelled];

  [*(a1 + 32) completeTransition:v7 ^ 1u];
}

@end