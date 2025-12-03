@interface TIUserModel
- (BOOL)persistForDate:(id)date;
- (NSArray)contexts;
- (NSDictionary)cachedSettingsDictionary;
- (TIUserModel)initWithInputMode:(id)mode userModelDataStore:(id)store weeklyMetricKeys:(id)keys fromDate:(id)date explicitTearDown:(BOOL)down;
- (TIUserModelConfigurationDelegate)configurationDelegate;
- (id)populateSettingsDictionary;
- (id)valuesFromContext:(id)context;
- (int)valueForDurableKey:(id)key;
- (void)addDoubleToTransientCounter:(double)counter forKey:(id)key andCandidateLength:(int)length andContext:(id)context;
- (void)addIntegerToTransientCounter:(int)counter forKey:(id)key andCandidateLength:(int)length andContext:(id)context;
- (void)addToDurableCounter:(int)counter forKey:(id)key;
- (void)configureDurableCounterForName:(id)name;
- (void)configureDurableCounters;
- (void)dealloc;
- (void)doLoad;
- (void)loadIfNecessary;
- (void)loadSettings;
- (void)resetDurableCounterForKey:(id)key;
- (void)tearDown;
@end

@implementation TIUserModel

- (TIUserModelConfigurationDelegate)configurationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_configurationDelegate);

  return WeakRetained;
}

- (int)valueForDurableKey:(id)key
{
  keyCopy = key;
  [(TIUserModel *)self loadIfNecessary];
  v5 = [(NSMutableDictionary *)self->_durableCounters objectForKey:keyCopy];

  v6 = [v5 count];
  intValue = [v6 intValue];

  return intValue;
}

- (void)addDoubleToTransientCounter:(double)counter forKey:(id)key andCandidateLength:(int)length andContext:(id)context
{
  v6 = *&length;
  contextCopy = context;
  keyCopy = key;
  [(TIUserModel *)self loadIfNecessary];
  v12 = [(TIUserModel *)self valuesFromContext:contextCopy];

  [v12 addDouble:keyCopy toCounterWithKey:v6 andCandidateLength:counter];
}

- (void)addIntegerToTransientCounter:(int)counter forKey:(id)key andCandidateLength:(int)length andContext:(id)context
{
  v6 = *&length;
  v8 = *&counter;
  contextCopy = context;
  keyCopy = key;
  [(TIUserModel *)self loadIfNecessary];
  v12 = [(TIUserModel *)self valuesFromContext:contextCopy];

  [v12 addInteger:v8 toCounterWithKey:keyCopy andCandidateLength:v6];
}

- (void)resetDurableCounterForKey:(id)key
{
  keyCopy = key;
  [(TIUserModel *)self loadIfNecessary];
  v5 = [(NSMutableDictionary *)self->_durableCounters objectForKey:keyCopy];

  [v5 reset];
}

- (void)addToDurableCounter:(int)counter forKey:(id)key
{
  v4 = *&counter;
  keyCopy = key;
  [(TIUserModel *)self loadIfNecessary];
  v7 = [(NSMutableDictionary *)self->_durableCounters objectForKey:keyCopy];

  [v7 add:v4];
}

- (BOOL)persistForDate:(id)date
{
  v42 = *MEMORY[0x1E69E9840];
  dateCopy = date;
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

    [dateCopy timeIntervalSince1970];
    if (dateCopy)
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
      dateCopy = [MEMORY[0x1E695DF00] now];
    }

    [dateCopy timeIntervalSince1970];
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
          [v19 persistForDate:dateCopy];
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
          [v27 doPersist:self->_userModelStore forDate:dateCopy];
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
    populateSettingsDictionary = [(TIUserModel *)self populateSettingsDictionary];
    v4 = v7[5];
    v7[5] = populateSettingsDictionary;
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
  configurationDelegate = [(TIUserModel *)self configurationDelegate];
  settingsDictionary = [configurationDelegate settingsDictionary];

  return settingsDictionary;
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
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
  [currentCalendar setTimeZone:localTimeZone];

  v34 = currentCalendar;
  v33 = [currentCalendar startOfDayForDate:v13];
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
    selfCopy = self;
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
        properties = [v20 properties];
        v39 = 0;
        v24 = [v21 unarchivedObjectOfClass:v22 fromData:properties error:&v39];
        v25 = v39;

        if (v25)
        {
          v26 = IXADefaultLogFacility();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v27 = MEMORY[0x1E696AEC0];
            userInfo = [v25 userInfo];
            v28 = [userInfo objectForKey:@"message"];
            v29 = [v27 stringWithFormat:@"%s   %@", "-[TIUserModel doLoad]", v28];
            *buf = 138412290;
            v46 = v29;
            _os_log_error_impl(&dword_1863F7000, v26, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);

            self = selfCopy;
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

- (id)valuesFromContext:(id)context
{
  contextCopy = context;
  v5 = [(NSMutableDictionary *)self->_userModelValuesCollection objectForKey:contextCopy];
  if (!v5)
  {
    v6 = objc_opt_class();
    configurationDelegate = [(TIUserModel *)self configurationDelegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      configurationDelegate2 = [(TIUserModel *)self configurationDelegate];
      userModelValuesClass = [configurationDelegate2 userModelValuesClass];

      if ([(objc_class *)userModelValuesClass isSubclassOfClass:objc_opt_class()])
      {
        v6 = userModelValuesClass;
      }
    }

    v5 = [[v6 alloc] initWithInputMode:self->_inputMode context:contextCopy userModelDataStore:self->_userModelStore durableCounters:self->_durableCounters settingsDictionary:self->_settingsDictionary];
    [v5 extendCountersForWeeklyMetricKeys:self->_weeklyMetricKeys];
    [(NSMutableDictionary *)self->_userModelValuesCollection setObject:v5 forKey:contextCopy];
  }

  return v5;
}

- (void)configureDurableCounters
{
  v15 = *MEMORY[0x1E69E9840];
  configurationDelegate = [(TIUserModel *)self configurationDelegate];
  durableCounterKeys = [configurationDelegate durableCounterKeys];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = durableCounterKeys;
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

- (void)configureDurableCounterForName:(id)name
{
  v4 = kUserModelDatabasePrefix;
  nameCopy = name;
  v13 = [v4 stringByAppendingString:nameCopy];
  v6 = [(TIUserModelDataStoring *)self->_userModelStore getDurableValueForKey:?];
  v7 = [TIUserModelCounter alloc];
  v8 = v7;
  if (v6)
  {
    value = [v6 value];
    creationDate = [v6 creationDate];
    lastUpdateDate = [v6 lastUpdateDate];
    v12 = [(TIUserModelCounter *)v8 initWithName:nameCopy initialCount:value creationDate:creationDate lastUpdateDate:lastUpdateDate];
  }

  else
  {
    v12 = [(TIUserModelCounter *)v7 initWithName:nameCopy];
  }

  [(NSMutableDictionary *)self->_durableCounters setObject:v12 forKey:nameCopy];
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

- (TIUserModel)initWithInputMode:(id)mode userModelDataStore:(id)store weeklyMetricKeys:(id)keys fromDate:(id)date explicitTearDown:(BOOL)down
{
  modeCopy = mode;
  storeCopy = store;
  keysCopy = keys;
  dateCopy = date;
  v28.receiver = self;
  v28.super_class = TIUserModel;
  v17 = [(TIUserModel *)&v28 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_inputMode, mode);
    objc_storeStrong(&v18->_userModelStore, store);
    v19 = [keysCopy copy];
    weeklyMetricKeys = v18->_weeklyMetricKeys;
    v18->_weeklyMetricKeys = v19;

    objc_storeStrong(&v18->_fromDate, date);
    v18->_explicitTearDown = down;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    durableCounters = v18->_durableCounters;
    v18->_durableCounters = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    userModelValuesCollection = v18->_userModelValuesCollection;
    v18->_userModelValuesCollection = dictionary2;

    loadedDate = v18->_loadedDate;
    v18->_loadedDate = 0;

    v26 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.keyboard"];
    v18->_userModelRateLimitingDisabled = [v26 BOOLForKey:@"userModelRateLimitingDisabled"];
  }

  return v18;
}

@end