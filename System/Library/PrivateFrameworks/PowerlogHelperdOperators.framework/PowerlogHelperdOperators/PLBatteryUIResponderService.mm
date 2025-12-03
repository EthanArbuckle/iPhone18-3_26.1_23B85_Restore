@interface PLBatteryUIResponderService
+ (void)load;
- (BOOL)demoMode;
- (double)endOfDayWithNow:(id)now;
- (double)endOfHourWithNow:(id)now;
- (id)constructResponseObjectFromType:(int64_t)type;
- (id)convertResponseToLegacyFormat:(id)format;
- (id)createCoalescedBreakdownWithResponse:(id)response;
- (id)demoPath;
- (id)possibleRequests;
- (id)result;
- (void)cleanup;
- (void)coalesce;
- (void)configure:(id)configure;
- (void)initOperatorDependancies;
- (void)linkDependencies;
- (void)prepareBreakdown:(id)breakdown withDrainSummaries:(id)summaries withFullDayBreakdown:(id)dayBreakdown withDynamicBreakdown:(id)dynamicBreakdown;
- (void)result;
- (void)run;
@end

@implementation PLBatteryUIResponderService

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLBatteryUIResponderService;
  objc_msgSendSuper2(&v2, sel_load);
}

- (void)initOperatorDependancies
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(PLBatteryUIResponderService *)self setRequestedObjects:dictionary];

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  [(PLBatteryUIResponderService *)self setResponseCache:dictionary2];

  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  [(PLBatteryUIResponderService *)self setSharedUtilityCache:dictionary3];

  dictionary4 = [MEMORY[0x277CBEB38] dictionary];
  [(PLBatteryUIResponderService *)self setResultDictionary:dictionary4];

  array = [MEMORY[0x277CBEB18] array];
  [(PLBatteryUIResponderService *)self setOrderOfExecution:array];

  v8 = objc_alloc_init(MEMORY[0x277CCABD8]);
  [(PLBatteryUIResponderService *)self setOperationQueue:v8];

  operationQueue = [(PLBatteryUIResponderService *)self operationQueue];
  [operationQueue setMaxConcurrentOperationCount:1];

  [(PLBatteryUIResponderService *)self setShouldUseMidnightQueryRange:1];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    [(PLBatteryUIResponderService *)self setShouldUseMidnightQueryRange:0];
  }

  v10 = objc_alloc(MEMORY[0x277D3F278]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__PLBatteryUIResponderService_initOperatorDependancies__block_invoke;
  v12[3] = &unk_279A5BEC8;
  v12[4] = self;
  v11 = [v10 initWithOperator:self withRegistration:&unk_28714AA70 withBlock:v12];
  [(PLBatteryUIResponderService *)self setQueryResponder:v11];
}

id __55__PLBatteryUIResponderService_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a5;
  if ([*(a1 + 32) demoMode])
  {
    v7 = PLLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __55__PLBatteryUIResponderService_initOperatorDependancies__block_invoke_cold_1();
    }

    v8 = [*(a1 + 32) demoPath];
    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [v9 fileExistsAtPath:v8];

    v11 = PLLogCommon();
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __55__PLBatteryUIResponderService_initOperatorDependancies__block_invoke_cold_3();
      }

      v13 = MEMORY[0x277CCACA8];
      v14 = [v8 pathExtension];
      v15 = [v13 stringWithFormat:@".%@", v14];

      if ([v15 isEqualToString:@".plist"])
      {
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v8];

LABEL_21:
        goto LABEL_16;
      }

      v24 = [v15 isEqualToString:@".PLSQL"];

      if ((v24 & 1) == 0)
      {
        v16 = 0;
        goto LABEL_21;
      }
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __55__PLBatteryUIResponderService_initOperatorDependancies__block_invoke_cold_2();
      }
    }
  }

  v17 = [v6 objectForKeyedSubscript:@"requestingService"];
  [*(a1 + 32) setRequestingService:v17];

  v18 = [v6 objectForKeyedSubscript:@"plistCopyDestination"];
  [*(a1 + 32) setPlistCopyDestination:v18];

  v19 = [v6 objectForKeyedSubscript:@"skipPlistWriteKey"];
  [*(a1 + 32) setSkipPlistWrite:{objc_msgSend(v19, "BOOLValue")}];

  v20 = PLLogCommon();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = [*(a1 + 32) requestingService];
    *buf = 138412290;
    v26 = v21;
    _os_log_impl(&dword_25EE51000, v20, OS_LOG_TYPE_INFO, "requestingService=%@", buf, 0xCu);
  }

  [*(a1 + 32) cleanup];
  [*(a1 + 32) configure:v6];
  [*(a1 + 32) linkDependencies];
  [*(a1 + 32) run];
  [*(a1 + 32) coalesce];
  v16 = [*(a1 + 32) result];
LABEL_16:

  v22 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)cleanup
{
  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_25EE51000, v3, OS_LOG_TYPE_INFO, "Responder Service: Cleaning up...", v9, 2u);
  }

  resultDictionary = [(PLBatteryUIResponderService *)self resultDictionary];
  [resultDictionary removeAllObjects];

  requestedObjects = [(PLBatteryUIResponderService *)self requestedObjects];
  [requestedObjects removeAllObjects];

  orderOfExecution = [(PLBatteryUIResponderService *)self orderOfExecution];
  [orderOfExecution removeAllObjects];

  responseCache = [(PLBatteryUIResponderService *)self responseCache];
  [responseCache removeAllObjects];

  sharedUtilityCache = [(PLBatteryUIResponderService *)self sharedUtilityCache];
  [sharedUtilityCache removeAllObjects];
}

- (void)configure:(id)configure
{
  v11 = *MEMORY[0x277D85DE8];
  configureCopy = configure;
  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v10 = configureCopy;
    _os_log_impl(&dword_25EE51000, v5, OS_LOG_TYPE_INFO, "Responder Service: Received configuration %@", buf, 0xCu);
  }

  [(PLBatteryUIResponderService *)self setConfiguration:configureCopy];
  configuration = [(PLBatteryUIResponderService *)self configuration];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__PLBatteryUIResponderService_configure___block_invoke;
  v8[3] = &unk_279A5E430;
  v8[4] = self;
  [configuration enumerateKeysAndObjectsUsingBlock:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __41__PLBatteryUIResponderService_configure___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 objectForKeyedSubscript:@"enum"];

    if (v7)
    {
      v8 = [v6 objectForKeyedSubscript:@"enum"];
      v9 = [v8 intValue];

      v10 = [*(a1 + 32) constructResponseObjectFromType:v9];
      if (v10)
      {
        v11 = [*(a1 + 32) requestedObjects];
        v12 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
        v13 = [v11 objectForKeyedSubscript:v12];

        if (!v13)
        {
          v14 = [MEMORY[0x277CBEB38] dictionary];
          v15 = [*(a1 + 32) requestedObjects];
          v16 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
          [v15 setObject:v14 forKeyedSubscript:v16];
        }

        v17 = [*(a1 + 32) requestedObjects];
        v18 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
        v19 = [v17 objectForKeyedSubscript:v18];
        [v19 setObject:v10 forKeyedSubscript:v5];
      }

      else
      {
        v17 = PLLogCommon();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          __41__PLBatteryUIResponderService_configure___block_invoke_cold_1(v6, v9, v17);
        }
      }
    }
  }
}

- (void)linkDependencies
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v3, OS_LOG_TYPE_INFO, "Responder Service: Linking dependencies...", buf, 2u);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  objc_initWeak(&location, self);
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  requestedObjects = [(PLBatteryUIResponderService *)self requestedObjects];
  v31 = [requestedObjects countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v31)
  {
    v30 = *v46;
    obj = requestedObjects;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v46 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v45 + 1) + 8 * i);
        v6 = [dictionary objectForKeyedSubscript:{v5, obj}];
        v7 = v6 == 0;

        if (v7)
        {
          array = [MEMORY[0x277CBEB18] array];
          [dictionary setObject:array forKeyedSubscript:v5];
        }

        responseCache = [(PLBatteryUIResponderService *)self responseCache];
        v10 = [responseCache objectForKeyedSubscript:v5];
        v11 = v10 == 0;

        if (v11)
        {
          dictionary2 = [MEMORY[0x277CBEB38] dictionary];
          responseCache2 = [(PLBatteryUIResponderService *)self responseCache];
          [responseCache2 setObject:dictionary2 forKeyedSubscript:v5];
        }

        v43 = 0u;
        v44 = 0u;
        v42 = 0u;
        v41 = 0u;
        requestedObjects2 = [(PLBatteryUIResponderService *)self requestedObjects];
        v33 = [requestedObjects2 objectForKeyedSubscript:v5];

        v15 = [v33 countByEnumeratingWithState:&v41 objects:v52 count:16];
        if (v15)
        {
          v16 = *v42;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v42 != v16)
              {
                objc_enumerationMutation(v33);
              }

              v18 = *(*(&v41 + 1) + 8 * j);
              requestedObjects3 = [(PLBatteryUIResponderService *)self requestedObjects];
              v20 = [requestedObjects3 objectForKeyedSubscript:v5];
              v21 = [v20 objectForKeyedSubscript:v18];

              if (v21)
              {
                v22 = MEMORY[0x277CCA8C8];
                v37[0] = MEMORY[0x277D85DD0];
                v37[1] = 3221225472;
                v37[2] = __47__PLBatteryUIResponderService_linkDependencies__block_invoke;
                v37[3] = &unk_279A5EB48;
                objc_copyWeak(&v40, &location);
                v37[4] = v18;
                v37[5] = self;
                v38 = v21;
                v39 = v5;
                v23 = [v22 blockOperationWithBlock:v37];
                v24 = [dictionary objectForKeyedSubscript:v5];
                [v24 addObject:v23];

                objc_destroyWeak(&v40);
              }
            }

            v15 = [v33 countByEnumeratingWithState:&v41 objects:v52 count:16];
          }

          while (v15);
        }
      }

      requestedObjects = obj;
      v31 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v31);
  }

  v25 = PLLogCommon();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v51 = dictionary;
    _os_log_impl(&dword_25EE51000, v25, OS_LOG_TYPE_INFO, "Responder Service: Constructed <Response Type, Execution Block(s)> map: %@", buf, 0xCu);
  }

  array2 = [MEMORY[0x277CBEB18] array];
  [(PLBatteryUIResponderService *)self setExecutionChain:array2];

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __47__PLBatteryUIResponderService_linkDependencies__block_invoke_68;
  v35[3] = &unk_279A5EB70;
  v35[4] = self;
  v27 = dictionary;
  v36 = v27;
  [v27 enumerateKeysAndObjectsUsingBlock:v35];

  objc_destroyWeak(&location);
  v28 = *MEMORY[0x277D85DE8];
}

void __47__PLBatteryUIResponderService_linkDependencies__block_invoke(uint64_t a1)
{
  v126 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained configuration];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 32)];
  v5 = [v4 mutableCopy];

  v6 = [*(a1 + 40) resultDictionary];
  v7 = [v6 objectForKeyedSubscript:@"PLBatteryUIQueryTime"];
  [v5 setObject:v7 forKeyedSubscript:@"timestamp"];

  if (!_os_feature_enabled_impl() || ![*(a1 + 40) shouldUseMidnightQueryRange])
  {
    if (![*(a1 + 40) demoMode])
    {
      goto LABEL_13;
    }

    v21 = [v5 objectForKeyedSubscript:@"start"];
    [v21 doubleValue];
    v23 = v22;

    v24 = [v5 objectForKeyedSubscript:@"end"];
    [v24 doubleValue];
    v26 = v25;

    v27 = [*(a1 + 40) resultDictionary];
    v28 = [v27 objectForKeyedSubscript:@"PLBatteryUIQueryTime"];
    [v28 doubleValue];
    v30 = v29;

    v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v30];
    v31 = v26 - v23;
    if (v31 == 864000.0)
    {
      v32 = PLCalculateEndOfDayWithDate();
    }

    else
    {
      if (v31 != 86400.0 && v31 != 1209600.0)
      {
        goto LABEL_11;
      }

      v32 = PLCalculateEndOfHourWithDate();
    }

    v33 = v32;
    [v32 timeIntervalSince1970];
    v26 = v34;

LABEL_11:
    v35 = [MEMORY[0x277CCABB0] numberWithDouble:v26 - v31];
    [v5 setObject:v35 forKeyedSubscript:@"start"];

    v36 = [MEMORY[0x277CCABB0] numberWithDouble:v26];
    [v5 setObject:v36 forKeyedSubscript:@"end"];

    goto LABEL_12;
  }

  v8 = [v5 objectForKeyedSubscript:@"start"];
  [v8 doubleValue];
  v10 = v9;

  v11 = [v5 objectForKeyedSubscript:@"end"];
  [v11 doubleValue];
  v13 = v12;

  v14 = [*(a1 + 40) resultDictionary];
  v15 = [v14 objectForKeyedSubscript:@"PLBatteryUIQueryTime"];
  v16 = v13 - v10;
  [v15 doubleValue];
  v18 = v17;

  v19 = [MEMORY[0x277CCABB0] numberWithDouble:v18 - v16];
  [v5 setObject:v19 forKeyedSubscript:@"start"];

  v20 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
  [v5 setObject:v20 forKeyedSubscript:@"end"];
LABEL_12:

LABEL_13:
  v119 = PLBatteryUsageUIKeyFromConfiguration();
  v37 = PLLogCommon();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    v38 = *(a1 + 48);
    v39 = objc_opt_class();
    v40 = NSStringFromClass(v39);
    v41 = *(a1 + 32);
    *buf = 138412546;
    v121 = v40;
    v122 = 2112;
    v123 = v41;
    _os_log_impl(&dword_25EE51000, v37, OS_LOG_TYPE_INFO, "Responder Service: Running '%@' for '%@'", buf, 0x16u);
  }

  v42 = [v5 objectForKeyedSubscript:@"start"];
  [v42 doubleValue];
  v44 = v43;

  v45 = [v5 objectForKeyedSubscript:@"end"];
  [v45 doubleValue];
  v47 = v46;

  v48 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v47];
  v118 = [v48 convertFromSystemToMonotonic];

  v117 = [v118 dateByAddingTimeInterval:-(v47 - v44)];
  v49 = MEMORY[0x277CCABB0];
  [v117 timeIntervalSince1970];
  v50 = [v49 numberWithDouble:?];
  [v5 setObject:v50 forKeyedSubscript:@"start"];

  v51 = MEMORY[0x277CCABB0];
  [v118 timeIntervalSince1970];
  v52 = [v51 numberWithDouble:?];
  [v5 setObject:v52 forKeyedSubscript:@"end"];

  [*(a1 + 48) configure:v5];
  [*(a1 + 48) run];
  [*(a1 + 48) coalesce];
  v53 = objc_loadWeakRetained((a1 + 64));
  v54 = [v53 responseCache];

  objc_sync_enter(v54);
  v55 = [MEMORY[0x277CBEB38] dictionary];
  v56 = objc_loadWeakRetained((a1 + 64));
  v57 = [v56 responseCache];
  v58 = [v57 objectForKeyedSubscript:*(a1 + 56)];
  [v58 setObject:v55 forKeyedSubscript:v119];

  v59 = objc_loadWeakRetained((a1 + 64));
  v60 = [v59 configuration];
  v61 = [v60 objectForKeyedSubscript:*(a1 + 32)];
  v62 = objc_loadWeakRetained((a1 + 64));
  v63 = [v62 responseCache];
  v64 = [v63 objectForKeyedSubscript:*(a1 + 56)];
  v65 = [v64 objectForKeyedSubscript:v119];
  [v65 setObject:v61 forKeyedSubscript:@"configuration"];

  v66 = [*(a1 + 48) result];
  v67 = objc_loadWeakRetained((a1 + 64));
  v68 = [v67 responseCache];
  v69 = [v68 objectForKeyedSubscript:*(a1 + 56)];
  v70 = [v69 objectForKeyedSubscript:v119];
  [v70 setObject:v66 forKeyedSubscript:@"result"];

  if ([*(a1 + 40) isOfTypeBreakdownForResponseType:{objc_msgSend(*(a1 + 56), "intValue")}])
  {
    v71 = objc_loadWeakRetained((a1 + 64));
    v72 = [v71 responseCache];
    v73 = [v72 objectForKeyedSubscript:&unk_287146FD8];
    v74 = v73 == 0;

    if (v74)
    {
      v75 = [MEMORY[0x277CBEB38] dictionary];
      v76 = objc_loadWeakRetained((a1 + 64));
      v77 = [v76 responseCache];
      [v77 setObject:v75 forKeyedSubscript:&unk_287146FD8];
    }

    v78 = [MEMORY[0x277CBEB38] dictionary];
    v79 = objc_loadWeakRetained((a1 + 64));
    v80 = [v79 responseCache];
    v81 = [v80 objectForKeyedSubscript:&unk_287146FD8];
    [v81 setObject:v78 forKeyedSubscript:v119];

    v82 = objc_loadWeakRetained((a1 + 64));
    v83 = [v82 configuration];
    v84 = [v83 objectForKeyedSubscript:*(a1 + 32)];
    v85 = objc_loadWeakRetained((a1 + 64));
    v86 = [v85 responseCache];
    v87 = [v86 objectForKeyedSubscript:&unk_287146FD8];
    v88 = [v87 objectForKeyedSubscript:v119];
    [v88 setObject:v84 forKeyedSubscript:@"configuration"];

    v89 = [*(a1 + 48) result];
    v90 = objc_loadWeakRetained((a1 + 64));
    v91 = [v90 responseCache];
    v92 = [v91 objectForKeyedSubscript:&unk_287146FD8];
    v93 = [v92 objectForKeyedSubscript:v119];
    [v93 setObject:v89 forKeyedSubscript:@"result"];
  }

  v94 = PLLogCommon();
  if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
  {
    v95 = *(a1 + 32);
    v96 = objc_loadWeakRetained((a1 + 64));
    v97 = [v96 responseCache];
    v98 = [v97 objectForKeyedSubscript:*(a1 + 56)];
    v99 = [v98 objectForKeyedSubscript:v119];
    v100 = [v99 objectForKeyedSubscript:@"result"];
    *buf = 138412802;
    v121 = v95;
    v122 = 2112;
    v123 = v119;
    v124 = 2112;
    v125 = v100;
    _os_log_impl(&dword_25EE51000, v94, OS_LOG_TYPE_INFO, "Responder Service: Stored '%@' as %@: %@", buf, 0x20u);
  }

  objc_sync_exit(v54);
  v101 = objc_loadWeakRetained((a1 + 64));
  v102 = [v101 requestedObjects];

  objc_sync_enter(v102);
  v103 = objc_loadWeakRetained((a1 + 64));
  v104 = [v103 requestedObjects];
  v105 = [v104 objectForKeyedSubscript:*(a1 + 56)];
  [v105 setObject:0 forKeyedSubscript:*(a1 + 32)];

  v106 = PLLogCommon();
  if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
  {
    v112 = *(a1 + 32);
    v113 = objc_loadWeakRetained((a1 + 64));
    v114 = [v113 requestedObjects];
    v115 = [v114 objectForKeyedSubscript:*(a1 + 56)];
    v116 = [v115 count];
    *buf = 138412546;
    v121 = v112;
    v122 = 2048;
    v123 = v116;
    _os_log_debug_impl(&dword_25EE51000, v106, OS_LOG_TYPE_DEBUG, "Responder Service: Completed %@ (%lu remaining)", buf, 0x16u);
  }

  objc_sync_exit(v102);
  v107 = objc_loadWeakRetained((a1 + 64));
  v108 = [v107 orderOfExecution];

  objc_sync_enter(v108);
  v109 = objc_loadWeakRetained((a1 + 64));
  v110 = [v109 orderOfExecution];
  [v110 addObject:*(a1 + 32)];

  objc_sync_exit(v108);
  v111 = *MEMORY[0x277D85DE8];
}

void __47__PLBatteryUIResponderService_linkDependencies__block_invoke_68(uint64_t a1, void *a2, void *a3)
{
  v115 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v67 = a3;
  v6 = [*(a1 + 32) requestedObjects];
  v61 = v5;
  v7 = [v6 objectForKeyedSubscript:v5];

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  obj = v7;
  v57 = [obj countByEnumeratingWithState:&v98 objects:v114 count:16];
  if (!v57)
  {
    goto LABEL_66;
  }

  v58 = *v99;
  do
  {
    v8 = 0;
    do
    {
      if (*v99 != v58)
      {
        objc_enumerationMutation(obj);
      }

      v59 = v8;
      v9 = *(*(&v98 + 1) + 8 * v8);
      v10 = [*(a1 + 32) requestedObjects];
      v11 = [v10 objectForKeyedSubscript:v61];
      v62 = v9;
      v12 = [v11 objectForKeyedSubscript:v9];

      v13 = [v12 dependencies];

      if (!v13)
      {
        goto LABEL_64;
      }

      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v63 = v12;
      v64 = [v12 dependencies];
      v66 = [v64 countByEnumeratingWithState:&v94 objects:v113 count:16];
      if (!v66)
      {
        goto LABEL_63;
      }

      v65 = *v95;
      while (2)
      {
        v14 = 0;
        do
        {
          if (*v95 != v65)
          {
            objc_enumerationMutation(v64);
          }

          v68 = v14;
          v15 = *(*(&v94 + 1) + 8 * v14);
          if (![*(a1 + 32) isOfTypeBreakdownForResponseType:{objc_msgSend(v15, "intValue")}])
          {
            v23 = [*(a1 + 40) objectForKeyedSubscript:v15];

            if (v23)
            {
              goto LABEL_25;
            }

            v51 = PLLogCommon();
            if (!os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
LABEL_71:
              v50 = v67;
              v48 = obj;
              v52 = v63;
LABEL_72:

              v49 = v48;
              goto LABEL_73;
            }

LABEL_74:
            v52 = v63;
            v54 = objc_opt_class();
            v55 = NSStringFromClass(v54);
            v56 = [v15 intValue];
            *buf = 138412802;
            v107 = v55;
            v108 = 2112;
            v109 = v62;
            v110 = 1024;
            v111 = v56;
            _os_log_error_impl(&dword_25EE51000, v51, OS_LOG_TYPE_ERROR, "Responder Service: '%@' (%@) is dependent upon type '%d' but this dependency is missing. Skipping response...", buf, 0x1Cu);

            v50 = v67;
            v48 = obj;
            goto LABEL_72;
          }

          v92 = 0u;
          v93 = 0u;
          v90 = 0u;
          v91 = 0u;
          v16 = PLBatteryBreakdownResponseTypes();
          v17 = [v16 countByEnumeratingWithState:&v90 objects:v112 count:16];
          if (!v17)
          {

LABEL_68:
            v51 = PLLogCommon();
            if (!os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_71;
            }

            goto LABEL_74;
          }

          v18 = v17;
          v19 = 0;
          v20 = *v91;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v91 != v20)
              {
                objc_enumerationMutation(v16);
              }

              v22 = [*(a1 + 40) objectForKeyedSubscript:*(*(&v90 + 1) + 8 * i)];

              if (v22)
              {
                ++v19;
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v90 objects:v112 count:16];
          }

          while (v18);

          if (!v19)
          {
            goto LABEL_68;
          }

LABEL_25:
          v24 = PLLogCommon();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v25 = objc_opt_class();
            v26 = NSStringFromClass(v25);
            v27 = [v15 intValue];
            *buf = 138412802;
            v107 = v26;
            v108 = 2112;
            v109 = v62;
            v110 = 1024;
            v111 = v27;
            _os_log_impl(&dword_25EE51000, v24, OS_LOG_TYPE_INFO, "Responder Service: '%@' (%@) is dependent upon type '%d'.  Linking dependency...", buf, 0x1Cu);
          }

          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          v71 = v67;
          v73 = [v71 countByEnumeratingWithState:&v86 objects:v105 count:16];
          if (v73)
          {
            v28 = *v87;
            v69 = v15;
            v70 = *v87;
            do
            {
              for (j = 0; j != v73; ++j)
              {
                if (*v87 != v28)
                {
                  objc_enumerationMutation(v71);
                }

                v30 = *(*(&v86 + 1) + 8 * j);
                if ([*(a1 + 32) isOfTypeBreakdownForResponseType:{objc_msgSend(v15, "intValue")}])
                {
                  v84 = 0uLL;
                  v85 = 0uLL;
                  v82 = 0uLL;
                  v83 = 0uLL;
                  v31 = PLBatteryBreakdownResponseTypes();
                  v32 = [v31 countByEnumeratingWithState:&v82 objects:v104 count:16];
                  if (v32)
                  {
                    v33 = v32;
                    v72 = j;
                    v34 = *v83;
                    do
                    {
                      for (k = 0; k != v33; ++k)
                      {
                        if (*v83 != v34)
                        {
                          objc_enumerationMutation(v31);
                        }

                        v36 = *(*(&v82 + 1) + 8 * k);
                        v37 = [*(a1 + 40) objectForKeyedSubscript:v36];

                        if (v37)
                        {
                          v80 = 0u;
                          v81 = 0u;
                          v78 = 0u;
                          v79 = 0u;
                          v38 = [*(a1 + 40) objectForKeyedSubscript:v36];
                          v39 = [v38 countByEnumeratingWithState:&v78 objects:v103 count:16];
                          if (v39)
                          {
                            v40 = v39;
                            v41 = *v79;
                            do
                            {
                              for (m = 0; m != v40; ++m)
                              {
                                if (*v79 != v41)
                                {
                                  objc_enumerationMutation(v38);
                                }

                                [v30 addDependency:*(*(&v78 + 1) + 8 * m)];
                              }

                              v40 = [v38 countByEnumeratingWithState:&v78 objects:v103 count:16];
                            }

                            while (v40);
                          }
                        }
                      }

                      v33 = [v31 countByEnumeratingWithState:&v82 objects:v104 count:16];
                    }

                    while (v33);
                    v15 = v69;
                    v28 = v70;
                    j = v72;
                  }

                  else
                  {
                    v28 = v70;
                  }
                }

                else
                {
                  v76 = 0uLL;
                  v77 = 0uLL;
                  v74 = 0uLL;
                  v75 = 0uLL;
                  v31 = [*(a1 + 40) objectForKeyedSubscript:v15];
                  v43 = [v31 countByEnumeratingWithState:&v74 objects:v102 count:16];
                  if (v43)
                  {
                    v44 = v43;
                    v45 = j;
                    v46 = *v75;
                    do
                    {
                      for (n = 0; n != v44; ++n)
                      {
                        if (*v75 != v46)
                        {
                          objc_enumerationMutation(v31);
                        }

                        [v30 addDependency:*(*(&v74 + 1) + 8 * n)];
                      }

                      v44 = [v31 countByEnumeratingWithState:&v74 objects:v102 count:16];
                    }

                    while (v44);
                    j = v45;
                  }
                }
              }

              v73 = [v71 countByEnumeratingWithState:&v86 objects:v105 count:16];
            }

            while (v73);
          }

          v14 = v68 + 1;
        }

        while (v68 + 1 != v66);
        v66 = [v64 countByEnumeratingWithState:&v94 objects:v113 count:16];
        if (v66)
        {
          continue;
        }

        break;
      }

LABEL_63:

      v12 = v63;
LABEL_64:

      v8 = v59 + 1;
    }

    while (v59 + 1 != v57);
    v57 = [obj countByEnumeratingWithState:&v98 objects:v114 count:16];
  }

  while (v57);
LABEL_66:
  v48 = obj;

  v49 = [*(a1 + 32) executionChain];
  v50 = v67;
  [v49 addObjectsFromArray:v67];
LABEL_73:

  v53 = *MEMORY[0x277D85DE8];
}

- (void)run
{
  v38 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl() && [(PLBatteryUIResponderService *)self shouldUseMidnightQueryRange])
  {
    if ([(PLBatteryUIResponderService *)self demoMode])
    {
      v3 = +[PLUtilities getLastBatteryTimestamp];
      convertFromMonotonicToSystem = [v3 convertFromMonotonicToSystem];
    }

    else
    {
      convertFromMonotonicToSystem = [MEMORY[0x277CBEAA8] date];
    }

    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v21 = [currentCalendar startOfDayForDate:convertFromMonotonicToSystem];

    v22 = [v21 dateByAddingTimeInterval:86400.0];
    v23 = MEMORY[0x277CCABB0];
    [v22 timeIntervalSince1970];
    v24 = [v23 numberWithDouble:?];
    resultDictionary = [(PLBatteryUIResponderService *)self resultDictionary];
    [resultDictionary setObject:v24 forKeyedSubscript:@"PLBatteryUIQueryTime"];
  }

  else
  {
    if (![(PLBatteryUIResponderService *)self demoMode])
    {
      v8 = MEMORY[0x277CCABB0];
      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSince1970];
      v10 = [v8 numberWithDouble:?];
      resultDictionary2 = [(PLBatteryUIResponderService *)self resultDictionary];
      [resultDictionary2 setObject:v10 forKeyedSubscript:@"PLBatteryUIQueryTime"];

      goto LABEL_20;
    }

    convertFromMonotonicToSystem = [MEMORY[0x277D3F180] objectForKey:@"BUI_DEMO_QUERY_TIME" forApplicationID:@"com.apple.powerlogd" synchronize:1];
    v5 = [MEMORY[0x277D3F180] objectForKey:@"BUI_DEMO_QUERY_TIME_OFFSET" forApplicationID:@"com.apple.powerlogd" synchronize:1];
    if (convertFromMonotonicToSystem && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [convertFromMonotonicToSystem doubleValue];
      v7 = v6;
    }

    else
    {
      v12 = +[PLUtilities getLastBatteryTimestamp];
      convertFromMonotonicToSystem2 = [v12 convertFromMonotonicToSystem];
      [convertFromMonotonicToSystem2 timeIntervalSince1970];
      v7 = v14;
    }

    v15 = 0.0;
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v5 doubleValue];
        v15 = v16;
      }
    }

    v17 = [MEMORY[0x277CCABB0] numberWithDouble:v7 + v15];
    resultDictionary3 = [(PLBatteryUIResponderService *)self resultDictionary];
    [resultDictionary3 setObject:v17 forKeyedSubscript:@"PLBatteryUIQueryTime"];

    v19 = PLLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      LOWORD(v36) = 0;
      _os_log_impl(&dword_25EE51000, v19, OS_LOG_TYPE_INFO, "Responder Service: Looking for Query Time...", &v36, 2u);
    }
  }

LABEL_20:
  v26 = PLLogCommon();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    resultDictionary4 = [(PLBatteryUIResponderService *)self resultDictionary];
    v28 = [resultDictionary4 objectForKeyedSubscript:@"PLBatteryUIQueryTime"];
    [v28 doubleValue];
    v36 = 134217984;
    v37 = v29;
    _os_log_impl(&dword_25EE51000, v26, OS_LOG_TYPE_INFO, "Responder Service: Query Time = %f", &v36, 0xCu);
  }

  operationQueue = [(PLBatteryUIResponderService *)self operationQueue];
  executionChain = [(PLBatteryUIResponderService *)self executionChain];
  [operationQueue addOperations:executionChain waitUntilFinished:1];

  v32 = PLLogCommon();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    orderOfExecution = [(PLBatteryUIResponderService *)self orderOfExecution];
    v34 = [orderOfExecution componentsJoinedByString:@" -> "];
    v36 = 138412290;
    v37 = v34;
    _os_log_impl(&dword_25EE51000, v32, OS_LOG_TYPE_INFO, "Responder Service: Ran response objects in order: %@", &v36, 0xCu);
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)coalesce
{
  configuration = [(PLBatteryUIResponderService *)self configuration];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __39__PLBatteryUIResponderService_coalesce__block_invoke;
  v18[3] = &unk_279A5E430;
  v18[4] = self;
  [configuration enumerateKeysAndObjectsUsingBlock:v18];

  v4 = MEMORY[0x277CBEAA8];
  resultDictionary = [(PLBatteryUIResponderService *)self resultDictionary];
  v6 = [resultDictionary objectForKeyedSubscript:@"PLBatteryUIQueryTime"];
  [v6 doubleValue];
  v7 = [v4 dateWithTimeIntervalSince1970:?];

  if (_os_feature_enabled_impl() && [(PLBatteryUIResponderService *)self shouldUseMidnightQueryRange])
  {
    v8 = MEMORY[0x277CCABB0];
    [v7 timeIntervalSince1970];
    v9 = [v8 numberWithDouble:?];
    resultDictionary2 = [(PLBatteryUIResponderService *)self resultDictionary];
    [resultDictionary2 setObject:v9 forKeyedSubscript:@"endOfDay"];

    v11 = MEMORY[0x277CCABB0];
    [v7 timeIntervalSince1970];
  }

  else
  {
    v12 = MEMORY[0x277CCABB0];
    [(PLBatteryUIResponderService *)self endOfDayWithNow:v7];
    v13 = [v12 numberWithDouble:?];
    resultDictionary3 = [(PLBatteryUIResponderService *)self resultDictionary];
    [resultDictionary3 setObject:v13 forKeyedSubscript:@"endOfDay"];

    v11 = MEMORY[0x277CCABB0];
    [(PLBatteryUIResponderService *)self endOfHourWithNow:v7];
  }

  v15 = [v11 numberWithDouble:?];
  resultDictionary4 = [(PLBatteryUIResponderService *)self resultDictionary];
  [resultDictionary4 setObject:v15 forKeyedSubscript:@"endOfHour"];

  resultDictionary5 = [(PLBatteryUIResponderService *)self resultDictionary];
  [resultDictionary5 setObject:&unk_28714B998 forKeyedSubscript:@"PLBatteryUIXPCVersionKey"];
}

void __39__PLBatteryUIResponderService_coalesce__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v36 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = PLBatteryUsageUIKeyFromConfiguration();
    v5 = [v36 objectForKeyedSubscript:@"enum"];
    v6 = [v5 intValue];

    v7 = PLBatteryUsageUIStringForResponseType();
    v8 = [*(a1 + 32) responseCache];
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
    v10 = [v8 objectForKeyedSubscript:v9];
    v11 = [v10 count];

    if (v11 == 1)
    {
      v12 = [MEMORY[0x277CBEB38] dictionary];
      v13 = [*(a1 + 32) resultDictionary];
      [v13 setObject:v12 forKeyedSubscript:v7];

      v14 = [*(a1 + 32) resultDictionary];
      v15 = [v14 objectForKeyedSubscript:v7];
      [v15 setObject:v36 forKeyedSubscript:@"configuration"];

      v16 = [*(a1 + 32) responseCache];
      v17 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
      v18 = [v16 objectForKeyedSubscript:v17];
      v19 = [v18 objectForKeyedSubscript:v4];
      v20 = [v19 objectForKeyedSubscript:@"result"];
      v21 = [*(a1 + 32) resultDictionary];
      v22 = v7;
      [v21 objectForKeyedSubscript:v7];
      v24 = v23 = v4;
      [v24 setObject:v20 forKeyedSubscript:@"result"];
    }

    else
    {
      v25 = [*(a1 + 32) resultDictionary];
      v26 = [v25 objectForKeyedSubscript:v7];

      if (!v26)
      {
        v27 = [MEMORY[0x277CBEB38] dictionary];
        v28 = [*(a1 + 32) resultDictionary];
        [v28 setObject:v27 forKeyedSubscript:v7];
      }

      v29 = [MEMORY[0x277CBEB38] dictionary];
      v30 = [*(a1 + 32) resultDictionary];
      v31 = [v30 objectForKeyedSubscript:v7];
      [v31 setObject:v29 forKeyedSubscript:v4];

      v32 = [*(a1 + 32) resultDictionary];
      v33 = [v32 objectForKeyedSubscript:v7];
      v34 = [v33 objectForKeyedSubscript:v4];
      [v34 setObject:v36 forKeyedSubscript:@"configuration"];

      v16 = [*(a1 + 32) responseCache];
      v17 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
      v18 = [v16 objectForKeyedSubscript:v17];
      v19 = [v18 objectForKeyedSubscript:v4];
      v20 = [v19 objectForKeyedSubscript:@"result"];
      v21 = [*(a1 + 32) resultDictionary];
      v22 = v7;
      [v21 objectForKeyedSubscript:v7];
      v24 = v23 = v4;
      v35 = [v24 objectForKeyedSubscript:v23];
      [v35 setObject:v20 forKeyedSubscript:@"result"];
    }
  }
}

- (id)result
{
  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v3, OS_LOG_TYPE_INFO, "Responder Service: Converting response to legacy format...", buf, 2u);
  }

  resultDictionary = [(PLBatteryUIResponderService *)self resultDictionary];
  v5 = [(PLBatteryUIResponderService *)self convertResponseToLegacyFormat:resultDictionary];

  v6 = [v5 mutableCopy];
  [(PLBatteryUIResponderService *)self setResultDictionary:v6];

  if ([(PLBatteryUIResponderService *)self skipPlistWrite])
  {
    v7 = PLLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v43 = 0;
      _os_log_impl(&dword_25EE51000, v7, OS_LOG_TYPE_INFO, "Skipping write to plist", v43, 2u);
    }

    resultDictionary2 = [(PLBatteryUIResponderService *)self resultDictionary];
    v9 = [resultDictionary2 copy];
    goto LABEL_31;
  }

  v10 = +[PLUtilities containerPath];
  v11 = [v10 stringByAppendingString:@"/Library/BatteryLife/Debug/"];
  [PLUtilities createAndChownDirectoryIfDirectoryDoesNotExist:v11];

  v12 = +[PLUtilities containerPath];
  resultDictionary2 = [v12 stringByAppendingString:@"/Library/BatteryLife/Debug/"];

  requestingService = [(PLBatteryUIResponderService *)self requestingService];

  if (requestingService)
  {
    v14 = MEMORY[0x277CCACA8];
    requestingService2 = [(PLBatteryUIResponderService *)self requestingService];
    v16 = [v14 stringWithFormat:@"BatteryUI%@", requestingService2];

    v17 = [MEMORY[0x277CBEBC0] fileURLWithPath:resultDictionary2 isDirectory:1];
    v18 = [v17 URLByAppendingPathComponent:v16];

    [v18 URLByAppendingPathExtension:@"plist"];
  }

  else
  {
    v19 = MEMORY[0x277CBEBC0];
    v16 = +[PLUtilities containerPath];
    v18 = [v16 stringByAppendingString:@"/Library/BatteryLife/Debug/BatteryUI.plist"];
    [v19 fileURLWithPath:v18];
  }
  v20 = ;

  v21 = PLLogCommon();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponderService result];
  }

  resultDictionary3 = [(PLBatteryUIResponderService *)self resultDictionary];
  v42 = 0;
  v23 = [resultDictionary3 writeToURL:v20 error:&v42];
  v24 = v42;

  if (v23)
  {
    path = [v20 path];
    [PLUtilities setMobileOwnerForFile:path];

    v26 = PLLogCommon();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponderService result];
    }

    [MEMORY[0x277D3F180] doubleForKey:@"kPPSDebugLogRetentionDuration" ifNotSet:1209600.0];
    v27 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:?];
    v28 = [PPSFileUtilities markAsPurgeable:v20 urgency:512 startDate:v27];

    if (v28)
    {
      goto LABEL_21;
    }

    v29 = PLLogCommon();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [PLBatteryUIResponderService result];
    }
  }

  else
  {
    v29 = PLLogCommon();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [PLBatteryUIResponderService result];
    }
  }

LABEL_21:
  plistCopyDestination = [(PLBatteryUIResponderService *)self plistCopyDestination];

  if (plistCopyDestination)
  {
    v31 = resultDictionary2;
    plistCopyDestination2 = [(PLBatteryUIResponderService *)self plistCopyDestination];
    v33 = [PLUtilities PLCopyItemsFromPath:v31 toPath:plistCopyDestination2];

    if (v33)
    {
      v34 = MEMORY[0x277CBEBC0];
      lastPathComponent = [v20 lastPathComponent];
      v36 = [v31 stringByAppendingPathComponent:lastPathComponent];
      v37 = [v34 fileURLWithPath:v36];
      [PPSFileUtilities markAsPurgeable:v37 urgency:512 startDate:0];

      v38 = PLLogCommon();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        [(PLBatteryUIResponderService *)self result];
      }
    }

    else
    {
      v39 = PLLogCommon();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        [(PLBatteryUIResponderService *)self result];
      }

      [(PLBatteryUIResponderService *)self setResultDictionary:0];
    }
  }

  resultDictionary4 = [(PLBatteryUIResponderService *)self resultDictionary];
  v9 = [resultDictionary4 copy];

LABEL_31:

  return v9;
}

- (double)endOfDayWithNow:(id)now
{
  v3 = MEMORY[0x277CBEA80];
  nowCopy = now;
  currentCalendar = [v3 currentCalendar];
  v6 = [currentCalendar components:60 fromDate:nowCopy];

  v7 = [v6 valueForComponent:32];
  [v6 setValue:(v7 - fmod(v7 forComponent:{3.0) + 3.0), 32}];
  v8 = [currentCalendar dateFromComponents:v6];
  convertFromSystemToMonotonic = [v8 convertFromSystemToMonotonic];
  v10 = [convertFromSystemToMonotonic dateByAddingTimeInterval:-86400.0];
  v11 = convertFromSystemToMonotonic;
  [v10 timeIntervalSince1970];
  v13 = v12;
  [v11 timeIntervalSince1970];
  v15 = v14;

  v16 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v13 + v15 - v13];
  convertFromMonotonicToSystem = [v16 convertFromMonotonicToSystem];
  [convertFromMonotonicToSystem timeIntervalSince1970];
  v19 = v18;

  return v19;
}

- (double)endOfHourWithNow:(id)now
{
  v3 = PLCalculateEndOfHourWithDate();
  [v3 timeIntervalSince1970];
  v5 = v4;

  return v5;
}

- (id)possibleRequests
{
  v6[23] = *MEMORY[0x277D85DE8];
  v5[0] = &unk_287146FF0;
  v6[0] = objc_opt_class();
  v5[1] = &unk_287147008;
  v6[1] = objc_opt_class();
  v5[2] = &unk_287147020;
  v6[2] = objc_opt_class();
  v5[3] = &unk_287147038;
  v6[3] = objc_opt_class();
  v5[4] = &unk_287147050;
  v6[4] = objc_opt_class();
  v5[5] = &unk_287147068;
  v6[5] = objc_opt_class();
  v5[6] = &unk_287147080;
  v6[6] = objc_opt_class();
  v5[7] = &unk_287147098;
  v6[7] = objc_opt_class();
  v5[8] = &unk_2871470B0;
  v6[8] = objc_opt_class();
  v5[9] = &unk_2871470C8;
  v6[9] = objc_opt_class();
  v5[10] = &unk_2871470E0;
  v6[10] = objc_opt_class();
  v5[11] = &unk_2871470F8;
  v6[11] = objc_opt_class();
  v5[12] = &unk_287147110;
  v6[12] = objc_opt_class();
  v5[13] = &unk_287147128;
  v6[13] = objc_opt_class();
  v5[14] = &unk_287147140;
  v6[14] = objc_opt_class();
  v5[15] = &unk_287147158;
  v6[15] = objc_opt_class();
  v5[16] = &unk_287147170;
  v6[16] = objc_opt_class();
  v5[17] = &unk_287147188;
  v6[17] = objc_opt_class();
  v5[18] = &unk_2871471A0;
  v6[18] = objc_opt_class();
  v5[19] = &unk_2871471B8;
  v6[19] = objc_opt_class();
  v5[20] = &unk_2871471D0;
  v6[20] = objc_opt_class();
  v5[21] = &unk_2871471E8;
  v6[21] = objc_opt_class();
  v5[22] = &unk_287147200;
  v6[22] = objc_opt_class();
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:23];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)constructResponseObjectFromType:(int64_t)type
{
  possibleRequests = [(PLBatteryUIResponderService *)self possibleRequests];
  v6 = _os_feature_enabled_impl();
  v7 = PLLogCommon();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      [PLBatteryUIResponderService constructResponseObjectFromType:];
    }

    v9 = [possibleRequests mutableCopy];
    [v9 setObject:objc_opt_class() forKeyedSubscript:&unk_287147218];
    v7 = possibleRequests;
    possibleRequests = v9;
  }

  else if (v8)
  {
    [PLBatteryUIResponderService constructResponseObjectFromType:];
  }

  v10 = _os_feature_enabled_impl();
  v11 = PLLogCommon();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
  if (v10)
  {
    if (v12)
    {
      [PLBatteryUIResponderService constructResponseObjectFromType:];
    }
  }

  else if (v12)
  {
    [PLBatteryUIResponderService constructResponseObjectFromType:];
  }

  allKeys = [possibleRequests allKeys];
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v15 = [allKeys containsObject:v14];

  if (v15)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:type];
    v17 = [possibleRequests objectForKeyedSubscript:v16];

    v18 = objc_alloc_init(v17);
    v19 = objc_initWeak(&location, self);
    [v18 setResponderService:self];

    objc_destroyWeak(&location);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)convertResponseToLegacyFormat:(id)format
{
  v44 = *MEMORY[0x277D85DE8];
  formatCopy = format;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = [formatCopy objectForKeyedSubscript:@"endOfHour"];
  [dictionary setObject:v6 forKeyedSubscript:@"endOfHour"];

  v7 = [formatCopy objectForKeyedSubscript:@"endOfDay"];
  [dictionary setObject:v7 forKeyedSubscript:@"endOfDay"];

  v8 = [formatCopy objectForKeyedSubscript:@"PLBatteryUIXPCVersionKey"];
  [dictionary setObject:v8 forKeyedSubscript:@"PLBatteryUIXPCVersionKey"];

  v9 = [formatCopy objectForKeyedSubscript:@"PLBatteryUIQueryTime"];
  [dictionary setObject:v9 forKeyedSubscript:@"PLBatteryUIQueryTime"];

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:dictionary2 forKeyedSubscript:@"Breakdown"];

  array = [MEMORY[0x277CBEB18] array];
  v12 = [dictionary objectForKeyedSubscript:@"Breakdown"];
  [v12 setObject:array forKeyedSubscript:@"PLBatteryUISuggestionArrayKey"];

  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:dictionary3 forKeyedSubscript:@"Graph"];

  dictionary4 = [MEMORY[0x277CBEB38] dictionary];
  v15 = [dictionary objectForKeyedSubscript:@"Graph"];
  [v15 setObject:dictionary4 forKeyedSubscript:@"PLBatteryUIGraph24hrs"];

  array2 = [MEMORY[0x277CBEB18] array];
  v17 = [dictionary objectForKeyedSubscript:@"Graph"];
  [v17 setObject:array2 forKeyedSubscript:@"PLBatteryUIGraphDays"];

  array3 = [MEMORY[0x277CBEB18] array];
  v19 = [dictionary objectForKeyedSubscript:@"Graph"];
  [v19 setObject:array3 forKeyedSubscript:@"PLBatteryUIGraphDays24hrs"];

  v20 = [dictionary objectForKeyedSubscript:@"Breakdown"];
  [v20 setObject:&unk_287147230 forKeyedSubscript:@"PLBatteryUIDataDurationKey"];

  array4 = [MEMORY[0x277CBEB18] array];
  v22 = [dictionary objectForKeyedSubscript:@"Breakdown"];
  [v22 setObject:array4 forKeyedSubscript:@"PLBatteryUIUrsaIssuesKey"];

  configuration = [(PLBatteryUIResponderService *)self configuration];
  v36 = MEMORY[0x277D85DD0];
  v37 = 3221225472;
  v38 = __61__PLBatteryUIResponderService_convertResponseToLegacyFormat___block_invoke;
  v39 = &unk_279A5EBC0;
  v40 = formatCopy;
  v24 = dictionary;
  v41 = v24;
  v25 = formatCopy;
  [configuration enumerateKeysAndObjectsUsingBlock:&v36];

  if (_os_feature_enabled_impl())
  {
    v26 = PLLogCommon();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25EE51000, v26, OS_LOG_TYPE_DEFAULT, "Responder Service: createCoalescedBreakdownWithResponse", buf, 2u);
    }

    v27 = [v24 copy];
    v28 = [(PLBatteryUIResponderService *)self createCoalescedBreakdownWithResponse:v27];

    v29 = PLLogCommon();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [v28 count];
      *buf = 67109120;
      v43 = v30;
      _os_log_impl(&dword_25EE51000, v29, OS_LOG_TYPE_DEFAULT, "Responder Service: coalescedBreakdown count: %d", buf, 8u);
    }

    if (v28)
    {
      [v24 setObject:v28 forKeyedSubscript:@"PLBatteryUIDailyCoalescedBreakdown"];
    }

    else
    {
      v31 = PLLogCommon();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [PLBatteryUIResponderService convertResponseToLegacyFormat:];
      }
    }
  }

  v32 = v41;
  v33 = v24;

  v34 = *MEMORY[0x277D85DE8];
  return v24;
}

void __61__PLBatteryUIResponderService_convertResponseToLegacyFormat___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v187 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 objectForKeyedSubscript:@"enum"];
    v6 = [v5 intValue];

    v7 = [v4 objectForKeyedSubscript:@"bucket"];
    [v7 doubleValue];
    v9 = v8;

    v10 = [v4 objectForKeyedSubscript:@"end"];
    [v10 doubleValue];
    v12 = v11;
    v13 = [v4 objectForKeyedSubscript:@"start"];
    [v13 doubleValue];
    v15 = v14;

    v16 = [v4 objectForKeyedSubscript:@"isDynamicEnd"];
    v17 = [v16 BOOLValue];

    v18 = PLBatteryUsageUIStringForResponseType();
    v19 = PLBatteryUsageUIKeyFromConfiguration();
    v20 = [*(a1 + 32) objectForKeyedSubscript:v18];
    v21 = [v20 objectForKeyedSubscript:@"result"];
    v174 = a1;
    v22 = [*(a1 + 32) objectForKeyedSubscript:v18];
    v23 = v22;
    if (v21)
    {
      v24 = [v22 objectForKeyedSubscript:@"result"];
    }

    else
    {
      [v22 objectForKeyedSubscript:v19];
      v25 = v4;
      v26 = v18;
      v27 = v17;
      v29 = v28 = v19;
      v24 = [v29 objectForKeyedSubscript:@"result"];

      v19 = v28;
      v17 = v27;
      v18 = v26;
      v4 = v25;
    }

    v30 = v24;
    if (v24)
    {
      v31 = v12 - v15;
      switch(v6)
      {
        case 0:
          if (v31 == 86400.0)
          {
            [*(v174 + 40) objectForKeyedSubscript:@"Graph"];
            v33 = v32 = v19;
            v34 = [v33 objectForKeyedSubscript:@"PLBatteryUIGraph24hrs"];
            [v34 setObject:v30 forKeyedSubscript:@"PLBatteryUIChargingIntervalsKey"];
            goto LABEL_9;
          }

          break;
        case 1:
          v102 = *(v174 + 40);
          v103 = @"PLBatteryUILastChargeKey";
          goto LABEL_108;
        case 2:
          if (v31 != 864000.0 || v9 != 86400.0)
          {
            break;
          }

          v164 = v19;
          v166 = v18;
          v161 = v24;
          v67 = v24;
          v90 = PLLogCommon();
          if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
          {
            __61__PLBatteryUIResponderService_convertResponseToLegacyFormat___block_invoke_cold_1(v67);
          }

          v91 = [*(v174 + 40) objectForKeyedSubscript:@"Graph"];
          v92 = [v91 objectForKeyedSubscript:@"PLBatteryUIGraphDays"];
          v93 = [v92 count];

          if (v93 <= 9)
          {
            v94 = [*(v174 + 40) objectForKeyedSubscript:@"Graph"];
            v95 = [v94 objectForKeyedSubscript:@"PLBatteryUIGraphDays"];
            v96 = [v95 count];

            if (10 - v96 >= 1)
            {
              v97 = v96 - 10;
              do
              {
                v98 = [*(v174 + 40) objectForKeyedSubscript:{@"Graph", v161}];
                v99 = [v98 objectForKeyedSubscript:@"PLBatteryUIGraphDays"];
                v100 = objc_opt_new();
                [v99 addObject:v100];

                v101 = __CFADD__(v97++, 1);
              }

              while (!v101);
            }
          }

          v179[0] = MEMORY[0x277D85DD0];
          v179[1] = 3221225472;
          v179[2] = __61__PLBatteryUIResponderService_convertResponseToLegacyFormat___block_invoke_236;
          v179[3] = &unk_279A5E370;
          v180 = *(v174 + 40);
          [v67 enumerateObjectsUsingBlock:v179];

          goto LABEL_66;
        case 3:
          if (v31 != 1296000.0 || v9 != 86400.0)
          {
            break;
          }

          v102 = *(v174 + 40);
          v103 = @"Drain";
          goto LABEL_108;
        case 4:
          if (v31 == 86400.0 && v9 == 900.0)
          {
            [*(v174 + 40) objectForKeyedSubscript:@"Graph"];
            v65 = v64 = v19;
            v66 = [v65 objectForKeyedSubscript:@"PLBatteryUIGraph24hrs"];
            [v66 setObject:v24 forKeyedSubscript:@"PLBatteryUIBatteryLevelsKey"];

            v19 = v64;
          }

          if (v31 <= 86400.0)
          {
            break;
          }

          v164 = v19;
          v166 = v18;
          v67 = v24;
          v68 = (86400.0 / v9);
          LODWORD(v18) = ([v67 count] / v68);
          v69 = [v67 count];
          if (v18 >= v69)
          {
            v18 = v69;
          }

          else
          {
            v18 = v18;
          }

          v70 = [*(v174 + 40) objectForKeyedSubscript:{@"Graph", v24}];
          v71 = [v70 objectForKeyedSubscript:@"PLBatteryUIGraphDays24hrs"];
          v72 = [v71 count];

          v169 = v18;
          if (v72 < v18)
          {
            v73 = [*(v174 + 40) objectForKeyedSubscript:@"Graph"];
            v74 = [v73 objectForKeyedSubscript:@"PLBatteryUIGraphDays24hrs"];
            v75 = v18 - [v74 count];

            if (v75 >= 1)
            {
              do
              {
                v76 = [*(v174 + 40) objectForKeyedSubscript:@"Graph"];
                v77 = [v76 objectForKeyedSubscript:@"PLBatteryUIGraphDays24hrs"];
                v78 = objc_opt_new();
                [v77 addObject:v78];

                --v75;
              }

              while (v75);
            }
          }

          if (v169 >= 1)
          {
            v79 = 0;
            for (i = 0; i != v169; ++i)
            {
              v81 = objc_opt_new();
              v82 = (86400.0 / v9);
              v83 = v79;
              if (v68 >= 1)
              {
                do
                {
                  v84 = [v67 objectAtIndexedSubscript:v83];
                  [v81 addObject:v84];

                  ++v83;
                  --v82;
                }

                while (v82);
              }

              v85 = [*(v174 + 40) objectForKeyedSubscript:@"Graph"];
              v86 = [v85 objectForKeyedSubscript:@"PLBatteryUIGraphDays24hrs"];
              v87 = [v86 objectAtIndexedSubscript:i];
              [v87 setObject:v81 forKeyedSubscript:@"PLBatteryUIBatteryLevelsKey"];

              v79 += v68;
            }
          }

LABEL_66:

          v18 = v166;
          goto LABEL_88;
        case 5:
          v165 = v19;
          v168 = v18;
          if (v31 == 86400.0 && v9 == 3600.0)
          {
            v183[0] = @"PLBatteryUIGraphHourly";
            v171 = [v24 objectForKeyedSubscript:@"PLBatteryUIScreenOnTimeKey"];
            v129 = [v171 objectForKeyedSubscript:@"PLBatteryUIGraphByBucket"];
            v184[0] = v129;
            v183[1] = @"PLBatteryUIGraphTotal";
            v130 = [v24 objectForKeyedSubscript:@"PLBatteryUIScreenOnTimeKey"];
            v131 = [v130 objectForKeyedSubscript:@"PLBatteryUIGraphTotal"];
            v184[1] = v131;
            v132 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v184 forKeys:v183 count:2];
            v133 = [*(v174 + 40) objectForKeyedSubscript:@"Graph"];
            v134 = [v133 objectForKeyedSubscript:@"PLBatteryUIGraph24hrs"];
            [v134 setObject:v132 forKeyedSubscript:@"PLBatteryUIScreenOnTimeKey"];

            v181[0] = @"PLBatteryUIGraphHourly";
            v18 = v168;
            v172 = [v24 objectForKeyedSubscript:@"PLBatteryUIScreenOffTimeKey"];
            v162 = [v172 objectForKeyedSubscript:@"PLBatteryUIGraphByBucket"];
            v181[1] = @"PLBatteryUIGraphTotal";
            v182[0] = v162;
            v135 = [v24 objectForKeyedSubscript:@"PLBatteryUIScreenOffTimeKey"];
            v136 = [v135 objectForKeyedSubscript:@"PLBatteryUIGraphTotal"];
            v182[1] = v136;
            v137 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v182 forKeys:v181 count:2];
            v138 = [*(v174 + 40) objectForKeyedSubscript:@"Graph"];
            v139 = [v138 objectForKeyedSubscript:@"PLBatteryUIGraph24hrs"];
            [v139 setObject:v137 forKeyedSubscript:@"PLBatteryUIScreenOffTimeKey"];

            v30 = v24;
          }

          if (v31 == 864000.0 && v9 == 86400.0)
          {
            v140 = [v30 objectForKeyedSubscript:@"PLBatteryUIScreenOnTimeKey"];
            v173 = [v140 objectForKeyedSubscript:@"PLBatteryUIGraphByBucket"];

            v163 = v30;
            v141 = [v30 objectForKeyedSubscript:@"PLBatteryUIScreenOffTimeKey"];
            v142 = [v141 objectForKeyedSubscript:@"PLBatteryUIGraphByBucket"];

            v143 = [*(v174 + 40) objectForKeyedSubscript:@"Graph"];
            v144 = [v143 objectForKeyedSubscript:@"PLBatteryUIGraphDays"];
            v145 = [v144 count];

            if (v145 <= 9)
            {
              v146 = [*(v174 + 40) objectForKeyedSubscript:@"Graph"];
              v147 = [v146 objectForKeyedSubscript:@"PLBatteryUIGraphDays"];
              v148 = [v147 count];

              if (10 - v148 >= 1)
              {
                v149 = v148 - 10;
                do
                {
                  v150 = [*(v174 + 40) objectForKeyedSubscript:@"Graph"];
                  v151 = [v150 objectForKeyedSubscript:@"PLBatteryUIGraphDays"];
                  v152 = objc_opt_new();
                  [v151 addObject:v152];

                  v101 = __CFADD__(v149++, 1);
                }

                while (!v101);
              }
            }

            v177[0] = MEMORY[0x277D85DD0];
            v177[1] = 3221225472;
            v177[2] = __61__PLBatteryUIResponderService_convertResponseToLegacyFormat___block_invoke_280;
            v177[3] = &unk_279A5EB98;
            v178 = *(v174 + 40);
            [v173 enumerateObjectsUsingBlock:v177];
            v175[0] = MEMORY[0x277D85DD0];
            v175[1] = 3221225472;
            v175[2] = __61__PLBatteryUIResponderService_convertResponseToLegacyFormat___block_invoke_2;
            v175[3] = &unk_279A5EB98;
            v176 = *(v174 + 40);
            [v142 enumerateObjectsUsingBlock:v175];

            v18 = v168;
            v30 = v163;
          }

          v153 = MEMORY[0x277CCABB0];
          v154 = [v30 objectForKeyedSubscript:@"PLBatteryUIDidAdjustTimesKey"];
          v155 = [v153 numberWithBool:{objc_msgSend(v154, "BOOLValue")}];
          v156 = [*(v174 + 40) objectForKeyedSubscript:@"Graph"];
          [v156 setObject:v155 forKeyedSubscript:@"PLBatteryUIDidAdjustTimesKey"];

          v19 = v165;
          break;
        case 6:
          if (_os_feature_enabled_impl())
          {
            v102 = *(v174 + 40);
            v103 = @"PLBatteryUIPausedChargingKey";
LABEL_108:
            [v102 setObject:v24 forKeyedSubscript:v103];
          }

          else
          {
            v160 = PLLogCommon();
            if (os_log_type_enabled(v160, OS_LOG_TYPE_DEBUG))
            {
              __61__PLBatteryUIResponderService_convertResponseToLegacyFormat___block_invoke_cold_2();
            }
          }

          break;
        case 7:
          if (v31 == 86400.0)
          {
            v104 = v19;
            v105 = PLLogCommon();
            if (os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v186 = *&v24;
              _os_log_impl(&dword_25EE51000, v105, OS_LOG_TYPE_INFO, "response=%@", buf, 0xCu);
            }

            v106 = [*(v174 + 40) objectForKeyedSubscript:@"Graph"];
            v107 = [v106 objectForKeyedSubscript:@"PLBatteryUIGraph24hrs"];
            [v107 setObject:v24 forKeyedSubscript:@"PLBatteryUIChargingStateIntervalsDictKey"];

            v19 = v104;
          }

          if (v31 <= 86400.0 || v9 != 86400.0)
          {
            break;
          }

          v164 = v19;
          v167 = v18;
          v108 = PLLogCommon();
          if (os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v186 = *&v24;
            _os_log_impl(&dword_25EE51000, v108, OS_LOG_TYPE_INFO, "response=%@", buf, 0xCu);
          }

          LODWORD(v109) = (v31 / 86400.0);
          v110 = v24;
          v111 = [v110 count];
          if (v109 >= v111)
          {
            v109 = v111;
          }

          else
          {
            v109 = v109;
          }

          v112 = [*(v174 + 40) objectForKeyedSubscript:{@"Graph", v24}];
          v113 = [v112 objectForKeyedSubscript:@"PLBatteryUIGraphDays24hrs"];
          v114 = [v113 count];

          v170 = v109;
          if (v114 < v109)
          {
            v115 = [*(v174 + 40) objectForKeyedSubscript:@"Graph"];
            v116 = [v115 objectForKeyedSubscript:@"PLBatteryUIGraphDays24hrs"];
            v117 = v109 - [v116 count];

            if (v117 >= 1)
            {
              do
              {
                v118 = [*(v174 + 40) objectForKeyedSubscript:@"Graph"];
                v119 = [v118 objectForKeyedSubscript:@"PLBatteryUIGraphDays24hrs"];
                v120 = objc_opt_new();
                [v119 addObject:v120];

                --v117;
              }

              while (v117);
            }
          }

          v18 = v167;
          if (v170 >= 1)
          {
            for (j = 0; j != v170; ++j)
            {
              v122 = [v110 objectAtIndexedSubscript:j];
              v123 = [*(v174 + 40) objectForKeyedSubscript:@"Graph"];
              v124 = [v123 objectForKeyedSubscript:@"PLBatteryUIGraphDays24hrs"];
              v125 = [v124 objectAtIndexedSubscript:j];
              [v125 setObject:v122 forKeyedSubscript:@"PLBatteryUIChargingStateIntervalsDictKey"];
            }
          }

LABEL_88:
          v30 = v161;
          v19 = v164;
          break;
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
        case 14:
          if (![v24 count])
          {
            break;
          }

          [*(v174 + 40) objectForKeyedSubscript:@"Breakdown"];
          v33 = v32 = v19;
          v34 = [v33 objectForKeyedSubscript:@"PLBatteryUISuggestionArrayKey"];
          [v34 addObject:v30];
          goto LABEL_9;
        case 13:
          v88 = v19;
          v89 = @"PLBatteryUIUsageSummaryKey";
          goto LABEL_112;
        case 15:
          v88 = v19;
          v89 = @"hasNoteworthyInformation";
          goto LABEL_112;
        case 16:
          v88 = v19;
          v89 = @"insightsAndSuggestionsSummaryKey";
          goto LABEL_112;
        case 17:
          [v24 objectForKeyedSubscript:@"UrsaDefinition"];
          v126 = v32 = v19;
          v127 = [v126 count];

          v19 = v32;
          if (!v127)
          {
            break;
          }

          v33 = [*(v174 + 40) objectForKeyedSubscript:@"Breakdown"];
          v34 = [v33 objectForKeyedSubscript:@"PLBatteryUIUrsaIssuesKey"];
          v128 = [v30 objectForKeyedSubscript:@"UrsaDefinition"];
          [v34 addObjectsFromArray:v128];

LABEL_9:
          v19 = v32;
          break;
        case 18:
          v88 = v19;
          v89 = @"buiMappings";
LABEL_112:
          v157 = [v24 objectForKeyedSubscript:v89];
          v158 = v89;
          v19 = v88;
          [*(v174 + 40) setObject:v157 forKeyedSubscript:v158];

          break;
        default:
          if ((v6 - 100) < 6)
          {
            v35 = v19;
            v36 = [v24 objectForKeyedSubscript:@"PLBatteryUIDataDurationKey"];
            v37 = [v36 intValue];

            v38 = [*(v174 + 40) objectForKeyedSubscript:@"Breakdown"];
            v39 = [v38 objectForKeyedSubscript:@"PLBatteryUIDataDurationKey"];
            [v39 doubleValue];
            v41 = v40;

            if (v41 < v37)
            {
              v42 = PLLogCommon();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
              {
                *buf = 134217984;
                v186 = v37;
                _os_log_impl(&dword_25EE51000, v42, OS_LOG_TYPE_INFO, "Maximum Data Duration = %f", buf, 0xCu);
              }

              v43 = [MEMORY[0x277CCABB0] numberWithDouble:v37];
              v44 = [*(v174 + 40) objectForKeyedSubscript:@"Breakdown"];
              [v44 setObject:v43 forKeyedSubscript:@"PLBatteryUIDataDurationKey"];
            }

            if (v31 == 86400.0 && v9 == 86400.0)
            {
              v45 = [v24 objectForKeyedSubscript:@"PLBatteryUIBreakdownKey"];
              v46 = [v45 firstObject];
              v47 = [*(v174 + 40) objectForKeyedSubscript:@"Breakdown"];
              [v47 setObject:v46 forKeyedSubscript:@"PLBatteryUIQueryRangeDayKey"];
            }

            if (v31 == 86400.0 && v9 == 3600.0)
            {
              v48 = [v24 objectForKeyedSubscript:@"PLBatteryUIBreakdownKey"];
              v49 = [*(v174 + 40) objectForKeyedSubscript:@"Breakdown"];
              [v49 setObject:v48 forKeyedSubscript:@"PLBatteryUIQueryRangeDayTapKey"];
            }

            if (v31 == 864000.0 && v9 == 864000.0)
            {
              v50 = [v24 objectForKeyedSubscript:@"PLBatteryUIBreakdownKey"];
              v51 = [v50 firstObject];
              v52 = [*(v174 + 40) objectForKeyedSubscript:@"Breakdown"];
              [v52 setObject:v51 forKeyedSubscript:@"PLBatteryUIQueryRangeWeekKey"];
            }

            if (v31 == 864000.0 && v9 == 86400.0)
            {
              v53 = [v24 objectForKeyedSubscript:@"PLBatteryUIBreakdownKey"];
              v54 = [*(v174 + 40) objectForKeyedSubscript:@"Breakdown"];
              v55 = v54;
              if (v17)
              {
                v56 = @"PLBatteryUIQueryRangeWeekTapDynamicEndKey";
              }

              else
              {
                v56 = @"PLBatteryUIQueryRangeWeekTapKey";
              }

              [v54 setObject:v53 forKeyedSubscript:v56];
            }

            if (v31 == 10800.0 && v9 == 10800.0)
            {
              v57 = [v24 objectForKeyedSubscript:@"PLBatteryUIBreakdownKey"];
              v58 = [v57 firstObject];
              v59 = [*(v174 + 40) objectForKeyedSubscript:@"Breakdown"];
              [v59 setObject:v58 forKeyedSubscript:@"PLBatteryUIQueryRangeDayKey"];
            }

            if (v31 == 691200.0 && v9 == 86400.0)
            {
              v60 = [v24 objectForKeyedSubscript:@"PLBatteryUIBreakdownKey"];
              v61 = [*(v174 + 40) objectForKeyedSubscript:@"Breakdown"];
              [v61 setObject:v60 forKeyedSubscript:@"PLBatteryUIDailyDynamicDayBreakdown"];
            }

            v19 = v35;
            if (v31 == 1296000.0 && v9 == 86400.0)
            {
              v62 = [v24 objectForKeyedSubscript:@"PLBatteryUIBreakdownKey"];
              v63 = [*(v174 + 40) objectForKeyedSubscript:@"Breakdown"];
              [v63 setObject:v62 forKeyedSubscript:@"PLBatteryUIDailyFullDayBreakdown"];

              v19 = v35;
            }
          }

          break;
      }
    }
  }

  v159 = *MEMORY[0x277D85DE8];
}

void __61__PLBatteryUIResponderService_convertResponseToLegacyFormat___block_invoke_236(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 objectForKeyedSubscript:@"Graph"];
  v7 = [v6 objectForKeyedSubscript:@"PLBatteryUIGraphDays"];
  v9 = [v7 objectAtIndex:a3];

  v8 = [v5 objectForKeyedSubscript:@"PLBatteryUIEnergyKey"];

  [v9 setObject:v8 forKeyedSubscript:@"PLBatteryUIEnergyKey"];
}

void __61__PLBatteryUIResponderService_convertResponseToLegacyFormat___block_invoke_280(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 objectForKeyedSubscript:@"Graph"];
  v7 = [v6 objectForKeyedSubscript:@"PLBatteryUIGraphDays"];
  v9 = [v7 objectAtIndex:a3];

  v8 = [MEMORY[0x277CBEB38] dictionary];
  [v8 setObject:v5 forKeyedSubscript:@"PLBatteryUIGraphTotal"];

  [v9 setObject:v8 forKeyedSubscript:@"PLBatteryUIScreenOnTimeKey"];
}

void __61__PLBatteryUIResponderService_convertResponseToLegacyFormat___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 objectForKeyedSubscript:@"Graph"];
  v7 = [v6 objectForKeyedSubscript:@"PLBatteryUIGraphDays"];
  v9 = [v7 objectAtIndex:a3];

  v8 = [MEMORY[0x277CBEB38] dictionary];
  [v8 setObject:v5 forKeyedSubscript:@"PLBatteryUIGraphTotal"];

  [v9 setObject:v8 forKeyedSubscript:@"PLBatteryUIScreenOffTimeKey"];
}

- (id)createCoalescedBreakdownWithResponse:(id)response
{
  v33[1] = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = [responseCopy objectForKeyedSubscript:@"Breakdown"];
  v6 = [v5 objectForKeyedSubscript:@"PLBatteryUIDailyFullDayBreakdown"];
  if (v6)
  {
    v7 = v6;
    v8 = [responseCopy objectForKeyedSubscript:@"Graph"];
    v9 = [v8 objectForKeyedSubscript:@"PLBatteryUIGraphDays24hrs"];

    if (v9)
    {
      v10 = [responseCopy objectForKeyedSubscript:@"Breakdown"];
      v11 = [v10 objectForKeyedSubscript:@"PLBatteryUIDailyFullDayBreakdown"];

      v12 = [responseCopy objectForKeyedSubscript:@"Breakdown"];
      v13 = [v12 objectForKeyedSubscript:@"PLBatteryUIDailyDynamicDayBreakdown"];

      v14 = [responseCopy objectForKeyedSubscript:@"PLBatteryUIUsageSummaryKey"];
      v15 = [responseCopy objectForKeyedSubscript:@"Graph"];
      v16 = [v15 objectForKeyedSubscript:@"PLBatteryUIGraphDays24hrs"];

      v17 = [v13 count];
      if (v17)
      {
        *(&v31 + 1) = v14;
        selfCopy = self;
        if (v17 >= 8)
        {
          v18 = 8;
        }

        else
        {
          v18 = v17;
        }

        v19 = [v11 subarrayWithRange:{objc_msgSend(v11, "count") - v18, objc_msgSend(v11, "count") + v18 - objc_msgSend(v11, "count")}];
        v9 = [v19 mutableCopy];

        v20 = [v13 subarrayWithRange:{objc_msgSend(v13, "count") - v18, objc_msgSend(v13, "count") + v18 - objc_msgSend(v13, "count")}];
        *&v31 = [v20 copy];

        if ([v9 count])
        {
          v21 = 0;
          do
          {
            v22 = [responseCopy objectForKeyedSubscript:@"Graph"];
            v23 = [v22 objectForKeyedSubscript:@"PLBatteryUIGraphDays24hrs"];
            v24 = [v23 count];

            if (v24 <= v21)
            {
              break;
            }

            v32 = @"PLBatteryUIGraph24hrs";
            v25 = [v16 objectAtIndexedSubscript:v21];
            v33[0] = v25;
            v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
            v27 = [v9 objectAtIndexedSubscript:v21];
            [v27 setObject:v26 forKeyedSubscript:@"Graph"];

            ++v21;
          }

          while ([v9 count] > v21);
        }

        v14 = *(&v31 + 1);
        v13 = v31;
        if (v31 != 0)
        {
          [(PLBatteryUIResponderService *)selfCopy prepareBreakdown:v9 withDrainSummaries:*(&v31 + 1) withFullDayBreakdown:v11 withDynamicBreakdown:v31];
        }
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {

    v9 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)prepareBreakdown:(id)breakdown withDrainSummaries:(id)summaries withFullDayBreakdown:(id)dayBreakdown withDynamicBreakdown:(id)dynamicBreakdown
{
  v153 = *MEMORY[0x277D85DE8];
  breakdownCopy = breakdown;
  summariesCopy = summaries;
  dayBreakdownCopy = dayBreakdown;
  dynamicBreakdownCopy = dynamicBreakdown;
  v96 = breakdownCopy;
  v108 = [breakdownCopy count];
  v97 = summariesCopy;
  v95 = [summariesCopy objectAtIndexedSubscript:0];
  v11 = objc_opt_new();
  v12 = 8;
  do
  {
    [v11 addObject:&unk_287147230];
    --v12;
  }

  while (v12);
  v13 = [v95 objectForKeyedSubscript:@"SummaryChart"];
  v145[0] = MEMORY[0x277D85DD0];
  v145[1] = 3221225472;
  v145[2] = __109__PLBatteryUIResponderService_prepareBreakdown_withDrainSummaries_withFullDayBreakdown_withDynamicBreakdown___block_invoke;
  v145[3] = &unk_279A5E370;
  v146 = v11;
  v14 = v11;
  [v13 enumerateObjectsUsingBlock:v145];

  reverseObjectEnumerator = [v14 reverseObjectEnumerator];

  allObjects = [reverseObjectEnumerator allObjects];
  v94 = [allObjects mutableCopy];

  v93 = [v95 objectForKeyedSubscript:@"SummaryComparisonType"];
  v92 = [v95 objectForKeyedSubscript:@"SummaryDrainAverage"];
  v104 = [breakdownCopy objectAtIndexedSubscript:v108 - 1];
  [v104 setObject:v94 forKeyedSubscript:@"PLBatteryUIPreviousDrain"];
  [v104 setObject:v93 forKeyedSubscript:@"PLBatteryUIComparisonType"];
  [v104 setObject:v92 forKeyedSubscript:@"PLBatteryUIDrainAverage"];
  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  obj = [v104 objectForKeyedSubscript:@"PLBatteryUIAppBreakdownSortOrderKey"];
  v17 = [obj countByEnumeratingWithState:&v141 objects:v152 count:16];
  if (v17)
  {
    v18 = *v142;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v142 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v141 + 1) + 8 * i);
        v21 = [v104 objectForKeyedSubscript:@"PLBatteryUIPerAppBreakdownKey"];
        v22 = [v21 objectForKeyedSubscript:v20];

        if (v22)
        {
          v23 = objc_opt_new();
          v24 = 8;
          do
          {
            [v23 addObject:&unk_287147230];
            --v24;
          }

          while (v24);
          v137 = 0;
          v138 = &v137;
          v139 = 0x2020000000;
          v140 = 0;
          v133[0] = MEMORY[0x277D85DD0];
          v133[1] = 3221225472;
          v133[2] = __109__PLBatteryUIResponderService_prepareBreakdown_withDrainSummaries_withFullDayBreakdown_withDynamicBreakdown___block_invoke_2;
          v133[3] = &unk_279A5EBE8;
          v133[4] = v20;
          v25 = v23;
          v134 = v25;
          v135 = dynamicBreakdownCopy;
          v136 = &v137;
          [v135 enumerateObjectsUsingBlock:v133];
          [v22 setObject:v25 forKeyedSubscript:@"PLBatteryUIPreviousDrain"];
          v26 = [MEMORY[0x277CCABB0] numberWithInt:(*(v138 + 6) / 7)];
          [v22 setObject:v26 forKeyedSubscript:@"PLBatteryUIDrainAverage"];

          _Block_object_dispose(&v137, 8);
        }
      }

      v17 = [obj countByEnumeratingWithState:&v141 objects:v152 count:16];
    }

    while (v17);
  }

  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  obja = [v95 objectForKeyedSubscript:@"SummaryList"];
  v27 = [obja countByEnumeratingWithState:&v129 objects:v151 count:16];
  if (v27)
  {
    v28 = *v130;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v130 != v28)
        {
          objc_enumerationMutation(obja);
        }

        v30 = *(*(&v129 + 1) + 8 * j);
        v31 = [v30 objectForKeyedSubscript:@"BundleID"];
        v32 = [v104 objectForKeyedSubscript:@"PLBatteryUIPerAppBreakdownKey"];
        v33 = [v32 objectForKeyedSubscript:v31];

        if (v33)
        {
          [v33 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"PLBatteryUIIsAnomalous"];
          v34 = [v30 objectForKeyedSubscript:@"qualifierType"];

          if (v34)
          {
            v35 = [v33 objectForKeyedSubscript:@"PLBatteryUIAppQualifiersKey"];
            v36 = [v30 objectForKeyedSubscript:@"qualifierType"];
            [v35 addObject:v36];
          }

          v37 = [v30 objectForKeyedSubscript:@"qualifierDuration"];

          if (v37)
          {
            v38 = [v30 objectForKeyedSubscript:@"qualifierDuration"];
            [v33 setObject:v38 forKeyedSubscript:@"PLBatteryUIQualifierDuration"];
          }
        }
      }

      v27 = [obja countByEnumeratingWithState:&v129 objects:v151 count:16];
    }

    while (v27);
  }

  v39 = [dayBreakdownCopy count];
  objb = objc_opt_new();
  v40 = (v39 - 3);
  if (v39 >= 3)
  {
    v100 = v108 - 2;
    if (v108 >= 2)
    {
      v98 = 1;
      v102 = v39 - 3;
      do
      {
        v101 = v40;
        v109 = [dayBreakdownCopy objectAtIndexedSubscript:?];
        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        v106 = [v109 objectForKeyedSubscript:@"PLBatteryUIAppBreakdownSortOrderKey"];
        v41 = [v106 countByEnumeratingWithState:&v125 objects:v150 count:16];
        if (v41)
        {
          v42 = *v126;
          do
          {
            for (k = 0; k != v41; ++k)
            {
              if (*v126 != v42)
              {
                objc_enumerationMutation(v106);
              }

              v44 = *(*(&v125 + 1) + 8 * k);
              v45 = [v109 objectForKeyedSubscript:@"PLBatteryUIPerAppBreakdownKey"];
              v46 = [v45 objectForKeyedSubscript:v44];

              if (v46)
              {
                v47 = MEMORY[0x277CCABB0];
                v48 = [objb objectForKeyedSubscript:v44];
                intValue = [v48 intValue];
                v50 = [v46 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
                v51 = [v47 numberWithInt:{objc_msgSend(v50, "intValue") + intValue}];
                [objb setObject:v51 forKeyedSubscript:v44];
              }
            }

            v41 = [v106 countByEnumeratingWithState:&v125 objects:v150 count:16];
          }

          while (v41);
        }

        if ((v102 - v101) >= 6)
        {
          v107 = [v96 objectAtIndexedSubscript:v100];
          v123 = 0u;
          v124 = 0u;
          v121 = 0u;
          v122 = 0u;
          v52 = [v107 objectForKeyedSubscript:@"PLBatteryUIAppBreakdownSortOrderKey"];
          v53 = [v52 countByEnumeratingWithState:&v121 objects:v149 count:16];
          if (v53)
          {
            v54 = *v122;
            do
            {
              for (m = 0; m != v53; ++m)
              {
                if (*v122 != v54)
                {
                  objc_enumerationMutation(v52);
                }

                v56 = *(*(&v121 + 1) + 8 * m);
                v57 = [v107 objectForKeyedSubscript:@"PLBatteryUIPerAppBreakdownKey"];
                v58 = [v57 objectForKeyedSubscript:v56];

                if (v58)
                {
                  v59 = MEMORY[0x277CCABB0];
                  v60 = [objb objectForKeyedSubscript:v56];
                  v61 = [v59 numberWithInt:{(objc_msgSend(v60, "intValue") / 7)}];
                  [v58 setObject:v61 forKeyedSubscript:@"PLBatteryUIDrainAverage"];
                }
              }

              v53 = [v52 countByEnumeratingWithState:&v121 objects:v149 count:16];
            }

            while (v53);
          }

          if ([v97 count] > v98)
          {
            v62 = [v97 objectAtIndexedSubscript:?];
            v63 = v62;
            if (v62)
            {
              v64 = [v62 objectForKeyedSubscript:@"SummaryComparisonType"];
              [v107 setObject:v64 forKeyedSubscript:@"PLBatteryUIComparisonType"];

              v65 = [v63 objectForKeyedSubscript:@"SummaryDrainAverage"];
              [v107 setObject:v65 forKeyedSubscript:@"PLBatteryUIDrainAverage"];

              v119 = 0u;
              v120 = 0u;
              v117 = 0u;
              v118 = 0u;
              v66 = [v63 objectForKeyedSubscript:@"SummaryList"];
              v67 = [v66 countByEnumeratingWithState:&v117 objects:v148 count:16];
              if (v67)
              {
                v68 = *v118;
                do
                {
                  for (n = 0; n != v67; ++n)
                  {
                    if (*v118 != v68)
                    {
                      objc_enumerationMutation(v66);
                    }

                    v70 = *(*(&v117 + 1) + 8 * n);
                    v71 = [v70 objectForKeyedSubscript:@"BundleID"];
                    v72 = [v107 objectForKeyedSubscript:@"PLBatteryUIPerAppBreakdownKey"];
                    v73 = [v72 objectForKeyedSubscript:v71];

                    if (v73)
                    {
                      [v73 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"PLBatteryUIIsAnomalous"];
                      v74 = [v70 objectForKeyedSubscript:@"qualifierType"];

                      if (v74)
                      {
                        v75 = [v73 objectForKeyedSubscript:@"PLBatteryUIAppQualifiersKey"];
                        v76 = [v70 objectForKeyedSubscript:@"qualifierType"];
                        [v75 addObject:v76];
                      }

                      v77 = [v70 objectForKeyedSubscript:@"qualifierDuration"];

                      if (v77)
                      {
                        v78 = [v70 objectForKeyedSubscript:@"qualifierDuration"];
                        [v73 setObject:v78 forKeyedSubscript:@"PLBatteryUIQualifierDuration"];
                      }
                    }
                  }

                  v67 = [v66 countByEnumeratingWithState:&v117 objects:v148 count:16];
                }

                while (v67);
              }
            }
          }

          v79 = [dayBreakdownCopy objectAtIndexedSubscript:v102];
          v115 = 0u;
          v116 = 0u;
          v113 = 0u;
          v114 = 0u;
          v105 = [v79 objectForKeyedSubscript:@"PLBatteryUIAppBreakdownSortOrderKey"];
          v80 = [v105 countByEnumeratingWithState:&v113 objects:v147 count:16];
          if (v80)
          {
            v81 = *v114;
            do
            {
              for (ii = 0; ii != v80; ++ii)
              {
                if (*v114 != v81)
                {
                  objc_enumerationMutation(v105);
                }

                v83 = *(*(&v113 + 1) + 8 * ii);
                v84 = [v79 objectForKeyedSubscript:@"PLBatteryUIPerAppBreakdownKey"];
                v85 = [v84 objectForKeyedSubscript:v83];

                if (v85)
                {
                  v86 = MEMORY[0x277CCABB0];
                  v87 = [objb objectForKeyedSubscript:v83];
                  intValue2 = [v87 intValue];
                  v89 = [v85 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
                  v90 = [v86 numberWithInt:{intValue2 - objc_msgSend(v89, "intValue")}];
                  [objb setObject:v90 forKeyedSubscript:v83];
                }
              }

              v80 = [v105 countByEnumeratingWithState:&v113 objects:v147 count:16];
            }

            while (v80);
          }

          ++v98;
          --v102;
          --v100;
        }

        if ((v102 & 0x80000000) != 0)
        {
          break;
        }

        if (v101 < 1)
        {
          break;
        }

        v40 = v101 - 1;
      }

      while ((v100 & 0x80000000) == 0);
    }
  }

  v91 = *MEMORY[0x277D85DE8];
}

void __109__PLBatteryUIResponderService_prepareBreakdown_withDrainSummaries_withFullDayBreakdown_withDynamicBreakdown___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = [v7 objectForKeyedSubscript:@"Drain"];

  if (v5)
  {
    v6 = [v7 objectForKeyedSubscript:@"Drain"];
    [*(a1 + 32) setObject:v6 atIndexedSubscript:a3];
  }
}

void __109__PLBatteryUIResponderService_prepareBreakdown_withDrainSummaries_withFullDayBreakdown_withDynamicBreakdown___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v19 = a2;
  v7 = [v19 objectForKeyedSubscript:@"PLBatteryUIPerAppBreakdownKey"];
  v8 = [v7 objectForKeyedSubscript:*(a1 + 32)];

  v9 = v19;
  if (v8)
  {
    v10 = [v19 objectForKeyedSubscript:@"PLBatteryUIPerAppBreakdownKey"];
    v11 = [v10 objectForKeyedSubscript:*(a1 + 32)];
    v12 = [v11 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];

    v9 = v19;
    if (v12)
    {
      v13 = [v19 objectForKeyedSubscript:@"PLBatteryUIPerAppBreakdownKey"];
      v14 = [v13 objectForKeyedSubscript:*(a1 + 32)];
      v15 = [v14 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
      [*(a1 + 40) setObject:v15 atIndexedSubscript:a3];

      if ([*(a1 + 48) count] - 1 == a3)
      {
        *a4 = 1;
      }

      else
      {
        v16 = [v19 objectForKeyedSubscript:@"PLBatteryUIPerAppBreakdownKey"];
        v17 = [v16 objectForKeyedSubscript:*(a1 + 32)];
        v18 = [v17 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
        *(*(*(a1 + 56) + 8) + 24) += [v18 intValue];
      }

      v9 = v19;
    }
  }
}

- (BOOL)demoMode
{
  if ([MEMORY[0x277D3F208] internalBuild])
  {
    if (demoMode_onceToken_0 != -1)
    {
      [PLBatteryUIResponderService demoMode];
    }

    v2 = demoMode_demoMode;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void __39__PLBatteryUIResponderService_demoMode__block_invoke()
{
  +[PLUtilities containerPath];
  v0 = _CFPreferencesCopyAppValueWithContainer();
  demoMode_demoMode = [v0 BOOLValue];
}

- (id)demoPath
{
  if (demoPath_onceToken != -1)
  {
    [PLBatteryUIResponderService demoPath];
  }

  v3 = demoPath_demoPath;

  return v3;
}

uint64_t __39__PLBatteryUIResponderService_demoPath__block_invoke()
{
  +[PLUtilities containerPath];
  result = _CFPreferencesCopyAppValueWithContainer();
  if (result)
  {
    demoPath_demoPath = result;

    return MEMORY[0x2821F96F8](result);
  }

  return result;
}

void __55__PLBatteryUIResponderService_initOperatorDependancies__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __55__PLBatteryUIResponderService_initOperatorDependancies__block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __55__PLBatteryUIResponderService_initOperatorDependancies__block_invoke_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __41__PLBatteryUIResponderService_configure___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 134218242;
  *&v4[4] = a2;
  *&v4[12] = 2112;
  *&v4[14] = a1;
  OUTLINED_FUNCTION_5_4(&dword_25EE51000, a2, a3, "Responder Service: Failed to initialize type %ld with configuration %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)result
{
  v10 = *MEMORY[0x277D85DE8];
  plistCopyDestination = [self plistCopyDestination];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_3(&dword_25EE51000, v2, v3, "Result copied to folder %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)constructResponseObjectFromType:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)constructResponseObjectFromType:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)constructResponseObjectFromType:.cold.3()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)constructResponseObjectFromType:.cold.4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)convertResponseToLegacyFormat:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __61__PLBatteryUIResponderService_convertResponseToLegacyFormat___block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_3(&dword_25EE51000, v1, v2, "Got %lu 10d UISoC", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __61__PLBatteryUIResponderService_convertResponseToLegacyFormat___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getBreakdownForLength:fromCachedLength:forBucketSize:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getBreakdownForLength:fromCachedLength:forBucketSize:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getUISOCDrainByBuckets:fromCachedLength:forBucketSize:isDynamicSource:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getUISOCDrainByBuckets:fromCachedLength:forBucketSize:isDynamicSource:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end