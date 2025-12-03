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
    destinationViewController = [(UIStoryboardSegue *)self destinationViewController];
    v6 = [(UIPopoverController *)v4 initWithContentViewController:destinationViewController];
    v7 = self->_popoverController;
    self->_popoverController = v6;

    [(UIPopoverController *)self->_popoverController _setRetainsSelfWhilePresented:1];
    v8 = self->_popoverController;
    _passthroughViews = [(UIStoryboardPopoverSegue *)self _passthroughViews];
    [(UIPopoverController *)v8 setPassthroughViews:_passthroughViews];

    popoverController = self->_popoverController;
  }

  return popoverController;
}

- (void)perform
{
  destinationViewController = [(UIStoryboardSegue *)self destinationViewController];
  sourceViewController = [(UIStoryboardSegue *)self sourceViewController];
  [destinationViewController _setSourceViewControllerIfPresentedViaPopoverSegue:sourceViewController];

  _anchorBarButtonItem = [(UIStoryboardPopoverSegue *)self _anchorBarButtonItem];

  if (_anchorBarButtonItem)
  {
    popoverController = [(UIStoryboardPopoverSegue *)self popoverController];
    _anchorBarButtonItem2 = [(UIStoryboardPopoverSegue *)self _anchorBarButtonItem];
    [popoverController presentPopoverFromBarButtonItem:_anchorBarButtonItem2 permittedArrowDirections:-[UIStoryboardPopoverSegue _permittedArrowDirections](self animated:{"_permittedArrowDirections"), 1}];
LABEL_5:

    goto LABEL_6;
  }

  _anchorView = [(UIStoryboardPopoverSegue *)self _anchorView];

  if (_anchorView)
  {
    popoverController = [(UIStoryboardPopoverSegue *)self popoverController];
    [(UIStoryboardPopoverSegue *)self _anchorRect];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    _anchorBarButtonItem2 = [(UIStoryboardPopoverSegue *)self _anchorView];
    [popoverController presentPopoverFromRect:_anchorBarButtonItem2 inView:-[UIStoryboardPopoverSegue _permittedArrowDirections](self permittedArrowDirections:"_permittedArrowDirections") animated:{1, v10, v12, v14, v16}];
    goto LABEL_5;
  }

  popoverController = [MEMORY[0x1E696AAA8] currentHandler];
  [popoverController handleFailureInMethod:a2 object:self file:@"UIStoryboardPopoverSegue.m" lineNumber:34 description:{@"%@ must be presented from a bar button item or a view.", objc_opt_class()}];
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