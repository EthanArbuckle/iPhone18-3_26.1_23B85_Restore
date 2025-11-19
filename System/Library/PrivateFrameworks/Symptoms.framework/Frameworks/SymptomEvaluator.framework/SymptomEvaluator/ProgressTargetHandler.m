@interface ProgressTargetHandler
+ (id)configureClass:(id)a3;
+ (id)sharedInstance;
- (BOOL)noteSymptom:(id)a3;
- (int)configureInstance:(id)a3;
- (int)read:(id)a3 returnedValues:(id)a4;
- (void)doActionsForNetworkType:(int64_t)a3;
- (void)pruneActions;
@end

@implementation ProgressTargetHandler

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__ProgressTargetHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_pred_17 != -1)
  {
    dispatch_once(&sharedInstance_pred_17, block);
  }

  v2 = sharedInstance_sharedInstance_17;

  return v2;
}

uint64_t __39__ProgressTargetHandler_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_17;
  sharedInstance_sharedInstance_17 = v1;

  v3 = sharedInstance_sharedInstance_17;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [ConfigurationHandler setConfigurationObject:v3 forName:v5];

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = connStore;
  connStore = v6;

  return MEMORY[0x2821F96F8](v6, v7);
}

+ (id)configureClass:(id)a3
{
  v3 = a3;
  v4 = +[ProgressTargetHandler sharedInstance];
  [v4 configureInstance:v3];

  return v4;
}

- (int)configureInstance:(id)a3
{
  self->regularMargin = machAbsoluteTimeFromNanoseconds(5000000000);
  self->expeditedMargin = machAbsoluteTimeFromNanoseconds(500000000);
  shared_prefs_store = get_shared_prefs_store();
  if (shared_prefs_store)
  {
    v5 = shared_prefs_store;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __43__ProgressTargetHandler_configureInstance___block_invoke;
    v8[3] = &unk_27898A0A0;
    v8[4] = self;
    prefs_add_client(shared_prefs_store, "progress_target_regular_margin_msecs", v8);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __43__ProgressTargetHandler_configureInstance___block_invoke_53;
    v7[3] = &unk_27898A0A0;
    v7[4] = self;
    prefs_add_client(v5, "progress_target_expedited_margin_msecs", v7);
  }

  return 0;
}

void __43__ProgressTargetHandler_configureInstance___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x238389170](v4) == MEMORY[0x277D86498])
  {
    value = xpc_int64_get_value(v5);
    v11 = value;
    if (value < 1)
    {
      *(*(a1 + 32) + 8) = machAbsoluteTimeFromNanoseconds(5000000000);
      v12 = rnfLogHandle;
      if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      v14 = 134217984;
      v15 = v11;
      v7 = "Progress Target: got a 0 or negative value for new regular margin msecs (%lld), using default";
    }

    else
    {
      *(*(a1 + 32) + 8) = machAbsoluteTimeFromNanoseconds(1000000 * value);
      v12 = rnfLogHandle;
      if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      v14 = 134217984;
      v15 = v11;
      v7 = "Progress Target: set to new regular margin msecs (%lld)";
    }

    v8 = v12;
    v9 = 12;
    goto LABEL_11;
  }

  *(*(a1 + 32) + 8) = machAbsoluteTimeFromNanoseconds(5000000000);
  v6 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    v7 = "Progress Target: got a nil for new regular margin msecs, using default";
    v8 = v6;
    v9 = 2;
LABEL_11:
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, v7, &v14, v9);
  }

LABEL_12:

  v13 = *MEMORY[0x277D85DE8];
}

void __43__ProgressTargetHandler_configureInstance___block_invoke_53(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x238389170](v4) == MEMORY[0x277D86498])
  {
    value = xpc_int64_get_value(v5);
    v11 = value;
    if (value < 1)
    {
      *(*(a1 + 32) + 16) = machAbsoluteTimeFromNanoseconds(500000000);
      v12 = rnfLogHandle;
      if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      v14 = 134217984;
      v15 = v11;
      v7 = "Progress Target: got a 0 or negative value for new expedited margin msecs (%lld), ignoring";
    }

    else
    {
      *(*(a1 + 32) + 16) = machAbsoluteTimeFromNanoseconds(1000000 * value);
      v12 = rnfLogHandle;
      if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      v14 = 134217984;
      v15 = v11;
      v7 = "Progress Target: set to new expedited margin msecs (%lld)";
    }

    v8 = v12;
    v9 = 12;
    goto LABEL_11;
  }

  *(*(a1 + 32) + 16) = machAbsoluteTimeFromNanoseconds(500000000);
  v6 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    v7 = "Progress Target: got a nil for new expedited margin msecs, ignoring";
    v8 = v6;
    v9 = 2;
LABEL_11:
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, v7, &v14, v9);
  }

LABEL_12:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)doActionsForNetworkType:(int64_t)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = rnfLogHandle;
  v5 = os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT);
  if (a3 == 2)
  {
    if (v5)
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "Progress Target: Relay info on rebuffer warning", &v7, 2u);
    }

    [NetworkAnalyticsEngine relayRebufferState:1];
  }

  else if (a3 == 1)
  {
    if (v5)
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "Progress Target: RNF boosted", &v7, 2u);
    }

    [CellFallbackHandler requestBoost:1];
    [CellOutrankHandler noteOutrankEvent:6];
  }

  else if (v5)
  {
    v7 = 134217984;
    v8 = a3;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "Progress Target: no action for interface type (%ld)", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)pruneActions
{
  v16 = *MEMORY[0x277D85DE8];
  if ([connStore count] >= 0x15)
  {
    v2 = [connStore keysSortedByValueUsingComparator:&__block_literal_global_15];
    v3 = [v2 subarrayWithRange:{0, 4}];
    v4 = [connStore count];
    [connStore removeObjectsForKeys:v3];
    v5 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v6 = connStore;
      v7 = v5;
      v9[0] = 67109888;
      v9[1] = 20;
      v10 = 1024;
      v11 = 4;
      v12 = 2048;
      v13 = v4;
      v14 = 2048;
      v15 = [v6 count];
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "Progress Target: limit: %d, prune size: %d, current count: %lu, new count: %lu", v9, 0x22u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __37__ProgressTargetHandler_pruneActions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 entryTime];
  v6 = [v4 entryTime];

  v7 = [v5 compare:v6];
  return v7;
}

- (BOOL)noteSymptom:(id)a3
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__ProgressTargetHandler_noteSymptom___block_invoke;
  v6[3] = &unk_27898CAE0;
  v6[4] = self;
  if ((libnetcoreSymptomTrampoline(a3, 0, 0, 0, MEMORY[0x277D85CD0], v6) & 1) == 0)
  {
    v3 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_ERROR, "Progress Target: received libnetcore symptom w/ non conforming layout, dropping", v5, 2u);
    }
  }

  return 0;
}

void __37__ProgressTargetHandler_noteSymptom___block_invoke(uint64_t a1, void *a2, void *a3, int a4, uint64_t a5, void *a6, void *a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12)
{
  v54 = *MEMORY[0x277D85DE8];
  v19 = a2;
  v20 = a3;
  v21 = a6;
  v22 = a7;
  v40 = a9;
  v39 = a12;
  v23 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413570;
    v43 = v19;
    v44 = 2112;
    v45 = v20;
    v46 = 1024;
    v47 = a4;
    v48 = 1024;
    v49 = a5;
    v50 = 2112;
    v51 = v22;
    v52 = 2048;
    v53 = a8;
    _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEFAULT, "Progress Target: symptom detail (symName/procName/ePid/ifIndex/connId/tstamp): %@/%@/%d/%d/%@/%llu", buf, 0x36u);
  }

  v41 = v19;
  v24 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v22];
  if (v24)
  {
    v25 = [connStore objectForKeyedSubscript:v24];
    v26 = v25;
    if (a8)
    {
      v38 = v21;
      v27 = a8 - *(*(a1 + 32) + 8);
      v28 = mach_continuous_time();
      if (v27 <= v28)
      {
        v29 = v28;
        if (v28 >= a8 || (v27 = *(*(a1 + 32) + 16) + v28) == 0)
        {
          v36 = rnfLogHandle;
          if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            v43 = a8;
            v44 = 2048;
            v45 = v29;
            _os_log_impl(&dword_23255B000, v36, OS_LOG_TYPE_ERROR, "Progress Target: setting a target (%llu) before current time (%llu)", buf, 0x16u);
          }

          v21 = v38;
          goto LABEL_25;
        }
      }

      if (!v26)
      {
        v26 = [[TimedAction alloc] initWithConnId:v24 interfaceIndex:a5 owner:v20 target:v27];
        v35 = rnfLogHandle;
        v21 = v38;
        if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v43 = v26;
          _os_log_impl(&dword_23255B000, v35, OS_LOG_TYPE_DEFAULT, "Progress Target: creating target: %@", buf, 0xCu);
        }

        [connStore setObject:v26 forKeyedSubscript:{v24, v38, v39, v40, v41}];
        [*(a1 + 32) pruneActions];
        goto LABEL_25;
      }

      v30 = rnfLogHandle;
      v21 = v38;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v43 = v26;
        _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_DEFAULT, "Progress Target: updating target: %@", buf, 0xCu);
      }

      v31 = v26;
      v32 = v27;
LABEL_18:
      [(TimedAction *)v31 setTarget:v32, v38, v39, v40, v41];
LABEL_25:

      goto LABEL_26;
    }

    if (v25)
    {
      v34 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v43 = v26;
        _os_log_impl(&dword_23255B000, v34, OS_LOG_TYPE_DEFAULT, "Progress Target: null target, nuking: %@", buf, 0xCu);
      }

      v31 = v26;
      v32 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    v33 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v33, OS_LOG_TYPE_ERROR, "Progress Target: failed to create target: no conn uuid", buf, 2u);
    }
  }

LABEL_26:

  v37 = *MEMORY[0x277D85DE8];
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