void _checkUnlock()
{
  if ((deviceUnlocked & 1) == 0)
  {
    pthread_mutex_lock(&_checkUnlock_sLastTimeLock);
    Current = CFAbsoluteTimeGetCurrent();
    if (*&_checkUnlock_sLastTime + 5.0 >= Current)
    {

      pthread_mutex_unlock(&_checkUnlock_sLastTimeLock);
    }

    else
    {
      _checkUnlock_sLastTime = *&Current;
      pthread_mutex_unlock(&_checkUnlock_sLastTimeLock);

      SIResumeForUnlock();
    }
  }
}

id logForCSLogCategoryIndex()
{
  if (logForCSLogCategoryIndex_onceToken != -1)
  {
    logForCSLogCategoryIndex_cold_1();
  }

  v1 = logForCSLogCategoryIndex_sIndexLog;

  return v1;
}

void ___setup_block_block_invoke(uint64_t a1)
{
  if (sShuttingDown == 1)
  {
    v2 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      ___setup_block_block_invoke_cold_1();
    }
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    (*(*(a1 + 32) + 16))();

    objc_autoreleasePoolPop(v3);
  }
}

id _setup_block(void *a1, char a2, int a3)
{
  v5 = a1;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = ___setup_block_block_invoke;
  v17[3] = &unk_278937238;
  v18 = v5;
  v19 = a3;
  v6 = v5;
  v7 = MEMORY[0x2383760E0](v17);
  v8 = qos_class_self();
  if (v8 > QOS_CLASS_BACKGROUND)
  {
    v9 = a2;
  }

  else
  {
    v9 = 0;
  }

  if ((v9 & 1) != 0 || v8 >= 0x1A)
  {
    v10 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v8, 0, v7);
  }

  else
  {
    v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v7);
  }

  v14 = v10;
  v15 = MEMORY[0x2383760E0](v10, v11, v12, v13);

  return v15;
}

void SIBackgroundOpBlock(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = malloc_type_malloc(0x10uLL, 0xE0040E685C293uLL);
  v6 = [v4 copy];

  v7 = v6;
  *v5 = a1;
  v5[1] = v7;
  _SIScheduleBackgroundOperation();
}

id logForCSLogCategoryDefault()
{
  if (logForCSLogCategoryDefault_onceToken != -1)
  {
    logForCSLogCategoryDefault_cold_1();
  }

  v1 = logForCSLogCategoryDefault_log;

  return v1;
}

id SDTransactionCreate(void *a1)
{
  v1 = a1;
  if ([v1 count] > 1)
  {
    [v1 componentsJoinedByString:@"."];
  }

  else
  {
    [v1 firstObject];
  }
  v2 = ;

  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"com.apple.spotlight.%@", v2];
  }

  else
  {
    v3 = @"com.apple.spotlight";
  }

  v4 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    SDTransactionCreate_cold_1(v3, v4);
  }

  [(__CFString *)v3 UTF8String];
  v5 = os_transaction_create();

  return v5;
}

void delayedOpBlockCompleteCallback(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = a1[1];
  v5[2](v5, *a1, a2);
  free(a1);

  objc_autoreleasePoolPop(v4);
}

void blockRoutine(const void *a1, int a2)
{
  v5 = MEMORY[0x2383760E0]();
  if (v5)
  {
    if (a2)
    {
      v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    }

    else
    {
      v4 = 0;
    }

    v5[2](v5, v4);
  }

  if (a1)
  {
    CFRelease(a1);
  }
}

uint64_t SDTraceAdd(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, double a6)
{
  v11 = a2;
  v12 = a4;
  v13 = a5;
  if (SDTraceAdd_onceToken != -1)
  {
    SDTraceAdd_cold_1();
  }

  if (a1 > 3)
  {
    v14 = 0;
  }

  else
  {
    v14 = [sSDTraceTypes[a1] addLabel:v11 identifier:a3 duration:v12 string:v13 data:a6];
  }

  return v14;
}

void duet_log_activity_start(int a1)
{
  if (a1 == 2)
  {
    duet_log_activity_start_for_processes(&unk_2846C90C8);
  }

  else
  {
    duet_log_activity_start_for_processes(&unk_2846C90E0);
  }
}

void setClientStateForIndexing(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v49[1] = *MEMORY[0x277D85DE8];
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __setClientStateForIndexing_block_invoke;
  v41[3] = &unk_278937100;
  v17 = v16;
  v42 = v17;
  v18 = v15;
  v43 = v18;
  v19 = MEMORY[0x2383760E0](v41);
  if ([v12 length])
  {
    if (v13)
    {
      v35 = v11[19];
      v40 = v11;
      v20 = v11;
      v21 = v12;
      v37 = v13;
      v22 = v13;
      v34 = v19;
      v39 = v14;
      v23 = v14;
      v24 = [objc_opt_class() _stateInfoAttributeNameWithClientStateName:v23];

      v47[0] = @"_kMDItemBundleID";
      v47[1] = @"_kMDItemExternalID";
      v48[0] = @"com.apple.searchd";
      v48[1] = v21;
      v38 = v21;
      v47[2] = v24;
      v48[2] = v22;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:3];
      v49[0] = v25;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:1];

      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = ___setClientStateInner_block_invoke;
      v44[3] = &unk_278937100;
      v27 = v20;
      v45 = v27;
      v28 = v34;
      v46 = v28;
      v29 = [v44 copy];
      if (!SISetCSAttributes())
      {
        v36 = v24;
        if (v28)
        {
          v30 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1 userInfo:0];
          (*(v28 + 2))(v28, v30);
        }

        CFRelease(v29);
        v24 = v36;
      }

      v14 = v39;
      v11 = v40;
      v13 = v37;
    }

    else
    {
      v32 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        setClientStateForIndexing_cold_1();
      }

      if (v19)
      {
        v19[2](v19, 0);
      }
    }
  }

  else if (v19)
  {
    v31 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1 userInfo:0];
    (v19)[2](v19, v31);
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __setClientStateForIndexing_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  SDTransactionDone(*(a1 + 32));
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

void SDTransactionDone(void *a1)
{
  v1 = a1;
  if (v1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v2 = os_transaction_copy_description();
    if (v2)
    {
      v3 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        SDTransactionDone_cold_1(v2, v3);
      }
    }

    free(v2);
  }
}

void duet_log_activity_start_for_processes(void *a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (!atomic_fetch_add(&sDASOutstanding, 1uLL) && (atomic_exchange(sDASStarted, 1u) & 1) == 0)
  {
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __duet_log_activity_start_for_processes_block_invoke;
    v10 = &unk_278934050;
    v3 = v1;
    v11 = v3;
    if (duet_log_activity_start_for_processes_onceToken != -1)
    {
      dispatch_once(&duet_log_activity_start_for_processes_onceToken, &v7);
    }

    dispatch_resume(duet_log_activity_start_for_processes_timer);
    v12 = *MEMORY[0x277D06AC0];
    v13[0] = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:{1, v7, v8, v9, v10}];
    v5 = [MEMORY[0x277D06A28] sharedScheduler];
    [v5 activityStartedWithParameters:v4];
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __duet_log_activity_start_for_processes_block_invoke_2(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (!atomic_load(&sDASOutstanding))
  {
    v2 = *(a1 + 32);
    v6 = *MEMORY[0x277D06AC0];
    v7[0] = v2;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    v4 = [MEMORY[0x277D06A28] sharedScheduler];
    [v4 activityStoppedWithParameters:v3];

    dispatch_suspend(duet_log_activity_start_for_processes_timer);
    atomic_store(0, sDASStarted);
  }

  v5 = *MEMORY[0x277D85DE8];
}

BOOL checkBooleanEntitlement(__SecTask *a1, const __CFString *a2)
{
  v2 = SecTaskCopyValueForEntitlement(a1, a2, 0);
  v3 = v2 == *MEMORY[0x277CBED28];

  return v3;
}

id logForCSLogCategoryQuery()
{
  if (logForCSLogCategoryQuery_onceToken != -1)
  {
    logForCSLogCategoryQuery_cold_1();
  }

  v1 = logForCSLogCategoryQuery_sQueryLog;

  return v1;
}

uint64_t needsSpecialIndexAdded(void *a1, void *a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v11)
  {
    goto LABEL_16;
  }

  v12 = v11;
  v22 = v9;
  v23 = v8;
  v13 = 0;
  v14 = 0;
  v15 = *v25;
  v16 = *MEMORY[0x277CCA1A0];
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v25 != v15)
      {
        objc_enumerationMutation(v7);
      }

      v18 = *(*(&v24 + 1) + 8 * i);
      if ([v18 isEqualToString:{v16, v22}] & 1) != 0 || (objc_msgSend(v18, "isEqualToString:", @"Default"))
      {
        v14 = 1;
      }

      else
      {
        v13 |= [v18 isEqualToString:v10];
      }
    }

    v12 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  }

  while (v12);
  v9 = v22;
  v8 = v23;
  if (v13 & 1 | ((v14 & 1) == 0) || v23 && ([v23 intersectsSet:v22] & 1) == 0)
  {
LABEL_16:
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void wakeupTrigger(void *a1, int a2)
{
  v3 = [SPQueryResultsQueue findResultsQueueWithIdentifier:?];
  v4 = v3;
  if (a2)
  {
    [v3 _stopTracking];
  }

  else
  {
    [v3 _processResults];
  }
}

void SISynchedOpWithBlockPropagatingPriority(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = malloc_type_malloc(0x10uLL, 0xE0040E685C293uLL);
  v6 = [v4 copy];

  v7 = v6;
  *v5 = a1;
  v5[1] = v7;
  SISynchedOpPropagatingPriority();
}

void *syncContextCreate(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = malloc_type_malloc(0x10uLL, 0xC0040D1025EB5uLL);
  *v5 = v3;
  v5[1] = v4;
  dispatch_group_enter(v3);
  return v5;
}

void SISynchedOpWithBlock(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = malloc_type_malloc(0x10uLL, 0xE0040E685C293uLL);
  v6 = [v4 copy];

  v7 = v6;
  *v5 = a1;
  v5[1] = v7;
  SISynchedOp();
}

void sub_231A3A768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_sync_exit(v14);
  _Unwind_Resume(a1);
}

void relatedItemCallback(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  if (a2 && a3 && a4)
  {
    v8 = a4;
    v9 = a3;
    v10 = a2;
    v11 = [[SPUAProgressItem alloc] initWithBundleID:v10 uaID:v8 relatedID:v9];

    [(SPUAProgressItem *)v11 update:a5];
  }
}

void _queueRelatedDelete(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = v3;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_DEFAULT, "queue related delete %@:%@", &v13, 0x16u);
  }

  v6 = [sDeleteBatches objectForKeyedSubscript:v3];
  if (!v6)
  {
    v6 = objc_opt_new();
    [sDeleteBatches setObject:v6 forKeyedSubscript:v3];
  }

  [v6 addObject:v4];
  v7 = sTotalOutstandingDeletes;
  v8 = ++sTotalOutstandingDeletes;
  if (v7)
  {
    if (v8 >= 0x64)
    {
      _flushDeleteQueue();
    }
  }

  else
  {
    if (!sDeletesTransaction)
    {
      v9 = SDTransactionCreate(&unk_2846C93E0);
      v10 = sDeletesTransaction;
      sDeletesTransaction = v9;
    }

    v11 = dispatch_time(0, 5000000000);
    dispatch_after(v11, sBatchDeleteQueue, &__block_literal_global_3941);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void _indexCrossedWorkBoundary(void *a1, double a2)
{
  v3 = a1;
  v4 = v3;
  if (a2 > 1.0)
  {
    [v3 dirty:0];
  }

  if (a2 > 60.0)
  {
    v5 = sIndexQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___indexCrossedWorkBoundary_block_invoke;
    v7[3] = &unk_278934050;
    v8 = v4;
    v6 = _setup_block(v7, 0, 5956);
    dispatch_async(v5, v6);
  }
}

void __duet_log_activity_start_for_processes_block_invoke(uint64_t a1)
{
  v2 = dispatch_get_global_queue(5, 0);
  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v2);
  v4 = duet_log_activity_start_for_processes_timer;
  duet_log_activity_start_for_processes_timer = v3;

  v5 = duet_log_activity_start_for_processes_timer;
  v6 = dispatch_time(0, 10000000000);
  dispatch_source_set_timer(v5, v6, 0x2540BE400uLL, 0x2540BE400uLL);
  v7 = duet_log_activity_start_for_processes_timer;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __duet_log_activity_start_for_processes_block_invoke_2;
  handler[3] = &unk_278934050;
  v9 = *(a1 + 32);
  dispatch_source_set_event_handler(v7, handler);
  dispatch_suspend(duet_log_activity_start_for_processes_timer);
  dispatch_activate(duet_log_activity_start_for_processes_timer);
}

uint64_t __logForCSLogCategoryDefault_block_invoke()
{
  logForCSLogCategoryDefault_log = os_log_create("com.apple.corespotlight", "default");

  return MEMORY[0x2821F96F8]();
}

uint64_t __logForCSLogCategoryIndex_block_invoke()
{
  logForCSLogCategoryIndex_sIndexLog = os_log_create("com.apple.corespotlight", "index");

  return MEMORY[0x2821F96F8]();
}

uint64_t __logForCSLogCategoryQuery_block_invoke()
{
  logForCSLogCategoryQuery_sQueryLog = os_log_create("com.apple.corespotlight", "query");

  return MEMORY[0x2821F96F8]();
}

id logForCSLogCategoryItems()
{
  if (logForCSLogCategoryItems_onceToken != -1)
  {
    logForCSLogCategoryItems_cold_1();
  }

  v1 = logForCSLogCategoryItems_sQueryLog;

  return v1;
}

uint64_t __logForCSLogCategoryItems_block_invoke()
{
  logForCSLogCategoryItems_sQueryLog = os_log_create("com.apple.corespotlight", "items");

  return MEMORY[0x2821F96F8]();
}

id logForCSSignpostPhotosNilCS()
{
  if (logForCSSignpostPhotosNilCS_onceToken != -1)
  {
    logForCSSignpostPhotosNilCS_cold_1();
  }

  v1 = logForCSSignpostPhotosNilCS_sPhotosNilCSLog;

  return v1;
}

uint64_t __logForCSSignpostPhotosNilCS_block_invoke()
{
  logForCSSignpostPhotosNilCS_sPhotosNilCSLog = os_log_create("com.apple.corespotlight", "PhotosNilCS");

  return MEMORY[0x2821F96F8]();
}

id logForCSLogCategoryRecs()
{
  if (logForCSLogCategoryRecs_onceToken != -1)
  {
    logForCSLogCategoryRecs_cold_1();
  }

  v1 = logForCSLogCategoryRecs_sRecsLog;

  return v1;
}

uint64_t __logForCSLogCategoryRecs_block_invoke()
{
  logForCSLogCategoryRecs_sRecsLog = os_log_create("com.apple.corespotlight", "recs");

  return MEMORY[0x2821F96F8]();
}

id logForCSLogCategoryUA()
{
  if (logForCSLogCategoryUA_onceToken != -1)
  {
    logForCSLogCategoryUA_cold_1();
  }

  v1 = logForCSLogCategoryUA_sUALog;

  return v1;
}

uint64_t __logForCSLogCategoryUA_block_invoke()
{
  logForCSLogCategoryUA_sUALog = os_log_create("com.apple.corespotlight", "ua");

  return MEMORY[0x2821F96F8]();
}

id logForCSLogCategoryPersonalization()
{
  if (logForCSLogCategoryPersonalization_onceToken != -1)
  {
    logForCSLogCategoryPersonalization_cold_1();
  }

  v1 = logForCSLogCategoryPersonalization_sPersonalizationLog;

  return v1;
}

uint64_t __logForCSLogCategoryPersonalization_block_invoke()
{
  logForCSLogCategoryPersonalization_sPersonalizationLog = os_log_create("com.apple.corespotlight", "personalization");

  return MEMORY[0x2821F96F8]();
}

id logForCSLogCategoryPhotosQU()
{
  if (logForCSLogCategoryPhotosQU_onceToken != -1)
  {
    logForCSLogCategoryPhotosQU_cold_1();
  }

  v1 = logForCSLogCategoryPhotosQU_queryUnderstandingLog;

  return v1;
}

uint64_t __logForCSLogCategoryPhotosQU_block_invoke()
{
  logForCSLogCategoryPhotosQU_queryUnderstandingLog = os_log_create("com.apple.corespotlight", "PhotosQueryUnderstanding");

  return MEMORY[0x2821F96F8]();
}

id logForCSLogCategoryDaemonClient()
{
  if (logForCSLogCategoryDaemonClient_onceToken != -1)
  {
    logForCSLogCategoryDaemonClient_cold_1();
  }

  v1 = logForCSLogCategoryDaemonClient_sDaemonClientLog;

  return v1;
}

uint64_t __logForCSLogCategoryDaemonClient_block_invoke()
{
  logForCSLogCategoryDaemonClient_sDaemonClientLog = os_log_create("com.apple.corespotlight", "SpotlightDaemonClient");

  return MEMORY[0x2821F96F8]();
}

id logForCSLogCategoryDeleteAll()
{
  if (logForCSLogCategoryDeleteAll_onceToken != -1)
  {
    logForCSLogCategoryDeleteAll_cold_1();
  }

  v1 = logForCSLogCategoryDeleteAll_sDeleteAllLog;

  return v1;
}

uint64_t __logForCSLogCategoryDeleteAll_block_invoke()
{
  logForCSLogCategoryDeleteAll_sDeleteAllLog = os_log_create("com.apple.corespotlight", "DeleteAll");

  return MEMORY[0x2821F96F8]();
}

id CSRedactString(void *a1, int a2)
{
  v3 = a1;
  if (CSShouldRedactForPrivacy_onceToken != -1)
  {
    CSRedactString_cold_1();
  }

  if ((CSShouldRedactForPrivacy_shouldObfuscate & 1) != 0 && (v4 = [v3 length], v4 > 4))
  {
    v6 = v4;
    v7 = MEMORY[0x277CCACA8];
    v8 = [v3 substringToIndex:3];
    v9 = v8;
    if (a2)
    {
      v10 = [v3 substringFromIndex:v6 - 1];
      v5 = [v7 stringWithFormat:@"%@...%@<%lu chars>", v9, v10, v6];
    }

    else
    {
      v5 = [v7 stringWithFormat:@"%@...<%lu chars>", v8, v6];
    }
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

id CSRedactStringArray(void *a1, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (CSShouldRedactForPrivacy_onceToken != -1)
  {
    CSRedactString_cold_1();
  }

  if (CSShouldRedactForPrivacy_shouldObfuscate)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    if (v3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v5 = v3;
        v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v16;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v16 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v15 + 1) + 8 * i);
              if (v10)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v11 = CSRedactString(v10, a2);
                  [v4 addObject:{v11, v15}];
                }
              }
            }

            v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
          }

          while (v7);
        }
      }
    }

    v12 = [MEMORY[0x277CBEA60] arrayWithArray:{v4, v15}];
  }

  else
  {
    v12 = v3;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t isDebugVerboseMode()
{
  if (isDebugVerboseMode_onceToken != -1)
  {
    isDebugVerboseMode_cold_1();
  }

  return isDebugVerboseMode_debugEnabled;
}

uint64_t __isDebugVerboseMode_block_invoke()
{
  result = _os_feature_enabled_impl();
  isDebugVerboseMode_debugEnabled = result;
  return result;
}

void __CSShouldRedactForPrivacy_block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  CSShouldRedactForPrivacy_shouldObfuscate = [v0 BOOLForKey:@"com.apple.corespotlight.log-sensitive-data"] ^ 1;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_3@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 16);
  return result;
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void startAgents(void *a1, char a2)
{
  v3 = a1;
  v4 = +[MDAgent sharedAgent];
  +[SpotlightSender setupInstantSender];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __startAgents_block_invoke;
  v6[3] = &unk_2789340C8;
  v8 = a2;
  v7 = v3;
  v5 = v3;
  dispatch_apply(3uLL, 0, v6);
}

void __startAgents_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    v2 = (a1 + 32);
    v3 = [*(a1 + 32) delegateServiceName];
    v4 = [CSIndexAgent indexDelegateAgent:v3];
  }

  else if (a2 == 1)
  {
    v2 = (a1 + 32);
    v3 = [*(a1 + 32) indexServiceName];
    v4 = [CSIndexAgent indexAgent:0 serviceName:v3];
  }

  else
  {
    if (a2 || *(a1 + 40) != 1)
    {
      return;
    }

    v2 = (a1 + 32);
    v3 = [*(a1 + 32) searchServiceName];
    v4 = [CSSearchAgent searchAgent:0 serviceName:v3];
  }

  v5 = v4;

  [v5 setIndexer:*v2];
  [v5 startListener];
}

void suspendAllAgents()
{
  v0 = +[CSIndexAgent indexAgent];
  [v0 suspend];

  v1 = +[CSSearchAgent searchAgent];
  [v1 suspend];
}

void resumeAllAgents()
{
  v0 = +[CSIndexAgent indexAgent];
  [v0 resume];

  v1 = +[CSSearchAgent searchAgent];
  [v1 resume];
}

void sub_231A41B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __MDInstantSenderQueue_block_invoke()
{
  MDInstantSenderQueue_sMDInstantSenderQueue = dispatch_queue_create("InstantSender", 0);

  return MEMORY[0x2821F96F8]();
}

uint64_t OUTLINED_FUNCTION_7(uint64_t a1)
{
  v2 = *(a1 + 32);

  return [v2 count];
}

uint64_t __SDTraceAdd_block_invoke()
{
  v0 = [[SDTrace alloc] initWithTitle:@"SDQuery"];
  v1 = qword_280BD1A20;
  qword_280BD1A20 = v0;

  v2 = [[SDTrace alloc] initWithTitle:@"IndexQuery"];
  v3 = qword_280BD1A28;
  qword_280BD1A28 = v2;

  qword_280BD1A30 = [[SDTrace alloc] initWithTitle:@"Index"];

  return MEMORY[0x2821F96F8]();
}

id SDTraceDescription(uint64_t a1)
{
  if (a1 > 3)
  {
    v3 = 0;
  }

  else
  {
    if ([sSDTraceTypes[a1] current] == -1)
    {
      v3 = 0;
    }

    else
    {
      v3 = [sSDTraceTypes[a1] description];
    }
  }

  return v3;
}

id getSystemVersionString()
{
  if (getSystemVersionString_once != -1)
  {
    getSystemVersionString_cold_1();
  }

  v1 = getSystemVersionString_systemVersionStr;

  return v1;
}

void __getSystemVersionString_block_invoke()
{
  v0 = _CFCopySystemVersionDictionary();
  if (v0)
  {
    v1 = v0;
    Value = CFDictionaryGetValue(v0, *MEMORY[0x277CBEC70]);
    if (Value)
    {
      Copy = CFStringCreateCopy(0, Value);
      v4 = getSystemVersionString_systemVersionStr;
      getSystemVersionString_systemVersionStr = Copy;
    }

    CFRelease(v1);
  }

  if (!getSystemVersionString_systemVersionStr)
  {
    getSystemVersionString_systemVersionStr = &stru_2846BD100;
  }
}

uint64_t _getDeviceMigrationComplete()
{
  v14 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D04418] sharedInstance];
  v1 = [v0 isDeviceUsingEphemeralStorage];

  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v3 = [MEMORY[0x277D04418] sharedInstance];
    v4 = [v3 buildVersion];

    v5 = [MEMORY[0x277D04418] sharedInstance];
    v6 = [v5 lastBuildVersionPref];

    v2 = [MEMORY[0x277D04418] isBuildVersion:v4 equalToBuildVersion:v6];
    v7 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = v4;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_231A35000, v7, OS_LOG_TYPE_DEFAULT, "[LOCK] MD current:%@ last: %@", &v10, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v2;
}

void OUTLINED_FUNCTION_1_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

uint64_t BulkDeleteAttributes(uint64_t result, uint64_t *a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    v5 = result;
    do
    {
      v6 = *a2++;
      result = MEMORY[0x238374D70](v5, v6);
      --v3;
    }

    while (v3);
  }

  return result;
}

void unpauseCallback(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 134217984;
    v5 = a1;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_INFO, "Resume queue:%p", &v4, 0xCu);
  }

  [a1 resumeResults];
  v3 = *MEMORY[0x277D85DE8];
}

void _sendPhotosReindexABCReport(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (isAppleInternalInstall())
  {
    v2 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v1;
      _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "###_sendPhotosDeleteABCReport: Photos deletion report: %@", &v11, 0xCu);
    }

    v3 = [MEMORY[0x277CCAC38] processInfo];
    v4 = [v3 processName];
    v5 = v4;
    v6 = @"unknown";
    if (v4)
    {
      v6 = v4;
    }

    v7 = v6;

    v8 = objc_alloc_init(MEMORY[0x277D6AFC8]);
    v9 = [v8 signatureWithDomain:@"SpotlightIndex" type:@"PhotosDelete" subType:v1 detectedProcess:v7 triggerThresholdValues:0];

    [v8 snapshotWithSignature:v9 delay:0 events:0 payload:0 actions:&__block_literal_global_3775 reply:45.0];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_231A517D0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 224), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

void unpauseIfSystemInGoodStateCallback(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 134217984;
    v5 = a1;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_INFO, "Resume queue:%p", &v4, 0xCu);
  }

  [a1 resumeResultsIfSystemInGoodState];
  v3 = *MEMORY[0x277D85DE8];
}

id createEqualANDQueryForGivenNameTokens(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v35 = a5;
  v13 = [v9 count];
  v14 = [v10 count];
  v40 = v12;
  v39 = [v12 count];
  v36 = v11;
  if (v11)
  {
    v38 = [v11 length] != 0;
  }

  else
  {
    v38 = 0;
  }

  v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:v13];
  v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:v14];
  v37 = [MEMORY[0x277CBEB18] arrayWithCapacity:v39];
  if (v39)
  {
    v17 = 0;
    while (1)
    {
      v43 = v17;
      v18 = [v40 objectAtIndex:?];
      if ([v15 count])
      {
        [v15 removeAllObjects];
      }

      if (v13)
      {
        for (i = 0; i != v13; ++i)
        {
          v20 = [v9 objectAtIndex:i];
          if ([v20 length])
          {
            v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@=%@%@)", v18, v20, @"cdw"];
            [v15 addObject:v21];
          }
        }
      }

      v22 = [v15 componentsJoinedByString:@" && "];
      if (v38)
      {
        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@=%@%@)", v18, v36, @"cdw"];
      }

      else
      {
        v23 = 0;
      }

      if ([v22 length] && v23)
      {
        break;
      }

      if ([v22 length])
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"(%@)", v22, v34];
        goto LABEL_21;
      }

      if (v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

LABEL_22:
      v44 = v24;
      v41 = v23;
      v42 = v22;
      if ([v16 count])
      {
        [v16 removeAllObjects];
      }

      if (v14)
      {
        for (j = 0; j != v14; ++j)
        {
          v26 = [v10 objectAtIndex:j];
          if ([v26 length])
          {
            v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@=%@%@)", v18, v26, @"cdw"];
            [v16 addObject:v27];
          }
        }
      }

      v28 = [v16 componentsJoinedByString:@" && "];
      if ([v44 length] && objc_msgSend(v28, "length"))
      {
        v34 = v28;
        [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ && (%@))", v44];
        goto LABEL_36;
      }

      if ([v44 length])
      {
        v29 = v44;
        goto LABEL_37;
      }

      if (v28)
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"(%@)", v28];
        v29 = LABEL_36:;
LABEL_37:
        v30 = v29;
        if (v29)
        {
          [v37 addObject:v29];
        }
      }

      v17 = v43 + 1;
      if (v43 + 1 == v39)
      {
        goto LABEL_44;
      }
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"((%@) || %@)", v22, v23];
    v24 = LABEL_21:;
    goto LABEL_22;
  }

LABEL_44:
  v31 = [v37 componentsJoinedByString:@" || "];
  v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ && (%@))", v35, v31];

  return v32;
}

id createNotEqualORQueryForGivenNameTokens(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v35 = a5;
  v13 = [v9 count];
  v14 = [v10 count];
  v40 = v12;
  v39 = [v12 count];
  v36 = v11;
  if (v11)
  {
    v38 = [v11 length] != 0;
  }

  else
  {
    v38 = 0;
  }

  v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:v13];
  v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:v14];
  v37 = [MEMORY[0x277CBEB18] arrayWithCapacity:v39];
  if (v39)
  {
    v17 = 0;
    while (1)
    {
      v43 = v17;
      v18 = [v40 objectAtIndex:?];
      if ([v15 count])
      {
        [v15 removeAllObjects];
      }

      if (v13)
      {
        for (i = 0; i != v13; ++i)
        {
          v20 = [v9 objectAtIndex:i];
          if ([v20 length])
          {
            v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@!=%@%@)", v18, v20, @"cdw"];
            [v15 addObject:v21];
          }
        }
      }

      v22 = [v15 componentsJoinedByString:@" || "];
      if (v38)
      {
        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@!=%@%@)", v18, v36, @"cdw"];
      }

      else
      {
        v23 = 0;
      }

      if ([v22 length] && v23)
      {
        break;
      }

      if ([v22 length])
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"(%@)", v22, v34];
        goto LABEL_21;
      }

      if (v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

LABEL_22:
      v44 = v24;
      v41 = v23;
      v42 = v22;
      if ([v16 count])
      {
        [v16 removeAllObjects];
      }

      if (v14)
      {
        for (j = 0; j != v14; ++j)
        {
          v26 = [v10 objectAtIndex:j];
          if ([v26 length])
          {
            v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@!=%@%@)", v18, v26, @"cdw"];
            [v16 addObject:v27];
          }
        }
      }

      v28 = [v16 componentsJoinedByString:@" || "];
      if ([v44 length] && objc_msgSend(v28, "length"))
      {
        v34 = v28;
        [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ || (%@))", v44];
        goto LABEL_36;
      }

      if ([v44 length])
      {
        v29 = v44;
        goto LABEL_37;
      }

      if (v28)
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"(%@)", v28];
        v29 = LABEL_36:;
LABEL_37:
        v30 = v29;
        if (v29)
        {
          [v37 addObject:v29];
        }
      }

      v17 = v43 + 1;
      if (v43 + 1 == v39)
      {
        goto LABEL_44;
      }
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"((%@) && %@)", v22, v23];
    v24 = LABEL_21:;
    goto LABEL_22;
  }

LABEL_44:
  v31 = [v37 componentsJoinedByString:@" && "];
  v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ && (%@))", v35, v31];

  return v32;
}

id createEqualORQueryForFullNamePrefix(void *a1, void *a2, void *a3, int a4)
{
  v7 = a1;
  v8 = a2;
  v19 = a3;
  v9 = [v8 count];
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:v9];
  if (v9)
  {
    v11 = 0;
    if (a4)
    {
      v12 = @"(%@=%@*%@)";
    }

    else
    {
      v12 = @"(%@=%@%@)";
    }

    do
    {
      v13 = [v8 objectAtIndex:v11];
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:v12, v13, v7, @"cdw"];
      [v10 addObject:v14];

      ++v11;
    }

    while (v9 != v11);
  }

  v15 = [v10 componentsJoinedByString:@" || "];
  if (v19)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ && (%@))", v19, v15];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"(%@)", v15, v18];
  }
  v16 = ;

  return v16;
}

id createEqualORQueryPrefix(void *a1, void *a2, void *a3, void *a4, int a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v26 = a4;
  v12 = [v9 count];
  v30 = v11;
  v29 = [v11 count];
  v27 = v10;
  if (v10)
  {
    v13 = [v10 length] != 0;
  }

  else
  {
    v13 = 0;
  }

  v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:(v12 + v13) * v29];
  if (v29)
  {
    v15 = 0;
    if (a5)
    {
      v16 = @"(%@=%@*%@)";
    }

    else
    {
      v16 = @"(%@=%@%@)";
    }

    v28 = v13;
    do
    {
      v17 = [v30 objectAtIndex:v15];
      if (v12)
      {
        for (i = 0; i != v12; ++i)
        {
          v19 = [v9 objectAtIndex:i];
          if ([v19 length])
          {
            v20 = [MEMORY[0x277CCACA8] stringWithFormat:v16, v17, v19, @"cdw"];
            [v14 addObject:v20];
          }
        }
      }

      if (v28)
      {
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@=%@%@)", v17, v27, @"cdw"];
        [v14 addObject:v21];
      }

      ++v15;
    }

    while (v15 != v29);
  }

  v22 = [v14 componentsJoinedByString:@" || "];
  if (v26)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ && (%@))", v26, v22];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"(%@)", v22, v25];
  }
  v23 = ;

  return v23;
}

id createNotEqualANDQueryForFullNamePrefix(void *a1, void *a2, void *a3, int a4)
{
  v7 = a1;
  v8 = a2;
  v19 = a3;
  v9 = [v8 count];
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:v9];
  if (v9)
  {
    v11 = 0;
    if (a4)
    {
      v12 = @"(%@!=%@*%@)";
    }

    else
    {
      v12 = @"(%@!=%@%@)";
    }

    do
    {
      v13 = [v8 objectAtIndex:v11];
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:v12, v13, v7, @"cdw"];
      [v10 addObject:v14];

      ++v11;
    }

    while (v9 != v11);
  }

  v15 = [v10 componentsJoinedByString:@" && "];
  if (v19)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ && (%@))", v19, v15];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"(%@)", v15, v18];
  }
  v16 = ;

  return v16;
}

id createNotEqualANDQueryPrefix(void *a1, void *a2, void *a3, void *a4, int a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v26 = a4;
  v12 = [v9 count];
  v30 = v11;
  v29 = [v11 count];
  v27 = v10;
  if (v10)
  {
    v13 = [v10 length] != 0;
  }

  else
  {
    v13 = 0;
  }

  v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:(v12 + v13) * v29];
  if (v29)
  {
    v15 = 0;
    if (a5)
    {
      v16 = @"(%@!=%@*%@)";
    }

    else
    {
      v16 = @"(%@!=%@%@)";
    }

    v28 = v13;
    do
    {
      v17 = [v30 objectAtIndex:v15];
      if (v12)
      {
        for (i = 0; i != v12; ++i)
        {
          v19 = [v9 objectAtIndex:i];
          if ([v19 length])
          {
            v20 = [MEMORY[0x277CCACA8] stringWithFormat:v16, v17, v19, @"cdw"];
            [v14 addObject:v20];
          }
        }
      }

      if (v28)
      {
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@!=%@%@)", v17, v27, @"cdw"];
        [v14 addObject:v21];
      }

      ++v15;
    }

    while (v15 != v29);
  }

  v22 = [v14 componentsJoinedByString:@" && "];
  if (v26)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ && (%@))", v26, v22];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"(%@)", v22, v25];
  }
  v23 = ;

  return v23;
}

void sub_231A587F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void queryPowerState()
{
  v13 = *MEMORY[0x277D85DE8];
  v0 = IOPSCopyPowerSourcesInfo();
  if (v0)
  {
    v1 = v0;
    v2 = IOPSGetProvidingPowerSourceType(v0);
    v3 = gIsSystemOnBattery;
    if (v2)
    {
      v4 = CFEqual(v2, @"Battery Power") != 0;
    }

    else
    {
      v4 = 0;
    }

    gIsSystemOnBattery = v4;
    if (v3 != v4)
    {
      v5 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = "not on battery";
        if (v3)
        {
          v7 = "on battery";
        }

        else
        {
          v7 = "not on battery";
        }

        if (gIsSystemOnBattery)
        {
          v6 = "on battery";
        }

        v9 = 136315394;
        v10 = v7;
        v11 = 2080;
        v12 = v6;
        _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_INFO, "System power state change was %s is %s", &v9, 0x16u);
      }
    }

    CFRelease(v1);
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t copyBundleRemapCallback(uint64_t a1)
{
  v2 = [sIndexer fileProviderExtensionToAppBundleMap];
  v3 = [v2 objectForKeyedSubscript:a1];

  return v3;
}

void sub_231A59E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231A5A128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231A5AD1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_231A5B868(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_231A5C270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_231A5C4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231A5C714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_231A5CBB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_231A5CD1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231A5D110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_231A5D7B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id a37)
{
  objc_destroyWeak(&a37);
  objc_destroyWeak((v37 - 232));
  _Block_object_dispose((v37 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_231A5DDC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_231A5E518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231A5EB64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak(&a19);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose((v28 - 144), 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_231A5F178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose((v42 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_231A60ADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id indexOpenRecordPath()
{
  v0 = MEMORY[0x277CCACA8];
  v1 = [sDelegate indexDirectory];
  v2 = [v0 stringWithFormat:@"%@/indexOpenRecord.plist", v1];

  return v2;
}

id newIndexOpensDict()
{
  v16 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEB38] dictionary];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  obj = [&unk_2846C96E0 allValues];
  v1 = [obj countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v12;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v12 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v11 + 1) + 8 * i);
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"pc%@_%@", v5, @"lastOpen"];
        [v0 setObject:&unk_2846C96B0 forKeyedSubscript:v6];

        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"pc%@_%@", v5, @"lastAnalytics"];
        [v0 setObject:&unk_2846C96B0 forKeyedSubscript:v7];
      }

      v2 = [obj countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v2);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v0;
}

id indexHeartbeatPath()
{
  v0 = MEMORY[0x277CCACA8];
  v1 = [sDelegate indexDirectory];
  v2 = [v0 stringWithFormat:@"%@/heartbeat.plist", v1];

  return v2;
}

id newHeartbeatDict()
{
  v36 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEB38] dictionary];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [&unk_2846C96E0 allValues];
  v1 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v32;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v32 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v31 + 1) + 8 * i);
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"pc%@_%@", v5, @"age"];
        [v0 setObject:&unk_2846C96B0 forKeyedSubscript:v6];

        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"pc%@_%@", v5, @"wipes"];
        [v0 setObject:&unk_2846C9680 forKeyedSubscript:v7];

        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"pc%@_%@", v5, @"wipes_aggregate"];
        [v0 setObject:&unk_2846C9680 forKeyedSubscript:v8];

        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"pc%@_%@", v5, @"obj_count"];
        [v0 setObject:&unk_2846C96B0 forKeyedSubscript:v9];
      }

      v2 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v2);
  }

  v10 = [MEMORY[0x277CCABB0] numberWithBool:0];
  [v0 setObject:v10 forKeyedSubscript:@"rootsinstalled"];

  [v0 setObject:@"unknown" forKeyedSubscript:@"spotlightversion"];
  [v0 setObject:@"unknown" forKeyedSubscript:@"previousspotlightversion"];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:0];
  [v0 setObject:v11 forKeyedSubscript:@"vectorindexon"];

  v12 = [MEMORY[0x277CCABB0] numberWithLong:-1];
  [v0 setObject:v12 forKeyedSubscript:@"timesinceboot"];

  v13 = [MEMORY[0x277CCABB0] numberWithLong:-1];
  [v0 setObject:v13 forKeyedSubscript:@"timesinceupdate"];

  [v0 setObject:@"unknown" forKeyedSubscript:@"build"];
  [v0 setObject:@"unknown" forKeyedSubscript:@"previousbuild"];
  [v0 setObject:@"unknown" forKeyedSubscript:@"buildbeforeupgrade"];
  v14 = [MEMORY[0x277CCABB0] numberWithBool:0];
  [v0 setObject:v14 forKeyedSubscript:@"textsemanticsearchon"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:0];
  [v0 setObject:v15 forKeyedSubscript:@"embeddingdonationon"];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:0];
  [v0 setObject:v16 forKeyedSubscript:@"otaversion"];

  v17 = MEMORY[0x277CCABB0];
  v18 = [MEMORY[0x277CBEAA8] date];
  [v18 timeIntervalSince1970];
  v20 = [v17 numberWithLong:v19];
  [v0 setObject:v20 forKeyedSubscript:@"heartbeat_age"];

  memset(&v30, 0, sizeof(v30));
  v21 = [sDelegate indexDirectory];
  LODWORD(v18) = stat([v21 UTF8String], &v30);

  v22 = *__error();
  if (v18)
  {
    v23 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      newHeartbeatDict_cold_1();
    }

    tv_sec = -1;
  }

  else
  {
    tv_sec = v30.st_birthtimespec.tv_sec;
  }

  *__error() = v22;
  v25 = [MEMORY[0x277CCABB0] numberWithLong:tv_sec];
  [v0 setObject:v25 forKeyedSubscript:@"parentDirectory_age"];

  v26 = [MEMORY[0x277CCABB0] numberWithLong:-1];
  [v0 setObject:v26 forKeyedSubscript:@"lastSent"];

  v27 = *MEMORY[0x277D85DE8];

  return v0;
}

uint64_t protectionClassForAnalytics(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x277CCA190]])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277CCA198]])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277CCA1A8]])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277CCA1A0]])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"Priority"])
  {
    v2 = 5;
  }

  else if (sUseMailIndex == 1 && ([v1 isEqualToString:@"MobileMailIndex"] & 1) != 0)
  {
    v2 = 7;
  }

  else
  {
    v3 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      protectionClassForAnalytics_cold_1(v1);
    }

    v2 = 0;
  }

  return v2;
}

__CFString *rebuildReasonString(int a1, char a2)
{
  if (a1)
  {
    v2 = @"Intentional: marked purgeable";
  }

  else
  {
    v2 = @"Error: not fully created";
  }

  if (a1 && (a2 & 1) == 0)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:SIGetRebuildReason()];
  }

  if (SIGetPreviousError())
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ / %s", v2, SIGetPreviousError()];

    v2 = v3;
  }

  return v2;
}

void sub_231A63AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231A63E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231A642B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231A65E50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t protectionClassIntValue(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x277CCA190]])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277CCA198]])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277CCA1A8]])
  {
    v2 = 7;
  }

  else
  {
    v2 = 3;
  }

  return v2;
}

void sub_231A68774(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x228], 8);
  objc_destroyWeak(&STACK[0x268]);
  objc_destroyWeak(&STACK[0x270]);
  _Unwind_Resume(a1);
}

uint64_t createResetTouchFileForUUID(void *a1, void *a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = a1;
  v6 = [v3 alloc];
  v7 = [sDelegate indexDirectory];
  v8 = [v6 initWithFormat:@"%@/TrialResets/%@/%@", v7, v5, v4];

  v14 = *MEMORY[0x277CCA1B0];
  v15[0] = *MEMORY[0x277CCA1A0];
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = [v10 createFileAtPath:v8 contents:0 attributes:v9];

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_231A6A7E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void syncFinished(uint64_t a1)
{
  v3 = *a1;
  dispatch_group_leave(*a1);
  v2 = *(a1 + 8);
  SDTransactionDone(v2);
  free(a1);
}

void sub_231A6D5F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 160), 8);
  _Block_object_dispose((v35 - 128), 8);
  _Unwind_Resume(a1);
}

void processReverseInfo(uint64_t a1, int a2, void *a3, void *a4, void *a5)
{
  v37 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (a2 <= 510)
  {
    *(a1 + 8 * (511 - a2)) = [v11 integerValue];
    MEMORY[0x28223BE20]();
    v14 = &v32 - v13;
    bzero(&v32 - v13, v15);
    *v14 = 0;
    v16 = v14;
    if ((a2 & 0x80000000) == 0)
    {
      v17 = a2;
      v16 = v14;
      do
      {
        v18 = *(a1 + 8 * ~a2 + 4096 + 8 * v17);
        *v16 = 47;
        v19 = -1;
        v20 = 1;
        v21 = v18;
        do
        {
          v22 = v20;
          v23 = v21 + 9;
          v21 /= 10;
          ++v19;
          ++v20;
        }

        while (v23 > 0x12);
        do
        {
          v16[v22--] = v18 % 10 + 48;
          v18 /= 10;
        }

        while (v22 > 0);
        v16 += v19 + 2;
      }

      while (v17-- > 0);
    }

    *v16 = 0;
    [v9 appendFormat:@"%s\n", v14];
    v25 = [v10 objectForKeyedSubscript:v12];
    if (v25)
    {
      [v10 setObject:0 forKeyedSubscript:v12];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v34 = 0u;
        v35 = 0u;
        v33 = 0u;
        v32 = 0u;
        v26 = v25;
        v27 = [v26 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v33;
          do
          {
            v30 = 0;
            do
            {
              if (*v33 != v29)
              {
                objc_enumerationMutation(v26);
              }

              processReverseInfo(a1, (a2 + 1), v9, v10, *(*(&v32 + 1) + 8 * v30++));
            }

            while (v28 != v30);
            v28 = [v26 countByEnumeratingWithState:&v32 objects:v36 count:16];
          }

          while (v28);
        }
      }

      else
      {
        processReverseInfo(a1, (a2 + 1), v9, v10, v25);
      }
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

void sub_231A70054(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x350], 8);
  _Block_object_dispose(&STACK[0x270], 8);
  _Unwind_Resume(a1);
}

id SPLogDirectory()
{
  if (SPLogDirectory_onceToken != -1)
  {
    SPLogDirectory_cold_1();
  }

  v1 = SPLogDirectory_sSPLogDirectory;

  return v1;
}

void sub_231A71D44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void processItemsForImport(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, char a7)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = v18;
  if (v18)
  {
    dispatch_group_enter(v18);
  }

  v20 = dispatch_group_create();
  v21 = gImportQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __processItemsForImport_block_invoke;
  block[3] = &unk_278937288;
  v30 = v14;
  v31 = v16;
  v32 = v17;
  v33 = v13;
  v34 = v15;
  v35 = @"com.apple.CoreSpotlight.ImportExtension";
  v36 = v19;
  v37 = v20;
  v38 = a7;
  v22 = v20;
  v23 = v19;
  v24 = v15;
  v25 = v13;
  v26 = v17;
  v27 = v16;
  v28 = v14;
  dispatch_async(v21, block);
}

void sub_231A76014(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose(&STACK[0x460], 8);
  _Block_object_dispose(&STACK[0x498], 8);
  _Block_object_dispose(&STACK[0x4B8], 8);
  _Unwind_Resume(a1);
}

void sub_231A78D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 176), 8);
  _Block_object_dispose((v29 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_231A7A938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231A7BEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 176), 8);
  _Block_object_dispose((v31 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_231A7CFFC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_231A7FE0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_231A80C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  objc_destroyWeak((v41 + 112));
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  objc_destroyWeak((v42 - 256));
  _Block_object_dispose((v42 - 248), 8);
  _Block_object_dispose((v42 - 216), 8);
  _Block_object_dispose((v42 - 184), 8);
  _Unwind_Resume(a1);
}

void si_dispatch_leave_routine(dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
  }
}

void sub_231A82C64(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 240), 8);
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_231A849C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_231A855CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231A8945C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_231A89654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231A8B7D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v28 - 152), 8);
  _Unwind_Resume(a1);
}

unsigned __int8 *uuidBytesToString(unsigned __int8 *result, _BYTE *a2)
{
  v2 = *result;
  v3 = (v2 >> 4) + 55;
  if (v2 < 0xA0)
  {
    LOBYTE(v3) = (*result >> 4) | 0x30;
  }

  *a2 = v3;
  v4 = v2 & 0xF;
  v5 = v2 & 0xF | 0x30;
  v6 = (v2 & 0xF) + 55;
  if (v4 < 0xA)
  {
    v6 = v5;
  }

  a2[1] = v6;
  v7 = result[1];
  v8 = (v7 >> 4) + 55;
  if (v7 < 0xA0)
  {
    LOBYTE(v8) = (result[1] >> 4) | 0x30;
  }

  a2[2] = v8;
  v9 = v7 & 0xF;
  v10 = v7 & 0xF | 0x30;
  v11 = (v7 & 0xF) + 55;
  if (v9 < 0xA)
  {
    v11 = v10;
  }

  a2[3] = v11;
  v12 = result[2];
  v13 = (v12 >> 4) + 55;
  if (v12 < 0xA0)
  {
    LOBYTE(v13) = (result[2] >> 4) | 0x30;
  }

  a2[4] = v13;
  v14 = v12 & 0xF;
  v15 = v12 & 0xF | 0x30;
  v16 = (v12 & 0xF) + 55;
  if (v14 < 0xA)
  {
    v16 = v15;
  }

  a2[5] = v16;
  v17 = result[3];
  v18 = (v17 >> 4) + 55;
  if (v17 < 0xA0)
  {
    LOBYTE(v18) = (result[3] >> 4) | 0x30;
  }

  a2[6] = v18;
  v19 = v17 & 0xF;
  v20 = v17 & 0xF | 0x30;
  v21 = (v17 & 0xF) + 55;
  if (v19 < 0xA)
  {
    v21 = v20;
  }

  a2[7] = v21;
  a2[8] = 45;
  v22 = result[4];
  v23 = (v22 >> 4) + 55;
  if (v22 < 0xA0)
  {
    LOBYTE(v23) = (result[4] >> 4) | 0x30;
  }

  a2[9] = v23;
  v24 = v22 & 0xF;
  v25 = v22 & 0xF | 0x30;
  v26 = (v22 & 0xF) + 55;
  if (v24 < 0xA)
  {
    v26 = v25;
  }

  a2[10] = v26;
  v27 = result[5];
  v28 = (v27 >> 4) + 55;
  if (v27 < 0xA0)
  {
    LOBYTE(v28) = (result[5] >> 4) | 0x30;
  }

  a2[11] = v28;
  v29 = v27 & 0xF;
  v30 = v27 & 0xF | 0x30;
  v31 = (v27 & 0xF) + 55;
  if (v29 < 0xA)
  {
    v31 = v30;
  }

  a2[12] = v31;
  a2[13] = 45;
  v32 = result[6];
  v33 = (v32 >> 4) + 55;
  if (v32 < 0xA0)
  {
    LOBYTE(v33) = (result[6] >> 4) | 0x30;
  }

  a2[14] = v33;
  v34 = v32 & 0xF;
  v35 = v32 & 0xF | 0x30;
  v36 = (v32 & 0xF) + 55;
  if (v34 < 0xA)
  {
    v36 = v35;
  }

  a2[15] = v36;
  v37 = result[7];
  v38 = (v37 >> 4) + 55;
  if (v37 < 0xA0)
  {
    LOBYTE(v38) = (result[7] >> 4) | 0x30;
  }

  a2[16] = v38;
  v39 = v37 & 0xF;
  v40 = v37 & 0xF | 0x30;
  v41 = (v37 & 0xF) + 55;
  if (v39 < 0xA)
  {
    v41 = v40;
  }

  a2[17] = v41;
  a2[18] = 45;
  v42 = result[8];
  v43 = (v42 >> 4) + 55;
  if (v42 < 0xA0)
  {
    LOBYTE(v43) = (result[8] >> 4) | 0x30;
  }

  a2[19] = v43;
  v44 = v42 & 0xF;
  v45 = v42 & 0xF | 0x30;
  v46 = (v42 & 0xF) + 55;
  if (v44 < 0xA)
  {
    v46 = v45;
  }

  a2[20] = v46;
  v47 = result[9];
  v48 = (v47 >> 4) + 55;
  if (v47 < 0xA0)
  {
    LOBYTE(v48) = (result[9] >> 4) | 0x30;
  }

  a2[21] = v48;
  v49 = v47 & 0xF;
  v50 = v47 & 0xF | 0x30;
  v51 = (v47 & 0xF) + 55;
  if (v49 < 0xA)
  {
    v51 = v50;
  }

  a2[22] = v51;
  a2[23] = 45;
  v52 = result[10];
  v53 = (v52 >> 4) + 55;
  if (v52 < 0xA0)
  {
    LOBYTE(v53) = (result[10] >> 4) | 0x30;
  }

  a2[24] = v53;
  v54 = v52 & 0xF;
  v55 = v52 & 0xF | 0x30;
  v56 = (v52 & 0xF) + 55;
  if (v54 < 0xA)
  {
    v56 = v55;
  }

  a2[25] = v56;
  v57 = result[11];
  v58 = (v57 >> 4) + 55;
  if (v57 < 0xA0)
  {
    LOBYTE(v58) = (result[11] >> 4) | 0x30;
  }

  a2[26] = v58;
  v59 = v57 & 0xF;
  v60 = v57 & 0xF | 0x30;
  v61 = (v57 & 0xF) + 55;
  if (v59 < 0xA)
  {
    v61 = v60;
  }

  a2[27] = v61;
  v62 = result[12];
  v63 = (v62 >> 4) + 55;
  if (v62 < 0xA0)
  {
    LOBYTE(v63) = (result[12] >> 4) | 0x30;
  }

  a2[28] = v63;
  v64 = v62 & 0xF;
  v65 = v62 & 0xF | 0x30;
  v66 = (v62 & 0xF) + 55;
  if (v64 < 0xA)
  {
    v66 = v65;
  }

  a2[29] = v66;
  v67 = result[13];
  v68 = (v67 >> 4) + 55;
  if (v67 < 0xA0)
  {
    LOBYTE(v68) = (result[13] >> 4) | 0x30;
  }

  a2[30] = v68;
  v69 = v67 & 0xF;
  v70 = v67 & 0xF | 0x30;
  v71 = (v67 & 0xF) + 55;
  if (v69 < 0xA)
  {
    v71 = v70;
  }

  a2[31] = v71;
  v72 = result[14];
  v73 = (v72 >> 4) + 55;
  if (v72 < 0xA0)
  {
    LOBYTE(v73) = (result[14] >> 4) | 0x30;
  }

  a2[32] = v73;
  v74 = v72 & 0xF;
  v75 = v72 & 0xF | 0x30;
  v76 = (v72 & 0xF) + 55;
  if (v74 < 0xA)
  {
    v76 = v75;
  }

  a2[33] = v76;
  v77 = result[15];
  v78 = (v77 >> 4) + 55;
  if (v77 < 0xA0)
  {
    LOBYTE(v78) = (result[15] >> 4) | 0x30;
  }

  a2[34] = v78;
  v79 = v77 & 0xF;
  v80 = v77 & 0xF | 0x30;
  v81 = (v77 & 0xF) + 55;
  if (v79 >= 0xA)
  {
    v80 = v81;
  }

  a2[35] = v80;
  a2[36] = 0;
  return result;
}

void sub_231A90000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, id a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, id a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, id a63)
{
  objc_destroyWeak((v69 + 32));
  objc_destroyWeak((v68 + 32));
  objc_destroyWeak(&a27);
  objc_destroyWeak(&a32);
  objc_destroyWeak((v70 + 32));
  objc_destroyWeak(&a53);
  objc_destroyWeak(&a58);
  objc_destroyWeak(&a63);
  objc_destroyWeak(&a68);
  objc_destroyWeak(&STACK[0x200]);
  objc_destroyWeak(&STACK[0x228]);
  objc_destroyWeak(&STACK[0x310]);
  _Unwind_Resume(a1);
}

void sub_231A921C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_231A9466C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _upgradeIndexerCommitSynchronous(void *a1)
{
  if ([a1 index] && SISyncIndex())
  {
    v1 = dispatch_group_create();
    syncContextCreate(v1, 0);
    SISynchedOp();
  }
}

void sub_231A98034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231A98784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_231A9E31C(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x240], 8);
  _Block_object_dispose(&STACK[0x260], 8);
  _Block_object_dispose(&STACK[0x280], 8);
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_231AA1ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_231AA5368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231AA57EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231AA5C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231AA60E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231AA6AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void setTurboMode(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = "Disable";
    if (a1)
    {
      v2 = "Enable";
    }

    *buf = 136315138;
    v8 = v2;
    _os_log_impl(&dword_231A35000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s turbo mode", buf, 0xCu);
  }

  sTurboMode = a1;
  v3 = turboFilePath();
  if (a1)
  {
    v4 = open(v3, 514, 384);
    if (v4 != -1)
    {
      close(v4);
    }
  }

  else
  {
    unlink(v3);
  }

  _SISetTurboMode();
  v5 = [MEMORY[0x277D65790] sharedProcessor];
  [v5 setTurboMode:a1];

  v6 = *MEMORY[0x277D85DE8];
}

void wait_for_apfs_kb_state(const char *a1, int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (a2)
    {
      v4 = 5;
    }

    else
    {
      v4 = 4;
    }

    v15 = 0;
    memset(v14, 0, sizeof(v14));
    LODWORD(v14[0]) = v4;
    v5 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 67109378;
      v11 = a2;
      v12 = 2080;
      v13 = a1;
      _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_DEFAULT, "### wait_for_apfs_kb_state %d enter %s", &v10, 0x12u);
    }

    if (fsctl(a1, 0x80284A5AuLL, v14, 0) == -1)
    {
      v8 = *__error();
      if (v8 != 19 && v8 != 45)
      {
        v9 = logForCSLogCategoryDefault();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          wait_for_apfs_kb_state_cold_1();
        }
      }
    }

    v6 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 67109378;
      v11 = a2;
      v12 = 2080;
      v13 = a1;
      _os_log_impl(&dword_231A35000, v6, OS_LOG_TYPE_DEFAULT, "### wait_for_apfs_kb_state %d exit %s", &v10, 0x12u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void extractBundlesAndProtectionClasses(void *a1, void *a2, void *a3)
{
  v21 = a1;
  v5 = a2;
  v6 = a3;
  v7 = [v21 count];
  if (v7 >= 2)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v20 = 0;
    v11 = 0;
    v12 = 0;
    v18 = *MEMORY[0x277CCA190];
    v17 = *MEMORY[0x277CCA198];
    v19 = *MEMORY[0x277CCA1A0];
    v16 = *MEMORY[0x277CCA1A8];
    for (i = 1; v8 != i; ++i)
    {
      v14 = [v21 objectAtIndexedSubscript:{i, v16}];
      if ([v14 length])
      {
        if ([v14 hasPrefix:@"com."])
        {
          [v5 addObject:v14];
        }

        else
        {
          v15 = [v14 characterAtIndex:0];
          if (v15 <= 87)
          {
            if (v15 > 76)
            {
              switch(v15)
              {
                case 'M':
                  goto LABEL_35;
                case 'N':
                  if ([v14 isEqualToString:v18])
                  {
LABEL_39:
                    if ((v10 & 1) == 0)
                    {
                      [v6 addObject:v18];
                    }

                    v10 = 1;
                    break;
                  }

                  if ([v14 isEqualToString:v17])
                  {
LABEL_20:
                    if ((v12 & 1) == 0)
                    {
                      [v6 addObject:v17];
                    }

                    v12 = 1;
                    break;
                  }

                  if ([v14 isEqualToString:v19])
                  {
LABEL_44:
                    if ((v9 & 1) == 0)
                    {
                      [v6 addObject:v19];
                    }

                    v9 = 1;
                    break;
                  }

                  if ([v14 isEqualToString:v16])
                  {
                    goto LABEL_29;
                  }

                  break;
                case 'P':
                  goto LABEL_32;
              }
            }

            else
            {
              if ((v15 - 67) < 2)
              {
                goto LABEL_44;
              }

              if (v15 == 65)
              {
                goto LABEL_39;
              }

              if (v15 == 66)
              {
                goto LABEL_20;
              }
            }
          }

          else if (v15 <= 98)
          {
            switch(v15)
            {
              case 'X':
                goto LABEL_29;
              case 'a':
                goto LABEL_39;
              case 'b':
                goto LABEL_20;
            }
          }

          else if (v15 > 111)
          {
            if (v15 == 112)
            {
LABEL_32:
              if ((v20 & 1) == 0)
              {
                [v6 addObject:@"Priority"];
              }

              LOBYTE(v20) = 1;
              goto LABEL_47;
            }

            if (v15 == 120)
            {
LABEL_29:
              if ((v11 & 1) == 0)
              {
                [v6 addObject:v16];
              }

              v11 = 1;
            }
          }

          else
          {
            if ((v15 - 99) < 2)
            {
              goto LABEL_44;
            }

            if (v15 == 109)
            {
LABEL_35:
              if ((v20 & 0x100000000) == 0)
              {
                [v6 addObject:@"MobileMailIndex"];
              }

              BYTE4(v20) = 1;
            }
          }
        }
      }

LABEL_47:
    }
  }
}

void sub_231AAF2E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t hasResetTouchFilesForUUID(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = a1;
  v3 = [v1 alloc];
  v4 = [sDelegate indexDirectory];
  v5 = [v3 initWithFormat:@"%@/TrialResets/%@", v4, v2];

  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v6 fileExistsAtPath:v5];

  return v7;
}

uint64_t createResetTouchFileDirectoryForUUID(void *a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CCACA8];
  v2 = a1;
  v3 = [v1 alloc];
  v4 = [sDelegate indexDirectory];
  v5 = [v3 initWithFormat:@"%@/TrialResets/%@", v4, v2];

  v14 = *MEMORY[0x277CCA1B0];
  v15[0] = *MEMORY[0x277CCA1A0];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v13 = 0;
  v8 = [v7 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:v6 error:&v13];
  v9 = v13;

  if (v9)
  {
    v10 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      createResetTouchFileDirectoryForUUID_cold_1();
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

void ___sendPhotosReindexABCReport_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D6B198]];
  v4 = [v3 BOOLValue];

  if ((v4 & 1) == 0)
  {
    v5 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      ___sendPhotosReindexABCReport_block_invoke_cold_1(v2);
    }
  }
}

void __getCNContact_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 value];
  [v2 addObject:v3];
}

uint64_t MDBootTime()
{
  v5 = *MEMORY[0x277D85DE8];
  *v4 = 0x1500000001;
  v2[0] = 0;
  v2[1] = 0;
  v3 = 16;
  if (sysctl(v4, 2u, v2, &v3, 0, 0) == -1)
  {
    result = 0;
  }

  else
  {
    result = v2[0];
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

void __updatedFrom2024Seed_block_invoke()
{
  v28 = *MEMORY[0x277D85DE8];
  v0 = indexHeartbeatPath();
  pthread_rwlock_wrlock(&sIndexHeartbeatLock);
  v1 = [MEMORY[0x277CCAA00] defaultManager];
  v2 = [v1 fileExistsAtPath:v0];

  if (v2)
  {
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v0];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 objectForKeyedSubscript:@"v2"];

      if (v5)
      {
        v6 = newHeartbeatDict();

        v4 = v6;
      }
    }

    pthread_rwlock_unlock(&sIndexHeartbeatLock);
    v7 = [v4 objectForKeyedSubscript:@"previousbuild"];
    if (v7)
    {
      v8 = isAppleInternalInstall();
      v9 = is2024Seed(v7);
      v10 = v8 | v9;
      if (v8 && !v9)
      {
        v11 = v7;
        v23 = 0;
        v12 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:@"22[AB]\\d{1 options:3}($|\\D)" error:{0, &v23}];
        v13 = v23;
        v14 = v13;
        if (!v12 || v13)
        {
          v15 = logForCSLogCategoryIndex();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            __updatedFrom2024Seed_block_invoke_cold_1();
          }
        }

        v16 = [v12 numberOfMatchesInString:v11 options:0 range:{0, objc_msgSend(v11, "length")}];
        v17 = logForCSLogCategoryIndex();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = &stru_2846BD100;
          if (!v16)
          {
            v18 = @" not";
          }

          *buf = 138412546;
          v25 = v11;
          v26 = 2112;
          v27 = v18;
          _os_log_impl(&dword_231A35000, v17, OS_LOG_TYPE_DEFAULT, "%@ is%@ a 2024 release build", buf, 0x16u);
        }

        v10 = v16 != 0;
      }

      v19 = v10 & 1;
    }

    else
    {
      v21 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        __updatedFrom2024Seed_block_invoke_cold_2();
      }

      v19 = 0;
    }

    updatedFrom2024Seed_updatedFromSeed = v19;
  }

  else
  {
    v20 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231A35000, v20, OS_LOG_TYPE_DEFAULT, "Did not find heartbeat file", buf, 2u);
    }

    pthread_rwlock_unlock(&sIndexHeartbeatLock);
    updatedFrom2024Seed_updatedFromSeed = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
}

BOOL is2024Seed(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v12 = 0;
  v2 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:@"22[AB][45]\\d{3}($|\\D)" options:0 error:&v12];
  v3 = v12;
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    v6 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      is2024Seed_cold_1();
    }
  }

  v7 = [v2 numberOfMatchesInString:v1 options:0 range:{0, objc_msgSend(v1, "length")}];
  v8 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = &stru_2846BD100;
    if (!v7)
    {
      v9 = @" not";
    }

    *buf = 138412546;
    v14 = v1;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEFAULT, "%@ is%@ a 2024 seed build", buf, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7 != 0;
}

void ___indexCrossedWorkBoundary_block_invoke(uint64_t a1)
{
  v2 = dispatch_group_create();
  [*(a1 + 32) commitUpdates:v2];
}

intptr_t __processItemsForImport_block_invoke(uint64_t a1, const char *a2)
{
  if (sTurboMode == 1)
  {
    v3 = 0;
  }

  else
  {
    __processItemsForImport_block_invoke_cold_1(v32, a2);
    v3 = v32[0];
  }

  if ((gIsSystemOnBattery | v3))
  {
    v4 = 20.0;
  }

  else
  {
    v4 = 0.5;
  }

  usleep((v4 * 1000000.0));
  v5 = lastTimeOnPower_block_invoke_8_counter++;
  if ((v5 & 0xF) == 0)
  {
    v6 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __processItemsForImport_block_invoke_cold_2(a1);
    }
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v11 = *(a1 + 48);
  v12 = *(a1 + 80);
  v13 = *(a1 + 88);
  v31 = *(a1 + 96);
  v14 = *(a1 + 56);
  v15 = v7;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v21;
  if (v21)
  {
    dispatch_group_enter(v21);
  }

  v23 = [v17 jobOptions];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __processItemsForImportInner_block_invoke;
  v32[3] = &unk_278937328;
  v33 = v19;
  v34 = v14;
  v35 = v22;
  v36 = v20;
  v37 = v18;
  v38 = v15;
  v40 = v31;
  v39 = v23;
  v24 = v19;
  v25 = v14;
  v26 = v22;
  v27 = v20;
  v28 = v18;
  v29 = v15;
  [v16 indexRequestsPerformDataJob:v17 forBundle:v28 completionHandler:v32];

  return dispatch_group_wait(*(a1 + 88), 0xFFFFFFFFFFFFFFFFLL);
}

void __processItemsForImportInner_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v6 code] == 4099)
  {
    v7 = [v6 domain];
    v8 = [v7 isEqualToString:@"NSCocoaErrorDomain"];
  }

  else
  {
    v8 = 0;
  }

  v9 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v5 length];
    v11 = *(a1 + 32);
    *buf = 134219010;
    v31 = v5;
    v32 = 2048;
    v33 = v10;
    v34 = 1024;
    v35 = v8;
    v36 = 2112;
    v37 = v6;
    v38 = 2112;
    v39 = v11;
    _os_log_impl(&dword_231A35000, v9, OS_LOG_TYPE_INFO, "==== CALLBACK data:%p length:%ld crash:%d error:%@ unique:%@", buf, 0x30u);
  }

  objc_initWeak(buf, *(a1 + 40));
  v12 = *(*(a1 + 40) + 152);
  if (v12)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __processItemsForImportInner_block_invoke_3862;
    v19[3] = &unk_278937300;
    objc_copyWeak(v26, buf);
    v20 = *(a1 + 64);
    v21 = *(a1 + 32);
    v27 = (v5 | v6) == 0;
    v28 = v8;
    v22 = v5;
    v13 = *(a1 + 72);
    v29 = *(a1 + 88);
    v14 = *(a1 + 80);
    v23 = v13;
    v26[1] = v14;
    v24 = *(a1 + 48);
    v25 = *(a1 + 56);
    SIBackgroundOpBlock(v12, 9, v19);

    objc_destroyWeak(v26);
  }

  else
  {
    v15 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __processItemsForImportInner_block_invoke_cold_1();
    }

    v16 = *(a1 + 48);
    if (v16)
    {
      dispatch_group_leave(v16);
    }

    v17 = *(a1 + 56);
    if (v17)
    {
      dispatch_group_leave(v17);
    }
  }

  objc_destroyWeak(buf);

  v18 = *MEMORY[0x277D85DE8];
}

void __processItemsForImportInner_block_invoke_3862(uint64_t a1, uint64_t a2, int a3)
{
  v98 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 80));
    v87 = 0;
    v86 = 0;
    v85 = 0;
    Current = CFAbsoluteTimeGetCurrent();
    v55 = a1;
    [WeakRetained checkAdmission:*(a1 + 32) background:1 didBeginThrottle:&v87 + 1 didEndThrottle:&v87 live:&v86 + 1 slow:&v86 memoryPressure:&v85];
    v9 = [*(a1 + 40) count];
    if (*(a1 + 96) == 1)
    {
      v10 = [MEMORY[0x277CBEB18] array];
      if (v9 >= 1)
      {
        v11 = *MEMORY[0x277CC2BF0];
        v12 = MEMORY[0x277CBEC38];
        do
        {
          v95 = v11;
          v96 = v12;
          v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
          [v10 addObject:v13];

          --v9;
        }

        while (v9);
      }
    }

    else
    {
      if (*(a1 + 97) != 1)
      {
        v10 = [objc_alloc(MEMORY[0x277CC33C8]) initWithData:*(a1 + 48)];
        v14 = [v10 decode];
LABEL_19:
        v18 = v14;

        v19 = objc_alloc_init(MEMORY[0x277CC33A0]);
        [v19 beginArray];
        v20 = *(v55 + 56);
        v21 = *(v55 + 40);
        v61 = *(v55 + 98);
        v57 = WeakRetained;
        v56 = v20;
        v22 = v21;
        v65 = v18;
        v23 = v19;
        v88 = 0u;
        v89 = 0u;
        v90 = 0u;
        v91 = 0u;
        obj = v22;
        v70 = [v22 countByEnumeratingWithState:&v88 objects:v97 count:16];
        if (!v70)
        {
          goto LABEL_43;
        }

        v24 = 0;
        v63 = 0;
        v64 = *v89;
        v60 = *MEMORY[0x277CC2BE0];
        v68 = *MEMORY[0x277CBEEE8];
        v59 = *MEMORY[0x277CC2C00];
        v58 = *MEMORY[0x277CC2BF8];
        v66 = *MEMORY[0x277CC31A0];
        do
        {
          for (i = 0; i != v70; ++i)
          {
            if (*v89 != v64)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(*(&v88 + 1) + 8 * i);
            v27 = [v65 objectAtIndexedSubscript:v24];
            v28 = [v27 objectForKeyedSubscript:@"_kMDItemExternalID"];
            if (!v28 || (objc_opt_class(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v26 isEqualToString:v28])
            {
              if (v27)
              {
                [MEMORY[0x277CBEB38] dictionaryWithDictionary:v27];
              }

              else
              {
                [MEMORY[0x277CBEB38] dictionary];
              }
              v29 = ;
              [v29 setObject:&unk_2846C95D8 forKeyedSubscript:v60];
              [v29 setObject:v26 forKeyedSubscript:@"_kMDItemExternalID"];
              [v29 setObject:v68 forKeyedSubscript:v59];
              [v29 setObject:v68 forKeyedSubscript:v58];
              v30 = [v29 objectForKeyedSubscript:v66];
              if (v30)
              {
                v31 = v63;
                if (!v63)
                {
                  v32 = objc_alloc_init(MEMORY[0x277CC33A0]);
                  [v32 beginArray];
                  [v32 encodeString:"contentText"];
                  [v32 beginDictionary];
                  v31 = v32;
                }

                v63 = v31;
                [v31 encodeObject:v30 withKey:v26];
              }

              if (v61)
              {
                v33 = [MEMORY[0x277D65790] sharedProcessor];
                v34 = [v57 dataclass];
                v35 = [v33 processorAttributesForRecord:v29 bundleID:v56 protectionClass:v34 isUpdate:0];

                if (v35)
                {
                  [v29 addEntriesFromDictionary:v35];
                }
              }

              [v29 removeObjectForKey:v66];
              [v23 beginArray];
              [v23 encodeString:"__class:CSSearchableItemAttributeSet"];
              [v23 encodeInt64:8];
              [v23 encodeObject:v29];
              [v23 endArray];
            }

            ++v24;
          }

          v70 = [obj countByEnumeratingWithState:&v88 objects:v97 count:16];
        }

        while (v70);
        if (v63)
        {
          [v63 endDictionary];
          [v63 endArray];
        }

        else
        {
LABEL_43:
          v63 = 0;
        }

        [v23 endArray];
        v71 = [v23 data];
        v69 = [v63 data];
        v36 = v55;
        if (v71)
        {
          if (*(v55 + 89))
          {
            v37 = [v57 _interestedAttributesMaskForBundleID:*(v55 + 56)];
            v36 = v55;
            if (v37)
            {
              v67 = [objc_alloc(MEMORY[0x277CC33C8]) initWithData:v71];
              v83 = 0u;
              v84 = 0u;
              v81 = 0u;
              v82 = 0u;
              v38 = [objc_alloc(MEMORY[0x277CC34C0]) initWithItems:v67 itemsContent:0];
              v39 = 0;
              v40 = 0;
              v41 = [v38 countByEnumeratingWithState:&v81 objects:v92 count:16];
              if (v41)
              {
                v42 = *v82;
                do
                {
                  for (j = 0; j != v41; ++j)
                  {
                    if (*v82 != v42)
                    {
                      objc_enumerationMutation(v38);
                    }

                    v44 = *(*(&v81 + 1) + 8 * j);
                    v45 = [objc_opt_class() checkItemOfInterest:v44 mask:v37];
                    v46 = [v44 isUpdate];
                    if (v45)
                    {
                      v47 = v46;
                    }

                    else
                    {
                      v47 = 0;
                    }

                    if (v47 == 1)
                    {
                      if (!v40)
                      {
                        v40 = objc_opt_new();
                      }

                      [v40 addObject:v44];
                      v39 |= v45;
                    }
                  }

                  v41 = [v38 countByEnumeratingWithState:&v81 objects:v92 count:16];
                }

                while (v41);
              }

              [v57 notifyClientForItemUpdates:*(v55 + 56) updatedItems:v40 batchMask:v39];
              v36 = v55;
            }
          }
        }

        if (v69)
        {
          v48 = (*(v36 + 88) >> 14) & 2 | 9;
        }

        v49 = v57[19];
        v50 = *(v36 + 56);
        v72[0] = MEMORY[0x277D85DD0];
        v72[1] = 3221225472;
        v72[2] = __processItemsForImportInner_block_invoke_2;
        v72[3] = &unk_2789372D8;
        objc_copyWeak(v76, (v36 + 80));
        v73 = *(v55 + 32);
        v77 = HIBYTE(v87);
        v78 = v87;
        v79 = HIBYTE(v86);
        v80 = v86;
        v76[1] = *&Current;
        v74 = *(v55 + 64);
        v75 = *(v55 + 72);
        v54 = [v72 copy];
        LODWORD(v49) = SISetCodedAttributes();

        if (!v49)
        {
          v51 = *(v55 + 64);
          if (v51)
          {
            dispatch_group_leave(v51);
          }

          v52 = *(v55 + 72);
          if (v52)
          {
            dispatch_group_leave(v52);
          }
        }

        objc_destroyWeak(v76);
        goto LABEL_70;
      }

      v10 = [MEMORY[0x277CBEB18] array];
      if (v9 >= 1)
      {
        v15 = *MEMORY[0x277CC2BE8];
        v16 = MEMORY[0x277CBEC38];
        do
        {
          v93 = v15;
          v94 = v16;
          v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
          [v10 addObject:v17];

          --v9;
        }

        while (v9);
      }
    }

    v14 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
    goto LABEL_19;
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    dispatch_group_leave(v4);
  }

  v5 = *(a1 + 72);
  if (!v5)
  {
LABEL_70:
    v53 = *MEMORY[0x277D85DE8];
    return;
  }

  v6 = *MEMORY[0x277D85DE8];

  dispatch_group_leave(v5);
}

void __processItemsForImportInner_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained owner];
    v7 = [v6 extensionDelegate];

    v8 = *(a1 + 32);
    v9 = *(a1 + 72);
    v10 = *(a1 + 73);
    v17 = *(a1 + 74);
    v11 = [v5 indexQueue];
    v12 = *(a1 + 75);
    v13 = *(a1 + 64);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __processItemsForImportInner_block_invoke_3;
    v18[3] = &unk_2789372B0;
    v19 = *(a1 + 40);
    v20 = *(a1 + 48);
    LOBYTE(v16) = v12;
    [v5 completeIndexingItemFor:v8 delegate:v7 didBeginThrottle:v9 didEndThrottle:v10 error:v3 live:v17 queue:v13 slow:v11 startTime:v16 dataLen:0 completionHandler:v18];
  }

  else
  {
    v14 = *(a1 + 40);
    if (v14)
    {
      dispatch_group_leave(v14);
    }

    v15 = *(a1 + 48);
    if (v15)
    {
      dispatch_group_leave(v15);
    }
  }
}

void __processItemsForImportInner_block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    dispatch_group_leave(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    dispatch_group_leave(v4);
  }
}

void ___setClientStateInner_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) dirty:0];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

uint64_t compareOID(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 != *a2;
  }
}

uint64_t __initializeDiskSpaceNotificationListener_block_invoke(uint64_t a1)
{
  pthread_mutex_lock(&initializeDiskSpaceNotificationListener_sVFSEventLock);
  data = dispatch_source_get_data(*(a1 + 32));
  if (data == 256)
  {
    v3 = logForCSLogCategoryDefault();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }

    *buf = 0;
    v4 = "Received empty update vfsevent; assuming not in low disk space state";
    v5 = buf;
    goto LABEL_4;
  }

  if ((data & 0x200) == 0)
  {
    if ((data & 4) == 0)
    {
      return pthread_mutex_unlock(&initializeDiskSpaceNotificationListener_sVFSEventLock);
    }

    v3 = logForCSLogCategoryDefault();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
LABEL_5:

      v6 = sVeryLowDiskSpace;
      sVeryLowDiskSpace = 0;
      if (v6)
      {
        goto LABEL_6;
      }

      return pthread_mutex_unlock(&initializeDiskSpaceNotificationListener_sVFSEventLock);
    }

    LOWORD(v11) = 0;
    v4 = "Received low disk space vfsevent; assuming very low disk ended";
    v5 = &v11;
LABEL_4:
    _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
    goto LABEL_5;
  }

  v8 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEFAULT, "Received very low disk space vfsevent", v12, 2u);
  }

  v9 = sVeryLowDiskSpace;
  sVeryLowDiskSpace = 1;
  if ((v9 & 1) == 0)
  {
    if (v9 != (v9 ^ 1))
    {
      v7 = +[SPCoreSpotlightIndexer sharedInstance];
      [v7 recycleAndPurgeIndex];
      goto LABEL_7;
    }

LABEL_6:
    v7 = +[SPCoreSpotlightIndexer sharedInstance];
    [v7 restoreIndexAndClearPurgeable];
LABEL_7:
  }

  return pthread_mutex_unlock(&initializeDiskSpaceNotificationListener_sVFSEventLock);
}

void handleLowDiskSpace()
{
  if ((sVeryLowDiskSpace & 1) == 0)
  {
    sVeryLowDiskSpace = 1;
    v1 = dispatch_get_global_queue(21, 0);
    dispatch_async(v1, &__block_literal_global_3894);
  }
}

void __handleLowDiskSpace_block_invoke()
{
  v0 = +[SPCoreSpotlightIndexer sharedInstance];
  [v0 recycleAndPurgeIndex];
}

void ___sendMemoryPressureABCReport_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D6B198]];
  v4 = [v3 BOOLValue];

  if ((v4 & 1) == 0)
  {
    v5 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      ___sendMemoryPressureABCReport_block_invoke_cold_1(v2);
    }
  }
}

void ___useMobileMailIndex_block_invoke()
{
  v7 = *MEMORY[0x277D85DE8];
  if (isAppleInternalInstall())
  {
    if (sPrivate)
    {
      _useMobileMailIndex__useMobileMailIndexVar = 0;
    }

    else
    {
      v1 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.searchd"];
      v2 = [v1 objectForKey:@"mobile_mail_index_enabled"];

      if (v2)
      {
        v3 = logForCSLogCategoryDefault();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          v6[0] = 67109120;
          v6[1] = [v1 BOOLForKey:@"mobile_mail_index_enabled"];
          _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_DEFAULT, "### _useMobileMailIndex: Using default mobile_mail_index_enabled=%d", v6, 8u);
        }

        v4 = [v1 BOOLForKey:@"mobile_mail_index_enabled"];
      }

      else
      {
        v4 = _os_feature_enabled_impl();
      }

      _useMobileMailIndex__useMobileMailIndexVar = v4;
    }
  }

  else
  {
    if (sPrivate)
    {
      v0 = 0;
    }

    else
    {
      v0 = _os_feature_enabled_impl();
    }

    _useMobileMailIndex__useMobileMailIndexVar = v0;
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t turboFilePath()
{
  v0 = [sDelegate indexDirectory];
  v1 = [v0 stringByAppendingPathComponent:@".turbo"];
  v2 = [v1 fileSystemRepresentation];

  return v2;
}

void _flushDeleteQueue()
{
  v22 = *MEMORY[0x277D85DE8];
  if (sTotalOutstandingDeletes)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v0 = [sDeleteBatches allKeys];
    v1 = [v0 countByEnumeratingWithState:&v13 objects:v21 count:16];
    if (v1)
    {
      v3 = v1;
      v4 = *v14;
      *&v2 = 67109378;
      v12 = v2;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v14 != v4)
          {
            objc_enumerationMutation(v0);
          }

          v6 = *(*(&v13 + 1) + 8 * i);
          v7 = [sDeleteBatches objectForKeyedSubscript:{v6, v12}];
          if ([v7 count])
          {
            v8 = logForCSLogCategoryDefault();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
            {
              v9 = [v7 count];
              *buf = v12;
              v18 = v9;
              v19 = 2112;
              v20 = v6;
              _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEFAULT, "flushing %d related deletes for %@", buf, 0x12u);
            }

            [SpotlightSender deleteSearchableItemsWithIdentifiers:v7 bundleID:v6 contentType:0 client:1];
            [SpotlightSender deleteSearchableItemsWithIdentifiers:v7 bundleID:v6 contentType:0 client:2];
          }

          [sDeleteBatches removeAllObjects];
          sTotalOutstandingDeletes = 0;
        }

        v3 = [v0 countByEnumeratingWithState:&v13 objects:v21 count:16];
      }

      while (v3);
    }
  }

  if (sDeletesTransaction)
  {
    SDTransactionDone(sDeletesTransaction);
    v10 = sDeletesTransaction;
    sDeletesTransaction = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __SPLogDirectory_block_invoke()
{
  v0 = [@"~/Library/Logs/CrashReporter/DiagnosticLogs/Search" stringByExpandingTildeInPath];
  v1 = SPLogDirectory_sSPLogDirectory;
  SPLogDirectory_sSPLogDirectory = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t OUTLINED_FUNCTION_8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*result + 192);
  v4 = *(*result + 152);
  v5 = *(*result + 24);
  return result;
}

uint64_t *OUTLINED_FUNCTION_21@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

uint64_t OUTLINED_FUNCTION_29@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_30@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 192);
  return result;
}

uint64_t OUTLINED_FUNCTION_31@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 40) = a3;
  v5 = *(*(*(a1 + 80) + 8) + 24);
  v6 = *(*(*(a1 + 88) + 8) + 24);

  return [a2 canceled];
}

uint64_t OUTLINED_FUNCTION_34(uint64_t result, float a2, uint64_t a3, uint64_t a4)
{
  *a4 = a2;
  *(a4 + 4) = result;
  *(a4 + 12) = 1024;
  *(a4 + 14) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_35(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

void OUTLINED_FUNCTION_40(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_43(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 count];
}

float weightedDistance(char *a1, char *a2, float a3, float a4)
{
  v8 = strlen(a1);
  v9 = strlen(a2);

  return _weightedDistance(a1, v8, a2, v9, a3, a4);
}

float _weightedDistance(unsigned __int8 *a1, size_t a2, unsigned __int8 *a3, size_t a4, float a5, float a6)
{
  v6 = a5;
  if (a2 > a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = a2;
  }

  if (a2 > a4)
  {
    v8 = a3;
  }

  else
  {
    v8 = a1;
  }

  if (a2 > a4)
  {
    v9 = a2;
  }

  else
  {
    v9 = a4;
  }

  if (a2 > a4)
  {
    v10 = a1;
  }

  else
  {
    v10 = a3;
  }

  v11 = v9 - v7;
  v12 = (v9 - v7);
  if (v12 > a5)
  {
    return v6;
  }

  if (a4 == a2 && !memcmp(v8, v10, v7))
  {
    return 0.0;
  }

  if (!v7)
  {
LABEL_20:
    v6 = 0.0;
    if (a4 == a2)
    {
      return v6;
    }

    v19 = flt_231AED820[a2 <= a4];
    return v19 * v12;
  }

  v16 = v7 - 1;
  v17 = &v10[v9 - 1];
  while (1)
  {
    v18 = *v17--;
    if (v8[v16] != v18)
    {
      break;
    }

    if (--v16 == -1)
    {
      goto LABEL_20;
    }
  }

  v20 = 0;
  while (v8[v20] == v10[v20])
  {
    if (v7 == ++v20)
    {
      v20 = v7;
      goto LABEL_29;
    }
  }

  v11 = v9 - v20;
LABEL_29:
  v21 = v7 - v20;
  if (v7 == v20)
  {
    v6 = 0.0;
    if (a4 == a2)
    {
      return v6;
    }

    v19 = 0.1;
    if (v7 <= 2)
    {
      v19 = 0.25;
    }

    if (a2 > a4)
    {
      v19 = 0.21;
    }

    return v19 * v12;
  }

  v22 = v11;
  v23 = (v11 - v21);
  if (v6 >= 0.0 && v22 >= v6)
  {
    v22 = v6;
    if (v23 > v6)
    {
      return v6;
    }
  }

  v84 = 0;
  v85 = 0;
  v86 = 0;
  std::vector<float>::vector[abi:ne200100](&v84, v11);
  __p = 0;
  v82 = 0;
  v83 = 0;
  std::vector<float>::vector[abi:ne200100](&__p, v11);
  v24 = v22;
  if (v9 != v20)
  {
    v25 = 0;
    v26 = v11 - 1;
    v27 = v84;
    v28 = v84 - 4;
    v29 = v84;
    for (i = v11; i; --i)
    {
      v31 = v25 | v20;
      if (a2 > a4)
      {
        if (!v31)
        {
          *v27 = 1053609164;
          goto LABEL_60;
        }

        if (i != 1 || !v25)
        {
          if (!v25)
          {
            *v27 = 1049582632;
            goto LABEL_60;
          }

          v33 = *(v29 - 1) + 0.28;
LABEL_57:
          *v29 = v33;
          goto LABEL_60;
        }

        v32 = *&v28[4 * v26] + 0.21;
      }

      else
      {
        if (!v31)
        {
          *v27 = 1055286886;
          goto LABEL_60;
        }

        if (i != 1 || !v25)
        {
          if (!v25)
          {
            *v27 = 1043878380;
            goto LABEL_60;
          }

          v33 = *(v29 - 1) + 0.18;
          goto LABEL_57;
        }

        v32 = *&v28[4 * v26] + 0.25;
      }

      *&v27[v26] = v32;
LABEL_60:
      ++v25;
      ++v29;
    }
  }

  v34 = 0;
  v35 = 0;
  v80 = (v22 - v23);
  v36 = *v8;
  v37 = flt_231AED818[a2 <= a4];
  v79 = v84;
  v38 = (&unk_231AED810 + 4 * (v20 == 0));
  if (a2 > a4)
  {
    v38 = (&unk_231AED808 + 4 * (v20 == 0));
  }

  v39 = *v38;
  v40 = v21 - 1;
  v41 = 0.0;
  v42 = 0.0;
  do
  {
    v43 = v8[v34 + v20];
    v44 = v42 + v37;
    if (!v34)
    {
      v44 = v39;
    }

    if (v34 <= v80)
    {
      v45 = v35;
    }

    else
    {
      v45 = v35 + 1;
    }

    if (v24 >= v11)
    {
      v46 = v24;
    }

    else
    {
      v46 = v24 + 1;
    }

    if (v45 < v46)
    {
      v47 = 0;
      v48 = 0;
      v49 = v34 == 0;
      v50 = v10[v20];
      v51 = __p;
      v52 = __p - 4;
      if (!v34)
      {
        v42 = 0.0;
      }

      if (v34 == v40)
      {
        v49 = 1;
      }

      v53 = ~v45 + v24 + (v24 < v11);
      v54 = (__PAIR128__(-v35, v80) - v34) >> 64;
      v55 = __p + 4 * v45;
      v56 = v44;
      v57 = &v79[4 * v45];
      while (1)
      {
        v58 = v42;
        if (v47 || !v54)
        {
          v60 = *&v55[4 * v47];
          *&v55[4 * v47] = v58;
          v59 = v41;
        }

        else
        {
          v59 = *&v52[4 * v45];
          v60 = *&v51[v45];
          *&v51[v45] = v58;
          v50 = v10[v45 - 1];
        }

        v41 = v60;
        v42 = *&v57[4 * v47];
        v61 = v10[v20 + v45 + v47];
        if (v43 != v61)
        {
          break;
        }

        v48 |= v49;
LABEL_140:
        *&v57[4 * v47++] = v58;
        v50 = v61;
        v56 = v58;
        if (v45 + v47 >= v46)
        {
          goto LABEL_143;
        }
      }

      if (a2 > a4)
      {
        if (v20 | v47)
        {
          if (v53 == v47)
          {
            v63 = v58 + 0.19;
          }

          else
          {
            v63 = v58 + 0.2;
          }
        }

        else
        {
          v63 = v58 + 0.27;
          if ((v48 & 1) == 0)
          {
            v64 = v42 + 0.45;
            if ((v42 + 0.45) >= v63)
            {
              v64 = v63;
            }

            v65 = v56 + 0.4;
            goto LABEL_118;
          }
        }

        if (v53 == v47)
        {
          v64 = v42 + 0.25;
          if ((v42 + 0.25) >= v63)
          {
            v64 = v63;
          }

          v65 = v56 + 0.21;
        }

        else
        {
          v64 = v42 + 0.18;
          if ((v42 + 0.18) >= v63)
          {
            v64 = v63;
          }

          v65 = v56 + 0.28;
        }

        goto LABEL_118;
      }

      if (v34 | v20)
      {
        if (v34 == v40)
        {
          v62 = v58 + 0.19;
LABEL_97:
          v66 = v56 + 0.25;
          if (v66 >= v62)
          {
            v64 = v62;
          }

          else
          {
            v64 = v66;
          }

          v65 = v42 + 0.21;
LABEL_118:
          if (v65 < v64)
          {
            v64 = v65;
          }

          if (!v34 || v54 == v47 || v43 != v50 || v36 != v61)
          {
            goto LABEL_139;
          }

          if (v53 == v47 && v34 == v40)
          {
            v70 = 0.38;
          }

          else
          {
            v70 = 0.275;
          }

          if (v45 + v47 == 1 && v34 == 1 && v20 == 0)
          {
            v70 = 0.39;
          }

          v58 = v59 + v70;
          if (v58 >= v64)
          {
LABEL_139:
            v58 = v64;
          }

          goto LABEL_140;
        }

        v62 = v58 + 0.2;
      }

      else
      {
        v62 = v58 + 0.27;
        if ((v48 & 1) == 0)
        {
          v68 = v56 + 0.45;
          if (v68 >= v62)
          {
            v64 = v62;
          }

          else
          {
            v64 = v68;
          }

          v65 = v42 + 0.4;
          goto LABEL_118;
        }

        if (v34 == v40)
        {
          goto LABEL_97;
        }
      }

      v67 = v56 + 0.18;
      if (v67 >= v62)
      {
        v64 = v62;
      }

      else
      {
        v64 = v67;
      }

      v65 = v42 + 0.28;
      goto LABEL_118;
    }

    v58 = v44;
LABEL_143:
    ++v34;
    v36 = v43;
    v24 = v46;
    v35 = v45;
    v42 = v44;
  }

  while (v34 != v21);
  if (a2 <= a4 && v7 >= 3)
  {
    v73 = ((v11 - 1) - v22);
    if (v11 > v73)
    {
      v74 = v84;
      v75 = __p;
      v76 = ~v73 + v11;
      do
      {
        v77 = v74[v73] + (v76 * 0.1);
        v75[v73] = v77;
        if (v77 < v58)
        {
          v58 = v77;
        }

        ++v73;
        --v76;
      }

      while (v73 < v11);
    }
  }

  if (v58 <= a6)
  {
    v6 = v58;
  }

  if (__p)
  {
    v82 = __p;
    operator delete(__p);
  }

  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

  return v6;
}

void sub_231AB8A08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL isCandidate(char *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 UTF8String];
  v5 = strlen(v4);
  v6 = strlen(a1);
  v7 = _weightedDistance(v4, v5, a1, v6, 4.0, 1.2);
  if (v5 <= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  v9 = 0;
  if (v7 < fmaxf(v8, 4.0) && v8 && v7 >= 0.0)
  {
    v9 = (1.0 - (v7 / v8)) >= 0.945;
  }

  return v9;
}

id SDPommesCorrectionsWithTopKAndToken(void *a1, void *a2, void *a3)
{
  v65 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  memset(v61, 0, sizeof(v61));
  v8 = v5;
  v48 = v7;
  if (!v8 || !v48 || ([v8 allKeys], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v11 = objc_msgSend(v48, "intValue"), v9, v10 <= v11))
  {
    v23 = v8;
    goto LABEL_19;
  }

  memset(v64, 0, sizeof(v64));
  *__p = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:__p objects:&v62 count:16];
  if (!v13)
  {
    goto LABEL_15;
  }

  v14 = *v56;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v56 != v14)
      {
        objc_enumerationMutation(v12);
      }

      v16 = *(__p[1] + i);
      v17 = [v12 objectForKeyedSubscript:v16];
      v18 = v64[0];
      if ([v48 intValue] <= ((*(&v18 + 1) - v18) >> 4))
      {
        if ([*(*&v64[0] + 8) compare:v17] > 0)
        {
          goto LABEL_13;
        }

        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,_compareTopKCandidates,std::__wrap_iter<std::pair<NSString * {__strong},NSNumber * {__strong}> *>>(*&v64[0], *(&v64[0] + 1), &v59, (*(&v64[0] + 1) - *&v64[0]) >> 4);
        std::vector<std::pair<NSString * {__strong},NSNumber * {__strong}>>::__base_destruct_at_end[abi:ne200100](v64, *(&v64[0] + 1) - 16);
      }

      v53 = v16;
      v54 = v17;
      std::vector<std::pair<NSString * {__strong},NSNumber * {__strong}>>::push_back[abi:ne200100](v64, &v53);
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,_compareTopKCandidates &,std::__wrap_iter<std::pair<NSString * {__strong},NSNumber * {__strong}> *>>(*&v64[0], *(&v64[0] + 1), &v59, (*(&v64[0] + 1) - *&v64[0]) >> 4);

LABEL_13:
    }

    v13 = [v12 countByEnumeratingWithState:__p objects:&v62 count:16];
  }

  while (v13);
LABEL_15:

  v19 = objc_opt_new();
  for (j = *&v64[0]; *&v64[0] != *(&v64[0] + 1); j = *&v64[0])
  {
    v21 = *j;
    v22 = *(*&v64[0] + 8);
    [v19 setObject:v22 forKeyedSubscript:v21];
    std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,_compareTopKCandidates,std::__wrap_iter<std::pair<NSString * {__strong},NSNumber * {__strong}> *>>(*&v64[0], *(&v64[0] + 1), &v59, (*(&v64[0] + 1) - *&v64[0]) >> 4);
    std::vector<std::pair<NSString * {__strong},NSNumber * {__strong}>>::__base_destruct_at_end[abi:ne200100](v64, *(&v64[0] + 1) - 16);
  }

  v23 = [v19 copy];

  v53 = v64;
  std::vector<std::pair<NSString * {__strong},NSNumber * {__strong}>>::__destroy_vector::operator()[abi:ne200100](&v53);
LABEL_19:

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v24 = v23;
  v25 = [v24 countByEnumeratingWithState:&v49 objects:v60 count:16];
  if (!v25)
  {
    goto LABEL_56;
  }

  v26 = *v50;
  while (2)
  {
    v27 = 0;
    while (2)
    {
      if (*v50 != v26)
      {
        objc_enumerationMutation(v24);
      }

      v28 = *(*(&v49 + 1) + 8 * v27);
      v29 = objc_autoreleasePoolPush();
      __p[0] = 0;
      __p[1] = 0;
      *&v56 = 0;
      v30 = v28;
      std::string::basic_string[abi:ne200100]<0>(__p, [v28 UTF8String]);
      v31 = SBYTE7(v56);
      if ((SBYTE7(v56) & 0x8000000000000000) != 0)
      {
        v31 = __p[1];
        if (__p[1] < 3)
        {
LABEL_53:
          operator delete(__p[0]);
          goto LABEL_54;
        }

LABEL_28:
        if (v31 <= 0x14)
        {
          v32 = v6;
          v33 = [v6 UTF8String];
          v34 = strlen(v33);
          v35 = (SBYTE7(v56) & 0x80u) == 0 ? __p : __p[0];
          v36 = (SBYTE7(v56) & 0x80u) == 0 ? BYTE7(v56) : __p[1];
          v37 = _weightedDistance(v33, v34, v35, v36, 4.0, 1.2);
          v38 = v34 <= v36 ? v36 : v34;
          if (v37 < fmaxf(v38, 4.0) && v37 >= 0.0)
          {
            if (v38)
            {
              v39 = 1.0 - (v37 / v38);
              if (v39 >= 0.945)
              {
                if (*(&v61[0] + 1) - *&v61[0] == 160)
                {
                  if (*(*&v61[0] + 24) > v39)
                  {
                    goto LABEL_52;
                  }

                  std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,_compareCorectionCandidates,std::__wrap_iter<std::pair<std::string,float> *>>(*&v61[0], *(&v61[0] + 1), &v62, 5);
                  v40 = (*(&v61[0] + 1) - 32);
                  if (*(*(&v61[0] + 1) - 9) < 0)
                  {
                    operator delete(*v40);
                  }

                  *(&v61[0] + 1) = v40;
                }

                if (SBYTE7(v56) < 0)
                {
                  std::string::__init_copy_ctor_external(&v62, __p[0], __p[1]);
                }

                else
                {
                  *&v62.__r_.__value_.__l.__data_ = *__p;
                  v62.__r_.__value_.__r.__words[2] = v56;
                }

                v63 = v39;
                std::priority_queue<std::pair<std::string,float>,std::vector<std::pair<std::string,float>>,_compareCorectionCandidates>::push(v61, &v62);
                if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v62.__r_.__value_.__l.__data_);
                }
              }
            }
          }
        }

LABEL_52:
        if ((SBYTE7(v56) & 0x80000000) == 0)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      }

      if (SBYTE7(v56) >= 3)
      {
        goto LABEL_28;
      }

LABEL_54:
      objc_autoreleasePoolPop(v29);
      if (v25 != ++v27)
      {
        continue;
      }

      break;
    }

    v25 = [v24 countByEnumeratingWithState:&v49 objects:v60 count:16];
    if (v25)
    {
      continue;
    }

    break;
  }

LABEL_56:

  v41 = [MEMORY[0x277CBEB18] array];
  for (k = *&v61[0]; *&v61[0] != *(&v61[0] + 1); k = *&v61[0])
  {
    if (*(k + 23) < 0)
    {
      k = *k;
    }

    v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:k];
    [v41 insertObject:v43 atIndex:0];
    std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,_compareCorectionCandidates,std::__wrap_iter<std::pair<std::string,float> *>>(*&v61[0], *(&v61[0] + 1), &v62, (*(&v61[0] + 1) - *&v61[0]) >> 5);
    v44 = (*(&v61[0] + 1) - 32);
    if (*(*(&v61[0] + 1) - 9) < 0)
    {
      operator delete(*v44);
    }

    *(&v61[0] + 1) = v44;
  }

  v45 = [v41 copy];

  v62.__r_.__value_.__r.__words[0] = v61;
  std::vector<std::pair<std::string,float>>::__destroy_vector::operator()[abi:ne200100](&v62);

  v46 = *MEMORY[0x277D85DE8];

  return v45;
}

void sub_231AB9108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  a19 = v62 - 176;
  std::vector<std::pair<NSString * {__strong},NSNumber * {__strong}>>::__destroy_vector::operator()[abi:ne200100](&a19);

  *(v62 - 176) = &a50;
  std::vector<std::pair<std::string,float>>::__destroy_vector::operator()[abi:ne200100]((v62 - 176));

  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void std::priority_queue<std::pair<std::string,float>,std::vector<std::pair<std::string,float>>,_compareCorectionCandidates>::push(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *a1;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,float>>>(a1, v11);
    }

    v12 = 32 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(v12 + 24) = *(a2 + 6);
    v7 = 32 * v8 + 32;
    v14 = *(a1 + 8) - *a1;
    v15 = 32 * v8 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::pair<std::string,float>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(v4 + 24) = *(a2 + 6);
    v7 = v4 + 32;
  }

  *(a1 + 8) = v7;
  std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,_compareCorectionCandidates &,std::__wrap_iter<std::pair<std::string,float> *>>(*a1, v7, v18, (v7 - *a1) >> 5);
}

id getAppTokens(NSString *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [(NSString *)v1 length];
  v4 = *MEMORY[0x277CCA408];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___Z12getAppTokensP8NSString_block_invoke;
  v10[3] = &unk_278937370;
  v5 = v1;
  v11 = v5;
  v6 = v2;
  v12 = v6;
  [(NSString *)v5 enumerateLinguisticTagsInRange:0 scheme:v3 options:v4 orthography:6 usingBlock:0, v10];
  v7 = v12;
  v8 = v6;

  return v6;
}

void ___Z12getAppTokensP8NSString_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) substringWithRange:?];
  v3 = [v2 localizedLowercaseString];

  [*(a1 + 40) addObject:v3];
}

BOOL isAppPrefixMatch(uint64_t a1, void *a2)
{
  if ([a2 rangeOfString:a1 options:9])
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 == 0;
  }

  return !v3;
}

uint64_t isSpellCorrectionReady(NSString *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  if (!a2)
  {
    if ([(NSString *)v3 length]< 3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 1;
    goto LABEL_6;
  }

  if ([(NSString *)v3 length]>= 2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 0;
LABEL_6:

  return v5;
}

BOOL skipAppSpellCorrection(NSString *a1, NSString *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    for (i = 0; ; ++i)
    {
      v10 = [&unk_2846C9428 count];
      v7 = i < v10;
      if (i >= v10)
      {
        break;
      }

      if (v6)
      {
        if ([(NSString *)v5 length]>= 4)
        {
          v11 = [&unk_2846C9428 objectAtIndexedSubscript:i];
          v12 = [v11 objectAtIndexedSubscript:1];
          v13 = [(NSString *)v6 isEqualToString:v12];

          if (v13)
          {
            v14 = [&unk_2846C9428 objectAtIndexedSubscript:i];
            v15 = [v14 objectAtIndexedSubscript:0];
            v16 = [v15 rangeOfString:v5 options:9];
            v18 = v17;

            if (!v16)
            {
              if (v18)
              {
                break;
              }
            }
          }
        }
      }
    }
  }

  return v7;
}

float appErrorScore(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = 0.0;
  if (isSpellCorrectionReady(v5, a3))
  {
    if ((isSpellCorrectionReady(v6, a3) & 1) != 0 && !skipAppSpellCorrection(v5, v6, a3))
    {
      v8 = [v6 length];
      if (v8 >= [v5 length])
      {
        v9 = [v5 lowercaseString];
        v10 = [v9 UTF8String];
        v11 = strlen(v10);
        v12 = [v6 lowercaseString];
        v13 = [v12 UTF8String];
        v14 = strlen(v13);
        v15 = [v6 length];
        v16 = _weightedDistance(v10, v11, v13, v14, v15, 1.2);
        if (v11 <= v14)
        {
          v17 = v14;
        }

        else
        {
          v17 = v11;
        }

        if (v17 <= v15)
        {
          v18 = v15;
        }

        else
        {
          v18 = v17;
        }

        v7 = 0.0;
        if (v16 < v18 && v17 && v16 >= 0.0)
        {
          v7 = 1.0 - (v16 / v17);
        }
      }
    }
  }

  return v7;
}

id getAppCorrectionIfAny(void *a1, void *a2, int a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  if (isSpellCorrectionReady(v5, a3))
  {
    memset(v33, 0, sizeof(v33));
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v8)
    {
      v9 = *v28;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v28 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v27 + 1) + 8 * i);
          v12 = appErrorScore(v5, v11, a3);
          if (v12 > 0.91)
          {
            v13 = v11;
            std::string::basic_string[abi:ne200100]<0>(__p, [v11 UTF8String]);
            v26 = -v12;
            std::priority_queue<std::pair<std::string,float>,std::vector<std::pair<std::string,float>>,_compareCorectionCandidates>::push(v33, __p);
            if (v25 < 0)
            {
              operator delete(__p[0]);
            }
          }

          if ([v11 rangeOfString:v5 options:9])
          {
            v15 = 1;
          }

          else
          {
            v15 = v14 == 0;
          }

          if (!v15)
          {

            v21 = MEMORY[0x277CBEBF8];
            goto LABEL_29;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v8);
    }

    v21 = [MEMORY[0x277CBEB18] array];
    if (*&v33[0] != *(&v33[0] + 1))
    {
      v16 = 0.0;
      do
      {
        if ([v21 count] > 2)
        {
          break;
        }

        v17 = *(*&v33[0] + 24);
        if ([v21 count] >= 2 && v17 < v16)
        {
          break;
        }

        if (*(*&v33[0] + 23) < 0)
        {
          v18 = **&v33[0];
        }

        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
        [v21 addObject:v19];
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,_compareCorectionCandidates,std::__wrap_iter<std::pair<std::string,float> *>>(*&v33[0], *(&v33[0] + 1), &v31, (*(&v33[0] + 1) - *&v33[0]) >> 5);
        v20 = (*(&v33[0] + 1) - 32);
        if (*(*(&v33[0] + 1) - 9) < 0)
        {
          operator delete(*v20);
        }

        *(&v33[0] + 1) = v20;

        v16 = v17;
      }

      while (*&v33[0] != *(&v33[0] + 1));
    }

LABEL_29:
    __p[0] = v33;
    std::vector<std::pair<std::string,float>>::__destroy_vector::operator()[abi:ne200100](__p);
  }

  else
  {
    v21 = MEMORY[0x277CBEBF8];
  }

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

void sub_231AB9C44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __p = (v16 - 144);
  std::vector<std::pair<std::string,float>>::__destroy_vector::operator()[abi:ne200100](&__p);

  _Unwind_Resume(a1);
}

void *std::vector<float>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_231AB9DDC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278933FD0, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,_compareTopKCandidates,std::__wrap_iter<std::pair<NSString * {__strong},NSNumber * {__strong}> *>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v8 = *a1;
    v7 = *(a1 + 8);
    *a1 = 0;
    *(a1 + 8) = 0;
    v9 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,_compareTopKCandidates &,std::__wrap_iter<std::pair<NSString * {__strong},NSNumber * {__strong}> *>>(a1, a3, a4);
    v10 = v9;
    if ((a2 - 16) == v9)
    {
      v17 = *v9;
      *v9 = v8;

      v18 = v10[1];
      v10[1] = v7;
    }

    else
    {
      v11 = *(a2 - 16);
      *(a2 - 16) = 0;
      v12 = *v9;
      *v9 = v11;

      v13 = *(a2 - 8);
      *(a2 - 8) = 0;
      v14 = v10[1];
      v10[1] = v13;

      v15 = *(a2 - 16);
      *(a2 - 16) = v8;

      v16 = *(a2 - 8);
      *(a2 - 8) = v7;

      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,_compareTopKCandidates &,std::__wrap_iter<std::pair<NSString * {__strong},NSNumber * {__strong}> *>>(a1, (v10 + 2), a3, (v10 - a1 + 16) >> 4);
    }
  }
}

void **std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,_compareTopKCandidates &,std::__wrap_iter<std::pair<NSString * {__strong},NSNumber * {__strong}> *>>(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = &a1[2 * v5 + 2];
    v8 = (2 * v5) | 1;
    v9 = 2 * v5 + 2;
    if (v9 < a3)
    {
      v10 = [a1[2 * v5 + 3] compare:a1[2 * v5 + 5]];
      v7 += 2 * (v10 > 0);
      if (v10 > 0)
      {
        v8 = v9;
      }
    }

    v11 = *v7;
    *v7 = 0;
    v12 = *a1;
    *a1 = v11;

    v13 = v7[1];
    v7[1] = 0;
    v14 = a1[1];
    a1[1] = v13;

    a1 = v7;
    v5 = v8;
  }

  while (v8 <= v6);
  return v7;
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,_compareTopKCandidates &,std::__wrap_iter<std::pair<NSString * {__strong},NSNumber * {__strong}> *>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = v4 >> 1;
    v8 = (a1 + 16 * (v4 >> 1));
    if ([v8[1] compare:*(a2 - 8)] >= 1)
    {
      v11 = *(a2 - 16);
      v9 = *(a2 - 8);
      v10 = (a2 - 16);
      *v10 = 0;
      v10[1] = 0;
      do
      {
        v12 = v8;
        v13 = *v8;
        *v8 = 0;
        v14 = *v10;
        *v10 = v13;

        v15 = v8[1];
        v8[1] = 0;
        v16 = v10[1];
        v10[1] = v15;

        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (a1 + 16 * v7);
        v10 = v12;
      }

      while ([v8[1] compare:v9] > 0);
      v17 = *v12;
      *v12 = v11;

      v18 = v12[1];
      v12[1] = v9;
    }
  }
}

void std::vector<std::pair<NSString * {__strong},NSNumber * {__strong}>>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 16)
  {

    v5 = *(i - 16);
  }

  *(a1 + 8) = a2;
}

uint64_t std::vector<std::pair<NSString * {__strong},NSNumber * {__strong}>>::push_back[abi:ne200100](void *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<std::pair<NSString * {__strong},NSNumber * {__strong}>>::__emplace_back_slow_path<std::pair<NSString * {__strong},NSNumber * {__strong}>>(a1, a2);
  }

  else
  {
    v4 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    *v3 = v4;
    result = (v3 + 1);
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<std::pair<NSString * {__strong},NSNumber * {__strong}>>::__emplace_back_slow_path<std::pair<NSString * {__strong},NSNumber * {__strong}>>(void *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  v6 = v5 + 1;
  if ((v5 + 1) >> 60)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v8 = a1[2] - v3;
  if (v8 >> 3 > v6)
  {
    v6 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<NSString * {__strong},NSNumber * {__strong}>>>(a1, v6);
  }

  v14 = 0;
  v15 = 16 * v5;
  *(&v16 + 1) = 0;
  v9 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  *(16 * v5) = v9;
  *&v16 = 16 * v5 + 16;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<NSString * {__strong},NSNumber * {__strong}>>,std::pair<NSString * {__strong},NSNumber * {__strong}>*>(a1, v3, v4, 0);
  v10 = *a1;
  *a1 = 0;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<std::pair<NSString * {__strong},NSNumber * {__strong}>>::~__split_buffer(&v14);
  return v13;
}

void sub_231ABA3D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<NSString * {__strong},NSNumber * {__strong}>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<NSString * {__strong},NSNumber * {__strong}>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<NSString * {__strong},NSNumber * {__strong}>>,std::pair<NSString * {__strong},NSNumber * {__strong}>*>(uint64_t a1, void **a2, void **a3, _OWORD *a4)
{
  v9 = a4;
  v8 = a4;
  v7[0] = a1;
  v7[1] = &v8;
  v7[2] = &v9;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v5 = *v4;
      *v4 = 0;
      v4[1] = 0;
      v4 += 2;
      *a4++ = v5;
    }

    while (v4 != a3);
    v9 = a4;
  }

  v7[3] = 1;
  std::__allocator_destroy[abi:ne200100]<std::allocator<std::pair<NSString * {__strong},NSNumber * {__strong}>>,std::pair<NSString * {__strong},NSNumber * {__strong}>*,std::pair<NSString * {__strong},NSNumber * {__strong}>*>(a1, a2, a3);
  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<NSString * {__strong},NSNumber * {__strong}>>,std::pair<NSString * {__strong},NSNumber * {__strong}>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<std::pair<NSString * {__strong},NSNumber * {__strong}>>,std::pair<NSString * {__strong},NSNumber * {__strong}>*,std::pair<NSString * {__strong},NSNumber * {__strong}>*>(uint64_t a1, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {

      v5 = *v4;
      v4 += 2;
    }

    while (v4 != a3);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<NSString * {__strong},NSNumber * {__strong}>>,std::pair<NSString * {__strong},NSNumber * {__strong}>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<std::pair<NSString * {__strong},NSNumber * {__strong}>>,std::reverse_iterator<std::pair<NSString * {__strong},NSNumber * {__strong}>*>,std::reverse_iterator<std::pair<NSString * {__strong},NSNumber * {__strong}>*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<std::pair<NSString * {__strong},NSNumber * {__strong}>>,std::reverse_iterator<std::pair<NSString * {__strong},NSNumber * {__strong}>*>,std::reverse_iterator<std::pair<NSString * {__strong},NSNumber * {__strong}>*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {

      v7 = *(v6 - 16);
      v6 -= 16;
    }

    while (v6 != a5);
  }
}

uint64_t std::__split_buffer<std::pair<NSString * {__strong},NSNumber * {__strong}>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::pair<NSString * {__strong},NSNumber * {__strong}>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<NSString * {__strong},NSNumber * {__strong}>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
  }
}

void std::vector<std::pair<NSString * {__strong},NSNumber * {__strong}>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<NSString * {__strong},NSNumber * {__strong}>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::vector<std::pair<std::string,float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<std::string,float>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<std::string,float>>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 9);
    v3 -= 4;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,_compareCorectionCandidates,std::__wrap_iter<std::pair<std::string,float> *>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a4 >= 2)
  {
    v7 = *a1;
    *v17 = *(a1 + 8);
    *&v17[7] = *(a1 + 15);
    v8 = *(a1 + 23);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    v9 = *(a1 + 24);
    v10 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,_compareCorectionCandidates &,std::__wrap_iter<std::pair<std::string,float> *>>(a1, a3, a4);
    v11 = v10;
    v12 = (a2 - 32);
    v13 = *(v10 + 23);
    if (a2 - 32 == v10)
    {
      if (v13 < 0)
      {
        operator delete(*v10);
      }

      *v11 = v7;
      *(v11 + 8) = *v17;
      *(v11 + 15) = *&v17[7];
      *(v11 + 23) = v8;
      *(v11 + 24) = v9;
    }

    else
    {
      if (v13 < 0)
      {
        operator delete(*v10);
      }

      v14 = *v12;
      *(v11 + 16) = *(a2 - 16);
      *v11 = v14;
      *(a2 - 9) = 0;
      *(a2 - 32) = 0;
      *(v11 + 24) = *(a2 - 8);
      v15 = v11 + 32;
      if (*(a2 - 9) < 0)
      {
        operator delete(*v12);
      }

      *(a2 - 32) = v7;
      *(a2 - 24) = *v17;
      *(a2 - 17) = *&v17[7];
      *(a2 - 9) = v8;
      *(a2 - 8) = v9;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,_compareCorectionCandidates &,std::__wrap_iter<std::pair<std::string,float> *>>(a1, v15, a3, (v15 - a1) >> 5);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_231ABA940(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,_compareCorectionCandidates &,std::__wrap_iter<std::pair<std::string,float> *>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = a1 + 32 * v5 + 32;
    v8 = 2 * v5;
    v5 = (2 * v5) | 1;
    v9 = v8 + 2;
    if (v9 < a3 && *(v7 + 24) > *(v7 + 56))
    {
      v7 += 32;
      v5 = v9;
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v10 = *v7;
    *(a1 + 16) = *(v7 + 16);
    *a1 = v10;
    *(v7 + 23) = 0;
    *v7 = 0;
    *(a1 + 24) = *(v7 + 24);
    a1 = v7;
  }

  while (v5 <= v6);
  return v7;
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,_compareCorectionCandidates &,std::__wrap_iter<std::pair<std::string,float> *>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = v4 >> 1;
    v7 = (a1 + 32 * (v4 >> 1));
    v8 = *(a2 - 8);
    if (v7[6] > v8)
    {
      v10 = *(a2 - 32);
      v9 = (a2 - 32);
      *v15 = *(a2 - 24);
      *&v15[7] = *(a2 - 17);
      v11 = *(a2 - 9);
      *(v9 + 1) = 0;
      *(v9 + 2) = 0;
      *v9 = 0;
      do
      {
        v12 = v7;
        if (*(v9 + 23) < 0)
        {
          operator delete(*v9);
        }

        v13 = *v12;
        *(v9 + 2) = *(v12 + 2);
        *v9 = v13;
        *(v12 + 23) = 0;
        *v12 = 0;
        v9[6] = v12[6];
        if (!v6)
        {
          break;
        }

        v6 = (v6 - 1) >> 1;
        v7 = (a1 + 32 * v6);
        v9 = v12;
      }

      while (v7[6] > v8);
      if (*(v12 + 23) < 0)
      {
        operator delete(*v12);
      }

      *v12 = v10;
      *(v12 + 1) = *v15;
      *(v12 + 15) = *&v15[7];
      *(v12 + 23) = v11;
      v12[6] = v8;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,float>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::pair<std::string,float>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::pair<std::string,float>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<std::string,float>>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t json_utf8_string(uint64_t result, _BYTE *a2, unint64_t a3)
{
  if (result)
  {
    v3 = *(result + 8);
    if (*result == 5)
    {
      v4 = *(result + 16);
      v5 = &a2[a3];
      v6 = a2;
      if (v4 >= 1)
      {
        v7 = &v3[v4];
        v8 = a2;
        do
        {
          v9 = *v3;
          if ((json_char_table[v9] & 0x40) != 0)
          {
            v14 = (v3 + 2);
            v15 = v3[1];
            v16 = json_char_table[v15];
            if ((v16 & 0x10000) != 0)
            {
              if ((v16 & 0x40) != 0)
              {
                do
                {
                  if (v14 >= v7)
                  {
                    break;
                  }

                  v19 = *v14++;
                }

                while ((json_char_table[v19] & 0x40) != 0);
              }

              if (v14 > v7 - 4)
              {
                v11 = v14;
LABEL_70:
                v6 = v8;
                goto LABEL_75;
              }

              v20 = 0;
              v21 = 0;
              do
              {
                v22 = v14[v20];
                v23 = v22;
                v24 = json_char_table[v22];
                ++v20;
                v25 = (v23 - 87) | (16 * v21);
                if ((v24 & 0x10) == 0)
                {
                  v25 = v21;
                }

                if ((v24 & 8) != 0)
                {
                  v25 = (v23 - 55) | (16 * v21);
                }

                v21 = (v23 - 48) | (16 * v21);
                if ((v24 & 2) == 0)
                {
                  v21 = v25;
                }
              }

              while (v20 != 4);
              v26 = v21;
              if ((v7 - v14) < 5)
              {
                v11 = v14;
              }

              else
              {
                v11 = v14 + 4;
                if ((v14 + 5) < v7 && (v21 & 0xFC00) == 0xD800 && (json_char_table[*v11] & 0x40) != 0 && (v7 - v11) >= 3 && (json_char_table[v14[5]] & 0x10000) != 0)
                {
                  v27 = 0;
                  v28 = 0;
                  v11 = v14 + 6;
                  do
                  {
                    v29 = v11[v27];
                    v30 = v29;
                    v31 = json_char_table[v29];
                    ++v27;
                    v32 = (v30 - 87) | (16 * v28);
                    if ((v31 & 0x10) == 0)
                    {
                      v32 = v28;
                    }

                    if ((v31 & 8) != 0)
                    {
                      v32 = (v30 - 55) | (16 * v28);
                    }

                    v28 = (v30 - 48) | (16 * v28);
                    if ((v31 & 2) == 0)
                    {
                      v28 = v32;
                    }
                  }

                  while (v27 != 4);
                  v33 = v28 >> 10;
                  v34 = (v28 + 9216) | ((v26 << 10) - 56623104);
                  v35 = v14 + 12;
                  if ((v7 - v11) <= 6)
                  {
                    v35 = v11;
                  }

                  if (v33 == 55)
                  {
                    v11 = v35;
                    v26 = v34;
                  }
                }
              }

              if (v26 >= 128)
              {
                if (v26 >= 0x800)
                {
                  v37 = 4 * (v26 < 0x110000);
                  if (v26 < 0x10000)
                  {
                    v37 = 3;
                  }

                  v6 = &v8[v37];
                  if (&v8[v37] < v5)
                  {
                    if (!HIWORD(v26))
                    {
                      v8[2] = v26 & 0x3F | 0x80;
                      v8[1] = (v26 >> 6) & 0x3F | 0x80;
                      v26 = (v26 >> 12) | 0xFFFFFFE0;
                      v36 = 3;
                      goto LABEL_73;
                    }

                    if (HIWORD(v26) > 0x10u)
                    {
                      v36 = 0;
                    }

                    else
                    {
                      v8[3] = v26 & 0x3F | 0x80;
                      v8[2] = (v26 >> 6) & 0x3F | 0x80;
                      v8[1] = (v26 >> 12) & 0x3F | 0x80;
                      v26 = (v26 >> 18) | 0xFFFFFFF0;
                      v36 = 4;
LABEL_73:
                      *v8 = v26;
                    }

                    v6 = &v8[v36];
                    goto LABEL_75;
                  }
                }

                else
                {
                  v6 = v8 + 2;
                  if ((v8 + 2) < v5)
                  {
                    v8[1] = v26 & 0x3F | 0x80;
                    v26 = (v26 >> 6) | 0xFFFFFFC0;
                    v36 = 2;
                    goto LABEL_73;
                  }
                }
              }

              else
              {
                v6 = v8 + 1;
                if ((v8 + 1) < v5)
                {
                  v36 = 1;
                  goto LABEL_73;
                }
              }

              if (v8 + 1 != v5)
              {
                goto LABEL_70;
              }

LABEL_12:
              *v8 = 0;
              goto LABEL_75;
            }

            if ((v16 & 0x1E0) != 0)
            {
              HIDWORD(v18) = v15 - 98;
              LODWORD(v18) = v15 - 98;
              v17 = v18 >> 1;
              if (v17 <= 9 && ((0x345u >> v17) & 1) != 0)
              {
                LOBYTE(v15) = byte_231AED8A8[v17];
              }
            }

            v6 = v8 + 1;
            if ((v8 + 1) >= v5)
            {
              if (v8 + 1 == v5)
              {
                *v8 = 0;
                v11 = v14;
                v6 = v5;
                goto LABEL_75;
              }
            }

            else
            {
              *v8 = v15;
            }

            v11 = v14;
          }

          else
          {
            v10 = utf8_byte_length_noerror_utf8_len_table[v9 >> 4];
            v6 = &v8[v10];
            v11 = &v3[v10];
            if (&v8[v10] < v5 && v11 <= v7)
            {
              do
              {
                v13 = *v3++;
                *v8++ = v13;
                --v10;
              }

              while (v10);
              goto LABEL_75;
            }

            if (v8 + 1 == v5)
            {
              goto LABEL_12;
            }
          }

LABEL_75:
          v8 = v6;
          v3 = v11;
        }

        while (v11 < v7);
      }

      if (v6 < v5)
      {
        *v6 = 0;
      }

      v40 = v6 - a2;
      return v40 + 1;
    }

    if (v3)
    {
      v38 = *(result + 16);
      if (v38)
      {
        if (v38 >= a3)
        {
          if (!a3)
          {
LABEL_97:
            v40 = *(result + 16);
            return v40 + 1;
          }

          v38 = a3 - 1;
          if (a3 != 1)
          {
            v41 = a2;
            v42 = a3 - 1;
            do
            {
              v43 = *v3++;
              *v41++ = v43;
              --v42;
            }

            while (v42);
          }
        }

        else
        {
          for (i = 0; i != v38; ++i)
          {
            a2[i] = v3[i];
          }
        }

        a2[v38] = 0;
        goto LABEL_97;
      }
    }

    result = 0;
    if (!a2)
    {
      return result;
    }
  }

  else if (!a2)
  {
    return result;
  }

  if (a3)
  {
    result = 0;
    *a2 = 0;
  }

  return result;
}

uint64_t json_parse()
{
  v0 = MEMORY[0x28223BE20]();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v0;
  v60 = *MEMORY[0x277D85DE8];
  v55 = v0;
  v56 = 0;
  v57 = 0;
  v58 = v0;
  if ((v1 & 0x8000000000000000) != 0)
  {
    if (!v0)
    {
      v9 = 0;
      v57 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v51 = 0;
LABEL_236:
      v11 = v8;
LABEL_237:
      if (v9 == v11)
      {
        goto LABEL_250;
      }

      while (1)
      {
        v47 = v11 >= v9 ? 0 : *v11;
        if ((json_char_table[v47] & 1) == 0)
        {
          break;
        }

        if (v9 - v11 >= 1)
        {
          v55 = ++v11;
        }
      }

      if (v7)
      {
LABEL_250:
        v9 = v11;
      }

      else if (v9 != v11)
      {
        goto LABEL_246;
      }

      if (v5)
      {
        *v5 = v9 - v8;
      }

      result = 1;
      goto LABEL_254;
    }

    v1 = strlen(v0);
  }

  v9 = &v8[v1];
  v56 = v1;
  v57 = &v8[v1];
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v51 = 0;
  if (!v1)
  {
    goto LABEL_236;
  }

  v50 = v5;
  bzero(v59, 0x1000uLL);
  LODWORD(v10) = 0;
  while (1)
  {
    v11 = v55;
    v12 = v57;
    if (v55 >= v57)
    {
      v13 = 0;
    }

    else
    {
      v13 = *v55;
    }

    v14 = json_char_table[v13];
    if ((v14 & 0x20) != 0)
    {
      if (!jscon_scan_string(&v55, &v52))
      {
        goto LABEL_248;
      }

      if (v10 >= 1023)
      {
        v11 = v55;
        goto LABEL_246;
      }

      goto LABEL_16;
    }

    if ((v14 & 0x202) != 0)
    {
      break;
    }

    if (v13 == 91)
    {
      if (v57 - v55 >= 1)
      {
        v11 = ++v55;
      }

      if (v10 >= 1023)
      {
        goto LABEL_246;
      }

      v10 = v10 + 1;
      v59[v10] = 2;
      (*(v3 + 16))(v3, 4, 0, &v51);
      if (v11 >= v12)
      {
        v41 = 0;
      }

      else
      {
        v41 = *v11;
      }

      if (json_char_table[v41])
      {
        v42 = v55;
        while (1)
        {
          if (v11 >= v12)
          {
            if ((json_char_table[0] & 1) == 0)
            {
              v55 = v42;
              goto LABEL_151;
            }
          }

          else
          {
            v41 = *v11;
            if ((json_char_table[v41] & 1) == 0)
            {
              v55 = v42;
              break;
            }
          }

          if (v12 - v11 >= 1)
          {
            v42 = ++v11;
          }
        }
      }

      if (v41 != 93)
      {
        goto LABEL_151;
      }

      if (v12 - v11 >= 1)
      {
        v55 = v11 + 1;
      }

      v59[v10] = 1;
      v17 = *(v3 + 16);
      v19 = v3;
      v20 = 5;
      goto LABEL_189;
    }

    if (v13 != 123)
    {
      if ((v14 & 0xE000) == 0)
      {
        if ((v14 & 1) == 0)
        {
          goto LABEL_246;
        }

        v44 = v55;
        while (1)
        {
          v45 = v11 >= v57 ? 0 : *v11;
          if ((json_char_table[v45] & 1) == 0)
          {
            break;
          }

          if (v57 - v11 >= 1)
          {
            v44 = ++v11;
          }
        }

        v55 = v44;
        goto LABEL_151;
      }

      v53 = v55;
      if (v57 - v55 < 5)
      {
        if (v57 - v55 != 4)
        {
          goto LABEL_246;
        }

LABEL_200:
        if (*v55 == 1702195828)
        {
          LODWORD(v52) = 2;
        }

        else
        {
          if (*v55 != 1819047278)
          {
            goto LABEL_246;
          }

          LODWORD(v52) = 1;
        }

        v54 = 4;
        v11 = v55 + 4;
      }

      else
      {
        if (*v55 != 1936482662 || v55[4] != 101)
        {
          goto LABEL_200;
        }

        LODWORD(v52) = 3;
        v54 = 5;
        v11 = v55 + 5;
      }

      v55 = v11;
      if (v10 >= 1023)
      {
        goto LABEL_246;
      }

LABEL_16:
      v10 = v10 + 1;
      v59[v10] = 1;
      v17 = *(v3 + 16);
      v18 = &v52;
      v19 = v3;
      v20 = 6;
LABEL_17:
      v17(v19, v20, v18, &v51);
      goto LABEL_78;
    }

    if (v57 - v55 >= 1)
    {
      v11 = ++v55;
    }

    if (v10 >= 1023)
    {
      goto LABEL_246;
    }

    v10 = v10 + 1;
    v59[v10] = 3;
    (*(v3 + 16))(v3, 1, 0, &v51);
    if (v11 >= v12)
    {
      v21 = 0;
    }

    else
    {
      v21 = *v11;
    }

    v22 = json_char_table[v21];
    if ((v22 & 1) == 0)
    {
      goto LABEL_179;
    }

    v23 = v55;
    while (v11 < v12)
    {
      v21 = *v11;
      v22 = json_char_table[v21];
      if ((v22 & 1) == 0)
      {
        v55 = v23;
LABEL_179:
        if ((v22 & 0x20) != 0)
        {
          goto LABEL_218;
        }

        if (v21 != 125)
        {
          goto LABEL_246;
        }

        if (v12 - v11 >= 1)
        {
          v55 = v11 + 1;
        }

        v59[v10] = 1;
        v17 = *(v3 + 16);
        v19 = v3;
        v20 = 3;
LABEL_189:
        v18 = 0;
        goto LABEL_17;
      }

LABEL_29:
      if (v12 - v11 >= 1)
      {
        v23 = ++v11;
      }
    }

    if (json_char_table[0])
    {
      goto LABEL_29;
    }

    v55 = v23;
    if ((json_char_table[0] & 0x20) == 0)
    {
      goto LABEL_246;
    }

LABEL_218:
    if (!jscon_scan_string(&v55, &v52))
    {
      goto LABEL_248;
    }

    v11 = v55;
    if (v55 >= v57)
    {
      v46 = 0;
    }

    else
    {
      v46 = *v55;
    }

    if (json_char_table[v46])
    {
      v38 = v55;
      while (1)
      {
        if (v11 >= v57)
        {
          if ((json_char_table[0] & 1) == 0)
          {
LABEL_259:
            v55 = v38;
            goto LABEL_246;
          }
        }

        else
        {
          v46 = *v11;
          if ((json_char_table[v46] & 1) == 0)
          {
            v55 = v38;
            break;
          }
        }

        if (v57 - v11 >= 1)
        {
          v38 = ++v11;
        }
      }
    }

    if (v46 != 58)
    {
      goto LABEL_246;
    }

    if (v57 - v11 >= 1)
    {
      v55 = v11 + 1;
    }

LABEL_150:
    v59[v10] = 4;
    (*(v3 + 16))(v3, 2, &v52, &v51);
LABEL_151:
    if (v51)
    {
      goto LABEL_249;
    }
  }

  v53 = v55;
  LODWORD(v52) = 6;
  if (v55 >= v57)
  {
    v15 = 0;
  }

  else
  {
    v15 = *v55;
  }

  if ((json_char_table[v15] & 0x200) != 0)
  {
    v16 = v55;
    if (v57 - v55 >= 1)
    {
      v16 = ++v55;
    }

    if (v16 >= v57)
    {
      v15 = 0;
    }

    else
    {
      v15 = *v16;
    }
  }

  else
  {
    v16 = v55;
  }

  if ((json_char_table[v15] & 4) != 0)
  {
    if (v57 - v16 >= 1)
    {
      v55 = ++v16;
    }

    if (v16 >= v57)
    {
      v26 = 0;
    }

    else
    {
      v26 = *v16;
    }

    v27 = json_char_table[v26];
    if ((v27 & 0x800) != 0)
    {
      if (v57 - v16 <= 0)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    if ((v27 & 0x1000) == 0)
    {
      if ((v27 & 2) == 0)
      {
        goto LABEL_74;
      }

      if (v57 - v16 > 0)
      {
        ++v16;
      }

LABEL_257:
      LODWORD(v52) = 0;
      v11 = v16;
      goto LABEL_247;
    }

    if (v57 - v16 <= 0)
    {
      goto LABEL_129;
    }

LABEL_128:
    v55 = ++v16;
    goto LABEL_129;
  }

  LOWORD(v24) = json_char_table[0];
  while (2)
  {
    v25 = v57 - v16;
LABEL_40:
    if (v16 >= v57)
    {
      if ((json_char_table[0] & 2) == 0)
      {
        goto LABEL_55;
      }

LABEL_42:
      if (v25 >= 1)
      {
        v55 = ++v16;
        continue;
      }

      goto LABEL_40;
    }

    break;
  }

  if ((json_char_table[*v16] & 2) != 0)
  {
    goto LABEL_42;
  }

  v24 = json_char_table[*v16];
LABEL_55:
  if ((v24 & 0x1000) != 0)
  {
    if (v25 <= 0)
    {
LABEL_129:
      LODWORD(v52) = 7;
      if (v16 >= v57)
      {
        v39 = 0;
      }

      else
      {
        v39 = *v16;
      }

      if (v57 - v16 >= 1 && (json_char_table[v39] & 0x600) != 0)
      {
LABEL_133:
        v55 = ++v16;
      }

      while (1)
      {
        v40 = v16 >= v57 ? 0 : *v16;
        if ((json_char_table[v40] & 2) == 0)
        {
          goto LABEL_74;
        }

        if (v57 - v16 >= 1)
        {
          goto LABEL_133;
        }
      }
    }

    goto LABEL_128;
  }

  if ((v24 & 0x800) == 0)
  {
    goto LABEL_74;
  }

  if (v25 >= 1)
  {
LABEL_60:
    v55 = ++v16;
  }

LABEL_61:
  LODWORD(v52) = 7;
  if (v16 >= v57)
  {
    v28 = 0;
  }

  else
  {
    v55 = v16 + 1;
    v28 = *v16++;
  }

  if ((json_char_table[v28] & 2) == 0)
  {
    goto LABEL_257;
  }

  LOWORD(v29) = json_char_table[0];
  while (2)
  {
    v30 = v57 - v16;
LABEL_66:
    if (v16 >= v57)
    {
      if ((json_char_table[0] & 2) == 0)
      {
        goto LABEL_73;
      }

LABEL_68:
      if (v30 >= 1)
      {
        v55 = ++v16;
        continue;
      }

      goto LABEL_66;
    }

    break;
  }

  if ((json_char_table[*v16] & 2) != 0)
  {
    goto LABEL_68;
  }

  v29 = json_char_table[*v16];
LABEL_73:
  if ((v29 & 0x1000) != 0)
  {
    if (v30 < 1)
    {
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_74:
  if (v16 > v57)
  {
    v55 = v57;
    v16 = v57;
  }

  v54 = v16 - v11;
  (*(v3 + 16))(v3, 6, &v52, &v51);
  if (v10 >= 1023)
  {
    goto LABEL_257;
  }

  v10 = v10 + 1;
  v59[v10] = 1;
LABEL_78:
  v9 = v57;
  v11 = v55;
  while (2)
  {
    if (v11 >= v9)
    {
      v31 = 0;
    }

    else
    {
      v31 = *v11;
    }

    if (json_char_table[v31])
    {
      while (1)
      {
        v32 = v11 >= v9 ? 0 : *v11;
        if ((json_char_table[v32] & 1) == 0)
        {
          break;
        }

        if (v9 - v11 >= 1)
        {
          v55 = ++v11;
        }
      }

      if (v11 < v9)
      {
        v31 = *v11;
        break;
      }

      v31 = 0;
LABEL_91:
      v33 = v59[v10 - 1];
      if (v33 == 2)
      {
        if (v31 != 93)
        {
          goto LABEL_151;
        }

        if (v9 - v11 >= 1)
        {
          v55 = ++v11;
        }

        v34 = 5;
      }

      else
      {
        if (v33 != 4)
        {
          if (v33)
          {
            goto LABEL_151;
          }

          v5 = v50;
          goto LABEL_237;
        }

        if (v31 != 125)
        {
          goto LABEL_151;
        }

        if (v9 - v11 >= 1)
        {
          v55 = ++v11;
        }

        v34 = 3;
      }

      v59[v10 - 1] = 1;
      (*(v3 + 16))(v3, v34, 0, &v51);
      --v10;
      continue;
    }

    break;
  }

  if (v31 != 44)
  {
    goto LABEL_91;
  }

  v10 = v10 - 1;
  v35 = v59[v10];
  if (v35 == 2)
  {
    if (v9 - v11 >= 1)
    {
      v55 = v11 + 1;
    }

    goto LABEL_151;
  }

  if (v35 == 4)
  {
    if (v9 - v11 >= 1)
    {
      v55 = ++v11;
    }

    v59[v10] = 3;
    if (v11 >= v9)
    {
      v36 = 0;
    }

    else
    {
      v36 = *v11;
    }

    if (json_char_table[v36])
    {
      while (1)
      {
        if (v11 >= v9)
        {
          if ((json_char_table[0] & 1) == 0)
          {
            v36 = 0;
            break;
          }
        }

        else
        {
          v36 = *v11;
          if ((json_char_table[v36] & 1) == 0)
          {
            break;
          }
        }

        if (v9 - v11 >= 1)
        {
          v55 = ++v11;
        }
      }
    }

    if ((json_char_table[v36] & 0x20) != 0)
    {
      if (!jscon_scan_string(&v55, &v52))
      {
        goto LABEL_248;
      }

      v11 = v55;
      if (v55 >= v57)
      {
        v37 = 0;
      }

      else
      {
        v37 = *v55;
      }

      if (json_char_table[v37])
      {
        v38 = v55;
        while (1)
        {
          if (v11 >= v57)
          {
            if ((json_char_table[0] & 1) == 0)
            {
              goto LABEL_259;
            }
          }

          else
          {
            v37 = *v11;
            if ((json_char_table[v37] & 1) == 0)
            {
              v55 = v38;
              break;
            }
          }

          if (v57 - v11 >= 1)
          {
            v38 = ++v11;
          }
        }
      }

      if (v37 == 58)
      {
        if (v57 - v11 >= 1)
        {
          v55 = v11 + 1;
        }

        goto LABEL_150;
      }
    }
  }

LABEL_246:
  LODWORD(v52) = 0;
LABEL_247:
  v53 = v11;
  v54 = 0;
LABEL_248:
  (*(v3 + 16))(v3, 0, &v52, &v51);
LABEL_249:
  result = 0;
LABEL_254:
  v49 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t jscon_scan_string(char **a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = *a1;
  if (v4 - *a1 >= 1)
  {
    *a1 = ++v5;
  }

  *(a2 + 8) = v5;
  *a2 = 4;
  v6 = memchr(v5, 34, v4 - v5);
  if (!v6)
  {
    v8 = v5;
LABEL_25:
    *a2 = 0;
    *(a2 + 8) = v8;
    v11 = (a2 + 16);
    goto LABEL_26;
  }

  v7 = v6;
  while (1)
  {
    v8 = (v7 + 1);
    *a1 = (v7 + 1);
    if (*(v7 - 1) != 92)
    {
      break;
    }

    *a2 = 5;
    if (*(v7 - 2) == 92)
    {
      v9 = 0;
      do
      {
        v10 = v7[v9-- - 3];
      }

      while (v10 == 92);
      if (v9)
      {
        break;
      }
    }

    v7 = memchr(v7 + 1, 34, v4 - v8);
    if (!v7)
    {
      goto LABEL_25;
    }
  }

  *(a2 + 16) = v7 - v5;
  v11 = (a2 + 16);
  v12 = memchr(v5, 92, v7 - v5);
  v13 = 1;
  if (!v12 || v12 >= v7)
  {
    return v13;
  }

  while (1)
  {
    *a2 = 5;
    v14 = v12 + 2;
    v15 = json_char_table[v12[1]];
    if ((v15 & 0x1E0) != 0)
    {
      goto LABEL_21;
    }

    if ((v15 & 0x10000) == 0 || v7 - v14 < 4)
    {
      goto LABEL_31;
    }

    if ((json_char_table[v12[2]] & 0x1A) == 0)
    {
      v14 = v12 + 3;
      goto LABEL_31;
    }

    if ((json_char_table[v12[3]] & 0x1A) == 0)
    {
      v14 = v12 + 4;
      goto LABEL_31;
    }

    if ((json_char_table[v12[4]] & 0x1A) == 0)
    {
      break;
    }

    v14 = v12 + 6;
    if ((json_char_table[v12[5]] & 0x1A) == 0)
    {
      goto LABEL_31;
    }

LABEL_21:
    v12 = memchr(v14, 92, v7 - v14);
    v13 = 1;
    if (!v12 || v12 >= v7)
    {
      return v13;
    }
  }

  v14 = v12 + 5;
LABEL_31:
  *a2 = 0;
  *(a2 + 8) = v14 - 1;
LABEL_26:
  v13 = 0;
  *v11 = 0;
  return v13;
}

id _SDEventMonitorErrorMake(void *a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CCA450];
  v8[0] = a1;
  v1 = MEMORY[0x277CBEAC0];
  v2 = a1;
  v3 = [v1 dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SDEventMonitorErrorDomain" code:-1000 userInfo:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

id SDPommesStemWord(void *a1)
{
  v1 = a1;
  [v1 cStringUsingEncoding:4];
  v2 = PRPommesStemWordWithCString();
  if (v2)
  {
    v3 = v2;
    v4 = [MEMORY[0x277CCACA8] stringWithCString:v2 encoding:4];
    free(v3);
  }

  else
  {
    v4 = v1;
  }

  return v4;
}

__n128 si_tracing_restore_current_span(uint64_t a1)
{
  v2 = (*MEMORY[0x277D286C8])();
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 28);
  v8 = *(v2 + 32);
  si_tracing_log_span_end();
  result = *a1;
  v10 = *(a1 + 16);
  *(v2 + 32) = *(a1 + 32);
  *v2 = result;
  *(v2 + 16) = v10;
  return result;
}

void sub_231AC2838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  si_tracing_restore_current_span(&a31);
  v34 = *(v32 - 192);
  *v31 = *(v32 - 208);
  *(v31 + 16) = v34;
  *(v31 + 32) = *(v32 - 176);
  _Unwind_Resume(a1);
}

void sub_231AC2A98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  *v19 = a17;
  *(v19 + 16) = a18;
  *(v19 + 32) = a19;
  _Unwind_Resume(exception_object);
}

void sub_231AC2C5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  *v19 = a17;
  *(v19 + 16) = a18;
  *(v19 + 32) = a19;
  _Unwind_Resume(exception_object);
}

void sub_231AC3154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, __int128 a55, __int128 a56, uint64_t a57)
{
  objc_destroyWeak((v58 + 96));
  si_tracing_restore_current_span(&a49);
  v60 = a56;
  *v57 = a55;
  *(v57 + 16) = v60;
  *(v57 + 32) = a57;
  _Unwind_Resume(a1);
}

void sub_231AC3654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int128 a25, __int128 a26, uint64_t a27)
{
  si_tracing_restore_current_span(&a19);
  v29 = a26;
  *v27 = a25;
  *(v27 + 16) = v29;
  *(v27 + 32) = a27;
  _Unwind_Resume(a1);
}

void sub_231AC37BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  *v19 = a17;
  *(v19 + 16) = a18;
  *(v19 + 32) = a19;
  _Unwind_Resume(exception_object);
}

void sub_231AC3D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a34);
  objc_destroyWeak((v34 - 200));
  _Block_object_dispose((v34 - 192), 8);
  si_tracing_restore_current_span(v34 - 160);
  _Unwind_Resume(a1);
}

void sub_231AC3F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  si_tracing_restore_current_span(&a11);
  v21 = a18;
  *v19 = a17;
  *(v19 + 16) = v21;
  *(v19 + 32) = a19;
  _Unwind_Resume(a1);
}

void sub_231AC40C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  *v19 = a17;
  *(v19 + 16) = a18;
  *(v19 + 32) = a19;
  _Unwind_Resume(exception_object);
}

void *__getSPFastHiddenAppsGetNoBuildSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SearchLibrary();
  result = dlsym(v2, "SPFastHiddenAppsGetNoBuild");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSPFastHiddenAppsGetNoBuildSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SearchLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!SearchLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __SearchLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278937660;
    v6 = 0;
    SearchLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = SearchLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!SearchLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __SearchLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SearchLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void __getSDAppUninstallMonitorClass_block_invoke(uint64_t a1)
{
  SearchLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SDAppUninstallMonitor");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSDAppUninstallMonitorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSDAppUninstallMonitorClass_block_invoke_cold_1();
    OUTLINED_FUNCTION_3_2();
  }
}

uint64_t OUTLINED_FUNCTION_4_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 168);
  v4 = *(*(result + 72) + 8);
  return result;
}

void OUTLINED_FUNCTION_0_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void updateStorageUsageIgnoreLinks(void *a1, void *a2, uint64_t a3, int a4, char a5)
{
  v19 = a1;
  v9 = a2;
  incrementIndexStorageSize(v19, @"total", a3);
  if (a4)
  {
    incrementIndexStorageSize(v19, @"purgeable", a3);
    if (isEmbedding(v9))
    {
      incrementIndexStorageSize(v19, @"embeddingPurgeable", a3);
    }
  }

  if ([v9 hasPrefix:@"SpotlightKnowledge"])
  {
    incrementIndexStorageSize(v19, @"knowledgeGraph", a3);
    v10 = [v9 lastPathComponent];
    v11 = [v10 hasPrefix:@"evt_journalAttr"];

    if ((v11 & 1) == 0)
    {
      goto LABEL_17;
    }

    v12 = @"transient";
    goto LABEL_16;
  }

  if (a5)
  {
    goto LABEL_17;
  }

  incrementIndexStorageSize(v19, @"other", a3);
  v13 = v9;
  v14 = [v13 lastPathComponent];
  v15 = [v13 pathExtension];

  if ([v14 isEqualToString:@"store.db"])
  {

LABEL_11:
    incrementIndexStorageSize(v19, @"clone", a3);
    goto LABEL_12;
  }

  v16 = [v15 hasPrefix:@"shadow"];

  if (v16)
  {
    goto LABEL_11;
  }

LABEL_12:
  v17 = [v13 lastPathComponent];
  if ([v17 hasPrefix:@"activityJournal"])
  {
  }

  else
  {
    v18 = [v17 isEqualToString:@"SKGActivityJournal.log"];

    if (!v18)
    {
      goto LABEL_17;
    }
  }

  v12 = @"activityJournal";
LABEL_16:
  incrementIndexStorageSize(v19, v12, a3);
LABEL_17:
}

void incrementIndexStorageSize(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = a1;
  v7 = [v6 objectForKey:v5];

  v8 = MEMORY[0x277CCABB0];
  if (v7)
  {
    v10 = [v6 objectForKeyedSubscript:v5];
    v9 = [v8 numberWithUnsignedLongLong:{objc_msgSend(v10, "unsignedLongLongValue") + a3}];
    [v6 setObject:v9 forKeyedSubscript:v5];

    v5 = v6;
    v6 = v9;
  }

  else
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    [v6 setObject:? forKeyedSubscript:?];
  }
}

BOOL isEmbedding(void *a1)
{
  v1 = [a1 lastPathComponent];
  v2 = [v1 rangeOfString:@".ivf-"] != 0x7FFFFFFFFFFFFFFFLL;

  return v2;
}

uint64_t isTermIndex(void *a1)
{
  v1 = a1;
  if ([v1 hasSuffix:@".indexDirectory"] & 1) != 0 || (objc_msgSend(v1, "hasSuffix:", @".indexCompactDirectory"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 hasSuffix:@".indexArrays"];
  }

  return v2;
}

uint64_t isJournal(void *a1)
{
  v1 = [a1 lastPathComponent];
  v2 = [v1 hasPrefix:@"journalAttr."];

  return v2;
}

void OUTLINED_FUNCTION_1_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_231AC7D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231ACE6D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  si_tracing_restore_current_span(&a23);
  si_tracing_restore_current_span(&a29);
  _Unwind_Resume(a1);
}

void sub_231ACE87C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  *v19 = a17;
  *(v19 + 16) = a18;
  *(v19 + 32) = a19;
  _Unwind_Resume(exception_object);
}

void sub_231ACF384(_Unwind_Exception *a1)
{
  si_tracing_restore_current_span(v1 - 208);
  si_tracing_restore_current_span(v1 - 160);
  _Unwind_Resume(a1);
}

void sub_231ACF590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  *v19 = a17;
  *(v19 + 16) = a18;
  *(v19 + 32) = a19;
  _Unwind_Resume(exception_object);
}

void sub_231ACFCF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  *v19 = a17;
  *(v19 + 16) = a18;
  *(v19 + 32) = a19;
  _Unwind_Resume(exception_object);
}

void sub_231AD01B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  *v19 = a17;
  *(v19 + 16) = a18;
  *(v19 + 32) = a19;
  _Unwind_Resume(exception_object);
}

void sub_231AD08AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  *v19 = a17;
  *(v19 + 16) = a18;
  *(v19 + 32) = a19;
  _Unwind_Resume(exception_object);
}

void sub_231AD0E64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  *v19 = a17;
  *(v19 + 16) = a18;
  *(v19 + 32) = a19;
  _Unwind_Resume(exception_object);
}

void sub_231AD1344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  *v19 = a17;
  *(v19 + 16) = a18;
  *(v19 + 32) = a19;
  _Unwind_Resume(exception_object);
}

void sub_231AD1858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  *v19 = a17;
  *(v19 + 16) = a18;
  *(v19 + 32) = a19;
  _Unwind_Resume(exception_object);
}

void sub_231AD21F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a28, 8);
  si_tracing_restore_current_span(v28 - 144);
  _Unwind_Resume(a1);
}

void sub_231AD23AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  *v19 = a17;
  *(v19 + 16) = a18;
  *(v19 + 32) = a19;
  _Unwind_Resume(exception_object);
}

void sub_231AD259C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, uint64_t a17)
{
  *v17 = a15;
  *(v17 + 16) = a16;
  *(v17 + 32) = a17;
  _Unwind_Resume(exception_object);
}

void sub_231AD2AE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  *v19 = a17;
  *(v19 + 16) = a18;
  *(v19 + 32) = a19;
  _Unwind_Resume(exception_object);
}

void sub_231AD3160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  *v19 = a17;
  *(v19 + 16) = a18;
  *(v19 + 32) = a19;
  _Unwind_Resume(exception_object);
}

void sub_231AD36CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  *v19 = a17;
  *(v19 + 16) = a18;
  *(v19 + 32) = a19;
  _Unwind_Resume(exception_object);
}

void sub_231AD3AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  si_tracing_restore_current_span(va);
  _Unwind_Resume(a1);
}

void sub_231AD3CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  si_tracing_restore_current_span(va);
  _Unwind_Resume(a1);
}

void sub_231AD3DFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  *v19 = a17;
  *(v19 + 16) = a18;
  *(v19 + 32) = a19;
  _Unwind_Resume(exception_object);
}

void sub_231AD41B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  *v19 = a17;
  *(v19 + 16) = a18;
  *(v19 + 32) = a19;
  _Unwind_Resume(exception_object);
}

void sub_231AD4534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  *v19 = a17;
  *(v19 + 16) = a18;
  *(v19 + 32) = a19;
  _Unwind_Resume(exception_object);
}

void sub_231AD493C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  *v19 = a17;
  *(v19 + 16) = a18;
  *(v19 + 32) = a19;
  _Unwind_Resume(exception_object);
}

void sub_231AD4B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  si_tracing_restore_current_span(va);
  _Unwind_Resume(a1);
}

void sub_231AD4C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  *v19 = a17;
  *(v19 + 16) = a18;
  *(v19 + 32) = a19;
  _Unwind_Resume(exception_object);
}

void sub_231AD4EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  si_tracing_restore_current_span(va);
  _Unwind_Resume(a1);
}

void sub_231AD4FF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  *v19 = a17;
  *(v19 + 16) = a18;
  *(v19 + 32) = a19;
  _Unwind_Resume(exception_object);
}

void sub_231AD5A0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  *v19 = a17;
  *(v19 + 16) = a18;
  *(v19 + 32) = a19;
  _Unwind_Resume(exception_object);
}

void sub_231AD5FC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  *v19 = a17;
  *(v19 + 16) = a18;
  *(v19 + 32) = a19;
  _Unwind_Resume(exception_object);
}

void sub_231AD6114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  *v19 = a17;
  *(v19 + 16) = a18;
  *(v19 + 32) = a19;
  _Unwind_Resume(exception_object);
}

void sub_231AD65DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  *v19 = a17;
  *(v19 + 16) = a18;
  *(v19 + 32) = a19;
  _Unwind_Resume(exception_object);
}

void sub_231AD6968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  *v19 = a17;
  *(v19 + 16) = a18;
  *(v19 + 32) = a19;
  _Unwind_Resume(exception_object);
}

void sub_231AD6E5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  *v19 = a17;
  *(v19 + 16) = a18;
  *(v19 + 32) = a19;
  _Unwind_Resume(exception_object);
}

void sub_231AD723C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  *v19 = a17;
  *(v19 + 16) = a18;
  *(v19 + 32) = a19;
  _Unwind_Resume(exception_object);
}

uint64_t signalHandler(uint64_t result)
{
  v8 = *MEMORY[0x277D85DE8];
  if (result == 15)
  {
    if ((signalHandler_didHandleSIGTERM & 1) == 0)
    {
      signalHandler_didHandleSIGTERM = 1;
      v1 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
      {
        LOWORD(v6) = 0;
        _os_log_impl(&dword_231A35000, v1, OS_LOG_TYPE_INFO, "Received SIGTERM", &v6, 2u);
      }

      [sSignalHandlerDelegate didReceiveSignal:15];
      v2 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        LOWORD(v6) = 0;
        _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_INFO, "Exiting", &v6, 2u);
      }

      exit(0);
    }
  }

  else
  {
    v3 = result;
    v4 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 134217984;
      v7 = v3;
      _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_INFO, "Received signal %lu", &v6, 0xCu);
    }

    result = [sSignalHandlerDelegate didReceiveSignal:v3];
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_231ADB024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

void *__si_process_corrections_block_invoke(void *result, int a2, __int128 *a3)
{
  v3 = result;
  if (a2 <= 2)
  {
    if (a2 != 1)
    {
      if (a2 == 2)
      {
        v4 = *(*(result[7] + 8) + 24);
        if (v4 == 1)
        {
          *(result[11] + 8) = result[12];
          if (*(result[11] + 8 * *(*(result[7] + 8) + 24) - 8) == result[14])
          {
            v16 = *(result[8] + 8);
            v17 = *(v16 + 24);
            if (v17 <= 0x3FF)
            {
              v18 = *(*(result[10] + 8) + 24);
              *(v16 + 24) = v17 + 1;
              v19 = v18 + 24 * v17;
              v20 = *a3;
              *(v19 + 16) = *(a3 + 2);
              *v19 = v20;
            }
          }
        }

        else if (!v4)
        {
          *result[11] = result[12];
          v5 = *(a3 + 2);
          switch(v5)
          {
            case 8:
              if (**(a3 + 1) == 0x65676175676E616CLL)
              {
                v7 = result[16];
                goto LABEL_44;
              }

              break;
            case 7:
              v24 = *(a3 + 1);
              v25 = *v24;
              v26 = *(v24 + 3);
              if (v25 == 1936876918 && v26 == 1852795251)
              {
                v7 = result[15];
                goto LABEL_44;
              }

              break;
            case 1:
              v6 = **(a3 + 1);
              if (v6 == 113)
              {
                *(result[11] + 8 * *(*(result[7] + 8) + 24)) = result[13];
                v6 = **(a3 + 1);
              }

              if (v6 == 99)
              {
                v7 = result[14];
LABEL_44:
                *(result[11] + 8 * *(*(result[7] + 8) + 24)) = v7;
                return result;
              }

              break;
          }
        }
      }

      return result;
    }

    v10 = *(result[7] + 8);
    v11 = *(v10 + 24) + 1;
LABEL_29:
    *(v10 + 24) = v11;
    return result;
  }

  if (a2 == 3)
  {
    v10 = *(result[7] + 8);
    v12 = *(v10 + 24);
    if (v12 == 1)
    {
      if (*(*(result[8] + 8) + 24))
      {
        v13 = result[4];
        v14 = *(v3[9] + 8);
        v15 = *(*(v3[10] + 8) + 24);
        result = (*(v3[4] + 16))();
        *(*(v3[8] + 8) + 24) = 0;
        v10 = *(v3[7] + 8);
        v12 = *(v10 + 24);
      }

      else
      {
        v12 = 1;
      }
    }

    v11 = v12 - 1;
    goto LABEL_29;
  }

  if (a2 == 6 && !*(*(result[7] + 8) + 24))
  {
    v8 = *result[11];
    if (v8 == result[13])
    {
      v21 = *(result[9] + 8);
      v22 = *a3;
      *(v21 + 48) = *(a3 + 2);
      *(v21 + 32) = v22;
      *(*(result[8] + 8) + 24) = 0;
      return result;
    }

    if (v8 == result[16])
    {
      v9 = result[5];
    }

    else
    {
      if (v8 != result[15])
      {
        return result;
      }

      v9 = result[6];
    }

    v23 = *(v9 + 16);

    return v23();
  }

  return result;
}

void newHeartbeatDict_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void protectionClassForAnalytics_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 UTF8String];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void setClientStateForIndexing_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void wait_for_apfs_kb_state_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void createResetTouchFileDirectoryForUUID_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void ___setup_block_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  v10 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x2383760E0](*(v1 + 32));
  v3 = *(v0 + 40);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);

  v9 = *MEMORY[0x277D85DE8];
}

void ___sendPhotosReindexABCReport_block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 valueForKey:*MEMORY[0x277D6B168]];
  [v1 integerValue];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __updatedFrom2024Seed_block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __updatedFrom2024Seed_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void is2024Seed_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __processItemsForImport_block_invoke_cold_1(_BYTE *a1, const char *a2)
{
  Property = gDASManager;
  if (gDASManager)
  {
    Property = objc_getProperty(gDASManager, a2, 8, 1);
  }

  result = [Property allowsDiscretionaryWorkForTask:@"indexing" withPriority:*MEMORY[0x277D06AA0] withParameters:0];
  *a1 = result ^ 1;
  return result;
}

void __processItemsForImport_block_invoke_cold_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v9 = [*(a1 + 40) fileType];
  [*(a1 + 48) count];
  v10 = *(a1 + 48);
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x3Au);

  v8 = *MEMORY[0x277D85DE8];
}

void __processItemsForImportInner_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ___sendMemoryPressureABCReport_block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 valueForKey:*MEMORY[0x277D6B168]];
  [v1 integerValue];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void SDTransactionCreate_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_231A35000, a2, OS_LOG_TYPE_DEBUG, "SDTransactionCreate, %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void SDTransactionDone_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = a1;
  _os_log_debug_impl(&dword_231A35000, a2, OS_LOG_TYPE_DEBUG, "SDTransactionDone, %s", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}