@interface _UIRotatingAlertController
- (BOOL)_shouldAbortAdaptationFromTraitCollection:(id)a3 toTraitCollection:(id)a4 withTransitionCoordinator:(id)a5;
- (BOOL)presentSheet;
- (BOOL)presentSheetFromRect:(CGRect)a3;
- (_UIRotatingAlertController)init;
- (_UIRotatingAlertControllerDelegate)rotatingSheetDelegate;
- (void)_presentingViewControllerDidChange:(id)a3;
- (void)_presentingViewControllerWillChange:(id)a3;
- (void)_updateSheetPositionAfterRotation;
- (void)dealloc;
- (void)didRotate:(id)a3;
- (void)doneWithSheet;
- (void)willRotate:(id)a3;
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
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v3 selector:sel_willRotate_ name:@"UIWindowWillRotateNotification" object:0];
    [v4 addObserver:v3 selector:sel_didRotate_ name:@"UIWindowDidRotateNotification" object:0];
    v5 = v3;
  }

  return v3;
}

- (void)dealloc
{
  v6[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = @"UIWindowWillRotateNotification";
  v6[1] = @"UIWindowDidRotateNotification";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  [(NSNotificationCenter *)v3 _uiRemoveObserver:v4 names:?];

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

- (BOOL)presentSheetFromRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
    v12 = [(UIViewController *)v11 popoverPresentationController];
    [v12 setSourceView:v9];
    [v12 setSourceRect:{x, y, width, height}];
    [v12 setPermittedArrowDirections:self->_arrowDirections];
    if (self->_popoverPresentationControllerDelegateWhileRotating)
    {
      [v12 setDelegate:?];
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
      v15 = [v14 presentedViewController];

      if (v11 != v15)
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

- (void)_presentingViewControllerWillChange:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UIRotatingAlertController;
  [(UIViewController *)&v8 _presentingViewControllerWillChange:v4];
  v5 = [(_UIRotatingAlertController *)self rotatingSheetDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(_UIRotatingAlertController *)self rotatingSheetDelegate];
    [v7 sheet:self presentingViewControllerWillChange:v4];
  }
}

- (void)_presentingViewControllerDidChange:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UIRotatingAlertController;
  [(UIViewController *)&v8 _presentingViewControllerDidChange:v4];
  v5 = [(_UIRotatingAlertController *)self rotatingSheetDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(_UIRotatingAlertController *)self rotatingSheetDelegate];
    [v7 sheet:self presentingViewControllerDidChange:v4];
  }
}

- (BOOL)_shouldAbortAdaptationFromTraitCollection:(id)a3 toTraitCollection:(id)a4 withTransitionCoordinator:(id)a5
{
  if (!a5)
  {
    return 0;
  }

  [a5 targetTransform];
  return !CGAffineTransformIsIdentity(&v6);
}

- (void)willRotate:(id)a3
{
  v4 = [a3 object];
  WeakRetained = objc_loadWeakRetained(&self->_rotatingSheetDelegate);
  v6 = [WeakRetained hostViewForSheet:self];

  v7 = [(UIViewController *)self _existingView];
  v8 = [v7 window];
  if (!v8)
  {
LABEL_10:

    goto LABEL_11;
  }

  v9 = v8;
  v10 = [v6 window];

  if (v10 == v4)
  {
    v7 = [UIViewController _viewControllerForFullScreenPresentationFromView:v6];
    v11 = [v7 presentedViewController];
    v12 = [v11 presentationController];
    v13 = [v12 presentationStyle];

    if (v13 == 7 && !self->_isRotating)
    {
      self->_isRotating = 1;
      self->_readyToPresentAfterRotation = 0;
      v14 = [(UIViewController *)self presentingViewController];

      if (v14)
      {
        v15 = [(UIViewController *)self presentedViewController];
      }

      else
      {
        v15 = v11;
      }

      presentedViewControllerWhileRotating = self->_presentedViewControllerWhileRotating;
      self->_presentedViewControllerWhileRotating = v15;
      v17 = v15;

      v18 = [v11 popoverPresentationController];
      v19 = [v18 delegate];
      popoverPresentationControllerDelegateWhileRotating = self->_popoverPresentationControllerDelegateWhileRotating;
      self->_popoverPresentationControllerDelegateWhileRotating = v19;

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __41___UIRotatingAlertController_willRotate___block_invoke;
      v21[3] = &unk_1E70F3590;
      v21[4] = self;
      [v7 dismissViewControllerAnimated:0 completion:v21];
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
  v4 = [(UIViewController *)v26 presentingViewController];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(UIViewController *)self presentingViewController];
    v5 = v6 != 0;
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

    v16 = [(UIViewController *)self->_presentedViewControllerWhileRotating isModalInPresentation];
    v28.origin.x = v9;
    v28.origin.y = v11;
    v28.size.width = v13;
    v28.size.height = v15;
    if (!CGRectIsEmpty(v28) || v16)
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
        if (v16)
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

- (void)didRotate:(id)a3
{
  v7 = [a3 object];
  WeakRetained = objc_loadWeakRetained(&self->_rotatingSheetDelegate);
  v5 = [WeakRetained hostViewForSheet:self];

  v6 = [v5 window];

  if (v6 == v7)
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