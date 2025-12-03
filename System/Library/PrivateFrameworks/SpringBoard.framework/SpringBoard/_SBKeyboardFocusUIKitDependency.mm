@interface _SBKeyboardFocusUIKitDependency
- (SBInputUISceneController)inputUISceneController;
@end

@implementation _SBKeyboardFocusUIKitDependency

- (SBInputUISceneController)inputUISceneController
{
  systemUIScenesCoordinator = [SBApp systemUIScenesCoordinator];
  inputUISceneController = [systemUIScenesCoordinator inputUISceneController];

  return inputUISceneController;
}

@end