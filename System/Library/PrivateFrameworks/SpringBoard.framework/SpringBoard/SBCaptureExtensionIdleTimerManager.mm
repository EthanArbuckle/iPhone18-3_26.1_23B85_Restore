@interface SBCaptureExtensionIdleTimerManager
- (SBCaptureExtensionIdleTimerManager)init;
- (void)cameraViewfinderMonitorSessionDidBeginMovieRecording:(id)recording;
- (void)cameraViewfinderMonitorSessionDidEndMovieRecording:(id)recording;
- (void)invalidate;
@end

@implementation SBCaptureExtensionIdleTimerManager

- (SBCaptureExtensionIdleTimerManager)init
{
  v7.receiver = self;
  v7.super_class = SBCaptureExtensionIdleTimerManager;
  v2 = [(SBCaptureExtensionIdleTimerManager *)&v7 init];
  if (v2)
  {
    v3 = +[SBCameraViewfinderMonitor sharedInstance];
    v4 = [v3 addObserver:v2];
    cameraViewfinderMonitorToken = v2->_cameraViewfinderMonitorToken;
    v2->_cameraViewfinderMonitorToken = v4;
  }

  return v2;
}

- (void)invalidate
{
  v3 = +[SBLockScreenManager sharedInstanceIfExists];
  lockScreenEnvironment = [v3 lockScreenEnvironment];
  idleTimerController = [lockScreenEnvironment idleTimerController];
  [idleTimerController removeIdleTimerDisabledAssertionReason:@"Capture Extension Movie Recording"];

  [(SBCameraViewfinderMonitoring *)self->_cameraViewfinderMonitorToken cancel];
  cameraViewfinderMonitorToken = self->_cameraViewfinderMonitorToken;
  self->_cameraViewfinderMonitorToken = 0;
}

- (void)cameraViewfinderMonitorSessionDidBeginMovieRecording:(id)recording
{
  v5 = +[SBLockScreenManager sharedInstanceIfExists];
  lockScreenEnvironment = [v5 lockScreenEnvironment];
  idleTimerController = [lockScreenEnvironment idleTimerController];
  [idleTimerController addIdleTimerDisabledAssertionReason:@"Capture Extension Movie Recording"];
}

- (void)cameraViewfinderMonitorSessionDidEndMovieRecording:(id)recording
{
  v5 = +[SBLockScreenManager sharedInstanceIfExists];
  lockScreenEnvironment = [v5 lockScreenEnvironment];
  idleTimerController = [lockScreenEnvironment idleTimerController];
  [idleTimerController removeIdleTimerDisabledAssertionReason:@"Capture Extension Movie Recording"];
}

@end