@interface SBDeviceApplicationSceneView(ClassicSupport)
@end

@implementation SBDeviceApplicationSceneView(ClassicSupport)

- (void)_layoutLiveHostView:()ClassicSupport .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDeviceApplicationSceneView.m" lineNumber:894 description:@"unexpected host view!"];
}

@end