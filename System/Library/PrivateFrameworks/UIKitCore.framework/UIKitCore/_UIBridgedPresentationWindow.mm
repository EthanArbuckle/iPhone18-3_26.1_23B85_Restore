@interface _UIBridgedPresentationWindow
- (void)_didCreateRootPresentationController;
- (void)_hidePocketCollectorModelFromChildren;
@end

@implementation _UIBridgedPresentationWindow

- (void)_hidePocketCollectorModelFromChildren
{
  selfCopy = self;
  sub_1891E2200();
}

- (void)_didCreateRootPresentationController
{
  v5.receiver = self;
  v5.super_class = _UIBridgedPresentationWindow;
  [(UIWindow *)&v5 _didCreateRootPresentationController];
  shouldDisableRootPresentationAppearanceCallbacks = [(_UIBridgedPresentationWindow *)self shouldDisableRootPresentationAppearanceCallbacks];
  _rootPresentationController = [(UIWindow *)self _rootPresentationController];
  [_rootPresentationController set_shouldDisableAppearanceCallbacksForPresentedViewController:shouldDisableRootPresentationAppearanceCallbacks];
}

@end