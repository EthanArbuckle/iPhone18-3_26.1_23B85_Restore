@interface TIUserModel
- (BOOL)persistForDate:(id)a3;
- (NSArray)contexts;
- (NSDictionary)cachedSettingsDictionary;
- (TIUserModel)initWithInputMode:(id)a3 userModelDataStore:(id)a4 weeklyMetricKeys:(id)a5 fromDate:(id)a6 explicitTearDown:(BOOL)a7;
- (TIUserModelConfigurationDelegate)configurationDelegate;
- (id)populateSettingsDictionary;
- (id)valuesFromContext:(id)a3;
- (int)valueForDurableKey:(id)a3;
- (void)addDoubleToTransientCounter:(double)a3 forKey:(id)a4 andCandidateLength:(int)a5 andContext:(id)a6;
- (void)addIntegerToTransientCounter:(int)a3 forKey:(id)a4 andCandidateLength:(int)a5 andContext:(id)a6;
- (void)addToDurableCounter:(int)a3 forKey:(id)a4;
- (void)configureDurableCounterForName:(id)a3;
- (void)configureDurableCounters;
- (void)dealloc;
- (void)doLoad;
- (void)loadIfNecessary;
- (void)loadSettings;
- (void)resetDurableCounterForKey:(id)a3;
- (void)tearDown;
@end

@implementation TIUserModel

- (TIUserModelConfigurationDelegate)configurationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_configurationDelegate);

  return WeakRetained;
}

- (int)valueForDurableKey:(id)a3
{
  v4 = a3;
  [(TIUserModel *)self loadIfNecessary];
  v5 = [(NSMutableDictionary *)self->_durableCounters objectForKey:v4];

  v6 = [v5 count];
  v7 = [v6 intValue];

  return v7;
}

- (void)addDoubleToTransientCounter:(double)a3 forKey:(id)a4 andCandidateLength:(int)a5 andContext:(id)a6
{
  v6 = *&a5;
  v10 = a6;
  v11 = a4;
  [(TIUserModel *)self loadIfNecessary];
  v12 = [(TIUserModel *)self valuesFromContext:v10];

  [v12 addDouble:v11 toCounterWithKey:v6 andCandidateLength:a3];
}

- (void)addIntegerToTransientCounter:(int)a3 forKey:(id)a4 andCandidateLength:(int)a5 andContext:(id)a6
{
  v6 = *&a5;
  v8 = *&a3;
  v10 = a6;
  v11 = a4;
  [(TIUserModel *)self loadIfNecessary];
  v12 = [(TIUserModel *)self valuesFromContext:v10];

  [v12 addInteger:v8 toCounterWithKey:v11 andCandidateLength:v6];
}

- (void)resetDurableCounterForKey:(id)a3
{
  v4 = a3;
  [(TIUserModel *)self loadIfNecessary];
  v5 = [(NSMutableDictionary *)self->_durableCounters objectForKey:v4];

  [v5 reset];
}

- (void)addToDurableCounter:(int)a3 forKey:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  [(TIUserModel *)self loadIfNecessary];
  v7 = [(NSMutableDictionary *)self->_durableCounters objectForKey:v6];

  [v7 add:v4];
}

- (BOOL)persistForDate:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_loadedDate)
  {
    v5 = IXADefaultLogFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s Persisting user model.", "-[TIUserModel persistForDate:]"];
      *buf = 138412290;
      v41 = v6;
      _os_log_impl(&dword_1863F7000, v5, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    [v4 timeIntervalSince1970];
    if (v4)
    {
      if (v7 - self->_timeOfLastPersist < 600.0 && !self->_userModelRateLimitingDisabled)
      {
        v8 = IXADefaultLogFacility();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s User model persistence not required due to rate limiting.", "-[TIUserModel persistForDate:]"];
          *buf = 138412290;
          v41 = v9;
          _os_log_impl(&dword_1863F7000, v8, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
        }

        v10 = 0;
LABEL_32:

        goto LABEL_33;
      }
    }

    else
    {
      v4 = [MEMORY[0x1E695DF00] now];
    }

    [v4 timeIntervalSince1970];
    self->_timeOfLastPersist = v11;
    [(TIUserModel *)self trackPowerLogIfNecessary];
    v12 = IXADefaultLogFacility();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s Persisting transient counters.", "-[TIUserModel persistForDate:]"];
      *buf = 138412290;
      v41 = v13;
      _os_log_impl(&dword_1863F7000, v12, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v14 = self->_userModelValuesCollection;
    v15 = [(NSMutableDictionary *)v14 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v35;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v35 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [(NSMutableDictionary *)self->_userModelValuesCollection objectForKey:*(*(&v34 + 1) + 8 * i)];
          [v19 persistForDate:v4];
        }

        v16 = [(NSMutableDictionary *)v14 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v16);
    }

    v20 = IXADefaultLogFacility();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s Persisting durable counters.", "-[TIUserModel persistForDate:]"];
      *buf = 138412290;
      v41 = v21;
      _os_log_impl(&dword_1863F7000, v20, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v22 = self->_durableCounters;
    v23 = [(NSMutableDictionary *)v22 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v31;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v31 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [(NSMutableDictionary *)self->_durableCounters objectForKey:*(*(&v30 + 1) + 8 * j)];
          [v27 doPersist:self->_userModelStore forDate:v4];
        }

        v24 = [(NSMutableDictionary *)v22 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v24);
    }

    v8 = IXADefaultLogFacility();
    v10 = 1;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s User model persisted.", "-[TIUserModel persistForDate:]"];
      *buf = 138412290;
      v41 = v28;
      _os_log_impl(&dword_1863F7000, v8, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    goto LABEL_32;
  }

  v10 = 1;
LABEL_33:

  return v10;
}

- (NSDictionary)cachedSettingsDictionary
{
  [(TIUserModel *)self loadIfNecessary];
  settingsDictionary = self->_settingsDictionary;

  return settingsDictionary;
}

- (void)loadSettings
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__11544;
  v10 = __Block_byref_object_dispose__11545;
  v11 = 0;
  if (pthread_main_np())
  {
    v3 = [(TIUserModel *)self populateSettingsDictionary];
    v4 = v7[5];
    v7[5] = v3;
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __27__TIUserModel_loadSettings__block_invoke;
    v5[3] = &unk_1E6F4D988;
    v5[4] = self;
    v5[5] = &v6;
    TIDispatchSync(MEMORY[0x1E69E96A0], v5);
  }

  objc_storeStrong(&self->_settingsDictionary, v7[5]);
  _Block_object_dispose(&v6, 8);
}

uint64_t __27__TIUserModel_loadSettings__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) populateSettingsDictionary];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)populateSettingsDictionary
{
  v2 = [(TIUserModel *)self configurationDelegate];
  v3 = [v2 settingsDictionary];

  return v3;
}

- (void)doLoad
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = IXADefaultLogFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s Loading user model.", "-[TIUserModel doLoad]"];
    *buf = 138412290;
    v46 = v4;
    _os_log_impl(&dword_1863F7000, v3, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v5 = IXADefaultLogFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s Loading settings.", "-[TIUserModel doLoad]"];
    *buf = 138412290;
    v46 = v6;
    _os_log_impl(&dword_1863F7000, v5, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  [(TIUserModel *)self loadSettings];
  v7 = IXADefaultLogFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s Loading durable counters.", "-[TIUserModel doLoad]"];
    *buf = 138412290;
    v46 = v8;
    _os_log_impl(&dword_1863F7000, v7, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  [(TIUserModel *)self configureDurableCounters];
  v9 = IXADefaultLogFacility();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s Loading transient counters", "-[TIUserModel doLoad]"];
    *buf = 138412290;
    v46 = v10;
    _os_log_impl(&dword_1863F7000, v9, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  fromDate = self->_fromDate;
  if (fromDate)
  {
    v12 = fromDate;
  }

  else
  {
    v12 = [MEMORY[0x1E695DF00] now];
  }

  v13 = v12;
  v14 = [MEMORY[0x1E695DEE8] currentCalendar];
  v15 = [MEMORY[0x1E695DFE8] localTimeZone];
  [v14 setTimeZone:v15];

  v34 = v14;
  v33 = [v14 startOfDayForDate:v13];
  v32 = [MEMORY[0x1E695DF00] dateWithTimeInterval:kFeatureUsageQueryTimeFrame * -86400.0 sinceDate:?];
  v37 = v13;
  [(TIUserModelDataStoring *)self->_userModelStore getDailyAndWeeklyValuesForKeyPrefix:kUserModelDatabasePrefix forInputMode:self->_inputMode weeklyKeySuffixes:self->_weeklyMetricKeys endDate:v13];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v43 = 0u;
  v16 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v41;
    v35 = self;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v41 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v40 + 1) + 8 * i);
        v21 = MEMORY[0x1E696ACD0];
        v22 = objc_opt_class();
        v23 = [v20 properties];
        v39 = 0;
        v24 = [v21 unarchivedObjectOfClass:v22 fromData:v23 error:&v39];
        v25 = v39;

        if (v25)
        {
          v26 = IXADefaultLogFacility();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v27 = MEMORY[0x1E696AEC0];
            v36 = [v25 userInfo];
            v28 = [v36 objectForKey:@"message"];
            v29 = [v27 stringWithFormat:@"%s   %@", "-[TIUserModel doLoad]", v28];
            *buf = 138412290;
            v46 = v29;
            _os_log_error_impl(&dword_1863F7000, v26, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);

            self = v35;
          }
        }

        else
        {
          v26 = [(TIUserModel *)self valuesFromContext:v24];
          [v26 addToTransientCounterFromDatabaseEntry:v20 withWeeklyMetricKeys:self->_weeklyMetricKeys fromLoadedDate:v37];
        }
      }

      v17 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v17);
  }

  [(TIUserModelDataStoring *)self->_userModelStore purgeDataForKeyPrefix:kUserModelDatabasePrefix forInputMode:self->_inputMode beforeDate:v32];
  objc_storeStrong(&self->_loadedDate, v37);
  v30 = IXADefaultLogFacility();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s User model loaded.", "-[TIUserModel doLoad]"];
    *buf = 138412290;
    v46 = v31;
    _os_log_impl(&dword_1863F7000, v30, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }
}

- (void)loadIfNecessary
{
  if (!self->_loadedDate)
  {
    [(TIUserModel *)self doLoad];
  }
}

- (id)valuesFromContext:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_userModelValuesCollection objectForKey:v4];
  if (!v5)
  {
    v6 = objc_opt_class();
    v7 = [(TIUserModel *)self configurationDelegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(TIUserModel *)self configurationDelegate];
      v10 = [v9 userModelValuesClass];

      if ([(objc_class *)v10 isSubclassOfClass:objc_opt_class()])
      {
        v6 = v10;
      }
    }

    v5 = [[v6 alloc] initWithInputMode:self->_inputMode context:v4 userModelDataStore:self->_userModelStore durableCounters:self->_durableCounters settingsDictionary:self->_settingsDictionary];
    [v5 extendCountersForWeeklyMetricKeys:self->_weeklyMetricKeys];
    [(NSMutableDictionary *)self->_userModelValuesCollection setObject:v5 forKey:v4];
  }

  return v5;
}

- (void)configureDurableCounters
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(TIUserModel *)self configurationDelegate];
  v4 = [v3 durableCounterKeys];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(TIUserModel *)self configureDurableCounterForName:*(*(&v10 + 1) + 8 * v9++), v10];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)configureDurableCounterForName:(id)a3
{
  v4 = kUserModelDatabasePrefix;
  v5 = a3;
  v13 = [v4 stringByAppendingString:v5];
  v6 = [(TIUserModelDataStoring *)self->_userModelStore getDurableValueForKey:?];
  v7 = [TIUserModelCounter alloc];
  v8 = v7;
  if (v6)
  {
    v9 = [v6 value];
    v10 = [v6 creationDate];
    v11 = [v6 lastUpdateDate];
    v12 = [(TIUserModelCounter *)v8 initWithName:v5 initialCount:v9 creationDate:v10 lastUpdateDate:v11];
  }

  else
  {
    v12 = [(TIUserModelCounter *)v7 initWithName:v5];
  }

  [(NSMutableDictionary *)self->_durableCounters setObject:v12 forKey:v5];
}

- (NSArray)contexts
{
  [(TIUserModel *)self loadIfNecessary];
  userModelValuesCollection = self->_userModelValuesCollection;

  return [(NSMutableDictionary *)userModelValuesCollection allKeys];
}

- (void)tearDown
{
  if (self->_explicitTearDown)
  {
    [(TIUserModel *)self persistForDate:0];
  }
}

- (void)dealloc
{
  if (!self->_explicitTearDown)
  {
    [(TIUserModel *)self persistForDate:0];
  }

  v3.receiver = self;
  v3.super_class = TIUserModel;
  [(TIUserModel *)&v3 dealloc];
}

- (TIUserModel)initWithInputMode:(id)a3 userModelDataStore:(id)a4 weeklyMetricKeys:(id)a5 fromDate:(id)a6 explicitTearDown:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v28.receiver = self;
  v28.super_class = TIUserModel;
  v17 = [(TIUserModel *)&v28 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_inputMode, a3);
    objc_storeStrong(&v18->_userModelStore, a4);
    v19 = [v15 copy];
    weeklyMetricKeys = v18->_weeklyMetricKeys;
    v18->_weeklyMetricKeys = v19;

    objc_storeStrong(&v18->_fromDate, a6);
    v18->_explicitTearDown = a7;
    v21 = [MEMORY[0x1E695DF90] dictionary];
    durableCounters = v18->_durableCounters;
    v18->_durableCounters = v21;

    v23 = [MEMORY[0x1E695DF90] dictionary];
    userModelValuesCollection = v18->_userModelValuesCollection;
    v18->_userModelValuesCollection = v23;

    loadedDate = v18->_loadedDate;
    v18->_loadedDate = 0;

    v26 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.keyboard"];
    v18->_userModelRateLimitingDisabled = [v26 BOOLForKey:@"userModelRateLimitingDisabled"];
  }

  return v18;
}

@end