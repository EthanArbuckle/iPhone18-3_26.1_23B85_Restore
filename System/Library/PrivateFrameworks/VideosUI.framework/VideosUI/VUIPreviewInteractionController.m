@interface VUIPreviewInteractionController
- (BOOL)previewInteractionShouldBegin:(id)a3;
- (UIViewController)presentingViewController;
- (VUIPreviewInteractionController)initWithPresentingViewController:(id)a3 collectionView:(id)a4 controllerToPresent:(id)a5;
- (VUIPreviewInteractionControllerDelegate)delegate;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (void)_cleanupPreviewInteraction;
- (void)animateTransition:(id)a3;
- (void)dealloc;
- (void)dismissConfirmation;
- (void)previewInteraction:(id)a3 didUpdatePreviewTransition:(double)a4 ended:(BOOL)a5;
- (void)previewInteractionDidCancel:(id)a3;
@end

@implementation VUIPreviewInteractionController

- (VUIPreviewInteractionController)initWithPresentingViewController:(id)a3 collectionView:(id)a4 controllerToPresent:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = VUIPreviewInteractionController;
  v11 = [(VUIPreviewInteractionController *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_collectionView, a4);
    objc_storeWeak(&v12->_presentingViewController, v8);
    objc_storeStrong(&v12->_presentedViewController, a5);
    v13 = [objc_alloc(MEMORY[0x1E69DCE10]) initWithView:v12->_collectionView];
    previewInteraction = v12->_previewInteraction;
    v12->_previewInteraction = v13;

    [(UIPreviewInteraction *)v12->_previewInteraction setDelegate:v12];
    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 addObserver:v12 selector:sel__applicationDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];
  }

  return v12;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDAC8] object:0];

  v4.receiver = self;
  v4.super_class = VUIPreviewInteractionController;
  [(VUIPreviewInteractionController *)&v4 dealloc];
}

- (void)dismissConfirmation
{
  if (self->_wrapperViewController)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __54__VUIPreviewInteractionController_dismissConfirmation__block_invoke;
    v2[3] = &unk_1E872D768;
    v2[4] = self;
    [MEMORY[0x1E69DD258] _performWithoutDeferringTransitions:v2];
  }
}

uint64_t __54__VUIPreviewInteractionController_dismissConfirmation__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) dismissViewControllerAnimated:0 completion:0];
  v2 = *(a1 + 32);

  return [v2 _cleanupPreviewInteraction];
}

- (BOOL)previewInteractionShouldBegin:(id)a3
{
  v113 = *MEMORY[0x1E69E9840];
  [a3 locationInCoordinateSpace:0];
  v4 = [(UICollectionView *)self->_collectionView indexPathForItemAtPoint:?];
  v5 = [(UICollectionView *)self->_collectionView cellForItemAtIndexPath:v4];
  stashedCell = self->_stashedCell;
  self->_stashedCell = v5;

  v7 = [MEMORY[0x1E695DF70] array];
  v8 = self->_collectionView;
  if (v8)
  {
    v9 = v8;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
        if ([v10 isDragging])
        {

          goto LABEL_25;
        }

        [v7 addObject:v10];
      }

      v11 = [v9 superview];

      v9 = v11;
    }

    while (v11);
  }

  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  v13 = [WeakRetained navigationController];

  if (v13)
  {
    v14 = [(VUIPreviewInteractionController *)self delegate];
    v10 = v14;
    if (v14 && ![v14 interactionController:self shouldInteractionControllerBeginForIndexPath:v4])
    {
LABEL_25:
      v38 = 0;
    }

    else
    {
      objc_storeStrong(&self->_currentIndexPath, v4);
      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      v15 = v7;
      v16 = [v15 countByEnumeratingWithState:&v108 objects:v112 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v109;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v109 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v108 + 1) + 8 * i);
            v21 = [v20 panGestureRecognizer];
            [v21 setEnabled:0];

            v22 = [v20 panGestureRecognizer];
            [v22 setEnabled:1];
          }

          v17 = [v15 countByEnumeratingWithState:&v108 objects:v112 count:16];
        }

        while (v17);
      }

      v23 = [(UICollectionViewCell *)self->_stashedCell snapshotViewAfterScreenUpdates:1];
      if (!self->_wrapperViewController)
      {
        v24 = objc_alloc_init(VUIPresentationContainerViewController);
        wrapperViewController = self->_wrapperViewController;
        self->_wrapperViewController = v24;

        [(VUIPresentationContainerViewController *)self->_wrapperViewController setTransitioningDelegate:self];
        [(VUIPresentationContainerViewController *)self->_wrapperViewController setModalPresentationStyle:4];
        v26 = [(VUIPresentationContainerViewController *)self->_wrapperViewController view];
        v27 = [(UIViewController *)self->_presentedViewController view];
        [v26 addSubview:v27];

        [(VUIPresentationContainerViewController *)self->_wrapperViewController addChildViewController:self->_presentedViewController];
        v107[0] = MEMORY[0x1E69E9820];
        v107[1] = 3221225472;
        v107[2] = __65__VUIPreviewInteractionController_previewInteractionShouldBegin___block_invoke;
        v107[3] = &unk_1E872D768;
        v107[4] = self;
        [MEMORY[0x1E69DD258] _performWithoutDeferringTransitions:v107];
        v28 = [(VUIPresentationContainerViewController *)self->_wrapperViewController presentationController];
        v29 = [v28 containerView];
        v30 = [v28 presentedView];
        [v29 insertSubview:v23 belowSubview:v30];
        [v29 bounds];
        Width = CGRectGetWidth(v114);
        [v29 safeAreaInsets];
        v33 = Width - v32;
        [v29 safeAreaInsets];
        v35 = *(MEMORY[0x1E695F060] + 8);
        v36 = 56.0;
        if (*MEMORY[0x1E695F060] == v33 - v34 + -33.0 && v35 == 56.0)
        {
          [v29 bounds];
          v36 = CGRectGetWidth(v115) + -33.0;
          v89 = v36;
          v92 = 544.0;
        }

        else
        {
          v92 = 56.0;
          v89 = v33 - v34 + -33.0;
        }

        v39 = [(VUIPreviewInteractionController *)self presentingViewController:v36];
        v40 = [v39 view];

        collectionView = self->_collectionView;
        [(UICollectionViewCell *)self->_stashedCell frame];
        v91 = v40;
        [(UICollectionView *)collectionView convertRect:v40 toView:?];
        [v40 convertRect:v29 toView:?];
        v83 = v43;
        v84 = v42;
        v45 = v44;
        v47 = v46;
        [v23 setFrame:?];
        [(UICollectionViewCell *)self->_stashedCell setHidden:1];
        [v29 bounds];
        x = v116.origin.x;
        y = v116.origin.y;
        v50 = v116.size.width;
        v85 = v116.size.width;
        height = v116.size.height;
        v51 = v116.size.height;
        v52 = CGRectGetWidth(v116) + -33.0;
        v117.origin.x = x;
        v117.origin.y = y;
        v117.size.width = v50;
        v117.size.height = v51;
        v53 = CGRectGetHeight(v117) + -33.0;
        if (v52 >= v89)
        {
          v54 = v89;
        }

        else
        {
          v54 = v52;
        }

        if (v53 >= v92)
        {
          v55 = v92;
        }

        else
        {
          v55 = v53;
        }

        [v28 setModalSize:{v54, v55}];
        [v30 setAlpha:0.0];
        v118.origin.x = v84;
        v118.origin.y = v83;
        v118.size.width = v45;
        v118.size.height = v47;
        MidX = CGRectGetMidX(v118);
        v119.origin.x = v84;
        v119.origin.y = v83;
        v119.size.width = v45;
        v119.size.height = v47;
        MidY = CGRectGetMidY(v119);
        [v29 bounds];
        v59 = (v58 - v54) * 0.5;
        v61 = (v60 - v55) * 0.5;
        v120.origin.x = v59;
        v120.origin.y = v61;
        v120.size.width = v54;
        v120.size.height = v55;
        v62 = CGRectGetMidX(v120);
        v121.origin.x = v59;
        v121.origin.y = v61;
        v121.size.width = v54;
        v121.size.height = v55;
        v63 = CGRectGetMidY(v121);
        [v23 frame];
        v65 = fmax(v64 / v54, 0.5);
        [v23 frame];
        v67 = fmax(v66 / v55, 0.5);
        if (v65 >= v67)
        {
          v65 = v67;
        }

        [v30 setFrame:{(v85 - v54) * 0.5, (height - v55) * 0.5, v54, v55}];
        v90 = v29;
        memset(&v106, 0, sizeof(v106));
        CGAffineTransformMakeTranslation(&v106, MidX - v62, MidY - v63);
        v104 = v106;
        CGAffineTransformScale(&v105, &v104, v65, v65);
        v106 = v105;
        [v30 setTransform:&v105];
        v68 = [v28 backdropView];
        [VUIConfirmationBlurEffect effectWithStyle:1];
        v69 = v86 = v28;
        v70 = objc_alloc(MEMORY[0x1E69DD278]);
        v100[0] = MEMORY[0x1E69E9820];
        v100[1] = 3221225472;
        v100[2] = __65__VUIPreviewInteractionController_previewInteractionShouldBegin___block_invoke_2;
        v100[3] = &unk_1E872E008;
        v71 = v30;
        v72 = v68;
        v101 = v72;
        v102 = v69;
        v73 = v23;
        v103 = v73;
        v88 = v69;
        v74 = [v70 initWithDuration:3 curve:v100 animations:1.0];
        previewPropertyAnimator = self->_previewPropertyAnimator;
        self->_previewPropertyAnimator = v74;

        v96[0] = MEMORY[0x1E69E9820];
        v96[1] = 3221225472;
        v96[2] = __65__VUIPreviewInteractionController_previewInteractionShouldBegin___block_invoke_3;
        v96[3] = &unk_1E8732AC8;
        v76 = v71;
        v99 = v106;
        v97 = v76;
        v98 = v72;
        v77 = v72;
        [v86 setCompletedAnimationBlock:v96];
        v78 = objc_alloc(MEMORY[0x1E69DD278]);
        v93[0] = MEMORY[0x1E69E9820];
        v93[1] = 3221225472;
        v93[2] = __65__VUIPreviewInteractionController_previewInteractionShouldBegin___block_invoke_4;
        v93[3] = &unk_1E872D990;
        v94 = v73;
        v95 = v76;
        v79 = v76;
        v80 = [v78 initWithDuration:v93 dampingRatio:0.4 animations:1.0];
        commitPropertyAnimator = self->_commitPropertyAnimator;
        self->_commitPropertyAnimator = v80;
      }

      if (v10)
      {
        [v10 interactionController:self didBeginForIndexPath:v4];
      }

      v38 = 1;
    }
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

void __65__VUIPreviewInteractionController_previewInteractionShouldBegin___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];
  [v2 presentViewController:*(*(a1 + 32) + 24) animated:0 completion:0];
}

uint64_t __65__VUIPreviewInteractionController_previewInteractionShouldBegin___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setEffect:*(a1 + 40)];
  v2 = *(a1 + 48);
  CGAffineTransformMakeScale(&v4, 1.08, 1.08);
  return [v2 setTransform:&v4];
}

uint64_t __65__VUIPreviewInteractionController_previewInteractionShouldBegin___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v5[0] = *(a1 + 48);
  v5[1] = v3;
  v5[2] = *(a1 + 80);
  [v2 setTransform:v5];
  return [*(a1 + 40) setEffect:0];
}

uint64_t __65__VUIPreviewInteractionController_previewInteractionShouldBegin___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 32);
  v6 = *(MEMORY[0x1E695EFD0] + 16);
  v8 = *MEMORY[0x1E695EFD0];
  v7 = v8;
  v9 = v6;
  v10 = *(MEMORY[0x1E695EFD0] + 32);
  v5 = v10;
  [v2 setTransform:&v8];
  [*(a1 + 40) setAlpha:1.0];
  v3 = *(a1 + 40);
  v8 = v7;
  v9 = v6;
  v10 = v5;
  return [v3 setTransform:&v8];
}

- (void)previewInteraction:(id)a3 didUpdatePreviewTransition:(double)a4 ended:(BOOL)a5
{
  v5 = a5;
  v11 = a3;
  v8 = a4 * a4;
  if (a4 * a4 != 0.0 && v8 <= 1.0)
  {
    [(UIViewPropertyAnimator *)self->_previewPropertyAnimator setFractionComplete:v8];
  }

  self->_previewTransitionEnded = v5;
  if (v5)
  {
    [(UICollectionViewCell *)self->_stashedCell setHidden:0];
    [(UIViewPropertyAnimator *)self->_commitPropertyAnimator startAnimation];
    [(UIViewPropertyAnimator *)self->_previewPropertyAnimator pauseAnimation];
    v10 = [objc_alloc(MEMORY[0x1E69DCF88]) initWithDampingRatio:1.0];
    [(UIViewPropertyAnimator *)self->_previewPropertyAnimator continueAnimationWithTimingParameters:v10 durationFactor:0.4];
  }
}

- (void)previewInteractionDidCancel:(id)a3
{
  [(UICollectionViewCell *)self->_stashedCell setHidden:0];
  if (!self->_previewTransitionEnded)
  {
    wrapperViewController = self->_wrapperViewController;
    if (wrapperViewController)
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __63__VUIPreviewInteractionController_previewInteractionDidCancel___block_invoke;
      v5[3] = &unk_1E872D768;
      v5[4] = self;
      [(VUIPresentationContainerViewController *)wrapperViewController dismissViewControllerAnimated:1 completion:v5];
    }
  }
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  dialogPresentationController = self->_dialogPresentationController;
  if (!dialogPresentationController)
  {
    v8 = a4;
    v9 = a3;
    v10 = [[VUIDialogPresentationController alloc] initWithPresentedViewController:v9 presentingViewController:v8];

    v11 = self->_dialogPresentationController;
    self->_dialogPresentationController = v10;

    dialogPresentationController = self->_dialogPresentationController;
  }

  return dialogPresentationController;
}

- (void)animateTransition:(id)a3
{
  v4 = a3;
  [(VUIPreviewInteractionController *)self transitionDuration:v4];
  v6 = v5;
  v7 = MEMORY[0x1E69DD250];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__VUIPreviewInteractionController_animateTransition___block_invoke;
  v12[3] = &unk_1E872D768;
  v12[4] = self;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__VUIPreviewInteractionController_animateTransition___block_invoke_2;
  v9[3] = &unk_1E872E9C8;
  v10 = v4;
  v11 = self;
  v8 = v4;
  [v7 animateWithDuration:0 delay:v12 usingSpringWithDamping:v9 initialSpringVelocity:v6 options:0.0 animations:1.0 completion:0.0];
}

void __53__VUIPreviewInteractionController_animateTransition___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) completedAnimationBlock];

  if (v2)
  {
    v3 = [*(*(a1 + 32) + 32) completedAnimationBlock];
    v3[2]();
  }
}

uint64_t __53__VUIPreviewInteractionController_animateTransition___block_invoke_2(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = [v3 transitionWasCancelled];
    result = [*(a1 + 32) completeTransition:v4 ^ 1u];
    if ((v4 & 1) == 0)
    {
      v6 = *(a1 + 40);

      return [v6 _cleanupPreviewInteraction];
    }
  }

  else
  {

    return [v3 completeTransition:0];
  }

  return result;
}

- (void)_cleanupPreviewInteraction
{
  v3 = [(VUIPreviewInteractionController *)self delegate];
  [v3 interactionController:self didEndForIndexPath:self->_currentIndexPath];

  [(UICollectionViewCell *)self->_stashedCell setHidden:0];
  stashedCell = self->_stashedCell;
  self->_stashedCell = 0;

  [(UIViewPropertyAnimator *)self->_previewPropertyAnimator stopAnimation:1];
  previewPropertyAnimator = self->_previewPropertyAnimator;
  self->_previewPropertyAnimator = 0;

  wrapperViewController = self->_wrapperViewController;
  self->_wrapperViewController = 0;

  dialogPresentationController = self->_dialogPresentationController;
  self->_dialogPresentationController = 0;
}

- (VUIPreviewInteractionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end