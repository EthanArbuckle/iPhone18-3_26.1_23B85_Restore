@interface HDSPSleepScheduleStateCoordinatorDelayedWakeUpState
- (id)expirationDate;
- (void)alarmDismissed;
- (void)bedtimeReached;
- (void)didExit;
- (void)significantScheduleChangeOccurred:(unint64_t)occurred;
- (void)wakeUpConfirmed:(BOOL)confirmed;
- (void)windDownReached;
@end

@implementation HDSPSleepScheduleStateCoordinatorDelayedWakeUpState

- (void)didExit
{
  v7.receiver = self;
  v7.super_class = HDSPSleepScheduleStateCoordinatorDelayedWakeUpState;
  [(HKSPStateMachineState *)&v7 didExit];
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  currentContext = [stateMachine currentContext];
  hasStateTransitionOrInitializing = [currentContext hasStateTransitionOrInitializing];

  if (hasStateTransitionOrInitializing)
  {
    stateMachine2 = [(HKSPStateMachineState *)self stateMachine];
    [stateMachine2 snoozeFireDateShouldBeReset];
  }
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
  v12[2] = __71__HDSPSleepScheduleStateCoordinatorDelayedWakeUpState_wakeUpConfirmed___block_invoke;
  v12[3] = &unk_279C7B108;
  v13 = stateMachine;
  v9 = stateMachine;
  v10 = [HDSPSleepScheduleStateCoordinatorStateMachineContext contextWithReason:v8];
  [v9 perform:v12 withContext:v10];

  v11 = *MEMORY[0x277D85DE8];
}

void __71__HDSPSleepScheduleStateCoordinatorDelayedWakeUpState_wakeUpConfirmed___block_invoke(uint64_t a1)
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
  v9[2] = __69__HDSPSleepScheduleStateCoordinatorDelayedWakeUpState_alarmDismissed__block_invoke;
  v9[3] = &unk_279C7B108;
  v10 = stateMachine;
  v6 = stateMachine;
  v7 = [HDSPSleepScheduleStateCoordinatorStateMachineContext contextWithReason:7];
  [v6 perform:v9 withContext:v7];

  v8 = *MEMORY[0x277D85DE8];
}

void __69__HDSPSleepScheduleStateCoordinatorDelayedWakeUpState_alarmDismissed__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 wakeUpState];
  [v1 enterState:v2];
}

- (void)significantScheduleChangeOccurred:(unint64_t)occurred
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  [stateMachine snoozeFireDateShouldBeReset];

  v6.receiver = self;
  v6.super_class = HDSPSleepScheduleStateCoordinatorDelayedWakeUpState;
  [(HDSPSleepScheduleStateCoordinatorStateMachineState *)&v6 significantScheduleChangeOccurred:occurred];
}

void __75__HDSPSleepScheduleStateCoordinatorDelayedWakeUpState_updateStateForcibly___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 wakeUpState];
  [v1 enterState:v2];
}

- (id)expirationDate
{
  v25 = *MEMORY[0x277D85DE8];
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  infoProvider = [stateMachine infoProvider];

  sleepScheduleModel = [infoProvider sleepScheduleModel];
  sleepEventRecord = [sleepScheduleModel sleepEventRecord];
  currentDate = [infoProvider currentDate];
  wakeUpAlarmSnoozedUntilDate = [sleepEventRecord wakeUpAlarmSnoozedUntilDate];
  v8 = [wakeUpAlarmSnoozedUntilDate hksp_isAfterDate:currentDate];

  if (v8)
  {
    v9 = HKSPLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = v10;
      wakeUpAlarmSnoozedUntilDate2 = [sleepEventRecord wakeUpAlarmSnoozedUntilDate];
      v21 = 138543618;
      v22 = v10;
      v23 = 2114;
      v24 = wakeUpAlarmSnoozedUntilDate2;
      _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] still waiting for snoozed alarm %{public}@", &v21, 0x16u);
    }

    v13 = 0;
  }

  else
  {
    sleepSchedule = [sleepScheduleModel sleepSchedule];
    [sleepSchedule windDownTime];
    v15 = MEMORY[0x277D621F0];
    if (v16 <= 0.0)
    {
      v15 = MEMORY[0x277D621B8];
    }

    v9 = *v15;

    v13 = [sleepScheduleModel nextEventWithIdentifier:v9 dueAfterDate:currentDate];
    v17 = HKSPLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138543618;
      v22 = objc_opt_class();
      v23 = 2114;
      v24 = v13;
      v18 = v22;
      _os_log_impl(&dword_269B11000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] waiting until %{public}@", &v21, 0x16u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)windDownReached
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = objc_opt_class();
    v4 = v12;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] it's time for wind down", buf, 0xCu);
  }

  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__HDSPSleepScheduleStateCoordinatorDelayedWakeUpState_windDownReached__block_invoke;
  v9[3] = &unk_279C7B108;
  v10 = stateMachine;
  v6 = stateMachine;
  v7 = [HDSPSleepScheduleStateCoordinatorStateMachineContext contextWithReason:1];
  [v6 perform:v9 withContext:v7];

  v8 = *MEMORY[0x277D85DE8];
}

void __70__HDSPSleepScheduleStateCoordinatorDelayedWakeUpState_windDownReached__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 windDownState];
  [v1 enterState:v2];
}

- (void)bedtimeReached
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = objc_opt_class();
    v4 = v12;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] it's time for bed", buf, 0xCu);
  }

  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__HDSPSleepScheduleStateCoordinatorDelayedWakeUpState_bedtimeReached__block_invoke;
  v9[3] = &unk_279C7B108;
  v10 = stateMachine;
  v6 = stateMachine;
  v7 = [HDSPSleepScheduleStateCoordinatorStateMachineContext contextWithReason:1];
  [v6 perform:v9 withContext:v7];

  v8 = *MEMORY[0x277D85DE8];
}

void __69__HDSPSleepScheduleStateCoordinatorDelayedWakeUpState_bedtimeReached__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 bedtimeState];
  [v1 enterState:v2];
}

@end