@interface PLCameraAppWatcher
- (BOOL)isCameraRunning;
- (PLCameraAppWatcher)init;
- (void)_cameraForegroundStateDidChangeTo:(BOOL)a3;
- (void)dealloc;
@end

@implementation PLCameraAppWatcher

- (BOOL)isCameraRunning
{
  os_unfair_lock_lock(&self->_isCameraRunningLock);
  isCameraRunning = self->_isCameraRunning;
  os_unfair_lock_unlock(&self->_isCameraRunningLock);
  return isCameraRunning;
}

- (void)_cameraForegroundStateDidChangeTo:(BOOL)a3
{
  os_unfair_lock_lock(&self->_isCameraRunningLock);
  self->_isCameraRunning = a3;

  os_unfair_lock_unlock(&self->_isCameraRunningLock);
}

- (void)dealloc
{
  v3 = +[PLForegroundMonitor sharedInstance];
  [v3 stopMonitoring:self->_foregroundMonitorIdentifier];

  v4.receiver = self;
  v4.super_class = PLCameraAppWatcher;
  [(PLCameraAppWatcher *)&v4 dealloc];
}

- (PLCameraAppWatcher)init
{
  v12.receiver = self;
  v12.super_class = PLCameraAppWatcher;
  v2 = [(PLCameraAppWatcher *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_isCameraRunningLock._os_unfair_lock_opaque = 0;
    objc_initWeak(&location, v2);
    v4 = +[PLForegroundMonitor sharedInstance];
    v5 = PLCameraBundleIdentifiers();
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __26__PLCameraAppWatcher_init__block_invoke;
    v9[3] = &unk_1E756FD38;
    objc_copyWeak(&v10, &location);
    v6 = [v4 startMonitoringBundleIdentifiers:v5 block:v9];
    foregroundMonitorIdentifier = v3->_foregroundMonitorIdentifier;
    v3->_foregroundMonitorIdentifier = v6;

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __26__PLCameraAppWatcher_init__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cameraForegroundStateDidChangeTo:a3];
}

@end