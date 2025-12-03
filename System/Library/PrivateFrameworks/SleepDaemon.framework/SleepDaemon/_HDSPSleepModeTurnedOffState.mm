@interface _HDSPSleepModeTurnedOffState
- (BOOL)_shouldUpdateSleepModeStateForState:(unint64_t)state changeReason:(unint64_t)reason previousState:(unint64_t)previousState;
- (id)expirationDate;
- (void)sleepScheduleStateChangedToBedtime:(unint64_t)bedtime fromState:(unint64_t)state;
- (void)sleepScheduleStateChangedToWindDown:(unint64_t)down fromState:(unint64_t)state;
- (void)updateState;
@end

@implementation _HDSPSleepModeTurnedOffState

- (id)expirationDate
{
  v22 = *MEMORY[0x277D85DE8];
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  infoProvider = [stateMachine infoProvider];

  sleepScheduleModel = [infoProvider sleepScheduleModel];
  v5 = *MEMORY[0x277D621B8];
  sleepSchedule = [sleepScheduleModel sleepSchedule];
  [sleepSchedule windDownTime];
  v8 = v7;

  if (v8 > 0.0)
  {
    v9 = *MEMORY[0x277D621F0];

    v5 = v9;
  }

  currentDate = [infoProvider currentDate];
  v11 = [sleepScheduleModel nextEventWithIdentifier:v5 dueAfterDate:currentDate];

  v12 = HKSPLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543874;
    v17 = objc_opt_class();
    v18 = 2114;
    v19 = v5;
    v20 = 2114;
    v21 = v11;
    v13 = v17;
    _os_log_impl(&dword_269B11000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] keeping off until next %{public}@ at %{public}@", &v16, 0x20u);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)updateState
{
  v11 = *MEMORY[0x277D85DE8];
  if (![(HDSPSleepModeStateMachineState *)self updateStateCommon])
  {
    stateMachine = [(HKSPStateMachineState *)self stateMachine];
    infoProvider = [stateMachine infoProvider];
    if (([infoProvider shouldGoIntoSleepModeDuringState:{objc_msgSend(infoProvider, "sleepScheduleState")}] & 1) == 0)
    {
      v5 = HKSPLogForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138543362;
        v10 = objc_opt_class();
        v6 = v10;
        _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] going to regular off state", &v9, 0xCu);
      }

      offState = [stateMachine offState];
      [stateMachine enterState:offState];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldUpdateSleepModeStateForState:(unint64_t)state changeReason:(unint64_t)reason previousState:(unint64_t)previousState
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v10 = NSStringFromHKSPSleepScheduleState();
    v11 = NSStringFromHKSPSleepScheduleState();
    v12 = NSStringFromHKSPSleepScheduleStateChangeReason();
    v26 = 138544130;
    v27 = v8;
    v28 = 2114;
    v29 = v10;
    v30 = 2114;
    v31 = v11;
    v32 = 2114;
    v33 = v12;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] %{public}@ entered from %{public}@ (%{public}@)", &v26, 0x2Au);
  }

  if (previousState - 4 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    if (reason == 5)
    {
      v13 = HKSPLogForCategory();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (previousState)
      {
        if (v14)
        {
          v15 = objc_opt_class();
          v26 = 138543362;
          v27 = v15;
          v16 = v15;
          v17 = "[%{public}@] ignoring initial state change";
LABEL_10:
          _os_log_impl(&dword_269B11000, v13, OS_LOG_TYPE_DEFAULT, v17, &v26, 0xCu);

          goto LABEL_11;
        }

        goto LABEL_11;
      }

      if (v14)
      {
        v23 = objc_opt_class();
        v26 = 138543362;
        v27 = v23;
        v21 = v23;
        v22 = "[%{public}@] updating for initial change because schedule was previously disabled";
        goto LABEL_16;
      }
    }

    else
    {
      v13 = HKSPLogForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v20 = objc_opt_class();
        v26 = 138543362;
        v27 = v20;
        v21 = v20;
        v22 = "[%{public}@] updating";
LABEL_16:
        _os_log_impl(&dword_269B11000, v13, OS_LOG_TYPE_DEFAULT, v22, &v26, 0xCu);
      }
    }

    v19 = 1;
    goto LABEL_18;
  }

  v13 = HKSPLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_opt_class();
    v26 = 138543362;
    v27 = v18;
    v16 = v18;
    v17 = "[%{public}@] ignoring";
    goto LABEL_10;
  }

LABEL_11:
  v19 = 0;
LABEL_18:

  v24 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)sleepScheduleStateChangedToWindDown:(unint64_t)down fromState:(unint64_t)state
{
  if ([(_HDSPSleepModeTurnedOffState *)self _shouldUpdateSleepModeStateForState:3 changeReason:down previousState:state])
  {
    v7.receiver = self;
    v7.super_class = _HDSPSleepModeTurnedOffState;
    [(HDSPSleepModeStateMachineState *)&v7 sleepScheduleStateChangedToWindDown:down fromState:state];
  }
}

- (void)sleepScheduleStateChangedToBedtime:(unint64_t)bedtime fromState:(unint64_t)state
{
  if ([(_HDSPSleepModeTurnedOffState *)self _shouldUpdateSleepModeStateForState:2 changeReason:bedtime previousState:state])
  {
    v7.receiver = self;
    v7.super_class = _HDSPSleepModeTurnedOffState;
    [(HDSPSleepModeStateMachineState *)&v7 sleepScheduleStateChangedToBedtime:bedtime fromState:state];
  }
}

@end