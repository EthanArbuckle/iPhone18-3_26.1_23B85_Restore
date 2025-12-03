@interface HDSPWakeUpResultsNotificationWaitingForWakeUpState
- (void)_transitionToDelayingForTrackingState;
- (void)wakeUpDidOccur;
@end

@implementation HDSPWakeUpResultsNotificationWaitingForWakeUpState

- (void)wakeUpDidOccur
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received wake up event", &v6, 0xCu);
  }

  [(HDSPWakeUpResultsNotificationWaitingForWakeUpState *)self _transitionToDelayingForTrackingState];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_transitionToDelayingForTrackingState
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = objc_opt_class();
    v4 = v9;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Transitioning to delaying for tracking state", &v8, 0xCu);
  }

  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  delayingForTrackingState = [stateMachine delayingForTrackingState];
  [stateMachine enterState:delayingForTrackingState];

  v7 = *MEMORY[0x277D85DE8];
}

@end