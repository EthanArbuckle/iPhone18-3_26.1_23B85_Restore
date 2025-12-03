@interface HDSPWakeUpResultsNotificationLocalizer
- (HDSPWakeUpResultsNotificationLocalizer)initWithNotification:(id)notification healthStore:(id)store;
- (double)dailySleepDurationGoal;
- (id)_embeddedNameLocalizedStringKey;
- (id)_embeddedNameSubstitutionStringKey;
- (id)_localizedBodyForOneDayNotificationWithError:(id *)error;
- (id)_localizedBodyForOneWeekDayNotificationWithError:(id *)error;
- (id)_localizedBodyForTwoWeekNotificationWithError:(id *)error;
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

- (HDSPWakeUpResultsNotificationLocalizer)initWithNotification:(id)notification healthStore:(id)store
{
  notificationCopy = notification;
  storeCopy = store;
  v13.receiver = self;
  v13.super_class = HDSPWakeUpResultsNotificationLocalizer;
  v9 = [(HDSPWakeUpResultsNotificationLocalizer *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_notification, notification);
    objc_storeStrong(&v10->_healthStore, store);
    v11 = v10;
  }

  return v10;
}

- (id)localizedBody
{
  v21 = *MEMORY[0x277D85DE8];
  notification = [(HDSPWakeUpResultsNotificationLocalizer *)self notification];
  category = [notification category];

  if (category == 2)
  {
    v14 = 0;
    v5 = &v14;
    v6 = [(HDSPWakeUpResultsNotificationLocalizer *)self _localizedBodyForTwoWeekNotificationWithError:&v14];
  }

  else if (category == 1)
  {
    v15 = 0;
    v5 = &v15;
    v6 = [(HDSPWakeUpResultsNotificationLocalizer *)self _localizedBodyForOneWeekDayNotificationWithError:&v15];
  }

  else
  {
    if (category)
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

- (id)_localizedBodyForOneDayNotificationWithError:(id *)error
{
  v51 = *MEMORY[0x277D85DE8];
  if ([(HDSPWakeUpResultsNotificationLocalizer *)self category])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HDSPWakeUpResultsNotificationLocalizer category](self, "category")}];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDSPWakeUpResultsNotificationLocalizer.m" lineNumber:81 description:{@"This method can only localized content for One Day Wake Up Results; received category %@", v40}];
  }

  [(HDSPWakeUpResultsNotificationLocalizer *)self dailySleepDurationGoal];
  v6 = vcvtmd_s64_f64(v5 / 3600.0);
  v7 = MEMORY[0x277CCABB8];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v9 = [v7 localizedStringFromNumber:v8 numberStyle:1];

  userFirstName = [(HDSPWakeUpResultsNotificationLocalizer *)self userFirstName];
  _embeddedNameLocalizedStringKey = [(HDSPWakeUpResultsNotificationLocalizer *)self _embeddedNameLocalizedStringKey];
  v12 = HDSPLocalizedCoachingString(_embeddedNameLocalizedStringKey);

  if ([userFirstName length] && v12)
  {
    _embeddedNameLocalizedStringKey2 = [(HDSPWakeUpResultsNotificationLocalizer *)self _embeddedNameLocalizedStringKey];
    v14 = HDSPLocalizedCoachingString(_embeddedNameLocalizedStringKey2);

    _embeddedNameSubstitutionStringKey = [(HDSPWakeUpResultsNotificationLocalizer *)self _embeddedNameSubstitutionStringKey];
    v16 = HDSPLocalizedCoachingSubstitutionString(_embeddedNameSubstitutionStringKey);

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
      v23 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v14 validFormatSpecifiers:@"%@%@" error:&v46, userFirstName, v20];
      v24 = v46;

      v12 = v21;
    }

    else
    {
      v19 = v9;
      v45 = 0;
      v23 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v14 validFormatSpecifiers:@"%@" error:&v45, userFirstName];
      v24 = v45;
    }
  }

  else
  {
    _regularLocalizedStringKey = [(HDSPWakeUpResultsNotificationLocalizer *)self _regularLocalizedStringKey];
    v14 = HDSPLocalizedCoachingString(_regularLocalizedStringKey);

    _regularSubstitutionStringKey = [(HDSPWakeUpResultsNotificationLocalizer *)self _regularSubstitutionStringKey];
    v16 = HDSPLocalizedCoachingSubstitutionString(_regularSubstitutionStringKey);

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
      if (error)
      {
        v35 = v33;
        *error = v34;
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

- (id)_localizedBodyForOneWeekDayNotificationWithError:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  if ([(HDSPWakeUpResultsNotificationLocalizer *)self category]!= 1)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HDSPWakeUpResultsNotificationLocalizer category](self, "category")}];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDSPWakeUpResultsNotificationLocalizer.m" lineNumber:139 description:{@"This method can only localized content for One Week Wake Up Results; received category %@", v20}];
  }

  weeklyGoalAchieved = [(HDSPWakeUpResultsNotificationLocalizer *)self weeklyGoalAchieved];
  if ((weeklyGoalAchieved - 5) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v21 = weeklyGoalAchieved;
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    v23 = [MEMORY[0x277CCABB0] numberWithInteger:v21];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDSPWakeUpResultsNotificationLocalizer.m" lineNumber:145 description:{@"One Week goal achieved count must be 3 or 4; received %@", v23}];
  }

  userFirstName = [(HDSPWakeUpResultsNotificationLocalizer *)self userFirstName];
  _embeddedNameLocalizedStringKey = [(HDSPWakeUpResultsNotificationLocalizer *)self _embeddedNameLocalizedStringKey];
  v9 = HDSPLocalizedCoachingString(_embeddedNameLocalizedStringKey);

  if ([userFirstName length] && v9)
  {
    v24 = 0;
    v10 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v9 validFormatSpecifiers:@"%@" error:&v24, userFirstName];
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
      if (error)
      {
        v14 = v13;
        *error = v12;
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
    _regularLocalizedStringKey = [(HDSPWakeUpResultsNotificationLocalizer *)self _regularLocalizedStringKey];
    v10 = HDSPLocalizedCoachingString(_regularLocalizedStringKey);

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

- (id)_localizedBodyForTwoWeekNotificationWithError:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  if ([(HDSPWakeUpResultsNotificationLocalizer *)self category]!= 2)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HDSPWakeUpResultsNotificationLocalizer category](self, "category")}];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDSPWakeUpResultsNotificationLocalizer.m" lineNumber:170 description:{@"This method can only localized content for Two Week Wake Up Results; received category %@", v28}];
  }

  userFirstName = [(HDSPWakeUpResultsNotificationLocalizer *)self userFirstName];
  _embeddedNameLocalizedStringKey = [(HDSPWakeUpResultsNotificationLocalizer *)self _embeddedNameLocalizedStringKey];
  v8 = HDSPLocalizedCoachingString(_embeddedNameLocalizedStringKey);

  if ([userFirstName length] && v8)
  {
    _embeddedNameLocalizedStringKey2 = [(HDSPWakeUpResultsNotificationLocalizer *)self _embeddedNameLocalizedStringKey];
    v10 = HDSPLocalizedCoachingString(_embeddedNameLocalizedStringKey2);

    _embeddedNameSubstitutionStringKey = [(HDSPWakeUpResultsNotificationLocalizer *)self _embeddedNameSubstitutionStringKey];
    v12 = HDSPLocalizedCoachingSubstitutionString(_embeddedNameSubstitutionStringKey);

    if (v12)
    {
      v33 = 0;
      v13 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v12 validFormatSpecifiers:@"%ld" error:&v33, -[HDSPWakeUpResultsNotificationLocalizer weeklyGoalAchieved](self, "weeklyGoalAchieved")];
      v14 = v33;
      v32 = v14;
      v15 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@%@" error:&v32, userFirstName, v13];
      v16 = v32;
LABEL_9:
      v19 = v16;

      goto LABEL_12;
    }

    v31 = 0;
    v15 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@" error:&v31, userFirstName];
    v19 = v31;
  }

  else
  {
    _regularLocalizedStringKey = [(HDSPWakeUpResultsNotificationLocalizer *)self _regularLocalizedStringKey];
    v10 = HDSPLocalizedCoachingString(_regularLocalizedStringKey);

    _regularSubstitutionStringKey = [(HDSPWakeUpResultsNotificationLocalizer *)self _regularSubstitutionStringKey];
    v12 = HDSPLocalizedCoachingSubstitutionString(_regularSubstitutionStringKey);

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
      if (error)
      {
        v23 = v21;
        *error = v22;
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
  notification = [(HDSPWakeUpResultsNotificationLocalizer *)self notification];
  category = [notification category];

  return category;
}

- (int64_t)notificationVariant
{
  notification = [(HDSPWakeUpResultsNotificationLocalizer *)self notification];
  notificationVariant = [notification notificationVariant];

  return notificationVariant;
}

- (double)dailySleepDurationGoal
{
  if ([(HDSPWakeUpResultsNotificationLocalizer *)self category])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDSPWakeUpResultsNotificationLocalizer.m" lineNumber:224 description:@"Daily sleep duration goal requires OneDay category"];
  }

  notification = [(HDSPWakeUpResultsNotificationLocalizer *)self notification];
  goalAchieved = [notification goalAchieved];
  secondUnit = [MEMORY[0x277CCDAB0] secondUnit];
  [goalAchieved doubleValueForUnit:secondUnit];
  v8 = v7;

  return v8;
}

- (int64_t)weeklyGoalAchieved
{
  if (![(HDSPWakeUpResultsNotificationLocalizer *)self category])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDSPWakeUpResultsNotificationLocalizer.m" lineNumber:233 description:@"Weekly goal achieved requires OneWeek or TwoWeek category"];
  }

  notification = [(HDSPWakeUpResultsNotificationLocalizer *)self notification];
  goalAchieved = [notification goalAchieved];
  dayUnit = [MEMORY[0x277CCDAB0] dayUnit];
  [goalAchieved doubleValueForUnit:dayUnit];
  v8 = v7;

  return v8;
}

- (id)userFirstName
{
  notification = [(HDSPWakeUpResultsNotificationLocalizer *)self notification];
  userFirstName = [notification userFirstName];

  return userFirstName;
}

- (id)_localizedStringKeyBase
{
  notification = [(HDSPWakeUpResultsNotificationLocalizer *)self notification];
  category = [notification category];

  if (category)
  {
    if (category == 2)
    {
      v7 = @"WAKE_UP_RESULT_TWO_WEEK_GOAL_ACHIEVED";
    }

    else if (category == 1)
    {
      weeklyGoalAchieved = [(HDSPWakeUpResultsNotificationLocalizer *)self weeklyGoalAchieved];
      v6 = @"WAKE_UP_RESULT_FOUR_DAY_GOAL_ACHIEVED";
      if (weeklyGoalAchieved == 3)
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
  _localizedStringKeyBase = [(HDSPWakeUpResultsNotificationLocalizer *)self _localizedStringKeyBase];
  v5 = [v3 stringWithFormat:@"%@_%ld", _localizedStringKeyBase, -[HDSPWakeUpResultsNotificationLocalizer notificationVariant](self, "notificationVariant")];

  return v5;
}

- (id)_regularSubstitutionStringKey
{
  v3 = MEMORY[0x277CCACA8];
  _localizedStringKeyBase = [(HDSPWakeUpResultsNotificationLocalizer *)self _localizedStringKeyBase];
  v5 = [v3 stringWithFormat:@"%@_%ld_SUBSTITUTION", _localizedStringKeyBase, -[HDSPWakeUpResultsNotificationLocalizer notificationVariant](self, "notificationVariant")];

  return v5;
}

- (id)_embeddedNameLocalizedStringKey
{
  v3 = MEMORY[0x277CCACA8];
  _localizedStringKeyBase = [(HDSPWakeUpResultsNotificationLocalizer *)self _localizedStringKeyBase];
  v5 = [v3 stringWithFormat:@"%@_NAME_%ld", _localizedStringKeyBase, -[HDSPWakeUpResultsNotificationLocalizer notificationVariant](self, "notificationVariant")];

  return v5;
}

- (id)_embeddedNameSubstitutionStringKey
{
  v3 = MEMORY[0x277CCACA8];
  _localizedStringKeyBase = [(HDSPWakeUpResultsNotificationLocalizer *)self _localizedStringKeyBase];
  v5 = [v3 stringWithFormat:@"%@_NAME_%ld_SUBSTITUTION", _localizedStringKeyBase, -[HDSPWakeUpResultsNotificationLocalizer notificationVariant](self, "notificationVariant")];

  return v5;
}

@end