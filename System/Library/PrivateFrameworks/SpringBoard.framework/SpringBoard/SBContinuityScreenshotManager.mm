@interface SBContinuityScreenshotManager
- (SBContinuityScreenshotManagerSceneManagerProvider)sceneManagerProvider;
- (void)noteCapturedScreenshot;
@end

@implementation SBContinuityScreenshotManager

- (void)noteCapturedScreenshot
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBContinuityScreenshotManager noteCapturedScreenshot]"];
  [v1 handleFailureInFunction:v0 file:@"SBContinuityScreenshotManager.m" lineNumber:17 description:@"this call must be made on the main thread"];
}

- (SBContinuityScreenshotManagerSceneManagerProvider)sceneManagerProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneManagerProvider);

  return WeakRetained;
}

@end