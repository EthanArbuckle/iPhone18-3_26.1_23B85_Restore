@interface HDSPSleepModeAutomatedOffState
- (void)_automationTurnedOnSleepModeWithReason:(unint64_t)a3;
- (void)automationTurnedOnSleepModeWithReason:(unint64_t)a3;
- (void)sleepModeTurnedOnForUnknownReason;
@end

@implementation HDSPSleepModeAutomatedOffState

- (void)automationTurnedOnSleepModeWithReason:(unint64_t)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = objc_opt_class();
    v6 = v9;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep mode turned on via automation after having been turned off due to automation", &v8, 0xCu);
  }

  [(HDSPSleepModeAutomatedOffState *)self _automationTurnedOnSleepModeWithReason:a3];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)sleepModeTurnedOnForUnknownReason
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep mode turned on for unknown reason after having been turned off due to automation, treating like automation on", &v6, 0xCu);
  }

  [(HDSPSleepModeAutomatedOffState *)self _automationTurnedOnSleepModeWithReason:7];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_automationTurnedOnSleepModeWithReason:(unint64_t)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = [(HKSPStateMachineState *)self stateMachine];
  v5 = [v4 infoProvider];
  v6 = [v5 sleepScheduleState];
  v7 = [v4 automatedOnState];
  if ([v5 shouldGoIntoSleepModeDuringState:v6])
  {
    if (HKSPSleepScheduleStateIsForBedtime())
    {
      v8 = HKSPLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v22 = objc_opt_class();
        v9 = v22;
        _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] it's bedtime, going into bedtime mode", buf, 0xCu);
      }

      v10 = [v4 bedtimeState];
LABEL_10:
      v13 = v10;

      v7 = v13;
      goto LABEL_11;
    }

    if (HKSPSleepScheduleStateIsForWindDown())
    {
      v11 = HKSPLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v22 = objc_opt_class();
        v12 = v22;
        _os_log_impl(&dword_269B11000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] it's wind down, going into wind down", buf, 0xCu);
      }

      v10 = [v4 windDownState];
      goto LABEL_10;
    }
  }

LABEL_11:
  v18 = MEMORY[0x277D85DD0];
  v19 = v4;
  v20 = v7;
  v14 = v7;
  v15 = v4;
  v16 = [HDSPSleepModeStateMachineContext contextWithReason:a3, v18, 3221225472, __73__HDSPSleepModeAutomatedOffState__automationTurnedOnSleepModeWithReason___block_invoke, &unk_279C7B2D0];
  [v15 perform:&v18 withContext:v16];

  v17 = *MEMORY[0x277D85DE8];
}

@end