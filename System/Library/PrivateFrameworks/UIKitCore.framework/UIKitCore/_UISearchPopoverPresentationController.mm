@interface _UISearchPopoverPresentationController
- (CGRect)finalFrameForContainerView;
- (_UISearchPopoverPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4;
- (id)_popoverHostingWindow;
- (id)_presentationControllerForTraitCollection:(id)a3;
- (void)_transitionToWillBegin;
- (void)presentationTransitionWillBegin;
- (void)setContentVisible:(BOOL)a3;
@end

@implementation _UISearchPopoverPresentationController

- (_UISearchPopoverPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_UISearchPopoverPresentationController.m" lineNumber:35 description:@"_UISearchPopoverPresentationController must present a UISearchController"];
  }

  v14.receiver = self;
  v14.super_class = _UISearchPopoverPresentationController;
  v9 = [(UIPopoverPresentationController *)&v14 initWithPresentedViewController:v7 presentingViewController:v8];
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
  v3 = [(UIPresentationController *)self sourceView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = [(UIPresentationController *)self sourceView];
  v6 = v5;
  if ((isKindOfClass & 1) == 0)
  {
    v7 = [v5 window];

    v6 = v7;
  }

  if (!v6)
  {
    v8 = [(UIPresentationController *)self presentingViewController];
    v9 = [v8 view];
    v6 = [v9 window];
  }

  return v6;
}

- (void)presentationTransitionWillBegin
{
  v4.receiver = self;
  v4.super_class = _UISearchPopoverPresentationController;
  [(UIPopoverPresentationController *)&v4 presentationTransitionWillBegin];
  v3 = [(UIPresentationController *)self presentedViewController];
  -[_UISearchPopoverPresentationController setContentVisible:](self, "setContentVisible:", [v3 _showsSearchResultsController]);
}

- (void)_transitionToWillBegin
{
  [(_UISearchPresentationAssistant *)self->_assistant setAdaptivePresentationController:0];

  [(UIPresentationController *)self _presentationTransitionWillBegin];
}

- (id)_presentationControllerForTraitCollection:(id)a3
{
  v4 = self;
  if ([a3 horizontalSizeClass] == 1)
  {
    v5 = [_UISearchPresentationController alloc];
    v6 = [(UIPresentationController *)v4 presentedViewController];
    v7 = [(UIPresentationController *)v4 presentingViewController];
    v8 = [(_UISearchPresentationController *)v5 initWithPresentedViewController:v6 presentingViewController:v7];

    v4 = v8;
  }

  return v4;
}

- (void)setContentVisible:(BOOL)a3
{
  v3 = a3;
  v4 = [(UIPopoverPresentationController *)self presentedView];
  [v4 setHidden:!v3];
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