@interface HDSPSleepScheduleModelChangeEvaluator
+ (unint64_t)_evaluateChangesFromObject:(id)a3 toObject:(id)a4 outChangeSet:(id *)a5;
- (HDSPEnvironment)environment;
- (HDSPSleepScheduleModelChangeEvaluator)initWithEnvironment:(id)a3;
- (id)evaluateSleepRecordAdd:(id)a3;
- (id)evaluateSleepRecordUpdate:(id)a3;
- (id)evaluateSleepScheduleAdd:(id)a3;
- (id)evaluateSleepScheduleModelChange:(id)a3;
- (id)evaluateSleepScheduleRemove;
- (id)evaluateSleepScheduleUpdate:(id)a3;
- (id)evaluateSleepSettingsAdd:(id)a3;
- (id)evaluateSleepSettingsUpdate:(id)a3;
- (void)_loadPersistedModel;
- (void)_persistModel:(id)a3;
- (void)_persistRecord:(id)a3;
- (void)_persistSchedule:(id)a3;
- (void)_persistSettings:(id)a3;
- (void)_restorePersistedModelWithScheduleData:(id)a3 settingsData:(id)a4 recordData:(id)a5;
@end

@implementation HDSPSleepScheduleModelChangeEvaluator

- (HDSPSleepScheduleModelChangeEvaluator)initWithEnvironment:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HDSPSleepScheduleModelChangeEvaluator;
  v5 = [(HDSPSleepScheduleModelChangeEvaluator *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environment, v4);
    v7 = v6;
  }

  return v6;
}

- (void)_loadPersistedModel
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v4 = [WeakRetained userDefaults];
  v5 = [v4 hksp_objectForKey:@"HKSPLastSchedule"];

  v6 = objc_loadWeakRetained(&self->_environment);
  v7 = [v6 userDefaults];
  v8 = [v7 hksp_objectForKey:@"HKSPLastSettings"];

  v9 = objc_loadWeakRetained(&self->_environment);
  v10 = [v9 userDefaults];
  v11 = [v10 hksp_objectForKey:@"HKSPLastRecord"];

  v12 = HKSPLogForCategory();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v5 || v8 || v11)
  {
    if (v13)
    {
      v20 = 138543362;
      v21 = objc_opt_class();
      v18 = v21;
      _os_log_impl(&dword_269B11000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] restoring previous model", &v20, 0xCu);
    }

    [(HDSPSleepScheduleModelChangeEvaluator *)self _restorePersistedModelWithScheduleData:v5 settingsData:v8 recordData:v11];
  }

  else
  {
    if (v13)
    {
      v20 = 138543362;
      v21 = objc_opt_class();
      v14 = v21;
      _os_log_impl(&dword_269B11000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] no previous model to restore", &v20, 0xCu);
    }

    v15 = objc_loadWeakRetained(&self->_environment);
    v16 = [v15 sleepScheduleModelManager];
    v17 = [v16 sleepScheduleModel];
    [(HDSPSleepScheduleModelChangeEvaluator *)self _persistModel:v17];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_restorePersistedModelWithScheduleData:(id)a3 settingsData:(id)a4 recordData:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  if (v13)
  {
    v10 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v13 error:0];
    [(HDSPSleepScheduleModelChangeEvaluator *)self setLastSchedule:v10];
  }

  if (v8)
  {
    v11 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v8 error:0];
    [(HDSPSleepScheduleModelChangeEvaluator *)self setLastSettings:v11];
  }

  if (v9)
  {
    v12 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v9 error:0];
    [(HDSPSleepScheduleModelChangeEvaluator *)self setLastRecord:v12];
  }
}

- (void)_persistModel:(id)a3
{
  v4 = a3;
  v5 = [v4 sleepSchedule];
  [(HDSPSleepScheduleModelChangeEvaluator *)self _persistSchedule:v5];

  v6 = [v4 sleepSettings];
  [(HDSPSleepScheduleModelChangeEvaluator *)self _persistSettings:v6];

  v7 = [v4 sleepEventRecord];

  [(HDSPSleepScheduleModelChangeEvaluator *)self _persistRecord:v7];
}

- (void)_persistSchedule:(id)a3
{
  [(HDSPSleepScheduleModelChangeEvaluator *)self setLastSchedule:?];
  if (a3)
  {
    v5 = MEMORY[0x277CCAAB0];
    v6 = [(HDSPSleepScheduleModelChangeEvaluator *)self lastSchedule];
    v9 = [v5 archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];

    WeakRetained = objc_loadWeakRetained(&self->_environment);
    v8 = [WeakRetained userDefaults];
    [v8 hksp_setObject:v9 forKey:@"HKSPLastSchedule"];
  }

  else
  {
    v9 = objc_loadWeakRetained(&self->_environment);
    WeakRetained = [v9 userDefaults];
    [WeakRetained hksp_removeObjectForKey:@"HKSPLastSchedule"];
  }
}

- (void)_persistSettings:(id)a3
{
  [(HDSPSleepScheduleModelChangeEvaluator *)self setLastSettings:a3];
  v4 = MEMORY[0x277CCAAB0];
  v5 = [(HDSPSleepScheduleModelChangeEvaluator *)self lastSettings];
  v8 = [v4 archivedDataWithRootObject:v5 requiringSecureCoding:1 error:0];

  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v7 = [WeakRetained userDefaults];
  [v7 hksp_setObject:v8 forKey:@"HKSPLastSettings"];
}

- (void)_persistRecord:(id)a3
{
  [(HDSPSleepScheduleModelChangeEvaluator *)self setLastRecord:a3];
  v4 = MEMORY[0x277CCAAB0];
  v5 = [(HDSPSleepScheduleModelChangeEvaluator *)self lastRecord];
  v8 = [v4 archivedDataWithRootObject:v5 requiringSecureCoding:1 error:0];

  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v7 = [WeakRetained userDefaults];
  [v7 hksp_setObject:v8 forKey:@"HKSPLastRecord"];
}

- (id)evaluateSleepScheduleAdd:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep schedule added", &v12, 0xCu);
  }

  [(HDSPSleepScheduleModelChangeEvaluator *)self _persistSchedule:v4];
  v7 = HKSPSleepScheduleProperties();
  v8 = HKSPPropertyIdentifiersForProperties();
  v9 = [HDSPSleepScheduleModelChangeEvaluation significantChangeWithTopLevelChangeKeys:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)evaluateSleepScheduleUpdate:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(HDSPSleepScheduleModelChangeEvaluator *)self lastSchedule];
  v17 = 0;
  v7 = [v5 _evaluateChangesFromObject:v6 toObject:v4 outChangeSet:&v17];
  v8 = v17;

  [(HDSPSleepScheduleModelChangeEvaluator *)self _persistSchedule:v4];
  if (v7 == 2)
  {
    v9 = HKSPLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      *buf = 138543362;
      v19 = v10;
      v11 = v10;
      _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep schedule changes were significant", buf, 0xCu);
    }
  }

  v12 = [HDSPSleepScheduleModelChangeEvaluation alloc];
  v13 = [v8 topLevelChangeKeys];
  v14 = [(HDSPSleepScheduleModelChangeEvaluation *)v12 initWithIsSignificantChange:v7 == 2 topLevelChangeKeys:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)evaluateSleepScheduleRemove
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = objc_opt_class();
    v4 = v11;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep schedule removed", &v10, 0xCu);
  }

  [(HDSPSleepScheduleModelChangeEvaluator *)self _persistSchedule:0];
  v5 = HKSPSleepScheduleProperties();
  v6 = HKSPPropertyIdentifiersForProperties();
  v7 = [HDSPSleepScheduleModelChangeEvaluation significantChangeWithTopLevelChangeKeys:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)evaluateSleepSettingsAdd:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep settings added", &v12, 0xCu);
  }

  [(HDSPSleepScheduleModelChangeEvaluator *)self _persistSettings:v4];
  v7 = HKSPSleepSettingsProperties();
  v8 = HKSPPropertyIdentifiersForProperties();
  v9 = [HDSPSleepScheduleModelChangeEvaluation significantChangeWithTopLevelChangeKeys:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)evaluateSleepSettingsUpdate:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(HDSPSleepScheduleModelChangeEvaluator *)self lastSettings];
  v17 = 0;
  v7 = [v5 _evaluateChangesFromObject:v6 toObject:v4 outChangeSet:&v17];
  v8 = v17;

  [(HDSPSleepScheduleModelChangeEvaluator *)self _persistSettings:v4];
  if (v7 == 2)
  {
    v9 = HKSPLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      *buf = 138543362;
      v19 = v10;
      v11 = v10;
      _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep settings changes were significant", buf, 0xCu);
    }
  }

  v12 = [HDSPSleepScheduleModelChangeEvaluation alloc];
  v13 = [v8 topLevelChangeKeys];
  v14 = [(HDSPSleepScheduleModelChangeEvaluation *)v12 initWithIsSignificantChange:v7 == 2 topLevelChangeKeys:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)evaluateSleepRecordAdd:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = objc_opt_class();
    v6 = v14;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep record added", &v13, 0xCu);
  }

  [(HDSPSleepScheduleModelChangeEvaluator *)self _persistRecord:v4];
  v7 = [HDSPSleepScheduleModelChangeEvaluation alloc];
  v8 = HKSPSleepEventRecordProperties();
  v9 = HKSPPropertyIdentifiersForProperties();
  v10 = [(HDSPSleepScheduleModelChangeEvaluation *)v7 initWithIsSignificantChange:1 topLevelChangeKeys:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)evaluateSleepRecordUpdate:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(HDSPSleepScheduleModelChangeEvaluator *)self lastRecord];
  v17 = 0;
  v7 = [v5 _evaluateChangesFromObject:v6 toObject:v4 outChangeSet:&v17];
  v8 = v17;

  [(HDSPSleepScheduleModelChangeEvaluator *)self _persistRecord:v4];
  if (v7 == 2)
  {
    v9 = HKSPLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      *buf = 138543362;
      v19 = v10;
      v11 = v10;
      _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep record changes were significant", buf, 0xCu);
    }
  }

  v12 = [HDSPSleepScheduleModelChangeEvaluation alloc];
  v13 = [v8 topLevelChangeKeys];
  v14 = [(HDSPSleepScheduleModelChangeEvaluation *)v12 initWithIsSignificantChange:v7 == 2 topLevelChangeKeys:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)evaluateSleepScheduleModelChange:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [v4 sleepSchedule];
  if (v6)
  {
    v7 = v6;
    v8 = [(HDSPSleepScheduleModelChangeEvaluator *)self lastSchedule];

    if (!v8)
    {
      v13 = [v4 sleepSchedule];
      v14 = [(HDSPSleepScheduleModelChangeEvaluator *)self evaluateSleepScheduleAdd:v13];
      goto LABEL_11;
    }
  }

  v9 = [v4 sleepSchedule];
  if (v9)
  {
  }

  else
  {
    v15 = [(HDSPSleepScheduleModelChangeEvaluator *)self lastSchedule];

    if (v15)
    {
      v13 = [(HDSPSleepScheduleModelChangeEvaluator *)self evaluateSleepScheduleRemove];
      [v5 addObject:v13];
LABEL_12:

      goto LABEL_13;
    }
  }

  v10 = [v4 sleepSchedule];
  if (v10)
  {
    v11 = v10;
    v12 = [(HDSPSleepScheduleModelChangeEvaluator *)self lastSchedule];

    if (v12)
    {
      v13 = [v4 sleepSchedule];
      v14 = [(HDSPSleepScheduleModelChangeEvaluator *)self evaluateSleepScheduleUpdate:v13];
LABEL_11:
      v16 = v14;
      [v5 addObject:v14];

      goto LABEL_12;
    }
  }

LABEL_13:
  v17 = [v4 sleepSettings];
  if (v17)
  {
    v18 = v17;
    v19 = [(HDSPSleepScheduleModelChangeEvaluator *)self lastSettings];

    if (!v19)
    {
      v23 = [v4 sleepSettings];
      v24 = [(HDSPSleepScheduleModelChangeEvaluator *)self evaluateSleepSettingsAdd:v23];
      goto LABEL_19;
    }
  }

  v20 = [v4 sleepSettings];
  if (v20)
  {
    v21 = v20;
    v22 = [(HDSPSleepScheduleModelChangeEvaluator *)self lastSettings];

    if (v22)
    {
      v23 = [v4 sleepSettings];
      v24 = [(HDSPSleepScheduleModelChangeEvaluator *)self evaluateSleepSettingsUpdate:v23];
LABEL_19:
      v25 = v24;
      [v5 addObject:v24];
    }
  }

  v26 = [v4 sleepEventRecord];
  if (v26)
  {
    v27 = v26;
    v28 = [(HDSPSleepScheduleModelChangeEvaluator *)self lastRecord];

    if (!v28)
    {
      v32 = [v4 sleepEventRecord];
      v33 = [(HDSPSleepScheduleModelChangeEvaluator *)self evaluateSleepRecordAdd:v32];
      goto LABEL_26;
    }
  }

  v29 = [v4 sleepEventRecord];
  if (v29)
  {
    v30 = v29;
    v31 = [(HDSPSleepScheduleModelChangeEvaluator *)self lastRecord];

    if (v31)
    {
      v32 = [v4 sleepEventRecord];
      v33 = [(HDSPSleepScheduleModelChangeEvaluator *)self evaluateSleepRecordUpdate:v32];
LABEL_26:
      v34 = v33;
      [v5 addObject:v33];
    }
  }

  v35 = [HDSPSleepScheduleModelChangeEvaluation combinedEvaluation:v5];

  return v35;
}

+ (unint64_t)_evaluateChangesFromObject:(id)a3 toObject:(id)a4 outChangeSet:(id *)a5
{
  v6 = a3;
  v7 = HKSPGenerateChangeSetBetweenObjects();
  v8 = v7;
  if (a5)
  {
    v9 = v7;
    *a5 = v8;
  }

  v10 = [v8 changes];
  v11 = [v10 count];

  if (v11)
  {
    v12 = [v6 mutableCopy];
    HKSPApplyChangesToObject();
    v13 = HKSPEvaluateChangesToObject();
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (HDSPEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

@end