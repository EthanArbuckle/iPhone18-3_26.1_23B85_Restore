@interface VUIDialogInteractionController
- (BOOL)interactionController:(id)controller shouldInteractionControllerBeginForIndexPath:(id)path;
- (VUIDialogInteractionController)initWithPresentingViewController:(id)controller collectionView:(id)view controllerToPresent:(id)present;
- (VUIDialogInteractionControllerDelegate)delegate;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (void)_cleanup;
- (void)animateTransition:(id)transition;
- (void)dismissConfirmation;
- (void)interactionController:(id)controller didBeginForIndexPath:(id)path;
- (void)longPressGestureRecognizerPressed:(id)pressed;
- (void)presentViewController:(id)controller;
@end

@implementation VUIDialogInteractionController

- (VUIDialogInteractionController)initWithPresentingViewController:(id)controller collectionView:(id)view controllerToPresent:(id)present
{
  controllerCopy = controller;
  viewCopy = view;
  presentCopy = present;
  v22.receiver = self;
  v22.super_class = VUIDialogInteractionController;
  v12 = [(VUIDialogInteractionController *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_collectionView, view);
    objc_storeStrong(&v13->_presentingViewController, controller);
    objc_storeStrong(&v13->_presentedViewController, present);
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    traitCollection = [mainScreen traitCollection];
    forceTouchCapability = [traitCollection forceTouchCapability];

    if (forceTouchCapability == 2)
    {
      v17 = [[VUIPreviewInteractionController alloc] initWithPresentingViewController:v13->_presentingViewController collectionView:v13->_collectionView controllerToPresent:v13->_presentedViewController];
      interactionController = v13->_interactionController;
      v13->_interactionController = v17;

      [(VUIPreviewInteractionController *)v13->_interactionController setDelegate:v13];
    }

    else
    {
      v19 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v13 action:sel_longPressGestureRecognizerPressed_];
      longPressGestureRecognizer = v13->_longPressGestureRecognizer;
      v13->_longPressGestureRecognizer = v19;

      [(UILongPressGestureRecognizer *)v13->_longPressGestureRecognizer setDelegate:v13];
      [(UILongPressGestureRecognizer *)v13->_longPressGestureRecognizer setDelaysTouchesBegan:1];
      [(UICollectionView *)v13->_collectionView addGestureRecognizer:v13->_longPressGestureRecognizer];
    }
  }

  return v13;
}

- (void)dismissConfirmation
{
  if (self->_wrapperViewController)
  {
    v3 = MEMORY[0x1E69DD258];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __53__VUIDialogInteractionController_dismissConfirmation__block_invoke;
    v14 = &unk_1E872D768;
    selfCopy = self;
    v4 = &v11;
LABEL_3:
    [v3 _performWithoutDeferringTransitions:{v4, v6, v7, v8, v9, selfCopy2, v11, v12, v13, v14, selfCopy}];
    return;
  }

  interactionController = self->_interactionController;
  if (interactionController)
  {
    [(VUIPreviewInteractionController *)interactionController dismissConfirmation];

    [(VUIDialogInteractionController *)self _cleanup];
  }

  else if (self->_presentingViewController)
  {
    v3 = MEMORY[0x1E69DD258];
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __53__VUIDialogInteractionController_dismissConfirmation__block_invoke_3;
    v9 = &unk_1E872D768;
    selfCopy2 = self;
    v4 = &v6;
    goto LABEL_3;
  }
}

uint64_t __53__VUIDialogInteractionController_dismissConfirmation__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__VUIDialogInteractionController_dismissConfirmation__block_invoke_2;
  v4[3] = &unk_1E872D768;
  v4[4] = v1;
  return [v2 dismissViewControllerAnimated:0 completion:v4];
}

uint64_t __53__VUIDialogInteractionController_dismissConfirmation__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 64);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__VUIDialogInteractionController_dismissConfirmation__block_invoke_4;
  v4[3] = &unk_1E872D768;
  v4[4] = v1;
  return [v2 dismissViewControllerAnimated:0 completion:v4];
}

- (void)longPressGestureRecognizerPressed:(id)pressed
{
  pressedCopy = pressed;
  if ([pressedCopy state] == 1 && !self->_isPresenting)
  {
    [pressedCopy locationInView:self->_collectionView];
    v4 = [(UICollectionView *)self->_collectionView indexPathForItemAtPoint:?];
    if (v4)
    {
      [(VUIDialogInteractionController *)self performSelector:sel_presentViewController_ withObject:v4 afterDelay:0.2];
    }
  }
}

- (void)presentViewController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([WeakRetained dialogInteractionController:self shouldBeginInteractionForIndexPath:controllerCopy])
  {
    objc_storeStrong(&self->_currentIndexPath, controller);
    self->_isPresenting = 1;
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    traitCollection = [mainScreen traitCollection];
    if ([traitCollection userInterfaceIdiom])
    {
      mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
      traitCollection2 = [mainScreen2 traitCollection];
      if ([traitCollection2 userInterfaceIdiom] == 1)
      {
        traitCollection3 = [(UIViewController *)self->_presentingViewController traitCollection];
        if ([traitCollection3 horizontalSizeClass] == 1)
        {
          traitCollection4 = [(UIViewController *)self->_presentingViewController traitCollection];
          verticalSizeClass = [traitCollection4 verticalSizeClass];

          if (verticalSizeClass != 2)
          {
            goto LABEL_14;
          }

LABEL_8:
          v14 = objc_alloc_init(VUIPresentationContainerViewController);
          wrapperViewController = self->_wrapperViewController;
          self->_wrapperViewController = v14;

          [(VUIPresentationContainerViewController *)self->_wrapperViewController setModalPresentationStyle:4];
          [(VUIPresentationContainerViewController *)self->_wrapperViewController setTransitioningDelegate:self];
          view = [(VUIPresentationContainerViewController *)self->_wrapperViewController view];
          view2 = [(UIViewController *)self->_presentedViewController view];
          [view addSubview:view2];

          [(VUIPresentationContainerViewController *)self->_wrapperViewController addChildViewController:self->_presentedViewController];
          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 3221225472;
          v42[2] = __56__VUIDialogInteractionController_presentViewController___block_invoke;
          v42[3] = &unk_1E872D768;
          v42[4] = self;
          [MEMORY[0x1E69DD258] _performWithoutDeferringTransitions:v42];
          presentationController = [(VUIPresentationContainerViewController *)self->_wrapperViewController presentationController];
          containerView = [presentationController containerView];
          [containerView bounds];
          Width = CGRectGetWidth(v43);
          [containerView safeAreaInsets];
          v22 = Width - v21;
          [containerView safeAreaInsets];
          v24 = v22 - v23 + -33.0;
          [containerView bounds];
          x = v44.origin.x;
          y = v44.origin.y;
          v27 = v44.size.width;
          height = v44.size.height;
          v29 = CGRectGetWidth(v44) + -33.0;
          v45.origin.x = x;
          v45.origin.y = y;
          v45.size.width = v27;
          v45.size.height = height;
          v30 = CGRectGetHeight(v45) + -33.0;
          if (v29 >= v24)
          {
            v31 = v24;
          }

          else
          {
            v31 = v29;
          }

          v32 = fmin(v30, 56.0);
          [presentationController setModalSize:{v31, v32}];
          [(UIViewController *)self->_presentedViewController setPreferredContentSize:v31, v32];
          presentedView = [presentationController presentedView];
          [presentedView setFrame:{(v27 - v31) * 0.5, (height - v32) * 0.5, v31, v32}];
          backdropView = [presentationController backdropView];
          v35 = [VUIConfirmationBlurEffect effectWithStyle:1];
          [backdropView setEffect:v35];
          v39[0] = MEMORY[0x1E69E9820];
          v39[1] = 3221225472;
          v39[2] = __56__VUIDialogInteractionController_presentViewController___block_invoke_2;
          v39[3] = &unk_1E872D990;
          v40 = presentedView;
          v41 = backdropView;
          v36 = backdropView;
          v37 = presentedView;
          [presentationController setCompletedAnimationBlock:v39];

          goto LABEL_15;
        }
      }

LABEL_14:
      [(UIViewController *)self->_presentedViewController setModalPresentationStyle:7];
      [(UIViewController *)self->_presentingViewController presentViewController:self->_presentedViewController animated:1 completion:0];
      presentationController = [(UIViewController *)self->_presentedViewController popoverPresentationController];
      containerView = [(UICollectionView *)self->_collectionView cellForItemAtIndexPath:controllerCopy];
      [presentationController setSourceView:containerView];
      [containerView bounds];
      [presentationController setSourceRect:?];
      vui_primaryDynamicBackgroundColor = [MEMORY[0x1E69DC888] vui_primaryDynamicBackgroundColor];
      [presentationController setBackgroundColor:vui_primaryDynamicBackgroundColor];

      [presentationController setPermittedArrowDirections:15];
LABEL_15:

      [WeakRetained dialogInteractionController:self interactionDidBeginForIndexPath:controllerCopy];
      goto LABEL_16;
    }

    goto LABEL_8;
  }

LABEL_16:
}

void __56__VUIDialogInteractionController_presentViewController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];
  [v2 presentViewController:*(*(a1 + 32) + 24) animated:0 completion:0];
}

uint64_t __56__VUIDialogInteractionController_presentViewController___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 setEffect:0];
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  dialogPresentationController = self->_dialogPresentationController;
  if (!dialogPresentationController)
  {
    viewControllerCopy = viewController;
    controllerCopy = controller;
    v10 = [[VUIDialogPresentationController alloc] initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy];

    v11 = self->_dialogPresentationController;
    self->_dialogPresentationController = v10;

    dialogPresentationController = self->_dialogPresentationController;
  }

  return dialogPresentationController;
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  [(VUIDialogInteractionController *)self transitionDuration:transitionCopy];
  v6 = v5;
  v7 = MEMORY[0x1E69DD250];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__VUIDialogInteractionController_animateTransition___block_invoke;
  v12[3] = &unk_1E872D768;
  v12[4] = self;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__VUIDialogInteractionController_animateTransition___block_invoke_2;
  v9[3] = &unk_1E872E9C8;
  v10 = transitionCopy;
  selfCopy = self;
  v8 = transitionCopy;
  [v7 animateWithDuration:0 delay:v12 usingSpringWithDamping:v9 initialSpringVelocity:v6 options:0.0 animations:1.0 completion:0.0];
}

void __52__VUIDialogInteractionController_animateTransition___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) completedAnimationBlock];

  if (v2)
  {
    v3 = [*(*(a1 + 32) + 32) completedAnimationBlock];
    v3[2]();
  }
}

uint64_t __52__VUIDialogInteractionController_animateTransition___block_invoke_2(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = [v3 transitionWasCancelled];
    result = [*(a1 + 32) completeTransition:v4 ^ 1u];
    if ((v4 & 1) == 0)
    {
      v6 = *(a1 + 40);

      return [v6 _cleanup];
    }
  }

  else
  {

    return [v3 completeTransition:0];
  }

  return result;
}

- (BOOL)interactionController:(id)controller shouldInteractionControllerBeginForIndexPath:(id)path
{
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [WeakRetained dialogInteractionController:self shouldBeginInteractionForIndexPath:pathCopy];

  if (v8)
  {
    objc_storeStrong(&self->_currentIndexPath, path);
  }

  return v8;
}

- (void)interactionController:(id)controller didBeginForIndexPath:(id)path
{
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained dialogInteractionController:self interactionDidBeginForIndexPath:pathCopy];
}

- (void)_cleanup
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained dialogInteractionController:self interactionDidEndForIndexPath:self->_currentIndexPath];

  wrapperViewController = self->_wrapperViewController;
  self->_wrapperViewController = 0;

  dialogPresentationController = self->_dialogPresentationController;
  self->_dialogPresentationController = 0;

  self->_isPresenting = 0;
}

- (VUIDialogInteractionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end