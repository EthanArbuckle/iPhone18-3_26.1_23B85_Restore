@interface _UIContextMenuPresentationAnimation
- (_UIContextMenuPresentationAnimation)initWithUIController:(id)controller;
- (void)performTransition;
- (void)performTransitionFromView:(id)view toView:(id)toView containerView:(id)containerView;
- (void)prepareTransitionToView:(id)view;
- (void)transitionDidEnd:(BOOL)end;
@end

@implementation _UIContextMenuPresentationAnimation

- (_UIContextMenuPresentationAnimation)initWithUIController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = _UIContextMenuPresentationAnimation;
  v6 = [(_UIContextMenuPresentationAnimation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uiController, controller);
  }

  return v7;
}

- (void)prepareTransitionToView:(id)view
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIContextMenuPresentationAnimation.m" lineNumber:26 description:@"prepareTransitionToView: is not implemented."];
}

- (void)performTransition
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIContextMenuPresentationAnimation.m" lineNumber:31 description:@"performTransition is not implemented."];
}

- (void)performTransitionFromView:(id)view toView:(id)toView containerView:(id)containerView
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIContextMenuPresentationAnimation.m" lineNumber:36 description:@"performTransitionFromView:toView:containerView: is not implemented."];
}

- (void)transitionDidEnd:(BOOL)end
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIContextMenuPresentationAnimation.m" lineNumber:46 description:@"transitionDidEnd: is not implemented."];
}

@end