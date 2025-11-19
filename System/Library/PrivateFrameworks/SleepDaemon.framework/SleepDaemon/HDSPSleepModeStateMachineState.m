@interface HDSPSleepModeStateMachineState
- (BOOL)updateStateCommon;
- (void)automationTurnedOffSleepModeWithReason:(unint64_t)a3;
- (void)automationTurnedOnSleepModeWithReason:(unint64_t)a3;
- (void)didEnter;
- (void)sleepModeTurnedOffForUnknownReason;
- (void)sleepModeTurnedOnForUnknownReason;
- (void)sleepScheduleStateChangedToBedtime:(unint64_t)a3 fromState:(unint64_t)a4;
- (void)sleepScheduleStateChangedToDisabled;
- (void)sleepScheduleStateChangedToWakeUp:(unint64_t)a3 fromState:(unint64_t)a4;
- (void)sleepScheduleStateChangedToWindDown:(unint64_t)a3 fromState:(unint64_t)a4;
- (void)updateStateFromTimeline;
- (void)userTurnedOffSleepModeWithReason:(unint64_t)a3;
- (void)userTurnedOnSleepModeWithReason:(unint64_t)a3;
@end

@implementation HDSPSleepModeStateMachineState

- (void)didEnter
{
  v3 = [(HKSPStateMachineState *)self stateMachine];
  v10 = [v3 currentContext];

  if ([v10 hasStateTransitionOrInitializing])
  {
    v4 = [v10 previousState];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v10 reason];
    }

    else
    {
      if ([(HDSPSleepModeStateMachineState *)self defaultChangeReason]== 10)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 reason];
          if (HKSPSleepScheduleStateChangeReasonIsExpected())
          {
            v6 = 2;
          }

          else
          {
            v6 = 10;
          }
        }

        else
        {
          v6 = 10;
        }

LABEL_11:
        v7 = [(HKSPStateMachineState *)self stateMachine];
        v8 = [(HDSPSleepModeStateMachineState *)self sleepMode];
        if (v4)
        {
          v9 = [v4 sleepMode];
        }

        else
        {
          v9 = 0;
        }

        [v7 sleepModeDidChange:v8 previousMode:v9 reason:v6];

        goto LABEL_15;
      }

      v5 = [(HDSPSleepModeStateMachineState *)self defaultChangeReason];
    }

    v6 = v5;
    goto LABEL_11;
  }

LABEL_15:
}

- (void)updateStateFromTimeline
{
  v15 = *MEMORY[0x277D85DE8];
  if (![(HDSPSleepModeStateMachineState *)self updateStateCommon])
  {
    v3 = [(HKSPStateMachineState *)self stateMachine];
    v4 = [v3 infoProvider];
    if ([v4 shouldGoIntoSleepModeDuringState:{objc_msgSend(v4, "sleepScheduleState")}])
    {
      if (HKSPSleepScheduleStateIsForBedtime())
      {
        v5 = HKSPLogForCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 138543362;
          *&v14[4] = objc_opt_class();
          v6 = *&v14[4];
          _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] it's bedtime, turning on bedtime mode if it's not on", v14, 0xCu);
        }

        v7 = [v3 bedtimeState];
LABEL_14:
        v12 = v7;
        [v3 enterState:{v7, *v14}];

        goto LABEL_15;
      }

      if (HKSPSleepScheduleStateIsForWindDown())
      {
        v8 = HKSPLogForCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 138543362;
          *&v14[4] = objc_opt_class();
          v9 = *&v14[4];
          _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] it's wind down, turning on wind down mode if it's not on", v14, 0xCu);
        }

        v7 = [v3 windDownState];
        goto LABEL_14;
      }
    }

    v10 = HKSPLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 138543362;
      *&v14[4] = objc_opt_class();
      v11 = *&v14[4];
      _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] turning off sleep mode if it's on", v14, 0xCu);
    }

    v7 = [v3 offState];
    goto LABEL_14;
  }

LABEL_15:
  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)updateStateCommon
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [(HKSPStateMachineState *)self stateMachine];
  v3 = [v2 infoProvider];
  if ([v3 isAppleWatch])
  {
    v4 = [v2 infoProvider];
    v5 = [v4 sleepFeaturesEnabled];

    if ((v5 & 1) == 0)
    {
      v6 = HKSPLogForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v23 = objc_opt_class();
        v7 = v23;
        _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep features disabled", buf, 0xCu);
      }

      v8 = v21;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v9 = 10;
      v10 = __51__HDSPSleepModeStateMachineState_updateStateCommon__block_invoke;
LABEL_12:
      v8[2] = v10;
      v8[3] = &unk_279C7B108;
      v16 = v2;
      v8[4] = v16;
      v17 = [HDSPSleepModeStateMachineContext contextWithReason:v9];
      [v16 perform:v8 withContext:v17];

      v13 = 1;
      goto LABEL_13;
    }
  }

  else
  {
  }

  v11 = [v2 infoProvider];
  v12 = [v11 hasSleepFocusMode];

  if ((v12 & 1) == 0)
  {
    v14 = HKSPLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v23 = objc_opt_class();
      v15 = v23;
      _os_log_impl(&dword_269B11000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] no sleep focus mode exists", buf, 0xCu);
    }

    v8 = v20;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v9 = 9;
    v10 = __51__HDSPSleepModeStateMachineState_updateStateCommon__block_invoke_294;
    goto LABEL_12;
  }

  v13 = 0;
LABEL_13:

  v18 = *MEMORY[0x277D85DE8];
  return v13;
}

void __51__HDSPSleepModeStateMachineState_updateStateCommon__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 offState];
  [v1 enterState:v2];
}

void __51__HDSPSleepModeStateMachineState_updateStateCommon__block_invoke_294(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 offState];
  [v1 enterState:v2];
}

- (void)sleepScheduleStateChangedToWindDown:(unint64_t)a3 fromState:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [(HKSPStateMachineState *)self stateMachine:a3];
  v6 = [v5 infoProvider];
  v7 = [v6 shouldGoIntoSleepModeDuringState:3];

  v8 = HKSPLogForCategory();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      *buf = 138543362;
      v18 = objc_opt_class();
      v10 = v18;
      _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] it's wind down, turning on sleep mode mode", buf, 0xCu);
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __80__HDSPSleepModeStateMachineState_sleepScheduleStateChangedToWindDown_fromState___block_invoke;
    v15[3] = &unk_279C7B108;
    v16 = v5;
    v11 = [HDSPSleepScheduleStateCoordinatorStateMachineContext contextWithReason:a3];
    [v16 perform:v15 withContext:v11];

    v12 = v16;
  }

  else
  {
    if (v9)
    {
      *buf = 138543362;
      v18 = objc_opt_class();
      v13 = v18;
      _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] it's wind down but sleep mode is disabled, turning off sleep mode", buf, 0xCu);
    }

    v12 = [v5 offState];
    [v5 enterState:v12];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __80__HDSPSleepModeStateMachineState_sleepScheduleStateChangedToWindDown_fromState___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 windDownState];
  [v1 enterState:v2];
}

- (void)sleepScheduleStateChangedToBedtime:(unint64_t)a3 fromState:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [(HKSPStateMachineState *)self stateMachine:a3];
  v6 = [v5 infoProvider];
  v7 = [v6 shouldGoIntoSleepModeDuringState:2];

  v8 = HKSPLogForCategory();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      *buf = 138543362;
      v18 = objc_opt_class();
      v10 = v18;
      _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] it's bedtime, turning on sleep mode mode", buf, 0xCu);
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __79__HDSPSleepModeStateMachineState_sleepScheduleStateChangedToBedtime_fromState___block_invoke;
    v15[3] = &unk_279C7B108;
    v16 = v5;
    v11 = [HDSPSleepScheduleStateCoordinatorStateMachineContext contextWithReason:a3];
    [v16 perform:v15 withContext:v11];

    v12 = v16;
  }

  else
  {
    if (v9)
    {
      *buf = 138543362;
      v18 = objc_opt_class();
      v13 = v18;
      _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] it's bedtime but sleep mode is disabled, turning off sleep mode", buf, 0xCu);
    }

    v12 = [v5 offState];
    [v5 enterState:v12];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __79__HDSPSleepModeStateMachineState_sleepScheduleStateChangedToBedtime_fromState___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 bedtimeState];
  [v1 enterState:v2];
}

- (void)sleepScheduleStateChangedToWakeUp:(unint64_t)a3 fromState:(unint64_t)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = [(HKSPStateMachineState *)self stateMachine:a3];
  v6 = HKSPLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = objc_opt_class();
    v7 = v14;
    _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] it's wake up, turning off sleep mode", buf, 0xCu);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__HDSPSleepModeStateMachineState_sleepScheduleStateChangedToWakeUp_fromState___block_invoke;
  v11[3] = &unk_279C7B108;
  v12 = v5;
  v8 = v5;
  v9 = [HDSPSleepScheduleStateCoordinatorStateMachineContext contextWithReason:a3];
  [v8 perform:v11 withContext:v9];

  v10 = *MEMORY[0x277D85DE8];
}

void __78__HDSPSleepModeStateMachineState_sleepScheduleStateChangedToWakeUp_fromState___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 offState];
  [v1 enterState:v2];
}

- (void)sleepScheduleStateChangedToDisabled
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep schedule state was disabled", &v6, 0xCu);
  }

  [(HDSPSleepModeStateMachineState *)self updateStateFromTimeline];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)userTurnedOnSleepModeWithReason:(unint64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [(HKSPStateMachineState *)self stateMachine];
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = NSStringFromHKSPSleepModeChangeReason();
    *buf = 138543618;
    v15 = v6;
    v16 = 2114;
    v17 = v8;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep mode turned on (%{public}@)", buf, 0x16u);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__HDSPSleepModeStateMachineState_userTurnedOnSleepModeWithReason___block_invoke;
  v12[3] = &unk_279C7B108;
  v13 = v4;
  v9 = v4;
  v10 = [HDSPSleepModeStateMachineContext contextWithReason:a3];
  [v9 perform:v12 withContext:v10];

  v11 = *MEMORY[0x277D85DE8];
}

void __66__HDSPSleepModeStateMachineState_userTurnedOnSleepModeWithReason___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 manualOnState];
  [v1 enterState:v2];
}

- (void)userTurnedOffSleepModeWithReason:(unint64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = NSStringFromHKSPSleepModeChangeReason();
    *buf = 138543618;
    v16 = v6;
    v17 = 2114;
    v18 = v8;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep mode turned off by user (%{public}@)", buf, 0x16u);
  }

  v9 = [(HKSPStateMachineState *)self stateMachine];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__HDSPSleepModeStateMachineState_userTurnedOffSleepModeWithReason___block_invoke;
  v13[3] = &unk_279C7B108;
  v14 = v9;
  v10 = v9;
  v11 = [HDSPSleepModeStateMachineContext contextWithReason:a3];
  [v10 perform:v13 withContext:v11];

  v12 = *MEMORY[0x277D85DE8];
}

void __67__HDSPSleepModeStateMachineState_userTurnedOffSleepModeWithReason___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 manualOffState];
  [v1 enterState:v2];
}

- (void)automationTurnedOnSleepModeWithReason:(unint64_t)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = objc_opt_class();
    v6 = v14;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep mode turned on via automation", buf, 0xCu);
  }

  v7 = [(HKSPStateMachineState *)self stateMachine];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__HDSPSleepModeStateMachineState_automationTurnedOnSleepModeWithReason___block_invoke;
  v11[3] = &unk_279C7B108;
  v12 = v7;
  v8 = v7;
  v9 = [HDSPSleepModeStateMachineContext contextWithReason:a3];
  [v8 perform:v11 withContext:v9];

  v10 = *MEMORY[0x277D85DE8];
}

void __72__HDSPSleepModeStateMachineState_automationTurnedOnSleepModeWithReason___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 automatedOnState];
  [v1 enterState:v2];
}

- (void)automationTurnedOffSleepModeWithReason:(unint64_t)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = objc_opt_class();
    v6 = v14;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep mode turned off via automation", buf, 0xCu);
  }

  v7 = [(HKSPStateMachineState *)self stateMachine];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__HDSPSleepModeStateMachineState_automationTurnedOffSleepModeWithReason___block_invoke;
  v11[3] = &unk_279C7B108;
  v12 = v7;
  v8 = v7;
  v9 = [HDSPSleepModeStateMachineContext contextWithReason:a3];
  [v8 perform:v11 withContext:v9];

  v10 = *MEMORY[0x277D85DE8];
}

void __73__HDSPSleepModeStateMachineState_automationTurnedOffSleepModeWithReason___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 automatedOffState];
  [v1 enterState:v2];
}

- (void)sleepModeTurnedOnForUnknownReason
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [(HKSPStateMachineState *)self stateMachine];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = objc_opt_class();
    v4 = v11;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep mode turned on for an unknown reason, treating as user requested", buf, 0xCu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__HDSPSleepModeStateMachineState_sleepModeTurnedOnForUnknownReason__block_invoke;
  v8[3] = &unk_279C7B108;
  v9 = v2;
  v5 = v2;
  v6 = [HDSPSleepModeStateMachineContext contextWithReason:10];
  [v5 perform:v8 withContext:v6];

  v7 = *MEMORY[0x277D85DE8];
}

void __67__HDSPSleepModeStateMachineState_sleepModeTurnedOnForUnknownReason__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 manualOnState];
  [v1 enterState:v2];
}

- (void)sleepModeTurnedOffForUnknownReason
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [(HKSPStateMachineState *)self stateMachine];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = objc_opt_class();
    v4 = v11;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep mode turned off for an unknown reason, treating as user requested", buf, 0xCu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__HDSPSleepModeStateMachineState_sleepModeTurnedOffForUnknownReason__block_invoke;
  v8[3] = &unk_279C7B108;
  v9 = v2;
  v5 = v2;
  v6 = [HDSPSleepModeStateMachineContext contextWithReason:10];
  [v5 perform:v8 withContext:v6];

  v7 = *MEMORY[0x277D85DE8];
}

void __68__HDSPSleepModeStateMachineState_sleepModeTurnedOffForUnknownReason__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 manualOffState];
  [v1 enterState:v2];
}

@end