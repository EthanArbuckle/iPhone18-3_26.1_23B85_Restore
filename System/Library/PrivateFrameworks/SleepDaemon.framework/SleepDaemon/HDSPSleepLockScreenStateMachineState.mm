@interface HDSPSleepLockScreenStateMachineState
- (BOOL)_isSleepLockScreenDisabled;
- (int64_t)sleepLockScreenState;
- (void)_updateStateForSleepMode:(int64_t)a3 reason:(unint64_t)a4;
- (void)didEnter;
- (void)presentAlertForGoodMorning;
- (void)updateState;
@end

@implementation HDSPSleepLockScreenStateMachineState

- (void)didEnter
{
  v3 = [(HKSPStateMachineState *)self stateMachine];
  v6 = [v3 currentContext];

  if ([v6 hasStateTransitionOrInitializing])
  {
    v4 = [v6 previousState];
    v5 = [(HKSPStateMachineState *)self stateMachine];
    [v5 sleepLockScreenStateDidChange:-[HDSPSleepLockScreenStateMachineState sleepLockScreenState](self previousState:{"sleepLockScreenState"), objc_msgSend(v4, "sleepLockScreenState")}];
  }
}

- (void)presentAlertForGoodMorning
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [(HKSPStateMachineState *)self stateMachine];
  v3 = [v2 infoProvider];
  v4 = [v3 isLockScreenActive];

  v5 = HKSPLogForCategory();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *v12 = 138543362;
      *&v12[4] = objc_opt_class();
      v7 = *&v12[4];
      _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] presenting good morning alert", v12, 0xCu);
    }

    v8 = [v2 greetingState];
  }

  else
  {
    if (v6)
    {
      *v12 = 138543362;
      *&v12[4] = objc_opt_class();
      v9 = *&v12[4];
      _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] skipping good morning alert, lock screen isn't active", v12, 0xCu);
    }

    v8 = [v2 offState];
  }

  v10 = v8;
  [v2 enterState:{v8, *v12}];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)updateState
{
  v3 = [(HKSPStateMachineState *)self stateMachine];
  v6 = [v3 infoProvider];

  v4 = [v6 sleepMode];
  if ([v6 inUnscheduledSleepMode])
  {
    v5 = 1;
  }

  else
  {
    v5 = 10;
  }

  [(HDSPSleepLockScreenStateMachineState *)self _updateStateForSleepMode:v4 reason:v5];
}

- (void)_updateStateForSleepMode:(int64_t)a3 reason:(unint64_t)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = [(HKSPStateMachineState *)self stateMachine];
  if (![(HDSPSleepLockScreenStateMachineState *)self _isSleepLockScreenDisabled])
  {
    if (a3)
    {
      if (a3 == 2)
      {
        v7 = [v6 bedtimeState];
      }

      else
      {
        if (a3 != 1)
        {
          goto LABEL_5;
        }

        v7 = [v6 windDownState];
      }

      goto LABEL_3;
    }

    v8 = [v6 infoProvider];
    v10 = [v8 sleepScheduleModel];
    if ([v10 goodMorningScreenEnabledWithLogObject:self])
    {
      v11 = HKSPSleepModeChangeReasonTreatedAsExpected();
      v12 = HKSPLogForCategory();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        if (v13)
        {
          v18 = 138543362;
          v19 = objc_opt_class();
          v14 = v19;
          _os_log_impl(&dword_269B11000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep mode is off, waiting to be told to present greeting", &v18, 0xCu);
        }

        goto LABEL_19;
      }

      if (v13)
      {
        v15 = objc_opt_class();
        v16 = v15;
        v17 = NSStringFromHKSPSleepModeChangeReason();
        v18 = 138543618;
        v19 = v15;
        v20 = 2114;
        v21 = v17;
        _os_log_impl(&dword_269B11000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep mode is off, not presenting greeting (%{public}@)", &v18, 0x16u);
      }
    }

    v12 = [v6 offState];
    [v6 enterState:v12];
LABEL_19:

    goto LABEL_4;
  }

  v7 = [v6 offState];
LABEL_3:
  v8 = v7;
  [v6 enterState:v7];
LABEL_4:

LABEL_5:
  v9 = *MEMORY[0x277D85DE8];
}

- (int64_t)sleepLockScreenState
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)_isSleepLockScreenDisabled
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [(HKSPStateMachineState *)self stateMachine];
  v3 = [v2 infoProvider];
  v4 = [v3 sleepScheduleModel];
  v5 = [v4 sleepSettings];
  v6 = [v5 sleepModeOptions];
  if ((v6 & 0x4000) == 0)
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = objc_opt_class();
      v8 = v12;
      _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep screen disabled", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return (v6 & 0x4000) == 0;
}

@end