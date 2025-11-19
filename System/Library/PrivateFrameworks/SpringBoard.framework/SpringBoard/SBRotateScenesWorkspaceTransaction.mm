@interface SBRotateScenesWorkspaceTransaction
- (BOOL)_isOrientationChanging;
- (unint64_t)_concurrentOverlayDismissalOptions;
- (unint64_t)_serialOverlayPreDismissalOptions;
@end

@implementation SBRotateScenesWorkspaceTransaction

- (BOOL)_isOrientationChanging
{
  v2 = [(SBWorkspaceTransaction *)self transitionRequest];
  v3 = [v2 applicationContext];

  v4 = [v3 previousLayoutState];
  v5 = [v4 interfaceOrientation];

  v6 = [v3 layoutState];
  v7 = [v6 interfaceOrientation];

  return v5 != v7;
}

- (unint64_t)_serialOverlayPreDismissalOptions
{
  if ([(SBRotateScenesWorkspaceTransaction *)self _isOrientationChanging])
  {
    return -110;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)_concurrentOverlayDismissalOptions
{
  if (![(SBRotateScenesWorkspaceTransaction *)self _isOrientationChanging])
  {
    return 0;
  }

  v3 = [(SBWorkspaceTransaction *)self transitionRequest];
  v4 = [v3 applicationContext];

  v5 = [v4 previousLayoutState];
  v6 = [v5 interfaceOrientation];

  v7 = [v4 layoutState];
  v8 = [v7 interfaceOrientation];

  if ((v6 - 3) > 1 || (v8 - 1) > 1)
  {
    v11.receiver = self;
    v11.super_class = SBRotateScenesWorkspaceTransaction;
    v9 = [(SBAppToAppWorkspaceTransaction *)&v11 _concurrentOverlayDismissalOptions]& 0xFFFFFFFFFFFFFFBELL;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SBRotateScenesWorkspaceTransaction;
    v9 = [(SBAppToAppWorkspaceTransaction *)&v12 _concurrentOverlayDismissalOptions]| 1;
  }

  return v9;
}

@end