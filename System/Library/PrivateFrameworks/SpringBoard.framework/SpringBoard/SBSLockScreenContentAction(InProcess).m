@interface SBSLockScreenContentAction(InProcess)
- (void)setApplicationSceneEntity:()InProcess;
- (void)setHostableEntity:()InProcess;
@end

@implementation SBSLockScreenContentAction(InProcess)

- (void)setApplicationSceneEntity:()InProcess
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"SBInProcessSecureAppAction.m" lineNumber:48 description:@"Can't set an application scene entity on an SBSLockScreenContentAction."];
}

- (void)setHostableEntity:()InProcess
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"SBInProcessSecureAppAction.m" lineNumber:56 description:@"Can't set an application scene entity on an SBSLockScreenContentAction."];
}

@end