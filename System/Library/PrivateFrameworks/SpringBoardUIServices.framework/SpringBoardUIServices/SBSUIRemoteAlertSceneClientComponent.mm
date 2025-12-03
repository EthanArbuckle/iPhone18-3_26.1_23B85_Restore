@interface SBSUIRemoteAlertSceneClientComponent
- (void)scene:(id)scene didUpdateClientSettings:(id)settings;
@end

@implementation SBSUIRemoteAlertSceneClientComponent

- (void)scene:(id)scene didUpdateClientSettings:(id)settings
{
  settingsCopy = settings;
  transitionContext = [settingsCopy transitionContext];
  remoteAlertActivationContext = [transitionContext remoteAlertActivationContext];

  transitionContext2 = [settingsCopy transitionContext];

  remoteAlertConfigurationContext = [transitionContext2 remoteAlertConfigurationContext];

  if (remoteAlertActivationContext)
  {
    [(SBSUIRemoteAlertSceneClientComponent *)self setActivationContext:remoteAlertActivationContext];
  }

  if (remoteAlertConfigurationContext)
  {
    [(SBSUIRemoteAlertSceneClientComponent *)self setConfigurationContext:remoteAlertConfigurationContext];
  }
}

@end