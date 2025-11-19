@interface HDSPSleepScheduleStateCoordinatorWindDownState
- (id)expirationDate;
- (void)bedtimeReached;
@end

@implementation HDSPSleepScheduleStateCoordinatorWindDownState

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

  v5 = [(HKSPStateMachineState *)self stateMachine];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__HDSPSleepScheduleStateCoordinatorWindDownState_bedtimeReached__block_invoke;
  v9[3] = &unk_279C7B108;
  v10 = v5;
  v6 = v5;
  v7 = [HDSPSleepScheduleStateCoordinatorStateMachineContext contextWithReason:1];
  [v6 perform:v9 withContext:v7];

  v8 = *MEMORY[0x277D85DE8];
}

void __64__HDSPSleepScheduleStateCoordinatorWindDownState_bedtimeReached__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 bedtimeState];
  [v1 enterState:v2];
}

- (id)expirationDate
{
  v2 = [(HKSPStateMachineState *)self stateMachine];
  v3 = [v2 infoProvider];

  v4 = [v3 sleepScheduleModel];
  v5 = *MEMORY[0x277D621B8];
  v6 = [v3 currentDate];
  v7 = [v4 nextEventWithIdentifier:v5 dueAfterDate:v6];

  v8 = [v7 dateByAddingTimeInterval:60.0];

  return v8;
}

@end