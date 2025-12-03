@interface PXDisplayScreenDynamicRangeMonitor
- (BOOL)_currentlySupportsHDRForScreen:(id)screen;
- (BOOL)_isHDRCurrentlySupportedForScreen:(id)screen;
- (BOOL)_isHDRPotentiallySupportedForScreen:(id)screen;
- (PXDisplayScreenDynamicRangeMonitor)initWithAutomaticApplicationStateTracking:(BOOL)tracking;
- (void)_resumeTimer;
- (void)_teardownTimer;
- (void)_updateScreenSupportHDR;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setScreenSupportsHDR:(BOOL)r;
- (void)startMonitoringWithScreenProvider:(id)provider;
- (void)stopMonitoring;
@end

@implementation PXDisplayScreenDynamicRangeMonitor

- (BOOL)_currentlySupportsHDRForScreen:(id)screen
{
  screenCopy = screen;
  v5 = [(PXDisplayScreenDynamicRangeMonitor *)self _isHDRPotentiallySupportedForScreen:screenCopy]|| [(PXDisplayScreenDynamicRangeMonitor *)self _isHDRCurrentlySupportedForScreen:screenCopy];

  return v5;
}

- (void)_updateScreenSupportHDR
{
  screenProvider = [(PXDisplayScreenDynamicRangeMonitor *)self screenProvider];
  v4 = screenProvider[2]();

  v5 = [(PXDisplayScreenDynamicRangeMonitor *)self _currentlySupportsHDRForScreen:v4];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__PXDisplayScreenDynamicRangeMonitor__updateScreenSupportHDR__block_invoke;
  v6[3] = &unk_1E774C670;
  v6[4] = self;
  v7 = v5;
  [(PXDisplayScreenDynamicRangeMonitor *)self performChanges:v6];
}

- (BOOL)_isHDRCurrentlySupportedForScreen:(id)screen
{
  [screen currentEDRHeadroom];
  v4 = v3;
  [MEMORY[0x1E69B3AB0] overrideDisplayHeadroom];
  if (v5 >= 1.0)
  {
    v4 = v5;
  }

  [MEMORY[0x1E69B3AB0] thresholdDisplayHeadroom];
  return v4 > v6;
}

- (BOOL)_isHDRPotentiallySupportedForScreen:(id)screen
{
  [screen potentialEDRHeadroom];
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
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    v8 = [processInfo isLowPowerModeEnabled] ^ 1;
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
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [mainRunLoop addTimer:self->_displayEDRMonitorTimer forMode:*MEMORY[0x1E695DA28]];
  }
}

- (void)setScreenSupportsHDR:(BOOL)r
{
  if (self->_screenSupportsHDR != r)
  {
    self->_screenSupportsHDR = r;
    [(PXDisplayScreenDynamicRangeMonitor *)self signalChange:1];
  }
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if (ApplicationStateContext_114145 == context)
  {
    v6 = [PXApplicationState sharedState:observable];
    visibilityState = [v6 visibilityState];

    if (visibilityState == 3)
    {
      if ([(PXDisplayScreenDynamicRangeMonitor *)self isMonitoring])
      {

        [(PXDisplayScreenDynamicRangeMonitor *)self _teardownTimer];
      }
    }

    else if (visibilityState == 1 && [(PXDisplayScreenDynamicRangeMonitor *)self isMonitoring])
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

- (void)startMonitoringWithScreenProvider:(id)provider
{
  providerCopy = provider;
  if (![(PXDisplayScreenDynamicRangeMonitor *)self isMonitoring])
  {
    self->_isMonitoring = 1;
    v4 = [providerCopy copy];
    screenProvider = self->_screenProvider;
    self->_screenProvider = v4;

    [(PXDisplayScreenDynamicRangeMonitor *)self _updateScreenSupportHDR];
    [(PXDisplayScreenDynamicRangeMonitor *)self _resumeTimer];
  }
}

- (PXDisplayScreenDynamicRangeMonitor)initWithAutomaticApplicationStateTracking:(BOOL)tracking
{
  trackingCopy = tracking;
  v8.receiver = self;
  v8.super_class = PXDisplayScreenDynamicRangeMonitor;
  v4 = [(PXDisplayScreenDynamicRangeMonitor *)&v8 init];
  if (v4)
  {
    v5 = !trackingCopy;
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