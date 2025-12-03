@interface SBLiftToWakeStudyLogger
- (SBLiftToWakeStudyLogger)initWithController:(id)controller;
- (void)dealloc;
- (void)liftToWakeController:(id)controller didObserveTransition:(int64_t)transition deviceOrientation:(int64_t)orientation;
@end

@implementation SBLiftToWakeStudyLogger

- (SBLiftToWakeStudyLogger)initWithController:(id)controller
{
  controllerCopy = controller;
  mEMORY[0x277D6A798] = [MEMORY[0x277D6A798] sharedInstance];
  isEnabled = [mEMORY[0x277D6A798] isEnabled];

  if (isEnabled)
  {
    v13.receiver = self;
    v13.super_class = SBLiftToWakeStudyLogger;
    v8 = [(SBLiftToWakeStudyLogger *)&v13 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_controller, controller);
      mEMORY[0x277D6A798]2 = [MEMORY[0x277D6A798] sharedInstance];
      logger = v9->_logger;
      v9->_logger = mEMORY[0x277D6A798]2;

      [controllerCopy addObserver:v9];
    }
  }

  else
  {

    v9 = 0;
  }

  return v9;
}

- (void)dealloc
{
  [(SBLiftToWakeController *)self->_controller removeObserver:self];
  v3.receiver = self;
  v3.super_class = SBLiftToWakeStudyLogger;
  [(SBLiftToWakeStudyLogger *)&v3 dealloc];
}

- (void)liftToWakeController:(id)controller didObserveTransition:(int64_t)transition deviceOrientation:(int64_t)orientation
{
  logger = self->_logger;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __87__SBLiftToWakeStudyLogger_liftToWakeController_didObserveTransition_deviceOrientation___block_invoke;
  v6[3] = &__block_descriptor_48_e5__8__0l;
  v6[4] = transition;
  v6[5] = orientation;
  [(SLGLog *)logger logBlock:v6 domain:@"com.apple.SpringBoard.liftToWake"];
}

id __87__SBLiftToWakeStudyLogger_liftToWakeController_didObserveTransition_deviceOrientation___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"liftToWake";
  v7[0] = @"transition";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 32)];
  v7[1] = @"deviceOrientation";
  v8[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  return v5;
}

@end