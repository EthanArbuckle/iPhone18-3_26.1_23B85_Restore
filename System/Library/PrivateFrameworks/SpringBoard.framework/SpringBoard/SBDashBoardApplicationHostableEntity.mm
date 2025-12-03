@interface SBDashBoardApplicationHostableEntity
- (CSCoverSheetViewPresenting)hostingViewController;
- (NSString)applicationBundleIdentifier;
- (NSString)hostedAppBundleIdentifier;
- (SBDashBoardApplicationHostableEntity)initWithApplicationSceneEntity:(id)entity;
- (id)hostingContainerViewController;
- (void)dashBoardHostedAppViewControllerDidFailToActivateApplication:(id)application;
- (void)sceneHandle:(id)handle didCreateScene:(id)scene;
- (void)sceneHandle:(id)handle didDestroyScene:(id)scene;
@end

@implementation SBDashBoardApplicationHostableEntity

- (SBDashBoardApplicationHostableEntity)initWithApplicationSceneEntity:(id)entity
{
  entityCopy = entity;
  v9.receiver = self;
  v9.super_class = SBDashBoardApplicationHostableEntity;
  v6 = [(SBDashBoardApplicationHostableEntity *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_applicationSceneEntity, entity);
  }

  return v7;
}

- (NSString)applicationBundleIdentifier
{
  application = [(SBApplicationSceneEntity *)self->_applicationSceneEntity application];
  bundleIdentifier = [application bundleIdentifier];

  return bundleIdentifier;
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
    applicationSceneHandle = [(SBDashBoardHostedAppViewController *)self->_hostedAppViewController applicationSceneHandle];

    [applicationSceneHandle addObserver:self];
    hostedAppViewController = self->_hostedAppViewController;
  }

  return hostedAppViewController;
}

- (id)hostingContainerViewController
{
  v3 = objc_alloc_init(SBDashBoardCameraContainerViewController);
  [(SBDashBoardCameraContainerViewController *)v3 setHostedEntity:self];
  hostedEntityViewController = [(SBDashBoardCameraContainerViewController *)v3 hostedEntityViewController];
  [hostedEntityViewController setHostableEntityContentMode:2];

  return v3;
}

- (void)sceneHandle:(id)handle didCreateScene:(id)scene
{
  v5 = [(_SBDashBoardHostedAppEntityViewController *)self->_hostedAppViewController entityPresenterDelegate:handle];
  if (objc_opt_respondsToSelector())
  {
    [v5 hostableEntityPresenter:self->_hostedAppViewController didBeginHosting:self];
  }
}

- (void)sceneHandle:(id)handle didDestroyScene:(id)scene
{
  v5 = [(_SBDashBoardHostedAppEntityViewController *)self->_hostedAppViewController entityPresenterDelegate:handle];
  if (objc_opt_respondsToSelector())
  {
    [v5 hostableEntityPresenter:self->_hostedAppViewController didEndHosting:self];
  }
}

- (void)dashBoardHostedAppViewControllerDidFailToActivateApplication:(id)application
{
  entityPresenterDelegate = [(_SBDashBoardHostedAppEntityViewController *)self->_hostedAppViewController entityPresenterDelegate];
  if (objc_opt_respondsToSelector())
  {
    [entityPresenterDelegate hostableEntityPresenter:self->_hostedAppViewController didFailToActivate:self];
  }
}

- (NSString)hostedAppBundleIdentifier
{
  application = [(SBApplicationSceneEntity *)self->_applicationSceneEntity application];
  bundleIdentifier = [application bundleIdentifier];

  return bundleIdentifier;
}

@end