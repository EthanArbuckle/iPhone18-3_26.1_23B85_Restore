@interface HDSPSleepStorage
+ (id)standardConfiguration;
- (BOOL)_removeObjectProperties:(id)properties error:(id *)error;
- (BOOL)_saveObject:(id)object error:(id *)error;
- (BOOL)_saveObjectChanges:(id)changes versionKey:(id)key currentVersion:(unint64_t)version error:(id *)error;
- (BOOL)needsMigration;
- (BOOL)removeSleepEventRecordWithError:(id *)error;
- (BOOL)removeSleepScheduleWithError:(id *)error;
- (BOOL)removeSleepSettingsWithError:(id *)error;
- (BOOL)saveSleepEventRecord:(id)record error:(id *)error;
- (BOOL)saveSleepEventRecordChanges:(id)changes error:(id *)error;
- (BOOL)saveSleepSchedule:(id)schedule error:(id *)error;
- (BOOL)saveSleepScheduleChanges:(id)changes error:(id *)error;
- (BOOL)saveSleepScheduleModel:(id)model error:(id *)error;
- (BOOL)saveSleepSettings:(id)settings error:(id *)error;
- (BOOL)saveSleepSettingsChanges:(id)changes error:(id *)error;
- (HDSPEnvironment)environment;
- (HDSPSleepStorage)initWithEnvironment:(id)environment;
- (HDSPSleepStorage)initWithEnvironment:(id)environment configuration:(id)configuration syncedDefaults:(id)defaults;
- (NSString)sourceIdentifier;
- (id)_loadObjectOfClass:(Class)class allowedClasses:(id)classes propertiesToLoad:(id)load error:(id *)error;
- (id)diagnosticDescription;
- (id)loadSleepEventRecord:(id *)record;
- (id)loadSleepSchedule:(id *)schedule;
- (id)loadSleepScheduleModel:(id *)model;
- (id)loadSleepSettings:(id *)settings;
- (id)notificationListener:(id)listener didReceiveNotificationWithName:(id)name;
- (unint64_t)cloudStorageDataVersion;
- (unint64_t)dataVersion;
- (unint64_t)localDataVersion;
- (void)environmentWillBecomeReady:(id)ready;
- (void)performInitialSyncWithCompletion:(id)completion;
- (void)resetCloudStorage;
- (void)saveDataVersion;
- (void)syncedUserDefaultsDidChangeExternally:(id)externally;
@end

@implementation HDSPSleepStorage

+ (id)standardConfiguration
{
  v40[3] = *MEMORY[0x277D85DE8];
  v2 = [HDSPSyncedDefaultsInfo alloc];
  v39 = [(HDSPSyncedDefaultsInfo *)v2 initWithDataVersionKey:@"DataVersion" currentDataVersion:8 cloudDataVersionKey:@"CloudStorageDataVersion" currentCloudDataVersion:1 cloudSyncEnabledKey:*MEMORY[0x277D62170] localDataVersionKey:@"LocalDataVersion" currentLocalDataVersion:1];
  v3 = [HDSPSyncedDefaultsKeySet alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = *MEMORY[0x277D62148];
  v7 = HKSPSleepScheduleProperties();
  v8 = HKSPPropertyIdentifiersForProperties();
  v9 = HKSPSleepScheduleProperties();
  v10 = HKSPPropertyIdentifiersForProperties();
  v38 = [(HDSPSyncedDefaultsKeySet *)v3 initWithIdentifier:v5 modficationDateKey:v6 keysToPersist:v8 keysToSync:v10];

  v37 = [HDSPSyncedDefaultsKeySet alloc];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = *MEMORY[0x277D62160];
  v14 = HKSPSleepSettingsPropertiesForPersist();
  v15 = HKSPPropertyIdentifiersForProperties();
  v16 = HKSPSleepSettingsPropertiesForSync();
  v17 = HKSPPropertyIdentifiersForProperties();
  v18 = HKSPSleepSettingsPerGizmoProperties();
  v19 = HKSPPropertyIdentifiersForProperties();
  v20 = HKSPSleepSettingsDefaultValues();
  v21 = HKSPDefaultValuesByIdentifier();
  v22 = [(HDSPSyncedDefaultsKeySet *)v37 initWithIdentifier:v12 modficationDateKey:v13 keysToPersist:v15 keysToSync:v17 perGizmoKeys:v19 defaultValues:v21];

  v23 = [HDSPSyncedDefaultsKeySet alloc];
  v24 = objc_opt_class();
  v25 = NSStringFromClass(v24);
  v26 = *MEMORY[0x277D62070];
  v27 = HKSPSleepEventRecordProperties();
  v28 = HKSPPropertyIdentifiersForProperties();
  v29 = HKSPSleepEventRecordProperties();
  v30 = HKSPPropertyIdentifiersForProperties();
  v31 = [(HDSPSyncedDefaultsKeySet *)v23 initWithIdentifier:v25 modficationDateKey:v26 keysToPersist:v28 keysToSync:v30];

  v32 = [HDSPSyncedDefaultsConfiguration alloc];
  v40[0] = v38;
  v40[1] = v22;
  v40[2] = v31;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:3];
  v34 = [(HDSPSyncedDefaultsConfiguration *)v32 initWithInfo:v39 keySets:v33];

  v35 = *MEMORY[0x277D85DE8];

  return v34;
}

- (HDSPSleepStorage)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  standardConfiguration = [objc_opt_class() standardConfiguration];
  v6 = [[HDSPSyncedDefaults alloc] initWithEnvironment:environmentCopy configuration:standardConfiguration];
  v7 = [(HDSPSleepStorage *)self initWithEnvironment:environmentCopy configuration:standardConfiguration syncedDefaults:v6];

  return v7;
}

- (HDSPSleepStorage)initWithEnvironment:(id)environment configuration:(id)configuration syncedDefaults:(id)defaults
{
  environmentCopy = environment;
  configurationCopy = configuration;
  defaultsCopy = defaults;
  v19.receiver = self;
  v19.super_class = HDSPSleepStorage;
  v11 = [(HDSPSleepStorage *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_environment, environmentCopy);
    v13 = objc_alloc(MEMORY[0x277D624A0]);
    defaultCallbackScheduler = [environmentCopy defaultCallbackScheduler];
    v15 = [v13 initWithCallbackScheduler:defaultCallbackScheduler];
    observers = v12->_observers;
    v12->_observers = v15;

    objc_storeStrong(&v12->_syncedDefaults, defaults);
    objc_storeStrong(&v12->_configuration, configuration);
    v17 = v12;
  }

  return v12;
}

- (unint64_t)dataVersion
{
  syncedDefaults = [(HDSPSleepStorage *)self syncedDefaults];
  v3 = [syncedDefaults hksp_integerForKey:@"DataVersion"];

  return v3;
}

- (unint64_t)cloudStorageDataVersion
{
  syncedDefaults = [(HDSPSleepStorage *)self syncedDefaults];
  v3 = [syncedDefaults hksp_integerForKey:@"CloudStorageDataVersion"];

  return v3;
}

- (unint64_t)localDataVersion
{
  syncedDefaults = [(HDSPSleepStorage *)self syncedDefaults];
  v3 = [syncedDefaults hksp_integerForKey:@"LocalDataVersion"];

  return v3;
}

- (BOOL)needsMigration
{
  if ([(HDSPSleepStorage *)self dataVersion]< 8)
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_environment);
  behavior = [WeakRetained behavior];
  features = [behavior features];
  v6 = [features sleepCloudKitSync] && !-[HDSPSleepStorage cloudStorageDataVersion](self, "cloudStorageDataVersion") || -[HDSPSleepStorage localDataVersion](self, "localDataVersion") == 0;

  return v6;
}

- (void)performInitialSyncWithCompletion:(id)completion
{
  v11 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = objc_opt_class();
    v6 = v10;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] performing initial sync", &v9, 0xCu);
  }

  syncedDefaults = [(HDSPSleepStorage *)self syncedDefaults];
  [syncedDefaults hdsp_forceSynchronizeWithCompletion:completionCopy];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)saveDataVersion
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = objc_opt_class();
    v4 = v8;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] saving data version", &v7, 0xCu);
  }

  syncedDefaults = [(HDSPSleepStorage *)self syncedDefaults];
  [syncedDefaults saveDataVersion];

  v6 = *MEMORY[0x277D85DE8];
}

- (id)loadSleepSchedule:(id *)schedule
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543362;
    v16 = objc_opt_class();
    v6 = v16;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] loading schedule", &v15, 0xCu);
  }

  v7 = objc_opt_class();
  v8 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  innerClasses = [MEMORY[0x277D624F8] innerClasses];
  v10 = [v8 setByAddingObjectsFromSet:innerClasses];
  v11 = HKSPSleepScheduleProperties();
  v12 = [(HDSPSleepStorage *)self _loadObjectOfClass:v7 allowedClasses:v10 propertiesToLoad:v11 error:schedule];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)saveSleepSchedule:(id)schedule error:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  scheduleCopy = schedule;
  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = objc_opt_class();
    v14 = 2114;
    v15 = scheduleCopy;
    v8 = v13;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] persisting schedule %{public}@", &v12, 0x16u);
  }

  v9 = [(HDSPSleepStorage *)self _saveObject:scheduleCopy error:error];
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)saveSleepScheduleChanges:(id)changes error:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = objc_opt_class();
    v14 = 2114;
    v15 = changesCopy;
    v8 = v13;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] persisting schedule changes %{public}@", &v12, 0x16u);
  }

  v9 = [(HDSPSleepStorage *)self _saveObjectChanges:changesCopy versionKey:*MEMORY[0x277D62150] currentVersion:1 error:error];
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)removeSleepScheduleWithError:(id *)error
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = objc_opt_class();
    v6 = v12;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] removing sleep schedule", &v11, 0xCu);
  }

  v7 = HKSPSleepScheduleProperties();
  v8 = [(HDSPSleepStorage *)self _removeObjectProperties:v7 error:error];

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)loadSleepSettings:(id *)settings
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = objc_opt_class();
    v6 = v14;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] loading settings", &v13, 0xCu);
  }

  v7 = objc_opt_class();
  v8 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v9 = HKSPSleepSettingsPropertiesForPersist();
  v10 = [(HDSPSleepStorage *)self _loadObjectOfClass:v7 allowedClasses:v8 propertiesToLoad:v9 error:settings];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)saveSleepSettings:(id)settings error:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = objc_opt_class();
    v14 = 2114;
    v15 = settingsCopy;
    v8 = v13;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] persisting settings %{public}@", &v12, 0x16u);
  }

  v9 = [(HDSPSleepStorage *)self _saveObject:settingsCopy error:error];
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)saveSleepSettingsChanges:(id)changes error:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = objc_opt_class();
    v14 = 2114;
    v15 = changesCopy;
    v8 = v13;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] persisting settings changes %{public}@", &v12, 0x16u);
  }

  v9 = [(HDSPSleepStorage *)self _saveObjectChanges:changesCopy versionKey:*MEMORY[0x277D62168] currentVersion:11 error:error];
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)removeSleepSettingsWithError:(id *)error
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = objc_opt_class();
    v6 = v12;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] removing sleep settings", &v11, 0xCu);
  }

  v7 = HKSPSleepSettingsPropertiesForPersist();
  v8 = [(HDSPSleepStorage *)self _removeObjectProperties:v7 error:error];

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)loadSleepEventRecord:(id *)record
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    v17 = objc_opt_class();
    v6 = v17;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] loading event record", &v16, 0xCu);
  }

  v7 = objc_opt_class();
  v8 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v9 = HKSPSleepEventRecordProperties();
  v10 = [(HDSPSleepStorage *)self _loadObjectOfClass:v7 allowedClasses:v8 propertiesToLoad:v9 error:record];

  if (!v10)
  {
    v11 = HKSPLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v16 = 138543362;
      v17 = v12;
      v13 = v12;
      _os_log_impl(&dword_269B11000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] creating default event record", &v16, 0xCu);
    }

    v10 = objc_alloc_init(MEMORY[0x277D624D8]);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)saveSleepEventRecord:(id)record error:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = objc_opt_class();
    v14 = 2114;
    v15 = recordCopy;
    v8 = v13;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] persisting event record %{public}@", &v12, 0x16u);
  }

  v9 = [(HDSPSleepStorage *)self _saveObject:recordCopy error:error];
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)saveSleepEventRecordChanges:(id)changes error:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = objc_opt_class();
    v14 = 2114;
    v15 = changesCopy;
    v8 = v13;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] persisting event record changes %{public}@", &v12, 0x16u);
  }

  v9 = [(HDSPSleepStorage *)self _saveObjectChanges:changesCopy versionKey:*MEMORY[0x277D62078] currentVersion:1 error:error];
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)removeSleepEventRecordWithError:(id *)error
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = objc_opt_class();
    v6 = v12;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] removing sleep event record", &v11, 0xCu);
  }

  v7 = HKSPSleepEventRecordProperties();
  v8 = [(HDSPSleepStorage *)self _removeObjectProperties:v7 error:error];

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)loadSleepScheduleModel:(id *)model
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = objc_opt_class();
    v6 = v26;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] loading model", buf, 0xCu);
  }

  v24 = 0;
  v7 = [(HDSPSleepStorage *)self loadSleepSchedule:&v24];
  v8 = v24;
  v9 = v8;
  if (v8)
  {
    if (model)
    {
      v10 = v8;
      v11 = 0;
      *model = v9;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v23 = 0;
    v12 = [(HDSPSleepStorage *)self loadSleepSettings:&v23];
    v13 = v23;
    v14 = v13;
    if (v13)
    {
      if (model)
      {
        v15 = v13;
        v11 = 0;
        *model = v14;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v22 = 0;
      v16 = [(HDSPSleepStorage *)self loadSleepEventRecord:&v22];
      v17 = v22;
      v18 = v17;
      if (v17)
      {
        if (model)
        {
          v19 = v17;
          v11 = 0;
          *model = v18;
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = [MEMORY[0x277D62500] sleepScheduleModelWithSleepSchedule:v7 sleepSettings:v12 sleepEventRecord:v16];
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)saveSleepScheduleModel:(id)model error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = objc_opt_class();
    v8 = v26;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] persisting model", buf, 0xCu);
  }

  sleepSchedule = [modelCopy sleepSchedule];
  v24 = 0;
  v10 = [(HDSPSleepStorage *)self saveSleepSchedule:sleepSchedule error:&v24];
  v11 = v24;

  sleepSettings = [modelCopy sleepSettings];
  v23 = 0;
  v13 = [(HDSPSleepStorage *)self saveSleepSettings:sleepSettings error:&v23];
  v14 = v23;

  sleepEventRecord = [modelCopy sleepEventRecord];

  v22 = 0;
  v16 = [(HDSPSleepStorage *)self saveSleepEventRecord:sleepEventRecord error:&v22];
  v17 = v22;

  if (error)
  {
    if (v14)
    {
      v18 = v14;
    }

    else
    {
      v18 = v17;
    }

    if (v11)
    {
      v19 = v11;
    }

    else
    {
      v19 = v18;
    }

    *error = v19;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v10 && v13 && v16;
}

- (id)_loadObjectOfClass:(Class)class allowedClasses:(id)classes propertiesToLoad:(id)load error:(id *)error
{
  v35[1] = *MEMORY[0x277D85DE8];
  classesCopy = classes;
  loadCopy = load;
  syncedDefaults = [(HDSPSleepStorage *)self syncedDefaults];
  v13 = HKSPPropertyIdentifiersForProperties();

  v14 = [syncedDefaults hksp_dictionaryRepresentationForKeys:v13];

  if ([v14 count])
  {
    v15 = HKSPSerializableKeyForClass();
    v34 = v15;
    v35[0] = v14;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];

    v17 = [objc_alloc(MEMORY[0x277D62450]) initWithAllowedClasses:classesCopy serializedDictionary:v16];
    v27 = 0;
    v18 = [v17 deserializeObjectOfClass:class error:&v27];
    v19 = v27;
    if (v19)
    {
      v20 = HKSPLogForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v25 = objc_opt_class();
        *buf = 138543874;
        v29 = v25;
        v30 = 2114;
        classCopy2 = class;
        v32 = 2114;
        v33 = v19;
        v26 = v25;
        _os_log_error_impl(&dword_269B11000, v20, OS_LOG_TYPE_ERROR, "[%{public}@] failed deserialization of class %{public}@ with error %{public}@", buf, 0x20u);
      }

      if (error)
      {
        v21 = v19;
        *error = v19;
      }
    }
  }

  else
  {
    v16 = HKSPLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v29 = objc_opt_class();
      v30 = 2114;
      classCopy2 = class;
      v22 = v29;
      _os_log_impl(&dword_269B11000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] nothing persisted for properties of class %{public}@", buf, 0x16u);
    }

    v18 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v18;
}

- (BOOL)_saveObject:(id)object error:(id *)error
{
  v39 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v7 = objc_alloc_init(MEMORY[0x277D62458]);
  v8 = v7;
  if (!objectCopy)
  {
    [v7 serializedDictionary];
    goto LABEL_5;
  }

  v34 = 0;
  v9 = [v7 serialize:objectCopy error:&v34];
  v10 = v34;
  v11 = v10;
  if (v9)
  {
    [v8 serializedDictionary];
    v12 = LABEL_5:;
    hksp_serializedProperties = [v12 hksp_serializedProperties];
    v14 = [hksp_serializedProperties mutableCopy];

    syncedDefaults = [(HDSPSleepStorage *)self syncedDefaults];
    [syncedDefaults hksp_saveDictionary:v14];

    serializedDictionary = [v8 serializedDictionary];
    hksp_serializedClassName = [serializedDictionary hksp_serializedClassName];

    v18 = [(HDSPSyncedDefaultsConfiguration *)self->_configuration keySetForIdentifier:hksp_serializedClassName];
    keysToPersist = [v18 keysToPersist];
    v20 = MEMORY[0x277CBEB98];
    allKeys = [v14 allKeys];
    v22 = [v20 setWithArray:allKeys];
    v23 = [keysToPersist na_setByRemovingObjectsFromSet:v22];

    syncedDefaults2 = [(HDSPSleepStorage *)self syncedDefaults];
    [syncedDefaults2 hksp_removeObjectsForKeys:v23];

    syncedDefaults3 = [(HDSPSleepStorage *)self syncedDefaults];
    [syncedDefaults3 hksp_synchronize];

    v26 = 1;
    v11 = v33;
    goto LABEL_11;
  }

  v27 = HKSPLogForCategory();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    v31 = objc_opt_class();
    *buf = 138543618;
    v36 = v31;
    v37 = 2114;
    v38 = v11;
    v32 = v31;
    _os_log_error_impl(&dword_269B11000, v27, OS_LOG_TYPE_ERROR, "[%{public}@] failed serialization with error %{public}@", buf, 0x16u);
  }

  if (error)
  {
    v28 = v11;
    v26 = 0;
    *error = v11;
  }

  else
  {
    v26 = 0;
  }

LABEL_11:

  v29 = *MEMORY[0x277D85DE8];
  return v26;
}

- (BOOL)_saveObjectChanges:(id)changes versionKey:(id)key currentVersion:(unint64_t)version error:(id *)error
{
  v51 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  keyCopy = key;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 1;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy_;
  v41 = __Block_byref_object_dispose_;
  v42 = 0;
  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
  changes = [changesCopy changes];
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = __71__HDSPSleepStorage__saveObjectChanges_versionKey_currentVersion_error___block_invoke;
  v32 = &unk_279C7B170;
  v35 = &v37;
  v15 = v12;
  v33 = v15;
  v36 = &v43;
  v16 = v13;
  v34 = v16;
  [changes na_each:&v29];

  if (*(v44 + 24) == 1)
  {
    v17 = [(HDSPSleepStorage *)self syncedDefaults:v29];
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:version];
    [v17 hksp_setObject:v18 forKey:keyCopy];

    syncedDefaults = [(HDSPSleepStorage *)self syncedDefaults];
    [syncedDefaults hksp_saveDictionary:v15];

    syncedDefaults2 = [(HDSPSleepStorage *)self syncedDefaults];
    [syncedDefaults2 hksp_removeObjectsForKeys:v16];

    syncedDefaults3 = [(HDSPSleepStorage *)self syncedDefaults];
    [syncedDefaults3 hksp_synchronize];
  }

  else
  {
    v22 = HKSPLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v26 = objc_opt_class();
      v27 = v38[5];
      *buf = 138543618;
      v48 = v26;
      v49 = 2114;
      v50 = v27;
      v28 = v26;
      _os_log_error_impl(&dword_269B11000, v22, OS_LOG_TYPE_ERROR, "[%{public}@] failed serialization with error %{public}@", buf, 0x16u);
    }

    if (error)
    {
      *error = v38[5];
    }
  }

  v23 = *(v44 + 24);

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v43, 8);

  v24 = *MEMORY[0x277D85DE8];
  return v23 & 1;
}

void __71__HDSPSleepStorage__saveObjectChanges_versionKey_currentVersion_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 changedValue];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v3;
    if (([v5 isAdd] & 1) != 0 || objc_msgSend(v5, "isUpdate"))
    {
      v6 = objc_alloc_init(MEMORY[0x277D62458]);
      v7 = [v5 changedValue];
      v8 = [v7 copyWithZone:0];
      v9 = *(a1[6] + 8);
      obj = *(v9 + 40);
      v10 = [v6 serialize:v8 error:&obj];
      objc_storeStrong((v9 + 40), obj);

      if (v10)
      {
        v11 = [v6 serializedDictionary];

        v12 = a1[4];
        v13 = [v5 property];
        v14 = [v13 identifier];
        [v12 setObject:v11 forKeyedSubscript:v14];

        v4 = v11;
      }

      else
      {
        *(*(a1[7] + 8) + 24) = 0;
      }
    }

    else
    {
      v21 = a1[5];
      v6 = [v5 property];
      v22 = [v6 identifier];
      [v21 addObject:v22];
    }

    goto LABEL_12;
  }

  if (v4)
  {
    v15 = a1[4];
    v16 = [v3 property];
    v17 = [v16 identifier];
    [v15 setObject:v4 forKeyedSubscript:v17];

LABEL_12:
    goto LABEL_13;
  }

  v18 = a1[5];
  v19 = [v3 property];
  v20 = [v19 identifier];
  [v18 addObject:v20];

LABEL_13:
}

- (BOOL)_removeObjectProperties:(id)properties error:(id *)error
{
  propertiesCopy = properties;
  syncedDefaults = [(HDSPSleepStorage *)self syncedDefaults];
  v7 = HKSPPropertyIdentifiersForProperties();

  [syncedDefaults hksp_removeObjectsForKeys:v7];
  syncedDefaults2 = [(HDSPSleepStorage *)self syncedDefaults];
  [syncedDefaults2 hksp_synchronize];

  return 1;
}

- (void)environmentWillBecomeReady:(id)ready
{
  v13 = *MEMORY[0x277D85DE8];
  readyCopy = ready;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = objc_opt_class();
    v6 = v12;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] environmentWillBecomeReady", &v11, 0xCu);
  }

  diagnostics = [readyCopy diagnostics];
  [diagnostics addProvider:self];

  notificationListener = [readyCopy notificationListener];

  [notificationListener addObserver:self];
  syncedDefaults = [(HDSPSleepStorage *)self syncedDefaults];
  [syncedDefaults hdsp_setExternalChangeDelegate:self];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)resetCloudStorage
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = objc_opt_class();
    v4 = v8;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] resetting Cloud storage", &v7, 0xCu);
  }

  syncedDefaults = [(HDSPSleepStorage *)self syncedDefaults];
  [syncedDefaults resetCloudData];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncedUserDefaultsDidChangeExternally:(id)externally
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = objc_opt_class();
    v5 = v10;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] syncedDefaultsDidChangeExternally", buf, 0xCu);
  }

  observers = self->_observers;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__HDSPSleepStorage_syncedUserDefaultsDidChangeExternally___block_invoke;
  v8[3] = &unk_279C7B198;
  v8[4] = self;
  [(HKSPObserverSet *)observers enumerateObserversWithBlock:v8];
  v7 = *MEMORY[0x277D85DE8];
}

- (NSString)sourceIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)notificationListener:(id)listener didReceiveNotificationWithName:(id)name
{
  v12 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if ([nameCopy isEqualToString:@"com.apple.sleepd.cloudkit.reset"])
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 138543618;
      *&v11[4] = objc_opt_class();
      *&v11[12] = 2114;
      *&v11[14] = nameCopy;
      v7 = *&v11[4];
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] received %{public}@", v11, 0x16u);
    }

    if ([nameCopy isEqualToString:@"com.apple.sleepd.cloudkit.reset"])
    {
      [(HDSPSleepStorage *)self resetCloudStorage];
    }
  }

  futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];

  v9 = *MEMORY[0x277D85DE8];

  return futureWithNoResult;
}

- (id)diagnosticDescription
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  behavior = [WeakRetained behavior];
  features = [behavior features];
  sleepCloudKitSync = [features sleepCloudKitSync];

  v7 = MEMORY[0x277CCACA8];
  syncedDefaults = [(HDSPSleepStorage *)self syncedDefaults];
  localDefaultsDictionaryRepresentation = [syncedDefaults localDefaultsDictionaryRepresentation];
  v10 = localDefaultsDictionaryRepresentation;
  if (sleepCloudKitSync)
  {
    syncedDefaults2 = [(HDSPSleepStorage *)self syncedDefaults];
    cloudKitDefaultsDictionaryRepresentation = [syncedDefaults2 cloudKitDefaultsDictionaryRepresentation];
    v13 = [v7 stringWithFormat:@"Local Data: %@\nCloudKit Data %@", v10, cloudKitDefaultsDictionaryRepresentation];
  }

  else
  {
    v13 = [v7 stringWithFormat:@"Data: %@", localDefaultsDictionaryRepresentation];
  }

  return v13;
}

- (HDSPEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

@end