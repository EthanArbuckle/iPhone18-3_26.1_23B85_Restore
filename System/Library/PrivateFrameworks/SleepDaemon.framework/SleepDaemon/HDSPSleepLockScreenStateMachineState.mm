@interface HDSPSleepLockScreenStateMachineState
- (BOOL)_isSleepLockScreenDisabled;
- (int64_t)sleepLockScreenState;
- (void)_updateStateForSleepMode:(int64_t)mode reason:(unint64_t)reason;
- (void)didEnter;
- (void)presentAlertForGoodMorning;
- (void)updateState;
@end

@implementation HDSPSleepLockScreenStateMachineState

- (void)didEnter
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  currentContext = [stateMachine currentContext];

  if ([currentContext hasStateTransitionOrInitializing])
  {
    previousState = [currentContext previousState];
    stateMachine2 = [(HKSPStateMachineState *)self stateMachine];
    [stateMachine2 sleepLockScreenStateDidChange:-[HDSPSleepLockScreenStateMachineState sleepLockScreenState](self previousState:{"sleepLockScreenState"), objc_msgSend(previousState, "sleepLockScreenState")}];
  }
}

- (void)presentAlertForGoodMorning
{
  v13 = *MEMORY[0x277D85DE8];
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  infoProvider = [stateMachine infoProvider];
  isLockScreenActive = [infoProvider isLockScreenActive];

  v5 = HKSPLogForCategory();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (isLockScreenActive)
  {
    if (v6)
    {
      *v12 = 138543362;
      *&v12[4] = objc_opt_class();
      v7 = *&v12[4];
      _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] presenting good morning alert", v12, 0xCu);
    }

    greetingState = [stateMachine greetingState];
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

    greetingState = [stateMachine offState];
  }

  v10 = greetingState;
  [stateMachine enterState:{greetingState, *v12}];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)updateState
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  infoProvider = [stateMachine infoProvider];

  sleepMode = [infoProvider sleepMode];
  if ([infoProvider inUnscheduledSleepMode])
  {
    v5 = 1;
  }

  else
  {
    v5 = 10;
  }

  [(HDSPSleepLockScreenStateMachineState *)self _updateStateForSleepMode:sleepMode reason:v5];
}

- (void)_updateStateForSleepMode:(int64_t)mode reason:(unint64_t)reason
{
  v22 = *MEMORY[0x277D85DE8];
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  if (![(HDSPSleepLockScreenStateMachineState *)self _isSleepLockScreenDisabled])
  {
    if (mode)
    {
      if (mode == 2)
      {
        bedtimeState = [stateMachine bedtimeState];
      }

      else
      {
        if (mode != 1)
        {
          goto LABEL_5;
        }

        bedtimeState = [stateMachine windDownState];
      }

      goto LABEL_3;
    }

    infoProvider = [stateMachine infoProvider];
    sleepScheduleModel = [infoProvider sleepScheduleModel];
    if ([sleepScheduleModel goodMorningScreenEnabledWithLogObject:self])
    {
      v11 = HKSPSleepModeChangeReasonTreatedAsExpected();
      offState = HKSPLogForCategory();
      v13 = os_log_type_enabled(offState, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        if (v13)
        {
          v18 = 138543362;
          v19 = objc_opt_class();
          v14 = v19;
          _os_log_impl(&dword_269B11000, offState, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep mode is off, waiting to be told to present greeting", &v18, 0xCu);
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
        _os_log_impl(&dword_269B11000, offState, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep mode is off, not presenting greeting (%{public}@)", &v18, 0x16u);
      }
    }

    offState = [stateMachine offState];
    [stateMachine enterState:offState];
LABEL_19:

    goto LABEL_4;
  }

  bedtimeState = [stateMachine offState];
LABEL_3:
  infoProvider = bedtimeState;
  [stateMachine enterState:bedtimeState];
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
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  infoProvider = [stateMachine infoProvider];
  sleepScheduleModel = [infoProvider sleepScheduleModel];
  sleepSettings = [sleepScheduleModel sleepSettings];
  sleepModeOptions = [sleepSettings sleepModeOptions];
  if ((sleepModeOptions & 0x4000) == 0)
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
  return (sleepModeOptions & 0x4000) == 0;
}

@end