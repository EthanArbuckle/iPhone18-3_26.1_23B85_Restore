@interface _HDSPSleepModeOnState
- (void)automationTurnedOnSleepModeWithReason:(unint64_t)reason;
- (void)sleepModeTurnedOnForUnknownReason;
- (void)userTurnedOnSleepModeWithReason:(unint64_t)reason;
@end

@implementation _HDSPSleepModeOnState

- (void)userTurnedOnSleepModeWithReason:(unint64_t)reason
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    stateName = [(HKSPStateMachineState *)self stateName];
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = stateName;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] user turn on sleep mode, ignoring because we're already in %{public}@ mode", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)automationTurnedOnSleepModeWithReason:(unint64_t)reason
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    stateName = [(HKSPStateMachineState *)self stateName];
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = stateName;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep mode turned on via automation, ignoring because we're already in %{public}@ mode", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)sleepModeTurnedOnForUnknownReason
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = v4;
    stateName = [(HKSPStateMachineState *)self stateName];
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = stateName;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep mode turned on for unknown reason, ignoring because we're already in %{public}@ mode", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end