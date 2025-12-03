@interface _UISearchPopoverPresentationController
- (CGRect)finalFrameForContainerView;
- (_UISearchPopoverPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController;
- (id)_popoverHostingWindow;
- (id)_presentationControllerForTraitCollection:(id)collection;
- (void)_transitionToWillBegin;
- (void)presentationTransitionWillBegin;
- (void)setContentVisible:(BOOL)visible;
@end

@implementation _UISearchPopoverPresentationController

- (_UISearchPopoverPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISearchPopoverPresentationController.m" lineNumber:35 description:@"_UISearchPopoverPresentationController must present a UISearchController"];
  }

  v14.receiver = self;
  v14.super_class = _UISearchPopoverPresentationController;
  v9 = [(UIPopoverPresentationController *)&v14 initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy];
  if (v9)
  {
    v10 = [[_UISearchPresentationAssistant alloc] initWithSearchPresentationController:v9];
    assistant = v9->_assistant;
    v9->_assistant = v10;
  }

  return v9;
}

- (id)_popoverHostingWindow
{
  sourceView = [(UIPresentationController *)self sourceView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  sourceView2 = [(UIPresentationController *)self sourceView];
  window2 = sourceView2;
  if ((isKindOfClass & 1) == 0)
  {
    window = [sourceView2 window];

    window2 = window;
  }

  if (!window2)
  {
    presentingViewController = [(UIPresentationController *)self presentingViewController];
    view = [presentingViewController view];
    window2 = [view window];
  }

  return window2;
}

- (void)presentationTransitionWillBegin
{
  v4.receiver = self;
  v4.super_class = _UISearchPopoverPresentationController;
  [(UIPopoverPresentationController *)&v4 presentationTransitionWillBegin];
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  -[_UISearchPopoverPresentationController setContentVisible:](self, "setContentVisible:", [presentedViewController _showsSearchResultsController]);
}

- (void)_transitionToWillBegin
{
  [(_UISearchPresentationAssistant *)self->_assistant setAdaptivePresentationController:0];

  [(UIPresentationController *)self _presentationTransitionWillBegin];
}

- (id)_presentationControllerForTraitCollection:(id)collection
{
  selfCopy = self;
  if ([collection horizontalSizeClass] == 1)
  {
    v5 = [_UISearchPresentationController alloc];
    presentedViewController = [(UIPresentationController *)selfCopy presentedViewController];
    presentingViewController = [(UIPresentationController *)selfCopy presentingViewController];
    v8 = [(_UISearchPresentationController *)v5 initWithPresentedViewController:presentedViewController presentingViewController:presentingViewController];

    selfCopy = v8;
  }

  return selfCopy;
}

- (void)setContentVisible:(BOOL)visible
{
  visibleCopy = visible;
  presentedView = [(UIPopoverPresentationController *)self presentedView];
  [presentedView setHidden:!visibleCopy];
}

- (CGRect)finalFrameForContainerView
{
  x = self->finalFrameForContainerView.origin.x;
  y = self->finalFrameForContainerView.origin.y;
  width = self->finalFrameForContainerView.size.width;
  height = self->finalFrameForContainerView.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end