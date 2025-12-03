@interface SBSwipeUpFloatingApplicationGestureWorkspaceTransaction
- (id)selectedAppLayoutForGestureRecognizer:(id)recognizer;
@end

@implementation SBSwipeUpFloatingApplicationGestureWorkspaceTransaction

- (id)selectedAppLayoutForGestureRecognizer:(id)recognizer
{
  switcherViewController = [(SBFluidSwitcherGestureWorkspaceTransaction *)self switcherViewController];
  appLayouts = [switcherViewController appLayouts];
  firstObject = [appLayouts firstObject];

  return firstObject;
}

@end