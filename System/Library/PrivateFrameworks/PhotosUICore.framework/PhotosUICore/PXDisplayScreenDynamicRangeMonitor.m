@interface PXDisplayScreenDynamicRangeMonitor
- (BOOL)_currentlySupportsHDRForScreen:(id)a3;
- (BOOL)_isHDRCurrentlySupportedForScreen:(id)a3;
- (BOOL)_isHDRPotentiallySupportedForScreen:(id)a3;
- (PXDisplayScreenDynamicRangeMonitor)initWithAutomaticApplicationStateTracking:(BOOL)a3;
- (void)_resumeTimer;
- (void)_teardownTimer;
- (void)_updateScreenSupportHDR;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setScreenSupportsHDR:(BOOL)a3;
- (void)startMonitoringWithScreenProvider:(id)a3;
- (void)stopMonitoring;
@end

@implementation PXDisplayScreenDynamicRangeMonitor

- (BOOL)_currentlySupportsHDRForScreen:(id)a3
{
  v4 = a3;
  v5 = [(PXDisplayScreenDynamicRangeMonitor *)self _isHDRPotentiallySupportedForScreen:v4]|| [(PXDisplayScreenDynamicRangeMonitor *)self _isHDRCurrentlySupportedForScreen:v4];

  return v5;
}

- (void)_updateScreenSupportHDR
{
  v3 = [(PXDisplayScreenDynamicRangeMonitor *)self screenProvider];
  v4 = v3[2]();

  v5 = [(PXDisplayScreenDynamicRangeMonitor *)self _currentlySupportsHDRForScreen:v4];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__PXDisplayScreenDynamicRangeMonitor__updateScreenSupportHDR__block_invoke;
  v6[3] = &unk_1E774C670;
  v6[4] = self;
  v7 = v5;
  [(PXDisplayScreenDynamicRangeMonitor *)self performChanges:v6];
}

- (BOOL)_isHDRCurrentlySupportedForScreen:(id)a3
{
  [a3 currentEDRHeadroom];
  v4 = v3;
  [MEMORY[0x1E69B3AB0] overrideDisplayHeadroom];
  if (v5 >= 1.0)
  {
    v4 = v5;
  }

  [MEMORY[0x1E69B3AB0] thresholdDisplayHeadroom];
  return v4 > v6;
}

- (BOOL)_isHDRPotentiallySupportedForScreen:(id)a3
{
  [a3 potentialEDRHeadroom];
  v4 = v3;
  [MEMORY[0x1E69B3AB0] overrideDisplayHeadroom];
  if (v5 >= 1.0)
  {
    v4 = v5;
  }

  [MEMORY[0x1E69B3AB0] thresholdDisplayHeadroom];
  if (v4 <= v6)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AE30] processInfo];
    v8 = [v7 isLowPowerModeEnabled] ^ 1;
  }

  return v8;
}

- (void)_teardownTimer
{
  [(NSTimer *)self->_displayEDRMonitorTimer invalidate];
  displayEDRMonitorTimer = self->_displayEDRMonitorTimer;
  self->_displayEDRMonitorTimer = 0;
}

- (void)_resumeTimer
{
  if (!self->_displayEDRMonitorTimer)
  {
    v3 = [MEMORY[0x1E695DFF0] px_timerWithTimeInterval:self weakTarget:sel__monitorDisplayEDRHeadroom_ selector:0 userInfo:1 repeats:0.1];
    displayEDRMonitorTimer = self->_displayEDRMonitorTimer;
    self->_displayEDRMonitorTimer = v3;

    [(NSTimer *)self->_displayEDRMonitorTimer setTolerance:0.1];
    v5 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [v5 addTimer:self->_displayEDRMonitorTimer forMode:*MEMORY[0x1E695DA28]];
  }
}

- (void)setScreenSupportsHDR:(BOOL)a3
{
  if (self->_screenSupportsHDR != a3)
  {
    self->_screenSupportsHDR = a3;
    [(PXDisplayScreenDynamicRangeMonitor *)self signalChange:1];
  }
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  if (ApplicationStateContext_114145 == a5)
  {
    v6 = [PXApplicationState sharedState:a3];
    v7 = [v6 visibilityState];

    if (v7 == 3)
    {
      if ([(PXDisplayScreenDynamicRangeMonitor *)self isMonitoring])
      {

        [(PXDisplayScreenDynamicRangeMonitor *)self _teardownTimer];
      }
    }

    else if (v7 == 1 && [(PXDisplayScreenDynamicRangeMonitor *)self isMonitoring])
    {

      [(PXDisplayScreenDynamicRangeMonitor *)self _resumeTimer];
    }
  }
}

- (void)stopMonitoring
{
  [(PXDisplayScreenDynamicRangeMonitor *)self _teardownTimer];
  screenProvider = self->_screenProvider;
  self->_screenProvider = 0;

  self->_isMonitoring = 0;
}

- (void)startMonitoringWithScreenProvider:(id)a3
{
  v6 = a3;
  if (![(PXDisplayScreenDynamicRangeMonitor *)self isMonitoring])
  {
    self->_isMonitoring = 1;
    v4 = [v6 copy];
    screenProvider = self->_screenProvider;
    self->_screenProvider = v4;

    [(PXDisplayScreenDynamicRangeMonitor *)self _updateScreenSupportHDR];
    [(PXDisplayScreenDynamicRangeMonitor *)self _resumeTimer];
  }
}

- (PXDisplayScreenDynamicRangeMonitor)initWithAutomaticApplicationStateTracking:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = PXDisplayScreenDynamicRangeMonitor;
  v4 = [(PXDisplayScreenDynamicRangeMonitor *)&v8 init];
  if (v4)
  {
    v5 = !v3;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = +[PXApplicationState sharedState];
    [v6 registerChangeObserver:v4 context:ApplicationStateContext_114145];
  }

  return v4;
}

@end