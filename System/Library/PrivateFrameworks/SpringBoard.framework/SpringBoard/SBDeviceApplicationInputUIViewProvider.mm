@interface SBDeviceApplicationInputUIViewProvider
- (id)acquireSystemUIScenePresentingAssertion;
@end

@implementation SBDeviceApplicationInputUIViewProvider

- (id)acquireSystemUIScenePresentingAssertion
{
  systemUIScenesCoordinator = [SBApp systemUIScenesCoordinator];
  inputUISceneController = [systemUIScenesCoordinator inputUISceneController];
  v5 = [inputUISceneController addPresenter:self];

  return v5;
}

@end