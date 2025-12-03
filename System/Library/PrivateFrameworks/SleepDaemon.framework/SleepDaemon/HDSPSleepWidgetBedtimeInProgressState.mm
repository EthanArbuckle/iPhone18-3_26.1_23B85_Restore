@interface HDSPSleepWidgetBedtimeInProgressState
- (void)sleepModeDidChange:(int64_t)change isUserRequested:(BOOL)requested;
- (void)sleepScheduleStateDidChange:(unint64_t)change;
@end

@implementation HDSPSleepWidgetBedtimeInProgressState

- (void)sleepModeDidChange:(int64_t)change isUserRequested:(BOOL)requested
{
  v11 = *MEMORY[0x277D85DE8];
  if (change == 2 && requested)
  {
    v4 = HKSPLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v10 = objc_opt_class();
      v5 = v10;
      _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] user turned on sleep mode, staying here", buf, 0xCu);
    }

    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    stateMachine = [(HKSPStateMachineState *)self stateMachine];
    [stateMachine updateState];
    v7 = *MEMORY[0x277D85DE8];
  }
}

- (void)sleepScheduleStateDidChange:(unint64_t)change
{
  v14 = *MEMORY[0x277D85DE8];
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  infoProvider = [stateMachine infoProvider];
  inUnscheduledSleepMode = [infoProvider inUnscheduledSleepMode];

  if (inUnscheduledSleepMode)
  {
    v8 = HKSPLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v13 = objc_opt_class();
      v9 = v13;
      _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] in user requested sleep mode, staying here", buf, 0xCu);
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = HDSPSleepWidgetBedtimeInProgressState;
    [(HDSPSleepWidgetStateMachineState *)&v11 sleepScheduleStateDidChange:change];
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end