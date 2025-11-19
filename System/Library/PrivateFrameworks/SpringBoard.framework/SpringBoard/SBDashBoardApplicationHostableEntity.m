@interface SBDashBoardApplicationHostableEntity
- (CSCoverSheetViewPresenting)hostingViewController;
- (NSString)applicationBundleIdentifier;
- (NSString)hostedAppBundleIdentifier;
- (SBDashBoardApplicationHostableEntity)initWithApplicationSceneEntity:(id)a3;
- (id)hostingContainerViewController;
- (void)dashBoardHostedAppViewControllerDidFailToActivateApplication:(id)a3;
- (void)sceneHandle:(id)a3 didCreateScene:(id)a4;
- (void)sceneHandle:(id)a3 didDestroyScene:(id)a4;
@end

@implementation SBDashBoardApplicationHostableEntity

- (SBDashBoardApplicationHostableEntity)initWithApplicationSceneEntity:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBDashBoardApplicationHostableEntity;
  v6 = [(SBDashBoardApplicationHostableEntity *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_applicationSceneEntity, a3);
  }

  return v7;
}

- (NSString)applicationBundleIdentifier
{
  v2 = [(SBApplicationSceneEntity *)self->_applicationSceneEntity application];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (CSCoverSheetViewPresenting)hostingViewController
{
  hostedAppViewController = self->_hostedAppViewController;
  if (!hostedAppViewController)
  {
    v4 = [(SBDashBoardHostedAppViewController *)[_SBDashBoardHostedAppEntityViewController alloc] initWithApplicationSceneEntity:self->_applicationSceneEntity];
    [(SBDashBoardHostedAppViewController *)v4 setHostContextProvider:self];
    v5 = self->_hostedAppViewController;
    self->_hostedAppViewController = v4;
    v6 = v4;

    [(SBDashBoardHostedAppViewController *)self->_hostedAppViewController setDelegate:self];
    v7 = [(SBDashBoardHostedAppViewController *)self->_hostedAppViewController applicationSceneHandle];

    [v7 addObserver:self];
    hostedAppViewController = self->_hostedAppViewController;
  }

  return hostedAppViewController;
}

- (id)hostingContainerViewController
{
  v3 = objc_alloc_init(SBDashBoardCameraContainerViewController);
  [(SBDashBoardCameraContainerViewController *)v3 setHostedEntity:self];
  v4 = [(SBDashBoardCameraContainerViewController *)v3 hostedEntityViewController];
  [v4 setHostableEntityContentMode:2];

  return v3;
}

- (void)sceneHandle:(id)a3 didCreateScene:(id)a4
{
  v5 = [(_SBDashBoardHostedAppEntityViewController *)self->_hostedAppViewController entityPresenterDelegate:a3];
  if (objc_opt_respondsToSelector())
  {
    [v5 hostableEntityPresenter:self->_hostedAppViewController didBeginHosting:self];
  }
}

- (void)sceneHandle:(id)a3 didDestroyScene:(id)a4
{
  v5 = [(_SBDashBoardHostedAppEntityViewController *)self->_hostedAppViewController entityPresenterDelegate:a3];
  if (objc_opt_respondsToSelector())
  {
    [v5 hostableEntityPresenter:self->_hostedAppViewController didEndHosting:self];
  }
}

- (void)dashBoardHostedAppViewControllerDidFailToActivateApplication:(id)a3
{
  v4 = [(_SBDashBoardHostedAppEntityViewController *)self->_hostedAppViewController entityPresenterDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 hostableEntityPresenter:self->_hostedAppViewController didFailToActivate:self];
  }
}

- (NSString)hostedAppBundleIdentifier
{
  v2 = [(SBApplicationSceneEntity *)self->_applicationSceneEntity application];
  v3 = [v2 bundleIdentifier];

  return v3;
}

@end