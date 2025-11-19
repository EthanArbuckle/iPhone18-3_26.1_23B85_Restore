@interface HDSPSleepScheduleStateCoordinatorWakeUpState
- (id)expirationDate;
- (void)bedtimeReached;
- (void)windDownReached;
@end

@implementation HDSPSleepScheduleStateCoordinatorWakeUpState

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

  v5 = [(HKSPStateMachineState *)self stateMachine];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__HDSPSleepScheduleStateCoordinatorWakeUpState_windDownReached__block_invoke;
  v9[3] = &unk_279C7B108;
  v10 = v5;
  v6 = v5;
  v7 = [HDSPSleepScheduleStateCoordinatorStateMachineContext contextWithReason:1];
  [v6 perform:v9 withContext:v7];

  v8 = *MEMORY[0x277D85DE8];
}

void __63__HDSPSleepScheduleStateCoordinatorWakeUpState_windDownReached__block_invoke(uint64_t a1)
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

  v5 = [(HKSPStateMachineState *)self stateMachine];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__HDSPSleepScheduleStateCoordinatorWakeUpState_bedtimeReached__block_invoke;
  v9[3] = &unk_279C7B108;
  v10 = v5;
  v6 = v5;
  v7 = [HDSPSleepScheduleStateCoordinatorStateMachineContext contextWithReason:1];
  [v6 perform:v9 withContext:v7];

  v8 = *MEMORY[0x277D85DE8];
}

void __62__HDSPSleepScheduleStateCoordinatorWakeUpState_bedtimeReached__block_invoke(uint64_t a1)
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
  v5 = [v3 currentDate];
  v6 = [v4 upcomingEventsDueAfterDate:v5];
  v7 = [v6 na_filter:&__block_literal_global_27];
  v8 = [v7 firstObject];
  v9 = [v8 dueDate];

  return v9;
}

uint64_t __62__HDSPSleepScheduleStateCoordinatorWakeUpState_expirationDate__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 identifier];
  if ([v3 isEqualToString:*MEMORY[0x277D621F0]])
  {
    v4 = 1;
  }

  else
  {
    v5 = [v2 identifier];
    v4 = [v5 isEqualToString:*MEMORY[0x277D621B8]];
  }

  return v4;
}

@end