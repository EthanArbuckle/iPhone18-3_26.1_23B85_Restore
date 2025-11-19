@interface ATXConfiguredModeService
- (ATXConfiguredModeService)init;
- (BOOL)_isActivityTypeConfigured:(unint64_t)a3 uuid:(id *)a4 allowsSmartEntry:(BOOL *)a5 userModeName:(id *)a6 dndConfigs:(id)a7;
- (BOOL)_isActivityWithUUIDConfigured:(id)a3 activityType:(unint64_t *)a4 allowsSmartEntry:(BOOL *)a5 userModeName:(id *)a6 dndConfigs:(id)a7;
- (BOOL)_isSmartActivationEnabled:(id)a3;
- (BOOL)isActivityTypeConfigured:(unint64_t)a3 uuid:(id *)a4 allowsSmartEntry:(BOOL *)a5 userModeName:(id *)a6;
- (BOOL)isActivityWithUUIDConfigured:(id)a3 activityType:(unint64_t *)a4 allowsSmartEntry:(BOOL *)a5 userModeName:(id *)a6;
- (id)DNDModeConfigurationForActivityWithUUID:(id)a3;
- (id)_DNDModeConfigurationForActivityWithUUID:(id)a3 dndConfigs:(id)a4;
- (id)_cacheAndReturnDNDModeConfigurationDictionary;
- (id)_modeConfigurationsReturningError:(id *)a3;
- (id)_retrieveCachedDNDModeConfigurationDictionary;
- (void)_cacheDNDModeConfigurationDictionary:(id)a3;
- (void)_checkIfConfigurationOfCurrentModeChangedWithDNDConfigs:(id)a3;
- (void)_createServiceIfNeeded;
- (void)_updateUserDefaultsForAnyNewlyAddedModesWithDNDConfigs:(id)a3;
- (void)_updateUserDefaultsWithAnySmartActivationUpdatesWithDNDConfigs:(id)a3;
- (void)modeConfigurationService:(id)a3 didReceiveAvailableModesUpdate:(id)a4;
@end

@implementation ATXConfiguredModeService

- (ATXConfiguredModeService)init
{
  v10.receiver = self;
  v10.super_class = ATXConfiguredModeService;
  v2 = [(ATXConfiguredModeService *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CEBC68]);
    v4 = [MEMORY[0x277CEBCB0] appPredictionDirectoryFile:@"DNDModeConfigurationsCache"];
    v5 = __atxlog_handle_modes();
    v6 = [v3 initWithCacheFilePath:v4 loggingHandle:v5 debugName:@"mode configurations"];
    cache = v2->_cache;
    v2->_cache = v6;

    [(ATXConfiguredModeService *)v2 _createServiceIfNeeded];
    v8 = [(ATXConfiguredModeService *)v2 _cacheAndReturnDNDModeConfigurationDictionary];
  }

  return v2;
}

- (void)_createServiceIfNeeded
{
  if (!self->_service)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v3 = getDNDModeConfigurationServiceClass_softClass;
    v13 = getDNDModeConfigurationServiceClass_softClass;
    if (!getDNDModeConfigurationServiceClass_softClass)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __getDNDModeConfigurationServiceClass_block_invoke;
      v9[3] = &unk_279AB7FA8;
      v9[4] = &v10;
      __getDNDModeConfigurationServiceClass_block_invoke(v9);
      v3 = v11[3];
    }

    v4 = v3;
    _Block_object_dispose(&v10, 8);
    v5 = [v3 serviceForClientIdentifier:@"com.apple.DuetExpertCenter.ProactiveContextClient"];
    service = self->_service;
    self->_service = v5;

    v7 = self->_service;
    if (v7)
    {
      [(DNDModeConfigurationService *)v7 addListener:self withCompletionHandler:&__block_literal_global_5];
    }

    else
    {
      v8 = __atxlog_handle_modes();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [ATXConfiguredModeService _createServiceIfNeeded];
      }
    }
  }
}

void __50__ATXConfiguredModeService__createServiceIfNeeded__block_invoke(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if (v4 || (a2 & 1) == 0)
  {
    v5 = __atxlog_handle_modes();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __50__ATXConfiguredModeService__createServiceIfNeeded__block_invoke_cold_1();
    }
  }
}

- (id)_cacheAndReturnDNDModeConfigurationDictionary
{
  v5 = 0;
  v3 = [(ATXConfiguredModeService *)self _modeConfigurationsReturningError:&v5];
  if (!v5)
  {
    [(ATXConfiguredModeService *)self _cacheDNDModeConfigurationDictionary:v3];
  }

  return v3;
}

- (void)_cacheDNDModeConfigurationDictionary:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = __atxlog_handle_modes();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_260C9F000, v6, OS_LOG_TYPE_INFO, "ATXConfiguredModeService: Caching DND mode configs as a backup", v7, 2u);
  }

  if (v4)
  {
    [(ATXGenericFileBasedCache *)self->_cache storeSecureCodedObject:v4 error:0];
  }

  objc_autoreleasePoolPop(v5);
}

- (id)_retrieveCachedDNDModeConfigurationDictionary
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v3 = getDNDModeConfigurationClass_softClass;
  v15 = getDNDModeConfigurationClass_softClass;
  if (!getDNDModeConfigurationClass_softClass)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __getDNDModeConfigurationClass_block_invoke;
    v11[3] = &unk_279AB7FA8;
    v11[4] = &v12;
    __getDNDModeConfigurationClass_block_invoke(v11);
    v3 = v13[3];
  }

  v4 = v3;
  _Block_object_dispose(&v12, 8);
  if (v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = objc_alloc(MEMORY[0x277CBEB98]);
    v7 = objc_opt_class();
    v8 = [v6 initWithObjects:{v7, v3, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v5);
    v9 = [(ATXGenericFileBasedCache *)self->_cache readSecureCodedObjectWithMaxValidAge:v8 allowableClasses:0 error:2419200.0];
  }

  else
  {
    v8 = __atxlog_handle_modes();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ATXConfiguredModeService _retrieveCachedDNDModeConfigurationDictionary];
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)isActivityTypeConfigured:(unint64_t)a3 uuid:(id *)a4 allowsSmartEntry:(BOOL *)a5 userModeName:(id *)a6
{
  v11 = [(ATXConfiguredModeService *)self _modeConfigurationsReturningError:0];
  LOBYTE(a6) = [(ATXConfiguredModeService *)self _isActivityTypeConfigured:a3 uuid:a4 allowsSmartEntry:a5 userModeName:a6 dndConfigs:v11];

  return a6;
}

- (BOOL)_isActivityTypeConfigured:(unint64_t)a3 uuid:(id *)a4 allowsSmartEntry:(BOOL *)a5 userModeName:(id *)a6 dndConfigs:(id)a7
{
  v11 = a7;
  if (v11)
  {
    v12 = __atxlog_handle_modes();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [ATXConfiguredModeService _isActivityTypeConfigured:uuid:allowsSmartEntry:userModeName:dndConfigs:];
    }

    v13 = ATXActivityTypeToModeSemanticType(a3);
    v14 = v13;
    if (v13)
    {
      v15 = [v13 integerValue];
      v29 = 0;
      v30 = &v29;
      v31 = 0x3032000000;
      v32 = __Block_byref_object_copy__5;
      v33 = __Block_byref_object_dispose__5;
      v34 = 0;
      v23 = 0;
      v24 = &v23;
      v25 = 0x3032000000;
      v26 = __Block_byref_object_copy__5;
      v27 = __Block_byref_object_dispose__5;
      v28 = 0;
      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      v22 = 0;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __100__ATXConfiguredModeService__isActivityTypeConfigured_uuid_allowsSmartEntry_userModeName_dndConfigs___block_invoke;
      v18[3] = &unk_279AB8140;
      v18[4] = &v29;
      v18[5] = &v23;
      v18[6] = &v19;
      v18[7] = v15;
      [v11 enumerateKeysAndObjectsUsingBlock:v18];
      if (a4)
      {
        *a4 = v30[5];
      }

      if (a6)
      {
        *a6 = v24[5];
      }

      if (a5)
      {
        *a5 = *(v20 + 24);
      }

      v16 = v30[5] != 0;
      _Block_object_dispose(&v19, 8);
      _Block_object_dispose(&v23, 8);

      _Block_object_dispose(&v29, 8);
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void __100__ATXConfiguredModeService__isActivityTypeConfigured_uuid_allowsSmartEntry_userModeName_dndConfigs___block_invoke(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v18 = a3;
  v6 = [v18 mode];
  v7 = [v6 semanticType];
  v8 = a1[7];

  if (v7 == v8)
  {
    v9 = [v18 mode];
    v10 = [v9 identifier];
    v11 = [v10 UUIDString];
    v12 = *(a1[4] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v14 = [v18 mode];
    v15 = [v14 name];
    v16 = *(a1[5] + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    *(*(a1[6] + 8) + 24) = [v18 allowSmartEntry] == 2;
    *a4 = 1;
  }
}

- (BOOL)isActivityWithUUIDConfigured:(id)a3 activityType:(unint64_t *)a4 allowsSmartEntry:(BOOL *)a5 userModeName:(id *)a6
{
  v9 = [(ATXConfiguredModeService *)self DNDModeConfigurationForActivityWithUUID:a3];
  v10 = v9;
  if (!a4)
  {
LABEL_4:
    if (!a5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v9)
  {
    v11 = [v9 mode];
    *a4 = DNDModeSemanticTypeToATXActivityType([v11 semanticType]);

    goto LABEL_4;
  }

  *a4 = 0;
  if (a5)
  {
LABEL_5:
    *a5 = [v10 allowSmartEntry] == 2;
  }

LABEL_6:
  if (a6)
  {
    v12 = [v10 mode];
    *a6 = [v12 name];
  }

  return v10 != 0;
}

- (BOOL)_isActivityWithUUIDConfigured:(id)a3 activityType:(unint64_t *)a4 allowsSmartEntry:(BOOL *)a5 userModeName:(id *)a6 dndConfigs:(id)a7
{
  v10 = [(ATXConfiguredModeService *)self _DNDModeConfigurationForActivityWithUUID:a3 dndConfigs:a7];
  v11 = v10;
  if (!a4)
  {
LABEL_4:
    if (!a5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v10)
  {
    v12 = [v10 mode];
    *a4 = DNDModeSemanticTypeToATXActivityType([v12 semanticType]);

    goto LABEL_4;
  }

  *a4 = 0;
  if (a5)
  {
LABEL_5:
    *a5 = [v11 allowSmartEntry] == 2;
  }

LABEL_6:
  if (a6)
  {
    v13 = [v11 mode];
    *a6 = [v13 name];
  }

  return v11 != 0;
}

- (id)DNDModeConfigurationForActivityWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(ATXConfiguredModeService *)self _modeConfigurationsReturningError:0];
  v6 = [(ATXConfiguredModeService *)self _DNDModeConfigurationForActivityWithUUID:v4 dndConfigs:v5];

  return v6;
}

- (id)_DNDModeConfigurationForActivityWithUUID:(id)a3 dndConfigs:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = __atxlog_handle_modes();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [ATXConfiguredModeService _isActivityTypeConfigured:uuid:allowsSmartEntry:userModeName:dndConfigs:];
    }

    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__5;
    v17 = __Block_byref_object_dispose__5;
    v18 = 0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __80__ATXConfiguredModeService__DNDModeConfigurationForActivityWithUUID_dndConfigs___block_invoke;
    v10[3] = &unk_279AB8168;
    v11 = v5;
    v12 = &v13;
    [v6 enumerateKeysAndObjectsUsingBlock:v10];
    v8 = v14[5];

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __80__ATXConfiguredModeService__DNDModeConfigurationForActivityWithUUID_dndConfigs___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v11 = a3;
  v7 = [v11 mode];
  v8 = [v7 identifier];
  v9 = [v8 UUIDString];
  v10 = [v9 isEqualToString:*(a1 + 32)];

  if (v10)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

- (void)_checkIfConfigurationOfCurrentModeChangedWithDNDConfigs:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[ATXUserFocusInferredMode currentMode];
  v6 = v5;
  if (!v5 || ([v5 isAutomationEnabled] & 1) != 0)
  {
    goto LABEL_15;
  }

  v34 = 0;
  v7 = [v6 modeIdentifier];
  v8 = BMUserFocusInferredModeTypeToActivity([v6 modeType]);
  v33 = v8;
  v9 = [v6 userModeName];
  v10 = v9;
  if (!v7)
  {
    v30 = v9;
    v31 = 0;
    [(ATXConfiguredModeService *)self _isActivityTypeConfigured:v8 uuid:&v31 allowsSmartEntry:&v34 userModeName:&v30 dndConfigs:v4];
    v7 = v31;
    v14 = v30;
    v12 = v10;
LABEL_9:

    v12 = v14;
    goto LABEL_10;
  }

  v32 = v9;
  v11 = [(ATXConfiguredModeService *)self _isActivityWithUUIDConfigured:v7 activityType:&v33 allowsSmartEntry:&v34 userModeName:&v32 dndConfigs:v4];
  v12 = v32;

  if (!v11)
  {
    v13 = __atxlog_handle_modes();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_260C9F000, v13, OS_LOG_TYPE_DEFAULT, "ATXConfiguredModeService: mode is no longer configured, updating suggestion to have nil modeUUID and userModeName", buf, 2u);
    }

    v14 = 0;
    v7 = 0;
    goto LABEL_9;
  }

LABEL_10:
  if (v34 == 1)
  {
    v29 = v12;
    v15 = ATXActivityTypeToBMUserFocusInferredModeType(v33);
    v16 = __atxlog_handle_modes();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v36 = v7;
      v37 = 2048;
      v38 = v15;
      _os_log_impl(&dword_260C9F000, v16, OS_LOG_TYPE_DEFAULT, "ATXConfiguredModeService: New mode (modeUUID: %{public}@, type: %lu) was updated to now allow smart trigger. Updating mode inference with smart entry enabled", buf, 0x16u);
    }

    [v6 origin];
    v28 = [v6 originAnchorType];
    v17 = [v6 originBundleID];
    [v6 confidenceScore];
    v19 = v18;
    v20 = [v6 serializedTriggers];
    v21 = v34;
    v22 = BiomeLibrary();
    v23 = [v22 UserFocus];
    v24 = [v23 InferredMode];
    LOWORD(v27) = v21;
    v12 = v29;
    v25 = [ATXModeClassifier updateModeWithUUID:"updateModeWithUUID:userModeName:modeType:modeOrigin:originAnchorType:originBundleId:uiLocation:confidenceScore:serializedTriggers:allowsSmartEntry:shouldSuggestTriggers:currentMode:stream:" userModeName:v7 modeType:v19 modeOrigin:1 originAnchorType:v20 originBundleId:v27 uiLocation:v6 confidenceScore:v24 serializedTriggers:? allowsSmartEntry:? shouldSuggestTriggers:? currentMode:? stream:?];
  }

LABEL_15:
  v26 = *MEMORY[0x277D85DE8];
}

- (id)_modeConfigurationsReturningError:(id *)a3
{
  [(ATXConfiguredModeService *)self _createServiceIfNeeded];
  service = self->_service;
  v14 = 0;
  v6 = [(DNDModeConfigurationService *)service modeConfigurationsReturningError:&v14];
  v7 = v14;
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    v10 = __atxlog_handle_modes();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ATXConfiguredModeService _modeConfigurationsReturningError:];
    }

    v11 = [(ATXConfiguredModeService *)self _retrieveCachedDNDModeConfigurationDictionary];

    v6 = v11;
  }

  if (a3)
  {
    v12 = v8;
    *a3 = v8;
  }

  return v6;
}

- (void)_updateUserDefaultsForAnyNewlyAddedModesWithDNDConfigs:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = MEMORY[0x277CBEBD0];
    v4 = a3;
    v5 = [v3 alloc];
    v6 = [v5 initWithSuiteName:*MEMORY[0x277CEBD00]];
    v7 = *MEMORY[0x277CEBD28];
    v8 = [v6 objectForKey:*MEMORY[0x277CEBD28]];
    if (v8)
    {
      v9 = [MEMORY[0x277CBEB58] setWithArray:v8];
    }

    else
    {
      v9 = objc_opt_new();
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __83__ATXConfiguredModeService__updateUserDefaultsForAnyNewlyAddedModesWithDNDConfigs___block_invoke;
    v14[3] = &unk_279AB8190;
    v10 = v9;
    v15 = v10;
    [v4 enumerateKeysAndObjectsUsingBlock:v14];

    v11 = __atxlog_handle_modes();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v10;
      _os_log_impl(&dword_260C9F000, v11, OS_LOG_TYPE_DEFAULT, "ATXConfiguredModeService: historically configured mode semantic types: %@", buf, 0xCu);
    }

    v12 = [v10 allObjects];
    [v6 setObject:v12 forKey:v7];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __83__ATXConfiguredModeService__updateUserDefaultsForAnyNewlyAddedModesWithDNDConfigs___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 mode];
  v5 = [v4 semanticType];

  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
  [v6 addObject:v7];
}

- (void)_updateUserDefaultsWithAnySmartActivationUpdatesWithDNDConfigs:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = MEMORY[0x277CBEBD0];
    v5 = a3;
    v6 = [v4 alloc];
    v7 = [v6 initWithSuiteName:*MEMORY[0x277CEBD00]];
    v8 = *MEMORY[0x277CEBD30];
    v9 = [v7 objectForKey:*MEMORY[0x277CEBD30]];
    if (v9)
    {
      v10 = [MEMORY[0x277CBEB58] setWithArray:v9];
    }

    else
    {
      v10 = objc_opt_new();
    }

    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __91__ATXConfiguredModeService__updateUserDefaultsWithAnySmartActivationUpdatesWithDNDConfigs___block_invoke;
    v18 = &unk_279AB81B8;
    v19 = self;
    v11 = v10;
    v20 = v11;
    [v5 enumerateKeysAndObjectsUsingBlock:&v15];

    v12 = __atxlog_handle_modes();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v11;
      _os_log_impl(&dword_260C9F000, v12, OS_LOG_TYPE_DEFAULT, "ATXConfiguredModeService: smart activation was enabled at some point for these modes: %@", buf, 0xCu);
    }

    v13 = [v11 allObjects];
    [v7 setObject:v13 forKey:v8];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __91__ATXConfiguredModeService__updateUserDefaultsWithAnySmartActivationUpdatesWithDNDConfigs___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 mode];
  v6 = [v5 semanticType];

  LODWORD(v5) = [*(a1 + 32) _isSmartActivationEnabled:v4];
  if (v5)
  {
    v7 = *(a1 + 40);
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
    [v7 addObject:v8];
  }
}

- (BOOL)_isSmartActivationEnabled:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v12 = a3;
  v3 = [v12 triggers];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v22 count:16];
  if (v4)
  {
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v18 = 0;
        v19 = &v18;
        v20 = 0x2050000000;
        v8 = getDNDModeConfigurationSmartTriggerClass_softClass;
        v21 = getDNDModeConfigurationSmartTriggerClass_softClass;
        if (!getDNDModeConfigurationSmartTriggerClass_softClass)
        {
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = __getDNDModeConfigurationSmartTriggerClass_block_invoke;
          v17[3] = &unk_279AB7FA8;
          v17[4] = &v18;
          __getDNDModeConfigurationSmartTriggerClass_block_invoke(v17);
          v8 = v19[3];
        }

        v9 = v8;
        _Block_object_dispose(&v18, 8);
        if (objc_opt_isKindOfClass())
        {
          LOBYTE(v4) = [v7 enabledSetting] == 2;
          goto LABEL_13;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v13 objects:v22 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v10 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)modeConfigurationService:(id)a3 didReceiveAvailableModesUpdate:(id)a4
{
  v5 = __atxlog_handle_modes();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_260C9F000, v5, OS_LOG_TYPE_DEFAULT, "ATXConfiguredModeService: mode configuration did change. Checking if this affects the current mode and if any new modes were added", v7, 2u);
  }

  v6 = [(ATXConfiguredModeService *)self _cacheAndReturnDNDModeConfigurationDictionary];
  [(ATXConfiguredModeService *)self _updateUserDefaultsForAnyNewlyAddedModesWithDNDConfigs:v6];
  [(ATXConfiguredModeService *)self _updateUserDefaultsWithAnySmartActivationUpdatesWithDNDConfigs:v6];
  [(ATXConfiguredModeService *)self _checkIfConfigurationOfCurrentModeChangedWithDNDConfigs:v6];
}

void __50__ATXConfiguredModeService__createServiceIfNeeded__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_isActivityTypeConfigured:uuid:allowsSmartEntry:userModeName:dndConfigs:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(&dword_260C9F000, v0, OS_LOG_TYPE_DEBUG, "ATXConfiguredModeService: configured modes: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_modeConfigurationsReturningError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end