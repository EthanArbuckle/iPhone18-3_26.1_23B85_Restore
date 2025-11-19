@interface HDSPSleepWidgetStateMachineState
- (BOOL)shouldGoIntoUpcomingState;
- (id)stateName;
- (int64_t)widgetState;
- (void)didEnter;
- (void)significantTimeChangeOccurred;
- (void)sleepModeDidChange:(int64_t)a3 isUserRequested:(BOOL)a4;
- (void)sleepScheduleModelDidChange:(id)a3;
- (void)sleepScheduleStateDidChange:(unint64_t)a3;
- (void)updateState;
@end

@implementation HDSPSleepWidgetStateMachineState

- (id)stateName
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (int64_t)widgetState
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)didEnter
{
  v3 = [(HKSPStateMachineState *)self stateMachine];
  v8 = [v3 currentContext];

  if ([v8 hasStateTransitionOrInitializing])
  {
    v4 = [v8 previousState];
    v5 = [(HKSPStateMachineState *)self stateMachine];
    v6 = [(HDSPSleepWidgetStateMachineState *)self widgetState];
    if (v4)
    {
      v7 = [v4 widgetState];
    }

    else
    {
      v7 = 0;
    }

    [v5 sleepWidgetStateDidChange:v6 previousState:v7];
  }

  MEMORY[0x2821F96F8]();
}

- (void)updateState
{
  v73 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v70 = 138543362;
    *&v70[4] = objc_opt_class();
    v4 = *&v70[4];
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] determining state", v70, 0xCu);
  }

  v5 = [(HKSPStateMachineState *)self stateMachine];
  v6 = [v5 infoProvider];
  v7 = [v5 infoProvider];
  v8 = [v7 currentDate];

  v9 = [v6 sleepScheduleModel];
  v10 = [v6 sleepScheduleState];
  v11 = [v6 inUnscheduledSleepMode];
  if (([v6 isOnboarded] & 1) == 0)
  {
    v18 = HKSPLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      v20 = v19;
      v21 = [v5 notOnboardedState];
      v22 = [v21 stateName];
      *v70 = 138543618;
      *&v70[4] = v19;
      *&v70[12] = 2114;
      *&v70[14] = v22;
      _os_log_impl(&dword_269B11000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] not onboarded, determined state: %{public}@", v70, 0x16u);
    }

    v17 = [v5 notOnboardedState];
    goto LABEL_15;
  }

  if (!v10)
  {
    v23 = HKSPLogForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = objc_opt_class();
      v25 = v24;
      v26 = [v5 disabledState];
      v27 = [v26 stateName];
      *v70 = 138543618;
      *&v70[4] = v24;
      *&v70[12] = 2114;
      *&v70[14] = v27;
      _os_log_impl(&dword_269B11000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@] schedule disabled, determined state: %{public}@", v70, 0x16u);
    }

    v17 = [v5 disabledState];
    goto LABEL_15;
  }

  if (v11)
  {
    v12 = HKSPLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = v13;
      v15 = [v5 bedtimeInProgressState];
      v16 = [v15 stateName];
      *v70 = 138543618;
      *&v70[4] = v13;
      *&v70[12] = 2114;
      *&v70[14] = v16;
      _os_log_impl(&dword_269B11000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] in user requested sleep mode, determined state: %{public}@", v70, 0x16u);
    }

    v17 = [v5 bedtimeInProgressState];
    goto LABEL_15;
  }

  if (v10 > 2)
  {
    if (v10 != 6)
    {
      if (v10 != 3)
      {
        goto LABEL_17;
      }

      v30 = HKSPLogForCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = objc_opt_class();
        v32 = v31;
        v33 = [v5 windDownState];
        v34 = [v33 stateName];
        *v70 = 138543618;
        *&v70[4] = v31;
        *&v70[12] = 2114;
        *&v70[14] = v34;
        _os_log_impl(&dword_269B11000, v30, OS_LOG_TYPE_DEFAULT, "[%{public}@] determined state: %{public}@", v70, 0x16u);
      }

      v17 = [v5 windDownState];
      goto LABEL_15;
    }

    goto LABEL_27;
  }

  if (v10 != 1)
  {
    if (v10 != 2)
    {
      goto LABEL_17;
    }

LABEL_27:
    v28 = [v9 previousEventWithIdentifier:*MEMORY[0x277D621B8] dueBeforeDate:{v8, *v70, *&v70[8]}];
    if (v28)
    {
      [v8 timeIntervalSinceDate:v28];
      v36 = v35;
    }

    else
    {
      v36 = 1.79769313e308;
    }

    v37 = [v5 bedtimeState];
    [v37 expirationDuration];
    v39 = v38;

    v40 = HKSPLogForCategory();
    v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
    if (v36 >= v39)
    {
      if (v41)
      {
        v47 = objc_opt_class();
        v48 = v47;
        v49 = [v5 bedtimeInProgressState];
        v50 = [v49 stateName];
        *v70 = 138543618;
        *&v70[4] = v47;
        *&v70[12] = 2114;
        *&v70[14] = v50;
        _os_log_impl(&dword_269B11000, v40, OS_LOG_TYPE_DEFAULT, "[%{public}@] determined state: %{public}@", v70, 0x16u);
      }

      v46 = [v5 bedtimeInProgressState];
    }

    else
    {
      if (v41)
      {
        v42 = objc_opt_class();
        v43 = v42;
        v44 = [v5 bedtimeState];
        v45 = [v44 stateName];
        *v70 = 138543618;
        *&v70[4] = v42;
        *&v70[12] = 2114;
        *&v70[14] = v45;
        _os_log_impl(&dword_269B11000, v40, OS_LOG_TYPE_DEFAULT, "[%{public}@] determined state: %{public}@", v70, 0x16u);
      }

      v46 = [v5 bedtimeState];
    }

LABEL_39:
    v51 = v46;
    [v5 enterState:{v46, *v70, *&v70[8]}];

    goto LABEL_16;
  }

  if (![(HDSPSleepWidgetStateMachineState *)self shouldGoIntoUpcomingState])
  {
    v28 = [v9 previousEventWithIdentifier:*MEMORY[0x277D621E0] dueBeforeDate:v8];
    if (v28)
    {
      [v8 timeIntervalSinceDate:v28];
      v53 = v52;
    }

    else
    {
      v53 = 1.79769313e308;
    }

    v54 = HKSPLogForCategory();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v55 = objc_opt_class();
      *v70 = 138543874;
      *&v70[4] = v55;
      *&v70[12] = 2114;
      *&v70[14] = v28;
      v71 = 2048;
      v72 = v53;
      v56 = v55;
      _os_log_impl(&dword_269B11000, v54, OS_LOG_TYPE_DEFAULT, "[%{public}@] wake up date: %{public}@ (secondsAfterWakeUp: %f)", v70, 0x20u);
    }

    v57 = [v5 greetingState];
    [v57 expirationDuration];
    v59 = v58;

    v60 = HKSPLogForCategory();
    v61 = os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT);
    if (v53 >= v59)
    {
      if (v61)
      {
        v66 = objc_opt_class();
        v67 = v66;
        v68 = [v5 waitingState];
        v69 = [v68 stateName];
        *v70 = 138543618;
        *&v70[4] = v66;
        *&v70[12] = 2114;
        *&v70[14] = v69;
        _os_log_impl(&dword_269B11000, v60, OS_LOG_TYPE_DEFAULT, "[%{public}@] determined state: %{public}@", v70, 0x16u);
      }

      v46 = [v5 waitingState];
    }

    else
    {
      if (v61)
      {
        v62 = objc_opt_class();
        v63 = v62;
        v64 = [v5 greetingState];
        v65 = [v64 stateName];
        *v70 = 138543618;
        *&v70[4] = v62;
        *&v70[12] = 2114;
        *&v70[14] = v65;
        _os_log_impl(&dword_269B11000, v60, OS_LOG_TYPE_DEFAULT, "[%{public}@] determined state: %{public}@", v70, 0x16u);
      }

      v46 = [v5 greetingState];
    }

    goto LABEL_39;
  }

  v17 = [v5 upcomingState];
LABEL_15:
  v28 = v17;
  [v5 enterState:{v17, *v70}];
LABEL_16:

LABEL_17:
  v29 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldGoIntoUpcomingState
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [(HKSPStateMachineState *)self stateMachine];
  v3 = [v2 infoProvider];
  v4 = [v3 currentDate];

  v5 = [v2 waitingState];
  v6 = [v5 expirationDate];

  if (v6 && [v4 hksp_isAfterOrSameAsDate:v6])
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = v8;
      v10 = [v2 upcomingState];
      v11 = [v10 stateName];
      v15 = 138543618;
      v16 = v8;
      v17 = 2114;
      v18 = v11;
      _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] determined state: %{public}@", &v15, 0x16u);
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)sleepModeDidChange:(int64_t)a3 isUserRequested:(BOOL)a4
{
  v4 = a4;
  v13 = *MEMORY[0x277D85DE8];
  v6 = [(HKSPStateMachineState *)self stateMachine];
  if (a3 == 2 && v4)
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = objc_opt_class();
      v8 = v12;
      _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] user turned on sleep mode", &v11, 0xCu);
    }

    v9 = [v6 bedtimeInProgressState];
    [v6 enterState:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)sleepScheduleStateDidChange:(unint64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = [(HKSPStateMachineState *)self stateMachine];
  if (a3 == 3)
  {
    v9 = HKSPLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 138543362;
      *&v13[4] = objc_opt_class();
      v10 = *&v13[4];
      _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] schedule state is wind down", v13, 0xCu);
    }

    v8 = [v5 windDownState];
  }

  else
  {
    if (a3)
    {
      v11 = [(HKSPStateMachineState *)self stateMachine];
      [v11 updateState];
      goto LABEL_11;
    }

    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 138543362;
      *&v13[4] = objc_opt_class();
      v7 = *&v13[4];
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] schedule state is disabled", v13, 0xCu);
    }

    v8 = [v5 disabledState];
  }

  v11 = v8;
  [v5 enterState:{v8, *v13}];
LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)sleepScheduleModelDidChange:(id)a3
{
  v8 = [(HKSPStateMachineState *)self stateMachine];
  v4 = [v8 infoProvider];
  if (![v4 isOnboarded])
  {

    goto LABEL_5;
  }

  v5 = [(HDSPSleepWidgetStateMachineState *)self widgetStateHasTimeComponent];

  if (v5)
  {
LABEL_5:
    v6 = [(HKSPStateMachineState *)self stateMachine];
    [v6 updateState];
  }

  if ([(HDSPSleepWidgetStateMachineState *)self reloadsWidgetOnModelChange])
  {
    v7 = [(HKSPStateMachineState *)self stateMachine];
    [v7 sleepWidgetShouldReload];
  }
}

- (void)significantTimeChangeOccurred
{
  if ([(HDSPSleepWidgetStateMachineState *)self widgetStateHasTimeComponent])
  {
    v3 = [(HKSPStateMachineState *)self stateMachine];
    [v3 updateState];
  }

  if ([(HDSPSleepWidgetStateMachineState *)self reloadsWidgetOnTimeChange])
  {
    v4 = [(HKSPStateMachineState *)self stateMachine];
    [v4 sleepWidgetShouldReload];
  }
}

@end