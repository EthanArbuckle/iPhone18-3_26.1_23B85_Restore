@interface HDSPWakeUpResultsNotificationLocalizer
- (HDSPWakeUpResultsNotificationLocalizer)initWithNotification:(id)a3 healthStore:(id)a4;
- (double)dailySleepDurationGoal;
- (id)_embeddedNameLocalizedStringKey;
- (id)_embeddedNameSubstitutionStringKey;
- (id)_localizedBodyForOneDayNotificationWithError:(id *)a3;
- (id)_localizedBodyForOneWeekDayNotificationWithError:(id *)a3;
- (id)_localizedBodyForTwoWeekNotificationWithError:(id *)a3;
- (id)_localizedStringKeyBase;
- (id)_regularLocalizedStringKey;
- (id)_regularSubstitutionStringKey;
- (id)localizedBody;
- (id)userFirstName;
- (int64_t)notificationVariant;
- (int64_t)weeklyGoalAchieved;
- (unint64_t)category;
@end

@implementation HDSPWakeUpResultsNotificationLocalizer

- (HDSPWakeUpResultsNotificationLocalizer)initWithNotification:(id)a3 healthStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = HDSPWakeUpResultsNotificationLocalizer;
  v9 = [(HDSPWakeUpResultsNotificationLocalizer *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_notification, a3);
    objc_storeStrong(&v10->_healthStore, a4);
    v11 = v10;
  }

  return v10;
}

- (id)localizedBody
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(HDSPWakeUpResultsNotificationLocalizer *)self notification];
  v4 = [v3 category];

  if (v4 == 2)
  {
    v14 = 0;
    v5 = &v14;
    v6 = [(HDSPWakeUpResultsNotificationLocalizer *)self _localizedBodyForTwoWeekNotificationWithError:&v14];
  }

  else if (v4 == 1)
  {
    v15 = 0;
    v5 = &v15;
    v6 = [(HDSPWakeUpResultsNotificationLocalizer *)self _localizedBodyForOneWeekDayNotificationWithError:&v15];
  }

  else
  {
    if (v4)
    {
      v9 = &stru_287A83178;
      goto LABEL_14;
    }

    v16 = 0;
    v5 = &v16;
    v6 = [(HDSPWakeUpResultsNotificationLocalizer *)self _localizedBodyForOneDayNotificationWithError:&v16];
  }

  v7 = v6;
  v8 = *v5;
  if (v7)
  {
    v9 = [v7 copy];
  }

  else
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      *buf = 138543618;
      v18 = v12;
      v19 = 2114;
      v20 = v8;
      v13 = v12;
      _os_log_error_impl(&dword_269B11000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] Unexpected formatting error: %{public}@", buf, 0x16u);
    }

    v9 = &stru_287A83178;
  }

LABEL_14:
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_localizedBodyForOneDayNotificationWithError:(id *)a3
{
  v51 = *MEMORY[0x277D85DE8];
  if ([(HDSPWakeUpResultsNotificationLocalizer *)self category])
  {
    v39 = [MEMORY[0x277CCA890] currentHandler];
    v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HDSPWakeUpResultsNotificationLocalizer category](self, "category")}];
    [v39 handleFailureInMethod:a2 object:self file:@"HDSPWakeUpResultsNotificationLocalizer.m" lineNumber:81 description:{@"This method can only localized content for One Day Wake Up Results; received category %@", v40}];
  }

  [(HDSPWakeUpResultsNotificationLocalizer *)self dailySleepDurationGoal];
  v6 = vcvtmd_s64_f64(v5 / 3600.0);
  v7 = MEMORY[0x277CCABB8];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v9 = [v7 localizedStringFromNumber:v8 numberStyle:1];

  v10 = [(HDSPWakeUpResultsNotificationLocalizer *)self userFirstName];
  v11 = [(HDSPWakeUpResultsNotificationLocalizer *)self _embeddedNameLocalizedStringKey];
  v12 = HDSPLocalizedCoachingString(v11);

  if ([v10 length] && v12)
  {
    v13 = [(HDSPWakeUpResultsNotificationLocalizer *)self _embeddedNameLocalizedStringKey];
    v14 = HDSPLocalizedCoachingString(v13);

    v15 = [(HDSPWakeUpResultsNotificationLocalizer *)self _embeddedNameSubstitutionStringKey];
    v16 = HDSPLocalizedCoachingSubstitutionString(v15);

    if (v16)
    {
      v48 = 0;
      v17 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v16 validFormatSpecifiers:@"%ld" error:&v48, v6];
      v18 = v48;
      v47 = v18;
      v19 = v9;
      v20 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v17 validFormatSpecifiers:@"%@" error:&v47, v9];
      v21 = v12;
      v22 = v47;

      v46 = v22;
      v23 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v14 validFormatSpecifiers:@"%@%@" error:&v46, v10, v20];
      v24 = v46;

      v12 = v21;
    }

    else
    {
      v19 = v9;
      v45 = 0;
      v23 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v14 validFormatSpecifiers:@"%@" error:&v45, v10];
      v24 = v45;
    }
  }

  else
  {
    v25 = [(HDSPWakeUpResultsNotificationLocalizer *)self _regularLocalizedStringKey];
    v14 = HDSPLocalizedCoachingString(v25);

    v26 = [(HDSPWakeUpResultsNotificationLocalizer *)self _regularSubstitutionStringKey];
    v16 = HDSPLocalizedCoachingSubstitutionString(v26);

    if (v16)
    {
      v44 = 0;
      v27 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v16 validFormatSpecifiers:@"%ld" error:&v44, v6];
      v28 = v44;
      v43 = v28;
      v19 = v9;
      [MEMORY[0x277CCACA8] stringWithValidatedFormat:v27 validFormatSpecifiers:@"%@" error:&v43, v9];
      v30 = v29 = v12;
      v31 = v43;

      v42 = v31;
      v23 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v14 validFormatSpecifiers:@"%@" error:&v42, v30];
      v24 = v42;

      v12 = v29;
    }

    else
    {
      v19 = v9;
      v14 = v14;
      v24 = 0;
      v23 = v14;
    }
  }

  if (v23)
  {
    v32 = v23;
  }

  else
  {
    v33 = v24;
    v34 = v33;
    if (v33)
    {
      if (a3)
      {
        v35 = v33;
        *a3 = v34;
      }

      else
      {
        v36 = HKSPLogForCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v50 = v34;
          _os_log_error_impl(&dword_269B11000, v36, OS_LOG_TYPE_ERROR, "[%{public}@] Unexpected formatting error: %{public}@", buf, 0xCu);
        }
      }
    }
  }

  v37 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)_localizedBodyForOneWeekDayNotificationWithError:(id *)a3
{
  v27 = *MEMORY[0x277D85DE8];
  if ([(HDSPWakeUpResultsNotificationLocalizer *)self category]!= 1)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HDSPWakeUpResultsNotificationLocalizer category](self, "category")}];
    [v19 handleFailureInMethod:a2 object:self file:@"HDSPWakeUpResultsNotificationLocalizer.m" lineNumber:139 description:{@"This method can only localized content for One Week Wake Up Results; received category %@", v20}];
  }

  v6 = [(HDSPWakeUpResultsNotificationLocalizer *)self weeklyGoalAchieved];
  if ((v6 - 5) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v21 = v6;
    v22 = [MEMORY[0x277CCA890] currentHandler];
    v23 = [MEMORY[0x277CCABB0] numberWithInteger:v21];
    [v22 handleFailureInMethod:a2 object:self file:@"HDSPWakeUpResultsNotificationLocalizer.m" lineNumber:145 description:{@"One Week goal achieved count must be 3 or 4; received %@", v23}];
  }

  v7 = [(HDSPWakeUpResultsNotificationLocalizer *)self userFirstName];
  v8 = [(HDSPWakeUpResultsNotificationLocalizer *)self _embeddedNameLocalizedStringKey];
  v9 = HDSPLocalizedCoachingString(v8);

  if ([v7 length] && v9)
  {
    v24 = 0;
    v10 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v9 validFormatSpecifiers:@"%@" error:&v24, v7];
    v11 = v24;
    v12 = v11;
    if (v10)
    {
      goto LABEL_18;
    }

    v13 = v11;
    v12 = v13;
    if (v13)
    {
      if (a3)
      {
        v14 = v13;
        *a3 = v12;
      }

      else
      {
        v16 = HKSPLogForCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v26 = v12;
          _os_log_error_impl(&dword_269B11000, v16, OS_LOG_TYPE_ERROR, "[%{public}@] Unexpected formatting error: %{public}@", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    v15 = [(HDSPWakeUpResultsNotificationLocalizer *)self _regularLocalizedStringKey];
    v10 = HDSPLocalizedCoachingString(v15);

    v12 = 0;
    if (v10)
    {
      goto LABEL_18;
    }
  }

  v10 = 0;
LABEL_18:

  v17 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_localizedBodyForTwoWeekNotificationWithError:(id *)a3
{
  v36 = *MEMORY[0x277D85DE8];
  if ([(HDSPWakeUpResultsNotificationLocalizer *)self category]!= 2)
  {
    v27 = [MEMORY[0x277CCA890] currentHandler];
    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HDSPWakeUpResultsNotificationLocalizer category](self, "category")}];
    [v27 handleFailureInMethod:a2 object:self file:@"HDSPWakeUpResultsNotificationLocalizer.m" lineNumber:170 description:{@"This method can only localized content for Two Week Wake Up Results; received category %@", v28}];
  }

  v6 = [(HDSPWakeUpResultsNotificationLocalizer *)self userFirstName];
  v7 = [(HDSPWakeUpResultsNotificationLocalizer *)self _embeddedNameLocalizedStringKey];
  v8 = HDSPLocalizedCoachingString(v7);

  if ([v6 length] && v8)
  {
    v9 = [(HDSPWakeUpResultsNotificationLocalizer *)self _embeddedNameLocalizedStringKey];
    v10 = HDSPLocalizedCoachingString(v9);

    v11 = [(HDSPWakeUpResultsNotificationLocalizer *)self _embeddedNameSubstitutionStringKey];
    v12 = HDSPLocalizedCoachingSubstitutionString(v11);

    if (v12)
    {
      v33 = 0;
      v13 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v12 validFormatSpecifiers:@"%ld" error:&v33, -[HDSPWakeUpResultsNotificationLocalizer weeklyGoalAchieved](self, "weeklyGoalAchieved")];
      v14 = v33;
      v32 = v14;
      v15 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@%@" error:&v32, v6, v13];
      v16 = v32;
LABEL_9:
      v19 = v16;

      goto LABEL_12;
    }

    v31 = 0;
    v15 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@" error:&v31, v6];
    v19 = v31;
  }

  else
  {
    v17 = [(HDSPWakeUpResultsNotificationLocalizer *)self _regularLocalizedStringKey];
    v10 = HDSPLocalizedCoachingString(v17);

    v18 = [(HDSPWakeUpResultsNotificationLocalizer *)self _regularSubstitutionStringKey];
    v12 = HDSPLocalizedCoachingSubstitutionString(v18);

    if (v12)
    {
      v30 = 0;
      v13 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v12 validFormatSpecifiers:@"%ld" error:&v30, -[HDSPWakeUpResultsNotificationLocalizer weeklyGoalAchieved](self, "weeklyGoalAchieved")];
      v14 = v30;
      v29 = v14;
      v15 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@" error:&v29, v13];
      v16 = v29;
      goto LABEL_9;
    }

    v10 = v10;
    v19 = 0;
    v15 = v10;
  }

LABEL_12:

  if (v15)
  {
    v20 = v15;
  }

  else
  {
    v21 = v19;
    v22 = v21;
    if (v21)
    {
      if (a3)
      {
        v23 = v21;
        *a3 = v22;
      }

      else
      {
        v24 = HKSPLogForCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v35 = v22;
          _os_log_error_impl(&dword_269B11000, v24, OS_LOG_TYPE_ERROR, "[%{public}@] Unexpected formatting error: %{public}@", buf, 0xCu);
        }
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];

  return v15;
}

- (unint64_t)category
{
  v2 = [(HDSPWakeUpResultsNotificationLocalizer *)self notification];
  v3 = [v2 category];

  return v3;
}

- (int64_t)notificationVariant
{
  v2 = [(HDSPWakeUpResultsNotificationLocalizer *)self notification];
  v3 = [v2 notificationVariant];

  return v3;
}

- (double)dailySleepDurationGoal
{
  if ([(HDSPWakeUpResultsNotificationLocalizer *)self category])
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"HDSPWakeUpResultsNotificationLocalizer.m" lineNumber:224 description:@"Daily sleep duration goal requires OneDay category"];
  }

  v4 = [(HDSPWakeUpResultsNotificationLocalizer *)self notification];
  v5 = [v4 goalAchieved];
  v6 = [MEMORY[0x277CCDAB0] secondUnit];
  [v5 doubleValueForUnit:v6];
  v8 = v7;

  return v8;
}

- (int64_t)weeklyGoalAchieved
{
  if (![(HDSPWakeUpResultsNotificationLocalizer *)self category])
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"HDSPWakeUpResultsNotificationLocalizer.m" lineNumber:233 description:@"Weekly goal achieved requires OneWeek or TwoWeek category"];
  }

  v4 = [(HDSPWakeUpResultsNotificationLocalizer *)self notification];
  v5 = [v4 goalAchieved];
  v6 = [MEMORY[0x277CCDAB0] dayUnit];
  [v5 doubleValueForUnit:v6];
  v8 = v7;

  return v8;
}

- (id)userFirstName
{
  v2 = [(HDSPWakeUpResultsNotificationLocalizer *)self notification];
  v3 = [v2 userFirstName];

  return v3;
}

- (id)_localizedStringKeyBase
{
  v3 = [(HDSPWakeUpResultsNotificationLocalizer *)self notification];
  v4 = [v3 category];

  if (v4)
  {
    if (v4 == 2)
    {
      v7 = @"WAKE_UP_RESULT_TWO_WEEK_GOAL_ACHIEVED";
    }

    else if (v4 == 1)
    {
      v5 = [(HDSPWakeUpResultsNotificationLocalizer *)self weeklyGoalAchieved];
      v6 = @"WAKE_UP_RESULT_FOUR_DAY_GOAL_ACHIEVED";
      if (v5 == 3)
      {
        v6 = @"WAKE_UP_RESULT_THREE_DAY_GOAL_ACHIEVED";
      }

      v7 = v6;
    }

    else
    {
      v7 = &stru_287A83178;
    }
  }

  else
  {
    v7 = @"WAKE_UP_RESULT_ONE_DAY_DURATION";
  }

  return v7;
}

- (id)_regularLocalizedStringKey
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HDSPWakeUpResultsNotificationLocalizer *)self _localizedStringKeyBase];
  v5 = [v3 stringWithFormat:@"%@_%ld", v4, -[HDSPWakeUpResultsNotificationLocalizer notificationVariant](self, "notificationVariant")];

  return v5;
}

- (id)_regularSubstitutionStringKey
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HDSPWakeUpResultsNotificationLocalizer *)self _localizedStringKeyBase];
  v5 = [v3 stringWithFormat:@"%@_%ld_SUBSTITUTION", v4, -[HDSPWakeUpResultsNotificationLocalizer notificationVariant](self, "notificationVariant")];

  return v5;
}

- (id)_embeddedNameLocalizedStringKey
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HDSPWakeUpResultsNotificationLocalizer *)self _localizedStringKeyBase];
  v5 = [v3 stringWithFormat:@"%@_NAME_%ld", v4, -[HDSPWakeUpResultsNotificationLocalizer notificationVariant](self, "notificationVariant")];

  return v5;
}

- (id)_embeddedNameSubstitutionStringKey
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HDSPWakeUpResultsNotificationLocalizer *)self _localizedStringKeyBase];
  v5 = [v3 stringWithFormat:@"%@_NAME_%ld_SUBSTITUTION", v4, -[HDSPWakeUpResultsNotificationLocalizer notificationVariant](self, "notificationVariant")];

  return v5;
}

@end