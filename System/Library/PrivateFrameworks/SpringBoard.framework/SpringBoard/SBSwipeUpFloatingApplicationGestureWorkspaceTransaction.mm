@interface SBSwipeUpFloatingApplicationGestureWorkspaceTransaction
- (id)selectedAppLayoutForGestureRecognizer:(id)a3;
@end

@implementation SBSwipeUpFloatingApplicationGestureWorkspaceTransaction

- (id)selectedAppLayoutForGestureRecognizer:(id)a3
{
  v3 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self switcherViewController];
  v4 = [v3 appLayouts];
  v5 = [v4 firstObject];

  return v5;
}

@end