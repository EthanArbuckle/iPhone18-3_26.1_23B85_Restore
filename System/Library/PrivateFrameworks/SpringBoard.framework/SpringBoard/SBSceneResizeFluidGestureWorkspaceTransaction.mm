@interface SBSceneResizeFluidGestureWorkspaceTransaction
- (BOOL)isLiveResize;
- (id)layoutState;
- (void)_beginWithGesture:(id)a3;
- (void)_willAddChildTransaction:(id)a3;
@end

@implementation SBSceneResizeFluidGestureWorkspaceTransaction

- (id)layoutState
{
  v2 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self switcherViewController];
  v3 = [v2 layoutContext];
  v4 = [v3 layoutState];

  return v4;
}

- (void)_beginWithGesture:(id)a3
{
  v4 = a3;
  v5 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self switcherController];
  v6 = [v5 windowManagementContext];
  v7 = [v6 isFlexibleWindowingEnabled];

  if (!v7)
  {
    v10 = [(SBSceneResizeFluidGestureWorkspaceTransaction *)self layoutState];
    v11 = [v10 appLayout];
    goto LABEL_5;
  }

  v8 = objc_opt_class();
  v9 = [(SBSystemGestureWorkspaceTransaction *)self gestureRecognizer];
  v10 = SBSafeCast(v8, v9);

  if (v10)
  {
    v11 = [v10 splitPairAppLayout];
LABEL_5:
    v12 = v11;
    [(SBFluidSwitcherGestureWorkspaceTransaction *)self setSelectedAppLayout:v11];
  }

  v13.receiver = self;
  v13.super_class = SBSceneResizeFluidGestureWorkspaceTransaction;
  [(SBFluidSwitcherGestureWorkspaceTransaction *)&v13 _beginWithGesture:v4];
}

- (BOOL)isLiveResize
{
  v2 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self switcherController];
  v3 = [v2 windowManagementContext];
  v4 = [v3 isFlexibleWindowingEnabled];

  return v4;
}

- (void)_willAddChildTransaction:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v4;
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