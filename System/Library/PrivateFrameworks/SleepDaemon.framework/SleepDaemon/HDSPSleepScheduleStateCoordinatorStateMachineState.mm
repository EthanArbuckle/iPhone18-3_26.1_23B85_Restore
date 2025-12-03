@interface HDSPSleepScheduleStateCoordinatorStateMachineState
- (BOOL)isAlarmEnabled;
- (BOOL)isSleepScheduleDisabled;
- (id)_determineNextStateFromTimeline;
- (id)_timelineForDate:(id)date;
- (void)_forceUpdateStateWithChangeReason:(unint64_t)reason;
- (void)didEnter;
- (void)scheduleModelChanged:(id)changed;
- (void)significantTimeChange;
- (void)timeZoneChange;
- (void)updateStateForcibly:(BOOL)forcibly;
@end

@implementation HDSPSleepScheduleStateCoordinatorStateMachineState

- (void)didEnter
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  currentContext = [stateMachine currentContext];

  if ([currentContext hasStateTransitionOrInitializing])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    isInitializing = [currentContext isInitializing];
    previousState = [currentContext previousState];
    if ((isInitializing & 1) != 0 || (isKindOfClass & 1) == 0)
    {
      if (isInitializing)
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
      v7 = currentContext;
    }

    v9 = v7;
    stateMachine2 = [(HKSPStateMachineState *)self stateMachine];
    scheduleState = [(HDSPSleepScheduleStateCoordinatorStateMachineState *)self scheduleState];
    if (previousState)
    {
      scheduleState2 = [previousState scheduleState];
    }

    else
    {
      scheduleState2 = *MEMORY[0x277D622D8];
    }

    [stateMachine2 sleepScheduleStateDidChange:scheduleState previousState:scheduleState2 context:v9];
  }
}

- (void)updateStateForcibly:(BOOL)forcibly
{
  forciblyCopy = forcibly;
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  if ([(HDSPSleepScheduleStateCoordinatorStateMachineState *)self isSleepScheduleDisabled])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __74__HDSPSleepScheduleStateCoordinatorStateMachineState_updateStateForcibly___block_invoke;
    v8[3] = &unk_279C7B108;
    v9 = stateMachine;
    v6 = [HDSPSleepScheduleStateCoordinatorStateMachineContext contextWithReason:6];
    [v9 perform:v8 withContext:v6];
  }

  else if (forciblyCopy)
  {
    _determineNextStateFromTimeline = [(HDSPSleepScheduleStateCoordinatorStateMachineState *)self _determineNextStateFromTimeline];
    [stateMachine enterState:_determineNextStateFromTimeline];
  }
}

void __74__HDSPSleepScheduleStateCoordinatorStateMachineState_updateStateForcibly___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 disabledState];
  [v1 enterState:v2];
}

- (void)_forceUpdateStateWithChangeReason:(unint64_t)reason
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __88__HDSPSleepScheduleStateCoordinatorStateMachineState__forceUpdateStateWithChangeReason___block_invoke;
  v7[3] = &unk_279C7B108;
  v7[4] = self;
  v6 = [HDSPSleepScheduleStateCoordinatorStateMachineContext contextWithReason:reason];
  [stateMachine perform:v7 withContext:v6];
}

- (BOOL)isSleepScheduleDisabled
{
  v16 = *MEMORY[0x277D85DE8];
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  infoProvider = [stateMachine infoProvider];
  if (![infoProvider isAppleWatch] || (objc_msgSend(infoProvider, "sleepFeaturesEnabled") & 1) != 0)
  {
    sleepScheduleModel = [infoProvider sleepScheduleModel];
    sleepSchedule = [sleepScheduleModel sleepSchedule];
    v6 = sleepSchedule;
    if (sleepSchedule)
    {
      if ([sleepSchedule isEnabledAndHasOccurrences])
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

  sleepScheduleModel = HKSPLogForCategory();
  if (os_log_type_enabled(sleepScheduleModel, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    v15 = objc_opt_class();
    v11 = v15;
    _os_log_impl(&dword_269B11000, sleepScheduleModel, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep features disabled for this watch", &v14, 0xCu);
  }

  v7 = 1;
LABEL_16:

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)isAlarmEnabled
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  infoProvider = [stateMachine infoProvider];
  previousOccurrence = [infoProvider previousOccurrence];
  alarmConfiguration = [previousOccurrence alarmConfiguration];
  isEnabled = [alarmConfiguration isEnabled];

  return isEnabled;
}

- (id)_timelineForDate:(id)date
{
  dateCopy = date;
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  infoProvider = [stateMachine infoProvider];
  v7 = MEMORY[0x277D624E0];
  sleepScheduleModel = [infoProvider sleepScheduleModel];
  v9 = [v7 builderWithSleepScheduleModel:sleepScheduleModel date:dateCopy];

  v10 = [v9 buildTimelineWithOptions:0];
  timeline = [v10 timeline];

  return timeline;
}

- (id)_determineNextStateFromTimeline
{
  v24 = *MEMORY[0x277D85DE8];
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  infoProvider = [stateMachine infoProvider];
  currentDate = [infoProvider currentDate];

  v6 = [(HDSPSleepScheduleStateCoordinatorStateMachineState *)self _timelineForDate:currentDate];
  v7 = [v6 resolvedOccurrenceContainingDate:currentDate];
  windDownInterval = [v7 windDownInterval];
  v9 = [windDownInterval hksp_containsDate:currentDate searchOptions:1];

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

    windDownState = [stateMachine windDownState];
  }

  else
  {
    bedtimeInterval = [v7 bedtimeInterval];
    v14 = [bedtimeInterval hksp_containsDate:currentDate searchOptions:1];

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

      windDownState = [stateMachine bedtimeState];
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

      windDownState = [stateMachine wakeUpState];
    }
  }

  v19 = windDownState;

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

  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  [stateMachine updateState];

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

- (void)scheduleModelChanged:(id)changed
{
  v13 = *MEMORY[0x277D85DE8];
  isSignificantChange = [changed isSignificantChange];
  v5 = HKSPLogForCategory();
  v6 = v5;
  if (isSignificantChange)
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

    stateMachine = [(HKSPStateMachineState *)self stateMachine];
    [stateMachine updateState];
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end