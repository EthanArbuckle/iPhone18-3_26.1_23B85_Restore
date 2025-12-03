@interface _UIRotatingAlertController
- (BOOL)_shouldAbortAdaptationFromTraitCollection:(id)collection toTraitCollection:(id)traitCollection withTransitionCoordinator:(id)coordinator;
- (BOOL)presentSheet;
- (BOOL)presentSheetFromRect:(CGRect)rect;
- (_UIRotatingAlertController)init;
- (_UIRotatingAlertControllerDelegate)rotatingSheetDelegate;
- (void)_presentingViewControllerDidChange:(id)change;
- (void)_presentingViewControllerWillChange:(id)change;
- (void)_updateSheetPositionAfterRotation;
- (void)dealloc;
- (void)didRotate:(id)rotate;
- (void)doneWithSheet;
- (void)willRotate:(id)rotate;
@end

@implementation _UIRotatingAlertController

- (_UIRotatingAlertController)init
{
  v7.receiver = self;
  v7.super_class = _UIRotatingAlertController;
  v2 = [(UIViewController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_arrowDirections = 15;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_willRotate_ name:@"UIWindowWillRotateNotification" object:0];
    [defaultCenter addObserver:v3 selector:sel_didRotate_ name:@"UIWindowDidRotateNotification" object:0];
    v5 = v3;
  }

  return v3;
}

- (void)dealloc
{
  v6[2] = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = @"UIWindowWillRotateNotification";
  v6[1] = @"UIWindowDidRotateNotification";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  [(NSNotificationCenter *)defaultCenter _uiRemoveObserver:v4 names:?];

  v5.receiver = self;
  v5.super_class = _UIRotatingAlertController;
  [(UIAlertController *)&v5 dealloc];
}

- (BOOL)presentSheet
{
  WeakRetained = objc_loadWeakRetained(&self->_rotatingSheetDelegate);
  [WeakRetained initialPresentationRectInHostViewForSheet:self];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  return [(_UIRotatingAlertController *)self presentSheetFromRect:v5, v7, v9, v11];
}

- (BOOL)presentSheetFromRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  WeakRetained = objc_loadWeakRetained(&self->_rotatingSheetDelegate);
  v9 = [WeakRetained hostViewForSheet:self];

  if (v9)
  {
    presentedViewControllerWhileRotating = self->_presentedViewControllerWhileRotating;
    if (!presentedViewControllerWhileRotating)
    {
      presentedViewControllerWhileRotating = self;
    }

    v11 = presentedViewControllerWhileRotating;
    [(UIAlertController *)v11 setModalPresentationStyle:7];
    popoverPresentationController = [(UIViewController *)v11 popoverPresentationController];
    [popoverPresentationController setSourceView:v9];
    [popoverPresentationController setSourceRect:{x, y, width, height}];
    [popoverPresentationController setPermittedArrowDirections:self->_arrowDirections];
    if (self->_popoverPresentationControllerDelegateWhileRotating)
    {
      [popoverPresentationController setDelegate:?];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 presentAlertController:self animated:1 completionBlock:0];
    }

    else
    {
      v14 = [UIViewController _viewControllerForFullScreenPresentationFromView:v9];
      [v14 presentViewController:v11 animated:1 completion:0];
      presentedViewController = [v14 presentedViewController];

      if (v11 != presentedViewController)
      {
        v13 = 0;
LABEL_12:

        goto LABEL_13;
      }
    }

    v13 = 1;
    goto LABEL_12;
  }

  v13 = 0;
LABEL_13:

  return v13;
}

- (void)doneWithSheet
{
  presentedViewControllerWhileRotating = self->_presentedViewControllerWhileRotating;
  self->_presentedViewControllerWhileRotating = 0;

  popoverPresentationControllerDelegateWhileRotating = self->_popoverPresentationControllerDelegateWhileRotating;
  self->_popoverPresentationControllerDelegateWhileRotating = 0;

  v5 = MEMORY[0x1E69E58C0];

  [v5 cancelPreviousPerformRequestsWithTarget:self selector:sel__didRotateAndLayout object:0];
}

- (void)_presentingViewControllerWillChange:(id)change
{
  changeCopy = change;
  v8.receiver = self;
  v8.super_class = _UIRotatingAlertController;
  [(UIViewController *)&v8 _presentingViewControllerWillChange:changeCopy];
  rotatingSheetDelegate = [(_UIRotatingAlertController *)self rotatingSheetDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    rotatingSheetDelegate2 = [(_UIRotatingAlertController *)self rotatingSheetDelegate];
    [rotatingSheetDelegate2 sheet:self presentingViewControllerWillChange:changeCopy];
  }
}

- (void)_presentingViewControllerDidChange:(id)change
{
  changeCopy = change;
  v8.receiver = self;
  v8.super_class = _UIRotatingAlertController;
  [(UIViewController *)&v8 _presentingViewControllerDidChange:changeCopy];
  rotatingSheetDelegate = [(_UIRotatingAlertController *)self rotatingSheetDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    rotatingSheetDelegate2 = [(_UIRotatingAlertController *)self rotatingSheetDelegate];
    [rotatingSheetDelegate2 sheet:self presentingViewControllerDidChange:changeCopy];
  }
}

- (BOOL)_shouldAbortAdaptationFromTraitCollection:(id)collection toTraitCollection:(id)traitCollection withTransitionCoordinator:(id)coordinator
{
  if (!coordinator)
  {
    return 0;
  }

  [coordinator targetTransform];
  return !CGAffineTransformIsIdentity(&v6);
}

- (void)willRotate:(id)rotate
{
  object = [rotate object];
  WeakRetained = objc_loadWeakRetained(&self->_rotatingSheetDelegate);
  v6 = [WeakRetained hostViewForSheet:self];

  _existingView = [(UIViewController *)self _existingView];
  window = [_existingView window];
  if (!window)
  {
LABEL_10:

    goto LABEL_11;
  }

  v9 = window;
  window2 = [v6 window];

  if (window2 == object)
  {
    _existingView = [UIViewController _viewControllerForFullScreenPresentationFromView:v6];
    presentedViewController = [_existingView presentedViewController];
    presentationController = [presentedViewController presentationController];
    presentationStyle = [presentationController presentationStyle];

    if (presentationStyle == 7 && !self->_isRotating)
    {
      self->_isRotating = 1;
      self->_readyToPresentAfterRotation = 0;
      presentingViewController = [(UIViewController *)self presentingViewController];

      if (presentingViewController)
      {
        presentedViewController2 = [(UIViewController *)self presentedViewController];
      }

      else
      {
        presentedViewController2 = presentedViewController;
      }

      presentedViewControllerWhileRotating = self->_presentedViewControllerWhileRotating;
      self->_presentedViewControllerWhileRotating = presentedViewController2;
      v17 = presentedViewController2;

      popoverPresentationController = [presentedViewController popoverPresentationController];
      delegate = [popoverPresentationController delegate];
      popoverPresentationControllerDelegateWhileRotating = self->_popoverPresentationControllerDelegateWhileRotating;
      self->_popoverPresentationControllerDelegateWhileRotating = delegate;

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __41___UIRotatingAlertController_willRotate___block_invoke;
      v21[3] = &unk_1E70F3590;
      v21[4] = self;
      [_existingView dismissViewControllerAnimated:0 completion:v21];
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (void)_updateSheetPositionAfterRotation
{
  presentedViewControllerWhileRotating = self->_presentedViewControllerWhileRotating;
  if (!presentedViewControllerWhileRotating)
  {
    presentedViewControllerWhileRotating = self;
  }

  v26 = presentedViewControllerWhileRotating;
  presentingViewController = [(UIViewController *)v26 presentingViewController];
  if (presentingViewController)
  {
    v5 = 1;
  }

  else
  {
    presentingViewController2 = [(UIViewController *)self presentingViewController];
    v5 = presentingViewController2 != 0;
  }

  if (self->_isRotating && !v5 && self->_readyToPresentAfterRotation)
  {
    self->_isRotating = 0;
    WeakRetained = objc_loadWeakRetained(&self->_rotatingSheetDelegate);
    [WeakRetained presentationRectInHostViewForSheet:self];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    isModalInPresentation = [(UIViewController *)self->_presentedViewControllerWhileRotating isModalInPresentation];
    v28.origin.x = v9;
    v28.origin.y = v11;
    v28.size.width = v13;
    v28.size.height = v15;
    if (!CGRectIsEmpty(v28) || isModalInPresentation)
    {
      v18 = objc_loadWeakRetained(&self->_rotatingSheetDelegate);
      v19 = [v18 hostViewForSheet:self];
      [v19 bounds];
      v32.origin.x = v9;
      v32.origin.y = v11;
      v32.size.width = v13;
      v32.size.height = v15;
      v30 = CGRectIntersection(v29, v32);
      x = v30.origin.x;
      y = v30.origin.y;
      width = v30.size.width;
      height = v30.size.height;

      v31.origin.x = x;
      v31.origin.y = y;
      v31.size.width = width;
      v31.size.height = height;
      if (CGRectIsEmpty(v31))
      {
        if (isModalInPresentation)
        {
          [(_UIRotatingAlertController *)self presentSheet];
        }
      }

      else
      {
        [(_UIRotatingAlertController *)self presentSheetFromRect:x, y, width, height];
      }

      v24 = self->_presentedViewControllerWhileRotating;
      self->_presentedViewControllerWhileRotating = 0;

      popoverPresentationControllerDelegateWhileRotating = self->_popoverPresentationControllerDelegateWhileRotating;
      self->_popoverPresentationControllerDelegateWhileRotating = 0;
    }
  }
}

- (void)didRotate:(id)rotate
{
  object = [rotate object];
  WeakRetained = objc_loadWeakRetained(&self->_rotatingSheetDelegate);
  v5 = [WeakRetained hostViewForSheet:self];

  window = [v5 window];

  if (window == object)
  {
    [(_UIRotatingAlertController *)self performSelector:sel__didRotateAndLayout withObject:0 afterDelay:0.0];
  }
}

- (_UIRotatingAlertControllerDelegate)rotatingSheetDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_rotatingSheetDelegate);

  return WeakRetained;
}

@end