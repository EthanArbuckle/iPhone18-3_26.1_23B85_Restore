@interface _SBKeyboardFocusUIKitDependency
- (SBInputUISceneController)inputUISceneController;
@end

@implementation _SBKeyboardFocusUIKitDependency

- (SBInputUISceneController)inputUISceneController
{
  v2 = [SBApp systemUIScenesCoordinator];
  v3 = [v2 inputUISceneController];

  return v3;
}

@end