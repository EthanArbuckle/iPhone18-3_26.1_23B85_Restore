@interface SBUIController(SBUIAnimationController)
@end

@implementation SBUIController(SBUIAnimationController)

+ (void)zoomViewForDeviceApplicationSceneHandle:()SBUIAnimationController displayConfiguration:interfaceOrientation:snapshot:snapshotSize:statusBarDescriptor:decodeImage:hasOrientationMismatchForClassicApp:customContainerBounds:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUIController+SBUIAnimationController.m" lineNumber:297 description:{@"Invalid parameter not satisfying: %@", @"!snapshot || CGSizeEqualToSize([snapshot referenceSize], snapshotSize)"}];
}

@end