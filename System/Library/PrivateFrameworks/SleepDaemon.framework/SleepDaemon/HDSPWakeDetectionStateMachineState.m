@interface HDSPWakeDetectionStateMachineState
- (BOOL)isWakeDetectionDisabled;
- (void)updateState;
@end

@implementation HDSPWakeDetectionStateMachineState

- (void)updateState
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(HKSPStateMachineState *)self stateMachine];
  if ([(HDSPWakeDetectionStateMachineState *)self isWakeDetectionDisabled])
  {
    v4 = HKSPLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 138543362;
      *&v15[4] = objc_opt_class();
      v5 = *&v15[4];
      _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] wake detection disabled", v15, 0xCu);
    }

    v6 = [v3 disabledState];
    [v3 enterState:v6];
  }

  else
  {
    v6 = [v3 infoProvider];
    v7 = [v6 activeTypes];
    if (v7)
    {
      v9 = HKSPLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 138543362;
        *&v15[4] = objc_opt_class();
        v10 = *&v15[4];
        _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] in detection window for activity (and explicit)", v15, 0xCu);
      }

      v8 = [v3 activityDetectingState];
    }

    else if ((v7 & 2) != 0)
    {
      v11 = HKSPLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 138543362;
        *&v15[4] = objc_opt_class();
        v12 = *&v15[4];
        _os_log_impl(&dword_269B11000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] in detection window for explicit", v15, 0xCu);
      }

      v8 = [v3 explicitDetectingState];
    }

    else
    {
      v8 = [v3 waitingState];
    }

    v13 = v8;
    [v3 enterState:{v8, *v15}];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)isWakeDetectionDisabled
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [(HKSPStateMachineState *)self stateMachine];
  v3 = [v2 infoProvider];
  v4 = [v3 sleepScheduleModel];
  v5 = [v4 sleepSchedule];
  if ([v5 isEnabledAndHasOccurrences])
  {
    v6 = [v4 sleepSettings];
    if ([v3 isWatch] && (-[NSObject watchSleepFeaturesEnabled](v6, "watchSleepFeaturesEnabled") & 1) == 0)
    {
      v7 = HKSPLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138543362;
        v17 = objc_opt_class();
        v10 = v17;
        _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep features disabled", &v16, 0xCu);
      }

      goto LABEL_20;
    }

    v7 = [v4 sleepEventRecord];
    if ([v3 isWatch] && (-[NSObject isAnySleepTrackingOnboardingCompleted](v7, "isAnySleepTrackingOnboardingCompleted") & 1) == 0)
    {
      v11 = HKSPLogForCategory();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
LABEL_19:

LABEL_20:
        v8 = 1;
        goto LABEL_21;
      }

      v16 = 138543362;
      v17 = objc_opt_class();
      v12 = v17;
      v13 = "[%{public}@] sleep tracking onboarding not completed";
    }

    else
    {
      if ([v3 isWatch] & 1) != 0 || (-[NSObject isAnySleepCoachingOnboardingCompleted](v7, "isAnySleepCoachingOnboardingCompleted"))
      {
        v8 = 0;
LABEL_21:

        goto LABEL_22;
      }

      v11 = HKSPLogForCategory();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v16 = 138543362;
      v17 = objc_opt_class();
      v12 = v17;
      v13 = "[%{public}@] sleep coaching onboarding not completed";
    }

    _os_log_impl(&dword_269B11000, v11, OS_LOG_TYPE_DEFAULT, v13, &v16, 0xCu);

    goto LABEL_19;
  }

  v6 = HKSPLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    v17 = objc_opt_class();
    v9 = v17;
    _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep schedule disabled", &v16, 0xCu);
  }

  v8 = 1;
LABEL_22:

  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

@end