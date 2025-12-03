@interface HDSPSleepScheduleModelChangeEvaluator
+ (unint64_t)_evaluateChangesFromObject:(id)object toObject:(id)toObject outChangeSet:(id *)set;
- (HDSPEnvironment)environment;
- (HDSPSleepScheduleModelChangeEvaluator)initWithEnvironment:(id)environment;
- (id)evaluateSleepRecordAdd:(id)add;
- (id)evaluateSleepRecordUpdate:(id)update;
- (id)evaluateSleepScheduleAdd:(id)add;
- (id)evaluateSleepScheduleModelChange:(id)change;
- (id)evaluateSleepScheduleRemove;
- (id)evaluateSleepScheduleUpdate:(id)update;
- (id)evaluateSleepSettingsAdd:(id)add;
- (id)evaluateSleepSettingsUpdate:(id)update;
- (void)_loadPersistedModel;
- (void)_persistModel:(id)model;
- (void)_persistRecord:(id)record;
- (void)_persistSchedule:(id)schedule;
- (void)_persistSettings:(id)settings;
- (void)_restorePersistedModelWithScheduleData:(id)data settingsData:(id)settingsData recordData:(id)recordData;
@end

@implementation HDSPSleepScheduleModelChangeEvaluator

- (HDSPSleepScheduleModelChangeEvaluator)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v9.receiver = self;
  v9.super_class = HDSPSleepScheduleModelChangeEvaluator;
  v5 = [(HDSPSleepScheduleModelChangeEvaluator *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environment, environmentCopy);
    v7 = v6;
  }

  return v6;
}

- (void)_loadPersistedModel
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  userDefaults = [WeakRetained userDefaults];
  v5 = [userDefaults hksp_objectForKey:@"HKSPLastSchedule"];

  v6 = objc_loadWeakRetained(&self->_environment);
  userDefaults2 = [v6 userDefaults];
  v8 = [userDefaults2 hksp_objectForKey:@"HKSPLastSettings"];

  v9 = objc_loadWeakRetained(&self->_environment);
  userDefaults3 = [v9 userDefaults];
  v11 = [userDefaults3 hksp_objectForKey:@"HKSPLastRecord"];

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
    sleepScheduleModelManager = [v15 sleepScheduleModelManager];
    sleepScheduleModel = [sleepScheduleModelManager sleepScheduleModel];
    [(HDSPSleepScheduleModelChangeEvaluator *)self _persistModel:sleepScheduleModel];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_restorePersistedModelWithScheduleData:(id)data settingsData:(id)settingsData recordData:(id)recordData
{
  dataCopy = data;
  settingsDataCopy = settingsData;
  recordDataCopy = recordData;
  if (dataCopy)
  {
    v10 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:0];
    [(HDSPSleepScheduleModelChangeEvaluator *)self setLastSchedule:v10];
  }

  if (settingsDataCopy)
  {
    v11 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:settingsDataCopy error:0];
    [(HDSPSleepScheduleModelChangeEvaluator *)self setLastSettings:v11];
  }

  if (recordDataCopy)
  {
    v12 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:recordDataCopy error:0];
    [(HDSPSleepScheduleModelChangeEvaluator *)self setLastRecord:v12];
  }
}

- (void)_persistModel:(id)model
{
  modelCopy = model;
  sleepSchedule = [modelCopy sleepSchedule];
  [(HDSPSleepScheduleModelChangeEvaluator *)self _persistSchedule:sleepSchedule];

  sleepSettings = [modelCopy sleepSettings];
  [(HDSPSleepScheduleModelChangeEvaluator *)self _persistSettings:sleepSettings];

  sleepEventRecord = [modelCopy sleepEventRecord];

  [(HDSPSleepScheduleModelChangeEvaluator *)self _persistRecord:sleepEventRecord];
}

- (void)_persistSchedule:(id)schedule
{
  [(HDSPSleepScheduleModelChangeEvaluator *)self setLastSchedule:?];
  if (schedule)
  {
    v5 = MEMORY[0x277CCAAB0];
    lastSchedule = [(HDSPSleepScheduleModelChangeEvaluator *)self lastSchedule];
    v9 = [v5 archivedDataWithRootObject:lastSchedule requiringSecureCoding:1 error:0];

    WeakRetained = objc_loadWeakRetained(&self->_environment);
    userDefaults = [WeakRetained userDefaults];
    [userDefaults hksp_setObject:v9 forKey:@"HKSPLastSchedule"];
  }

  else
  {
    v9 = objc_loadWeakRetained(&self->_environment);
    WeakRetained = [v9 userDefaults];
    [WeakRetained hksp_removeObjectForKey:@"HKSPLastSchedule"];
  }
}

- (void)_persistSettings:(id)settings
{
  [(HDSPSleepScheduleModelChangeEvaluator *)self setLastSettings:settings];
  v4 = MEMORY[0x277CCAAB0];
  lastSettings = [(HDSPSleepScheduleModelChangeEvaluator *)self lastSettings];
  v8 = [v4 archivedDataWithRootObject:lastSettings requiringSecureCoding:1 error:0];

  WeakRetained = objc_loadWeakRetained(&self->_environment);
  userDefaults = [WeakRetained userDefaults];
  [userDefaults hksp_setObject:v8 forKey:@"HKSPLastSettings"];
}

- (void)_persistRecord:(id)record
{
  [(HDSPSleepScheduleModelChangeEvaluator *)self setLastRecord:record];
  v4 = MEMORY[0x277CCAAB0];
  lastRecord = [(HDSPSleepScheduleModelChangeEvaluator *)self lastRecord];
  v8 = [v4 archivedDataWithRootObject:lastRecord requiringSecureCoding:1 error:0];

  WeakRetained = objc_loadWeakRetained(&self->_environment);
  userDefaults = [WeakRetained userDefaults];
  [userDefaults hksp_setObject:v8 forKey:@"HKSPLastRecord"];
}

- (id)evaluateSleepScheduleAdd:(id)add
{
  v14 = *MEMORY[0x277D85DE8];
  addCopy = add;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep schedule added", &v12, 0xCu);
  }

  [(HDSPSleepScheduleModelChangeEvaluator *)self _persistSchedule:addCopy];
  v7 = HKSPSleepScheduleProperties();
  v8 = HKSPPropertyIdentifiersForProperties();
  v9 = [HDSPSleepScheduleModelChangeEvaluation significantChangeWithTopLevelChangeKeys:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)evaluateSleepScheduleUpdate:(id)update
{
  v20 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = objc_opt_class();
  lastSchedule = [(HDSPSleepScheduleModelChangeEvaluator *)self lastSchedule];
  v17 = 0;
  v7 = [v5 _evaluateChangesFromObject:lastSchedule toObject:updateCopy outChangeSet:&v17];
  v8 = v17;

  [(HDSPSleepScheduleModelChangeEvaluator *)self _persistSchedule:updateCopy];
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
  topLevelChangeKeys = [v8 topLevelChangeKeys];
  v14 = [(HDSPSleepScheduleModelChangeEvaluation *)v12 initWithIsSignificantChange:v7 == 2 topLevelChangeKeys:topLevelChangeKeys];

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

- (id)evaluateSleepSettingsAdd:(id)add
{
  v14 = *MEMORY[0x277D85DE8];
  addCopy = add;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep settings added", &v12, 0xCu);
  }

  [(HDSPSleepScheduleModelChangeEvaluator *)self _persistSettings:addCopy];
  v7 = HKSPSleepSettingsProperties();
  v8 = HKSPPropertyIdentifiersForProperties();
  v9 = [HDSPSleepScheduleModelChangeEvaluation significantChangeWithTopLevelChangeKeys:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)evaluateSleepSettingsUpdate:(id)update
{
  v20 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = objc_opt_class();
  lastSettings = [(HDSPSleepScheduleModelChangeEvaluator *)self lastSettings];
  v17 = 0;
  v7 = [v5 _evaluateChangesFromObject:lastSettings toObject:updateCopy outChangeSet:&v17];
  v8 = v17;

  [(HDSPSleepScheduleModelChangeEvaluator *)self _persistSettings:updateCopy];
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
  topLevelChangeKeys = [v8 topLevelChangeKeys];
  v14 = [(HDSPSleepScheduleModelChangeEvaluation *)v12 initWithIsSignificantChange:v7 == 2 topLevelChangeKeys:topLevelChangeKeys];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)evaluateSleepRecordAdd:(id)add
{
  v15 = *MEMORY[0x277D85DE8];
  addCopy = add;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = objc_opt_class();
    v6 = v14;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep record added", &v13, 0xCu);
  }

  [(HDSPSleepScheduleModelChangeEvaluator *)self _persistRecord:addCopy];
  v7 = [HDSPSleepScheduleModelChangeEvaluation alloc];
  v8 = HKSPSleepEventRecordProperties();
  v9 = HKSPPropertyIdentifiersForProperties();
  v10 = [(HDSPSleepScheduleModelChangeEvaluation *)v7 initWithIsSignificantChange:1 topLevelChangeKeys:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)evaluateSleepRecordUpdate:(id)update
{
  v20 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = objc_opt_class();
  lastRecord = [(HDSPSleepScheduleModelChangeEvaluator *)self lastRecord];
  v17 = 0;
  v7 = [v5 _evaluateChangesFromObject:lastRecord toObject:updateCopy outChangeSet:&v17];
  v8 = v17;

  [(HDSPSleepScheduleModelChangeEvaluator *)self _persistRecord:updateCopy];
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
  topLevelChangeKeys = [v8 topLevelChangeKeys];
  v14 = [(HDSPSleepScheduleModelChangeEvaluation *)v12 initWithIsSignificantChange:v7 == 2 topLevelChangeKeys:topLevelChangeKeys];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)evaluateSleepScheduleModelChange:(id)change
{
  changeCopy = change;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  sleepSchedule = [changeCopy sleepSchedule];
  if (sleepSchedule)
  {
    v7 = sleepSchedule;
    lastSchedule = [(HDSPSleepScheduleModelChangeEvaluator *)self lastSchedule];

    if (!lastSchedule)
    {
      sleepSchedule2 = [changeCopy sleepSchedule];
      v14 = [(HDSPSleepScheduleModelChangeEvaluator *)self evaluateSleepScheduleAdd:sleepSchedule2];
      goto LABEL_11;
    }
  }

  sleepSchedule3 = [changeCopy sleepSchedule];
  if (sleepSchedule3)
  {
  }

  else
  {
    lastSchedule2 = [(HDSPSleepScheduleModelChangeEvaluator *)self lastSchedule];

    if (lastSchedule2)
    {
      sleepSchedule2 = [(HDSPSleepScheduleModelChangeEvaluator *)self evaluateSleepScheduleRemove];
      [v5 addObject:sleepSchedule2];
LABEL_12:

      goto LABEL_13;
    }
  }

  sleepSchedule4 = [changeCopy sleepSchedule];
  if (sleepSchedule4)
  {
    v11 = sleepSchedule4;
    lastSchedule3 = [(HDSPSleepScheduleModelChangeEvaluator *)self lastSchedule];

    if (lastSchedule3)
    {
      sleepSchedule2 = [changeCopy sleepSchedule];
      v14 = [(HDSPSleepScheduleModelChangeEvaluator *)self evaluateSleepScheduleUpdate:sleepSchedule2];
LABEL_11:
      v16 = v14;
      [v5 addObject:v14];

      goto LABEL_12;
    }
  }

LABEL_13:
  sleepSettings = [changeCopy sleepSettings];
  if (sleepSettings)
  {
    v18 = sleepSettings;
    lastSettings = [(HDSPSleepScheduleModelChangeEvaluator *)self lastSettings];

    if (!lastSettings)
    {
      sleepSettings2 = [changeCopy sleepSettings];
      v24 = [(HDSPSleepScheduleModelChangeEvaluator *)self evaluateSleepSettingsAdd:sleepSettings2];
      goto LABEL_19;
    }
  }

  sleepSettings3 = [changeCopy sleepSettings];
  if (sleepSettings3)
  {
    v21 = sleepSettings3;
    lastSettings2 = [(HDSPSleepScheduleModelChangeEvaluator *)self lastSettings];

    if (lastSettings2)
    {
      sleepSettings2 = [changeCopy sleepSettings];
      v24 = [(HDSPSleepScheduleModelChangeEvaluator *)self evaluateSleepSettingsUpdate:sleepSettings2];
LABEL_19:
      v25 = v24;
      [v5 addObject:v24];
    }
  }

  sleepEventRecord = [changeCopy sleepEventRecord];
  if (sleepEventRecord)
  {
    v27 = sleepEventRecord;
    lastRecord = [(HDSPSleepScheduleModelChangeEvaluator *)self lastRecord];

    if (!lastRecord)
    {
      sleepEventRecord2 = [changeCopy sleepEventRecord];
      v33 = [(HDSPSleepScheduleModelChangeEvaluator *)self evaluateSleepRecordAdd:sleepEventRecord2];
      goto LABEL_26;
    }
  }

  sleepEventRecord3 = [changeCopy sleepEventRecord];
  if (sleepEventRecord3)
  {
    v30 = sleepEventRecord3;
    lastRecord2 = [(HDSPSleepScheduleModelChangeEvaluator *)self lastRecord];

    if (lastRecord2)
    {
      sleepEventRecord2 = [changeCopy sleepEventRecord];
      v33 = [(HDSPSleepScheduleModelChangeEvaluator *)self evaluateSleepRecordUpdate:sleepEventRecord2];
LABEL_26:
      v34 = v33;
      [v5 addObject:v33];
    }
  }

  v35 = [HDSPSleepScheduleModelChangeEvaluation combinedEvaluation:v5];

  return v35;
}

+ (unint64_t)_evaluateChangesFromObject:(id)object toObject:(id)toObject outChangeSet:(id *)set
{
  objectCopy = object;
  v7 = HKSPGenerateChangeSetBetweenObjects();
  v8 = v7;
  if (set)
  {
    v9 = v7;
    *set = v8;
  }

  changes = [v8 changes];
  v11 = [changes count];

  if (v11)
  {
    v12 = [objectCopy mutableCopy];
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