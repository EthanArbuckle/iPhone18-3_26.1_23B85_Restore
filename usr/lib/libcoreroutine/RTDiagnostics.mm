@interface RTDiagnostics
+ (BOOL)createArchiveSourceURL:(id)l destinationURL:(id)rL error:(id *)error;
+ (BOOL)fileNameEligibleForCollection:(id)collection;
+ (id)createDiagnosticsURLWithError:(id *)error;
+ (id)stringFromDateWithFormat;
- (RTDiagnostics)initWithDefaultsManager:(id)manager platform:(id)platform;
- (id)_collectBackupWithError:(id *)error;
- (id)_collectDiagnosticFilesWithOptions:(id)options error:(id *)error;
- (void)_fetchPathToBackupWithHandler:(id)handler;
- (void)_fetchPathToDiagnosticFilesWithOptions:(id)options handler:(id)handler;
- (void)_shutdownWithHandler:(id)handler;
- (void)addDiagnosticProvider:(id)provider;
- (void)fetchPathToBackupWithHandler:(id)handler;
- (void)fetchPathToDiagnosticFilesWithOptions:(id)options handler:(id)handler;
- (void)logDiagnosticStateWithReason:(id)reason;
- (void)logProcessDiagnosticInformation;
@end

@implementation RTDiagnostics

+ (BOOL)fileNameEligibleForCollection:(id)collection
{
  collectionCopy = collection;
  if (([collectionCopy containsString:@"routined"] & 1) != 0 || objc_msgSend(collectionCopy, "containsString:", @"CoreRoutineHelperService"))
  {
    v4 = [collectionCopy containsString:@"Sandbox"] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

+ (id)createDiagnosticsURLWithError:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = NSTemporaryDirectory();
  if (v4)
  {
    v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4 isDirectory:1];
    v6 = MEMORY[0x277CBEBC0];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v9 = [v6 fileURLWithPath:uUIDString isDirectory:1 relativeToURL:v5];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v23 = 0;
    v11 = [defaultManager createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:&v23];
    v12 = v23;

    if (v11)
    {
      v13 = v12 == 0;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      v18 = v9;
    }

    else
    {
      if (error)
      {
        v14 = MEMORY[0x277CCA9B8];
        v15 = *MEMORY[0x277D01448];
        v24 = *MEMORY[0x277CCA450];
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"failed to create diagnostic url at path, %@, error, %@", v5, v12];
        v25 = v16;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
        *error = [v14 errorWithDomain:v15 code:1 userInfo:v17];
      }

      v18 = 0;
    }

    goto LABEL_15;
  }

  v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v29 = "+[RTDiagnostics createDiagnosticsURLWithError:]";
    v30 = 1024;
    v31 = 65;
    _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Temporary diagnostics parent path was nil. (in %s:%d)", buf, 0x12u);
  }

  if (error)
  {
    v20 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277D01448];
    v26 = *MEMORY[0x277CCA450];
    v27 = @"failed to create diagnostic url, parent path was nil.";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    [v20 errorWithDomain:v21 code:1 userInfo:v5];
    *error = v18 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v18 = 0;
LABEL_16:

  return v18;
}

+ (BOOL)createArchiveSourceURL:(id)l destinationURL:(id)rL error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  lCopy = l;
  rLCopy = rL;
  path = [(RTArchiver *)rLCopy path];
  stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v12 = [defaultManager fileExistsAtPath:stringByDeletingLastPathComponent];

  if ((v12 & 1) == 0)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v22 = 0;
    v14 = [defaultManager2 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v22];
    v15 = v22;

    if (!v14 || v15)
    {
      v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v24 = v15;
        _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "error while creating archive destination directory, %@", buf, 0xCu);
      }

      if (error)
      {
        v20 = v15;
        v17 = 0;
        *error = v15;
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  v16 = [[RTArchiver alloc] initWithOutputURL:rLCopy compress:1];
  if (!v16)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = rLCopy;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "error while creating archive at destination url, %@", buf, 0xCu);
    }

    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:0 userInfo:MEMORY[0x277CBEC10]];
      v15 = 0;
      *error = v17 = 0;
      goto LABEL_16;
    }

    v15 = 0;
LABEL_15:
    v17 = 0;
    goto LABEL_16;
  }

  v15 = v16;
  [(RTArchiver *)v16 addDirectoryToArchive:lCopy];
  [(RTArchiver *)v15 closeArchive];
  v17 = 1;
LABEL_16:

  return v17;
}

+ (id)stringFromDateWithFormat
{
  v2 = objc_opt_new();
  [v2 setDateFormat:@"MM-dd-YYYY-HHmmss"];
  date = [MEMORY[0x277CBEAA8] date];
  v4 = [v2 stringFromDate:date];

  return v4;
}

- (RTDiagnostics)initWithDefaultsManager:(id)manager platform:(id)platform
{
  managerCopy = manager;
  platformCopy = platform;
  v14.receiver = self;
  v14.super_class = RTDiagnostics;
  v9 = [(RTNotifier *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_defaultsManager, manager);
    objc_storeStrong(&v10->_platform, platform);
    array = [MEMORY[0x277CBEB18] array];
    diagnosticProviders = v10->_diagnosticProviders;
    v10->_diagnosticProviders = array;
  }

  return v10;
}

- (void)logProcessDiagnosticInformation
{
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__RTDiagnostics_logProcessDiagnosticInformation__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

void __48__RTDiagnostics_logProcessDiagnosticInformation__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v24 = "Oct 22 2025";
    v25 = 2080;
    v26 = "23:43:40";
    _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_DEFAULT, "/usr/libexec/routined was compiled on %s @ %s", buf, 0x16u);
  }

  v3 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = getpid();
    *buf = 67109120;
    LODWORD(v24) = v4;
    _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_DEFAULT, "pid, %d", buf, 8u);
  }

  v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x277CCA8D8] _coreroutineBundle];
    v7 = [v6 objectForInfoDictionaryKey:*MEMORY[0x277CBED58]];
    *buf = 138543362;
    v24 = v7;
    _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "CoreRoutine-%{public}@", buf, 0xCu);
  }

  v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(*(a1 + 32) + 40) systemModel];
    v10 = [*(*(a1 + 32) + 40) buildVersion];
    v11 = [*(*(a1 + 32) + 40) productType];
    *buf = 138543874;
    v24 = v9;
    v25 = 2114;
    v26 = v10;
    v27 = 2114;
    v28 = v11;
    _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEFAULT, "system model, %{public}@, version, %{public}@, product, %{public}@", buf, 0x20u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v22 = [MEMORY[0x277CBEAF8] preferredLanguages];
      v13 = [v22 firstObject];
      v14 = [MEMORY[0x277CBEAF8] currentLocale];
      v15 = [v14 localeIdentifier];
      v16 = [MEMORY[0x277CCA8D8] mainBundle];
      v17 = [v16 preferredLocalizations];
      v18 = [v17 firstObject];
      v19 = [MEMORY[0x277CCA8D8] _coreroutineBundle];
      v20 = [v19 preferredLocalizations];
      v21 = [v20 firstObject];
      *buf = 138413058;
      v24 = v13;
      v25 = 2112;
      v26 = v15;
      v27 = 2112;
      v28 = v18;
      v29 = 2112;
      v30 = v21;
      _os_log_debug_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEBUG, "preferredLanguage, %@, locale, %@, mainBundlePreferredLocalization, %@, frameworkPreferredLocalization, %@", buf, 0x2Au);
    }
  }
}

- (void)logDiagnosticStateWithReason:(id)reason
{
  reasonCopy = reason;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__RTDiagnostics_logDiagnosticStateWithReason___block_invoke;
  block[3] = &unk_2788C5020;
  v9 = reasonCopy;
  v10 = a2;
  block[4] = self;
  v7 = reasonCopy;
  dispatch_async(queue, block);
}

void __46__RTDiagnostics_logDiagnosticStateWithReason___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = dispatch_group_create();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [*(*(a1 + 32) + 48) copy];
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      v8 = 0;
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          dispatch_group_enter(v3);
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = __46__RTDiagnostics_logDiagnosticStateWithReason___block_invoke_2;
          v17[3] = &unk_2788D09F0;
          v17[4] = *(a1 + 32);
          v18 = v2;
          v19 = v9;
          v20 = v3;
          [v9 fetchDiagnosticLogsWithHandler:v17];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  v10 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__RTDiagnostics_logDiagnosticStateWithReason___block_invoke_4;
  block[3] = &unk_2788C5020;
  v11 = *(a1 + 40);
  v16 = *(a1 + 48);
  v14 = v11;
  v15 = v2;
  v12 = v2;
  dispatch_group_notify(v3, v10, block);
}

void __46__RTDiagnostics_logDiagnosticStateWithReason___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__RTDiagnostics_logDiagnosticStateWithReason___block_invoke_3;
  v9[3] = &unk_2788CBEA8;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v10 = v5;
  v11 = v6;
  v12 = v3;
  v13 = v7;
  v8 = v3;
  dispatch_async(v4, v9);
}

void __46__RTDiagnostics_logDiagnosticStateWithReason___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v2 stringWithFormat:@"diagnostic provider, %@", v5];
  [v3 addObject:v6];

  [*(a1 + 32) addObjectsFromArray:*(a1 + 48)];
  v7 = *(a1 + 56);

  dispatch_group_leave(v7);
}

void __46__RTDiagnostics_logDiagnosticStateWithReason___block_invoke_4(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 48));
      v4 = *(a1 + 32);
      +[RTRuntime footprint];
      *buf = 138412802;
      v21 = v3;
      v22 = 2112;
      v23 = v4;
      v24 = 2048;
      v25 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "============== %@, %@, footprint, %.2f MB ==============", buf, 0x20u);
    }
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = *(a1 + 40);
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    v10 = MEMORY[0x277D86220];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v21 = v12;
            _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "====================================", buf, 2u);
    }
  }
}

- (void)addDiagnosticProvider:(id)provider
{
  providerCopy = provider;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__RTDiagnostics_addDiagnosticProvider___block_invoke;
  v7[3] = &unk_2788C4A70;
  v8 = providerCopy;
  selfCopy = self;
  v6 = providerCopy;
  dispatch_async(queue, v7);
}

uint64_t __39__RTDiagnostics_addDiagnosticProvider___block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    return [*(*(result + 40) + 48) addObject:?];
  }

  return result;
}

- (void)_shutdownWithHandler:(id)handler
{
  handlerCopy = handler;
  [(NSMutableArray *)self->_diagnosticProviders removeAllObjects];
  v4 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
    v4 = handlerCopy;
  }
}

- (id)_collectDiagnosticFilesWithOptions:(id)options error:(id *)error
{
  v132[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  selfCopy = self;
  v122 = 0;
  v97 = [objc_opt_class() createDiagnosticsURLWithError:&v122];
  v91 = v122;
  if (v91)
  {
    if (error)
    {
      v6 = v91;
      v7 = 0;
      *error = v91;
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_72;
  }

  v100 = objc_opt_new();
  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = NSStringFromSelector(a2);
  v12 = [v8 stringWithFormat:@"%@-%@", v10, v11];
  v13 = v12;
  [v12 UTF8String];
  v89 = os_transaction_create();

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v85 = objc_opt_class();
      v86 = NSStringFromClass(v85);
      v87 = NSStringFromSelector(a2);
      *v127 = 138412546;
      *&v127[4] = v86;
      *&v127[12] = 2112;
      *&v127[14] = v87;
      _os_log_debug_impl(&dword_2304B3000, v14, OS_LOG_TYPE_DEBUG, "creating os_transaction, %@, %@", v127, 0x16u);
    }
  }

  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  obj = selfCopy->_diagnosticProviders;
  v104 = [(NSMutableArray *)obj countByEnumeratingWithState:&v118 objects:v131 count:16];
  if (v104)
  {
    v101 = *v119;
    v93 = *MEMORY[0x277D01448];
    v95 = *MEMORY[0x277CCA450];
    do
    {
      for (i = 0; i != v104; ++i)
      {
        if (*v119 != v101)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v118 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v17 = dispatch_semaphore_create(0);
          *v127 = 0;
          *&v127[8] = v127;
          *&v127[16] = 0x3032000000;
          v128 = __Block_byref_object_copy__158;
          v129 = __Block_byref_object_dispose__158;
          v130 = 0;
          v115[0] = MEMORY[0x277D85DD0];
          v115[1] = 3221225472;
          v115[2] = __58__RTDiagnostics__collectDiagnosticFilesWithOptions_error___block_invoke;
          v115[3] = &unk_2788C4618;
          v117 = v127;
          v18 = v17;
          v116 = v18;
          [v16 flushToCacheWithOptions:optionsCopy handler:v115];
          v19 = v18;
          v20 = [MEMORY[0x277CBEAA8] now];
          v21 = dispatch_time(0, 300000000000);
          if (dispatch_semaphore_wait(v19, v21))
          {
            v22 = [MEMORY[0x277CBEAA8] now];
            [v22 timeIntervalSinceDate:v20];
            v24 = v23;
            v25 = objc_opt_new();
            v26 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_132];
            callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
            v28 = [callStackSymbols filteredArrayUsingPredicate:v26];
            firstObject = [v28 firstObject];

            [v25 submitToCoreAnalytics:firstObject type:1 duration:v24];
            v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_2304B3000, v30, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
            }

            v31 = MEMORY[0x277CCA9B8];
            v132[0] = v95;
            *buf = @"semaphore wait timeout";
            v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v132 count:1];
            v33 = [v31 errorWithDomain:v93 code:15 userInfo:v32];

            if (v33)
            {
              v34 = v33;

              v35 = 0;
LABEL_21:

              v36 = v33;
              if ((v35 & 1) == 0)
              {
                objc_storeStrong((*&v127[8] + 40), v33);
              }

              if (*(*&v127[8] + 40))
              {
                v37 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                {
                  v38 = objc_opt_class();
                  v39 = NSStringFromClass(v38);
                  v40 = *(*&v127[8] + 40);
                  *buf = 138412546;
                  *&buf[4] = v39;
                  v125 = 2112;
                  v126 = v40;
                  _os_log_error_impl(&dword_2304B3000, v37, OS_LOG_TYPE_ERROR, "%@, failed to flush to cache, error, %@", buf, 0x16u);
                }

                [v100 addObject:*(*&v127[8] + 40)];
              }

              _Block_object_dispose(v127, 8);
              continue;
            }
          }

          else
          {
            v33 = 0;
          }

          v35 = 1;
          goto LABEL_21;
        }
      }

      v104 = [(NSMutableArray *)obj countByEnumeratingWithState:&v118 objects:v131 count:16];
    }

    while (v104);
  }

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  obja = selfCopy->_diagnosticProviders;
  v105 = [(NSMutableArray *)obja countByEnumeratingWithState:&v111 objects:v123 count:16];
  if (!v105)
  {
    goto LABEL_52;
  }

  v102 = *v112;
  v94 = *MEMORY[0x277D01448];
  v96 = *MEMORY[0x277CCA450];
  do
  {
    for (j = 0; j != v105; ++j)
    {
      if (*v112 != v102)
      {
        objc_enumerationMutation(obja);
      }

      v42 = *(*(&v111 + 1) + 8 * j);
      if (objc_opt_respondsToSelector())
      {
        v43 = dispatch_semaphore_create(0);
        *v127 = 0;
        *&v127[8] = v127;
        *&v127[16] = 0x3032000000;
        v128 = __Block_byref_object_copy__158;
        v129 = __Block_byref_object_dispose__158;
        v130 = 0;
        v108[0] = MEMORY[0x277D85DD0];
        v108[1] = 3221225472;
        v108[2] = __58__RTDiagnostics__collectDiagnosticFilesWithOptions_error___block_invoke_56;
        v108[3] = &unk_2788C4618;
        v110 = v127;
        v44 = v43;
        v109 = v44;
        [v42 sendDiagnosticsToURL:v97 options:optionsCopy handler:v108];
        v45 = v44;
        v46 = [MEMORY[0x277CBEAA8] now];
        v47 = dispatch_time(0, 300000000000);
        if (dispatch_semaphore_wait(v45, v47))
        {
          v48 = [MEMORY[0x277CBEAA8] now];
          [v48 timeIntervalSinceDate:v46];
          v50 = v49;
          v51 = objc_opt_new();
          v52 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_132];
          callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
          v54 = [callStackSymbols2 filteredArrayUsingPredicate:v52];
          firstObject2 = [v54 firstObject];

          [v51 submitToCoreAnalytics:firstObject2 type:1 duration:v50];
          v56 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_2304B3000, v56, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
          }

          v57 = MEMORY[0x277CCA9B8];
          v132[0] = v96;
          *buf = @"semaphore wait timeout";
          v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v132 count:1];
          v59 = [v57 errorWithDomain:v94 code:15 userInfo:v58];

          if (v59)
          {
            v60 = v59;

            v61 = 0;
LABEL_43:

            v62 = v59;
            if ((v61 & 1) == 0)
            {
              objc_storeStrong((*&v127[8] + 40), v59);
            }

            if (*(*&v127[8] + 40))
            {
              v63 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
              if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
              {
                v64 = objc_opt_class();
                v65 = NSStringFromClass(v64);
                v66 = *(*&v127[8] + 40);
                *buf = 138412546;
                *&buf[4] = v65;
                v125 = 2112;
                v126 = v66;
                _os_log_error_impl(&dword_2304B3000, v63, OS_LOG_TYPE_ERROR, "%@, failed to send diagnostics to URL, error, %@", buf, 0x16u);
              }

              [v100 addObject:*(*&v127[8] + 40)];
            }

            _Block_object_dispose(v127, 8);
            continue;
          }
        }

        else
        {
          v59 = 0;
        }

        v61 = 1;
        goto LABEL_43;
      }
    }

    v105 = [(NSMutableArray *)obja countByEnumeratingWithState:&v111 objects:v123 count:16];
  }

  while (v105);
LABEL_52:

  crashReporterPath = [MEMORY[0x277CCAA00] crashReporterPath];
  v68 = [crashReporterPath stringByAppendingPathComponent:@"CoreRoutineDiagnosticFiles"];
  stringFromDateWithFormat = [objc_opt_class() stringFromDateWithFormat];
  v70 = [v68 stringByAppendingFormat:@"-%@", stringFromDateWithFormat];
  v7 = [v70 stringByAppendingPathExtension:@"tar.gz"];

  v71 = objc_opt_class();
  v72 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];
  v107 = 0;
  v73 = [v71 createArchiveSourceURL:v97 destinationURL:v72 error:&v107];
  v74 = v107;

  if (v74)
  {
    v75 = 0;
  }

  else
  {
    v75 = v73;
  }

  if ((v75 & 1) == 0)
  {
    v76 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      *v127 = 138412290;
      *&v127[4] = v74;
      _os_log_error_impl(&dword_2304B3000, v76, OS_LOG_TYPE_ERROR, "failed to create archive, error, %@", v127, 0xCu);
    }

    if (v74)
    {
      [v100 addObject:v74];
    }

    v7 = 0;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [v97 path];
  v106 = 0;
  v79 = [defaultManager removeItemAtPath:path error:&v106];
  v80 = v106;

  if (v80)
  {
    v81 = 0;
  }

  else
  {
    v81 = v79;
  }

  if ((v81 & 1) == 0)
  {
    v82 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
    {
      path2 = [v97 path];
      *v127 = 138412546;
      *&v127[4] = path2;
      *&v127[12] = 2112;
      *&v127[14] = v80;
      _os_log_error_impl(&dword_2304B3000, v82, OS_LOG_TYPE_ERROR, "failed to remove temporary directory, %@, error, %@", v127, 0x16u);
    }
  }

  if (error)
  {
    v83 = _RTSafeArray();
    *error = _RTMultiErrorCreate();
  }

LABEL_72:

  return v7;
}

void __58__RTDiagnostics__collectDiagnosticFilesWithOptions_error___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __58__RTDiagnostics__collectDiagnosticFilesWithOptions_error___block_invoke_56(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_fetchPathToDiagnosticFilesWithOptions:(id)options handler:(id)handler
{
  v15[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v8 = objc_opt_new();
    if (v8)
    {
      v13 = 0;
      v9 = [(RTDiagnostics *)self _collectDiagnosticFilesWithOptions:optionsCopy error:&v13];
      v10 = v13;
      handlerCopy[2](handlerCopy, v9, v10);
    }

    else
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277D01448];
      v14 = *MEMORY[0x277CCA450];
      v15[0] = @"encrypetd data unavailable - please ensure the device is unlocked and try again.";
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      v10 = [v11 errorWithDomain:v12 code:5 userInfo:v9];
      handlerCopy[2](handlerCopy, 0, v10);
    }
  }
}

- (void)fetchPathToDiagnosticFilesWithOptions:(id)options handler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__RTDiagnostics_fetchPathToDiagnosticFilesWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = optionsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = optionsCopy;
  dispatch_async(queue, block);
}

- (id)_collectBackupWithError:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  crashReporterPath = [MEMORY[0x277CCAA00] crashReporterPath];
  v5 = [crashReporterPath stringByAppendingPathComponent:@"CoreRoutineBackup"];
  stringFromDateWithFormat = [objc_opt_class() stringFromDateWithFormat];
  v7 = [v5 stringByAppendingFormat:@"-%@", stringFromDateWithFormat];
  v8 = [v7 stringByAppendingPathExtension:@"tar.gz"];

  v9 = objc_opt_class();
  v10 = MEMORY[0x277CBEBC0];
  routineCacheDirectoryPath = [MEMORY[0x277CCAA00] routineCacheDirectoryPath];
  v12 = [v10 fileURLWithPath:routineCacheDirectoryPath isDirectory:1];
  v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8];
  v19 = 0;
  LODWORD(v7) = [v9 createArchiveSourceURL:v12 destinationURL:v13 error:&v19];
  v14 = v19;

  if (!v7 || v14)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v14;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "failed to create archive, error, %@", buf, 0xCu);
    }

    if (error)
    {
      v17 = v14;
      v15 = 0;
      *error = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = v8;
  }

  return v15;
}

- (void)_fetchPathToBackupWithHandler:(id)handler
{
  v12[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (handlerCopy)
  {
    v5 = objc_opt_new();
    if (v5)
    {
      v10 = 0;
      v6 = [(RTDiagnostics *)self _collectBackupWithError:&v10];
      v7 = v10;
      handlerCopy[2](handlerCopy, v6, v7);
    }

    else
    {
      v8 = MEMORY[0x277CCA9B8];
      v9 = *MEMORY[0x277D01448];
      v11 = *MEMORY[0x277CCA450];
      v12[0] = @"encrypetd data unavailable - please ensure the device is unlocked and try again.";
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      v6 = [v8 errorWithDomain:v9 code:5 userInfo:v7];
      handlerCopy[2](handlerCopy, 0, v6);
    }
  }
}

- (void)fetchPathToBackupWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__RTDiagnostics_fetchPathToBackupWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

@end