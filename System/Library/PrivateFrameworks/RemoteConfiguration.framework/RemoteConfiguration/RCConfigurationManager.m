@interface RCConfigurationManager
- (BOOL)_areAllConfigurationResourcesAvailable:(id)a3 requestKeys:(id)a4;
- (BOOL)_areAllConfigurationResourcesExpired:(id)a3 allowedToReachEndpoint:(BOOL)a4 configurationSettings:(id)a5 requestKeys:(id)a6;
- (BOOL)_areAllConfigurationResourcesInvalid:(id)a3 configurationSettings:(id)a4 allowedToReachEndpoint:(BOOL)a5 requestKeys:(id)a6;
- (BOOL)_isAllowedToReachEndpointWithSettings:(id)a3 configurationResource:(id)a4 endpointURL:(id)a5;
- (BOOL)_isValidConfigurationResource:(id)a3 configurationSettings:(id)a4 allowedToReachEndpoint:(BOOL)a5 cachePolicy:(id)a6;
- (RCConfigurationManager)initWithContentDirectoryURL:(id)a3;
- (id)_decodeConfigurationResource:(id)a3;
- (id)_endpointURLForEndpointConfig:(id)a3 overrideEnvironment:(unint64_t)a4 overrideEnabled:(BOOL)a5;
- (id)_endpointURLForEnvironment:(unint64_t)a3 requestKey:(id)a4;
- (void)_fetchConfigurationFromFallbackURLWithSettings:(id)a3 completion:(id)a4;
- (void)_fetchMultiConfigurationFromEndpointURL:(id)a3 settings:(id)a4 networkActivityBlock:(id)a5 changeTagsByRequestKey:(id)a6 completion:(id)a7;
- (void)_loadConfigurationResourcesFromStore;
- (void)_processConfigurationCompletionWithResources:(id)a3 configurationSettings:(id)a4 processedConfigurationDataByRequestKey:(id *)a5 processedTreatmentIDs:(id *)a6 processedSegmentSetIDs:(id *)a7 error:(id *)a8;
- (void)_removeConfigurationResourceForRequestKey:(id)a3;
- (void)_saveConfigurationResource:(id)a3;
- (void)cancelAllTasksOnBackgroundSessionWithSettings:(id)a3 completion:(id)a4;
- (void)fetchConfigurationWithSettings:(id)a3 completionQueue:(id)a4 completion:(id)a5;
- (void)fetchMultiConfigurationWithSettings:(id)a3 networkActivityBlock:(id)a4 completionQueue:(id)a5 completion:(id)a6;
- (void)fetchSingleConfigurationWithSettings:(id)a3 networkActivityBlock:(id)a4 completionQueue:(id)a5 completion:(id)a6;
- (void)reestablishBackgroundSessionWithSettings:(id)a3 sessionCompletionHandler:(id)a4;
@end

@implementation RCConfigurationManager

- (void)_loadConfigurationResourcesFromStore
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [(RCConfigurationManager *)self setConfigResourceByRequestKey:v3];

  v4 = [(RCConfigurationManager *)self localStore];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = [v4 allKeys];
  v26 = [v5 countByEnumeratingWithState:&v27 objects:v35 count:16];
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
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v27 + 1) + 8 * v8);
        v10 = *(v7 + 2704);
        v11 = objc_opt_class();
        v12 = [v4 objectForKey:v9];
        v13 = RCDynamicCast(v11, v12);

        v14 = [(RCConfigurationManager *)self _decodeConfigurationResource:v13];
        v15 = v14;
        if (v14)
        {
          v16 = [v14 configurationData];
          v17 = v16;
          if (v16 && [v16 length])
          {
            v18 = v6;
            v19 = v4;
            v20 = v5;
            v21 = [(RCConfigurationManager *)self configResourceByRequestKey];
            v22 = [v15 requestKey];
            [v21 setObject:v15 forKeyedSubscript:v22];

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

            v5 = v20;
            v4 = v19;
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
      v26 = [v5 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v26);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (RCConfigurationManager)initWithContentDirectoryURL:(id)a3
{
  v5 = a3;
  v23.receiver = self;
  v23.super_class = RCConfigurationManager;
  v6 = [(RCConfigurationManager *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentDirectoryURL, a3);
    v8 = [[RCAsyncSerialQueue alloc] initWithQualityOfService:25];
    configRequestSerialQueue = v7->_configRequestSerialQueue;
    v7->_configRequestSerialQueue = v8;

    v10 = [RCKeyValueStore alloc];
    v11 = [v5 relativePath];
    v12 = [(RCKeyValueStore *)v10 initWithName:@"remote-configuration" directory:v11 version:3 options:0];
    localStore = v7->_localStore;
    v7->_localStore = v12;

    v14 = [MEMORY[0x277CBEB18] array];
    runningOperations = v7->_runningOperations;
    v7->_runningOperations = v14;

    v16 = objc_alloc_init(RCUnfairLock);
    runningOperationsLock = v7->_runningOperationsLock;
    v7->_runningOperationsLock = v16;

    v18 = [MEMORY[0x277CBEB38] dictionary];
    backgroundURLSessionHandlers = v7->_backgroundURLSessionHandlers;
    v7->_backgroundURLSessionHandlers = v18;

    v20 = objc_alloc_init(RCUnfairLock);
    backgroundURLSessionHandlersLock = v7->_backgroundURLSessionHandlersLock;
    v7->_backgroundURLSessionHandlersLock = v20;

    [(RCConfigurationManager *)v7 _loadConfigurationResourcesFromStore];
  }

  return v7;
}

- (void)fetchSingleConfigurationWithSettings:(id)a3 networkActivityBlock:(id)a4 completionQueue:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a6;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __111__RCConfigurationManager_fetchSingleConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke;
  v14[3] = &unk_27822F480;
  v15 = v10;
  v16 = v11;
  v12 = v11;
  v13 = v10;
  [(RCConfigurationManager *)self fetchMultiConfigurationWithSettings:v13 networkActivityBlock:a4 completionQueue:a5 completion:v14];
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

- (void)fetchConfigurationWithSettings:(id)a3 completionQueue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __84__RCConfigurationManager_fetchConfigurationWithSettings_completionQueue_completion___block_invoke;
  v12[3] = &unk_27822F480;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [(RCConfigurationManager *)self fetchMultiConfigurationWithSettings:v11 completionQueue:a4 completion:v12];
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

- (void)fetchMultiConfigurationWithSettings:(id)a3 networkActivityBlock:(id)a4 completionQueue:(id)a5 completion:(id)a6
{
  v119 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v78 = a4;
  v11 = a5;
  v74 = a6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke;
  aBlock[3] = &unk_27822F518;
  aBlock[4] = self;
  v12 = _Block_copy(aBlock);
  v13 = [v10 requestInfos];
  v14 = [v13 rc_arrayByTransformingWithBlock:&__block_literal_global_91];

  v15 = [(RCConfigurationManager *)self configResourceByRequestKey];
  v16 = [v15 rc_subdictionaryForKeys:v14];

  v17 = [v16 rc_dictionaryByTransformingValuesWithKeyAndValueBlock:&__block_literal_global_94];
  v80 = v14;
  [v14 firstObject];
  v79 = v83 = v16;
  v81 = [v16 objectForKeyedSubscript:?];
  v18 = [v10 requestInfos];
  LODWORD(v14) = [v18 rc_containsObjectPassingTest:&__block_literal_global_97];

  v19 = [v10 requestInfos];
  v20 = [v19 rc_containsObjectPassingTest:&__block_literal_global_99];

  v75 = v11;
  if (v14)
  {
    v21 = [(RCConfigurationManager *)self configResourceByRequestKey];
    v22 = [v21 objectForKeyedSubscript:@"appConfigRequest"];

    v23 = [v22 userSegmentationConfiguration];
    v24 = [v23 widgetEndpointURLString];

    if (!-[__CFString length](v24, "length") || ([MEMORY[0x277CBEBC0] URLWithString:v24], (v82 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v25 = [v10 debugOverrides];
      v26 = [v25 debugEnvironment];
      v27 = RCRequestWidgetConfigurationKey;
LABEL_15:
      v39 = *v27;
      v40 = self;
LABEL_16:
      v82 = [(RCConfigurationManager *)v40 _endpointURLForEnvironment:v26 requestKey:v39];
      v30 = v83;

      goto LABEL_17;
    }

    goto LABEL_8;
  }

  if (v20)
  {
    v28 = [(RCConfigurationManager *)self configResourceByRequestKey];
    v22 = [v28 objectForKeyedSubscript:@"appConfigRequest"];

    v29 = [v22 userSegmentationConfiguration];
    v24 = [v29 todayEndpointURLString];

    if (!-[__CFString length](v24, "length") || ([MEMORY[0x277CBEBC0] URLWithString:v24], (v82 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v25 = [v10 debugOverrides];
      v26 = [v25 debugEnvironment];
      v27 = RCRequestTodayConfigurationKey;
      goto LABEL_15;
    }

LABEL_8:
    v30 = v83;
LABEL_17:

LABEL_18:
LABEL_19:
    v41 = [v30 objectForKeyedSubscript:{v79, v17}];
    v77 = [v41 treatmentIDs];

    v42 = [v30 objectForKeyedSubscript:v79];
    v76 = [v42 segmentSetIDs];

    v43 = [(RCConfigurationManager *)self _isAllowedToReachEndpointWithSettings:v10 configurationResource:v81 endpointURL:v82];
    v44 = [MEMORY[0x277CBEB98] setWithArray:v80];
    v45 = [v10 requestInfos];
    v46 = [v45 rc_containsObjectPassingTest:&__block_literal_global_104];

    if (!v43)
    {
      v47 = [v10 requestInfos];
      v48 = [v47 rc_arrayByTransformingWithBlock:&__block_literal_global_107];

      v49 = [MEMORY[0x277CBEB98] setWithArray:v48];

      v30 = v83;
      v44 = v49;
    }

    if (v46)
    {
      v50 = [(RCConfigurationManager *)self _areAllConfigurationResourcesAvailable:v30 requestKeys:v44];
      v51 = v44;
      v52 = [(RCConfigurationManager *)self _areAllConfigurationResourcesInvalid:v30 configurationSettings:v10 allowedToReachEndpoint:v43 requestKeys:v44];
      v53 = RCSharedLog();
      v54 = v53;
      if (!v50 || v52)
      {
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          [RCConfigurationManager fetchMultiConfigurationWithSettings:v80 networkActivityBlock:? completionQueue:? completion:?];
        }

        v65 = [MEMORY[0x277CCA9B8] rc_notCachedError];
        v38 = v74;
        v37 = v75;
        v17 = v73;
        v60 = v76;
        if (v75)
        {
          if (v74)
          {
            v101[0] = MEMORY[0x277D85DD0];
            v101[1] = 3221225472;
            v101[2] = __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_109;
            v101[3] = &unk_27822F350;
            v103 = v74;
            v102 = v65;
            dispatch_async(v75, v101);
          }
        }

        else if (v74)
        {
          (*(v74 + 2))(v74, 0, 0, 0, v65);
        }

        v59 = v77;
        goto LABEL_61;
      }

      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v55 = [v83 allKeys];
        v56 = [v55 rc_description];
        v57 = [v77 rc_description];
        v58 = [v76 rc_description];
        *buf = 138543874;
        v114 = v56;
        v115 = 2114;
        v116 = v57;
        v117 = 2114;
        v118 = v58;
        _os_log_impl(&dword_2179FC000, v54, OS_LOG_TYPE_DEFAULT, "cache-only policy: returning cached configuration for requestKeys: %{public}@ treatmentIDs: %{public}@ segmentSetIDs: %{public}@", buf, 0x20u);
      }

      v37 = v75;
      if (!v75)
      {
        v17 = v73;
        v38 = v74;
        v60 = v76;
        v59 = v77;
        if (v74)
        {
          (*(v74 + 2))(v74, v73, v77, v76, 0);
        }

        goto LABEL_61;
      }

      v17 = v73;
      v38 = v74;
      v60 = v76;
      v59 = v77;
      if (!v74)
      {
LABEL_61:

        goto LABEL_62;
      }

      v104[0] = MEMORY[0x277D85DD0];
      v104[1] = 3221225472;
      v104[2] = __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_108;
      v104[3] = &unk_27822F5A0;
      v108 = v74;
      v105 = v73;
      v106 = v77;
      v107 = v76;
      dispatch_async(v75, v104);

      v61 = v108;
LABEL_56:

      goto LABEL_61;
    }

    v62 = [v10 debugOverrides];
    if (([v62 ignoreCache] & 1) != 0 || !-[RCConfigurationManager _areAllConfigurationResourcesAvailable:requestKeys:](self, "_areAllConfigurationResourcesAvailable:requestKeys:", v30, v44) || -[RCConfigurationManager _areAllConfigurationResourcesInvalid:configurationSettings:allowedToReachEndpoint:requestKeys:](self, "_areAllConfigurationResourcesInvalid:configurationSettings:allowedToReachEndpoint:requestKeys:", v30, v10, v43, v44))
    {
      v51 = v44;

      v17 = v73;
    }

    else
    {
      v51 = v44;
      v69 = [(RCConfigurationManager *)self _areAllConfigurationResourcesExpired:v30 allowedToReachEndpoint:v43 configurationSettings:v10 requestKeys:v44];

      v17 = v73;
      if (!v69)
      {
        v94[0] = MEMORY[0x277D85DD0];
        v94[1] = 3221225472;
        v94[2] = __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_2_110;
        v94[3] = &unk_27822F5C8;
        v95 = v30;
        v59 = v77;
        v96 = v77;
        v60 = v76;
        v97 = v76;
        v37 = v75;
        v98 = v75;
        v38 = v74;
        v100 = v74;
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
      v90 = v10;
      v37 = v75;
      v91 = v75;
      v38 = v74;
      v93 = v74;
      __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_112(v89);

LABEL_60:
      v60 = v76;
      v59 = v77;
      goto LABEL_61;
    }

    v64 = [v10 debugOverrides];
    v38 = v74;
    v37 = v75;
    if ([v64 ignoreCache])
    {
    }

    else
    {
      v66 = [(RCConfigurationManager *)self _areAllConfigurationResourcesInvalid:v83 configurationSettings:v10 allowedToReachEndpoint:1 requestKeys:v51];

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
    v87 = v74;
    v86 = v10;
    v88 = v12;
    [(RCConfigurationManager *)self _fetchMultiConfigurationFromEndpointURL:v82 settings:v86 networkActivityBlock:v78 changeTagsByRequestKey:v67 completion:v84];

    goto LABEL_60;
  }

  v31 = [v10 endpointConfig];

  if (!v31)
  {
    v68 = [v81 userSegmentationConfiguration];
    v22 = [v68 endpointURLString];

    if ([v22 length])
    {
      v82 = [MEMORY[0x277CBEBC0] URLWithString:v22];
      if (v82)
      {
        v30 = v83;
        goto LABEL_18;
      }
    }

    v70 = [v10 requestInfos];
    v71 = [v70 firstObject];
    v24 = [v71 requestKey];

    v25 = [v10 debugOverrides];
    v26 = [v25 debugEnvironment];
    v40 = self;
    v39 = v24;
    goto LABEL_16;
  }

  v32 = [v10 endpointConfig];
  v33 = [v10 debugOverrides];
  v34 = [v33 debugEnvironment];
  v35 = [v10 debugOverrides];
  v36 = [(RCConfigurationManager *)self _endpointURLForEndpointConfig:v32 overrideEnvironment:v34 overrideEnabled:v35 != 0];

  v30 = v83;
  v82 = v36;
  if (v36)
  {
    goto LABEL_19;
  }

  v82 = [MEMORY[0x277CCA9B8] rc_endpointURLNotAvailableError];
  v37 = v75;
  if (v75)
  {
    v38 = v74;
    if (v74)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_6;
      block[3] = &unk_27822F350;
      v111 = v74;
      v82 = v82;
      v110 = v82;
      dispatch_async(v75, block);
    }
  }

  else
  {
    v38 = v74;
    if (v74)
    {
      (*(v74 + 2))(v74, 0, 0, 0, v82);
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

- (void)reestablishBackgroundSessionWithSettings:(id)a3 sessionCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 backgroundFetchConfiguration];

  if (!v8 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationManager reestablishBackgroundSessionWithSettings:sessionCompletionHandler:];
  }

  v9 = [v6 backgroundFetchConfiguration];
  v10 = [v9 sessionIdentifier];

  v11 = [(RCConfigurationManager *)self backgroundURLSessionHandlersLock];
  [v11 lock];

  v12 = [(RCConfigurationManager *)self backgroundURLSessionHandlers];
  v13 = [v12 objectForKeyedSubscript:v10];

  if (!v13)
  {
    v13 = objc_alloc_init(RCBackgroundURLSessionHandler);
    v14 = [(RCConfigurationManager *)self backgroundURLSessionHandlers];
    [v14 setObject:v13 forKeyedSubscript:v10];
  }

  v15 = [(RCConfigurationManager *)self backgroundURLSessionHandlersLock];
  [v15 unlock];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __92__RCConfigurationManager_reestablishBackgroundSessionWithSettings_sessionCompletionHandler___block_invoke;
  v19[3] = &unk_27822F688;
  v19[4] = self;
  v20 = v6;
  v21 = v10;
  v22 = v7;
  v16 = v10;
  v17 = v7;
  v18 = v6;
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

- (void)cancelAllTasksOnBackgroundSessionWithSettings:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 backgroundFetchConfiguration];

  if (!v7 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationManager cancelAllTasksOnBackgroundSessionWithSettings:completion:];
  }

  v8 = [v5 backgroundFetchConfiguration];
  [RCURLSession cancelAllTasksOnBackgroundSessionWithFetchConfig:v8 completion:v6];
}

- (void)_processConfigurationCompletionWithResources:(id)a3 configurationSettings:(id)a4 processedConfigurationDataByRequestKey:(id *)a5 processedTreatmentIDs:(id *)a6 processedSegmentSetIDs:(id *)a7 error:(id *)a8
{
  v79 = *MEMORY[0x277D85DE8];
  v61 = a3;
  v11 = a4;
  v12 = [MEMORY[0x277CBEB38] dictionary];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v50 = v11;
  obj = [v11 requestInfos];
  v62 = [obj countByEnumeratingWithState:&v66 objects:v78 count:16];
  v14 = 0;
  if (!v62)
  {
    v65 = 0;
    goto LABEL_33;
  }

  v65 = 0;
  v58 = *v67;
  *&v13 = 138544130;
  v49 = v13;
  v15 = a5;
  v54 = a6;
  v55 = a5;
  v59 = v12;
  do
  {
    v16 = 0;
    do
    {
      v64 = v14;
      if (*v67 != v58)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v66 + 1) + 8 * v16);
      v18 = [v17 requestCacheKey];
      v19 = [v61 objectForKeyedSubscript:v18];

      v20 = [(RCConfigurationManager *)self configResourceByRequestKey];
      v21 = [v17 requestCacheKey];
      v22 = [v20 objectForKeyedSubscript:v21];

      if (!v22)
      {
        v23 = RCSharedLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [v17 requestKey];
          *buf = 138543362;
          v71 = v24;
          _os_log_impl(&dword_2179FC000, v23, OS_LOG_TYPE_DEFAULT, "cached configuration not available for requestKey: %{public}@, skip updating last fetch date, treatmentIDs and segmentSetIDs", buf, 0xCu);
LABEL_14:
        }

        goto LABEL_16;
      }

      v23 = [v22 contentHash];
      v24 = [v19 contentHash];
      if (([v23 isEqualToString:v24]& 1) == 0)
      {
        goto LABEL_14;
      }

      v25 = [v22 userID];
      v26 = [v19 userID];
      if (![v25 isEqualToString:v26])
      {

        a6 = v54;
        goto LABEL_16;
      }

      v52 = v17;
      v27 = [v22 storefrontID];
      v28 = [v19 storefrontID];
      if (![v27 isEqualToString:v28])
      {

        a6 = v54;
        v12 = v59;
        v17 = v52;
        goto LABEL_17;
      }

      v29 = [v50 debugOverrides];
      v51 = [v29 ignoreCache];

      v17 = v52;
      if ((v51 & 1) == 0)
      {
        v38 = RCSharedLog();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = [v52 requestKey];
          v53 = [v19 treatmentIDs];
          v40 = [v53 rc_description];
          v41 = [v19 segmentSetIDs];
          v42 = [v41 rc_description];
          v43 = [v22 contentHash];
          *buf = v49;
          v71 = v39;
          v72 = 2114;
          v73 = v40;
          v74 = 2114;
          v75 = v42;
          v76 = 2114;
          v77 = v43;
          _os_log_impl(&dword_2179FC000, v38, OS_LOG_TYPE_DEFAULT, "matched contentHash, returning cached configuration for requestKey: %{public}@ treatmentIDs: %{public}@ segmentSetIDs: %{public}@ contentHash: %{public}@", buf, 0x2Au);
        }

        v44 = [MEMORY[0x277CBEAA8] date];
        [v22 setLastFetchedDate:v44];

        v45 = [v19 treatmentIDs];
        [v22 setTreatmentIDs:v45];

        v46 = [v19 segmentSetIDs];
        [v22 setSegmentSetIDs:v46];

        v23 = v19;
        v19 = v22;
        a6 = v54;
        v15 = v55;
LABEL_16:
        v12 = v59;
LABEL_17:

        goto LABEL_18;
      }

      a6 = v54;
      v15 = v55;
      v12 = v59;
LABEL_18:
      v30 = [v19 configurationData];
      v31 = v30;
      if (v30 && [v30 length])
      {
        [(RCConfigurationManager *)self _saveConfigurationResource:v19];
        v32 = [v17 requestCacheKey];
        [v12 setObject:v31 forKeyedSubscript:v32];

        v33 = [v19 treatmentIDs];

        v14 = [v19 segmentSetIDs];

        v34 = v55;
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

        *a8 = [MEMORY[0x277CCA9B8] rc_notAvailableError];
        v14 = v64;
        v33 = v65;
        v34 = v15;
      }

      v15 = v34;
      *v34 = [v12 copy];
      v36 = v33;
      v65 = v33;
      *a6 = v33;
      v37 = v14;
      *a7 = v14;

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

- (BOOL)_areAllConfigurationResourcesAvailable:(id)a3 requestKeys:(id)a4
{
  v5 = MEMORY[0x277CBEB98];
  v6 = a4;
  v7 = [a3 allKeys];
  v8 = [v5 setWithArray:v7];

  LOBYTE(v7) = [v8 isEqualToSet:v6];
  return v7;
}

- (BOOL)_areAllConfigurationResourcesInvalid:(id)a3 configurationSettings:(id)a4 allowedToReachEndpoint:(BOOL)a5 requestKeys:(id)a6
{
  v10 = a4;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __120__RCConfigurationManager__areAllConfigurationResourcesInvalid_configurationSettings_allowedToReachEndpoint_requestKeys___block_invoke;
  v15[3] = &unk_27822F6B0;
  v16 = v10;
  v17 = self;
  v18 = a5;
  v11 = v10;
  v12 = a6;
  v13 = [a3 keysOfEntriesPassingTest:v15];
  LOBYTE(self) = [v13 isEqualToSet:v12];

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

- (BOOL)_areAllConfigurationResourcesExpired:(id)a3 allowedToReachEndpoint:(BOOL)a4 configurationSettings:(id)a5 requestKeys:(id)a6
{
  v10 = a5;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __120__RCConfigurationManager__areAllConfigurationResourcesExpired_allowedToReachEndpoint_configurationSettings_requestKeys___block_invoke;
  v15[3] = &unk_27822F6B0;
  v17 = a4;
  v15[4] = self;
  v16 = v10;
  v11 = v10;
  v12 = a6;
  v13 = [a3 keysOfEntriesPassingTest:v15];
  LOBYTE(self) = [v13 isEqualToSet:v12];

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

- (BOOL)_isValidConfigurationResource:(id)a3 configurationSettings:(id)a4 allowedToReachEndpoint:(BOOL)a5 cachePolicy:(id)a6
{
  v37 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if (!v9)
  {
    goto LABEL_15;
  }

  v12 = MEMORY[0x277CCACA8];
  v13 = [v9 userID];
  v14 = [v10 userID];
  LOBYTE(v12) = [v12 rc_string:v13 isEqualToString:v14];

  if ((v12 & 1) == 0)
  {
    v22 = RCSharedLog();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v24 = [v10 userID];
    v35 = 138543362;
    v36 = v24;
    v25 = "configuration resource no longer valid because the userID changed: %{public}@";
    goto LABEL_12;
  }

  v15 = MEMORY[0x277CCACA8];
  v16 = [v9 storefrontID];
  v17 = [v10 storefrontID];
  LOBYTE(v15) = [v15 rc_string:v16 isEqualToString:v17];

  if ((v15 & 1) == 0)
  {
    v22 = RCSharedLog();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v24 = [v10 storefrontID];
    v35 = 138543362;
    v36 = v24;
    v25 = "configuration resource no longer valid because the storefrontID changed: %{public}@";
LABEL_12:
    _os_log_impl(&dword_2179FC000, v22, OS_LOG_TYPE_DEFAULT, v25, &v35, 0xCu);
LABEL_13:

    goto LABEL_14;
  }

  v18 = [v9 preferredLanguages];
  v19 = [v10 deviceInfo];
  v20 = [v19 preferredLanguages];
  v21 = [v18 isEqualToArray:v20];

  if ((v21 & 1) == 0)
  {
    v22 = RCSharedLog();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v24 = [v10 deviceInfo];
    v29 = [v24 preferredLanguages];
    v35 = 138543362;
    v36 = v29;
    _os_log_impl(&dword_2179FC000, v22, OS_LOG_TYPE_DEFAULT, "configuration resource no longer valid because preferredLanguages changed: %{public}@", &v35, 0xCu);

    goto LABEL_13;
  }

  if ([v11 requestCachePolicy] != 1)
  {
    if (!a5 && ![v10 requestMode])
    {
      goto LABEL_23;
    }

    v30 = [v10 endpointConfig];
    if (!v30 || (v31 = v30, v32 = [v9 environment], objc_msgSend(v10, "endpointConfig"), v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "environment"), v33, v31, v32 == v34))
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
    v36 = v9;
    v23 = "configuration resource not valid due to mismatched environments: %{public}@";
    goto LABEL_26;
  }

  v22 = RCSharedLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v35 = 138543362;
    v36 = v9;
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

- (BOOL)_isAllowedToReachEndpointWithSettings:(id)a3 configurationResource:(id)a4 endpointURL:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v10 = [v7 debugOverrides];
    v11 = [v10 configurationSource];

    if (v11 == 1)
    {
      v12 = __98__RCConfigurationManager__isAllowedToReachEndpointWithSettings_configurationResource_endpointURL___block_invoke_2();
LABEL_7:
      v13 = v12;
      goto LABEL_8;
    }

    v14 = [v7 debugOverrides];
    v15 = [v14 configurationSource];

    if (v15 == 2)
    {
      v12 = __98__RCConfigurationManager__isAllowedToReachEndpointWithSettings_configurationResource_endpointURL___block_invoke_138();
      goto LABEL_7;
    }

    if ([v7 requestMode] == 2)
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
      v19 = [v7 userID];
      v20 = [v19 length];

      if (v8 && v20)
      {
        v21 = [v7 userID];
        v22 = [v8 userSegmentationConfiguration];
        v23 = [v22 modThreshold];

        v24 = [v8 userSegmentationConfiguration];
        v25 = [v24 modMax];

        v26 = [v21 hash] % v25;
        v13 = v26 < v23;
        v27 = RCSharedLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          [RCConfigurationManager _isAllowedToReachEndpointWithSettings:configurationResource:endpointURL:];
        }

        v28 = RCSharedLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109888;
          v31 = v26 < v23;
          v32 = 2048;
          v33 = v26;
          v34 = 2048;
          v35 = v25;
          v36 = 2048;
          v37 = v23;
          _os_log_impl(&dword_2179FC000, v28, OS_LOG_TYPE_DEFAULT, "client allowedToReachEndpoint: %d with moddedHash: %lu modMax: %lu modThreshold: %lu", buf, 0x26u);
        }
      }

      else
      {
        v29 = v7;
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

- (void)_fetchMultiConfigurationFromEndpointURL:(id)a3 settings:(id)a4 networkActivityBlock:(id)a5 changeTagsByRequestKey:(id)a6 completion:(id)a7
{
  v34 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = RCSharedLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v33 = v13;
    _os_log_impl(&dword_2179FC000, v17, OS_LOG_TYPE_DEFAULT, "enqueuing configuration fetch from endpoint with settings: %{public}@", buf, 0xCu);
  }

  v18 = [(RCConfigurationManager *)self configRequestSerialQueue];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __130__RCConfigurationManager__fetchMultiConfigurationFromEndpointURL_settings_networkActivityBlock_changeTagsByRequestKey_completion___block_invoke;
  v25[3] = &unk_27822F778;
  v26 = v13;
  v27 = v15;
  v28 = v12;
  v29 = self;
  v30 = v14;
  v31 = v16;
  v19 = v16;
  v20 = v14;
  v21 = v12;
  v22 = v15;
  v23 = v13;
  [v18 enqueueBlock:v25];

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

- (id)_endpointURLForEnvironment:(unint64_t)a3 requestKey:(id)a4
{
  v5 = a4;
  if (([v5 isEqualToString:@"appConfigRequest"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"magazinesConfigRequest") & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"audioConfigRequest") || objc_msgSend(v5, "isEqualToString:", @"widgetConfigRequest"))
  {
    goto LABEL_5;
  }

  if ([v5 isEqualToString:@"todayConfigRequest"])
  {
    if (a3 >= 5)
    {
      goto LABEL_22;
    }

    v8 = off_27822F810;
LABEL_18:
    v6 = &v8[a3];
    goto LABEL_7;
  }

  if ([v5 isEqualToString:@"stocksConfigRequest"])
  {
    if (a3 >= 5)
    {
      goto LABEL_22;
    }

    v8 = off_27822F838;
    goto LABEL_18;
  }

  if (([v5 isEqualToString:@"weatherConfigRequest"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"weather2ConfigRequest"))
  {
    if (a3 >= 5)
    {
      goto LABEL_22;
    }

    v8 = off_27822F860;
    goto LABEL_18;
  }

  if ([v5 isEqualToString:@"booksConfigRequest"])
  {
    if (a3 >= 5)
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
  if (a3 - 1 < 4)
  {
    v6 = &off_27822F8B0[a3 - 1];
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

- (id)_endpointURLForEndpointConfig:(id)a3 overrideEnvironment:(unint64_t)a4 overrideEnabled:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = v7;
  if (!v7)
  {
    v12 = RCSharedLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_2179FC000, v12, OS_LOG_TYPE_DEFAULT, "EndpointConfig not available, falling back to the config to look for the endpointURL", v15, 2u);
    }

    goto LABEL_23;
  }

  v9 = [v7 environment];
  if (v5)
  {
    v10 = a4;
  }

  else
  {
    v10 = v9;
  }

  if (v10 <= 1)
  {
    if (v10)
    {
      if (v10 != 1)
      {
        goto LABEL_21;
      }

      v11 = [v8 stagingURL];
    }

    else
    {
      v11 = [v8 productionURL];
    }
  }

  else
  {
    switch(v10)
    {
      case 2:
        v11 = [v8 qaURL];
        break;
      case 3:
        v11 = [v8 develURL];
        break;
      case 4:
        v11 = [v8 testURL];
        break;
      default:
        goto LABEL_21;
    }
  }

  v13 = v11;
  if (!v11)
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

- (void)_fetchConfigurationFromFallbackURLWithSettings:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RCConfigurationManager *)self configRequestSerialQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __84__RCConfigurationManager__fetchConfigurationFromFallbackURLWithSettings_completion___block_invoke;
  v11[3] = &unk_27822F7F0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  [v8 enqueueBlock:v11];
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

- (void)_saveConfigurationResource:(id)a3
{
  v9 = a3;
  v4 = [(RCConfigurationManager *)self configResourceByRequestKey];
  v5 = [v9 requestKey];
  [v4 setObject:v9 forKeyedSubscript:v5];

  v6 = [(RCConfigurationManager *)self _encodeConfigurationResource:v9];
  if (v6)
  {
    v7 = [(RCConfigurationManager *)self localStore];
    v8 = [v9 requestKey];
    [v7 setObject:v6 forKey:v8];
  }
}

- (void)_removeConfigurationResourceForRequestKey:(id)a3
{
  v4 = a3;
  v5 = [(RCConfigurationManager *)self configResourceByRequestKey];
  [v5 removeObjectForKey:v4];

  v6 = [(RCConfigurationManager *)self localStore];
  [v6 removeObjectForKey:v4];
}

- (id)_decodeConfigurationResource:(id)a3
{
  v3 = MEMORY[0x277CCAAC8];
  v4 = a3;
  v5 = [[v3 alloc] initForReadingFromData:v4 error:0];

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