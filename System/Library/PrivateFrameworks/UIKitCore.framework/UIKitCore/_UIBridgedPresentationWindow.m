@interface _UIBridgedPresentationWindow
- (void)_didCreateRootPresentationController;
- (void)_hidePocketCollectorModelFromChildren;
@end

@implementation _UIBridgedPresentationWindow

- (void)_hidePocketCollectorModelFromChildren
{
  v2 = self;
  sub_1891E2200();
}

- (void)_didCreateRootPresentationController
{
  v5.receiver = self;
  v5.super_class = _UIBridgedPresentationWindow;
  [(UIWindow *)&v5 _didCreateRootPresentationController];
  v3 = [(_UIBridgedPresentationWindow *)self shouldDisableRootPresentationAppearanceCallbacks];
  v4 = [(UIWindow *)self _rootPresentationController];
  [v4 set_shouldDisableAppearanceCallbacksForPresentedViewController:v3];
}

@end