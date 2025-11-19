@interface HDSPSleepWidgetBedtimeInProgressState
- (void)sleepModeDidChange:(int64_t)a3 isUserRequested:(BOOL)a4;
- (void)sleepScheduleStateDidChange:(unint64_t)a3;
@end

@implementation HDSPSleepWidgetBedtimeInProgressState

- (void)sleepModeDidChange:(int64_t)a3 isUserRequested:(BOOL)a4
{
  v11 = *MEMORY[0x277D85DE8];
  if (a3 == 2 && a4)
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
    v8 = [(HKSPStateMachineState *)self stateMachine];
    [v8 updateState];
    v7 = *MEMORY[0x277D85DE8];
  }
}

- (void)sleepScheduleStateDidChange:(unint64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = [(HKSPStateMachineState *)self stateMachine];
  v6 = [v5 infoProvider];
  v7 = [v6 inUnscheduledSleepMode];

  if (v7)
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
    [(HDSPSleepWidgetStateMachineState *)&v11 sleepScheduleStateDidChange:a3];
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end