@interface MOContextConfigurationManager
- (BOOL)getBoolDefaultsForKey:(id)key withFallback:(BOOL)fallback;
- (BOOL)getBoolTrialLevelForKey:(id)key withFallback:(BOOL)fallback;
- (MOContextConfigurationManager)init;
- (double)getDoubleDefaultsForKey:(id)key withFallback:(double)fallback;
- (double)getDoubleSettingForKey:(id)key withFallback:(double)fallback;
- (double)getDoubleTrialLevelForKey:(id)key withFallback:(double)fallback;
- (float)getFloatDefaultsForKey:(id)key withFallback:(float)fallback;
- (float)getFloatSettingForKey:(id)key withFallback:(float)fallback;
- (float)getFloatTrialLevelForKey:(id)key withFallback:(float)fallback;
- (id)getFilePathDefaultsForKey:(id)key withFallback:(id)fallback;
- (id)getFilePathSettingForKey:(id)key withFallback:(id)fallback;
- (id)getFilePathTrialLevelForKey:(id)key withFallback:(id)fallback;
- (id)getStringDefaultsForKey:(id)key withFallback:(id)fallback;
- (id)getStringSettingForKey:(id)key withFallback:(id)fallback;
- (id)getStringTrialLevelForKey:(id)key withFallback:(id)fallback;
- (int)getIntegerDefaultsForKey:(id)key withFallback:(int)fallback;
- (int)getIntegerTrialLevelForKey:(id)key withFallback:(int)fallback;
- (void)doTrialSetup;
@end

@implementation MOContextConfigurationManager

- (MOContextConfigurationManager)init
{
  v7.receiver = self;
  v7.super_class = MOContextConfigurationManager;
  v2 = [(MOContextConfigurationManager *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MOContextDefaultsManager);
    [(MOContextConfigurationManager *)v2 setDefaultsManager:v3];

    trialClient = v2->_trialClient;
    v2->_trialClient = 0;

    trialFactorNames = v2->_trialFactorNames;
    v2->_trialFactorNames = 0;

    [(MOContextConfigurationManager *)v2 doTrialSetup];
  }

  return v2;
}

- (id)getStringDefaultsForKey:(id)key withFallback:(id)fallback
{
  keyCopy = key;
  fallbackCopy = fallback;
  v8 = [fallbackCopy copy];
  defaultsManager = self->_defaultsManager;
  v10 = [keyCopy copy];
  v11 = [(MOContextDefaultsManager *)defaultsManager objectForKey:v10];

  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];

      v8 = v12;
    }
  }

  v13 = _mo_log_facility_get_os_log(&MOLogFacilityContextConfiguration);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v15 = 138412802;
    v16 = keyCopy;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = fallbackCopy;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Default setting [%@] with value [s:%@] and fallback [s:%@]", &v15, 0x20u);
  }

  return v8;
}

- (int)getIntegerDefaultsForKey:(id)key withFallback:(int)fallback
{
  keyCopy = key;
  defaultsManager = self->_defaultsManager;
  v8 = [keyCopy copy];
  v9 = [(MOContextDefaultsManager *)defaultsManager objectForKey:v8];

  fallbackCopy2 = fallback;
  if (v9)
  {
    objc_opt_class();
    fallbackCopy2 = fallback;
    if (objc_opt_isKindOfClass())
    {
      fallbackCopy2 = [v9 integerValue];
    }
  }

  v11 = _mo_log_facility_get_os_log(&MOLogFacilityContextConfiguration);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412802;
    v14 = keyCopy;
    v15 = 1024;
    v16 = fallbackCopy2;
    v17 = 1024;
    fallbackCopy3 = fallback;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Default setting [%@] with value [i:%i] and fallback [i:%i]", &v13, 0x18u);
  }

  return fallbackCopy2;
}

- (BOOL)getBoolDefaultsForKey:(id)key withFallback:(BOOL)fallback
{
  fallbackCopy = fallback;
  keyCopy = key;
  defaultsManager = self->_defaultsManager;
  v8 = [keyCopy copy];
  v9 = [(MOContextDefaultsManager *)defaultsManager objectForKey:v8];

  bOOLValue = fallbackCopy;
  if (v9)
  {
    objc_opt_class();
    bOOLValue = fallbackCopy;
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [v9 BOOLValue];
    }
  }

  v11 = _mo_log_facility_get_os_log(&MOLogFacilityContextConfiguration);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412802;
    v14 = keyCopy;
    v15 = 1024;
    v16 = bOOLValue;
    v17 = 1024;
    v18 = fallbackCopy;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Default setting [%@] with value [b:%i] and fallback [b:%i]", &v13, 0x18u);
  }

  return bOOLValue;
}

- (float)getFloatDefaultsForKey:(id)key withFallback:(float)fallback
{
  keyCopy = key;
  defaultsManager = self->_defaultsManager;
  v8 = [keyCopy copy];
  v9 = [(MOContextDefaultsManager *)defaultsManager objectForKey:v8];

  fallbackCopy2 = fallback;
  if (v9)
  {
    objc_opt_class();
    fallbackCopy2 = fallback;
    if (objc_opt_isKindOfClass())
    {
      [v9 doubleValue];
      fallbackCopy2 = v11;
    }
  }

  v12 = _mo_log_facility_get_os_log(&MOLogFacilityContextConfiguration);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412802;
    v15 = keyCopy;
    v16 = 2048;
    v17 = fallbackCopy2;
    v18 = 2048;
    fallbackCopy3 = fallback;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Default setting [%@] with value [f:%f] and fallback [f:%f]", &v14, 0x20u);
  }

  return fallbackCopy2;
}

- (double)getDoubleDefaultsForKey:(id)key withFallback:(double)fallback
{
  keyCopy = key;
  defaultsManager = self->_defaultsManager;
  v8 = [keyCopy copy];
  v9 = [(MOContextDefaultsManager *)defaultsManager objectForKey:v8];

  fallbackCopy2 = fallback;
  if (v9)
  {
    objc_opt_class();
    fallbackCopy2 = fallback;
    if (objc_opt_isKindOfClass())
    {
      [v9 doubleValue];
      fallbackCopy2 = v11;
    }
  }

  v12 = _mo_log_facility_get_os_log(&MOLogFacilityContextConfiguration);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412802;
    v15 = keyCopy;
    v16 = 2048;
    v17 = fallbackCopy2;
    v18 = 2048;
    fallbackCopy3 = fallback;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Default setting [%@] with value [d:%f] and fallback [d:%f]", &v14, 0x20u);
  }

  return fallbackCopy2;
}

- (id)getFilePathDefaultsForKey:(id)key withFallback:(id)fallback
{
  keyCopy = key;
  fallbackCopy = fallback;
  v8 = [fallbackCopy copy];
  defaultsManager = self->_defaultsManager;
  v10 = [keyCopy copy];
  v11 = [(MOContextDefaultsManager *)defaultsManager objectForKey:v10];

  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];

      v8 = v12;
    }
  }

  v13 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v15 = 138412802;
    v16 = keyCopy;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = fallbackCopy;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Default setting [%@] with value [s:%@] and fallback [s:%@]", &v15, 0x20u);
  }

  return v8;
}

- (void)doTrialSetup
{
  v3 = [TRIClient clientWithIdentifier:308];
  trialClient = self->_trialClient;
  self->_trialClient = v3;

  v5 = _mo_log_facility_get_os_log(&MOLogFacilityContextConfiguration);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = self->_trialClient;
    *buf = 134217984;
    v25 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setup trial client: %p", buf, 0xCu);
  }

  [(TRIClient *)self->_trialClient refresh];
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityContextConfiguration);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Refreshed trial client", buf, 2u);
  }

  getTrialExperimentIdentifiers = [(MOContextConfigurationManager *)self getTrialExperimentIdentifiers];
  v9 = _mo_log_facility_get_os_log(&MOLogFacilityContextConfiguration);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = getTrialExperimentIdentifiers;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Trial experiment IDs: %@", buf, 0xCu);
  }

  v10 = objc_opt_new();
  v11 = [(TRIClient *)self->_trialClient factorLevelsWithNamespaceName:@"PERSONALIZED_SENSING_PHOTO"];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        factor = [*(*(&v19 + 1) + 8 * v15) factor];
        name = [factor name];

        if (name)
        {
          [v10 addObject:name];
        }

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  objc_storeStrong(&self->_trialFactorNames, v10);
  v18 = _mo_log_facility_get_os_log(&MOLogFacilityContextConfiguration);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [(MOConfigurationManagerBase *)&self->_trialFactorNames doTrialSetup];
  }
}

- (id)getStringTrialLevelForKey:(id)key withFallback:(id)fallback
{
  keyCopy = key;
  fallbackCopy = fallback;
  v8 = [fallbackCopy copy];
  if ([(NSArray *)self->_trialFactorNames containsObject:keyCopy])
  {
    trialClient = self->_trialClient;
    v10 = [keyCopy copy];
    v11 = [(TRIClient *)trialClient levelForFactor:v10 withNamespaceName:@"PERSONALIZED_SENSING_PHOTO"];

    if (v11)
    {
      stringValue = [v11 stringValue];

      v8 = stringValue;
    }
  }

  v13 = _mo_log_facility_get_os_log(&MOLogFacilityContextConfiguration);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v15 = 138412802;
    v16 = keyCopy;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = fallbackCopy;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Trial setting [%@] with value [s:%@] and fallback [s:%@]", &v15, 0x20u);
  }

  return v8;
}

- (int)getIntegerTrialLevelForKey:(id)key withFallback:(int)fallback
{
  keyCopy = key;
  fallbackCopy3 = fallback;
  if ([(NSArray *)self->_trialFactorNames containsObject:keyCopy])
  {
    trialClient = self->_trialClient;
    v9 = [keyCopy copy];
    v10 = [(TRIClient *)trialClient levelForFactor:v9 withNamespaceName:@"PERSONALIZED_SENSING_PHOTO"];

    fallbackCopy3 = fallback;
    if (v10)
    {
      fallbackCopy3 = fallback;
      if ([v10 levelOneOfCase] == 13)
      {
        fallbackCopy3 = [v10 longValue];
      }
    }
  }

  v11 = _mo_log_facility_get_os_log(&MOLogFacilityContextConfiguration);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412802;
    v14 = keyCopy;
    v15 = 1024;
    v16 = fallbackCopy3;
    v17 = 1024;
    fallbackCopy4 = fallback;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Trial setting [%@] with value [i:%i] and fallback [i:%i]", &v13, 0x18u);
  }

  return fallbackCopy3;
}

- (BOOL)getBoolTrialLevelForKey:(id)key withFallback:(BOOL)fallback
{
  fallbackCopy = fallback;
  keyCopy = key;
  bOOLeanValue = fallbackCopy;
  if ([(NSArray *)self->_trialFactorNames containsObject:keyCopy])
  {
    trialClient = self->_trialClient;
    v9 = [keyCopy copy];
    v10 = [(TRIClient *)trialClient levelForFactor:v9 withNamespaceName:@"PERSONALIZED_SENSING_PHOTO"];

    bOOLeanValue = fallbackCopy;
    if (v10)
    {
      levelOneOfCase = [v10 levelOneOfCase];
      if (levelOneOfCase == 13)
      {
        bOOLeanValue = [v10 longValue] != 0;
      }

      else
      {
        bOOLeanValue = fallbackCopy;
        if (levelOneOfCase == 10)
        {
          bOOLeanValue = [v10 BOOLeanValue];
        }
      }
    }
  }

  v12 = _mo_log_facility_get_os_log(&MOLogFacilityContextConfiguration);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412802;
    v15 = keyCopy;
    v16 = 1024;
    v17 = bOOLeanValue;
    v18 = 1024;
    v19 = fallbackCopy;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Trial setting [%@] with value [b:%i] and fallback [b:%i]", &v14, 0x18u);
  }

  return bOOLeanValue;
}

- (float)getFloatTrialLevelForKey:(id)key withFallback:(float)fallback
{
  keyCopy = key;
  fallbackCopy3 = fallback;
  if ([(NSArray *)self->_trialFactorNames containsObject:keyCopy])
  {
    trialClient = self->_trialClient;
    v9 = [keyCopy copy];
    v10 = [(TRIClient *)trialClient levelForFactor:v9 withNamespaceName:@"PERSONALIZED_SENSING_PHOTO"];

    fallbackCopy3 = fallback;
    if (v10)
    {
      fallbackCopy3 = fallback;
      if ([v10 levelOneOfCase] == 15)
      {
        [v10 doubleValue];
        fallbackCopy3 = v11;
      }
    }
  }

  v12 = _mo_log_facility_get_os_log(&MOLogFacilityContextConfiguration);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412802;
    v15 = keyCopy;
    v16 = 2048;
    v17 = fallbackCopy3;
    v18 = 2048;
    fallbackCopy4 = fallback;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Trial setting [%@] with value [f:%f] and fallback [f:%f]", &v14, 0x20u);
  }

  return fallbackCopy3;
}

- (double)getDoubleTrialLevelForKey:(id)key withFallback:(double)fallback
{
  keyCopy = key;
  fallbackCopy3 = fallback;
  if ([(NSArray *)self->_trialFactorNames containsObject:keyCopy])
  {
    trialClient = self->_trialClient;
    v9 = [keyCopy copy];
    v10 = [(TRIClient *)trialClient levelForFactor:v9 withNamespaceName:@"PERSONALIZED_SENSING_PHOTO"];

    fallbackCopy3 = fallback;
    if (v10)
    {
      fallbackCopy3 = fallback;
      if ([v10 levelOneOfCase] == 15)
      {
        [v10 doubleValue];
        fallbackCopy3 = v11;
      }
    }
  }

  v12 = _mo_log_facility_get_os_log(&MOLogFacilityContextConfiguration);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412802;
    v15 = keyCopy;
    v16 = 2048;
    v17 = fallbackCopy3;
    v18 = 2048;
    fallbackCopy4 = fallback;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Trial setting [%@] with value [d:%f] and fallback [d:%f]", &v14, 0x20u);
  }

  return fallbackCopy3;
}

- (id)getFilePathTrialLevelForKey:(id)key withFallback:(id)fallback
{
  keyCopy = key;
  fallbackCopy = fallback;
  v8 = [fallbackCopy copy];
  if ([(NSArray *)self->_trialFactorNames containsObject:keyCopy])
  {
    trialClient = self->_trialClient;
    v10 = [keyCopy copy];
    v11 = [(TRIClient *)trialClient levelForFactor:v10 withNamespaceName:@"PERSONALIZED_SENSING_PHOTO"];

    if (v11)
    {
      directoryValue = [v11 directoryValue];
      path = [directoryValue path];

      v8 = path;
    }
  }

  v14 = _mo_log_facility_get_os_log(&MOLogFacilityContextConfiguration);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v16 = 138412802;
    v17 = keyCopy;
    v18 = 2112;
    v19 = v8;
    v20 = 2112;
    v21 = fallbackCopy;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Trial setting [%@] with value [s:%@] and fallback [s:%@]", &v16, 0x20u);
  }

  return v8;
}

- (id)getStringSettingForKey:(id)key withFallback:(id)fallback
{
  keyCopy = key;
  fallbackCopy = fallback;
  v8 = [(MOContextConfigurationManager *)self getStringTrialLevelForKey:keyCopy withFallback:fallbackCopy];
  v9 = [(MOContextConfigurationManager *)self getStringDefaultsForKey:keyCopy withFallback:v8];

  v10 = _mo_log_facility_get_os_log(&MOLogFacilityContextConfiguration);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412802;
    v13 = keyCopy;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = fallbackCopy;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Retrieved setting [%@] with value [s:%@] and fallback [s:%@]", &v12, 0x20u);
  }

  return v9;
}

- (float)getFloatSettingForKey:(id)key withFallback:(float)fallback
{
  keyCopy = key;
  *&v7 = fallback;
  [(MOContextConfigurationManager *)self getFloatTrialLevelForKey:keyCopy withFallback:v7];
  [(MOContextConfigurationManager *)self getFloatDefaultsForKey:keyCopy withFallback:?];
  v9 = v8;
  v10 = _mo_log_facility_get_os_log(&MOLogFacilityContextConfiguration);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412802;
    v13 = keyCopy;
    v14 = 2048;
    v15 = v9;
    v16 = 2048;
    fallbackCopy = fallback;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Retrieved setting [%@] with value [f:%f] and fallback [f:%f]", &v12, 0x20u);
  }

  return v9;
}

- (double)getDoubleSettingForKey:(id)key withFallback:(double)fallback
{
  keyCopy = key;
  [(MOContextConfigurationManager *)self getDoubleTrialLevelForKey:keyCopy withFallback:fallback];
  [(MOContextConfigurationManager *)self getDoubleDefaultsForKey:keyCopy withFallback:?];
  v8 = v7;
  v9 = _mo_log_facility_get_os_log(&MOLogFacilityContextConfiguration);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412802;
    v12 = keyCopy;
    v13 = 2048;
    v14 = v8;
    v15 = 2048;
    fallbackCopy = fallback;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Retrieved setting [%@] with value [d:%lf] and fallback [d:%lf]", &v11, 0x20u);
  }

  return v8;
}

- (id)getFilePathSettingForKey:(id)key withFallback:(id)fallback
{
  keyCopy = key;
  fallbackCopy = fallback;
  v8 = [(MOContextConfigurationManager *)self getFilePathTrialLevelForKey:keyCopy withFallback:fallbackCopy];
  v9 = [(MOContextConfigurationManager *)self getFilePathDefaultsForKey:keyCopy withFallback:v8];

  v10 = _mo_log_facility_get_os_log(&MOLogFacilityContextConfiguration);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412802;
    v13 = keyCopy;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = fallbackCopy;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Retrieved setting [%@] with value [s:%@] and fallback [s:%@]", &v12, 0x20u);
  }

  return v9;
}

@end