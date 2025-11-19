@interface DataStallHandler
+ (DataStallHandler)sharedInstance;
+ (id)configureClass:(id)a3;
+ (unint64_t)uniqForegroundCountForInterfaceType:(int64_t)a3 stallType:(unint64_t)a4;
- (BOOL)noteSymptom:(id)a3;
- (DataStallHandler)init;
- (int)read:(id)a3 returnedValues:(id)a4;
- (unint64_t)uniqStallCountForInterfaceType:(int64_t)a3 stallType:(unint64_t)a4 foregroundOnly:(BOOL)a5 since:(id)a6;
- (void)_pruneStaleEndpointsFor:(id)a3 onInterfaceType:(int64_t)a4 stallType:(unint64_t)a5;
- (void)_resetInterfaceType:(int64_t)a3 stallType:(unint64_t)a4;
- (void)addDelegate:(id)a3;
- (void)dealloc;
- (void)removeDelegate:(id)a3;
@end

@implementation DataStallHandler

- (DataStallHandler)init
{
  v14.receiver = self;
  v14.super_class = DataStallHandler;
  v2 = [(DataStallHandler *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    store = v2->_store;
    v2->_store = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    delegates = v2->_delegates;
    v2->_delegates = v5;

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __24__DataStallHandler_init__block_invoke;
    v12[3] = &unk_27898A690;
    v8 = v2;
    v13 = v8;
    v9 = [v7 addObserverForName:@"kNotificationNewConnectivityEpochWiFi" object:0 queue:0 usingBlock:v12];
    wifiEpochObserver = v8->_wifiEpochObserver;
    v8->_wifiEpochObserver = v9;
  }

  return v2;
}

void __24__DataStallHandler_init__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__DataStallHandler_init__block_invoke_2;
  block[3] = &unk_27898A0C8;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __24__DataStallHandler_init__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _resetInterfaceType:1 stallType:1];
  v2 = *(a1 + 32);

  return [v2 _resetInterfaceType:1 stallType:2];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self->_triggerDisconnectObserver];
  [v3 removeObserver:self->_primaryObserver];

  v4.receiver = self;
  v4.super_class = DataStallHandler;
  [(DataStallHandler *)&v4 dealloc];
}

+ (DataStallHandler)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__DataStallHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_pred_51 != -1)
  {
    dispatch_once(&sharedInstance_pred_51, block);
  }

  v2 = sharedInstance_sharedInstance_53;

  return v2;
}

void __34__DataStallHandler_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_53;
  sharedInstance_sharedInstance_53 = v1;

  v3 = sharedInstance_sharedInstance_53;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [ConfigurationHandler setConfigurationObject:v3 forName:v5];
}

+ (id)configureClass:(id)a3
{
  v3 = a3;
  v4 = +[DataStallHandler sharedInstance];
  [v4 configureInstance:v3];

  return v4;
}

+ (unint64_t)uniqForegroundCountForInterfaceType:(int64_t)a3 stallType:(unint64_t)a4
{
  v6 = +[DataStallHandler sharedInstance];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 uniqStallCountForInterfaceType:a3 stallType:a4 foregroundOnly:1 since:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)uniqStallCountForInterfaceType:(int64_t)a3 stallType:(unint64_t)a4 foregroundOnly:(BOOL)a5 since:(id)a6
{
  v6 = a5;
  v61 = *MEMORY[0x277D85DE8];
  v10 = a6;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v37 = self;
  obj = self->_store;
  v38 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v47 objects:v60 count:16];
  if (v38)
  {
    v12 = 0;
    v13 = 0;
    v36 = *v48;
    *&v11 = 134218755;
    v33 = v11;
    v35 = a4;
    do
    {
      v14 = 0;
      v15 = v12;
      do
      {
        if (*v48 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v41 = v14;
        v12 = *(*(&v47 + 1) + 8 * v14);

        [(DataStallHandler *)v37 _pruneStaleEndpointsFor:v12 onInterfaceType:a3 stallType:a4];
        v16 = [(NSMutableDictionary *)v37->_store objectForKeyedSubscript:v12];
        v42 = [MEMORY[0x277CBEB58] set];
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v17 = v16;
        v18 = [v17 countByEnumeratingWithState:&v43 objects:v59 count:16];
        if (v18)
        {
          v19 = v18;
          v39 = v12;
          v40 = v13;
          v20 = 0;
          v21 = *v44;
          v22 = v42;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              v24 = v20;
              if (*v44 != v21)
              {
                objc_enumerationMutation(v17);
              }

              v20 = *(*(&v43 + 1) + 8 * i);

              if ([v20 interfaceType] == a3 && (!v6 || objc_msgSend(v20, "foreground")))
              {
                if (!v10 || ([v20 time], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "compare:", v10), v25, v27 = v26 == 1, v22 = v42, v27))
                {
                  v28 = [v20 name];
                  [v22 addObject:v28];
                }
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v43 objects:v59 count:16];
          }

          while (v19);

          a4 = v35;
          v12 = v39;
          v13 = v40;
        }

        if ([v42 count])
        {
          v29 = rnfLogHandle;
          if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_INFO))
          {
            *buf = v33;
            v52 = a4;
            v53 = 2048;
            v54 = a3;
            v55 = 2112;
            v56 = v12;
            v57 = 2113;
            v58 = v42;
            _os_log_impl(&dword_23255B000, v29, OS_LOG_TYPE_INFO, "Stall symptom: unique stall type (%lu) on interface type (%ld) for %@: %{private}@", buf, 0x2Au);
          }

          v30 = v42;
          v13 += [v42 count];
        }

        else
        {
          v30 = v42;
        }

        v14 = v41 + 1;
        v15 = v12;
      }

      while (v41 + 1 != v38);
      v38 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v47 objects:v60 count:16];
    }

    while (v38);
  }

  else
  {
    v13 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)_pruneStaleEndpointsFor:(id)a3 onInterfaceType:(int64_t)a4 stallType:(unint64_t)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v27 = a3;
  v8 = [(NSMutableDictionary *)self->_store objectForKeyedSubscript:?];
  v9 = [MEMORY[0x277CBEB58] set];
  v10 = [MEMORY[0x277CBEAA8] date];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v29;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        v17 = v14;
        if (*v29 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v14 = *(*(&v28 + 1) + 8 * i);

        v18 = [v14 time];
        [v18 timeIntervalSinceDate:v10];
        v20 = v19;

        v21 = -v20;
        if (v20 >= 0.0)
        {
          v21 = v20;
        }

        if (v21 >= 120.0 && [v14 interfaceType] == a4 && objc_msgSend(v14, "stallType") == a5)
        {
          [v9 addObject:v14];
          v22 = rnfLogHandle;
          if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138413059;
            v33 = v27;
            v34 = 2048;
            v35 = a5;
            v36 = 2048;
            v37 = a4;
            v38 = 2113;
            v39 = v14;
            _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEFAULT, "Stall symptom: %@ has stale endpoint for stall type (%lu) on interface type (%ld), removing it: %{private}@", buf, 0x2Au);
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v13);
  }

  if ([v9 count])
  {
    [v11 minusSet:v9];
    v23 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v23;
      v25 = [v9 count];
      *buf = 138413058;
      v33 = v27;
      v34 = 2048;
      v35 = a5;
      v36 = 2048;
      v37 = a4;
      v38 = 2048;
      v39 = v25;
      _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEFAULT, "Stall symptom: %@ has %lu stale endpoints total for stall type (%lu) on interface type (%ld), removed them", buf, 0x2Au);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_resetInterfaceType:(int64_t)a3 stallType:(unint64_t)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CBEAA8] date];
  v24 = [MEMORY[0x277CBEB18] array];
  v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v27 = self;
  obj = self->_store;
  v28 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v28)
  {
    v9 = 0;
    v26 = *v36;
    do
    {
      v10 = 0;
      v11 = v9;
      do
      {
        if (*v36 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v35 + 1) + 8 * v10);

        v12 = [(NSMutableDictionary *)v27->_store objectForKeyedSubscript:v9];
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v13 = [v12 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v13)
        {
          v14 = v13;
          v29 = v10;
          v30 = v9;
          v15 = 0;
          v16 = *v32;
          do
          {
            v17 = 0;
            v18 = v15;
            do
            {
              if (*v32 != v16)
              {
                objc_enumerationMutation(v12);
              }

              v15 = *(*(&v31 + 1) + 8 * v17);

              if ([v15 interfaceType] == a3 && objc_msgSend(v15, "stallType") == a4)
              {
                goto LABEL_16;
              }

              v19 = [v15 time];
              [v19 timeIntervalSinceDate:v7];
              v21 = v20;

              v22 = -v21;
              if (v21 >= 0.0)
              {
                v22 = v21;
              }

              if (v22 >= 120.0)
              {
LABEL_16:
                [v8 addObject:v15];
              }

              ++v17;
              v18 = v15;
            }

            while (v14 != v17);
            v14 = [v12 countByEnumeratingWithState:&v31 objects:v39 count:16];
          }

          while (v14);

          v10 = v29;
          v9 = v30;
        }

        [v12 minusSet:v8];
        [v8 removeAllObjects];
        if (![v12 count])
        {
          [v24 addObject:v9];
        }

        ++v10;
        v11 = v9;
      }

      while (v10 != v28);
      v28 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v28);
  }

  [(NSMutableDictionary *)v27->_store removeObjectsForKeys:v24];
  v23 = *MEMORY[0x277D85DE8];
}

- (void)addDelegate:(id)a3
{
  v5 = a3;
  v4 = self->_delegates;
  objc_sync_enter(v4);
  if (v5)
  {
    [(NSMutableSet *)self->_delegates addObject:v5];
  }

  objc_sync_exit(v4);
}

- (void)removeDelegate:(id)a3
{
  v5 = a3;
  v4 = self->_delegates;
  objc_sync_enter(v4);
  if (v5)
  {
    [(NSMutableSet *)self->_delegates removeObject:v5];
  }

  objc_sync_exit(v4);
}

- (BOOL)noteSymptom:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 eventKey];
  v6 = [SymptomStore keyFromSymptomName:@"SYMPTOM_LIBNETCORE_DATA_STALL"];
  if ([v5 isEqualToString:v6])
  {
    goto LABEL_4;
  }

  v7 = [SymptomStore keyFromSymptomName:@"SYMPTOM_LIBNETCORE_ADAPTIVE_WRITE_TIMEOUT"];
  if ([v5 isEqualToString:v7])
  {

LABEL_4:
    goto LABEL_5;
  }

  v12 = [SymptomStore keyFromSymptomName:@"SYMPTOM_LIBNETCORE_DNS_FAILED"];
  v13 = [v5 isEqualToString:v12];

  if (v13)
  {
LABEL_5:
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __32__DataStallHandler_noteSymptom___block_invoke;
    v36[3] = &unk_27898BE68;
    v37 = v5;
    v38 = self;
    v8 = libnetcoreSymptomTrampoline(v4, 0, 1, 0, MEMORY[0x277D85CD0], v36);
    if ((v8 & 1) == 0)
    {
      v9 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "Stall symptom: failed to get details", buf, 2u);
      }
    }

    goto LABEL_9;
  }

  v14 = [SymptomStore keyFromSymptomName:@"SYMPTOM_LIBTRACE_OS_LOG"];
  v15 = [v5 isEqualToString:v14];

  if (v15)
  {
    v34 = 0;
    v35 = 0;
    v32 = 0;
    v33 = 0;
    v16 = extractLibtraceSymptomElements(v4, &v35, &v34, &v33, &v32);
    v17 = v35;
    v18 = v34;
    v19 = v33;
    v20 = v32;
    if (v16)
    {
      if (v17 && [(__CFString *)v17 isEqualToString:@"MEDIA_PLAYBACK_STALL"])
      {
        v21 = [InterfaceUtils interfaceTypeForString:v19];
        v22 = rnfLogHandle;
        if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138413571;
          v40 = v17;
          v41 = 2112;
          v42 = v18;
          v43 = 2048;
          v44 = v21;
          v45 = 2048;
          v46 = 2;
          v47 = 2113;
          v48 = @"unknown";
          v49 = 1024;
          v50 = 1;
          _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEFAULT, "Stall symptom detail: (symName/procName/interfaceType/stallType/endpoint/isFgOrBg): %@/%@/%ld/%lu/%{private}@/%d", buf, 0x3Au);
        }

        [(DataStallHandler *)self processStall:v17 procName:v18 endpoint:@"unknown" foreground:1 interfaceType:v21 stallType:2];
        v23 = +[AppStateMonitor getAppsWithStates];
        v24 = rnfLogHandle;
        if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v40 = v23;
          _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEFAULT, "Stall symptom appsWithState: %@", buf, 0xCu);
        }

        goto LABEL_28;
      }

      v31 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v40 = v17;
        v27 = "Stall symptom: not a playback stall, no need to process symptom: %@";
        v28 = v31;
        v29 = OS_LOG_TYPE_DEFAULT;
        v30 = 12;
        goto LABEL_27;
      }
    }

    else
    {
      v26 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v27 = "Stall symptom: failed to get libtrace symptom details";
        v28 = v26;
        v29 = OS_LOG_TYPE_ERROR;
        v30 = 2;
LABEL_27:
        _os_log_impl(&dword_23255B000, v28, v29, v27, buf, v30);
      }
    }

LABEL_28:

    v8 = 1;
    goto LABEL_9;
  }

  v25 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_ERROR, "Stall symptom: received symptom is not from libtrace or libnetcore", buf, 2u);
  }

  v8 = 0;
LABEL_9:

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

void __32__DataStallHandler_noteSymptom___block_invoke(uint64_t a1, void *a2, void *a3, int a4, int a5, void *a6, void *a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12)
{
  v50 = *MEMORY[0x277D85DE8];
  v17 = a2;
  v18 = a3;
  v19 = a6;
  v33 = a7;
  v20 = a9;
  v32 = a12;
  if (a5)
  {
    v21 = [objc_alloc(MEMORY[0x277CD91D8]) initWithInterfaceIndex:a5];
    v22 = [v21 type];
  }

  else
  {
    v22 = 0;
  }

  v23 = *(a1 + 32);
  v24 = [SymptomStore keyFromSymptomName:@"SYMPTOM_LIBNETCORE_DATA_STALL"];
  LODWORD(v23) = [v23 isEqualToString:v24];

  if (v23)
  {
    if (!v19)
    {
      v19 = @"unknown";
    }

    v25 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138414083;
      v35 = v17;
      v36 = 2112;
      v37 = v18;
      v38 = 1024;
      v39 = a4;
      v40 = 1024;
      v41 = a5;
      v42 = 2048;
      v43 = v22;
      v44 = 2048;
      v45 = 1;
      v46 = 2113;
      v47 = v19;
      v48 = 2112;
      v49 = v20;
      _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_DEFAULT, "Stall symptom detail: (symName/procName/ePid/ifIndex/interfaceType/stallType/endpoint/isFgOrBg): %@/%@/%d/%d/%ld/%lu/%{private}@/%@", buf, 0x4Au);
    }

    if (v20)
    {
      v26 = [v20 BOOLValue];
    }

    else
    {
      v26 = 0;
    }

    [*(a1 + 40) processStall:v17 procName:v18 endpoint:v19 foreground:v26 interfaceType:v22 stallType:1];
  }

  else
  {
    v27 = *(a1 + 32);
    v28 = [SymptomStore keyFromSymptomName:@"SYMPTOM_LIBNETCORE_DNS_FAILED"];
    LODWORD(v27) = [v27 isEqualToString:v28];

    if (v27 && v22 == 2)
    {
      v29 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v35 = 0;
        v36 = 2048;
        v37 = 1;
        _os_log_impl(&dword_23255B000, v29, OS_LOG_TYPE_DEFAULT, "Stall symptom: Relay info on data stall %lu, DNS failure %lu", buf, 0x16u);
      }

      [NetworkAnalyticsEngine relayDataStallState:0 dnsFailureState:1];
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (int)read:(id)a3 returnedValues:(id)a4
{
  v4 = a4;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 setObject:v6 forKey:@"GENERIC_CONFIG_TARGET"];

  return 0;
}

@end