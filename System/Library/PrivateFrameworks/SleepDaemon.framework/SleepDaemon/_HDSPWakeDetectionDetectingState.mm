@interface _HDSPWakeDetectionDetectingState
- (BOOL)_isActivityDateInDetectionWindow:(id)window type:(unint64_t)type;
- (void)didEnter;
- (void)didExit;
- (void)earlyWakeUpWasNotifiedRemotely;
- (void)wakeupEventDetected:(unint64_t)detected date:(id)date;
@end

@implementation _HDSPWakeDetectionDetectingState

- (void)didEnter
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  [stateMachine startWakeDetection:{-[_HDSPWakeDetectionDetectingState activeTypes](self, "activeTypes")}];
}

- (void)didExit
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  currentContext = [stateMachine currentContext];

  if ([currentContext hasStateTransitionOrInitializing])
  {
    nextState = [currentContext nextState];
    if (([nextState isDetectingState] & 1) == 0)
    {
      stateMachine2 = [(HKSPStateMachineState *)self stateMachine];
      [stateMachine2 stopWakeDetection];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (BOOL)_isActivityDateInDetectionWindow:(id)window type:(unint64_t)type
{
  windowCopy = window;
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  infoProvider = [stateMachine infoProvider];
  v9 = [infoProvider detectionWindowForType:type];
  v10 = [v9 hksp_containsDate:windowCopy];

  return v10;
}

- (void)wakeupEventDetected:(unint64_t)detected date:(id)date
{
  v29 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v10 = NSStringFromHDSPWakeDetectorTypes(detected);
    *buf = 138543874;
    v24 = v8;
    v25 = 2114;
    v26 = v10;
    v27 = 2114;
    v28 = dateCopy;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] wakeupEventDetected: %{public}@ - %{public}@", buf, 0x20u);
  }

  v11 = [(_HDSPWakeDetectionDetectingState *)self _isActivityDateInDetectionWindow:dateCopy type:detected];
  v12 = HKSPLogForCategory();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      v14 = objc_opt_class();
      *buf = 138543362;
      v24 = v14;
      v15 = v14;
      _os_log_impl(&dword_269B11000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] wake detection event found", buf, 0xCu);
    }

    stateMachine = [(HKSPStateMachineState *)self stateMachine];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __61___HDSPWakeDetectionDetectingState_wakeupEventDetected_date___block_invoke;
    v21[3] = &unk_279C7B108;
    v22 = stateMachine;
    v12 = stateMachine;
    v17 = [HDSPWakeDetectionStateMachineContext contextWithType:detected];
    [v12 perform:v21 withContext:v17];
  }

  else if (v13)
  {
    v18 = objc_opt_class();
    *buf = 138543362;
    v24 = v18;
    v19 = v18;
    _os_log_impl(&dword_269B11000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] ignoring wake up event because it's outside of detection window", buf, 0xCu);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)earlyWakeUpWasNotifiedRemotely
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = objc_opt_class();
    v4 = v12;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] earlyWakeUpWasNotifiedRemotely", buf, 0xCu);
  }

  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66___HDSPWakeDetectionDetectingState_earlyWakeUpWasNotifiedRemotely__block_invoke;
  v9[3] = &unk_279C7B108;
  v10 = stateMachine;
  v6 = stateMachine;
  v7 = [HDSPWakeDetectionStateMachineContext contextWithType:0];
  [v6 perform:v9 withContext:v7];

  v8 = *MEMORY[0x277D85DE8];
}

@end