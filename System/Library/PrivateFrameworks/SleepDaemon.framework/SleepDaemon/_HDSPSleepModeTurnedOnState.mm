@interface _HDSPSleepModeTurnedOnState
- (void)sleepScheduleStateChangedToBedtime:(unint64_t)bedtime fromState:(unint64_t)state;
- (void)sleepScheduleStateChangedToDisabled;
- (void)sleepScheduleStateChangedToWakeUp:(unint64_t)up fromState:(unint64_t)state;
- (void)sleepScheduleStateChangedToWindDown:(unint64_t)down fromState:(unint64_t)state;
@end

@implementation _HDSPSleepModeTurnedOnState

- (void)sleepScheduleStateChangedToWindDown:(unint64_t)down fromState:(unint64_t)state
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    stateName = [(HKSPStateMachineState *)self stateName];
    v10 = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = stateName;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] it's wind down, but staying in %{public}@ mode", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)sleepScheduleStateChangedToBedtime:(unint64_t)bedtime fromState:(unint64_t)state
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    stateName = [(HKSPStateMachineState *)self stateName];
    v10 = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = stateName;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] it's bedtime, but staying in %{public}@ mode", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)sleepScheduleStateChangedToWakeUp:(unint64_t)up fromState:(unint64_t)state
{
  v17 = *MEMORY[0x277D85DE8];
  if (up == 5 && (HKSPSleepScheduleStateIsForSleep() & 1) == 0)
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = v8;
      stateName = [(HKSPStateMachineState *)self stateName];
      *buf = 138543618;
      v14 = v8;
      v15 = 2114;
      v16 = stateName;
      _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] staying in %{public}@ mode because we were already in wake up", buf, 0x16u);
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = _HDSPSleepModeTurnedOnState;
    [(HDSPSleepModeStateMachineState *)&v12 sleepScheduleStateChangedToWakeUp:up fromState:state];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)sleepScheduleStateChangedToDisabled
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
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep schedule state is disabled but staying in %{public}@ mode", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end