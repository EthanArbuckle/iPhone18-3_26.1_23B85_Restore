@interface MOContextConfigurationManager
- (BOOL)getBoolDefaultsForKey:(id)a3 withFallback:(BOOL)a4;
- (BOOL)getBoolTrialLevelForKey:(id)a3 withFallback:(BOOL)a4;
- (MOContextConfigurationManager)init;
- (double)getDoubleDefaultsForKey:(id)a3 withFallback:(double)a4;
- (double)getDoubleSettingForKey:(id)a3 withFallback:(double)a4;
- (double)getDoubleTrialLevelForKey:(id)a3 withFallback:(double)a4;
- (float)getFloatDefaultsForKey:(id)a3 withFallback:(float)a4;
- (float)getFloatSettingForKey:(id)a3 withFallback:(float)a4;
- (float)getFloatTrialLevelForKey:(id)a3 withFallback:(float)a4;
- (id)getFilePathDefaultsForKey:(id)a3 withFallback:(id)a4;
- (id)getFilePathSettingForKey:(id)a3 withFallback:(id)a4;
- (id)getFilePathTrialLevelForKey:(id)a3 withFallback:(id)a4;
- (id)getStringDefaultsForKey:(id)a3 withFallback:(id)a4;
- (id)getStringSettingForKey:(id)a3 withFallback:(id)a4;
- (id)getStringTrialLevelForKey:(id)a3 withFallback:(id)a4;
- (int)getIntegerDefaultsForKey:(id)a3 withFallback:(int)a4;
- (int)getIntegerTrialLevelForKey:(id)a3 withFallback:(int)a4;
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

- (id)getStringDefaultsForKey:(id)a3 withFallback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 copy];
  defaultsManager = self->_defaultsManager;
  v10 = [v6 copy];
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
    v16 = v6;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v7;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Default setting [%@] with value [s:%@] and fallback [s:%@]", &v15, 0x20u);
  }

  return v8;
}

- (int)getIntegerDefaultsForKey:(id)a3 withFallback:(int)a4
{
  v6 = a3;
  defaultsManager = self->_defaultsManager;
  v8 = [v6 copy];
  v9 = [(MOContextDefaultsManager *)defaultsManager objectForKey:v8];

  v10 = a4;
  if (v9)
  {
    objc_opt_class();
    v10 = a4;
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 integerValue];
    }
  }

  v11 = _mo_log_facility_get_os_log(&MOLogFacilityContextConfiguration);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412802;
    v14 = v6;
    v15 = 1024;
    v16 = v10;
    v17 = 1024;
    v18 = a4;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Default setting [%@] with value [i:%i] and fallback [i:%i]", &v13, 0x18u);
  }

  return v10;
}

- (BOOL)getBoolDefaultsForKey:(id)a3 withFallback:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  defaultsManager = self->_defaultsManager;
  v8 = [v6 copy];
  v9 = [(MOContextDefaultsManager *)defaultsManager objectForKey:v8];

  v10 = v4;
  if (v9)
  {
    objc_opt_class();
    v10 = v4;
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 BOOLValue];
    }
  }

  v11 = _mo_log_facility_get_os_log(&MOLogFacilityContextConfiguration);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412802;
    v14 = v6;
    v15 = 1024;
    v16 = v10;
    v17 = 1024;
    v18 = v4;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Default setting [%@] with value [b:%i] and fallback [b:%i]", &v13, 0x18u);
  }

  return v10;
}

- (float)getFloatDefaultsForKey:(id)a3 withFallback:(float)a4
{
  v6 = a3;
  defaultsManager = self->_defaultsManager;
  v8 = [v6 copy];
  v9 = [(MOContextDefaultsManager *)defaultsManager objectForKey:v8];

  v10 = a4;
  if (v9)
  {
    objc_opt_class();
    v10 = a4;
    if (objc_opt_isKindOfClass())
    {
      [v9 doubleValue];
      v10 = v11;
    }
  }

  v12 = _mo_log_facility_get_os_log(&MOLogFacilityContextConfiguration);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412802;
    v15 = v6;
    v16 = 2048;
    v17 = v10;
    v18 = 2048;
    v19 = a4;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Default setting [%@] with value [f:%f] and fallback [f:%f]", &v14, 0x20u);
  }

  return v10;
}

- (double)getDoubleDefaultsForKey:(id)a3 withFallback:(double)a4
{
  v6 = a3;
  defaultsManager = self->_defaultsManager;
  v8 = [v6 copy];
  v9 = [(MOContextDefaultsManager *)defaultsManager objectForKey:v8];

  v10 = a4;
  if (v9)
  {
    objc_opt_class();
    v10 = a4;
    if (objc_opt_isKindOfClass())
    {
      [v9 doubleValue];
      v10 = v11;
    }
  }

  v12 = _mo_log_facility_get_os_log(&MOLogFacilityContextConfiguration);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412802;
    v15 = v6;
    v16 = 2048;
    v17 = v10;
    v18 = 2048;
    v19 = a4;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Default setting [%@] with value [d:%f] and fallback [d:%f]", &v14, 0x20u);
  }

  return v10;
}

- (id)getFilePathDefaultsForKey:(id)a3 withFallback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 copy];
  defaultsManager = self->_defaultsManager;
  v10 = [v6 copy];
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
    v16 = v6;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v7;
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

  v8 = [(MOContextConfigurationManager *)self getTrialExperimentIdentifiers];
  v9 = _mo_log_facility_get_os_log(&MOLogFacilityContextConfiguration);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v8;
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

        v16 = [*(*(&v19 + 1) + 8 * v15) factor];
        v17 = [v16 name];

        if (v17)
        {
          [v10 addObject:v17];
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

- (id)getStringTrialLevelForKey:(id)a3 withFallback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 copy];
  if ([(NSArray *)self->_trialFactorNames containsObject:v6])
  {
    trialClient = self->_trialClient;
    v10 = [v6 copy];
    v11 = [(TRIClient *)trialClient levelForFactor:v10 withNamespaceName:@"PERSONALIZED_SENSING_PHOTO"];

    if (v11)
    {
      v12 = [v11 stringValue];

      v8 = v12;
    }
  }

  v13 = _mo_log_facility_get_os_log(&MOLogFacilityContextConfiguration);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v15 = 138412802;
    v16 = v6;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v7;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Trial setting [%@] with value [s:%@] and fallback [s:%@]", &v15, 0x20u);
  }

  return v8;
}

- (int)getIntegerTrialLevelForKey:(id)a3 withFallback:(int)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NSArray *)self->_trialFactorNames containsObject:v6])
  {
    trialClient = self->_trialClient;
    v9 = [v6 copy];
    v10 = [(TRIClient *)trialClient levelForFactor:v9 withNamespaceName:@"PERSONALIZED_SENSING_PHOTO"];

    v7 = a4;
    if (v10)
    {
      v7 = a4;
      if ([v10 levelOneOfCase] == 13)
      {
        v7 = [v10 longValue];
      }
    }
  }

  v11 = _mo_log_facility_get_os_log(&MOLogFacilityContextConfiguration);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412802;
    v14 = v6;
    v15 = 1024;
    v16 = v7;
    v17 = 1024;
    v18 = a4;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Trial setting [%@] with value [i:%i] and fallback [i:%i]", &v13, 0x18u);
  }

  return v7;
}

- (BOOL)getBoolTrialLevelForKey:(id)a3 withFallback:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v4;
  if ([(NSArray *)self->_trialFactorNames containsObject:v6])
  {
    trialClient = self->_trialClient;
    v9 = [v6 copy];
    v10 = [(TRIClient *)trialClient levelForFactor:v9 withNamespaceName:@"PERSONALIZED_SENSING_PHOTO"];

    v7 = v4;
    if (v10)
    {
      v11 = [v10 levelOneOfCase];
      if (v11 == 13)
      {
        v7 = [v10 longValue] != 0;
      }

      else
      {
        v7 = v4;
        if (v11 == 10)
        {
          v7 = [v10 BOOLeanValue];
        }
      }
    }
  }

  v12 = _mo_log_facility_get_os_log(&MOLogFacilityContextConfiguration);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412802;
    v15 = v6;
    v16 = 1024;
    v17 = v7;
    v18 = 1024;
    v19 = v4;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Trial setting [%@] with value [b:%i] and fallback [b:%i]", &v14, 0x18u);
  }

  return v7;
}

- (float)getFloatTrialLevelForKey:(id)a3 withFallback:(float)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NSArray *)self->_trialFactorNames containsObject:v6])
  {
    trialClient = self->_trialClient;
    v9 = [v6 copy];
    v10 = [(TRIClient *)trialClient levelForFactor:v9 withNamespaceName:@"PERSONALIZED_SENSING_PHOTO"];

    v7 = a4;
    if (v10)
    {
      v7 = a4;
      if ([v10 levelOneOfCase] == 15)
      {
        [v10 doubleValue];
        v7 = v11;
      }
    }
  }

  v12 = _mo_log_facility_get_os_log(&MOLogFacilityContextConfiguration);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412802;
    v15 = v6;
    v16 = 2048;
    v17 = v7;
    v18 = 2048;
    v19 = a4;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Trial setting [%@] with value [f:%f] and fallback [f:%f]", &v14, 0x20u);
  }

  return v7;
}

- (double)getDoubleTrialLevelForKey:(id)a3 withFallback:(double)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NSArray *)self->_trialFactorNames containsObject:v6])
  {
    trialClient = self->_trialClient;
    v9 = [v6 copy];
    v10 = [(TRIClient *)trialClient levelForFactor:v9 withNamespaceName:@"PERSONALIZED_SENSING_PHOTO"];

    v7 = a4;
    if (v10)
    {
      v7 = a4;
      if ([v10 levelOneOfCase] == 15)
      {
        [v10 doubleValue];
        v7 = v11;
      }
    }
  }

  v12 = _mo_log_facility_get_os_log(&MOLogFacilityContextConfiguration);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412802;
    v15 = v6;
    v16 = 2048;
    v17 = v7;
    v18 = 2048;
    v19 = a4;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Trial setting [%@] with value [d:%f] and fallback [d:%f]", &v14, 0x20u);
  }

  return v7;
}

- (id)getFilePathTrialLevelForKey:(id)a3 withFallback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 copy];
  if ([(NSArray *)self->_trialFactorNames containsObject:v6])
  {
    trialClient = self->_trialClient;
    v10 = [v6 copy];
    v11 = [(TRIClient *)trialClient levelForFactor:v10 withNamespaceName:@"PERSONALIZED_SENSING_PHOTO"];

    if (v11)
    {
      v12 = [v11 directoryValue];
      v13 = [v12 path];

      v8 = v13;
    }
  }

  v14 = _mo_log_facility_get_os_log(&MOLogFacilityContextConfiguration);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v16 = 138412802;
    v17 = v6;
    v18 = 2112;
    v19 = v8;
    v20 = 2112;
    v21 = v7;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Trial setting [%@] with value [s:%@] and fallback [s:%@]", &v16, 0x20u);
  }

  return v8;
}

- (id)getStringSettingForKey:(id)a3 withFallback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MOContextConfigurationManager *)self getStringTrialLevelForKey:v6 withFallback:v7];
  v9 = [(MOContextConfigurationManager *)self getStringDefaultsForKey:v6 withFallback:v8];

  v10 = _mo_log_facility_get_os_log(&MOLogFacilityContextConfiguration);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412802;
    v13 = v6;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v7;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Retrieved setting [%@] with value [s:%@] and fallback [s:%@]", &v12, 0x20u);
  }

  return v9;
}

- (float)getFloatSettingForKey:(id)a3 withFallback:(float)a4
{
  v6 = a3;
  *&v7 = a4;
  [(MOContextConfigurationManager *)self getFloatTrialLevelForKey:v6 withFallback:v7];
  [(MOContextConfigurationManager *)self getFloatDefaultsForKey:v6 withFallback:?];
  v9 = v8;
  v10 = _mo_log_facility_get_os_log(&MOLogFacilityContextConfiguration);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412802;
    v13 = v6;
    v14 = 2048;
    v15 = v9;
    v16 = 2048;
    v17 = a4;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Retrieved setting [%@] with value [f:%f] and fallback [f:%f]", &v12, 0x20u);
  }

  return v9;
}

- (double)getDoubleSettingForKey:(id)a3 withFallback:(double)a4
{
  v6 = a3;
  [(MOContextConfigurationManager *)self getDoubleTrialLevelForKey:v6 withFallback:a4];
  [(MOContextConfigurationManager *)self getDoubleDefaultsForKey:v6 withFallback:?];
  v8 = v7;
  v9 = _mo_log_facility_get_os_log(&MOLogFacilityContextConfiguration);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412802;
    v12 = v6;
    v13 = 2048;
    v14 = v8;
    v15 = 2048;
    v16 = a4;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Retrieved setting [%@] with value [d:%lf] and fallback [d:%lf]", &v11, 0x20u);
  }

  return v8;
}

- (id)getFilePathSettingForKey:(id)a3 withFallback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MOContextConfigurationManager *)self getFilePathTrialLevelForKey:v6 withFallback:v7];
  v9 = [(MOContextConfigurationManager *)self getFilePathDefaultsForKey:v6 withFallback:v8];

  v10 = _mo_log_facility_get_os_log(&MOLogFacilityContextConfiguration);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412802;
    v13 = v6;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v7;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Retrieved setting [%@] with value [s:%@] and fallback [s:%@]", &v12, 0x20u);
  }

  return v9;
}

@end