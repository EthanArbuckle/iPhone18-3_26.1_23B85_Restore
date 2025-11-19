@interface HDSPSleepScheduleStateCoordinatorStateMachineState
- (BOOL)isAlarmEnabled;
- (BOOL)isSleepScheduleDisabled;
- (id)_determineNextStateFromTimeline;
- (id)_timelineForDate:(id)a3;
- (void)_forceUpdateStateWithChangeReason:(unint64_t)a3;
- (void)didEnter;
- (void)scheduleModelChanged:(id)a3;
- (void)significantTimeChange;
- (void)timeZoneChange;
- (void)updateStateForcibly:(BOOL)a3;
@end

@implementation HDSPSleepScheduleStateCoordinatorStateMachineState

- (void)didEnter
{
  v3 = [(HKSPStateMachineState *)self stateMachine];
  v13 = [v3 currentContext];

  if ([v13 hasStateTransitionOrInitializing])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v5 = [v13 isInitializing];
    v6 = [v13 previousState];
    if ((v5 & 1) != 0 || (isKindOfClass & 1) == 0)
    {
      if (v5)
      {
        v8 = 5;
      }

      else
      {
        v8 = 6;
      }

      v7 = [HDSPSleepScheduleStateCoordinatorStateMachineContext contextWithReason:v8];
    }

    else
    {
      v7 = v13;
    }

    v9 = v7;
    v10 = [(HKSPStateMachineState *)self stateMachine];
    v11 = [(HDSPSleepScheduleStateCoordinatorStateMachineState *)self scheduleState];
    if (v6)
    {
      v12 = [v6 scheduleState];
    }

    else
    {
      v12 = *MEMORY[0x277D622D8];
    }

    [v10 sleepScheduleStateDidChange:v11 previousState:v12 context:v9];
  }
}

- (void)updateStateForcibly:(BOOL)a3
{
  v3 = a3;
  v5 = [(HKSPStateMachineState *)self stateMachine];
  if ([(HDSPSleepScheduleStateCoordinatorStateMachineState *)self isSleepScheduleDisabled])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __74__HDSPSleepScheduleStateCoordinatorStateMachineState_updateStateForcibly___block_invoke;
    v8[3] = &unk_279C7B108;
    v9 = v5;
    v6 = [HDSPSleepScheduleStateCoordinatorStateMachineContext contextWithReason:6];
    [v9 perform:v8 withContext:v6];
  }

  else if (v3)
  {
    v7 = [(HDSPSleepScheduleStateCoordinatorStateMachineState *)self _determineNextStateFromTimeline];
    [v5 enterState:v7];
  }
}

void __74__HDSPSleepScheduleStateCoordinatorStateMachineState_updateStateForcibly___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 disabledState];
  [v1 enterState:v2];
}

- (void)_forceUpdateStateWithChangeReason:(unint64_t)a3
{
  v5 = [(HKSPStateMachineState *)self stateMachine];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __88__HDSPSleepScheduleStateCoordinatorStateMachineState__forceUpdateStateWithChangeReason___block_invoke;
  v7[3] = &unk_279C7B108;
  v7[4] = self;
  v6 = [HDSPSleepScheduleStateCoordinatorStateMachineContext contextWithReason:a3];
  [v5 perform:v7 withContext:v6];
}

- (BOOL)isSleepScheduleDisabled
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [(HKSPStateMachineState *)self stateMachine];
  v3 = [v2 infoProvider];
  if (![v3 isAppleWatch] || (objc_msgSend(v3, "sleepFeaturesEnabled") & 1) != 0)
  {
    v4 = [v3 sleepScheduleModel];
    v5 = [v4 sleepSchedule];
    v6 = v5;
    if (v5)
    {
      if ([v5 isEnabledAndHasOccurrences])
      {
        v7 = 0;
LABEL_15:

        goto LABEL_16;
      }

      v8 = HKSPLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138543362;
        v15 = objc_opt_class();
        v9 = v15;
        v10 = "[%{public}@] sleep schedule is disabled";
        goto LABEL_13;
      }
    }

    else
    {
      v8 = HKSPLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138543362;
        v15 = objc_opt_class();
        v9 = v15;
        v10 = "[%{public}@] sleep schedule is nil";
LABEL_13:
        _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, v10, &v14, 0xCu);
      }
    }

    v7 = 1;
    goto LABEL_15;
  }

  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    v15 = objc_opt_class();
    v11 = v15;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep features disabled for this watch", &v14, 0xCu);
  }

  v7 = 1;
LABEL_16:

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)isAlarmEnabled
{
  v2 = [(HKSPStateMachineState *)self stateMachine];
  v3 = [v2 infoProvider];
  v4 = [v3 previousOccurrence];
  v5 = [v4 alarmConfiguration];
  v6 = [v5 isEnabled];

  return v6;
}

- (id)_timelineForDate:(id)a3
{
  v4 = a3;
  v5 = [(HKSPStateMachineState *)self stateMachine];
  v6 = [v5 infoProvider];
  v7 = MEMORY[0x277D624E0];
  v8 = [v6 sleepScheduleModel];
  v9 = [v7 builderWithSleepScheduleModel:v8 date:v4];

  v10 = [v9 buildTimelineWithOptions:0];
  v11 = [v10 timeline];

  return v11;
}

- (id)_determineNextStateFromTimeline
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(HKSPStateMachineState *)self stateMachine];
  v4 = [v3 infoProvider];
  v5 = [v4 currentDate];

  v6 = [(HDSPSleepScheduleStateCoordinatorStateMachineState *)self _timelineForDate:v5];
  v7 = [v6 resolvedOccurrenceContainingDate:v5];
  v8 = [v7 windDownInterval];
  v9 = [v8 hksp_containsDate:v5 searchOptions:1];

  if (v9)
  {
    v10 = HKSPLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138543362;
      v23 = objc_opt_class();
      v11 = v23;
      _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] currently in a wind down session", &v22, 0xCu);
    }

    v12 = [v3 windDownState];
  }

  else
  {
    v13 = [v7 bedtimeInterval];
    v14 = [v13 hksp_containsDate:v5 searchOptions:1];

    v15 = HKSPLogForCategory();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v16)
      {
        v22 = 138543362;
        v23 = objc_opt_class();
        v17 = v23;
        _os_log_impl(&dword_269B11000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] currently in a bedtime session", &v22, 0xCu);
      }

      v12 = [v3 bedtimeState];
    }

    else
    {
      if (v16)
      {
        v22 = 138543362;
        v23 = objc_opt_class();
        v18 = v23;
        _os_log_impl(&dword_269B11000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] not in a session, must be awake", &v22, 0xCu);
      }

      v12 = [v3 wakeUpState];
    }
  }

  v19 = v12;

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)significantTimeChange
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = objc_opt_class();
    v4 = v8;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] significant time change occurred", &v7, 0xCu);
  }

  v5 = [(HKSPStateMachineState *)self stateMachine];
  [v5 updateState];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)timeZoneChange
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] timezone change occurred", &v6, 0xCu);
  }

  [(HDSPSleepScheduleStateCoordinatorStateMachineState *)self _forceUpdateStateWithChangeReason:6];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)scheduleModelChanged:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [a3 isSignificantChange];
  v5 = HKSPLogForCategory();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = objc_opt_class();
      v7 = v12;
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] significant schedule change occurred", &v11, 0xCu);
    }

    [(HDSPSleepScheduleStateCoordinatorStateMachineState *)self significantScheduleChangeOccurred:6];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v11 = 138543362;
      v12 = objc_opt_class();
      v8 = v12;
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_INFO, "[%{public}@] schedule change not significant", &v11, 0xCu);
    }

    v9 = [(HKSPStateMachineState *)self stateMachine];
    [v9 updateState];
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end