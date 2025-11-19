@interface SBSUIRemoteAlertSceneClientComponent
- (void)scene:(id)a3 didUpdateClientSettings:(id)a4;
@end

@implementation SBSUIRemoteAlertSceneClientComponent

- (void)scene:(id)a3 didUpdateClientSettings:(id)a4
{
  v5 = a4;
  v6 = [v5 transitionContext];
  v9 = [v6 remoteAlertActivationContext];

  v7 = [v5 transitionContext];

  v8 = [v7 remoteAlertConfigurationContext];

  if (v9)
  {
    [(SBSUIRemoteAlertSceneClientComponent *)self setActivationContext:v9];
  }

  if (v8)
  {
    [(SBSUIRemoteAlertSceneClientComponent *)self setConfigurationContext:v8];
  }
}

@end