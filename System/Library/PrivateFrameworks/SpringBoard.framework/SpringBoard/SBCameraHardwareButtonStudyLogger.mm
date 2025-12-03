@interface SBCameraHardwareButtonStudyLogger
- (SBCameraHardwareButtonStudyLogger)init;
- (void)_handleApplicationProcessStateDidChangeNotification:(id)notification;
- (void)_startProcessMonitor;
- (void)_stopProcessMonitor;
- (void)dealloc;
- (void)logButtonEvent:(__IOHIDEvent *)event;
- (void)logPocketState:(int64_t)state;
@end

@implementation SBCameraHardwareButtonStudyLogger

- (SBCameraHardwareButtonStudyLogger)init
{
  mEMORY[0x277D6A798] = [MEMORY[0x277D6A798] sharedInstance];
  isEnabled = [mEMORY[0x277D6A798] isEnabled];

  if (isEnabled)
  {
    v13.receiver = self;
    v13.super_class = SBCameraHardwareButtonStudyLogger;
    v5 = [(SBCameraHardwareButtonStudyLogger *)&v13 init];
    if (v5)
    {
      v6 = objc_alloc(MEMORY[0x277D6A7A0]);
      v7 = objc_alloc(MEMORY[0x277D6A790]);
      mEMORY[0x277D6A798]2 = [MEMORY[0x277D6A798] sharedInstance];
      v9 = [v7 initWithLogger:mEMORY[0x277D6A798]2];
      v10 = [v6 initWithLogger:v9];
      logger = v5->_logger;
      v5->_logger = v10;

      [(SLGNotificationActivatedLogger *)v5->_logger addBeginNotification:@"SBStudyLogBeginCameraButtonLogging" endNotification:@"SBStudyLogEndCameraButtonLogging"];
      [(SLGNotificationActivatedLogger *)v5->_logger setActivationHandler:&__block_literal_global_337];
      [(SLGNotificationActivatedLogger *)v5->_logger setDeactivationHandler:&__block_literal_global_25_5];
      [(SBCameraHardwareButtonStudyLogger *)v5 _startProcessMonitor];
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

id __41__SBCameraHardwareButtonStudyLogger_init__block_invoke_2()
{
  v11[1] = *MEMORY[0x277D85DE8];
  v0 = [SBApp rawDeviceOrientationIgnoringOrientationLocks];
  v1 = [SBApp orientationAggregator];
  v2 = [v1 activeInterfaceOrientation];

  v10 = @"orientation";
  v8[0] = @"interfaceOrientation";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:v2];
  v8[1] = @"deviceOrientation";
  v9[0] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:v0];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v11[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  return v6;
}

- (void)logButtonEvent:(__IOHIDEvent *)event
{
  [(SLGNotificationActivatedLogger *)self->_logger setActive:1];
  logger = self->_logger;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__SBCameraHardwareButtonStudyLogger_logButtonEvent___block_invoke;
  v6[3] = &__block_descriptor_40_e5__8__0l;
  v6[4] = event;
  [(SLGNotificationActivatedLogger *)logger logBlock:v6 domain:@"com.apple.SpringBoard.cameraButton"];
}

id __52__SBCameraHardwareButtonStudyLogger_logButtonEvent___block_invoke()
{
  v13[1] = *MEMORY[0x277D85DE8];
  v0 = IOHIDEventGetIntegerValue() != 0;
  v1 = [SBApp rawDeviceOrientationIgnoringOrientationLocks];
  v2 = [SBApp orientationAggregator];
  v3 = [v2 activeInterfaceOrientation];

  v12 = @"cameraButtonEvent";
  v10[0] = @"down";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:v0];
  v11[0] = v4;
  v10[1] = @"interfaceOrientation";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:v3];
  v11[1] = v5;
  v10[2] = @"deviceOrientation";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:v1];
  v11[2] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  return v8;
}

- (void)logPocketState:(int64_t)state
{
  logger = self->_logger;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__SBCameraHardwareButtonStudyLogger_logPocketState___block_invoke;
  v4[3] = &__block_descriptor_40_e5__8__0l;
  v4[4] = state;
  [(SLGNotificationActivatedLogger *)logger logBlock:v4 domain:@"com.apple.SpringBoard.cameraButton"];
}

id __52__SBCameraHardwareButtonStudyLogger_logPocketState___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"pocketState";
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 32)];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)dealloc
{
  [(SLGNotificationActivatedLogger *)self->_logger invalidate];
  [(SBCameraHardwareButtonStudyLogger *)self _stopProcessMonitor];
  v3.receiver = self;
  v3.super_class = SBCameraHardwareButtonStudyLogger;
  [(SBCameraHardwareButtonStudyLogger *)&v3 dealloc];
}

- (void)_handleApplicationProcessStateDidChangeNotification:(id)notification
{
  object = [notification object];
  processState = [object processState];
  if ([processState isForeground])
  {
    logger = self->_logger;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __89__SBCameraHardwareButtonStudyLogger__handleApplicationProcessStateDidChangeNotification___block_invoke;
    v7[3] = &unk_2783A91C8;
    v8 = object;
    [(SLGNotificationActivatedLogger *)logger logBlock:v7 domain:@"com.apple.SpringBoard.cameraButton"];
  }
}

id __89__SBCameraHardwareButtonStudyLogger__handleApplicationProcessStateDidChangeNotification___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"frontmostApp";
  v1 = [*(a1 + 32) bundleIdentifier];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)_startProcessMonitor
{
  if (!self->_monitoringProcesses)
  {
    self->_monitoringProcesses = 1;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__handleApplicationProcessStateDidChangeNotification_ name:@"SBApplicationProcessStateDidChange" object:0];
  }
}

- (void)_stopProcessMonitor
{
  if (self->_monitoringProcesses)
  {
    self->_monitoringProcesses = 0;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self];
  }
}

@end