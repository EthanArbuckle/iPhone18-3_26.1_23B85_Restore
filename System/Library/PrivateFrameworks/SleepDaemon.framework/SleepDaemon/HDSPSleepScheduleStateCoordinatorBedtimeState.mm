@interface HDSPSleepScheduleStateCoordinatorBedtimeState
- (id)expirationDate;
- (void)alarmDismissed;
- (void)wakeTimeReached;
- (void)wakeUpConfirmed:(BOOL)confirmed;
@end

@implementation HDSPSleepScheduleStateCoordinatorBedtimeState

- (void)wakeTimeReached
{
  v18 = *MEMORY[0x277D85DE8];
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  isAlarmEnabled = [(HDSPSleepScheduleStateCoordinatorStateMachineState *)self isAlarmEnabled];
  v5 = HKSPLogForCategory();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (isAlarmEnabled)
  {
    if (v6)
    {
      *buf = 138543362;
      v17 = objc_opt_class();
      v7 = v17;
      _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] wake time reached and alarm enabled", buf, 0xCu);
    }

    v8 = v15;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v9 = __64__HDSPSleepScheduleStateCoordinatorBedtimeState_wakeTimeReached__block_invoke;
  }

  else
  {
    if (v6)
    {
      *buf = 138543362;
      v17 = objc_opt_class();
      v10 = v17;
      _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] wake time reached and alarm disabled", buf, 0xCu);
    }

    v8 = v14;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v9 = __64__HDSPSleepScheduleStateCoordinatorBedtimeState_wakeTimeReached__block_invoke_296;
  }

  v8[2] = v9;
  v8[3] = &unk_279C7B108;
  v8[4] = stateMachine;
  v11 = stateMachine;
  v12 = [HDSPSleepScheduleStateCoordinatorStateMachineContext contextWithReason:1];
  [v11 perform:v8 withContext:v12];

  v13 = *MEMORY[0x277D85DE8];
}

void __64__HDSPSleepScheduleStateCoordinatorBedtimeState_wakeTimeReached__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 delayedWakeUpState];
  [v1 enterState:v2];
}

void __64__HDSPSleepScheduleStateCoordinatorBedtimeState_wakeTimeReached__block_invoke_296(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 wakeUpState];
  [v1 enterState:v2];
}

- (void)wakeUpConfirmed:(BOOL)confirmed
{
  confirmedCopy = confirmed;
  v18 = *MEMORY[0x277D85DE8];
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v15 = objc_opt_class();
    v16 = 1024;
    v17 = confirmedCopy;
    v6 = v15;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] wake up was confirmed (wasExplicitConfirmation: %d)", buf, 0x12u);
  }

  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  if (confirmedCopy)
  {
    v8 = 3;
  }

  else
  {
    v8 = 8;
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__HDSPSleepScheduleStateCoordinatorBedtimeState_wakeUpConfirmed___block_invoke;
  v12[3] = &unk_279C7B108;
  v13 = stateMachine;
  v9 = stateMachine;
  v10 = [HDSPSleepScheduleStateCoordinatorStateMachineContext contextWithReason:v8];
  [v9 perform:v12 withContext:v10];

  v11 = *MEMORY[0x277D85DE8];
}

void __65__HDSPSleepScheduleStateCoordinatorBedtimeState_wakeUpConfirmed___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 wakeUpState];
  [v1 enterState:v2];
}

- (void)alarmDismissed
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = objc_opt_class();
    v4 = v12;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] wake up alarm was dismissed", buf, 0xCu);
  }

  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__HDSPSleepScheduleStateCoordinatorBedtimeState_alarmDismissed__block_invoke;
  v9[3] = &unk_279C7B108;
  v10 = stateMachine;
  v6 = stateMachine;
  v7 = [HDSPSleepScheduleStateCoordinatorStateMachineContext contextWithReason:7];
  [v6 perform:v9 withContext:v7];

  v8 = *MEMORY[0x277D85DE8];
}

void __63__HDSPSleepScheduleStateCoordinatorBedtimeState_alarmDismissed__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 wakeUpState];
  [v1 enterState:v2];
}

- (id)expirationDate
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  infoProvider = [stateMachine infoProvider];

  sleepScheduleModel = [infoProvider sleepScheduleModel];
  v5 = *MEMORY[0x277D621E0];
  currentDate = [infoProvider currentDate];
  v7 = [sleepScheduleModel nextEventWithIdentifier:v5 dueAfterDate:currentDate];

  v8 = [v7 dateByAddingTimeInterval:900.0];

  return v8;
}

@end