@interface SBRotateScenesWorkspaceTransaction
- (BOOL)_isOrientationChanging;
- (unint64_t)_concurrentOverlayDismissalOptions;
- (unint64_t)_serialOverlayPreDismissalOptions;
@end

@implementation SBRotateScenesWorkspaceTransaction

- (BOOL)_isOrientationChanging
{
  transitionRequest = [(SBWorkspaceTransaction *)self transitionRequest];
  applicationContext = [transitionRequest applicationContext];

  previousLayoutState = [applicationContext previousLayoutState];
  interfaceOrientation = [previousLayoutState interfaceOrientation];

  layoutState = [applicationContext layoutState];
  interfaceOrientation2 = [layoutState interfaceOrientation];

  return interfaceOrientation != interfaceOrientation2;
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

  transitionRequest = [(SBWorkspaceTransaction *)self transitionRequest];
  applicationContext = [transitionRequest applicationContext];

  previousLayoutState = [applicationContext previousLayoutState];
  interfaceOrientation = [previousLayoutState interfaceOrientation];

  layoutState = [applicationContext layoutState];
  interfaceOrientation2 = [layoutState interfaceOrientation];

  if ((interfaceOrientation - 3) > 1 || (interfaceOrientation2 - 1) > 1)
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