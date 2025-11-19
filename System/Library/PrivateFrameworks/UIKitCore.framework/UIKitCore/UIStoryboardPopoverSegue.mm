@interface UIStoryboardPopoverSegue
- (CGRect)_anchorRect;
- (UIPopoverController)popoverController;
- (void)perform;
@end

@implementation UIStoryboardPopoverSegue

- (UIPopoverController)popoverController
{
  popoverController = self->_popoverController;
  if (!popoverController)
  {
    v4 = [UIPopoverController alloc];
    v5 = [(UIStoryboardSegue *)self destinationViewController];
    v6 = [(UIPopoverController *)v4 initWithContentViewController:v5];
    v7 = self->_popoverController;
    self->_popoverController = v6;

    [(UIPopoverController *)self->_popoverController _setRetainsSelfWhilePresented:1];
    v8 = self->_popoverController;
    v9 = [(UIStoryboardPopoverSegue *)self _passthroughViews];
    [(UIPopoverController *)v8 setPassthroughViews:v9];

    popoverController = self->_popoverController;
  }

  return popoverController;
}

- (void)perform
{
  v4 = [(UIStoryboardSegue *)self destinationViewController];
  v5 = [(UIStoryboardSegue *)self sourceViewController];
  [v4 _setSourceViewControllerIfPresentedViaPopoverSegue:v5];

  v6 = [(UIStoryboardPopoverSegue *)self _anchorBarButtonItem];

  if (v6)
  {
    v17 = [(UIStoryboardPopoverSegue *)self popoverController];
    v7 = [(UIStoryboardPopoverSegue *)self _anchorBarButtonItem];
    [v17 presentPopoverFromBarButtonItem:v7 permittedArrowDirections:-[UIStoryboardPopoverSegue _permittedArrowDirections](self animated:{"_permittedArrowDirections"), 1}];
LABEL_5:

    goto LABEL_6;
  }

  v8 = [(UIStoryboardPopoverSegue *)self _anchorView];

  if (v8)
  {
    v17 = [(UIStoryboardPopoverSegue *)self popoverController];
    [(UIStoryboardPopoverSegue *)self _anchorRect];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v7 = [(UIStoryboardPopoverSegue *)self _anchorView];
    [v17 presentPopoverFromRect:v7 inView:-[UIStoryboardPopoverSegue _permittedArrowDirections](self permittedArrowDirections:"_permittedArrowDirections") animated:{1, v10, v12, v14, v16}];
    goto LABEL_5;
  }

  v17 = [MEMORY[0x1E696AAA8] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"UIStoryboardPopoverSegue.m" lineNumber:34 description:{@"%@ must be presented from a bar button item or a view.", objc_opt_class()}];
LABEL_6:
}

- (CGRect)_anchorRect
{
  x = self->_anchorRect.origin.x;
  y = self->_anchorRect.origin.y;
  width = self->_anchorRect.size.width;
  height = self->_anchorRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end