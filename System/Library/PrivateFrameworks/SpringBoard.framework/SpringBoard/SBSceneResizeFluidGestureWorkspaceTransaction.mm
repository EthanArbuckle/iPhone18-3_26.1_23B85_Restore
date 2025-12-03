@interface SBSceneResizeFluidGestureWorkspaceTransaction
- (BOOL)isLiveResize;
- (id)layoutState;
- (void)_beginWithGesture:(id)gesture;
- (void)_willAddChildTransaction:(id)transaction;
@end

@implementation SBSceneResizeFluidGestureWorkspaceTransaction

- (id)layoutState
{
  switcherViewController = [(SBFluidSwitcherGestureWorkspaceTransaction *)self switcherViewController];
  layoutContext = [switcherViewController layoutContext];
  layoutState = [layoutContext layoutState];

  return layoutState;
}

- (void)_beginWithGesture:(id)gesture
{
  gestureCopy = gesture;
  switcherController = [(SBFluidSwitcherGestureWorkspaceTransaction *)self switcherController];
  windowManagementContext = [switcherController windowManagementContext];
  isFlexibleWindowingEnabled = [windowManagementContext isFlexibleWindowingEnabled];

  if (!isFlexibleWindowingEnabled)
  {
    layoutState = [(SBSceneResizeFluidGestureWorkspaceTransaction *)self layoutState];
    appLayout = [layoutState appLayout];
    goto LABEL_5;
  }

  v8 = objc_opt_class();
  gestureRecognizer = [(SBSystemGestureWorkspaceTransaction *)self gestureRecognizer];
  layoutState = SBSafeCast(v8, gestureRecognizer);

  if (layoutState)
  {
    appLayout = [layoutState splitPairAppLayout];
LABEL_5:
    v12 = appLayout;
    [(SBFluidSwitcherGestureWorkspaceTransaction *)self setSelectedAppLayout:appLayout];
  }

  v13.receiver = self;
  v13.super_class = SBSceneResizeFluidGestureWorkspaceTransaction;
  [(SBFluidSwitcherGestureWorkspaceTransaction *)&v13 _beginWithGesture:gestureCopy];
}

- (BOOL)isLiveResize
{
  switcherController = [(SBFluidSwitcherGestureWorkspaceTransaction *)self switcherController];
  windowManagementContext = [switcherController windowManagementContext];
  isFlexibleWindowingEnabled = [windowManagementContext isFlexibleWindowingEnabled];

  return isFlexibleWindowingEnabled;
}

- (void)_willAddChildTransaction:(id)transaction
{
  transactionCopy = transaction;
  v5 = objc_opt_class();
  v6 = transactionCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    [v8 addObserver:self];
    [v8 setOptions:2];
  }

  v9.receiver = self;
  v9.super_class = SBSceneResizeFluidGestureWorkspaceTransaction;
  [(SBSceneResizeFluidGestureWorkspaceTransaction *)&v9 _willAddChildTransaction:v6];
}

@end