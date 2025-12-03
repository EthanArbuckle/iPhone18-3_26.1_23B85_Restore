@interface SBSLockScreenContentAction(InProcess)
- (void)setApplicationSceneEntity:()InProcess;
- (void)setHostableEntity:()InProcess;
@end

@implementation SBSLockScreenContentAction(InProcess)

- (void)setApplicationSceneEntity:()InProcess
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBInProcessSecureAppAction.m" lineNumber:48 description:@"Can't set an application scene entity on an SBSLockScreenContentAction."];
}

- (void)setHostableEntity:()InProcess
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBInProcessSecureAppAction.m" lineNumber:56 description:@"Can't set an application scene entity on an SBSLockScreenContentAction."];
}

@end