@interface PUOneUpSharingAnimationController
+ (id)new;
- (PUOneUpAssetTransitionViewController)presentingViewController;
- (PUOneUpSharingAnimationController)init;
- (PUOneUpSharingAnimationController)initWithTransitionContext:(id)context presentingViewController:(id)controller;
- (PUOneUpSharingAnimationControllerDelegate)delegate;
- (double)transitionDuration:(id)duration;
- (id)interruptibleAnimatorForTransition:(id)transition;
- (void)_configurePhotoView:(id)view withContentHelper:(id)helper;
- (void)_installTransitioningBadgeViewsForAssetTransitionInfo:(id)info inTransitioningView:(id)view;
@end

@implementation PUOneUpSharingAnimationController

- (PUOneUpSharingAnimationControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PUOneUpAssetTransitionViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

- (void)_configurePhotoView:(id)view withContentHelper:(id)helper
{
  viewCopy = view;
  helperCopy = helper;
  v7 = helperCopy;
  if (helperCopy)
  {
    [helperCopy badgeInfo];
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  contentHelper = [viewCopy contentHelper];
  v32 = v38;
  v33 = v39;
  [contentHelper setBadgeInfo:&v32];

  badgeStyle = [v7 badgeStyle];
  contentHelper2 = [viewCopy contentHelper];
  [contentHelper2 setBadgeStyle:badgeStyle];

  [v7 customPaddingForBadgeElements];
  v12 = v11;
  v14 = v13;
  contentHelper3 = [viewCopy contentHelper];
  [contentHelper3 setCustomPaddingForBadgeElements:{v12, v14}];

  photoImage = [v7 photoImage];
  contentHelper4 = [viewCopy contentHelper];
  [contentHelper4 setPhotoImage:photoImage];

  placeHolderImage = [v7 placeHolderImage];
  contentHelper5 = [viewCopy contentHelper];
  [contentHelper5 setPlaceHolderImage:placeHolderImage];

  [v7 photoSize];
  v21 = v20;
  v23 = v22;
  contentHelper6 = [viewCopy contentHelper];
  [contentHelper6 setPhotoSize:{v21, v23}];

  fillMode = [v7 fillMode];
  contentHelper7 = [viewCopy contentHelper];
  [contentHelper7 setFillMode:fillMode];

  if (v7)
  {
    [v7 imageTransform];
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
  }

  contentHelper8 = [viewCopy contentHelper];
  v32 = v35;
  v33 = v36;
  v34 = v37;
  [contentHelper8 setImageTransform:&v32];

  photoDecoration = [v7 photoDecoration];
  contentHelper9 = [viewCopy contentHelper];
  [contentHelper9 setPhotoDecoration:photoDecoration];

  isTextBannerVisible = [v7 isTextBannerVisible];
  contentHelper10 = [viewCopy contentHelper];
  [contentHelper10 setTextBannerVisible:isTextBannerVisible];

  [viewCopy layoutIfNeeded];
}

- (void)_installTransitioningBadgeViewsForAssetTransitionInfo:(id)info inTransitioningView:(id)view
{
  v42 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  viewCopy = view;
  [infoCopy badgeTransitionInfos];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v40 = 0u;
  v7 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v38;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v37 + 1) + 8 * i);
        snapshotView = [v11 snapshotView];
        [viewCopy addSubview:snapshotView];
        [v11 frame];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;
        [infoCopy frame];
        v22 = v21;
        v24 = v23;
        [viewCopy frame];
        if (v22 == v26 && v24 == v25)
        {
          v27 = v14;
        }

        else
        {
          badgesCorner = [v11 badgesCorner];
          [v11 badgesOffset];
          v27 = v29;
          v31 = v30;
          traitCollection = [viewCopy traitCollection];
          v33 = [traitCollection layoutDirection] == 1;

          if (((badgesCorner & 0xA) != 0) != v33)
          {
            [viewCopy frame];
            v34 = CGRectGetWidth(v43) - v27;
            v44.origin.x = v14;
            v44.origin.y = v16;
            v44.size.width = v18;
            v44.size.height = v20;
            v27 = v34 - CGRectGetWidth(v44);
          }

          if ((badgesCorner & 0xC) != 0)
          {
            [viewCopy frame];
            v35 = CGRectGetHeight(v45) - v31;
            v46.origin.x = v27;
            v46.origin.y = v16;
            v46.size.width = v18;
            v46.size.height = v20;
            v16 = v35 - CGRectGetHeight(v46);
          }

          else
          {
            v16 = v31;
          }
        }

        [snapshotView setFrame:{v27, v16, v18, v20}];
        [snapshotView setAlpha:0.0];
      }

      v8 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v8);
  }
}

- (id)interruptibleAnimatorForTransition:(id)transition
{
  transitionCopy = transition;
  v99.receiver = self;
  v99.super_class = PUOneUpSharingAnimationController;
  v6 = [(_UISheetAnimationController *)&v99 interruptibleAnimatorForTransition:transitionCopy];
  if (!self->_interruptibleAnimatorForTransitionWasCalled)
  {
    self->_interruptibleAnimatorForTransitionWasCalled = 1;
    v7 = [transitionCopy viewControllerForKey:*MEMORY[0x1E69DE778]];
    v47 = v6;
    v36 = v7;
    if (_os_feature_enabled_impl())
    {
      photosCarouselViewController = 0;
    }

    else
    {
      photosCarouselViewController = [v7 photosCarouselViewController];
      if (photosCarouselViewController)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v33 = objc_opt_class();
          v34 = NSStringFromClass(v33);
          px_descriptionForAssertionMessage = [photosCarouselViewController px_descriptionForAssertionMessage];
          [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpSharingAnimationController.m" lineNumber:75 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"activityViewController.photosCarouselViewController", v34, px_descriptionForAssertionMessage}];
        }
      }
    }

    containerView = [transitionCopy containerView];
    view = [photosCarouselViewController view];
    mainCollectionView = [photosCarouselViewController mainCollectionView];
    oneUpTransitionContext = [(PUOneUpSharingAnimationController *)self oneUpTransitionContext];
    currentAssetReference = [oneUpTransitionContext currentAssetReference];

    oneUpTransitionContext2 = [(PUOneUpSharingAnimationController *)self oneUpTransitionContext];
    [photosCarouselViewController setOneUpPhotosSharingTransitionContext:oneUpTransitionContext2];

    delegate = [(PUOneUpSharingAnimationController *)self delegate];
    [delegate oneUpSharingAnimationController:self setVisibility:0 forAssetReference:currentAssetReference];

    asset = [currentAssetReference asset];
    objc_opt_class();
    v37 = transitionCopy;
    v41 = currentAssetReference;
    if (objc_opt_isKindOfClass())
    {
      asset2 = [currentAssetReference asset];
      photoLibrary = [asset2 photoLibrary];
    }

    else
    {
      photoLibrary = 0;
    }

    v39 = photoLibrary;
    v38 = [photoLibrary px_beginPausingChangesWithTimeout:@"PUOneUpSharingAnimationController" identifier:*MEMORY[0x1E69C4138]];
    presentingViewController = [(PUOneUpSharingAnimationController *)self presentingViewController];
    navigationController = [presentingViewController navigationController];
    toolbar = [navigationController toolbar];

    v97[0] = 0;
    v97[1] = v97;
    v97[2] = 0x3032000000;
    v97[3] = __Block_byref_object_copy__33816;
    v97[4] = __Block_byref_object_dispose__33817;
    v98 = 0;
    v95[0] = 0;
    v95[1] = v95;
    v95[2] = 0x3032000000;
    v95[3] = __Block_byref_object_copy__33816;
    v95[4] = __Block_byref_object_dispose__33817;
    v96 = 0;
    v93[0] = 0;
    v93[1] = v93;
    v93[2] = 0x3032000000;
    v93[3] = __Block_byref_object_copy__33816;
    v93[4] = __Block_byref_object_dispose__33817;
    v94 = 0;
    v91[0] = 0;
    v91[1] = v91;
    v91[2] = 0x3032000000;
    v91[3] = __Block_byref_object_copy__33816;
    v91[4] = __Block_byref_object_dispose__33817;
    v92 = 0;
    v89[0] = 0;
    v89[1] = v89;
    v89[2] = 0x3032000000;
    v89[3] = __Block_byref_object_copy__33816;
    v89[4] = __Block_byref_object_dispose__33817;
    v90 = 0;
    v87[0] = 0;
    v87[1] = v87;
    v87[2] = 0x3032000000;
    v87[3] = __Block_byref_object_copy__33816;
    v87[4] = __Block_byref_object_dispose__33817;
    array = [MEMORY[0x1E695DF70] array];
    v85[0] = 0;
    v85[1] = v85;
    v85[2] = 0x3032000000;
    v85[3] = __Block_byref_object_copy__33816;
    v85[4] = __Block_byref_object_dispose__33817;
    v86 = 0;
    v18 = MEMORY[0x1E69DD250];
    v73[0] = MEMORY[0x1E69E9820];
    v73[1] = 3221225472;
    v73[2] = __72__PUOneUpSharingAnimationController_interruptibleAnimatorForTransition___block_invoke;
    v73[3] = &unk_1E7B77CF0;
    v73[4] = self;
    v19 = containerView;
    v74 = v19;
    v78 = v97;
    v79 = v85;
    v20 = photosCarouselViewController;
    v75 = v20;
    v80 = v93;
    v81 = v91;
    v82 = v95;
    v83 = v89;
    v21 = view;
    v76 = v21;
    v84 = v87;
    v22 = mainCollectionView;
    v77 = v22;
    [v18 performWithoutAnimation:v73];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__PUOneUpSharingAnimationController_interruptibleAnimatorForTransition___block_invoke_5;
    block[3] = &unk_1E7B77D88;
    v23 = v47;
    v68 = v87;
    v69 = v89;
    v65 = v23;
    selfCopy = self;
    v46 = v41;
    v67 = v46;
    v72 = a2;
    v70 = v95;
    v71 = v97;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __72__PUOneUpSharingAnimationController_interruptibleAnimatorForTransition___block_invoke_9;
    v58[3] = &unk_1E7B77DB0;
    v44 = v19;
    v59 = v44;
    v62 = v95;
    v24 = v21;
    v60 = v24;
    v63 = v97;
    v25 = toolbar;
    v61 = v25;
    [v23 addAnimations:v58];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __72__PUOneUpSharingAnimationController_interruptibleAnimatorForTransition___block_invoke_10;
    v48[3] = &unk_1E7B77E28;
    v26 = v25;
    v49 = v26;
    v27 = v22;
    v50 = v27;
    v54 = v95;
    v55 = v87;
    v56 = v97;
    v28 = v20;
    v51 = v28;
    v57 = v89;
    v29 = v39;
    v52 = v29;
    v30 = v38;
    v53 = v30;
    [v23 addCompletion:v48];

    _Block_object_dispose(v85, 8);
    _Block_object_dispose(v87, 8);

    _Block_object_dispose(v89, 8);
    _Block_object_dispose(v91, 8);

    _Block_object_dispose(v93, 8);
    _Block_object_dispose(v95, 8);

    _Block_object_dispose(v97, 8);
    transitionCopy = v37;
    v6 = v47;
  }

  return v6;
}

void __72__PUOneUpSharingAnimationController_interruptibleAnimatorForTransition___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __72__PUOneUpSharingAnimationController_interruptibleAnimatorForTransition___block_invoke_2;
  v60[3] = &unk_1E7B77C78;
  v3 = *(a1 + 32);
  v61 = *(a1 + 40);
  v63 = *(a1 + 72);
  v62 = *(a1 + 48);
  v64 = *(a1 + 88);
  [v2 oneUpAssetTransition:v3 requestTransitionContextWithCompletion:v60 options:3];

  v4 = [*(a1 + 48) referenceAssetTransitionInfo];
  v5 = *(*(a1 + 104) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  [*(*(*(a1 + 104) + 8) + 40) frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = *(a1 + 32);
  v16 = *(*(*(a1 + 72) + 8) + 40);
  v17 = [*(*(*(a1 + 104) + 8) + 40) contentHelper];
  [v15 _configurePhotoView:v16 withContentHelper:v17];

  v18 = [*(*(*(a1 + 72) + 8) + 40) contentHelper];
  v19 = [v18 badgeContainerView];
  v20 = 0.0;
  [v19 setAlpha:0.0];

  v21 = [*(*(*(a1 + 80) + 8) + 40) snapshotView];
  v22 = [*(*(*(a1 + 72) + 8) + 40) contentHelper];
  [v22 setTransitionSnapshotView:v21];

  [*(a1 + 32) _installTransitioningBadgeViewsForAssetTransitionInfo:*(*(*(a1 + 104) + 8) + 40) inTransitioningView:*(*(*(a1 + 72) + 8) + 40)];
  v23 = [*(a1 + 48) adjacentVisibleAssetsTransitionInfos];
  v24 = *(*(a1 + 112) + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = v23;

  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__33816;
  v58 = __Block_byref_object_dispose__33817;
  v59 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__33816;
  v52 = __Block_byref_object_dispose__33817;
  v53 = 0;
  v26 = *(*(*(a1 + 112) + 8) + 40);
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __72__PUOneUpSharingAnimationController_interruptibleAnimatorForTransition___block_invoke_3;
  v47[3] = &unk_1E7B77CA0;
  v47[6] = v8;
  v47[7] = v10;
  v47[8] = v12;
  v47[9] = v14;
  v47[4] = &v54;
  v47[5] = &v48;
  [v26 enumerateObjectsUsingBlock:v47];
  v27 = v49[5];
  if (v27)
  {
    [v27 frame];
    v29 = v28;
    [*(a1 + 56) bounds];
    v20 = v30 - v29;
  }

  v31 = v55[5];
  if (v31)
  {
    [v31 frame];
    v34 = v32 + v33;
  }

  else
  {
    v34 = 0.0;
  }

  v35 = *(*(*(a1 + 112) + 8) + 40);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __72__PUOneUpSharingAnimationController_interruptibleAnimatorForTransition___block_invoke_4;
  v38[3] = &unk_1E7B77CC8;
  v41 = v8;
  v42 = v10;
  v43 = v12;
  v44 = v14;
  v45 = v34;
  v46 = v20;
  v38[4] = *(a1 + 32);
  v36 = *(a1 + 56);
  v37 = *(a1 + 120);
  v39 = v36;
  v40 = v37;
  [v35 enumerateObjectsUsingBlock:v38];
  [*(a1 + 64) setAlpha:0.0];

  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v54, 8);
}

void __72__PUOneUpSharingAnimationController_interruptibleAnimatorForTransition___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 timingParameters];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__PUOneUpSharingAnimationController_interruptibleAnimatorForTransition___block_invoke_6;
  aBlock[3] = &unk_1E7B77D18;
  v4 = *(a1 + 40);
  v39 = *(a1 + 64);
  aBlock[4] = v4;
  v32 = *(a1 + 48);
  v5 = v32;
  v38 = v32;
  v6 = _Block_copy(aBlock);
  v7 = [objc_alloc(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:532.84953 damping:46.16707 initialVelocity:{0.0, 0.0}];
  [v3 settlingDuration];
  v9 = v8;
  [v7 settlingDuration];
  v11 = v9 - v10;
  if (v11 < 0.0)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    v27 = *(a1 + 88);
    v28 = *(a1 + 40);
    [v7 settlingDuration];
    v30 = v29;
    [v3 settlingDuration];
    [v26 handleFailureInMethod:v27 object:v28 file:@"PUOneUpSharingAnimationController.m" lineNumber:223 description:{@"timingParametersForAdjacentAssetsAnimation settling duration:%f must be lower than the sheet settling duration:%f", v30, v31}];
  }

  v12 = MEMORY[0x1E69DD250];
  [v7 settlingDuration];
  v14 = v13;
  [v7 mass];
  v16 = v15;
  [v7 stiffness];
  v18 = v17;
  [v7 damping];
  [v12 _animateUsingSpringWithDuration:0 delay:v6 options:0 mass:v14 stiffness:v11 damping:v16 initialVelocity:v18 animations:v19 completion:0.0];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __72__PUOneUpSharingAnimationController_interruptibleAnimatorForTransition___block_invoke_7;
  v33[3] = &unk_1E7B77D60;
  v34 = *(a1 + 64);
  v20 = *(a1 + 80);
  v35 = *(a1 + 56);
  v36 = v20;
  v21 = _Block_copy(v33);
  [v3 settlingDuration];
  v23 = v22 * 0.25;
  v24 = MEMORY[0x1E69DD250];
  [v3 settlingDuration];
  [v24 animateWithDuration:0 delay:v21 options:0 animations:v25 - v23 completion:v23];
}

void __72__PUOneUpSharingAnimationController_interruptibleAnimatorForTransition___block_invoke_9(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  [*(*(*(a1 + 56) + 8) + 40) frame];
  [v2 convertRect:*(a1 + 40) fromView:?];
  [*(*(*(a1 + 64) + 8) + 40) setFrame:?];
  [*(*(*(a1 + 56) + 8) + 40) cornerRadius];
  v4 = v3;
  v5 = [*(*(*(a1 + 64) + 8) + 40) layer];
  [v5 setCornerRadius:v4];

  [*(*(*(a1 + 64) + 8) + 40) setClipsToBounds:1];
  [*(a1 + 48) setAlpha:0.0];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [*(*(*(a1 + 56) + 8) + 40) badgeTransitionInfos];
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
        v12 = [v11 snapshotView];
        [v11 frame];
        [v12 setFrame:?];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

void __72__PUOneUpSharingAnimationController_interruptibleAnimatorForTransition___block_invoke_10(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  [*(a1 + 40) setAlpha:1.0];
  v2 = [*(*(*(a1 + 72) + 8) + 40) asset];
  v3 = [v2 playbackStyle];

  if ((v3 & 0xFFFFFFFFFFFFFFFELL) == 4 || v3 == 2)
  {
    v5 = 0.200000003;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = MEMORY[0x1E69DD250];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72__PUOneUpSharingAnimationController_interruptibleAnimatorForTransition___block_invoke_11;
  v17[3] = &unk_1E7B77DD8;
  v18 = *(a1 + 80);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__PUOneUpSharingAnimationController_interruptibleAnimatorForTransition___block_invoke_12;
  v12[3] = &unk_1E7B77E00;
  v7 = *(a1 + 48);
  v8 = *(a1 + 72);
  v15 = *(a1 + 96);
  v16 = *(a1 + 80);
  v9 = *(a1 + 56);
  *&v10 = *(a1 + 64);
  *(&v10 + 1) = v8;
  *&v11 = v7;
  *(&v11 + 1) = v9;
  v13 = v11;
  v14 = v10;
  [v6 animateWithDuration:v17 animations:v12 completion:v5];
}

uint64_t __72__PUOneUpSharingAnimationController_interruptibleAnimatorForTransition___block_invoke_11(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) setAlpha:{0.0, v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return [*(*(*(a1 + 40) + 8) + 40) setAlpha:0.0];
}

uint64_t __72__PUOneUpSharingAnimationController_interruptibleAnimatorForTransition___block_invoke_12(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setOneUpPhotosSharingTransitionContext:0];
  [*(a1 + 32) setOneUpPhotosSharingTransitionInfo:0];
  [*(a1 + 32) setTrailingAssetTransitionInfo:0];
  [*(a1 + 32) setLeadingAssetTransitionInfo:0];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = [*(*(*(a1 + 56) + 8) + 40) badgeTransitionInfos];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v18 + 1) + 8 * v6) snapshotView];
        [v7 removeFromSuperview];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v4);
  }

  [*(*(*(a1 + 64) + 8) + 40) enumerateObjectsUsingBlock:&__block_literal_global_219_33822];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = *(*(*(a1 + 72) + 8) + 40);
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v14 + 1) + 8 * v12++) removeFromSuperview];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v10);
  }

  [*(*(*(a1 + 80) + 8) + 40) removeFromSuperview];
  return [*(a1 + 40) px_endPausingChanges:*(a1 + 48)];
}

void __72__PUOneUpSharingAnimationController_interruptibleAnimatorForTransition___block_invoke_13(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [a2 badgeTransitionInfos];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v8 + 1) + 8 * v6) snapshotView];
        [v7 removeFromSuperview];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void __72__PUOneUpSharingAnimationController_interruptibleAnimatorForTransition___block_invoke_6(uint64_t a1)
{
  if ([*(*(*(a1 + 48) + 8) + 40) count])
  {
    v2 = 0;
    do
    {
      v3 = [*(*(*(a1 + 56) + 8) + 40) objectAtIndexedSubscript:v2];
      v4 = [*(*(*(a1 + 48) + 8) + 40) objectAtIndexedSubscript:v2];
      [v3 frame];
      [v4 setFrame:?];

      ++v2;
    }

    while (v2 < [*(*(*(a1 + 48) + 8) + 40) count]);
  }

  v5 = [*(a1 + 32) delegate];
  [v5 oneUpSharingAnimationController:*(a1 + 32) setVisibility:1 forAssetReference:*(a1 + 40)];
}

void __72__PUOneUpSharingAnimationController_interruptibleAnimatorForTransition___block_invoke_7(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  [*(*(a1[4] + 8) + 40) enumerateObjectsUsingBlock:&__block_literal_global_33828];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = [*(*(a1[5] + 8) + 40) badgeTransitionInfos];
  v3 = [v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    do
    {
      v6 = 0;
      do
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v21 + 1) + 8 * v6) snapshotView];
        [v7 setAlpha:1.0];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v4);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = *(*(a1[6] + 8) + 40);
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v17 + 1) + 8 * v12) contentHelper];
        v14 = [v13 badgeContainerView];
        [v14 setAlpha:1.0];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v10);
  }

  v15 = [*(*(a1[7] + 8) + 40) contentHelper];
  v16 = [v15 badgeContainerView];
  [v16 setAlpha:1.0];
}

void __72__PUOneUpSharingAnimationController_interruptibleAnimatorForTransition___block_invoke_8(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [a2 badgeTransitionInfos];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v8 + 1) + 8 * v6) snapshotView];
        [v7 setAlpha:1.0];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void __72__PUOneUpSharingAnimationController_interruptibleAnimatorForTransition___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v35 = [v3 snapshotView];
  v4 = *(a1 + 32);
  [v35 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [v3 fromView];
  [v4 convertRect:v13 fromView:{v6, v8, v10, v12}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = [[PUPhotoView alloc] initWithFrame:v15, v17, v19, v21];
  v23 = *(*(a1 + 48) + 8);
  v24 = *(v23 + 40);
  *(v23 + 40) = v22;

  [*(a1 + 32) addSubview:*(*(*(a1 + 48) + 8) + 40)];
  v25 = [v3 transitionInfo];
  v26 = *(*(a1 + 56) + 8);
  v27 = *(v26 + 40);
  *(v26 + 40) = v25;

  v28 = [v3 transitionInfo];
  [*(a1 + 40) setOneUpPhotosSharingTransitionInfo:v28];

  v29 = [v3 trailingAssetTransitionInfo];
  v30 = *(*(a1 + 64) + 8);
  v31 = *(v30 + 40);
  *(v30 + 40) = v29;

  v32 = [v3 leadingAssetTransitionInfo];

  v33 = *(*(a1 + 72) + 8);
  v34 = *(v33 + 40);
  *(v33 + 40) = v32;

  [*(a1 + 40) setTrailingAssetTransitionInfo:*(*(*(a1 + 64) + 8) + 40)];
  [*(a1 + 40) setLeadingAssetTransitionInfo:*(*(*(a1 + 72) + 8) + 40)];
}

void __72__PUOneUpSharingAnimationController_interruptibleAnimatorForTransition___block_invoke_3(uint64_t a1, void *a2)
{
  v18 = a2;
  [v18 frame];
  if (v4 >= *(a1 + 48))
  {
    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 40);
    v8 = (v13 + 40);
    if (v14)
    {
      [v18 frame];
      v16 = v15;
      [*(*(*(a1 + 40) + 8) + 40) frame];
      if (v16 >= v17)
      {
        goto LABEL_10;
      }

      v5 = a1 + 32;
      goto LABEL_8;
    }

LABEL_9:
    objc_storeStrong(v8, a2);
    goto LABEL_10;
  }

  v6 = *(a1 + 32);
  v5 = a1 + 32;
  v7 = *(v6 + 8);
  v9 = *(v7 + 40);
  v8 = (v7 + 40);
  if (!v9)
  {
    goto LABEL_9;
  }

  [v18 frame];
  v11 = v10;
  [*(*(*v5 + 8) + 40) frame];
  if (v11 > v12)
  {
LABEL_8:
    v8 = (*(*v5 + 8) + 40);
    goto LABEL_9;
  }

LABEL_10:
}

void __72__PUOneUpSharingAnimationController_interruptibleAnimatorForTransition___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 frame];
  if (v4 >= *(a1 + 56))
  {
    v8 = v4 + *(a1 + 96);
  }

  else
  {
    v8 = v4 - *(a1 + 88);
  }

  v16 = [[PUPhotoView alloc] initWithFrame:v8, v5, v6, v7];
  v9 = *(a1 + 32);
  v10 = [v3 contentHelper];
  [v9 _configurePhotoView:v16 withContentHelper:v10];

  [v3 cornerRadius];
  v12 = v11;
  v13 = [(PUPhotoView *)v16 layer];
  [v13 setCornerRadius:v12];

  [(PUPhotoView *)v16 setClipsToBounds:1];
  v14 = [(PUPhotoView *)v16 contentHelper];
  v15 = [v14 badgeContainerView];
  [v15 setAlpha:0.0];

  [*(a1 + 40) addSubview:v16];
  [*(*(*(a1 + 48) + 8) + 40) addObject:v16];
  [*(a1 + 32) _installTransitioningBadgeViewsForAssetTransitionInfo:v3 inTransitioningView:v16];
}

- (double)transitionDuration:(id)duration
{
  v3 = ([*MEMORY[0x1E69DDA98] activeInterfaceOrientation] - 3) < 2;
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  result = dbl_1B3D0CEB0[v3];
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 0.666999996;
  }

  return result;
}

- (PUOneUpSharingAnimationController)initWithTransitionContext:(id)context presentingViewController:(id)controller
{
  contextCopy = context;
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = PUOneUpSharingAnimationController;
  v9 = [(_UISheetAnimationController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_oneUpTransitionContext, context);
    objc_storeWeak(&v10->_presentingViewController, controllerCopy);
  }

  return v10;
}

- (PUOneUpSharingAnimationController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpSharingAnimationController.m" lineNumber:33 description:{@"%s is not available as initializer", "-[PUOneUpSharingAnimationController init]"}];

  abort();
}

+ (id)new
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpSharingAnimationController.m" lineNumber:37 description:{@"%s is not available as initializer", "+[PUOneUpSharingAnimationController new]"}];

  abort();
}

@end