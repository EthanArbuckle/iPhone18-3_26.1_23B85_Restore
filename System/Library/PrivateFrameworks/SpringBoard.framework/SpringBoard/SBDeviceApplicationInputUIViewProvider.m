@interface SBDeviceApplicationInputUIViewProvider
- (id)acquireSystemUIScenePresentingAssertion;
@end

@implementation SBDeviceApplicationInputUIViewProvider

- (id)acquireSystemUIScenePresentingAssertion
{
  v3 = [SBApp systemUIScenesCoordinator];
  v4 = [v3 inputUISceneController];
  v5 = [v4 addPresenter:self];

  return v5;
}

@end