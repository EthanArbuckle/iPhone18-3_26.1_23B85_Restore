@interface AnalyticsLaunchpad
+ (BOOL)foundBreadcrumb:(id)breadcrumb;
+ (BOOL)foundDestroyPersistentStoreBreadcrumb;
+ (BOOL)foundInitialWorkspaceSaveBreadcrumb;
+ (BOOL)foundIntegrityCheckBreadcrumbAboveThreshold:(BOOL)threshold;
+ (BOOL)launchHealthCheck:(id)check;
+ (id)configureClass:(id)class;
+ (id)sharedInstance;
+ (unint64_t)integrityCheckBreadcrumbCount;
+ (void)appendLaunchTime;
+ (void)clearDestroyPersistentStoreBreadcrumb;
+ (void)clearInitialWorkspaceSaveBreadcrumb;
+ (void)clearIntegrityCheckBreadcrumb;
+ (void)leaveBreadcrumbForDestroyPersistentStore;
+ (void)leaveBreadcrumbForInitialWorkspaceSave;
+ (void)leaveBreadcrumbForIntegrityCheck;
+ (void)postLaunchIntervalMetricWithPreviousLaunchTime:(unint64_t)time;
- (AnalyticsLaunchpad)init;
- (BOOL)_checkUnlockedSinceBoot;
- (id)_allocateNOIEngineWithParams:(id)params;
- (int)configureInstance:(id)instance;
- (void)_launchSequence:(id)sequence;
- (void)_launchSequenceWithSelfParams;
- (void)deleteDatabaseCompleted:(BOOL)completed error:(id)error;
- (void)destroyPersistentStoreCompleted:(BOOL)completed error:(id)error;
- (void)integrityCheckCompleted:(BOOL)completed error:(id)error;
@end

@implementation AnalyticsLaunchpad

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__AnalyticsLaunchpad_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_pred_0 != -1)
  {
    dispatch_once(&sharedInstance_pred_0, block);
  }

  v2 = sharedInstance_sharedInstance_0;

  return v2;
}

uint64_t __36__AnalyticsLaunchpad_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_0;
  sharedInstance_sharedInstance_0 = v1;

  atexit_b(&__block_literal_global_2);
  v3 = MEMORY[0x277D85CD0];

  return notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &tokenUnlock, v3, &__block_literal_global_32);
}

uint64_t __36__AnalyticsLaunchpad_sharedInstance__block_invoke_2()
{
  +[AnalyticsLaunchpad clearIntegrityCheckBreadcrumb];

  return +[AnalyticsLaunchpad clearInitialWorkspaceSaveBreadcrumb];
}

uint64_t __36__AnalyticsLaunchpad_sharedInstance__block_invoke_3()
{
  v16 = *MEMORY[0x277D85DE8];
  v0 = measureLaunchXPCHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&dword_23255B000, v0, OS_LOG_TYPE_DEFAULT, "Received com.apple.mobile.keybagd.first_unlock notification", &v14, 2u);
  }

  v1 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v2 = v1;
    v3 = qos_class_self();
    v4 = qos_string(v3);
    v14 = 136315138;
    v15 = v4;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEBUG, "Launchpad com.apple.mobile.keybagd.first_unlock: QoS %s", &v14, 0xCu);
  }

  setMeasurement(2, 255, 1);
  v5 = MKBDeviceUnlockedSinceBoot();
  if (v5 != 1)
  {
    v6 = v5;
    v7 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      v14 = 67109120;
      LODWORD(v15) = v6;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "Unexpected first-unlock event, %d", &v14, 8u);
    }
  }

  v8 = measureLaunchXPCHandle();
  if (os_signpost_enabled(v8))
  {
    LOWORD(v14) = 0;
    _os_signpost_emit_with_name_impl(&dword_23255B000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "FirstUnlockLaunchSequenceInterval", "", &v14, 2u);
  }

  markMeasurement(2, 1);
  v9 = measureLaunchXPCHandle();
  if (os_signpost_enabled(v9))
  {
    LOWORD(v14) = 0;
    _os_signpost_emit_with_name_impl(&dword_23255B000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FirstUnlockNotification", "Received com.apple.mobile.keybagd.first_unlock notification", &v14, 2u);
  }

  markMeasurement(2, 2);
  v10 = measureLaunchXPCHandle();
  if (os_signpost_enabled(v10))
  {
    LOWORD(v14) = 0;
    _os_signpost_emit_with_name_impl(&dword_23255B000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UnlockCheckComplete", "First unlock processing complete - ready to continue with launch", &v14, 2u);
  }

  v11 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "First unlock occurred, proceeding", &v14, 2u);
  }

  [sharedInstance_sharedInstance_0 _launchSequenceWithSelfParams];
  result = notify_cancel(tokenUnlock);
  tokenUnlock = -1;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (AnalyticsLaunchpad)init
{
  v17.receiver = self;
  v17.super_class = AnalyticsLaunchpad;
  v2 = [(AnalyticsLaunchpad *)&v17 init];
  if (v2)
  {
    v3 = SFGetStandardQueue(4);
    service_queue = v2->service_queue;
    v2->service_queue = v3;

    v5 = SFGetAnalyticsQueue(1);
    flows_queue = v2->flows_queue;
    v2->flows_queue = v5;

    v7 = SFGetAnalyticsQueue(2);
    nets_queue = v2->nets_queue;
    v2->nets_queue = v7;

    if (!v2->service_queue || !v2->flows_queue || !v2->nets_queue)
    {
      v15 = 0;
      goto LABEL_11;
    }

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [ConfigurationHandler setConfigurationObject:v2 forName:v10];
  }

  v11 = +[SystemProperties sharedInstance];
  internalBuild = [v11 internalBuild];

  if (internalBuild)
  {
    shared_prefs_store = get_shared_prefs_store();
    if (shared_prefs_store)
    {
      v14 = shared_prefs_store;
      prefs_add_client(shared_prefs_store, "carrier_seed_flag", &__block_literal_global_38);
      prefs_add_client(v14, "disable_internal_build", &__block_literal_global_46);
      prefs_add_client(v14, "seed_flag", &__block_literal_global_51);
      prefs_add_client(v14, "vendor_flag", &__block_literal_global_56);
    }
  }

  v15 = v2;
LABEL_11:

  return v15;
}

void __26__AnalyticsLaunchpad_init__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__AnalyticsLaunchpad_init__block_invoke_2;
  block[3] = &unk_27898A0C8;
  v7 = v3;
  v4 = kSymptomEvaluatorAnalyticsFileName_block_invoke_carrierOnceToken;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&kSymptomEvaluatorAnalyticsFileName_block_invoke_carrierOnceToken, block);
  }
}

void __26__AnalyticsLaunchpad_init__block_invoke_2(uint64_t a1)
{
  *&v17[5] = *MEMORY[0x277D85DE8];
  v2 = configurationLogHandle;
  if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    if (!v3)
    {
      v3 = &stru_2847966D8;
    }

    v16 = 138412290;
    *v17 = v3;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEBUG, "Checking for forced override: (Carrier Seed) %@", &v16, 0xCu);
  }

  if (*(a1 + 32))
  {
    if (MEMORY[0x238389170]() == MEMORY[0x277D86448])
    {
      value = xpc_BOOL_get_value(*(a1 + 32));
      v5 = +[SystemProperties sharedInstance];
      v6 = [v5 carrierSeedBuildOverride];
      v7 = [v6 BOOLValue];

      if (value != v7)
      {
        v8 = configurationLogHandle;
        if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v9 = v8;
          v10 = +[SystemProperties sharedInstance];
          v11 = [v10 carrierSeedBuildOverride];
          v12 = [v11 BOOLValue];
          v16 = 67109376;
          v17[0] = v12;
          LOWORD(v17[1]) = 1024;
          *(&v17[1] + 2) = value;
          _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "Forced Override: Carrier Seed flag %d => %d)", &v16, 0xEu);
        }

        v13 = [MEMORY[0x277CCABB0] numberWithBool:value];
        v14 = +[SystemProperties sharedInstance];
        [v14 setCarrierSeedBuildOverride:v13];
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __26__AnalyticsLaunchpad_init__block_invoke_44(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__AnalyticsLaunchpad_init__block_invoke_2_47;
  block[3] = &unk_27898A0C8;
  v7 = v3;
  v4 = kSymptomEvaluatorAnalyticsFileName_block_invoke_2_internalOnceToken;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&kSymptomEvaluatorAnalyticsFileName_block_invoke_2_internalOnceToken, block);
  }
}

void __26__AnalyticsLaunchpad_init__block_invoke_2_47(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = configurationLogHandle;
  if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    if (!v3)
    {
      v3 = &stru_2847966D8;
    }

    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEBUG, "Checking for forced override: (disable Internal build) %@", &v7, 0xCu);
  }

  if (*(a1 + 32) && MEMORY[0x238389170]() == MEMORY[0x277D86448] && xpc_BOOL_get_value(*(a1 + 32)))
  {
    v4 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 67109120;
      LODWORD(v8) = 1;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "Forced Override: Internal build flag disabled by override - (%d)", &v7, 8u);
    }

    v5 = +[SystemProperties sharedInstance];
    [v5 setInternalBuildDisabledByOverride:1];
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __26__AnalyticsLaunchpad_init__block_invoke_49(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__AnalyticsLaunchpad_init__block_invoke_2_52;
  block[3] = &unk_27898A0C8;
  v7 = v3;
  v4 = kSymptomEvaluatorAnalyticsFileName_block_invoke_3_seedOnceToken;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&kSymptomEvaluatorAnalyticsFileName_block_invoke_3_seedOnceToken, block);
  }
}

void __26__AnalyticsLaunchpad_init__block_invoke_2_52(uint64_t a1)
{
  *&v17[5] = *MEMORY[0x277D85DE8];
  v2 = configurationLogHandle;
  if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    if (!v3)
    {
      v3 = &stru_2847966D8;
    }

    v16 = 138412290;
    *v17 = v3;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEBUG, "Checking for forced override: (Seed Build) %@", &v16, 0xCu);
  }

  if (*(a1 + 32))
  {
    if (MEMORY[0x238389170]() == MEMORY[0x277D86448])
    {
      value = xpc_BOOL_get_value(*(a1 + 32));
      v5 = +[SystemProperties sharedInstance];
      v6 = [v5 seedBuildOverride];
      v7 = [v6 BOOLValue];

      if (value != v7)
      {
        v8 = configurationLogHandle;
        if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v9 = v8;
          v10 = +[SystemProperties sharedInstance];
          v11 = [v10 seedBuildOverride];
          v12 = [v11 BOOLValue];
          v16 = 67109376;
          v17[0] = v12;
          LOWORD(v17[1]) = 1024;
          *(&v17[1] + 2) = value;
          _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "Forced Override: Seed Build flag %d => %d)", &v16, 0xEu);
        }

        v13 = [MEMORY[0x277CCABB0] numberWithBool:value];
        v14 = +[SystemProperties sharedInstance];
        [v14 setSeedBuildOverride:v13];
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __26__AnalyticsLaunchpad_init__block_invoke_54(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__AnalyticsLaunchpad_init__block_invoke_2_57;
  block[3] = &unk_27898A0C8;
  v7 = v3;
  v4 = kSymptomEvaluatorAnalyticsFileName_block_invoke_4_vendorOnceToken;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&kSymptomEvaluatorAnalyticsFileName_block_invoke_4_vendorOnceToken, block);
  }
}

void __26__AnalyticsLaunchpad_init__block_invoke_2_57(uint64_t a1)
{
  *&v17[5] = *MEMORY[0x277D85DE8];
  v2 = configurationLogHandle;
  if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    if (!v3)
    {
      v3 = &stru_2847966D8;
    }

    v16 = 138412290;
    *v17 = v3;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEBUG, "Checking for forced override: (Vendor Build) %@", &v16, 0xCu);
  }

  if (*(a1 + 32))
  {
    if (MEMORY[0x238389170]() == MEMORY[0x277D86448])
    {
      value = xpc_BOOL_get_value(*(a1 + 32));
      v5 = +[SystemProperties sharedInstance];
      v6 = [v5 vendorBuildOverride];
      v7 = [v6 BOOLValue];

      if (value != v7)
      {
        v8 = configurationLogHandle;
        if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v9 = v8;
          v10 = +[SystemProperties sharedInstance];
          v11 = [v10 vendorBuildOverride];
          v12 = [v11 BOOLValue];
          v16 = 67109376;
          v17[0] = v12;
          LOWORD(v17[1]) = 1024;
          *(&v17[1] + 2) = value;
          _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "Forced Override: Vendor Build flag %d => %d)", &v16, 0xEu);
        }

        v13 = [MEMORY[0x277CCABB0] numberWithBool:value];
        v14 = +[SystemProperties sharedInstance];
        [v14 setVendorBuildOverride:v13];
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

+ (id)configureClass:(id)class
{
  classCopy = class;
  v4 = +[AnalyticsLaunchpad sharedInstance];
  [v4 configureInstance:classCopy];

  return v4;
}

- (void)_launchSequenceWithSelfParams
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v4 = v3;
    v5 = qos_class_self();
    *buf = 136315138;
    v11 = qos_string(v5);
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEBUG, "Launchpad _launchSequenceWithSelfParams: QoS %s", buf, 0xCu);
  }

  service_queue = self->service_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__AnalyticsLaunchpad__launchSequenceWithSelfParams__block_invoke;
  block[3] = &unk_27898A0C8;
  block[4] = self;
  v7 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(service_queue, v7);

  v8 = *MEMORY[0x277D85DE8];
}

void __51__AnalyticsLaunchpad__launchSequenceWithSelfParams__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 launchParams];
  [v1 _launchSequence:v2];
}

- (void)_launchSequence:(id)sequence
{
  v25 = *MEMORY[0x277D85DE8];
  sequenceCopy = sequence;
  v5 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v6 = v5;
    v7 = qos_class_self();
    *buf = 136315138;
    v24 = qos_string(v7);
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "Launchpad _launchSequence: QoS %s", buf, 0xCu);
  }

  if (self->_launchSequenceStarted)
  {
    v8 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_INFO, "LaunchSequence already in progress - ignoring multiple calls into _launchSequence:", buf, 2u);
    }

    v9 = measureLaunchXPCHandle();
    if (os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23255B000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LaunchSequenceAlreadyInProgress", "LaunchSequence already called, ignoring multiple calls", buf, 2u);
    }
  }

  else
  {
    markMeasurement(2, 3);
    v10 = measureLaunchXPCHandle();
    if (os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23255B000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LaunchSequenceStart", "Immediately after called into launchSequence", buf, 2u);
    }

    self->_launchSequenceStarted = 1;
    v11 = [sequenceCopy objectForKeyedSubscript:@"isHelper"];
    bOOLValue = [v11 BOOLValue];

    v13 = +[SystemSettingsRelay defaultRelay];

    if (!v13)
    {
      v14 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "Failed to create system settings relay", buf, 2u);
      }
    }

    if (bOOLValue)
    {
      v15 = 0;
    }

    else
    {
      configure_symptom_network_diagnostics();
      v15 = @"/var/networkd";
    }

    flows_queue = self->flows_queue;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __38__AnalyticsLaunchpad__launchSequence___block_invoke;
    v18[3] = &unk_27898A378;
    v19 = v15;
    selfCopy = self;
    v22 = bOOLValue;
    v21 = sequenceCopy;
    dispatch_sync(flows_queue, v18);

    v9 = v19;
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __38__AnalyticsLaunchpad__launchSequence___block_invoke(uint64_t a1)
{
  v55[1] = *MEMORY[0x277D85DE8];
  ++_launchSequence__attempts;
  v2 = measureLaunchXPCHandle();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23255B000, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "WorkspaceInitializeBegin", "Immediately before allocating the first workspace", buf, 2u);
  }

  markMeasurement(2, 4);
  v3 = MEMORY[0x277D6B500];
  v4 = +[SystemSettingsRelay defaultRelay];
  v5 = [v4 symptomEvaluatorDatabaseContainerPath];
  v6 = [v3 workspaceWithName:@"netusage" atPath:v5 objectModelName:*MEMORY[0x277D6B618] objectModelBundle:0 useReadOnly:0 legacyDBContainerPathToMigrate:*(a1 + 32)];

  v7 = measureLaunchXPCHandle();
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23255B000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "WorkspaceInitializeEnd", "Immediately after allocating the first workspace", buf, 2u);
  }

  markMeasurement(2, 5);
  if (v6)
  {
    v8 = measureLaunchXPCHandle();
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23255B000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PersistenceInitializationBegin", "Immediately before performing persistence initialization", buf, 2u);
    }

    markMeasurement(2, 6);
    [v6 setHealthDelegate:*(a1 + 40)];
    if ((*(a1 + 56) & 1) != 0 || ![AnalyticsLaunchpad launchHealthCheck:v6])
    {
      v9 = 0;
    }

    else
    {
      +[AnalyticsLaunchpad leaveBreadcrumbForInitialWorkspaceSave];
      v9 = 1;
    }

    v10 = [v6 save];
    if (v9)
    {
      +[AnalyticsLaunchpad clearInitialWorkspaceSaveBreadcrumb];
    }

    v11 = +[SystemProperties sharedInstance];
    v12 = [v11 internalBuild];

    if (v12)
    {
      v13 = [ImpoExpoService impoExpoServiceInWorkspace:v6 andQueue:*(*(a1 + 40) + 16)];
      v14 = [v13 listItemsNameWithPrefix:@"manually_modified_using_" sortDescriptor:0];
      [v14 enumerateObjectsUsingBlock:&__block_literal_global_73_0];
    }

    [v6 setHealthDelegate:0];
    v15 = measureLaunchXPCHandle();
    if (os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23255B000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PersistenceInitializationEnd", "Immediately after completing persistence initialization and health checks", buf, 2u);
    }

    markMeasurement(2, 7);
    if (v10)
    {
      v16 = +[SystemSettingsRelay defaultRelay];
      v17 = [v16 ndfFeatureFlagEnabled];

      if (v17)
      {
        v18 = [v6 persistentStoreCoordinator];
        v19 = v18 == 0;

        if (!v19)
        {
          v20 = +[NDFCoreShim sharedInstance];
          v21 = [v6 persistentStoreCoordinator];
          [v20 setupPersistentStorageWithCoordinator:v21];

LABEL_42:
          v35 = measureLaunchXPCHandle();
          if (os_signpost_enabled(v35))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_23255B000, v35, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FlowAnalyticsEngineAllocated", "Allocating FlowAnalyticsEngine", buf, 2u);
          }

          markMeasurement(2, 8);
          v23 = [[FlowAnalyticsEngine alloc] initWithWorkspace:v6 params:*(a1 + 48) queue:*(*(a1 + 40) + 16)];
          v36 = [MEMORY[0x277CCAB98] defaultCenter];
          if (v23)
          {
            v54 = @"ObjectKey";
            v55[0] = v23;
            v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:&v54 count:1];
            [v36 postNotificationName:@"kNotificationOfPartialInitialization" object:v23 userInfo:v37];
          }

          else
          {
            v38 = otherLogHandle;
            if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v38, OS_LOG_TYPE_ERROR, "Failed to start flow analytics", buf, 2u);
            }

            v37 = +[AWDAgent defaultInstance];
            v39 = [MEMORY[0x277CCA9B8] errorWithDomain:0x2847AAC78 code:3404 userInfo:0];
            [v37 postMetricForSignificantEventWithName:@"AnalyticsEngineAllocationFailure" errorContext:3 error:v39 status:0];
          }

          v40 = *(*(a1 + 40) + 24);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __38__AnalyticsLaunchpad__launchSequence___block_invoke_83;
          block[3] = &unk_27898A328;
          v41 = *(a1 + 48);
          v42 = *(a1 + 40);
          v50 = v41;
          v51 = v42;
          v52 = v36;
          v43 = v36;
          dispatch_sync(v40, block);

          goto LABEL_50;
        }

        v34 = otherLogHandle;
        if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_42;
        }

        *buf = 0;
        v31 = "Failed to set up a PSC";
        v32 = v34;
        v33 = OS_LOG_TYPE_ERROR;
      }

      else
      {
        v30 = otherLogHandle;
        if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
        {
          goto LABEL_42;
        }

        *buf = 0;
        v31 = "NDF: This feature is not enabled";
        v32 = v30;
        v33 = OS_LOG_TYPE_INFO;
      }

      _os_log_impl(&dword_23255B000, v32, v33, v31, buf, 2u);
      goto LABEL_42;
    }

    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __38__AnalyticsLaunchpad__launchSequence___block_invoke_85;
    v47[3] = &unk_27898A0C8;
    v48 = v6;
    if (kSymptomEvaluatorAnalyticsFileName_block_invoke_5_persistentStoreFailureToken != -1)
    {
      dispatch_once(&kSymptomEvaluatorAnalyticsFileName_block_invoke_5_persistentStoreFailureToken, v47);
    }

    if (_launchSequence__attempts > 19)
    {
      v29 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v29, OS_LOG_TYPE_ERROR, "Workspace allocated but non functional. Retries exhausted. Fatal", buf, 2u);
      }

      v27 = +[AWDAgent defaultInstance];
      [v27 postMetricForSignificantEventWithName:@"ExceededWorkspaceRecoveryRetryAttempts" errorContext:6 error:0 status:0];
    }

    else
    {
      v25 = 2 * kLaunchRecoverActivityDelay;
      if (2 * kLaunchRecoverActivityDelay >= 300)
      {
        v25 = 300;
      }

      v26 = 5;
      if (kLaunchRecoverActivityDelay)
      {
        v26 = v25;
      }

      kLaunchRecoverActivityDelay = v26;
      v27 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_int64(v27, *MEMORY[0x277D86250], kLaunchRecoverActivityDelay);
      xpc_dictionary_set_int64(v27, *MEMORY[0x277D86270], 5);
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __38__AnalyticsLaunchpad__launchSequence___block_invoke_2;
      v45[3] = &unk_27898A350;
      v28 = *(a1 + 48);
      v45[4] = *(a1 + 40);
      v46 = v28;
      xpc_activity_register("com.apple.symptoms.launch_recover_xpc_activity", v27, v45);
    }

    v23 = v48;
  }

  else
  {
    v22 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_ERROR, "Failed to allocate workspace for all analytics.", buf, 2u);
    }

    v23 = +[AWDAgent defaultInstance];
    v24 = [MEMORY[0x277CCA9B8] errorWithDomain:0x2847AAC78 code:3401 userInfo:0];
    [(FlowAnalyticsEngine *)v23 postMetricForSignificantEventWithName:@"AnalyticsWorkspaceAllocationFailure" errorContext:3 error:v24 status:0];
  }

LABEL_50:

  v44 = *MEMORY[0x277D85DE8];
}

void __38__AnalyticsLaunchpad__launchSequence___block_invoke_70(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_ERROR, "WARNING: This persistent store has been manually modified. Proceed with caution! (%@)", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __38__AnalyticsLaunchpad__launchSequence___block_invoke_83(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = measureLaunchXPCHandle();
  if (os_signpost_enabled(v2))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_23255B000, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NetworkAnalyticsEngineAllocated", "Allocating NetworkAnalyticsEngine", v9, 2u);
  }

  markMeasurement(2, 10);
  v3 = [[NetworkAnalyticsEngine alloc] initWithWorkspace:0 params:*(a1 + 32) queue:*(*(a1 + 40) + 24)];
  v4 = v3;
  if (v3)
  {
    v10 = @"ObjectKey";
    v11[0] = v3;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [*(a1 + 48) postNotificationName:@"kNotificationOfPartialInitialization" object:v4 userInfo:v5];
  }

  else
  {
    v6 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "Failed to start net analytics", v9, 2u);
    }

    v5 = +[AWDAgent defaultInstance];
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:0x2847AAC78 code:3405 userInfo:0];
    [v5 postMetricForSignificantEventWithName:@"AnalyticsEngineAllocationFailure" errorContext:3 error:v7 status:0];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __38__AnalyticsLaunchpad__launchSequence___block_invoke_85(uint64_t a1)
{
  v2 = [*(a1 + 32) persistentStoreError];
  v3 = [v2 domain];
  v4 = [v3 isEqualToString:0x2847AAC78];

  v5 = [*(a1 + 32) persistentStoreError];
  v6 = v5;
  if (!v4)
  {

    if (!v6)
    {
      return;
    }

    v10 = +[AWDAgent defaultInstance];
    v8 = [*(a1 + 32) persistentStoreError];
    goto LABEL_6;
  }

  v7 = [v5 code];

  v10 = +[AWDAgent defaultInstance];
  v8 = [*(a1 + 32) persistentStoreError];
  if ((v7 - 3201) > 3)
  {
LABEL_6:
    v9 = @"PersistentStoreInitializationFaliure";
    goto LABEL_7;
  }

  v9 = @"PersistentStoreDataIntegrityFailure";
LABEL_7:
  [v10 postMetricForSignificantEventWithName:v9 errorContext:3 error:v8 status:0];
}

xpc_activity_state_t __38__AnalyticsLaunchpad__launchSequence___block_invoke_2(uint64_t a1, xpc_activity_t activity)
{
  v7 = *MEMORY[0x277D85DE8];
  result = xpc_activity_get_state(activity);
  if (result == 2)
  {
    v4 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      v6[0] = 67109120;
      v6[1] = _launchSequence__attempts;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_ERROR, "Workspace allocated but non functional. Retrying now (%d) ...", v6, 8u);
    }

    *(*(a1 + 32) + 8) = 0;
    result = [*(a1 + 32) _launchSequence:*(a1 + 40)];
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_allocateNOIEngineWithParams:(id)params
{
  paramsCopy = params;
  v4 = [paramsCopy objectForKeyedSubscript:@"isHelper"];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    v6 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "NOI analytics unavailable in the helper", v13, 2u);
    }

LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  v7 = measureLaunchXPCHandle();
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23255B000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NOIAnalyticsEngineAllocated", "Allocating NOIAnalyticsEngine", buf, 2u);
  }

  markMeasurement(2, 12);
  v8 = [[NOIAnalyticsEngine alloc] initWithWorkspace:0 params:paramsCopy];
  if (!v8)
  {
    v9 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "Failed to start noi analytics", v14, 2u);
    }

    v10 = +[AWDAgent defaultInstance];
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:0x2847AAC78 code:3406 userInfo:0];
    [v10 postMetricForSignificantEventWithName:@"AnalyticsEngineAllocationFailure" errorContext:3 error:v11 status:0];

    goto LABEL_10;
  }

LABEL_11:

  return v8;
}

- (void)integrityCheckCompleted:(BOOL)completed error:(id)error
{
  if (!completed)
  {
    errorCopy = error;
    v6 = +[AWDAgent defaultInstance];
    [v6 postMetricForSignificantEvent:1 errorContext:3 error:errorCopy status:0];

    v4 = vars8;
  }

  +[AnalyticsLaunchpad clearIntegrityCheckBreadcrumb];
}

- (void)destroyPersistentStoreCompleted:(BOOL)completed error:(id)error
{
  completedCopy = completed;
  v15 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = otherLogHandle;
  if (completedCopy)
  {
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "DATA LOSS: Destroyed the PersistentStore", &v13, 2u);
    }

    v7 = +[AWDAgent defaultInstance];
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = 1;
  }

  else
  {
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = errorCopy;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "DATA LOSS: Failure to destroy the PersistentStore because %@", &v13, 0xCu);
    }

    v7 = +[AWDAgent defaultInstance];
    v8 = v7;
    v9 = 3;
    v10 = errorCopy;
    v11 = 2;
  }

  [v7 postMetricForSignificantEventWithName:@"DestroyPersistentStoreAction" errorContext:v9 error:v10 status:v11];

  +[AnalyticsLaunchpad clearDestroyPersistentStoreBreadcrumb];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)deleteDatabaseCompleted:(BOOL)completed error:(id)error
{
  completedCopy = completed;
  v15 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = otherLogHandle;
  if (completedCopy)
  {
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "DATA LOSS: Deleted the database file", &v13, 2u);
    }

    v7 = +[AWDAgent defaultInstance];
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = 1;
  }

  else
  {
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = errorCopy;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "DATA LOSS: Failure to delete database file because %@", &v13, 0xCu);
    }

    v7 = +[AWDAgent defaultInstance];
    v8 = v7;
    v9 = 3;
    v10 = errorCopy;
    v11 = 2;
  }

  [v7 postMetricForSignificantEventWithName:@"DeleteDatabaseAction" errorContext:v9 error:v10 status:v11];

  v12 = *MEMORY[0x277D85DE8];
}

+ (BOOL)launchHealthCheck:(id)check
{
  v45 = *MEMORY[0x277D85DE8];
  checkCopy = check;
  p_superclass = CountDown.superclass;
  v5 = [AnalyticsLaunchpad foundBreadcrumb:checkCopy];
  v6 = MEMORY[0x277CBF040];
  v7 = MEMORY[0x277CBF030];
  if (!v5)
  {
    v10 = v5;
    v11 = CFPreferencesCopyValue(@"launchTimestamps", @"com.apple.symptomsd", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
    if (!v11)
    {
      v9 = 1;
      goto LABEL_34;
    }

    v12 = v11;
    v13 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v39 = v12;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "loaded launchTimes is %@", buf, 0xCu);
    }

    v14 = [v12 count];
    if (v14 < 4)
    {
      v24 = 0;
      v9 = 1;
      if (!v14)
      {
LABEL_30:

        if (!v24)
        {
          goto LABEL_34;
        }

        goto LABEL_31;
      }
    }

    else
    {
      v33 = v14;
      v9 = !v10;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v15 = v12;
      v16 = [v15 countByEnumeratingWithState:&v34 objects:v44 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = 0;
        v19 = 0;
        v20 = *v35;
        while (2)
        {
          v21 = 0;
          v22 = v19;
          do
          {
            if (*v35 != v20)
            {
              objc_enumerationMutation(v15);
            }

            unsignedLongLongValue = [*(*(&v34 + 1) + 8 * v21) unsignedLongLongValue];
            v19 = unsignedLongLongValue;
            if (v22)
            {
              if ((unsignedLongLongValue - v22) > 0xE10)
              {

                v24 = 1;
                p_superclass = (CountDown + 8);
                v6 = MEMORY[0x277CBF040];
                v7 = MEMORY[0x277CBF030];
                goto LABEL_29;
              }

              v18 += unsignedLongLongValue - v22;
            }

            ++v21;
            v22 = unsignedLongLongValue;
          }

          while (v17 != v21);
          v17 = [v15 countByEnumeratingWithState:&v34 objects:v44 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v18 = 0;
      }

      v25 = v18 / (v33 - 1);
      if (v25 > 0x257)
      {
        v24 = 0;
        p_superclass = (CountDown + 8);
        v6 = MEMORY[0x277CBF040];
        v7 = MEMORY[0x277CBF030];
      }

      else
      {
        v26 = otherLogHandle;
        v27 = os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR);
        p_superclass = CountDown.superclass;
        v6 = MEMORY[0x277CBF040];
        v7 = MEMORY[0x277CBF030];
        if (v27)
        {
          *buf = 134218498;
          v39 = v25;
          v40 = 2048;
          v41 = 600;
          v42 = 2112;
          v43 = v15;
          _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_ERROR, "DATA INTEGRITY: Average Launch Interval is too low (%llu < %llu). Will force integrity check. [launch times: %@]", buf, 0x20u);
        }

        v28 = +[AWDAgent defaultInstance];
        [v28 postMetricForSignificantEventWithName:@"LowLaunchIntervalAverage" errorContext:3 error:0 status:0];

        v24 = 1;
        [checkCopy setForceIntegrityCheck:1];
        v9 = 0;
      }
    }

LABEL_29:
    lastObject = [v12 lastObject];
    [p_superclass + 489 postLaunchIntervalMetricWithPreviousLaunchTime:{objc_msgSend(lastObject, "unsignedLongLongValue")}];

    goto LABEL_30;
  }

  v8 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "Tossing Launch Times because we've taken some other action", buf, 2u);
  }

  v9 = 0;
LABEL_31:
  v30 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_DEBUG, "Tossing existing Launch Times", buf, 2u);
  }

  CFPreferencesSetValue(@"launchTimestamps", 0, @"com.apple.symptomsd", *v6, *v7);
  CFPreferencesAppSynchronize(@"com.apple.symptomsd");
LABEL_34:
  [p_superclass + 489 appendLaunchTime];

  v31 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (void)postLaunchIntervalMetricWithPreviousLaunchTime:(unint64_t)time
{
  v4 = objc_alloc_init(AWDSymptomsLaunchIntervalMetric);
  if (v4)
  {
    v5 = v4;
    [(AWDSymptomsLaunchIntervalMetric *)v4 setProcess:1];
    v7.tv_sec = 0;
    *&v7.tv_usec = 0;
    gettimeofday(&v7, 0);
    [(AWDSymptomsLaunchIntervalMetric *)v5 setIntervalSincePreviousLaunch:v7.tv_sec - time];
    v6 = +[AWDAgent defaultInstance];
    [v6 postMetric:v5 withIdentifier:3145748];
  }
}

+ (void)appendLaunchTime
{
  v14 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v11.tv_sec = 0;
  *&v11.tv_usec = 0;
  gettimeofday(&v11, 0);
  v3 = *MEMORY[0x277CBF040];
  v4 = *MEMORY[0x277CBF030];
  v5 = CFPreferencesCopyValue(@"launchTimestamps", @"com.apple.symptomsd", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
  if (v5)
  {
    v6 = v5;
    [array addObjectsFromArray:v5];
  }

  v7 = [MEMORY[0x277CCABB0] numberWithLong:v11.tv_sec];
  [array addObject:v7];

  if ([array count] >= 0xB)
  {
    [array removeObjectAtIndex:0];
  }

  v8 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v13 = array;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "About to save launchTimes: %@", buf, 0xCu);
  }

  v9 = array;
  if (v9)
  {
    CFPreferencesSetValue(@"launchTimestamps", v9, @"com.apple.symptomsd", v3, v4);
    CFPreferencesAppSynchronize(@"com.apple.symptomsd");
    CFRelease(v9);
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (BOOL)foundBreadcrumb:(id)breadcrumb
{
  breadcrumbCopy = breadcrumb;
  if (+[AnalyticsLaunchpad foundDestroyPersistentStoreBreadcrumb])
  {
    v4 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_ERROR, "DATA LOSS: Uncompleted DestroyPersistentStoreInProgress breadcrumb discovered. Will force delete database and delete the breadcrumb", buf, 2u);
    }

    v5 = +[AWDAgent defaultInstance];
    [v5 postMetricForSignificantEvent:2 errorContext:3 error:0 status:0];

    v6 = 1;
    [breadcrumbCopy setForceDeleteFile:1];
    +[AnalyticsLaunchpad clearDestroyPersistentStoreBreadcrumb];
  }

  else
  {
    if ([AnalyticsLaunchpad foundIntegrityCheckBreadcrumbAboveThreshold:1])
    {
      v7 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "DATA LOSS: Uncompleted IntegrityCheckInProgress breadcrumb discovered. Will force destroy persistent store and delete the breadcrumb", v13, 2u);
      }

      v8 = +[AWDAgent defaultInstance];
      v6 = 1;
      [v8 postMetricForSignificantEvent:1 errorContext:3 error:0 status:0];

      [breadcrumbCopy setForceDestroyPersistentStore:1];
      +[AnalyticsLaunchpad clearIntegrityCheckBreadcrumb];
    }

    else
    {
      v6 = 0;
      if ([AnalyticsLaunchpad foundIntegrityCheckBreadcrumbAboveThreshold:0])
      {
        v6 = 1;
        [breadcrumbCopy setForceIntegrityCheck:1];
      }
    }

    if (([breadcrumbCopy forceDestroyPersistentStore] & 1) == 0 && +[AnalyticsLaunchpad foundInitialWorkspaceSaveBreadcrumb](AnalyticsLaunchpad, "foundInitialWorkspaceSaveBreadcrumb"))
    {
      v9 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "DATA INTEGRITY: Uncompleted InitialWorkspaceSaveInProgress breadcrumb discovered. Will force integrity check and delete the breadcrumb", v12, 2u);
      }

      v10 = +[AWDAgent defaultInstance];
      [v10 postMetricForSignificantEventWithName:@"InitialWorkspaceSaveCrashed" errorContext:3 error:0 status:0];

      v6 = 1;
      [breadcrumbCopy setForceIntegrityCheck:1];
      +[AnalyticsLaunchpad clearInitialWorkspaceSaveBreadcrumb];
    }
  }

  return v6;
}

+ (BOOL)foundInitialWorkspaceSaveBreadcrumb
{
  v2 = CFPreferencesCopyValue(@"initialWorkspaceSaveInProgress", @"com.apple.symptomsd", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
  v3 = v2 != 0;

  return v3;
}

+ (void)leaveBreadcrumbForInitialWorkspaceSave
{
  v2 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEBUG, "Saving InitialWorkspaceSave breadcrumb", v3, 2u);
  }

  CFPreferencesSetValue(@"initialWorkspaceSaveInProgress", *MEMORY[0x277CBED28], @"com.apple.symptomsd", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
  CFPreferencesAppSynchronize(@"com.apple.symptomsd");
}

+ (void)clearInitialWorkspaceSaveBreadcrumb
{
  v2 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEBUG, "Deleting InitialWorkspaceSave breadcrumb", v3, 2u);
  }

  CFPreferencesSetValue(@"initialWorkspaceSaveInProgress", 0, @"com.apple.symptomsd", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
  CFPreferencesAppSynchronize(@"com.apple.symptomsd");
}

+ (unint64_t)integrityCheckBreadcrumbCount
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = CFPreferencesCopyValue(@"integrityCheckInProgress", @"com.apple.symptomsd", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
  if (v2)
  {
    v3 = v2;
    v4 = CFGetTypeID(v2);
    if (v4 == CFNumberGetTypeID())
    {
      unsignedIntegerValue = [v3 unsignedIntegerValue];
      v6 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
      {
        v10 = 134217984;
        v11 = unsignedIntegerValue;
        _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "IntegrityCheckInProgress breadcrumb count is %ld.", &v10, 0xCu);
      }
    }

    else
    {
      v7 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        v11 = v3;
        _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "Found unexpected value stored for IntegrityCheckInProgress breadcrumb: %@", &v10, 0xCu);
      }

      +[AnalyticsLaunchpad clearIntegrityCheckBreadcrumb];
      unsignedIntegerValue = 0;
    }
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return unsignedIntegerValue;
}

+ (BOOL)foundIntegrityCheckBreadcrumbAboveThreshold:(BOOL)threshold
{
  thresholdCopy = threshold;
  v4 = +[AnalyticsLaunchpad integrityCheckBreadcrumbCount];
  v5 = 3;
  if (!thresholdCopy)
  {
    v5 = 0;
  }

  return v4 > v5;
}

+ (void)leaveBreadcrumbForIntegrityCheck
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEBUG, "Incrementing IntegrityCheckInProgress breadcrumb", &v7, 2u);
  }

  v3 = +[AnalyticsLaunchpad integrityCheckBreadcrumbCount];
  v4 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = v3;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "Incrementing IntegrityCheckInProgress breadcrumb count from %ld.", &v7, 0xCu);
  }

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3 + 1];
  CFPreferencesSetValue(@"integrityCheckInProgress", v5, @"com.apple.symptomsd", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
  CFPreferencesAppSynchronize(@"com.apple.symptomsd");
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)clearIntegrityCheckBreadcrumb
{
  v2 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEBUG, "Deleting IntegrityCheckInProgress breadcrumb", v3, 2u);
  }

  CFPreferencesSetValue(@"integrityCheckInProgress", 0, @"com.apple.symptomsd", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
  CFPreferencesAppSynchronize(@"com.apple.symptomsd");
}

+ (BOOL)foundDestroyPersistentStoreBreadcrumb
{
  v2 = CFPreferencesCopyValue(@"destroyPersistentStoreInProgress", @"com.apple.symptomsd", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
  v3 = v2 != 0;

  return v3;
}

+ (void)leaveBreadcrumbForDestroyPersistentStore
{
  v2 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEBUG, "Saving DestroyPersistentStore breadcrumb", v3, 2u);
  }

  CFPreferencesSetValue(@"destroyPersistentStoreInProgress", *MEMORY[0x277CBED28], @"com.apple.symptomsd", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
  CFPreferencesAppSynchronize(@"com.apple.symptomsd");
}

+ (void)clearDestroyPersistentStoreBreadcrumb
{
  v2 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEBUG, "Deleting DestroyPersistentStore breadcrumb", v3, 2u);
  }

  CFPreferencesSetValue(@"destroyPersistentStoreInProgress", 0, @"com.apple.symptomsd", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
  CFPreferencesAppSynchronize(@"com.apple.symptomsd");
}

- (int)configureInstance:(id)instance
{
  v21 = *MEMORY[0x277D85DE8];
  instanceCopy = instance;
  v5 = measureLaunchXPCHandle();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23255B000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AnalyticsLaunchPadInitialize", "Immediately after called into configureInstance", buf, 2u);
  }

  markMeasurement(1, 2);
  v6 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v7 = v6;
    v8 = qos_class_self();
    v9 = qos_string(v8);
    *buf = 136315138;
    v20 = v9;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "configureInstance: QoS %s", buf, 0xCu);
  }

  v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:instanceCopy];

  [(AnalyticsLaunchpad *)self setLaunchParams:v10];
  v11 = +[SystemProperties sharedInstance];
  isSymptomsdHelper = [v11 isSymptomsdHelper];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:isSymptomsdHelper];
  launchParams = [(AnalyticsLaunchpad *)self launchParams];
  [launchParams setObject:v13 forKeyedSubscript:@"isHelper"];

  setMeasurement(1, 255, isSymptomsdHelper);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __40__AnalyticsLaunchpad_configureInstance___block_invoke;
  v17[3] = &unk_27898A3A0;
  v17[4] = self;
  v18 = isSymptomsdHelper;
  if (configureInstance__pred != -1)
  {
    dispatch_once(&configureInstance__pred, v17);
  }

  v15 = *MEMORY[0x277D85DE8];
  return 0;
}

void __40__AnalyticsLaunchpad_configureInstance___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __40__AnalyticsLaunchpad_configureInstance___block_invoke_2;
  v3[3] = &unk_27898A3A0;
  v3[4] = v1;
  v4 = *(a1 + 40);
  dispatch_async(v2, v3);
}

void __40__AnalyticsLaunchpad_configureInstance___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v19 = 136315138;
    v20 = qos_string(v4);
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "dispatch service_queue: QoS %s", &v19, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = [v5 launchParams];
  v7 = [v5 _allocateNOIEngineWithParams:v6];

  v8 = @"com.apple.symptom_analytics";
  if (*(a1 + 40) == 1)
  {
    v9 = @"com.apple.symptomsd.helper";

    v10 = *(a1 + 40);
    v8 = v9;
  }

  else
  {
    v10 = 0;
  }

  [AnalyticsPortal setListeningPort:v8 queue:*(*(a1 + 32) + 32) noiEngine:v7 isHelper:v10 & 1];
  v11 = measureLaunchXPCHandle();
  if (os_signpost_enabled(v11))
  {
    LOWORD(v19) = 0;
    _os_signpost_emit_with_name_impl(&dword_23255B000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FirstUnlockCheck", "Immediately before calling _checkUnlockedSinceBoot", &v19, 2u);
  }

  markMeasurement(1, 4);
  v12 = measureLaunchXPCHandle();
  if (os_signpost_enabled(v12))
  {
    LOWORD(v19) = 0;
    _os_signpost_emit_with_name_impl(&dword_23255B000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PrelaunchSequenceInterval", "Prelaunch sequence complete, ready to call _checkUnlockedSinceBoot", &v19, 2u);
  }

  if ([(AnalyticsLaunchpad *)*(a1 + 32) _checkUnlockedSinceBoot])
  {
    v13 = measureLaunchXPCHandle();
    if (os_signpost_enabled(v13))
    {
      LOWORD(v19) = 0;
      _os_signpost_emit_with_name_impl(&dword_23255B000, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "LaunchSequenceInterval", "", &v19, 2u);
    }

    markMeasurement(2, 2);
    v14 = measureLaunchXPCHandle();
    if (os_signpost_enabled(v14))
    {
      LOWORD(v19) = 0;
      _os_signpost_emit_with_name_impl(&dword_23255B000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UnlockCheckComplete", "Unlock check complete - device already unlocked", &v19, 2u);
    }

    if (tokenUnlock != -1)
    {
      notify_cancel(tokenUnlock);
      tokenUnlock = -1;
    }

    v15 = *(a1 + 32);
    v16 = [v15 launchParams];
    [v15 _launchSequence:v16];
  }

  else
  {
    v17 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "Waiting for first unlock...", &v19, 2u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)_checkUnlockedSinceBoot
{
  v16 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    v10 = 0;
    goto LABEL_12;
  }

  v1 = MKBDeviceFormattedForContentProtection();
  v2 = os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT);
  if (v1 != 1)
  {
    if (v2)
    {
      LOWORD(v15[0]) = 0;
      v9 = "Filesystem does not support content protection, proceeding as if device was unlocked";
      goto LABEL_10;
    }

LABEL_11:
    v10 = 1;
    goto LABEL_12;
  }

  if (v2)
  {
    OUTLINED_FUNCTION_0_0(&dword_23255B000, v3, v4, "Filesystem formatted for content protection", v5, v6, v7, v8, 0);
  }

  if (MKBGetDeviceLockState() == 3)
  {
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15[0]) = 0;
      v9 = "Key bag disabled, proceeding as if device was unlocked";
LABEL_10:
      OUTLINED_FUNCTION_0_0(&dword_23255B000, v3, v4, v9, v5, v6, v7, v8, v15[0]);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v13 = MKBDeviceUnlockedSinceBoot();
  v10 = v13 == 1;
  v14 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 67109120;
    v15[1] = v13 == 1;
    _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "Key bag unlocked since boot: %{BOOL}d", v15, 8u);
  }

LABEL_12:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

void __38__AnalyticsLaunchpad__launchSequence___block_invoke_cold_1(void *a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = objc_begin_catch(a1);
  *a3 = v4;
  v5 = v4;
  v6 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "Exception during initial workspace save. %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end