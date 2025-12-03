@interface MOConfigurationManagerBase
- (BOOL)getBoolDefaultsForKey:(id)key withFallback:(BOOL)fallback;
- (BOOL)getBoolTrialLevelForKey:(id)key withFallback:(BOOL)fallback;
- (MOConfigurationManagerBase)init;
- (MOConfigurationManagerBase)initWithDefaultsManager:(id)manager enableTrialClient:(BOOL)client;
- (double)getDoubleDefaultsForKey:(id)key withFallback:(double)fallback;
- (double)getDoubleSettingForKey:(id)key withFallback:(double)fallback;
- (double)getDoubleTrialLevelForKey:(id)key withFallback:(double)fallback;
- (float)getFloatDefaultsForKey:(id)key withFallback:(float)fallback;
- (float)getFloatSettingForKey:(id)key withFallback:(float)fallback;
- (float)getFloatTrialLevelForKey:(id)key withFallback:(float)fallback;
- (id)getStringDefaultsForKey:(id)key withFallback:(id)fallback;
- (id)getStringSettingForKey:(id)key withFallback:(id)fallback;
- (id)getStringTrialLevelForKey:(id)key withFallback:(id)fallback;
- (int)getIntegerDefaultsForKey:(id)key withFallback:(int)fallback;
- (int)getIntegerTrialLevelForKey:(id)key withFallback:(int)fallback;
- (void)doTrialSetup;
@end

@implementation MOConfigurationManagerBase

- (MOConfigurationManagerBase)init
{
  v3 = [[MODefaultsManager alloc] initWithSuiteName:@"com.apple.momentsd"];
  v4 = [(MOConfigurationManagerBase *)self initWithDefaultsManager:v3 enableTrialClient:1];

  return v4;
}

- (MOConfigurationManagerBase)initWithDefaultsManager:(id)manager enableTrialClient:(BOOL)client
{
  clientCopy = client;
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = MOConfigurationManagerBase;
  v7 = [(MOConfigurationManagerBase *)&v12 init];
  v8 = v7;
  if (v7)
  {
    [(MOConfigurationManagerBase *)v7 setFDefaultsManager:managerCopy];
    if (clientCopy)
    {
      trialClient = v8->_trialClient;
      v8->_trialClient = 0;

      trialFactorNames = v8->_trialFactorNames;
      v8->_trialFactorNames = 0;

      [(MOConfigurationManagerBase *)v8 doTrialSetup];
    }
  }

  return v8;
}

- (id)getStringDefaultsForKey:(id)key withFallback:(id)fallback
{
  keyCopy = key;
  fallbackCopy = fallback;
  v8 = [fallbackCopy copy];
  fDefaultsManager = self->_fDefaultsManager;
  v10 = [keyCopy copy];
  v11 = [(MODefaultsManager *)fDefaultsManager objectForKey:v10];

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

- (int)getIntegerDefaultsForKey:(id)key withFallback:(int)fallback
{
  keyCopy = key;
  fDefaultsManager = self->_fDefaultsManager;
  v8 = [keyCopy copy];
  v9 = [(MODefaultsManager *)fDefaultsManager objectForKey:v8];

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

  v11 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
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
  fDefaultsManager = self->_fDefaultsManager;
  v8 = [keyCopy copy];
  v9 = [(MODefaultsManager *)fDefaultsManager objectForKey:v8];

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

  v11 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
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
  fDefaultsManager = self->_fDefaultsManager;
  v8 = [keyCopy copy];
  v9 = [(MODefaultsManager *)fDefaultsManager objectForKey:v8];

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

  v12 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
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
  fDefaultsManager = self->_fDefaultsManager;
  v8 = [keyCopy copy];
  v9 = [(MODefaultsManager *)fDefaultsManager objectForKey:v8];

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

  v12 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
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

- (void)doTrialSetup
{
  v2 = *self;
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Cached factor names: %@", &v3, 0xCu);
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
    v11 = [(TRIClient *)trialClient levelForFactor:v10 withNamespaceName:@"MOMENTS_TRIAL"];

    if (v11)
    {
      stringValue = [v11 stringValue];

      v8 = stringValue;
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
    v10 = [(TRIClient *)trialClient levelForFactor:v9 withNamespaceName:@"MOMENTS_TRIAL"];

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

  v11 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
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
    v10 = [(TRIClient *)trialClient levelForFactor:v9 withNamespaceName:@"MOMENTS_TRIAL"];

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

  v12 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
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
    v10 = [(TRIClient *)trialClient levelForFactor:v9 withNamespaceName:@"MOMENTS_TRIAL"];

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

  v12 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
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
    v10 = [(TRIClient *)trialClient levelForFactor:v9 withNamespaceName:@"MOMENTS_TRIAL"];

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

  v12 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
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

- (id)getStringSettingForKey:(id)key withFallback:(id)fallback
{
  keyCopy = key;
  fallbackCopy = fallback;
  v8 = [(MOConfigurationManagerBase *)self getStringTrialLevelForKey:keyCopy withFallback:fallbackCopy];
  v9 = [(MOConfigurationManagerBase *)self getStringDefaultsForKey:keyCopy withFallback:v8];

  v10 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
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
  [(MOConfigurationManagerBase *)self getFloatTrialLevelForKey:keyCopy withFallback:v7];
  [(MOConfigurationManagerBase *)self getFloatDefaultsForKey:keyCopy withFallback:?];
  v9 = v8;
  v10 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
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
  [(MOConfigurationManagerBase *)self getDoubleTrialLevelForKey:keyCopy withFallback:fallback];
  [(MOConfigurationManagerBase *)self getDoubleDefaultsForKey:keyCopy withFallback:?];
  v8 = v7;
  v9 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
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

@end