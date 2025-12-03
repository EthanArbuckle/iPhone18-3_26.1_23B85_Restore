@interface RCConfigurationManager
- (BOOL)_areAllConfigurationResourcesAvailable:(id)available requestKeys:(id)keys;
- (BOOL)_areAllConfigurationResourcesExpired:(id)expired allowedToReachEndpoint:(BOOL)endpoint configurationSettings:(id)settings requestKeys:(id)keys;
- (BOOL)_areAllConfigurationResourcesInvalid:(id)invalid configurationSettings:(id)settings allowedToReachEndpoint:(BOOL)endpoint requestKeys:(id)keys;
- (BOOL)_isAllowedToReachEndpointWithSettings:(id)settings configurationResource:(id)resource endpointURL:(id)l;
- (BOOL)_isValidConfigurationResource:(id)resource configurationSettings:(id)settings allowedToReachEndpoint:(BOOL)endpoint cachePolicy:(id)policy;
- (RCConfigurationManager)initWithContentDirectoryURL:(id)l;
- (id)_decodeConfigurationResource:(id)resource;
- (id)_endpointURLForEndpointConfig:(id)config overrideEnvironment:(unint64_t)environment overrideEnabled:(BOOL)enabled;
- (id)_endpointURLForEnvironment:(unint64_t)environment requestKey:(id)key;
- (void)_fetchConfigurationFromFallbackURLWithSettings:(id)settings completion:(id)completion;
- (void)_fetchMultiConfigurationFromEndpointURL:(id)l settings:(id)settings networkActivityBlock:(id)block changeTagsByRequestKey:(id)key completion:(id)completion;
- (void)_loadConfigurationResourcesFromStore;
- (void)_processConfigurationCompletionWithResources:(id)resources configurationSettings:(id)settings processedConfigurationDataByRequestKey:(id *)key processedTreatmentIDs:(id *)ds processedSegmentSetIDs:(id *)iDs error:(id *)error;
- (void)_removeConfigurationResourceForRequestKey:(id)key;
- (void)_saveConfigurationResource:(id)resource;
- (void)cancelAllTasksOnBackgroundSessionWithSettings:(id)settings completion:(id)completion;
- (void)fetchConfigurationWithSettings:(id)settings completionQueue:(id)queue completion:(id)completion;
- (void)fetchMultiConfigurationWithSettings:(id)settings networkActivityBlock:(id)block completionQueue:(id)queue completion:(id)completion;
- (void)fetchSingleConfigurationWithSettings:(id)settings networkActivityBlock:(id)block completionQueue:(id)queue completion:(id)completion;
- (void)reestablishBackgroundSessionWithSettings:(id)settings sessionCompletionHandler:(id)handler;
@end

@implementation RCConfigurationManager

- (void)_loadConfigurationResourcesFromStore
{
  v36 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(RCConfigurationManager *)self setConfigResourceByRequestKey:dictionary];

  localStore = [(RCConfigurationManager *)self localStore];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  allKeys = [localStore allKeys];
  v26 = [allKeys countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v26)
  {
    v6 = *v28;
    v7 = 0x277CBE000uLL;
    do
    {
      v8 = 0;
      do
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v27 + 1) + 8 * v8);
        v10 = *(v7 + 2704);
        v11 = objc_opt_class();
        v12 = [localStore objectForKey:v9];
        v13 = RCDynamicCast(v11, v12);

        v14 = [(RCConfigurationManager *)self _decodeConfigurationResource:v13];
        v15 = v14;
        if (v14)
        {
          configurationData = [v14 configurationData];
          v17 = configurationData;
          if (configurationData && [configurationData length])
          {
            v18 = v6;
            v19 = localStore;
            v20 = allKeys;
            configResourceByRequestKey = [(RCConfigurationManager *)self configResourceByRequestKey];
            requestKey = [v15 requestKey];
            [configResourceByRequestKey setObject:v15 forKeyedSubscript:requestKey];

            v23 = RCSharedLog();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v24 = [v17 length];
              *buf = 138543618;
              v32 = v15;
              v33 = 2048;
              v34 = v24;
              _os_log_impl(&dword_2179FC000, v23, OS_LOG_TYPE_DEFAULT, "loaded configuration resource: %{public}@ size: %lu", buf, 0x16u);
            }

            allKeys = v20;
            localStore = v19;
            v6 = v18;
            v7 = 0x277CBE000;
          }

          else
          {
            v23 = RCSharedLog();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v32 = v15;
              _os_log_error_impl(&dword_2179FC000, v23, OS_LOG_TYPE_ERROR, "missing data when loading configuration resource: %{public}@", buf, 0xCu);
            }
          }
        }

        ++v8;
      }

      while (v26 != v8);
      v26 = [allKeys countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v26);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (RCConfigurationManager)initWithContentDirectoryURL:(id)l
{
  lCopy = l;
  v23.receiver = self;
  v23.super_class = RCConfigurationManager;
  v6 = [(RCConfigurationManager *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentDirectoryURL, l);
    v8 = [[RCAsyncSerialQueue alloc] initWithQualityOfService:25];
    configRequestSerialQueue = v7->_configRequestSerialQueue;
    v7->_configRequestSerialQueue = v8;

    v10 = [RCKeyValueStore alloc];
    relativePath = [lCopy relativePath];
    v12 = [(RCKeyValueStore *)v10 initWithName:@"remote-configuration" directory:relativePath version:3 options:0];
    localStore = v7->_localStore;
    v7->_localStore = v12;

    array = [MEMORY[0x277CBEB18] array];
    runningOperations = v7->_runningOperations;
    v7->_runningOperations = array;

    v16 = objc_alloc_init(RCUnfairLock);
    runningOperationsLock = v7->_runningOperationsLock;
    v7->_runningOperationsLock = v16;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    backgroundURLSessionHandlers = v7->_backgroundURLSessionHandlers;
    v7->_backgroundURLSessionHandlers = dictionary;

    v20 = objc_alloc_init(RCUnfairLock);
    backgroundURLSessionHandlersLock = v7->_backgroundURLSessionHandlersLock;
    v7->_backgroundURLSessionHandlersLock = v20;

    [(RCConfigurationManager *)v7 _loadConfigurationResourcesFromStore];
  }

  return v7;
}

- (void)fetchSingleConfigurationWithSettings:(id)settings networkActivityBlock:(id)block completionQueue:(id)queue completion:(id)completion
{
  settingsCopy = settings;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __111__RCConfigurationManager_fetchSingleConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke;
  v14[3] = &unk_27822F480;
  v15 = settingsCopy;
  v16 = completionCopy;
  v12 = completionCopy;
  v13 = settingsCopy;
  [(RCConfigurationManager *)self fetchMultiConfigurationWithSettings:v13 networkActivityBlock:block completionQueue:queue completion:v14];
}

void __111__RCConfigurationManager_fetchSingleConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v18 = a3;
  v9 = a4;
  v10 = a5;
  v11 = *(a1 + 32);
  v12 = a2;
  v13 = [v11 requestInfos];
  v14 = [v13 firstObject];

  v15 = [v14 requestCacheKey];
  v16 = [v12 objectForKeyedSubscript:v15];

  v17 = *(a1 + 40);
  if (v17)
  {
    (*(v17 + 16))(v17, v16, v18, v9, v10);
  }
}

- (void)fetchConfigurationWithSettings:(id)settings completionQueue:(id)queue completion:(id)completion
{
  settingsCopy = settings;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __84__RCConfigurationManager_fetchConfigurationWithSettings_completionQueue_completion___block_invoke;
  v12[3] = &unk_27822F480;
  v13 = settingsCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = settingsCopy;
  [(RCConfigurationManager *)self fetchMultiConfigurationWithSettings:v11 completionQueue:queue completion:v12];
}

void __84__RCConfigurationManager_fetchConfigurationWithSettings_completionQueue_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v20 = a5;
  v9 = *(a1 + 32);
  v10 = a4;
  v11 = a3;
  v12 = a2;
  v13 = [v9 requestInfos];
  v14 = [v13 firstObject];

  v15 = [v14 requestCacheKey];
  v16 = [v12 objectForKeyedSubscript:v15];

  v17 = [v11 rc_arrayByTransformingWithBlock:&__block_literal_global_0];

  v18 = [v10 rc_arrayByTransformingWithBlock:&__block_literal_global_83];

  v19 = *(a1 + 40);
  if (v19)
  {
    (*(v19 + 16))(v19, v16, v17, v18, v20);
  }
}

- (void)fetchMultiConfigurationWithSettings:(id)settings networkActivityBlock:(id)block completionQueue:(id)queue completion:(id)completion
{
  v119 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  blockCopy = block;
  queueCopy = queue;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke;
  aBlock[3] = &unk_27822F518;
  aBlock[4] = self;
  v12 = _Block_copy(aBlock);
  requestInfos = [settingsCopy requestInfos];
  v14 = [requestInfos rc_arrayByTransformingWithBlock:&__block_literal_global_91];

  configResourceByRequestKey = [(RCConfigurationManager *)self configResourceByRequestKey];
  v16 = [configResourceByRequestKey rc_subdictionaryForKeys:v14];

  v17 = [v16 rc_dictionaryByTransformingValuesWithKeyAndValueBlock:&__block_literal_global_94];
  v80 = v14;
  [v14 firstObject];
  v79 = v83 = v16;
  v81 = [v16 objectForKeyedSubscript:?];
  requestInfos2 = [settingsCopy requestInfos];
  LODWORD(v14) = [requestInfos2 rc_containsObjectPassingTest:&__block_literal_global_97];

  requestInfos3 = [settingsCopy requestInfos];
  v20 = [requestInfos3 rc_containsObjectPassingTest:&__block_literal_global_99];

  v75 = queueCopy;
  if (v14)
  {
    configResourceByRequestKey2 = [(RCConfigurationManager *)self configResourceByRequestKey];
    endpointURLString = [configResourceByRequestKey2 objectForKeyedSubscript:@"appConfigRequest"];

    userSegmentationConfiguration = [endpointURLString userSegmentationConfiguration];
    widgetEndpointURLString = [userSegmentationConfiguration widgetEndpointURLString];

    if (!-[__CFString length](widgetEndpointURLString, "length") || ([MEMORY[0x277CBEBC0] URLWithString:widgetEndpointURLString], (rc_endpointURLNotAvailableError = objc_claimAutoreleasedReturnValue()) == 0))
    {
      debugOverrides = [settingsCopy debugOverrides];
      debugEnvironment = [debugOverrides debugEnvironment];
      v27 = RCRequestWidgetConfigurationKey;
LABEL_15:
      v39 = *v27;
      selfCopy2 = self;
LABEL_16:
      rc_endpointURLNotAvailableError = [(RCConfigurationManager *)selfCopy2 _endpointURLForEnvironment:debugEnvironment requestKey:v39];
      v30 = v83;

      goto LABEL_17;
    }

    goto LABEL_8;
  }

  if (v20)
  {
    configResourceByRequestKey3 = [(RCConfigurationManager *)self configResourceByRequestKey];
    endpointURLString = [configResourceByRequestKey3 objectForKeyedSubscript:@"appConfigRequest"];

    userSegmentationConfiguration2 = [endpointURLString userSegmentationConfiguration];
    widgetEndpointURLString = [userSegmentationConfiguration2 todayEndpointURLString];

    if (!-[__CFString length](widgetEndpointURLString, "length") || ([MEMORY[0x277CBEBC0] URLWithString:widgetEndpointURLString], (rc_endpointURLNotAvailableError = objc_claimAutoreleasedReturnValue()) == 0))
    {
      debugOverrides = [settingsCopy debugOverrides];
      debugEnvironment = [debugOverrides debugEnvironment];
      v27 = RCRequestTodayConfigurationKey;
      goto LABEL_15;
    }

LABEL_8:
    v30 = v83;
LABEL_17:

LABEL_18:
LABEL_19:
    v41 = [v30 objectForKeyedSubscript:{v79, v17}];
    treatmentIDs = [v41 treatmentIDs];

    v42 = [v30 objectForKeyedSubscript:v79];
    segmentSetIDs = [v42 segmentSetIDs];

    v43 = [(RCConfigurationManager *)self _isAllowedToReachEndpointWithSettings:settingsCopy configurationResource:v81 endpointURL:rc_endpointURLNotAvailableError];
    v44 = [MEMORY[0x277CBEB98] setWithArray:v80];
    requestInfos4 = [settingsCopy requestInfos];
    v46 = [requestInfos4 rc_containsObjectPassingTest:&__block_literal_global_104];

    if (!v43)
    {
      requestInfos5 = [settingsCopy requestInfos];
      v48 = [requestInfos5 rc_arrayByTransformingWithBlock:&__block_literal_global_107];

      v49 = [MEMORY[0x277CBEB98] setWithArray:v48];

      v30 = v83;
      v44 = v49;
    }

    if (v46)
    {
      v50 = [(RCConfigurationManager *)self _areAllConfigurationResourcesAvailable:v30 requestKeys:v44];
      v51 = v44;
      v52 = [(RCConfigurationManager *)self _areAllConfigurationResourcesInvalid:v30 configurationSettings:settingsCopy allowedToReachEndpoint:v43 requestKeys:v44];
      v53 = RCSharedLog();
      v54 = v53;
      if (!v50 || v52)
      {
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          [RCConfigurationManager fetchMultiConfigurationWithSettings:v80 networkActivityBlock:? completionQueue:? completion:?];
        }

        rc_notCachedError = [MEMORY[0x277CCA9B8] rc_notCachedError];
        v38 = completionCopy;
        v37 = v75;
        v17 = v73;
        v60 = segmentSetIDs;
        if (v75)
        {
          if (completionCopy)
          {
            v101[0] = MEMORY[0x277D85DD0];
            v101[1] = 3221225472;
            v101[2] = __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_109;
            v101[3] = &unk_27822F350;
            v103 = completionCopy;
            v102 = rc_notCachedError;
            dispatch_async(v75, v101);
          }
        }

        else if (completionCopy)
        {
          (*(completionCopy + 2))(completionCopy, 0, 0, 0, rc_notCachedError);
        }

        v59 = treatmentIDs;
        goto LABEL_61;
      }

      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        allKeys = [v83 allKeys];
        rc_description = [allKeys rc_description];
        rc_description2 = [treatmentIDs rc_description];
        rc_description3 = [segmentSetIDs rc_description];
        *buf = 138543874;
        v114 = rc_description;
        v115 = 2114;
        v116 = rc_description2;
        v117 = 2114;
        v118 = rc_description3;
        _os_log_impl(&dword_2179FC000, v54, OS_LOG_TYPE_DEFAULT, "cache-only policy: returning cached configuration for requestKeys: %{public}@ treatmentIDs: %{public}@ segmentSetIDs: %{public}@", buf, 0x20u);
      }

      v37 = v75;
      if (!v75)
      {
        v17 = v73;
        v38 = completionCopy;
        v60 = segmentSetIDs;
        v59 = treatmentIDs;
        if (completionCopy)
        {
          (*(completionCopy + 2))(completionCopy, v73, treatmentIDs, segmentSetIDs, 0);
        }

        goto LABEL_61;
      }

      v17 = v73;
      v38 = completionCopy;
      v60 = segmentSetIDs;
      v59 = treatmentIDs;
      if (!completionCopy)
      {
LABEL_61:

        goto LABEL_62;
      }

      v104[0] = MEMORY[0x277D85DD0];
      v104[1] = 3221225472;
      v104[2] = __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_108;
      v104[3] = &unk_27822F5A0;
      v108 = completionCopy;
      v105 = v73;
      v106 = treatmentIDs;
      v107 = segmentSetIDs;
      dispatch_async(v75, v104);

      v61 = v108;
LABEL_56:

      goto LABEL_61;
    }

    debugOverrides2 = [settingsCopy debugOverrides];
    if (([debugOverrides2 ignoreCache] & 1) != 0 || !-[RCConfigurationManager _areAllConfigurationResourcesAvailable:requestKeys:](self, "_areAllConfigurationResourcesAvailable:requestKeys:", v30, v44) || -[RCConfigurationManager _areAllConfigurationResourcesInvalid:configurationSettings:allowedToReachEndpoint:requestKeys:](self, "_areAllConfigurationResourcesInvalid:configurationSettings:allowedToReachEndpoint:requestKeys:", v30, settingsCopy, v43, v44))
    {
      v51 = v44;

      v17 = v73;
    }

    else
    {
      v51 = v44;
      v69 = [(RCConfigurationManager *)self _areAllConfigurationResourcesExpired:v30 allowedToReachEndpoint:v43 configurationSettings:settingsCopy requestKeys:v44];

      v17 = v73;
      if (!v69)
      {
        v94[0] = MEMORY[0x277D85DD0];
        v94[1] = 3221225472;
        v94[2] = __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_2_110;
        v94[3] = &unk_27822F5C8;
        v95 = v30;
        v59 = treatmentIDs;
        v96 = treatmentIDs;
        v60 = segmentSetIDs;
        v97 = segmentSetIDs;
        v37 = v75;
        v98 = v75;
        v38 = completionCopy;
        v100 = completionCopy;
        v99 = v73;
        __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_2_110(v94);

        v61 = v95;
        goto LABEL_56;
      }
    }

    v63 = RCSharedLog();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2179FC000, v63, OS_LOG_TYPE_DEFAULT, "configuration request(s) not available in the cache or expired, starting fetch", buf, 2u);
    }

    if (!v43)
    {
      v89[0] = MEMORY[0x277D85DD0];
      v89[1] = 3221225472;
      v89[2] = __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_112;
      v89[3] = &unk_27822F5F0;
      v92 = v12;
      v90 = settingsCopy;
      v37 = v75;
      v91 = v75;
      v38 = completionCopy;
      v93 = completionCopy;
      __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_112(v89);

LABEL_60:
      v60 = segmentSetIDs;
      v59 = treatmentIDs;
      goto LABEL_61;
    }

    debugOverrides3 = [settingsCopy debugOverrides];
    v38 = completionCopy;
    v37 = v75;
    if ([debugOverrides3 ignoreCache])
    {
    }

    else
    {
      v66 = [(RCConfigurationManager *)self _areAllConfigurationResourcesInvalid:v83 configurationSettings:settingsCopy allowedToReachEndpoint:1 requestKeys:v51];

      if (!v66)
      {
        v67 = [v83 rc_dictionaryByTransformingValuesWithKeyAndValueBlock:&__block_literal_global_116];
        goto LABEL_59;
      }
    }

    v67 = 0;
LABEL_59:
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_2_118;
    v84[3] = &unk_27822F660;
    v85 = v75;
    v87 = completionCopy;
    v86 = settingsCopy;
    v88 = v12;
    [(RCConfigurationManager *)self _fetchMultiConfigurationFromEndpointURL:rc_endpointURLNotAvailableError settings:v86 networkActivityBlock:blockCopy changeTagsByRequestKey:v67 completion:v84];

    goto LABEL_60;
  }

  endpointConfig = [settingsCopy endpointConfig];

  if (!endpointConfig)
  {
    userSegmentationConfiguration3 = [v81 userSegmentationConfiguration];
    endpointURLString = [userSegmentationConfiguration3 endpointURLString];

    if ([endpointURLString length])
    {
      rc_endpointURLNotAvailableError = [MEMORY[0x277CBEBC0] URLWithString:endpointURLString];
      if (rc_endpointURLNotAvailableError)
      {
        v30 = v83;
        goto LABEL_18;
      }
    }

    requestInfos6 = [settingsCopy requestInfos];
    firstObject = [requestInfos6 firstObject];
    widgetEndpointURLString = [firstObject requestKey];

    debugOverrides = [settingsCopy debugOverrides];
    debugEnvironment = [debugOverrides debugEnvironment];
    selfCopy2 = self;
    v39 = widgetEndpointURLString;
    goto LABEL_16;
  }

  endpointConfig2 = [settingsCopy endpointConfig];
  debugOverrides4 = [settingsCopy debugOverrides];
  debugEnvironment2 = [debugOverrides4 debugEnvironment];
  debugOverrides5 = [settingsCopy debugOverrides];
  v36 = [(RCConfigurationManager *)self _endpointURLForEndpointConfig:endpointConfig2 overrideEnvironment:debugEnvironment2 overrideEnabled:debugOverrides5 != 0];

  v30 = v83;
  rc_endpointURLNotAvailableError = v36;
  if (v36)
  {
    goto LABEL_19;
  }

  rc_endpointURLNotAvailableError = [MEMORY[0x277CCA9B8] rc_endpointURLNotAvailableError];
  v37 = v75;
  if (v75)
  {
    v38 = completionCopy;
    if (completionCopy)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_6;
      block[3] = &unk_27822F350;
      v111 = completionCopy;
      rc_endpointURLNotAvailableError = rc_endpointURLNotAvailableError;
      v110 = rc_endpointURLNotAvailableError;
      dispatch_async(v75, block);
    }
  }

  else
  {
    v38 = completionCopy;
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0, 0, rc_endpointURLNotAvailableError);
    }
  }

LABEL_62:

  v72 = *MEMORY[0x277D85DE8];
}

void __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_2;
  v12[3] = &unk_27822F4F0;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  [v9 _fetchConfigurationFromFallbackURLWithSettings:a2 completion:v12];
}

void __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = RCSharedLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_2_cold_1();
    }
  }

  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (v9)
  {
    if (v8)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_84;
      block[3] = &unk_27822F4C8;
      v13 = v8;
      v11 = v5;
      v12 = v6;
      dispatch_async(v9, block);
    }
  }

  else if (v8)
  {
    (v8)[2](v8, v5, 0, 0, v6);
  }
}

uint64_t __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 requestKey];
  v3 = [v2 isEqualToString:@"widgetConfigRequest"];

  return v3;
}

uint64_t __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 requestKey];
  v3 = [v2 isEqualToString:@"todayConfigRequest"];

  return v3;
}

BOOL __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = [a2 cachePolicy];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[RCCachePolicy defaultCachePolicy];
  }

  v5 = v4;

  v6 = [v5 requestCachePolicy] == 2;
  return v6;
}

id __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 fallbackURL];
  if (v3)
  {
    v4 = [v2 requestCacheKey];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_2_110(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = RCSharedLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) allKeys];
    v4 = [v3 rc_description];
    v5 = [*(a1 + 40) rc_description];
    v6 = [*(a1 + 48) rc_description];
    *buf = 138543874;
    v16 = v4;
    v17 = 2114;
    v18 = v5;
    v19 = 2114;
    v20 = v6;
    _os_log_impl(&dword_2179FC000, v2, OS_LOG_TYPE_DEFAULT, "returning the cached configuration for requestKeys: %{public}@ treatmentIDs: %{public}@ segmentSetIDs: %{public}@", buf, 0x20u);
  }

  v7 = *(a1 + 56);
  v8 = *(a1 + 72);
  if (v7)
  {
    if (v8)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_111;
      v10[3] = &unk_27822F5A0;
      v14 = v8;
      v11 = *(a1 + 64);
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      dispatch_async(v7, v10);
    }
  }

  else if (v8)
  {
    v8[2](v8, *(a1 + 64), *(a1 + 40), *(a1 + 48), 0);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_112(void *a1)
{
  v2 = RCSharedLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_2179FC000, v2, OS_LOG_TYPE_DEFAULT, "not allowed to reach the endpoint at this time, using the fallbackURL", v7, 2u);
  }

  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[7];
  return (*(a1[6] + 16))();
}

RCChangeTag *__110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_113(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 configurationID];
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = v4;
  v6 = [v3 contentHash];
  if (!v6)
  {
    v8 = 0;
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [v3 lastModifiedString];
  if (v8)
  {
    v9 = [v3 gzippedConfigurationData];
    v10 = [v9 length];

    if (v10)
    {
      v11 = [RCChangeTag alloc];
      v5 = [v3 configurationID];
      v7 = [v3 contentHash];
      v12 = [v3 lastModifiedString];
      v8 = [(RCChangeTag *)v11 initWithIdentifier:v5 contentHash:v7 lastModifiedString:v12];

      goto LABEL_6;
    }

LABEL_7:
    v8 = 0;
    goto LABEL_10;
  }

LABEL_6:

LABEL_9:
LABEL_10:

  return v8;
}

void __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_2_118(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v12)
  {
    v13 = RCSharedLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_2_118_cold_1();
    }
  }

  if (v9)
  {
    v14 = *(a1 + 32);
    v15 = *(a1 + 48);
    if (v14)
    {
      if (v15)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_119;
        block[3] = &unk_27822F638;
        v35 = v15;
        v31 = v9;
        v32 = v10;
        v33 = v11;
        v34 = v12;
        dispatch_async(v14, block);

        v16 = v35;
LABEL_13:

        goto LABEL_20;
      }

      goto LABEL_20;
    }

    if (!v15)
    {
      goto LABEL_20;
    }

    v21 = v15[2];
LABEL_19:
    v21();
    goto LABEL_20;
  }

  v17 = [*(a1 + 40) debugOverrides];
  v18 = [v17 configurationSource];

  if (v18 != 1)
  {
    v23 = *(a1 + 32);
    v22 = *(a1 + 40);
    v24 = *(a1 + 48);
    (*(*(a1 + 56) + 16))();
    goto LABEL_20;
  }

  v19 = *(a1 + 32);
  v20 = *(a1 + 48);
  if (!v19)
  {
    if (!v20)
    {
      goto LABEL_20;
    }

    v21 = v20[2];
    goto LABEL_19;
  }

  if (v20)
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_2_120;
    v25[3] = &unk_27822F5A0;
    v29 = v20;
    v26 = v10;
    v27 = v11;
    v28 = v12;
    dispatch_async(v19, v25);

    v16 = v29;
    goto LABEL_13;
  }

LABEL_20:
}

- (void)reestablishBackgroundSessionWithSettings:(id)settings sessionCompletionHandler:(id)handler
{
  settingsCopy = settings;
  handlerCopy = handler;
  backgroundFetchConfiguration = [settingsCopy backgroundFetchConfiguration];

  if (!backgroundFetchConfiguration && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationManager reestablishBackgroundSessionWithSettings:sessionCompletionHandler:];
  }

  backgroundFetchConfiguration2 = [settingsCopy backgroundFetchConfiguration];
  sessionIdentifier = [backgroundFetchConfiguration2 sessionIdentifier];

  backgroundURLSessionHandlersLock = [(RCConfigurationManager *)self backgroundURLSessionHandlersLock];
  [backgroundURLSessionHandlersLock lock];

  backgroundURLSessionHandlers = [(RCConfigurationManager *)self backgroundURLSessionHandlers];
  v13 = [backgroundURLSessionHandlers objectForKeyedSubscript:sessionIdentifier];

  if (!v13)
  {
    v13 = objc_alloc_init(RCBackgroundURLSessionHandler);
    backgroundURLSessionHandlers2 = [(RCConfigurationManager *)self backgroundURLSessionHandlers];
    [backgroundURLSessionHandlers2 setObject:v13 forKeyedSubscript:sessionIdentifier];
  }

  backgroundURLSessionHandlersLock2 = [(RCConfigurationManager *)self backgroundURLSessionHandlersLock];
  [backgroundURLSessionHandlersLock2 unlock];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __92__RCConfigurationManager_reestablishBackgroundSessionWithSettings_sessionCompletionHandler___block_invoke;
  v19[3] = &unk_27822F688;
  v19[4] = self;
  v20 = settingsCopy;
  v21 = sessionIdentifier;
  v22 = handlerCopy;
  v16 = sessionIdentifier;
  v17 = handlerCopy;
  v18 = settingsCopy;
  [(RCBackgroundURLSessionHandler *)v13 reestablishBackgroundSessionWithConfigurationSettings:v18 sessionCompletionHandler:v19];
}

void __92__RCConfigurationManager_reestablishBackgroundSessionWithSettings_sessionCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v5)
  {
    v6 = v5;
    v27 = *v33;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        v8 = v4;
        if (*v33 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v32 + 1) + 8 * i);
        v10 = *(a1 + 32);
        v11 = [v9 configurationResourcesByRequestKey];
        v12 = *(a1 + 40);
        v30 = 0;
        v31 = 0;
        v28 = 0;
        v29 = 0;
        [v10 _processConfigurationCompletionWithResources:v11 configurationSettings:v12 processedConfigurationDataByRequestKey:&v31 processedTreatmentIDs:&v30 processedSegmentSetIDs:&v29 error:&v28];
        v13 = v31;
        v14 = v30;
        v15 = v29;
        v16 = v28;

        v17 = [RCConfigurationFetchResult alloc];
        v18 = [v9 taskIdentifier];
        v19 = [(RCConfigurationFetchResult *)v17 initWithTaskIdentifier:v18 configurationDataByRequestKey:v13 treatmentIDs:v14 segmentSetIDs:v15 error:v16];

        v4 = v8;
        [v8 addObject:v19];
      }

      v6 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v6);
  }

  v20 = *(a1 + 56);
  if (v20)
  {
    v21 = [v4 copy];
    (*(v20 + 16))(v20, v21);
  }

  v22 = [*(a1 + 32) backgroundURLSessionHandlersLock];
  [v22 lock];

  v23 = [*(a1 + 32) backgroundURLSessionHandlers];
  [v23 setObject:0 forKeyedSubscript:*(a1 + 48)];

  v24 = [*(a1 + 32) backgroundURLSessionHandlersLock];
  [v24 unlock];

  v25 = *MEMORY[0x277D85DE8];
}

- (void)cancelAllTasksOnBackgroundSessionWithSettings:(id)settings completion:(id)completion
{
  settingsCopy = settings;
  completionCopy = completion;
  backgroundFetchConfiguration = [settingsCopy backgroundFetchConfiguration];

  if (!backgroundFetchConfiguration && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationManager cancelAllTasksOnBackgroundSessionWithSettings:completion:];
  }

  backgroundFetchConfiguration2 = [settingsCopy backgroundFetchConfiguration];
  [RCURLSession cancelAllTasksOnBackgroundSessionWithFetchConfig:backgroundFetchConfiguration2 completion:completionCopy];
}

- (void)_processConfigurationCompletionWithResources:(id)resources configurationSettings:(id)settings processedConfigurationDataByRequestKey:(id *)key processedTreatmentIDs:(id *)ds processedSegmentSetIDs:(id *)iDs error:(id *)error
{
  v79 = *MEMORY[0x277D85DE8];
  resourcesCopy = resources;
  settingsCopy = settings;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v50 = settingsCopy;
  obj = [settingsCopy requestInfos];
  v62 = [obj countByEnumeratingWithState:&v66 objects:v78 count:16];
  segmentSetIDs3 = 0;
  if (!v62)
  {
    v65 = 0;
    goto LABEL_33;
  }

  v65 = 0;
  v58 = *v67;
  *&v13 = 138544130;
  v49 = v13;
  keyCopy = key;
  dsCopy = ds;
  keyCopy2 = key;
  v59 = dictionary;
  do
  {
    v16 = 0;
    do
    {
      v64 = segmentSetIDs3;
      if (*v67 != v58)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v66 + 1) + 8 * v16);
      requestCacheKey = [v17 requestCacheKey];
      v19 = [resourcesCopy objectForKeyedSubscript:requestCacheKey];

      configResourceByRequestKey = [(RCConfigurationManager *)self configResourceByRequestKey];
      requestCacheKey2 = [v17 requestCacheKey];
      v22 = [configResourceByRequestKey objectForKeyedSubscript:requestCacheKey2];

      if (!v22)
      {
        contentHash = RCSharedLog();
        if (os_log_type_enabled(contentHash, OS_LOG_TYPE_DEFAULT))
        {
          requestKey = [v17 requestKey];
          *buf = 138543362;
          v71 = requestKey;
          _os_log_impl(&dword_2179FC000, contentHash, OS_LOG_TYPE_DEFAULT, "cached configuration not available for requestKey: %{public}@, skip updating last fetch date, treatmentIDs and segmentSetIDs", buf, 0xCu);
LABEL_14:
        }

        goto LABEL_16;
      }

      contentHash = [v22 contentHash];
      requestKey = [v19 contentHash];
      if (([contentHash isEqualToString:requestKey]& 1) == 0)
      {
        goto LABEL_14;
      }

      userID = [v22 userID];
      userID2 = [v19 userID];
      if (![userID isEqualToString:userID2])
      {

        ds = dsCopy;
        goto LABEL_16;
      }

      v52 = v17;
      storefrontID = [v22 storefrontID];
      storefrontID2 = [v19 storefrontID];
      if (![storefrontID isEqualToString:storefrontID2])
      {

        ds = dsCopy;
        dictionary = v59;
        v17 = v52;
        goto LABEL_17;
      }

      debugOverrides = [v50 debugOverrides];
      ignoreCache = [debugOverrides ignoreCache];

      v17 = v52;
      if ((ignoreCache & 1) == 0)
      {
        v38 = RCSharedLog();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          requestKey2 = [v52 requestKey];
          treatmentIDs = [v19 treatmentIDs];
          rc_description = [treatmentIDs rc_description];
          segmentSetIDs = [v19 segmentSetIDs];
          rc_description2 = [segmentSetIDs rc_description];
          contentHash2 = [v22 contentHash];
          *buf = v49;
          v71 = requestKey2;
          v72 = 2114;
          v73 = rc_description;
          v74 = 2114;
          v75 = rc_description2;
          v76 = 2114;
          v77 = contentHash2;
          _os_log_impl(&dword_2179FC000, v38, OS_LOG_TYPE_DEFAULT, "matched contentHash, returning cached configuration for requestKey: %{public}@ treatmentIDs: %{public}@ segmentSetIDs: %{public}@ contentHash: %{public}@", buf, 0x2Au);
        }

        date = [MEMORY[0x277CBEAA8] date];
        [v22 setLastFetchedDate:date];

        treatmentIDs2 = [v19 treatmentIDs];
        [v22 setTreatmentIDs:treatmentIDs2];

        segmentSetIDs2 = [v19 segmentSetIDs];
        [v22 setSegmentSetIDs:segmentSetIDs2];

        contentHash = v19;
        v19 = v22;
        ds = dsCopy;
        keyCopy = keyCopy2;
LABEL_16:
        dictionary = v59;
LABEL_17:

        goto LABEL_18;
      }

      ds = dsCopy;
      keyCopy = keyCopy2;
      dictionary = v59;
LABEL_18:
      configurationData = [v19 configurationData];
      v31 = configurationData;
      if (configurationData && [configurationData length])
      {
        [(RCConfigurationManager *)self _saveConfigurationResource:v19];
        requestCacheKey3 = [v17 requestCacheKey];
        [dictionary setObject:v31 forKeyedSubscript:requestCacheKey3];

        treatmentIDs3 = [v19 treatmentIDs];

        segmentSetIDs3 = [v19 segmentSetIDs];

        v34 = keyCopy2;
      }

      else
      {
        v35 = RCSharedLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v71 = v19;
          _os_log_error_impl(&dword_2179FC000, v35, OS_LOG_TYPE_ERROR, "endpoint: missing data in configuration resource %{public}@", buf, 0xCu);
        }

        *error = [MEMORY[0x277CCA9B8] rc_notAvailableError];
        segmentSetIDs3 = v64;
        treatmentIDs3 = v65;
        v34 = keyCopy;
      }

      keyCopy = v34;
      *v34 = [dictionary copy];
      v36 = treatmentIDs3;
      v65 = treatmentIDs3;
      *ds = treatmentIDs3;
      v37 = segmentSetIDs3;
      *iDs = segmentSetIDs3;

      ++v16;
    }

    while (v62 != v16);
    v47 = [obj countByEnumeratingWithState:&v66 objects:v78 count:16];
    v62 = v47;
  }

  while (v47);
LABEL_33:

  v48 = *MEMORY[0x277D85DE8];
}

- (BOOL)_areAllConfigurationResourcesAvailable:(id)available requestKeys:(id)keys
{
  v5 = MEMORY[0x277CBEB98];
  keysCopy = keys;
  allKeys = [available allKeys];
  v8 = [v5 setWithArray:allKeys];

  LOBYTE(allKeys) = [v8 isEqualToSet:keysCopy];
  return allKeys;
}

- (BOOL)_areAllConfigurationResourcesInvalid:(id)invalid configurationSettings:(id)settings allowedToReachEndpoint:(BOOL)endpoint requestKeys:(id)keys
{
  settingsCopy = settings;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __120__RCConfigurationManager__areAllConfigurationResourcesInvalid_configurationSettings_allowedToReachEndpoint_requestKeys___block_invoke;
  v15[3] = &unk_27822F6B0;
  v16 = settingsCopy;
  selfCopy = self;
  endpointCopy = endpoint;
  v11 = settingsCopy;
  keysCopy = keys;
  v13 = [invalid keysOfEntriesPassingTest:v15];
  LOBYTE(self) = [v13 isEqualToSet:keysCopy];

  return self;
}

uint64_t __120__RCConfigurationManager__areAllConfigurationResourcesInvalid_configurationSettings_allowedToReachEndpoint_requestKeys___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a3;
  v9 = [v7 requestInfoForRequestCacheKey:a2];
  v10 = v9;
  if (v9)
  {
    [v9 cachePolicy];
  }

  else
  {
    +[RCCachePolicy defaultCachePolicy];
  }
  v11 = ;
  v12 = [*(a1 + 40) _isValidConfigurationResource:v8 configurationSettings:*(a1 + 32) allowedToReachEndpoint:*(a1 + 48) cachePolicy:v11];

  *a4 = v12;
  return v12 ^ 1u;
}

- (BOOL)_areAllConfigurationResourcesExpired:(id)expired allowedToReachEndpoint:(BOOL)endpoint configurationSettings:(id)settings requestKeys:(id)keys
{
  settingsCopy = settings;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __120__RCConfigurationManager__areAllConfigurationResourcesExpired_allowedToReachEndpoint_configurationSettings_requestKeys___block_invoke;
  v15[3] = &unk_27822F6B0;
  endpointCopy = endpoint;
  v15[4] = self;
  v16 = settingsCopy;
  v11 = settingsCopy;
  keysCopy = keys;
  v13 = [expired keysOfEntriesPassingTest:v15];
  LOBYTE(self) = [v13 isEqualToSet:keysCopy];

  return self;
}

uint64_t __120__RCConfigurationManager__areAllConfigurationResourcesExpired_allowedToReachEndpoint_configurationSettings_requestKeys___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = a3;
  LODWORD(v5) = [v6 _isUnexpiredConfigurationResource:v8 allowedToReachEndpoint:v5 useBackgroundRefreshRate:{objc_msgSend(v7, "useBackgroundRefreshRate")}];

  *a4 = v5;
  return v5 ^ 1;
}

- (BOOL)_isValidConfigurationResource:(id)resource configurationSettings:(id)settings allowedToReachEndpoint:(BOOL)endpoint cachePolicy:(id)policy
{
  v37 = *MEMORY[0x277D85DE8];
  resourceCopy = resource;
  settingsCopy = settings;
  policyCopy = policy;
  if (!resourceCopy)
  {
    goto LABEL_15;
  }

  v12 = MEMORY[0x277CCACA8];
  userID = [resourceCopy userID];
  userID2 = [settingsCopy userID];
  LOBYTE(v12) = [v12 rc_string:userID isEqualToString:userID2];

  if ((v12 & 1) == 0)
  {
    v22 = RCSharedLog();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    userID3 = [settingsCopy userID];
    v35 = 138543362;
    v36 = userID3;
    v25 = "configuration resource no longer valid because the userID changed: %{public}@";
    goto LABEL_12;
  }

  v15 = MEMORY[0x277CCACA8];
  storefrontID = [resourceCopy storefrontID];
  storefrontID2 = [settingsCopy storefrontID];
  LOBYTE(v15) = [v15 rc_string:storefrontID isEqualToString:storefrontID2];

  if ((v15 & 1) == 0)
  {
    v22 = RCSharedLog();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    userID3 = [settingsCopy storefrontID];
    v35 = 138543362;
    v36 = userID3;
    v25 = "configuration resource no longer valid because the storefrontID changed: %{public}@";
LABEL_12:
    _os_log_impl(&dword_2179FC000, v22, OS_LOG_TYPE_DEFAULT, v25, &v35, 0xCu);
LABEL_13:

    goto LABEL_14;
  }

  preferredLanguages = [resourceCopy preferredLanguages];
  deviceInfo = [settingsCopy deviceInfo];
  preferredLanguages2 = [deviceInfo preferredLanguages];
  v21 = [preferredLanguages isEqualToArray:preferredLanguages2];

  if ((v21 & 1) == 0)
  {
    v22 = RCSharedLog();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    userID3 = [settingsCopy deviceInfo];
    preferredLanguages3 = [userID3 preferredLanguages];
    v35 = 138543362;
    v36 = preferredLanguages3;
    _os_log_impl(&dword_2179FC000, v22, OS_LOG_TYPE_DEFAULT, "configuration resource no longer valid because preferredLanguages changed: %{public}@", &v35, 0xCu);

    goto LABEL_13;
  }

  if ([policyCopy requestCachePolicy] != 1)
  {
    if (!endpoint && ![settingsCopy requestMode])
    {
      goto LABEL_23;
    }

    endpointConfig = [settingsCopy endpointConfig];
    if (!endpointConfig || (v31 = endpointConfig, v32 = [resourceCopy environment], objc_msgSend(settingsCopy, "endpointConfig"), v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "environment"), v33, v31, v32 == v34))
    {
LABEL_23:
      v26 = 1;
      goto LABEL_16;
    }

    v22 = RCSharedLog();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v35 = 138543362;
    v36 = resourceCopy;
    v23 = "configuration resource not valid due to mismatched environments: %{public}@";
    goto LABEL_26;
  }

  v22 = RCSharedLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v35 = 138543362;
    v36 = resourceCopy;
    v23 = "configuration resource not valid due to ignore cache policy: %{public}@";
LABEL_26:
    _os_log_impl(&dword_2179FC000, v22, OS_LOG_TYPE_DEFAULT, v23, &v35, 0xCu);
  }

LABEL_14:

LABEL_15:
  v26 = 0;
LABEL_16:

  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

- (BOOL)_isAllowedToReachEndpointWithSettings:(id)settings configurationResource:(id)resource endpointURL:(id)l
{
  v38 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  resourceCopy = resource;
  lCopy = l;
  if (lCopy)
  {
    debugOverrides = [settingsCopy debugOverrides];
    configurationSource = [debugOverrides configurationSource];

    if (configurationSource == 1)
    {
      v12 = __98__RCConfigurationManager__isAllowedToReachEndpointWithSettings_configurationResource_endpointURL___block_invoke_2();
LABEL_7:
      v13 = v12;
      goto LABEL_8;
    }

    debugOverrides2 = [settingsCopy debugOverrides];
    configurationSource2 = [debugOverrides2 configurationSource];

    if (configurationSource2 == 2)
    {
      v12 = __98__RCConfigurationManager__isAllowedToReachEndpointWithSettings_configurationResource_endpointURL___block_invoke_138();
      goto LABEL_7;
    }

    if ([settingsCopy requestMode] == 2)
    {
      v18 = RCSharedLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2179FC000, v18, OS_LOG_TYPE_DEFAULT, "allowed to reach endpoint because request mode is: EndpointOnly", buf, 2u);
      }

      v13 = 1;
    }

    else
    {
      userID = [settingsCopy userID];
      v20 = [userID length];

      if (resourceCopy && v20)
      {
        userID2 = [settingsCopy userID];
        userSegmentationConfiguration = [resourceCopy userSegmentationConfiguration];
        modThreshold = [userSegmentationConfiguration modThreshold];

        userSegmentationConfiguration2 = [resourceCopy userSegmentationConfiguration];
        modMax = [userSegmentationConfiguration2 modMax];

        v26 = [userID2 hash] % modMax;
        v13 = v26 < modThreshold;
        v27 = RCSharedLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          [RCConfigurationManager _isAllowedToReachEndpointWithSettings:configurationResource:endpointURL:];
        }

        v28 = RCSharedLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109888;
          v31 = v26 < modThreshold;
          v32 = 2048;
          v33 = v26;
          v34 = 2048;
          v35 = modMax;
          v36 = 2048;
          v37 = modThreshold;
          _os_log_impl(&dword_2179FC000, v28, OS_LOG_TYPE_DEFAULT, "client allowedToReachEndpoint: %d with moddedHash: %lu modMax: %lu modThreshold: %lu", buf, 0x26u);
        }
      }

      else
      {
        v29 = settingsCopy;
        v13 = ([v29 requestMode] - 1) < 2;
      }
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_8:

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t __98__RCConfigurationManager__isAllowedToReachEndpointWithSettings_configurationResource_endpointURL___block_invoke_2()
{
  v0 = RCSharedLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_2179FC000, v0, OS_LOG_TYPE_DEFAULT, "configuration source override enabled: Endpoint", v2, 2u);
  }

  return 1;
}

uint64_t __98__RCConfigurationManager__isAllowedToReachEndpointWithSettings_configurationResource_endpointURL___block_invoke_138()
{
  v0 = RCSharedLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_2179FC000, v0, OS_LOG_TYPE_DEFAULT, "configuration source override enabled: CloudKit", v2, 2u);
  }

  return 0;
}

- (void)_fetchMultiConfigurationFromEndpointURL:(id)l settings:(id)settings networkActivityBlock:(id)block changeTagsByRequestKey:(id)key completion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  lCopy = l;
  settingsCopy = settings;
  blockCopy = block;
  keyCopy = key;
  completionCopy = completion;
  v17 = RCSharedLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v33 = settingsCopy;
    _os_log_impl(&dword_2179FC000, v17, OS_LOG_TYPE_DEFAULT, "enqueuing configuration fetch from endpoint with settings: %{public}@", buf, 0xCu);
  }

  configRequestSerialQueue = [(RCConfigurationManager *)self configRequestSerialQueue];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __130__RCConfigurationManager__fetchMultiConfigurationFromEndpointURL_settings_networkActivityBlock_changeTagsByRequestKey_completion___block_invoke;
  v25[3] = &unk_27822F778;
  v26 = settingsCopy;
  v27 = keyCopy;
  v28 = lCopy;
  selfCopy = self;
  v30 = blockCopy;
  v31 = completionCopy;
  v19 = completionCopy;
  v20 = blockCopy;
  v21 = lCopy;
  v22 = keyCopy;
  v23 = settingsCopy;
  [configRequestSerialQueue enqueueBlock:v25];

  v24 = *MEMORY[0x277D85DE8];
}

void __130__RCConfigurationManager__fetchMultiConfigurationFromEndpointURL_settings_networkActivityBlock_changeTagsByRequestKey_completion___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = RCSharedLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543362;
    v24 = v5;
    _os_log_impl(&dword_2179FC000, v4, OS_LOG_TYPE_DEFAULT, "fetching configuration from endpoint with settings: %{public}@", buf, 0xCu);
  }

  v6 = objc_alloc_init(RCEndpointOperation);
  [(RCOperation *)v6 setQualityOfService:25];
  [(RCOperation *)v6 setRelativePriority:1];
  [(RCEndpointOperation *)v6 setConfigurationSettings:*(a1 + 32)];
  [(RCEndpointOperation *)v6 setChangeTagsByRequestKey:*(a1 + 40)];
  [(RCEndpointOperation *)v6 setEndpointURL:*(a1 + 48)];
  v7 = *(a1 + 64);
  if (v7)
  {
    v8 = (*(v7 + 16))();
    [(RCEndpointOperation *)v6 setNetworkActivity:v8];
  }

  objc_initWeak(buf, v6);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __130__RCConfigurationManager__fetchMultiConfigurationFromEndpointURL_settings_networkActivityBlock_changeTagsByRequestKey_completion___block_invoke_143;
  v21[3] = &unk_27822F700;
  v21[4] = *(a1 + 56);
  v22 = *(a1 + 32);
  [(RCEndpointOperation *)v6 setNetworkEventHandler:v21];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __130__RCConfigurationManager__fetchMultiConfigurationFromEndpointURL_settings_networkActivityBlock_changeTagsByRequestKey_completion___block_invoke_2;
  v16[3] = &unk_27822F750;
  objc_copyWeak(&v20, buf);
  v18 = *(a1 + 72);
  v9 = v3;
  v10 = *(a1 + 56);
  v19 = v9;
  v16[4] = v10;
  v17 = *(a1 + 32);
  [(RCEndpointOperation *)v6 setConfigurationCompletionHandler:v16];
  v11 = [*(a1 + 56) runningOperationsLock];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __130__RCConfigurationManager__fetchMultiConfigurationFromEndpointURL_settings_networkActivityBlock_changeTagsByRequestKey_completion___block_invoke_6;
  v14[3] = &unk_27822F130;
  v14[4] = *(a1 + 56);
  v12 = v6;
  v15 = v12;
  [v11 performWithLockSync:v14];

  [(RCOperation *)v12 start];
  objc_destroyWeak(&v20);

  objc_destroyWeak(buf);
  v13 = *MEMORY[0x277D85DE8];
}

void __130__RCConfigurationManager__fetchMultiConfigurationFromEndpointURL_settings_networkActivityBlock_changeTagsByRequestKey_completion___block_invoke_143(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) networkEventHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) networkEventHandler];
    (v4)[2](v4, v5, *(a1 + 40), 0);
  }
}

void __130__RCConfigurationManager__fetchMultiConfigurationFromEndpointURL_settings_networkActivityBlock_changeTagsByRequestKey_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (v6)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __130__RCConfigurationManager__fetchMultiConfigurationFromEndpointURL_settings_networkActivityBlock_changeTagsByRequestKey_completion___block_invoke_3;
    v24[3] = &unk_27822F728;
    v28 = *(a1 + 48);
    v25 = v6;
    v29 = *(a1 + 56);
    v8 = WeakRetained;
    v9 = *(a1 + 32);
    v26 = v8;
    v27 = v9;
    __130__RCConfigurationManager__fetchMultiConfigurationFromEndpointURL_settings_networkActivityBlock_changeTagsByRequestKey_completion___block_invoke_3(v24);

    v10 = v28;
  }

  else
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v22 = 0;
    v23 = 0;
    v20 = 0;
    v21 = 0;
    [v11 _processConfigurationCompletionWithResources:v5 configurationSettings:v12 processedConfigurationDataByRequestKey:&v23 processedTreatmentIDs:&v22 processedSegmentSetIDs:&v21 error:&v20];
    v13 = v23;
    v14 = v22;
    v15 = v21;
    v10 = v20;
    v16 = *(a1 + 48);
    if (v16)
    {
      (*(v16 + 16))(v16, v13, v14, v15, v10);
    }

    (*(*(a1 + 56) + 16))();
    if (WeakRetained)
    {
      v17 = [*(a1 + 32) runningOperationsLock];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __130__RCConfigurationManager__fetchMultiConfigurationFromEndpointURL_settings_networkActivityBlock_changeTagsByRequestKey_completion___block_invoke_5;
      v18[3] = &unk_27822F130;
      v18[4] = *(a1 + 32);
      v19 = WeakRetained;
      [v17 performWithLockSync:v18];
    }
  }
}

void __130__RCConfigurationManager__fetchMultiConfigurationFromEndpointURL_settings_networkActivityBlock_changeTagsByRequestKey_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(v2 + 16))(v2, 0, 0, 0, *(a1 + 32));
  }

  (*(*(a1 + 64) + 16))();
  if (*(a1 + 40))
  {
    v3 = [*(a1 + 48) runningOperationsLock];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __130__RCConfigurationManager__fetchMultiConfigurationFromEndpointURL_settings_networkActivityBlock_changeTagsByRequestKey_completion___block_invoke_4;
    v6[3] = &unk_27822F130;
    v5 = *(a1 + 40);
    v4 = v5.i64[0];
    v7 = vextq_s8(v5, v5, 8uLL);
    [v3 performWithLockSync:v6];
  }
}

void __130__RCConfigurationManager__fetchMultiConfigurationFromEndpointURL_settings_networkActivityBlock_changeTagsByRequestKey_completion___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) runningOperations];
  [v2 removeObject:*(a1 + 40)];
}

void __130__RCConfigurationManager__fetchMultiConfigurationFromEndpointURL_settings_networkActivityBlock_changeTagsByRequestKey_completion___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) runningOperations];
  [v2 removeObject:*(a1 + 40)];
}

void __130__RCConfigurationManager__fetchMultiConfigurationFromEndpointURL_settings_networkActivityBlock_changeTagsByRequestKey_completion___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) runningOperations];
  [v2 addObject:*(a1 + 40)];
}

- (id)_endpointURLForEnvironment:(unint64_t)environment requestKey:(id)key
{
  keyCopy = key;
  if (([keyCopy isEqualToString:@"appConfigRequest"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"magazinesConfigRequest") & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", @"audioConfigRequest") || objc_msgSend(keyCopy, "isEqualToString:", @"widgetConfigRequest"))
  {
    goto LABEL_5;
  }

  if ([keyCopy isEqualToString:@"todayConfigRequest"])
  {
    if (environment >= 5)
    {
      goto LABEL_22;
    }

    v8 = off_27822F810;
LABEL_18:
    v6 = &v8[environment];
    goto LABEL_7;
  }

  if ([keyCopy isEqualToString:@"stocksConfigRequest"])
  {
    if (environment >= 5)
    {
      goto LABEL_22;
    }

    v8 = off_27822F838;
    goto LABEL_18;
  }

  if (([keyCopy isEqualToString:@"weatherConfigRequest"] & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", @"weather2ConfigRequest"))
  {
    if (environment >= 5)
    {
      goto LABEL_22;
    }

    v8 = off_27822F860;
    goto LABEL_18;
  }

  if ([keyCopy isEqualToString:@"booksConfigRequest"])
  {
    if (environment >= 5)
    {
      goto LABEL_22;
    }

    v8 = off_27822F888;
    goto LABEL_18;
  }

  v11 = RCSharedLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationManager _endpointURLForEnvironment:requestKey:];
  }

LABEL_5:
  if (environment - 1 < 4)
  {
    v6 = &off_27822F8B0[environment - 1];
LABEL_7:
    v7 = *v6;
    goto LABEL_23;
  }

LABEL_22:
  v7 = @"https://news-edge.apple.com/v1/configs";
LABEL_23:
  v9 = [MEMORY[0x277CBEBC0] URLWithString:v7];

  return v9;
}

- (id)_endpointURLForEndpointConfig:(id)config overrideEnvironment:(unint64_t)environment overrideEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  configCopy = config;
  v8 = configCopy;
  if (!configCopy)
  {
    v12 = RCSharedLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_2179FC000, v12, OS_LOG_TYPE_DEFAULT, "EndpointConfig not available, falling back to the config to look for the endpointURL", v15, 2u);
    }

    goto LABEL_23;
  }

  environment = [configCopy environment];
  if (enabledCopy)
  {
    environmentCopy = environment;
  }

  else
  {
    environmentCopy = environment;
  }

  if (environmentCopy <= 1)
  {
    if (environmentCopy)
    {
      if (environmentCopy != 1)
      {
        goto LABEL_21;
      }

      stagingURL = [v8 stagingURL];
    }

    else
    {
      stagingURL = [v8 productionURL];
    }
  }

  else
  {
    switch(environmentCopy)
    {
      case 2:
        stagingURL = [v8 qaURL];
        break;
      case 3:
        stagingURL = [v8 develURL];
        break;
      case 4:
        stagingURL = [v8 testURL];
        break;
      default:
        goto LABEL_21;
    }
  }

  v13 = stagingURL;
  if (!stagingURL)
  {
LABEL_21:
    v12 = RCSharedLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [RCConfigurationManager _endpointURLForEndpointConfig:v8 overrideEnvironment:? overrideEnabled:?];
    }

LABEL_23:
    v13 = 0;
    goto LABEL_24;
  }

  v12 = RCSharedLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [RCConfigurationManager _endpointURLForEndpointConfig:v13 overrideEnvironment:v8 overrideEnabled:v12];
  }

LABEL_24:

  return v13;
}

- (void)_fetchConfigurationFromFallbackURLWithSettings:(id)settings completion:(id)completion
{
  settingsCopy = settings;
  completionCopy = completion;
  configRequestSerialQueue = [(RCConfigurationManager *)self configRequestSerialQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __84__RCConfigurationManager__fetchConfigurationFromFallbackURLWithSettings_completion___block_invoke;
  v11[3] = &unk_27822F7F0;
  v12 = settingsCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = settingsCopy;
  [configRequestSerialQueue enqueueBlock:v11];
}

void __84__RCConfigurationManager__fetchConfigurationFromFallbackURLWithSettings_completion___block_invoke(id *a1, void *a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = RCSharedLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    *buf = 138543362;
    v52 = v5;
    _os_log_impl(&dword_2179FC000, v4, OS_LOG_TYPE_DEFAULT, "fetching configuration from fallback with settings: %{public}@", buf, 0xCu);
  }

  v6 = [a1[4] requestInfos];
  v7 = [v6 rc_firstObjectPassingTest:&__block_literal_global_148];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v8 = [a1[4] requestInfos];
  v9 = [v8 countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v9)
  {
    v10 = *v47;
    do
    {
      v11 = 0;
      do
      {
        if (*v47 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v46 + 1) + 8 * v11);
        if (v12 != v7)
        {
          v13 = a1[5];
          v14 = [v12 requestKey];
          [v13 _removeConfigurationResourceForRequestKey:v14];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v9);
  }

  if (v7)
  {
    v15 = objc_alloc_init(RCFallbackOperation);
    [(RCOperation *)v15 setQualityOfService:25];
    [(RCOperation *)v15 setRelativePriority:1];
    v16 = [v7 fallbackURL];
    [(RCFallbackOperation *)v15 setFallbackURL:v16];

    v17 = [v7 requestCacheKey];
    [(RCFallbackOperation *)v15 setRequestKey:v17];

    v18 = [a1[4] debugOverrides];
    -[RCFallbackOperation setEnableExtraLogs:](v15, "setEnableExtraLogs:", [v18 enableExtraLogs]);

    v19 = [a1[4] debugOverrides];
    -[RCFallbackOperation setEnvironment:](v15, "setEnvironment:", [v19 debugEnvironment]);

    v20 = [a1[5] configResourceByRequestKey];
    v21 = [v7 requestCacheKey];
    v22 = [v20 objectForKeyedSubscript:v21];
    [(RCFallbackOperation *)v15 setCachedConfigurationResource:v22];

    [a1[4] fallbackTimeoutDuration];
    [(RCFallbackOperation *)v15 setFallbackTimeoutDuration:?];
    v23 = [a1[4] userID];
    [(RCFallbackOperation *)v15 setUserID:v23];

    v24 = [a1[4] storefrontID];
    [(RCFallbackOperation *)v15 setStorefrontID:v24];

    v25 = [a1[4] deviceInfo];
    v26 = [v25 preferredLanguages];
    [(RCFallbackOperation *)v15 setPreferredLanguages:v26];

    objc_initWeak(buf, v15);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __84__RCConfigurationManager__fetchConfigurationFromFallbackURLWithSettings_completion___block_invoke_150;
    v41[3] = &unk_27822F700;
    v33 = *(a1 + 2);
    v27 = v33.i64[0];
    v42 = vextq_s8(v33, v33, 8uLL);
    [(RCFallbackOperation *)v15 setNetworkEventHandler:v41];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __84__RCConfigurationManager__fetchConfigurationFromFallbackURLWithSettings_completion___block_invoke_2_151;
    v36[3] = &unk_27822F7C8;
    objc_copyWeak(&v40, buf);
    v38 = a1[6];
    v28 = v3;
    v29 = a1[5];
    v39 = v28;
    v36[4] = v29;
    v37 = v7;
    [(RCFallbackOperation *)v15 setConfigurationCompletionHandler:v36];
    v30 = [a1[5] runningOperationsLock];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __84__RCConfigurationManager__fetchConfigurationFromFallbackURLWithSettings_completion___block_invoke_2_155;
    v34[3] = &unk_27822F130;
    v34[4] = a1[5];
    v31 = v15;
    v35 = v31;
    [v30 performWithLockSync:v34];

    [(RCOperation *)v31 start];
    objc_destroyWeak(&v40);

    objc_destroyWeak(buf);
  }

  else
  {
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __84__RCConfigurationManager__fetchConfigurationFromFallbackURLWithSettings_completion___block_invoke_2;
    v43[3] = &unk_27822F7A0;
    v44 = a1[6];
    v45 = v3;
    __84__RCConfigurationManager__fetchConfigurationFromFallbackURLWithSettings_completion___block_invoke_2(v43);

    v31 = v44;
  }

  v32 = *MEMORY[0x277D85DE8];
}

BOOL __84__RCConfigurationManager__fetchConfigurationFromFallbackURLWithSettings_completion___block_invoke_146(uint64_t a1, void *a2)
{
  v2 = [a2 fallbackURL];
  v3 = v2 != 0;

  return v3;
}

uint64_t __84__RCConfigurationManager__fetchConfigurationFromFallbackURLWithSettings_completion___block_invoke_2(uint64_t a1)
{
  v2 = RCSharedLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2179FC000, v2, OS_LOG_TYPE_DEFAULT, "fallback operation failed, missing fallbackURL", v5, 2u);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, 0, 0);
  }

  return (*(*(a1 + 40) + 16))();
}

void __84__RCConfigurationManager__fetchConfigurationFromFallbackURLWithSettings_completion___block_invoke_150(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) networkEventHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) networkEventHandler];
    (v4)[2](v4, v5, *(a1 + 40), 1);
  }
}

void __84__RCConfigurationManager__fetchConfigurationFromFallbackURLWithSettings_completion___block_invoke_2_151(id *a1, void *a2, void *a3)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  if (!v5 || v6)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __84__RCConfigurationManager__fetchConfigurationFromFallbackURLWithSettings_completion___block_invoke_3;
    v22[3] = &unk_27822F728;
    v26 = a1[6];
    v13 = v6;
    v23 = v13;
    v27 = a1[7];
    v14 = WeakRetained;
    v15 = a1[4];
    v24 = v14;
    v25 = v15;
    __84__RCConfigurationManager__fetchConfigurationFromFallbackURLWithSettings_completion___block_invoke_3(v22);

    v12 = v26;
  }

  else
  {
    v8 = [v5 configurationData];
    v9 = v8;
    if (v8 && [v8 length])
    {
      [a1[4] _saveConfigurationResource:v5];
      v10 = [a1[5] requestKey];
      v28 = v10;
      v11 = [v5 configurationData];
      v29[0] = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];

      v13 = 0;
    }

    else
    {
      v16 = RCSharedLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __84__RCConfigurationManager__fetchConfigurationFromFallbackURLWithSettings_completion___block_invoke_2_151_cold_1();
      }

      v13 = [MEMORY[0x277CCA9B8] rc_notAvailableError];
      v12 = 0;
    }

    v17 = a1[6];
    if (v17)
    {
      v17[2](v17, v12, v13);
    }

    (*(a1[7] + 2))();
    if (WeakRetained)
    {
      v18 = [a1[4] runningOperationsLock];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __84__RCConfigurationManager__fetchConfigurationFromFallbackURLWithSettings_completion___block_invoke_153;
      v20[3] = &unk_27822F130;
      v20[4] = a1[4];
      v21 = WeakRetained;
      [v18 performWithLockSync:v20];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __84__RCConfigurationManager__fetchConfigurationFromFallbackURLWithSettings_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(v2 + 16))(v2, 0, *(a1 + 32));
  }

  (*(*(a1 + 64) + 16))();
  if (*(a1 + 40))
  {
    v3 = [*(a1 + 48) runningOperationsLock];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __84__RCConfigurationManager__fetchConfigurationFromFallbackURLWithSettings_completion___block_invoke_4;
    v6[3] = &unk_27822F130;
    v5 = *(a1 + 40);
    v4 = v5.i64[0];
    v7 = vextq_s8(v5, v5, 8uLL);
    [v3 performWithLockSync:v6];
  }
}

void __84__RCConfigurationManager__fetchConfigurationFromFallbackURLWithSettings_completion___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) runningOperations];
  [v2 removeObject:*(a1 + 40)];
}

void __84__RCConfigurationManager__fetchConfigurationFromFallbackURLWithSettings_completion___block_invoke_153(uint64_t a1)
{
  v2 = [*(a1 + 32) runningOperations];
  [v2 removeObject:*(a1 + 40)];
}

void __84__RCConfigurationManager__fetchConfigurationFromFallbackURLWithSettings_completion___block_invoke_2_155(uint64_t a1)
{
  v2 = [*(a1 + 32) runningOperations];
  [v2 addObject:*(a1 + 40)];
}

- (void)_saveConfigurationResource:(id)resource
{
  resourceCopy = resource;
  configResourceByRequestKey = [(RCConfigurationManager *)self configResourceByRequestKey];
  requestKey = [resourceCopy requestKey];
  [configResourceByRequestKey setObject:resourceCopy forKeyedSubscript:requestKey];

  v6 = [(RCConfigurationManager *)self _encodeConfigurationResource:resourceCopy];
  if (v6)
  {
    localStore = [(RCConfigurationManager *)self localStore];
    requestKey2 = [resourceCopy requestKey];
    [localStore setObject:v6 forKey:requestKey2];
  }
}

- (void)_removeConfigurationResourceForRequestKey:(id)key
{
  keyCopy = key;
  configResourceByRequestKey = [(RCConfigurationManager *)self configResourceByRequestKey];
  [configResourceByRequestKey removeObjectForKey:keyCopy];

  localStore = [(RCConfigurationManager *)self localStore];
  [localStore removeObjectForKey:keyCopy];
}

- (id)_decodeConfigurationResource:(id)resource
{
  v3 = MEMORY[0x277CCAAC8];
  resourceCopy = resource;
  v5 = [[v3 alloc] initForReadingFromData:resourceCopy error:0];

  v6 = [v5 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308]];

  return v6;
}

- (void)fetchMultiConfigurationWithSettings:(void *)a1 networkActivityBlock:completionQueue:completion:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 rc_description];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1(&dword_2179FC000, v2, v3, "cache-only policy: cached configuration not available or invalid for requestKeys: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_2179FC000, v0, v1, "fallback operation failed with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_2_118_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_2179FC000, v0, v1, "endpoint operation failed with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)reestablishBackgroundSessionWithSettings:sessionCompletionHandler:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"invalid nil value for '%s'", "configurationSettings.backgroundFetchConfiguration"];
  *buf = 136315906;
  v3 = "[RCConfigurationManager reestablishBackgroundSessionWithSettings:sessionCompletionHandler:]";
  v4 = 2080;
  v5 = "/Library/Caches/com.apple.xbs/Sources/RemoteConfiguration/RemoteConfiguration/RCConfigurationManager.m";
  v6 = 1024;
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_2179FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure: %s %s:%d %{public}@", buf, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

- (void)cancelAllTasksOnBackgroundSessionWithSettings:completion:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"invalid nil value for '%s'", "configurationSettings.backgroundFetchConfiguration"];
  *buf = 136315906;
  v3 = "[RCConfigurationManager cancelAllTasksOnBackgroundSessionWithSettings:completion:]";
  v4 = 2080;
  v5 = "/Library/Caches/com.apple.xbs/Sources/RemoteConfiguration/RemoteConfiguration/RCConfigurationManager.m";
  v6 = 1024;
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_2179FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure: %s %s:%d %{public}@", buf, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

- (void)_isAllowedToReachEndpointWithSettings:configurationResource:endpointURL:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(&dword_2179FC000, v0, OS_LOG_TYPE_DEBUG, "checking if client is allowed to reach endpoint with userID: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_endpointURLForEnvironment:requestKey:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_2179FC000, v0, v1, "No endpoint URL available for requestKey: %{public}@ falling back to news-edge", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_endpointURLForEndpointConfig:(uint64_t)a1 overrideEnvironment:(void *)a2 overrideEnabled:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a2 environmentDescription];
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v5;
  _os_log_debug_impl(&dword_2179FC000, a3, OS_LOG_TYPE_DEBUG, "Found endpoint URL: %{public}@ for environment: %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_endpointURLForEndpointConfig:(void *)a1 overrideEnvironment:overrideEnabled:.cold.2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 environmentDescription];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1(&dword_2179FC000, v2, v3, "No endpoint URL found in the endpointConfig for environment: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __84__RCConfigurationManager__fetchConfigurationFromFallbackURLWithSettings_completion___block_invoke_2_151_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_2179FC000, v0, v1, "fallback: missing data in configuration resource %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end