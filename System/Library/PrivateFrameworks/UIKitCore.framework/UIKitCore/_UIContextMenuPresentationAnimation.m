@interface _UIContextMenuPresentationAnimation
- (_UIContextMenuPresentationAnimation)initWithUIController:(id)a3;
- (void)performTransition;
- (void)performTransitionFromView:(id)a3 toView:(id)a4 containerView:(id)a5;
- (void)prepareTransitionToView:(id)a3;
- (void)transitionDidEnd:(BOOL)a3;
@end

@implementation _UIContextMenuPresentationAnimation

- (_UIContextMenuPresentationAnimation)initWithUIController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _UIContextMenuPresentationAnimation;
  v6 = [(_UIContextMenuPresentationAnimation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uiController, a3);
  }

  return v7;
}

- (void)prepareTransitionToView:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"_UIContextMenuPresentationAnimation.m" lineNumber:26 description:@"prepareTransitionToView: is not implemented."];
}

- (void)performTransition
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UIContextMenuPresentationAnimation.m" lineNumber:31 description:@"performTransition is not implemented."];
}

- (void)performTransitionFromView:(id)a3 toView:(id)a4 containerView:(id)a5
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"_UIContextMenuPresentationAnimation.m" lineNumber:36 description:@"performTransitionFromView:toView:containerView: is not implemented."];
}

- (void)transitionDidEnd:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"_UIContextMenuPresentationAnimation.m" lineNumber:46 description:@"transitionDidEnd: is not implemented."];
}

@end