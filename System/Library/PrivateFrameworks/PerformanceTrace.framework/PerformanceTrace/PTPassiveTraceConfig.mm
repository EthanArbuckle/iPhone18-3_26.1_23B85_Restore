@interface PTPassiveTraceConfig
+ (id)sharedConfig:(id *)config;
- (BOOL)resetPassiveCollectionSettings:(id *)settings;
- (id)applySetting:(unint64_t)setting;
- (id)cancelCurrentSettingWithoutCollecting;
- (id)collectLookbackIntervalWithTraceNamePrefix:(id)prefix triggerUserNotification:(BOOL)notification errorOut:(id *)out;
- (id)collectThenClearCurrentSettingWithTraceNamePrefix:(id)prefix triggerUserNotification:(BOOL)notification errorOut:(id *)out;
- (id)collectWithStartDate:(id)date endDate:(id)endDate traceNamePrefix:(id)prefix triggerUserNotification:(BOOL)notification errorOut:(id *)out;
- (id)fetchCollectAppInFocus:(id *)focus;
- (id)fetchCollectLoggingAppLaunch:(id *)launch;
- (id)fetchCollectLoggingHangs:(id *)hangs;
- (id)fetchCollectLoggingMetalFramePacing:(id *)pacing;
- (id)fetchCollectLoggingPerfPowerMetrics:(id *)metrics;
- (id)fetchCollectLoggingScrolling:(id *)scrolling;
- (id)fetchCollectLoggingUserInteraction:(id *)interaction;
- (id)fetchCollectLookbackInterval:(id *)interval;
- (id)fetchCollectMSS:(id *)s;
- (id)fetchCurrentSetting:(id *)setting;
- (id)fetchMSSPMICycleInterval:(id *)interval;
- (id)fetchMetalPerDrawableSignpostsEnabled:(id *)enabled;
- (id)fetchPerfPowerMetricMonitorEnabled:(id *)enabled;
- (id)fetchPerfPowerMetricMonitoredProcesses:(id *)processes;
- (id)fetchRecordingStartDate:(id *)date;
- (id)init:(id *)init;
- (id)instrumentationConfigLocked:(id *)locked;
- (id)pingService:(id)service errorOut:(id *)out;
- (id)updateCollectAppInFocus:(id)focus;
- (id)updateCollectLoggingAppLaunch:(id)launch;
- (id)updateCollectLoggingHangs:(id)hangs;
- (id)updateCollectLoggingMetalFramePacing:(id)pacing;
- (id)updateCollectLoggingPerfPowerMetrics:(id)metrics;
- (id)updateCollectLoggingScrolling:(id)scrolling;
- (id)updateCollectLoggingUserInteraction:(id)interaction;
- (id)updateCollectLookbackInterval:(id)interval;
- (id)updateCollectMSS:(id)s;
- (id)updateMSSPMICycleInterval:(id)interval;
- (id)updateMetalPerDrawableSignpostsEnabled:(id)enabled;
- (id)updatePerfPowerMetricMonitorEnabled:(id)enabled;
- (id)updatePerfPowerMetricMonitoredProcesses:(id)processes;
- (id)updateRecordingStartDate:(id)date;
@end

@implementation PTPassiveTraceConfig

+ (id)sharedConfig:(id *)config
{
  if (sharedConfig__onceToken == -1)
  {
    if (!config)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  +[PTPassiveTraceConfig sharedConfig:];
  if (config)
  {
LABEL_3:
    *config = sharedConfig__allocError;
  }

LABEL_4:
  v4 = sharedConfig__shared;

  return v4;
}

void __37__PTPassiveTraceConfig_sharedConfig___block_invoke()
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v0 = [[PTPassiveTraceConfig alloc] init:&v9];
  v1 = v9;
  v2 = v9;
  v3 = sharedConfig__shared;
  sharedConfig__shared = v0;

  if (!sharedConfig__shared)
  {
    v4 = _clientPassiveErrorHandle();
    if (os_signpost_enabled(v4))
    {
      v5 = [v2 localizedDescription];
      v6 = v5;
      v7 = @"Unknown";
      if (v5)
      {
        v7 = v5;
      }

      *buf = 138543362;
      v11 = v7;
      _os_signpost_emit_with_name_impl(&dword_25E3D3000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FailedToAllocateSharedInstance", "Encountered error: %{public}@", buf, 0xCu);
    }

    objc_storeStrong(&sharedConfig__allocError, v1);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)init:(id *)init
{
  v29.receiver = self;
  v29.super_class = PTPassiveTraceConfig;
  v4 = [(PTPassiveTraceConfig *)&v29 init];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  v4->_syncLock._os_unfair_lock_opaque = 0;
  v6 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.PerformanceTrace.ptpassivecollectiond.collectionconfig" options:4096];
  connection = v5->_connection;
  v5->_connection = v6;

  connection = [(PTPassiveTraceConfig *)v5 connection];

  if (!connection)
  {
    if (init)
    {
      [MEMORY[0x277CCA9B8] passiveTraceError:4 description:@"Client process could not establish connection to the backing mach service"];
      *init = v20 = 0;
      goto LABEL_14;
    }

LABEL_13:
    v20 = 0;
    goto LABEL_14;
  }

  v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2870200F8];
  connection2 = [(PTPassiveTraceConfig *)v5 connection];
  [connection2 setRemoteObjectInterface:v9];

  connection3 = [(PTPassiveTraceConfig *)v5 connection];
  [connection3 setExportedObject:v5];

  connection4 = [(PTPassiveTraceConfig *)v5 connection];
  [connection4 setInterruptionHandler:&__block_literal_global_96];

  objc_initWeak(&location, v5);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __29__PTPassiveTraceConfig_init___block_invoke_97;
  v26[3] = &unk_279A18D20;
  objc_copyWeak(&v27, &location);
  connection5 = [(PTPassiveTraceConfig *)v5 connection];
  [connection5 setInvalidationHandler:v26];

  connection6 = [(PTPassiveTraceConfig *)v5 connection];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __29__PTPassiveTraceConfig_init___block_invoke_98;
  v24[3] = &unk_279A18D48;
  v15 = v5;
  v25 = v15;
  v16 = [connection6 synchronousRemoteObjectProxyWithErrorHandler:v24];
  syncRemoteProxy = v15->_syncRemoteProxy;
  v15->_syncRemoteProxy = v16;

  connection7 = [(PTPassiveTraceConfig *)v15 connection];
  [connection7 resume];

  syncRemoteProxy = [(PTPassiveTraceConfig *)v15 syncRemoteProxy];

  if (!syncRemoteProxy)
  {
    v21 = _clientPassiveErrorHandle();
    if (os_signpost_enabled(v21))
    {
      v23 = 0;
      _os_signpost_emit_with_name_impl(&dword_25E3D3000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CouldNotGetRemoteObjectProxy", "", &v23, 2u);
    }

    if (init)
    {
      *init = [MEMORY[0x277CCA9B8] passiveTraceError:4 description:@"Client process could not establish connection to the backing mach service"];
    }

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
    goto LABEL_13;
  }

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
LABEL_5:
  v20 = v5;
LABEL_14:

  return v20;
}

void __29__PTPassiveTraceConfig_init___block_invoke()
{
  v0 = _clientPassiveErrorHandle();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_25E3D3000, v0, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ServiceConnectionInterrupted", "", v1, 2u);
  }
}

void __29__PTPassiveTraceConfig_init___block_invoke_97(uint64_t a1)
{
  v2 = _clientPassiveErrorHandle();
  if (os_signpost_enabled(v2))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_25E3D3000, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ServiceConnectionInvalidated", "Connection to passive collection service invalidated. Client process will no longer attempt to communicate with service and all functionality will error out.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  WeakRetained[12] = 1;
}

void __29__PTPassiveTraceConfig_init___block_invoke_98(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _clientPassiveErrorHandle();
  if (os_signpost_enabled(v4))
  {
    v5 = @"Unknown";
    if (v3)
    {
      v5 = v3;
    }

    v7 = 138543362;
    v8 = v5;
    _os_signpost_emit_with_name_impl(&dword_25E3D3000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SynchronousRemoteObjectProxyError", "Failed with error: %{public}@", &v7, 0xCu);
  }

  [*(a1 + 32) setProxyError:v3];
  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)resetPassiveCollectionSettings:(id *)settings
{
  if ([(PTPassiveTraceConfig *)self connectionInvalidated])
  {
    [MEMORY[0x277CCA9B8] passiveTraceError:4 description:@"Client process could not establish connection to the backing mach service"];
    *settings = v5 = 0;
  }

  else
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    if (settings)
    {
      *settings = 0;
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v9 = __55__PTPassiveTraceConfig_resetPassiveCollectionSettings___block_invoke;
    v10 = &unk_279A18D98;
    selfCopy = self;
    v12 = &v14;
    v13 = &v20;
    v6 = v8;
    os_unfair_lock_lock(&self->_syncLock);
    v9(v6);

    os_unfair_lock_unlock(&self->_syncLock);
    if (settings)
    {
      *settings = v15[5];
    }

    v5 = *(v21 + 24);
    _Block_object_dispose(&v14, 8);

    _Block_object_dispose(&v20, 8);
  }

  return v5 & 1;
}

void __55__PTPassiveTraceConfig_resetPassiveCollectionSettings___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  v2 = [*(a1 + 32) syncRemoteProxy];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__PTPassiveTraceConfig_resetPassiveCollectionSettings___block_invoke_2;
  v12[3] = &unk_279A18D70;
  v12[4] = &v13;
  v12[5] = &v19;
  [v2 resetSettings:v12];

  if (v20[3])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v14[5]);
  }

  else
  {
    v3 = [*(a1 + 32) proxyError];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    [*(a1 + 32) setProxyError:0];
  }

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v6 = _clientPassiveErrorHandle();
    if (os_signpost_enabled(v6))
    {
      v7 = [*(*(*(a1 + 40) + 8) + 40) localizedDescription];
      v8 = v7;
      v9 = @"Unknown";
      if (v7)
      {
        v9 = v7;
      }

      *buf = 138543362;
      v24 = v9;
      _os_signpost_emit_with_name_impl(&dword_25E3D3000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ResetError", "Failed to reset due to error: %{public}@", buf, 0xCu);
    }

    v10 = 0;
  }

  else
  {
    v6 = _clientPassiveHandle();
    if (os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E3D3000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ResetSuccess", "Reset configuration to default", buf, 2u);
    }

    v10 = 1;
  }

  *(*(*(a1 + 48) + 8) + 24) = v10;
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);
  v11 = *MEMORY[0x277D85DE8];
}

void __55__PTPassiveTraceConfig_resetPassiveCollectionSettings___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

- (id)fetchCollectMSS:(id *)s
{
  if ([(PTPassiveTraceConfig *)self connectionInvalidated])
  {
    [MEMORY[0x277CCA9B8] passiveTraceError:4 description:@"Client process could not establish connection to the backing mach service"];
    *s = v5 = 0;
  }

  else
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__0;
    v24 = __Block_byref_object_dispose__0;
    v25 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    if (s)
    {
      *s = 0;
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v9 = __40__PTPassiveTraceConfig_fetchCollectMSS___block_invoke;
    v10 = &unk_279A18D98;
    selfCopy = self;
    v12 = &v14;
    v13 = &v20;
    v6 = v8;
    os_unfair_lock_lock(&self->_syncLock);
    v9(v6);

    os_unfair_lock_unlock(&self->_syncLock);
    if (s)
    {
      *s = v15[5];
    }

    v5 = v21[5];
    _Block_object_dispose(&v14, 8);

    _Block_object_dispose(&v20, 8);
  }

  return v5;
}

void __40__PTPassiveTraceConfig_fetchCollectMSS___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  v2 = [*(a1 + 32) syncRemoteProxy];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __40__PTPassiveTraceConfig_fetchCollectMSS___block_invoke_2;
  v12[3] = &unk_279A18DC0;
  v12[4] = &v23;
  v12[5] = &v13;
  v12[6] = &v19;
  [v2 getCollectMSS:v12];

  if (v20[3])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v14[5]);
  }

  else
  {
    v3 = [*(a1 + 32) proxyError];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    [*(a1 + 32) setProxyError:0];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithBool:*(v24 + 24)];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = _clientPassiveHandle();
  if (os_signpost_enabled(v9))
  {
    v10 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 138543362;
    v28 = v10;
    _os_signpost_emit_with_name_impl(&dword_25E3D3000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FetchMSS", "Value: %{public}@", buf, 0xCu);
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  v11 = *MEMORY[0x277D85DE8];
}

void __40__PTPassiveTraceConfig_fetchCollectMSS___block_invoke_2(void *a1, char a2)
{
  *(*(a1[4] + 8) + 24) = a2;
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  *(*(a1[6] + 8) + 24) = 1;
}

- (id)updateCollectMSS:(id)s
{
  sCopy = s;
  if ([(PTPassiveTraceConfig *)self connectionInvalidated])
  {
    v5 = [MEMORY[0x277CCA9B8] passiveTraceError:4 description:@"Client process could not establish connection to the backing mach service"];
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v9 = __41__PTPassiveTraceConfig_updateCollectMSS___block_invoke;
    v10 = &unk_279A18DE8;
    v11 = sCopy;
    selfCopy = self;
    v13 = &v14;
    v6 = v8;
    os_unfair_lock_lock(&self->_syncLock);
    v9(v6);

    os_unfair_lock_unlock(&self->_syncLock);
    v5 = v15[5];

    _Block_object_dispose(&v14, 8);
  }

  return v5;
}

void __41__PTPassiveTraceConfig_updateCollectMSS___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = 0;
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    v4 = [v2 syncRemoteProxy];
    v5 = [*(a1 + 32) BOOLValue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __41__PTPassiveTraceConfig_updateCollectMSS___block_invoke_2;
    v13[3] = &unk_279A18D70;
    v13[4] = &v14;
    v13[5] = &v20;
    [v4 setCollectMSS:v5 callback:v13];
  }

  else
  {
    v4 = [v2 syncRemoteProxy];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __41__PTPassiveTraceConfig_updateCollectMSS___block_invoke_3;
    v12[3] = &unk_279A18D70;
    v12[4] = &v14;
    v12[5] = &v20;
    [v4 resetCollectMSS:v12];
  }

  if (v21[3])
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v15[5]);
  }

  else
  {
    v6 = [*(a1 + 40) proxyError];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    [*(a1 + 40) setProxyError:0];
  }

  v9 = _clientPassiveHandle();
  if (os_signpost_enabled(v9))
  {
    v10 = *(a1 + 32);
    *buf = 138543362;
    v25 = v10;
    _os_signpost_emit_with_name_impl(&dword_25E3D3000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UpdateMSS", "Value: %{public}@", buf, 0xCu);
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
  v11 = *MEMORY[0x277D85DE8];
}

void __41__PTPassiveTraceConfig_updateCollectMSS___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

void __41__PTPassiveTraceConfig_updateCollectMSS___block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

- (id)fetchCollectAppInFocus:(id *)focus
{
  if ([(PTPassiveTraceConfig *)self connectionInvalidated])
  {
    [MEMORY[0x277CCA9B8] passiveTraceError:4 description:@"Client process could not establish connection to the backing mach service"];
    *focus = v5 = 0;
  }

  else
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__0;
    v24 = __Block_byref_object_dispose__0;
    v25 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    if (focus)
    {
      *focus = 0;
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v9 = __47__PTPassiveTraceConfig_fetchCollectAppInFocus___block_invoke;
    v10 = &unk_279A18D98;
    selfCopy = self;
    v12 = &v14;
    v13 = &v20;
    v6 = v8;
    os_unfair_lock_lock(&self->_syncLock);
    v9(v6);

    os_unfair_lock_unlock(&self->_syncLock);
    if (focus)
    {
      *focus = v15[5];
    }

    v5 = v21[5];
    _Block_object_dispose(&v14, 8);

    _Block_object_dispose(&v20, 8);
  }

  return v5;
}

void __47__PTPassiveTraceConfig_fetchCollectAppInFocus___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  v2 = [*(a1 + 32) syncRemoteProxy];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __47__PTPassiveTraceConfig_fetchCollectAppInFocus___block_invoke_2;
  v12[3] = &unk_279A18DC0;
  v12[4] = &v23;
  v12[5] = &v13;
  v12[6] = &v19;
  [v2 getCollectAppInFocus:v12];

  if (v20[3])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v14[5]);
  }

  else
  {
    v3 = [*(a1 + 32) proxyError];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    [*(a1 + 32) setProxyError:0];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithBool:*(v24 + 24)];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = _clientPassiveHandle();
  if (os_signpost_enabled(v9))
  {
    v10 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 138543362;
    v28 = v10;
    _os_signpost_emit_with_name_impl(&dword_25E3D3000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FetchAppInFocus", "Value: %{public}@", buf, 0xCu);
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  v11 = *MEMORY[0x277D85DE8];
}

void __47__PTPassiveTraceConfig_fetchCollectAppInFocus___block_invoke_2(void *a1, char a2)
{
  *(*(a1[4] + 8) + 24) = a2;
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  *(*(a1[6] + 8) + 24) = 1;
}

- (id)updateCollectAppInFocus:(id)focus
{
  focusCopy = focus;
  if ([(PTPassiveTraceConfig *)self connectionInvalidated])
  {
    v5 = [MEMORY[0x277CCA9B8] passiveTraceError:4 description:@"Client process could not establish connection to the backing mach service"];
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v9 = __48__PTPassiveTraceConfig_updateCollectAppInFocus___block_invoke;
    v10 = &unk_279A18DE8;
    v11 = focusCopy;
    selfCopy = self;
    v13 = &v14;
    v6 = v8;
    os_unfair_lock_lock(&self->_syncLock);
    v9(v6);

    os_unfair_lock_unlock(&self->_syncLock);
    v5 = v15[5];

    _Block_object_dispose(&v14, 8);
  }

  return v5;
}

void __48__PTPassiveTraceConfig_updateCollectAppInFocus___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = 0;
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    v4 = [v2 syncRemoteProxy];
    v5 = [*(a1 + 32) BOOLValue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __48__PTPassiveTraceConfig_updateCollectAppInFocus___block_invoke_2;
    v13[3] = &unk_279A18D70;
    v13[4] = &v14;
    v13[5] = &v20;
    [v4 setCollectAppInFocus:v5 callback:v13];
  }

  else
  {
    v4 = [v2 syncRemoteProxy];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __48__PTPassiveTraceConfig_updateCollectAppInFocus___block_invoke_3;
    v12[3] = &unk_279A18D70;
    v12[4] = &v14;
    v12[5] = &v20;
    [v4 resetCollectAppInFocus:v12];
  }

  if (v21[3])
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v15[5]);
  }

  else
  {
    v6 = [*(a1 + 40) proxyError];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    [*(a1 + 40) setProxyError:0];
  }

  v9 = _clientPassiveHandle();
  if (os_signpost_enabled(v9))
  {
    v10 = *(a1 + 32);
    *buf = 138543362;
    v25 = v10;
    _os_signpost_emit_with_name_impl(&dword_25E3D3000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UpdateAppInFocus", "Value: %{public}@", buf, 0xCu);
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
  v11 = *MEMORY[0x277D85DE8];
}

void __48__PTPassiveTraceConfig_updateCollectAppInFocus___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

void __48__PTPassiveTraceConfig_updateCollectAppInFocus___block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

- (id)fetchCollectLoggingPerfPowerMetrics:(id *)metrics
{
  if ([(PTPassiveTraceConfig *)self connectionInvalidated])
  {
    [MEMORY[0x277CCA9B8] passiveTraceError:4 description:@"Client process could not establish connection to the backing mach service"];
    *metrics = v5 = 0;
  }

  else
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__0;
    v24 = __Block_byref_object_dispose__0;
    v25 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    if (metrics)
    {
      *metrics = 0;
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v9 = __60__PTPassiveTraceConfig_fetchCollectLoggingPerfPowerMetrics___block_invoke;
    v10 = &unk_279A18D98;
    selfCopy = self;
    v12 = &v14;
    v13 = &v20;
    v6 = v8;
    os_unfair_lock_lock(&self->_syncLock);
    v9(v6);

    os_unfair_lock_unlock(&self->_syncLock);
    if (metrics)
    {
      *metrics = v15[5];
    }

    v5 = v21[5];
    _Block_object_dispose(&v14, 8);

    _Block_object_dispose(&v20, 8);
  }

  return v5;
}

void __60__PTPassiveTraceConfig_fetchCollectLoggingPerfPowerMetrics___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  v2 = [*(a1 + 32) syncRemoteProxy];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__PTPassiveTraceConfig_fetchCollectLoggingPerfPowerMetrics___block_invoke_2;
  v12[3] = &unk_279A18DC0;
  v12[4] = &v23;
  v12[5] = &v13;
  v12[6] = &v19;
  [v2 getCollectLoggingPerfPowerMetrics:v12];

  if (v20[3])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v14[5]);
  }

  else
  {
    v3 = [*(a1 + 32) proxyError];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    [*(a1 + 32) setProxyError:0];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithBool:*(v24 + 24)];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = _clientPassiveHandle();
  if (os_signpost_enabled(v9))
  {
    v10 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 138543362;
    v28 = v10;
    _os_signpost_emit_with_name_impl(&dword_25E3D3000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FetchLoggingPerfPowerMetrics", "Value: %{public}@", buf, 0xCu);
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  v11 = *MEMORY[0x277D85DE8];
}

void __60__PTPassiveTraceConfig_fetchCollectLoggingPerfPowerMetrics___block_invoke_2(void *a1, char a2)
{
  *(*(a1[4] + 8) + 24) = a2;
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  *(*(a1[6] + 8) + 24) = 1;
}

- (id)updateCollectLoggingPerfPowerMetrics:(id)metrics
{
  metricsCopy = metrics;
  if ([(PTPassiveTraceConfig *)self connectionInvalidated])
  {
    v5 = [MEMORY[0x277CCA9B8] passiveTraceError:4 description:@"Client process could not establish connection to the backing mach service"];
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v9 = __61__PTPassiveTraceConfig_updateCollectLoggingPerfPowerMetrics___block_invoke;
    v10 = &unk_279A18DE8;
    v11 = metricsCopy;
    selfCopy = self;
    v13 = &v14;
    v6 = v8;
    os_unfair_lock_lock(&self->_syncLock);
    v9(v6);

    os_unfair_lock_unlock(&self->_syncLock);
    v5 = v15[5];

    _Block_object_dispose(&v14, 8);
  }

  return v5;
}

void __61__PTPassiveTraceConfig_updateCollectLoggingPerfPowerMetrics___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = 0;
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    v4 = [v2 syncRemoteProxy];
    v5 = [*(a1 + 32) BOOLValue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __61__PTPassiveTraceConfig_updateCollectLoggingPerfPowerMetrics___block_invoke_2;
    v13[3] = &unk_279A18D70;
    v13[4] = &v14;
    v13[5] = &v20;
    [v4 setCollectLoggingPerfPowerMetrics:v5 callback:v13];
  }

  else
  {
    v4 = [v2 syncRemoteProxy];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __61__PTPassiveTraceConfig_updateCollectLoggingPerfPowerMetrics___block_invoke_3;
    v12[3] = &unk_279A18D70;
    v12[4] = &v14;
    v12[5] = &v20;
    [v4 resetCollectLoggingPerfPowerMetrics:v12];
  }

  if (v21[3])
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v15[5]);
  }

  else
  {
    v6 = [*(a1 + 40) proxyError];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    [*(a1 + 40) setProxyError:0];
  }

  v9 = _clientPassiveHandle();
  if (os_signpost_enabled(v9))
  {
    v10 = *(a1 + 32);
    *buf = 138543362;
    v25 = v10;
    _os_signpost_emit_with_name_impl(&dword_25E3D3000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UpdateLoggingPerfPowerMetrics", "Value: %{public}@", buf, 0xCu);
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
  v11 = *MEMORY[0x277D85DE8];
}

void __61__PTPassiveTraceConfig_updateCollectLoggingPerfPowerMetrics___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

void __61__PTPassiveTraceConfig_updateCollectLoggingPerfPowerMetrics___block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

- (id)fetchCollectLoggingHangs:(id *)hangs
{
  if ([(PTPassiveTraceConfig *)self connectionInvalidated])
  {
    [MEMORY[0x277CCA9B8] passiveTraceError:4 description:@"Client process could not establish connection to the backing mach service"];
    *hangs = v5 = 0;
  }

  else
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__0;
    v24 = __Block_byref_object_dispose__0;
    v25 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    if (hangs)
    {
      *hangs = 0;
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v9 = __49__PTPassiveTraceConfig_fetchCollectLoggingHangs___block_invoke;
    v10 = &unk_279A18D98;
    selfCopy = self;
    v12 = &v14;
    v13 = &v20;
    v6 = v8;
    os_unfair_lock_lock(&self->_syncLock);
    v9(v6);

    os_unfair_lock_unlock(&self->_syncLock);
    if (hangs)
    {
      *hangs = v15[5];
    }

    v5 = v21[5];
    _Block_object_dispose(&v14, 8);

    _Block_object_dispose(&v20, 8);
  }

  return v5;
}

void __49__PTPassiveTraceConfig_fetchCollectLoggingHangs___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  v2 = [*(a1 + 32) syncRemoteProxy];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __49__PTPassiveTraceConfig_fetchCollectLoggingHangs___block_invoke_2;
  v12[3] = &unk_279A18DC0;
  v12[4] = &v23;
  v12[5] = &v13;
  v12[6] = &v19;
  [v2 getCollectLoggingHangs:v12];

  if (v20[3])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v14[5]);
  }

  else
  {
    v3 = [*(a1 + 32) proxyError];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    [*(a1 + 32) setProxyError:0];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithBool:*(v24 + 24)];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = _clientPassiveHandle();
  if (os_signpost_enabled(v9))
  {
    v10 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 138543362;
    v28 = v10;
    _os_signpost_emit_with_name_impl(&dword_25E3D3000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FetchLoggingHangs", "Value: %{public}@", buf, 0xCu);
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  v11 = *MEMORY[0x277D85DE8];
}

void __49__PTPassiveTraceConfig_fetchCollectLoggingHangs___block_invoke_2(void *a1, char a2)
{
  *(*(a1[4] + 8) + 24) = a2;
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  *(*(a1[6] + 8) + 24) = 1;
}

- (id)updateCollectLoggingHangs:(id)hangs
{
  hangsCopy = hangs;
  if ([(PTPassiveTraceConfig *)self connectionInvalidated])
  {
    v5 = [MEMORY[0x277CCA9B8] passiveTraceError:4 description:@"Client process could not establish connection to the backing mach service"];
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v9 = __50__PTPassiveTraceConfig_updateCollectLoggingHangs___block_invoke;
    v10 = &unk_279A18DE8;
    v11 = hangsCopy;
    selfCopy = self;
    v13 = &v14;
    v6 = v8;
    os_unfair_lock_lock(&self->_syncLock);
    v9(v6);

    os_unfair_lock_unlock(&self->_syncLock);
    v5 = v15[5];

    _Block_object_dispose(&v14, 8);
  }

  return v5;
}

void __50__PTPassiveTraceConfig_updateCollectLoggingHangs___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = 0;
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    v4 = [v2 syncRemoteProxy];
    v5 = [*(a1 + 32) BOOLValue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __50__PTPassiveTraceConfig_updateCollectLoggingHangs___block_invoke_2;
    v13[3] = &unk_279A18D70;
    v13[4] = &v14;
    v13[5] = &v20;
    [v4 setCollectLoggingHangs:v5 callback:v13];
  }

  else
  {
    v4 = [v2 syncRemoteProxy];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __50__PTPassiveTraceConfig_updateCollectLoggingHangs___block_invoke_3;
    v12[3] = &unk_279A18D70;
    v12[4] = &v14;
    v12[5] = &v20;
    [v4 resetCollectLoggingHangs:v12];
  }

  if (v21[3])
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v15[5]);
  }

  else
  {
    v6 = [*(a1 + 40) proxyError];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    [*(a1 + 40) setProxyError:0];
  }

  v9 = _clientPassiveHandle();
  if (os_signpost_enabled(v9))
  {
    v10 = *(a1 + 32);
    *buf = 138543362;
    v25 = v10;
    _os_signpost_emit_with_name_impl(&dword_25E3D3000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UpdateLoggingHangs", "Value: %{public}@", buf, 0xCu);
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
  v11 = *MEMORY[0x277D85DE8];
}

void __50__PTPassiveTraceConfig_updateCollectLoggingHangs___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

void __50__PTPassiveTraceConfig_updateCollectLoggingHangs___block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

- (id)fetchCollectLoggingUserInteraction:(id *)interaction
{
  if ([(PTPassiveTraceConfig *)self connectionInvalidated])
  {
    [MEMORY[0x277CCA9B8] passiveTraceError:4 description:@"Client process could not establish connection to the backing mach service"];
    *interaction = v5 = 0;
  }

  else
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__0;
    v24 = __Block_byref_object_dispose__0;
    v25 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    if (interaction)
    {
      *interaction = 0;
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v9 = __59__PTPassiveTraceConfig_fetchCollectLoggingUserInteraction___block_invoke;
    v10 = &unk_279A18D98;
    selfCopy = self;
    v12 = &v14;
    v13 = &v20;
    v6 = v8;
    os_unfair_lock_lock(&self->_syncLock);
    v9(v6);

    os_unfair_lock_unlock(&self->_syncLock);
    if (interaction)
    {
      *interaction = v15[5];
    }

    v5 = v21[5];
    _Block_object_dispose(&v14, 8);

    _Block_object_dispose(&v20, 8);
  }

  return v5;
}

void __59__PTPassiveTraceConfig_fetchCollectLoggingUserInteraction___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  v2 = [*(a1 + 32) syncRemoteProxy];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__PTPassiveTraceConfig_fetchCollectLoggingUserInteraction___block_invoke_2;
  v12[3] = &unk_279A18DC0;
  v12[4] = &v23;
  v12[5] = &v13;
  v12[6] = &v19;
  [v2 getCollectLoggingUserInteraction:v12];

  if (v20[3])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v14[5]);
  }

  else
  {
    v3 = [*(a1 + 32) proxyError];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    [*(a1 + 32) setProxyError:0];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithBool:*(v24 + 24)];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = _clientPassiveHandle();
  if (os_signpost_enabled(v9))
  {
    v10 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 138543362;
    v28 = v10;
    _os_signpost_emit_with_name_impl(&dword_25E3D3000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FetchLoggingUserInteraction", "Value: %{public}@", buf, 0xCu);
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  v11 = *MEMORY[0x277D85DE8];
}

void __59__PTPassiveTraceConfig_fetchCollectLoggingUserInteraction___block_invoke_2(void *a1, char a2)
{
  *(*(a1[4] + 8) + 24) = a2;
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  *(*(a1[6] + 8) + 24) = 1;
}

- (id)updateCollectLoggingUserInteraction:(id)interaction
{
  interactionCopy = interaction;
  if ([(PTPassiveTraceConfig *)self connectionInvalidated])
  {
    v5 = [MEMORY[0x277CCA9B8] passiveTraceError:4 description:@"Client process could not establish connection to the backing mach service"];
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v9 = __60__PTPassiveTraceConfig_updateCollectLoggingUserInteraction___block_invoke;
    v10 = &unk_279A18DE8;
    v11 = interactionCopy;
    selfCopy = self;
    v13 = &v14;
    v6 = v8;
    os_unfair_lock_lock(&self->_syncLock);
    v9(v6);

    os_unfair_lock_unlock(&self->_syncLock);
    v5 = v15[5];

    _Block_object_dispose(&v14, 8);
  }

  return v5;
}

void __60__PTPassiveTraceConfig_updateCollectLoggingUserInteraction___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = 0;
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    v4 = [v2 syncRemoteProxy];
    v5 = [*(a1 + 32) BOOLValue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __60__PTPassiveTraceConfig_updateCollectLoggingUserInteraction___block_invoke_2;
    v13[3] = &unk_279A18D70;
    v13[4] = &v14;
    v13[5] = &v20;
    [v4 setCollectLoggingUserInteraction:v5 callback:v13];
  }

  else
  {
    v4 = [v2 syncRemoteProxy];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __60__PTPassiveTraceConfig_updateCollectLoggingUserInteraction___block_invoke_3;
    v12[3] = &unk_279A18D70;
    v12[4] = &v14;
    v12[5] = &v20;
    [v4 resetCollectLoggingUserInteraction:v12];
  }

  if (v21[3])
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v15[5]);
  }

  else
  {
    v6 = [*(a1 + 40) proxyError];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    [*(a1 + 40) setProxyError:0];
  }

  v9 = _clientPassiveHandle();
  if (os_signpost_enabled(v9))
  {
    v10 = *(a1 + 32);
    *buf = 138543362;
    v25 = v10;
    _os_signpost_emit_with_name_impl(&dword_25E3D3000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UpdateLoggingUserInteraction", "Value: %{public}@", buf, 0xCu);
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
  v11 = *MEMORY[0x277D85DE8];
}

void __60__PTPassiveTraceConfig_updateCollectLoggingUserInteraction___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

void __60__PTPassiveTraceConfig_updateCollectLoggingUserInteraction___block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

- (id)fetchCollectLoggingMetalFramePacing:(id *)pacing
{
  if ([(PTPassiveTraceConfig *)self connectionInvalidated])
  {
    [MEMORY[0x277CCA9B8] passiveTraceError:4 description:@"Client process could not establish connection to the backing mach service"];
    *pacing = v5 = 0;
  }

  else
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__0;
    v24 = __Block_byref_object_dispose__0;
    v25 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    if (pacing)
    {
      *pacing = 0;
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v9 = __60__PTPassiveTraceConfig_fetchCollectLoggingMetalFramePacing___block_invoke;
    v10 = &unk_279A18D98;
    selfCopy = self;
    v12 = &v14;
    v13 = &v20;
    v6 = v8;
    os_unfair_lock_lock(&self->_syncLock);
    v9(v6);

    os_unfair_lock_unlock(&self->_syncLock);
    if (pacing)
    {
      *pacing = v15[5];
    }

    v5 = v21[5];
    _Block_object_dispose(&v14, 8);

    _Block_object_dispose(&v20, 8);
  }

  return v5;
}

void __60__PTPassiveTraceConfig_fetchCollectLoggingMetalFramePacing___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  v2 = [*(a1 + 32) syncRemoteProxy];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__PTPassiveTraceConfig_fetchCollectLoggingMetalFramePacing___block_invoke_2;
  v12[3] = &unk_279A18DC0;
  v12[4] = &v23;
  v12[5] = &v13;
  v12[6] = &v19;
  [v2 getCollectLoggingMetalFramePacing:v12];

  if (v20[3])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v14[5]);
  }

  else
  {
    v3 = [*(a1 + 32) proxyError];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    [*(a1 + 32) setProxyError:0];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithBool:*(v24 + 24)];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = _clientPassiveHandle();
  if (os_signpost_enabled(v9))
  {
    v10 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 138543362;
    v28 = v10;
    _os_signpost_emit_with_name_impl(&dword_25E3D3000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FetchLoggingMetalFramePacing", "Value: %{public}@", buf, 0xCu);
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  v11 = *MEMORY[0x277D85DE8];
}

void __60__PTPassiveTraceConfig_fetchCollectLoggingMetalFramePacing___block_invoke_2(void *a1, char a2)
{
  *(*(a1[4] + 8) + 24) = a2;
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  *(*(a1[6] + 8) + 24) = 1;
}

- (id)updateCollectLoggingMetalFramePacing:(id)pacing
{
  pacingCopy = pacing;
  if ([(PTPassiveTraceConfig *)self connectionInvalidated])
  {
    v5 = [MEMORY[0x277CCA9B8] passiveTraceError:4 description:@"Client process could not establish connection to the backing mach service"];
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v9 = __61__PTPassiveTraceConfig_updateCollectLoggingMetalFramePacing___block_invoke;
    v10 = &unk_279A18DE8;
    v11 = pacingCopy;
    selfCopy = self;
    v13 = &v14;
    v6 = v8;
    os_unfair_lock_lock(&self->_syncLock);
    v9(v6);

    os_unfair_lock_unlock(&self->_syncLock);
    v5 = v15[5];

    _Block_object_dispose(&v14, 8);
  }

  return v5;
}

void __61__PTPassiveTraceConfig_updateCollectLoggingMetalFramePacing___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = 0;
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    v4 = [v2 syncRemoteProxy];
    v5 = [*(a1 + 32) BOOLValue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __61__PTPassiveTraceConfig_updateCollectLoggingMetalFramePacing___block_invoke_2;
    v13[3] = &unk_279A18D70;
    v13[4] = &v14;
    v13[5] = &v20;
    [v4 setCollectLoggingMetalFramePacing:v5 callback:v13];
  }

  else
  {
    v4 = [v2 syncRemoteProxy];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __61__PTPassiveTraceConfig_updateCollectLoggingMetalFramePacing___block_invoke_3;
    v12[3] = &unk_279A18D70;
    v12[4] = &v14;
    v12[5] = &v20;
    [v4 resetCollectLoggingMetalFramePacing:v12];
  }

  if (v21[3])
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v15[5]);
  }

  else
  {
    v6 = [*(a1 + 40) proxyError];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    [*(a1 + 40) setProxyError:0];
  }

  v9 = _clientPassiveHandle();
  if (os_signpost_enabled(v9))
  {
    v10 = *(a1 + 32);
    *buf = 138543362;
    v25 = v10;
    _os_signpost_emit_with_name_impl(&dword_25E3D3000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UpdateLoggingMetalFramePacing", "Value: %{public}@", buf, 0xCu);
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
  v11 = *MEMORY[0x277D85DE8];
}

void __61__PTPassiveTraceConfig_updateCollectLoggingMetalFramePacing___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

void __61__PTPassiveTraceConfig_updateCollectLoggingMetalFramePacing___block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

- (id)fetchCollectLoggingScrolling:(id *)scrolling
{
  if ([(PTPassiveTraceConfig *)self connectionInvalidated])
  {
    [MEMORY[0x277CCA9B8] passiveTraceError:4 description:@"Client process could not establish connection to the backing mach service"];
    *scrolling = v5 = 0;
  }

  else
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__0;
    v24 = __Block_byref_object_dispose__0;
    v25 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    if (scrolling)
    {
      *scrolling = 0;
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v9 = __53__PTPassiveTraceConfig_fetchCollectLoggingScrolling___block_invoke;
    v10 = &unk_279A18D98;
    selfCopy = self;
    v12 = &v14;
    v13 = &v20;
    v6 = v8;
    os_unfair_lock_lock(&self->_syncLock);
    v9(v6);

    os_unfair_lock_unlock(&self->_syncLock);
    if (scrolling)
    {
      *scrolling = v15[5];
    }

    v5 = v21[5];
    _Block_object_dispose(&v14, 8);

    _Block_object_dispose(&v20, 8);
  }

  return v5;
}

void __53__PTPassiveTraceConfig_fetchCollectLoggingScrolling___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  v2 = [*(a1 + 32) syncRemoteProxy];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__PTPassiveTraceConfig_fetchCollectLoggingScrolling___block_invoke_2;
  v12[3] = &unk_279A18DC0;
  v12[4] = &v23;
  v12[5] = &v13;
  v12[6] = &v19;
  [v2 getCollectLoggingScrolling:v12];

  if (v20[3])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v14[5]);
  }

  else
  {
    v3 = [*(a1 + 32) proxyError];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    [*(a1 + 32) setProxyError:0];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithBool:*(v24 + 24)];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = _clientPassiveHandle();
  if (os_signpost_enabled(v9))
  {
    v10 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 138543362;
    v28 = v10;
    _os_signpost_emit_with_name_impl(&dword_25E3D3000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FetchLoggingScrolling", "Value: %{public}@", buf, 0xCu);
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  v11 = *MEMORY[0x277D85DE8];
}

void __53__PTPassiveTraceConfig_fetchCollectLoggingScrolling___block_invoke_2(void *a1, char a2)
{
  *(*(a1[4] + 8) + 24) = a2;
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  *(*(a1[6] + 8) + 24) = 1;
}

- (id)updateCollectLoggingScrolling:(id)scrolling
{
  scrollingCopy = scrolling;
  if ([(PTPassiveTraceConfig *)self connectionInvalidated])
  {
    v5 = [MEMORY[0x277CCA9B8] passiveTraceError:4 description:@"Client process could not establish connection to the backing mach service"];
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v9 = __54__PTPassiveTraceConfig_updateCollectLoggingScrolling___block_invoke;
    v10 = &unk_279A18DE8;
    v11 = scrollingCopy;
    selfCopy = self;
    v13 = &v14;
    v6 = v8;
    os_unfair_lock_lock(&self->_syncLock);
    v9(v6);

    os_unfair_lock_unlock(&self->_syncLock);
    v5 = v15[5];

    _Block_object_dispose(&v14, 8);
  }

  return v5;
}

void __54__PTPassiveTraceConfig_updateCollectLoggingScrolling___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = 0;
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    v4 = [v2 syncRemoteProxy];
    v5 = [*(a1 + 32) BOOLValue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __54__PTPassiveTraceConfig_updateCollectLoggingScrolling___block_invoke_2;
    v13[3] = &unk_279A18D70;
    v13[4] = &v14;
    v13[5] = &v20;
    [v4 setCollectLoggingScrolling:v5 callback:v13];
  }

  else
  {
    v4 = [v2 syncRemoteProxy];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __54__PTPassiveTraceConfig_updateCollectLoggingScrolling___block_invoke_3;
    v12[3] = &unk_279A18D70;
    v12[4] = &v14;
    v12[5] = &v20;
    [v4 resetCollectLoggingScrolling:v12];
  }

  if (v21[3])
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v15[5]);
  }

  else
  {
    v6 = [*(a1 + 40) proxyError];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    [*(a1 + 40) setProxyError:0];
  }

  v9 = _clientPassiveHandle();
  if (os_signpost_enabled(v9))
  {
    v10 = *(a1 + 32);
    *buf = 138543362;
    v25 = v10;
    _os_signpost_emit_with_name_impl(&dword_25E3D3000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UpdateLoggingScrolling", "Value: %{public}@", buf, 0xCu);
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
  v11 = *MEMORY[0x277D85DE8];
}

void __54__PTPassiveTraceConfig_updateCollectLoggingScrolling___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

void __54__PTPassiveTraceConfig_updateCollectLoggingScrolling___block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

- (id)fetchCollectLoggingAppLaunch:(id *)launch
{
  if ([(PTPassiveTraceConfig *)self connectionInvalidated])
  {
    [MEMORY[0x277CCA9B8] passiveTraceError:4 description:@"Client process could not establish connection to the backing mach service"];
    *launch = v5 = 0;
  }

  else
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__0;
    v24 = __Block_byref_object_dispose__0;
    v25 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    if (launch)
    {
      *launch = 0;
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v9 = __53__PTPassiveTraceConfig_fetchCollectLoggingAppLaunch___block_invoke;
    v10 = &unk_279A18D98;
    selfCopy = self;
    v12 = &v14;
    v13 = &v20;
    v6 = v8;
    os_unfair_lock_lock(&self->_syncLock);
    v9(v6);

    os_unfair_lock_unlock(&self->_syncLock);
    if (launch)
    {
      *launch = v15[5];
    }

    v5 = v21[5];
    _Block_object_dispose(&v14, 8);

    _Block_object_dispose(&v20, 8);
  }

  return v5;
}

void __53__PTPassiveTraceConfig_fetchCollectLoggingAppLaunch___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  v2 = [*(a1 + 32) syncRemoteProxy];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__PTPassiveTraceConfig_fetchCollectLoggingAppLaunch___block_invoke_2;
  v12[3] = &unk_279A18DC0;
  v12[4] = &v23;
  v12[5] = &v13;
  v12[6] = &v19;
  [v2 getCollectLoggingAppLaunch:v12];

  if (v20[3])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v14[5]);
  }

  else
  {
    v3 = [*(a1 + 32) proxyError];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    [*(a1 + 32) setProxyError:0];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithBool:*(v24 + 24)];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = _clientPassiveHandle();
  if (os_signpost_enabled(v9))
  {
    v10 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 138543362;
    v28 = v10;
    _os_signpost_emit_with_name_impl(&dword_25E3D3000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FetchLoggingAppLaunch", "Value: %{public}@", buf, 0xCu);
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  v11 = *MEMORY[0x277D85DE8];
}

void __53__PTPassiveTraceConfig_fetchCollectLoggingAppLaunch___block_invoke_2(void *a1, char a2)
{
  *(*(a1[4] + 8) + 24) = a2;
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  *(*(a1[6] + 8) + 24) = 1;
}

- (id)updateCollectLoggingAppLaunch:(id)launch
{
  launchCopy = launch;
  if ([(PTPassiveTraceConfig *)self connectionInvalidated])
  {
    v5 = [MEMORY[0x277CCA9B8] passiveTraceError:4 description:@"Client process could not establish connection to the backing mach service"];
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v9 = __54__PTPassiveTraceConfig_updateCollectLoggingAppLaunch___block_invoke;
    v10 = &unk_279A18DE8;
    v11 = launchCopy;
    selfCopy = self;
    v13 = &v14;
    v6 = v8;
    os_unfair_lock_lock(&self->_syncLock);
    v9(v6);

    os_unfair_lock_unlock(&self->_syncLock);
    v5 = v15[5];

    _Block_object_dispose(&v14, 8);
  }

  return v5;
}

void __54__PTPassiveTraceConfig_updateCollectLoggingAppLaunch___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = 0;
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    v4 = [v2 syncRemoteProxy];
    v5 = [*(a1 + 32) BOOLValue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __54__PTPassiveTraceConfig_updateCollectLoggingAppLaunch___block_invoke_2;
    v13[3] = &unk_279A18D70;
    v13[4] = &v14;
    v13[5] = &v20;
    [v4 setCollectLoggingAppLaunch:v5 callback:v13];
  }

  else
  {
    v4 = [v2 syncRemoteProxy];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __54__PTPassiveTraceConfig_updateCollectLoggingAppLaunch___block_invoke_3;
    v12[3] = &unk_279A18D70;
    v12[4] = &v14;
    v12[5] = &v20;
    [v4 resetCollectLoggingAppLaunch:v12];
  }

  if (v21[3])
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v15[5]);
  }

  else
  {
    v6 = [*(a1 + 40) proxyError];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    [*(a1 + 40) setProxyError:0];
  }

  v9 = _clientPassiveHandle();
  if (os_signpost_enabled(v9))
  {
    v10 = *(a1 + 32);
    *buf = 138543362;
    v25 = v10;
    _os_signpost_emit_with_name_impl(&dword_25E3D3000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UpdateLoggingAppLaunch", "Value: %{public}@", buf, 0xCu);
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
  v11 = *MEMORY[0x277D85DE8];
}

void __54__PTPassiveTraceConfig_updateCollectLoggingAppLaunch___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

void __54__PTPassiveTraceConfig_updateCollectLoggingAppLaunch___block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

- (id)fetchCollectLookbackInterval:(id *)interval
{
  if ([(PTPassiveTraceConfig *)self connectionInvalidated])
  {
    [MEMORY[0x277CCA9B8] passiveTraceError:4 description:@"Client process could not establish connection to the backing mach service"];
    *interval = v5 = 0;
  }

  else
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__0;
    v24 = __Block_byref_object_dispose__0;
    v25 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    if (interval)
    {
      *interval = 0;
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v9 = __53__PTPassiveTraceConfig_fetchCollectLookbackInterval___block_invoke;
    v10 = &unk_279A18D98;
    selfCopy = self;
    v12 = &v14;
    v13 = &v20;
    v6 = v8;
    os_unfair_lock_lock(&self->_syncLock);
    v9(v6);

    os_unfair_lock_unlock(&self->_syncLock);
    if (interval)
    {
      *interval = v15[5];
    }

    v5 = v21[5];
    _Block_object_dispose(&v14, 8);

    _Block_object_dispose(&v20, 8);
  }

  return v5;
}

void __53__PTPassiveTraceConfig_fetchCollectLookbackInterval___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  v2 = [*(a1 + 32) syncRemoteProxy];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__PTPassiveTraceConfig_fetchCollectLookbackInterval___block_invoke_2;
  v12[3] = &unk_279A18E10;
  v12[4] = &v23;
  v12[5] = &v13;
  v12[6] = &v19;
  [v2 getCollectLookbackInterval:v12];

  if (v20[3])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v14[5]);
  }

  else
  {
    v3 = [*(a1 + 32) proxyError];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    [*(a1 + 32) setProxyError:0];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:v24[3]];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = _clientPassiveHandle();
  if (os_signpost_enabled(v9))
  {
    v10 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 138543362;
    v28 = v10;
    _os_signpost_emit_with_name_impl(&dword_25E3D3000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FetchLookbackInterval", "Value: %{public}@", buf, 0xCu);
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  v11 = *MEMORY[0x277D85DE8];
}

void __53__PTPassiveTraceConfig_fetchCollectLookbackInterval___block_invoke_2(void *a1, double a2)
{
  *(*(a1[4] + 8) + 24) = a2;
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  *(*(a1[6] + 8) + 24) = 1;
}

- (id)updateCollectLookbackInterval:(id)interval
{
  intervalCopy = interval;
  if ([(PTPassiveTraceConfig *)self connectionInvalidated])
  {
    v5 = [MEMORY[0x277CCA9B8] passiveTraceError:4 description:@"Client process could not establish connection to the backing mach service"];
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v9 = __54__PTPassiveTraceConfig_updateCollectLookbackInterval___block_invoke;
    v10 = &unk_279A18DE8;
    v11 = intervalCopy;
    selfCopy = self;
    v13 = &v14;
    v6 = v8;
    os_unfair_lock_lock(&self->_syncLock);
    v9(v6);

    os_unfair_lock_unlock(&self->_syncLock);
    v5 = v15[5];

    _Block_object_dispose(&v14, 8);
  }

  return v5;
}

void __54__PTPassiveTraceConfig_updateCollectLookbackInterval___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    v4 = [v2 syncRemoteProxy];
    [*(a1 + 32) doubleValue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __54__PTPassiveTraceConfig_updateCollectLookbackInterval___block_invoke_2;
    v12[3] = &unk_279A18D70;
    v12[4] = &v13;
    v12[5] = &v19;
    [v4 setCollectLookbackInterval:v12 callback:?];
  }

  else
  {
    v4 = [v2 syncRemoteProxy];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __54__PTPassiveTraceConfig_updateCollectLookbackInterval___block_invoke_3;
    v11[3] = &unk_279A18D70;
    v11[4] = &v13;
    v11[5] = &v19;
    [v4 resetCollectLookbackInterval:v11];
  }

  if (v20[3])
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v14[5]);
  }

  else
  {
    v5 = [*(a1 + 40) proxyError];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    [*(a1 + 40) setProxyError:0];
  }

  v8 = _clientPassiveHandle();
  if (os_signpost_enabled(v8))
  {
    v9 = *(a1 + 32);
    *buf = 138543362;
    v24 = v9;
    _os_signpost_emit_with_name_impl(&dword_25E3D3000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UpdateLookbackInterval", "Value: %{public}@", buf, 0xCu);
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  v10 = *MEMORY[0x277D85DE8];
}

void __54__PTPassiveTraceConfig_updateCollectLookbackInterval___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

void __54__PTPassiveTraceConfig_updateCollectLookbackInterval___block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

- (id)collectWithStartDate:(id)date endDate:(id)endDate traceNamePrefix:(id)prefix triggerUserNotification:(BOOL)notification errorOut:(id *)out
{
  dateCopy = date;
  endDateCopy = endDate;
  prefixCopy = prefix;
  if ([(PTPassiveTraceConfig *)self connectionInvalidated])
  {
    [MEMORY[0x277CCA9B8] passiveTraceError:4 description:@"Client process could not establish connection to the backing mach service"];
    *out = v15 = 0;
  }

  else
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__0;
    v38 = __Block_byref_object_dispose__0;
    v39 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__0;
    v32 = __Block_byref_object_dispose__0;
    v33 = 0;
    if (out)
    {
      *out = 0;
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v19 = __102__PTPassiveTraceConfig_collectWithStartDate_endDate_traceNamePrefix_triggerUserNotification_errorOut___block_invoke;
    v20 = &unk_279A18E60;
    selfCopy = self;
    v22 = dateCopy;
    v23 = endDateCopy;
    notificationCopy = notification;
    v24 = prefixCopy;
    v25 = &v28;
    v26 = &v34;
    v16 = v18;
    os_unfair_lock_lock(&self->_syncLock);
    v19(v16);

    os_unfair_lock_unlock(&self->_syncLock);
    if (out)
    {
      *out = v29[5];
    }

    v15 = v35[5];

    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(&v34, 8);
  }

  return v15;
}

void __102__PTPassiveTraceConfig_collectWithStartDate_endDate_traceNamePrefix_triggerUserNotification_errorOut___block_invoke(uint64_t a1)
{
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__0;
  v35 = __Block_byref_object_dispose__0;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__0;
  v29 = __Block_byref_object_dispose__0;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__0;
  v19 = __Block_byref_object_dispose__0;
  v20 = 0;
  v2 = [*(a1 + 32) syncRemoteProxy];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 80);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __102__PTPassiveTraceConfig_collectWithStartDate_endDate_traceNamePrefix_triggerUserNotification_errorOut___block_invoke_2;
  v14[3] = &unk_279A18E38;
  v14[4] = &v31;
  v14[5] = &v25;
  v14[6] = &v15;
  v14[7] = &v21;
  [v2 collectWithStartDate:v3 endDate:v4 traceNamePrefix:v5 triggerUserNotification:v6 callback:v14];

  if (v22[3])
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v16[5]);
  }

  else
  {
    v7 = [*(a1 + 32) proxyError];
    v8 = *(*(a1 + 64) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    [*(a1 + 32) setProxyError:0];
  }

  if (v32[5] && v26[5])
  {
    v10 = [PTPassiveTraceArchiveHandle alloc];
    v11 = [(PTPassiveTraceArchiveHandle *)v10 initWithAarPath:v32[5] sandboxExtension:v26[5]];
    v12 = *(*(a1 + 72) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);
}

void __102__PTPassiveTraceConfig_collectWithStartDate_endDate_traceNamePrefix_triggerUserNotification_errorOut___block_invoke_2(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1[4] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v18 = v7;

  v12 = *(a1[5] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  v15 = *(a1[6] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
  v17 = v9;

  *(*(a1[7] + 8) + 24) = 1;
}

- (id)pingService:(id)service errorOut:(id *)out
{
  serviceCopy = service;
  if ([(PTPassiveTraceConfig *)self connectionInvalidated])
  {
    [MEMORY[0x277CCA9B8] passiveTraceError:4 description:@"Client process could not establish connection to the backing mach service"];
    *out = v7 = 0;
  }

  else
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__0;
    v27 = __Block_byref_object_dispose__0;
    v28 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__0;
    v21 = __Block_byref_object_dispose__0;
    v22 = 0;
    if (out)
    {
      *out = 0;
    }

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v11 = __45__PTPassiveTraceConfig_pingService_errorOut___block_invoke;
    v12 = &unk_279A18EB0;
    selfCopy = self;
    v14 = serviceCopy;
    v15 = &v17;
    v16 = &v23;
    v8 = v10;
    os_unfair_lock_lock(&self->_syncLock);
    v11(v8);

    os_unfair_lock_unlock(&self->_syncLock);
    if (out)
    {
      *out = v18[5];
    }

    v7 = v24[5];

    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v23, 8);
  }

  return v7;
}

void __45__PTPassiveTraceConfig_pingService_errorOut___block_invoke(uint64_t a1)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__0;
  v24 = __Block_byref_object_dispose__0;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  v2 = [*(a1 + 32) syncRemoteProxy];
  v3 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__PTPassiveTraceConfig_pingService_errorOut___block_invoke_2;
  v9[3] = &unk_279A18E88;
  v9[4] = &v20;
  v9[5] = &v10;
  v9[6] = &v16;
  [v2 pingService:v3 callback:v9];

  if (v17[3])
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v11[5]);
  }

  else
  {
    v4 = [*(a1 + 32) proxyError];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    [*(a1 + 32) setProxyError:0];
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v21[5]);
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
}

void __45__PTPassiveTraceConfig_pingService_errorOut___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1[4] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  *(*(a1[6] + 8) + 24) = 1;
}

- (id)fetchRecordingStartDate:(id *)date
{
  if ([(PTPassiveTraceConfig *)self connectionInvalidated])
  {
    [MEMORY[0x277CCA9B8] passiveTraceError:4 description:@"Client process could not establish connection to the backing mach service"];
    *date = v5 = 0;
  }

  else
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__0;
    v24 = __Block_byref_object_dispose__0;
    v25 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    if (date)
    {
      *date = 0;
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v9 = __48__PTPassiveTraceConfig_fetchRecordingStartDate___block_invoke;
    v10 = &unk_279A18D98;
    selfCopy = self;
    v12 = &v14;
    v13 = &v20;
    v6 = v8;
    os_unfair_lock_lock(&self->_syncLock);
    v9(v6);

    os_unfair_lock_unlock(&self->_syncLock);
    if (date)
    {
      *date = v15[5];
    }

    v5 = v21[5];
    _Block_object_dispose(&v14, 8);

    _Block_object_dispose(&v20, 8);
  }

  return v5;
}

void __48__PTPassiveTraceConfig_fetchRecordingStartDate___block_invoke(uint64_t a1)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v2 = [*(a1 + 32) syncRemoteProxy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__PTPassiveTraceConfig_fetchRecordingStartDate___block_invoke_2;
  v8[3] = &unk_279A18ED8;
  v8[4] = &v13;
  v8[5] = &v9;
  [v2 getImitationRecordStartDate:v8];

  if (v10[3])
  {
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }

  else
  {
    v5 = [*(a1 + 32) proxyError];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    [*(a1 + 32) setProxyError:0];
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v14[5]);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
}

void __48__PTPassiveTraceConfig_fetchRecordingStartDate___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

- (id)updateRecordingStartDate:(id)date
{
  dateCopy = date;
  if ([(PTPassiveTraceConfig *)self connectionInvalidated])
  {
    v5 = [MEMORY[0x277CCA9B8] passiveTraceError:4 description:@"Client process could not establish connection to the backing mach service"];
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v9 = __49__PTPassiveTraceConfig_updateRecordingStartDate___block_invoke;
    v10 = &unk_279A18DE8;
    selfCopy = self;
    v12 = dateCopy;
    v13 = &v14;
    v6 = v8;
    os_unfair_lock_lock(&self->_syncLock);
    v9(v6);

    os_unfair_lock_unlock(&self->_syncLock);
    v5 = v15[5];

    _Block_object_dispose(&v14, 8);
  }

  return v5;
}

void __49__PTPassiveTraceConfig_updateRecordingStartDate___block_invoke(uint64_t a1)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  v2 = [*(a1 + 32) syncRemoteProxy];
  v3 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__PTPassiveTraceConfig_updateRecordingStartDate___block_invoke_2;
  v7[3] = &unk_279A18D70;
  v7[4] = &v8;
  v7[5] = &v14;
  [v2 setImitationRecordStartDate:v3 callback:v7];

  if (v15[3])
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v9[5]);
  }

  else
  {
    v4 = [*(a1 + 32) proxyError];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    [*(a1 + 32) setProxyError:0];
  }

  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
}

void __49__PTPassiveTraceConfig_updateRecordingStartDate___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

- (id)collectLookbackIntervalWithTraceNamePrefix:(id)prefix triggerUserNotification:(BOOL)notification errorOut:(id *)out
{
  prefixCopy = prefix;
  if ([(PTPassiveTraceConfig *)self connectionInvalidated])
  {
    [MEMORY[0x277CCA9B8] passiveTraceError:4 description:@"Client process could not establish connection to the backing mach service"];
    *out = v9 = 0;
  }

  else
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__0;
    v30 = __Block_byref_object_dispose__0;
    v31 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__0;
    v24 = __Block_byref_object_dispose__0;
    v25 = 0;
    if (out)
    {
      *out = 0;
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v13 = __100__PTPassiveTraceConfig_collectLookbackIntervalWithTraceNamePrefix_triggerUserNotification_errorOut___block_invoke;
    v14 = &unk_279A18F00;
    selfCopy = self;
    notificationCopy = notification;
    v16 = prefixCopy;
    v17 = &v20;
    v18 = &v26;
    v10 = v12;
    os_unfair_lock_lock(&self->_syncLock);
    v13(v10);

    os_unfair_lock_unlock(&self->_syncLock);
    if (out)
    {
      *out = v21[5];
    }

    v9 = v27[5];

    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(&v26, 8);
  }

  return v9;
}

void __100__PTPassiveTraceConfig_collectLookbackIntervalWithTraceNamePrefix_triggerUserNotification_errorOut___block_invoke(uint64_t a1)
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__0;
  v33 = __Block_byref_object_dispose__0;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__0;
  v27 = __Block_byref_object_dispose__0;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  v2 = [*(a1 + 32) syncRemoteProxy];
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __100__PTPassiveTraceConfig_collectLookbackIntervalWithTraceNamePrefix_triggerUserNotification_errorOut___block_invoke_2;
  v12[3] = &unk_279A18E38;
  v12[4] = &v29;
  v12[5] = &v23;
  v12[6] = &v13;
  v12[7] = &v19;
  [v2 collectLookbackIntervalWithTraceNamePrefix:v3 triggerUserNotification:v4 callback:v12];

  if (v20[3])
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v14[5]);
  }

  else
  {
    v5 = [*(a1 + 32) proxyError];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    [*(a1 + 32) setProxyError:0];
  }

  if (v30[5] && v24[5])
  {
    v8 = [PTPassiveTraceArchiveHandle alloc];
    v9 = [(PTPassiveTraceArchiveHandle *)v8 initWithAarPath:v30[5] sandboxExtension:v24[5]];
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  _Block_object_dispose(&v29, 8);
}

void __100__PTPassiveTraceConfig_collectLookbackIntervalWithTraceNamePrefix_triggerUserNotification_errorOut___block_invoke_2(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1[4] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v18 = v7;

  v12 = *(a1[5] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  v15 = *(a1[6] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
  v17 = v9;

  *(*(a1[7] + 8) + 24) = 1;
}

- (id)instrumentationConfigLocked:(id *)locked
{
  if ([(PTPassiveTraceConfig *)self connectionInvalidated])
  {
    [MEMORY[0x277CCA9B8] passiveTraceError:4 description:@"Client process could not establish connection to the backing mach service"];
    *locked = v5 = 0;
  }

  else
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__0;
    v24 = __Block_byref_object_dispose__0;
    v25 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    if (locked)
    {
      *locked = 0;
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v9 = __52__PTPassiveTraceConfig_instrumentationConfigLocked___block_invoke;
    v10 = &unk_279A18D98;
    selfCopy = self;
    v12 = &v14;
    v13 = &v20;
    v6 = v8;
    os_unfair_lock_lock(&self->_syncLock);
    v9(v6);

    os_unfair_lock_unlock(&self->_syncLock);
    if (locked)
    {
      *locked = v15[5];
    }

    v5 = v21[5];
    _Block_object_dispose(&v14, 8);

    _Block_object_dispose(&v20, 8);
  }

  return v5;
}

void __52__PTPassiveTraceConfig_instrumentationConfigLocked___block_invoke(uint64_t a1)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  v2 = [*(a1 + 32) syncRemoteProxy];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__PTPassiveTraceConfig_instrumentationConfigLocked___block_invoke_2;
  v6[3] = &unk_279A18F28;
  v6[4] = &v17;
  v6[5] = &v7;
  v6[6] = &v13;
  [v2 getInstrumentationConfigIsLocked:v6];

  if (v14[3])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8[5]);
  }

  else
  {
    v3 = [*(a1 + 32) proxyError];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    [*(a1 + 32) setProxyError:0];
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v18[5]);
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
}

void __52__PTPassiveTraceConfig_instrumentationConfigLocked___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1[4] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  *(*(a1[6] + 8) + 24) = 1;
}

- (id)applySetting:(unint64_t)setting
{
  if ([(PTPassiveTraceConfig *)self connectionInvalidated])
  {
    v5 = [MEMORY[0x277CCA9B8] passiveTraceError:4 description:@"Client process could not establish connection to the backing mach service"];
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v9 = __37__PTPassiveTraceConfig_applySetting___block_invoke;
    v10 = &unk_279A18F50;
    v12 = &v14;
    settingCopy = setting;
    selfCopy = self;
    v6 = v8;
    os_unfair_lock_lock(&self->_syncLock);
    v9(v6);

    os_unfair_lock_unlock(&self->_syncLock);
    v5 = v15[5];
    _Block_object_dispose(&v14, 8);
  }

  return v5;
}

void __37__PTPassiveTraceConfig_applySetting___block_invoke(uint64_t a1)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  v2 = [*(a1 + 32) syncRemoteProxy];
  v3 = *(a1 + 48) == 1;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__PTPassiveTraceConfig_applySetting___block_invoke_2;
  v7[3] = &unk_279A18D70;
  v7[4] = &v8;
  v7[5] = &v14;
  [v2 applyPresetSettings:v3 callback:v7];

  if (v15[3])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v9[5]);
  }

  else
  {
    v4 = [*(a1 + 32) proxyError];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    [*(a1 + 32) setProxyError:0];
  }

  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
}

void __37__PTPassiveTraceConfig_applySetting___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

- (id)fetchCurrentSetting:(id *)setting
{
  if ([(PTPassiveTraceConfig *)self connectionInvalidated])
  {
    [MEMORY[0x277CCA9B8] passiveTraceError:4 description:@"Client process could not establish connection to the backing mach service"];
    *setting = v5 = 0;
  }

  else
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__0;
    v24 = __Block_byref_object_dispose__0;
    v25 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    if (setting)
    {
      *setting = 0;
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v9 = __44__PTPassiveTraceConfig_fetchCurrentSetting___block_invoke;
    v10 = &unk_279A18D98;
    selfCopy = self;
    v12 = &v14;
    v13 = &v20;
    v6 = v8;
    os_unfair_lock_lock(&self->_syncLock);
    v9(v6);

    os_unfair_lock_unlock(&self->_syncLock);
    if (setting)
    {
      *setting = v15[5];
    }

    v5 = v21[5];
    _Block_object_dispose(&v14, 8);

    _Block_object_dispose(&v20, 8);
  }

  return v5;
}

void __44__PTPassiveTraceConfig_fetchCurrentSetting___block_invoke(uint64_t a1)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  v2 = [*(a1 + 32) syncRemoteProxy];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__PTPassiveTraceConfig_fetchCurrentSetting___block_invoke_2;
  v6[3] = &unk_279A18F28;
  v6[4] = &v17;
  v6[5] = &v7;
  v6[6] = &v13;
  [v2 getCurrentPresetSettings:v6];

  if (v14[3])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8[5]);
  }

  else
  {
    v3 = [*(a1 + 32) proxyError];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    [*(a1 + 32) setProxyError:0];
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v18[5]);
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
}

void __44__PTPassiveTraceConfig_fetchCurrentSetting___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1[4] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  *(*(a1[6] + 8) + 24) = 1;
}

- (id)cancelCurrentSettingWithoutCollecting
{
  if ([(PTPassiveTraceConfig *)self connectionInvalidated])
  {
    v3 = [MEMORY[0x277CCA9B8] passiveTraceError:4 description:@"Client process could not establish connection to the backing mach service"];
  }

  else
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__0;
    v15 = __Block_byref_object_dispose__0;
    v16 = 0;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v7 = __61__PTPassiveTraceConfig_cancelCurrentSettingWithoutCollecting__block_invoke;
    v8 = &unk_279A18F78;
    selfCopy = self;
    v10 = &v11;
    v4 = v6;
    os_unfair_lock_lock(&self->_syncLock);
    v7(v4);

    os_unfair_lock_unlock(&self->_syncLock);
    v3 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  return v3;
}

void __61__PTPassiveTraceConfig_cancelCurrentSettingWithoutCollecting__block_invoke(uint64_t a1)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  v2 = [*(a1 + 32) syncRemoteProxy];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__PTPassiveTraceConfig_cancelCurrentSettingWithoutCollecting__block_invoke_2;
  v6[3] = &unk_279A18D70;
  v6[4] = &v7;
  v6[5] = &v13;
  [v2 clearCurrentPresetSettings:v6];

  if (v14[3])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8[5]);
  }

  else
  {
    v3 = [*(a1 + 32) proxyError];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    [*(a1 + 32) setProxyError:0];
  }

  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);
}

void __61__PTPassiveTraceConfig_cancelCurrentSettingWithoutCollecting__block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

- (id)collectThenClearCurrentSettingWithTraceNamePrefix:(id)prefix triggerUserNotification:(BOOL)notification errorOut:(id *)out
{
  prefixCopy = prefix;
  if ([(PTPassiveTraceConfig *)self connectionInvalidated])
  {
    [MEMORY[0x277CCA9B8] passiveTraceError:4 description:@"Client process could not establish connection to the backing mach service"];
    *out = v9 = 0;
  }

  else
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__0;
    v30 = __Block_byref_object_dispose__0;
    v31 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__0;
    v24 = __Block_byref_object_dispose__0;
    v25 = 0;
    if (out)
    {
      *out = 0;
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v13 = __107__PTPassiveTraceConfig_collectThenClearCurrentSettingWithTraceNamePrefix_triggerUserNotification_errorOut___block_invoke;
    v14 = &unk_279A18F00;
    selfCopy = self;
    notificationCopy = notification;
    v16 = prefixCopy;
    v17 = &v20;
    v18 = &v26;
    v10 = v12;
    os_unfair_lock_lock(&self->_syncLock);
    v13(v10);

    os_unfair_lock_unlock(&self->_syncLock);
    if (out)
    {
      *out = v21[5];
    }

    v9 = v27[5];

    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(&v26, 8);
  }

  return v9;
}

void __107__PTPassiveTraceConfig_collectThenClearCurrentSettingWithTraceNamePrefix_triggerUserNotification_errorOut___block_invoke(uint64_t a1)
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__0;
  v33 = __Block_byref_object_dispose__0;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__0;
  v27 = __Block_byref_object_dispose__0;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  v2 = [*(a1 + 32) syncRemoteProxy];
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __107__PTPassiveTraceConfig_collectThenClearCurrentSettingWithTraceNamePrefix_triggerUserNotification_errorOut___block_invoke_2;
  v12[3] = &unk_279A18E38;
  v12[4] = &v29;
  v12[5] = &v23;
  v12[6] = &v13;
  v12[7] = &v19;
  [v2 collectAndClearCurrentSettingWithTraceNamePrefix:v3 triggerUserNotification:v4 callback:v12];

  if (v20[3])
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v14[5]);
  }

  else
  {
    v5 = [*(a1 + 32) proxyError];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    [*(a1 + 32) setProxyError:0];
  }

  if (v30[5] && v24[5])
  {
    v8 = [PTPassiveTraceArchiveHandle alloc];
    v9 = [(PTPassiveTraceArchiveHandle *)v8 initWithAarPath:v30[5] sandboxExtension:v24[5]];
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  _Block_object_dispose(&v29, 8);
}

void __107__PTPassiveTraceConfig_collectThenClearCurrentSettingWithTraceNamePrefix_triggerUserNotification_errorOut___block_invoke_2(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1[4] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v18 = v7;

  v12 = *(a1[5] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  v15 = *(a1[6] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
  v17 = v9;

  *(*(a1[7] + 8) + 24) = 1;
}

- (id)fetchMSSPMICycleInterval:(id *)interval
{
  if ([(PTPassiveTraceConfig *)self connectionInvalidated])
  {
    [MEMORY[0x277CCA9B8] passiveTraceError:4 description:@"Client process could not establish connection to the backing mach service"];
    *interval = v5 = 0;
  }

  else
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__0;
    v24 = __Block_byref_object_dispose__0;
    v25 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    if (interval)
    {
      *interval = 0;
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v9 = __49__PTPassiveTraceConfig_fetchMSSPMICycleInterval___block_invoke;
    v10 = &unk_279A18D98;
    selfCopy = self;
    v12 = &v14;
    v13 = &v20;
    v6 = v8;
    os_unfair_lock_lock(&self->_syncLock);
    v9(v6);

    os_unfair_lock_unlock(&self->_syncLock);
    if (interval)
    {
      *interval = v15[5];
    }

    v5 = v21[5];
    _Block_object_dispose(&v14, 8);

    _Block_object_dispose(&v20, 8);
  }

  return v5;
}

void __49__PTPassiveTraceConfig_fetchMSSPMICycleInterval___block_invoke(uint64_t a1)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  v2 = [*(a1 + 32) syncRemoteProxy];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__PTPassiveTraceConfig_fetchMSSPMICycleInterval___block_invoke_2;
  v6[3] = &unk_279A18F28;
  v6[4] = &v17;
  v6[5] = &v7;
  v6[6] = &v13;
  [v2 getMssPmiCycleInterval:v6];

  if (v14[3])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8[5]);
  }

  else
  {
    v3 = [*(a1 + 32) proxyError];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    [*(a1 + 32) setProxyError:0];
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v18[5]);
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
}

void __49__PTPassiveTraceConfig_fetchMSSPMICycleInterval___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1[4] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  *(*(a1[6] + 8) + 24) = 1;
}

- (id)updateMSSPMICycleInterval:(id)interval
{
  intervalCopy = interval;
  if ([(PTPassiveTraceConfig *)self connectionInvalidated])
  {
    v5 = [MEMORY[0x277CCA9B8] passiveTraceError:4 description:@"Client process could not establish connection to the backing mach service"];
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v9 = __50__PTPassiveTraceConfig_updateMSSPMICycleInterval___block_invoke;
    v10 = &unk_279A18DE8;
    selfCopy = self;
    v12 = intervalCopy;
    v13 = &v14;
    v6 = v8;
    os_unfair_lock_lock(&self->_syncLock);
    v9(v6);

    os_unfair_lock_unlock(&self->_syncLock);
    v5 = v15[5];

    _Block_object_dispose(&v14, 8);
  }

  return v5;
}

void __50__PTPassiveTraceConfig_updateMSSPMICycleInterval___block_invoke(uint64_t a1)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  v2 = [*(a1 + 32) syncRemoteProxy];
  v3 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__PTPassiveTraceConfig_updateMSSPMICycleInterval___block_invoke_2;
  v7[3] = &unk_279A18D70;
  v7[4] = &v8;
  v7[5] = &v14;
  [v2 setMssPmiCycleInterval:v3 callback:v7];

  if (v15[3])
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v9[5]);
  }

  else
  {
    v4 = [*(a1 + 32) proxyError];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    [*(a1 + 32) setProxyError:0];
  }

  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
}

void __50__PTPassiveTraceConfig_updateMSSPMICycleInterval___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

- (id)fetchMetalPerDrawableSignpostsEnabled:(id *)enabled
{
  if ([(PTPassiveTraceConfig *)self connectionInvalidated])
  {
    [MEMORY[0x277CCA9B8] passiveTraceError:4 description:@"Client process could not establish connection to the backing mach service"];
    *enabled = v5 = 0;
  }

  else
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__0;
    v24 = __Block_byref_object_dispose__0;
    v25 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    if (enabled)
    {
      *enabled = 0;
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v9 = __62__PTPassiveTraceConfig_fetchMetalPerDrawableSignpostsEnabled___block_invoke;
    v10 = &unk_279A18D98;
    selfCopy = self;
    v12 = &v14;
    v13 = &v20;
    v6 = v8;
    os_unfair_lock_lock(&self->_syncLock);
    v9(v6);

    os_unfair_lock_unlock(&self->_syncLock);
    if (enabled)
    {
      *enabled = v15[5];
    }

    v5 = v21[5];
    _Block_object_dispose(&v14, 8);

    _Block_object_dispose(&v20, 8);
  }

  return v5;
}

void __62__PTPassiveTraceConfig_fetchMetalPerDrawableSignpostsEnabled___block_invoke(uint64_t a1)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  v2 = [*(a1 + 32) syncRemoteProxy];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__PTPassiveTraceConfig_fetchMetalPerDrawableSignpostsEnabled___block_invoke_2;
  v6[3] = &unk_279A18F28;
  v6[4] = &v17;
  v6[5] = &v7;
  v6[6] = &v13;
  [v2 getMetalPerDrawableSignpostsEnabled:v6];

  if (v14[3])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8[5]);
  }

  else
  {
    v3 = [*(a1 + 32) proxyError];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    [*(a1 + 32) setProxyError:0];
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v18[5]);
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
}

void __62__PTPassiveTraceConfig_fetchMetalPerDrawableSignpostsEnabled___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1[4] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  *(*(a1[6] + 8) + 24) = 1;
}

- (id)updateMetalPerDrawableSignpostsEnabled:(id)enabled
{
  enabledCopy = enabled;
  if ([(PTPassiveTraceConfig *)self connectionInvalidated])
  {
    v5 = [MEMORY[0x277CCA9B8] passiveTraceError:4 description:@"Client process could not establish connection to the backing mach service"];
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v9 = __63__PTPassiveTraceConfig_updateMetalPerDrawableSignpostsEnabled___block_invoke;
    v10 = &unk_279A18DE8;
    selfCopy = self;
    v12 = enabledCopy;
    v13 = &v14;
    v6 = v8;
    os_unfair_lock_lock(&self->_syncLock);
    v9(v6);

    os_unfair_lock_unlock(&self->_syncLock);
    v5 = v15[5];

    _Block_object_dispose(&v14, 8);
  }

  return v5;
}

void __63__PTPassiveTraceConfig_updateMetalPerDrawableSignpostsEnabled___block_invoke(uint64_t a1)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  v2 = [*(a1 + 32) syncRemoteProxy];
  v3 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__PTPassiveTraceConfig_updateMetalPerDrawableSignpostsEnabled___block_invoke_2;
  v7[3] = &unk_279A18D70;
  v7[4] = &v8;
  v7[5] = &v14;
  [v2 setMetalPerDrawableSignpostsEnabled:v3 callback:v7];

  if (v15[3])
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v9[5]);
  }

  else
  {
    v4 = [*(a1 + 32) proxyError];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    [*(a1 + 32) setProxyError:0];
  }

  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
}

void __63__PTPassiveTraceConfig_updateMetalPerDrawableSignpostsEnabled___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

- (id)fetchPerfPowerMetricMonitoredProcesses:(id *)processes
{
  if ([(PTPassiveTraceConfig *)self connectionInvalidated])
  {
    [MEMORY[0x277CCA9B8] passiveTraceError:4 description:@"Client process could not establish connection to the backing mach service"];
    *processes = v5 = 0;
  }

  else
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__0;
    v24 = __Block_byref_object_dispose__0;
    v25 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    if (processes)
    {
      *processes = 0;
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v9 = __63__PTPassiveTraceConfig_fetchPerfPowerMetricMonitoredProcesses___block_invoke;
    v10 = &unk_279A18D98;
    selfCopy = self;
    v12 = &v14;
    v13 = &v20;
    v6 = v8;
    os_unfair_lock_lock(&self->_syncLock);
    v9(v6);

    os_unfair_lock_unlock(&self->_syncLock);
    if (processes)
    {
      *processes = v15[5];
    }

    v5 = v21[5];
    _Block_object_dispose(&v14, 8);

    _Block_object_dispose(&v20, 8);
  }

  return v5;
}

void __63__PTPassiveTraceConfig_fetchPerfPowerMetricMonitoredProcesses___block_invoke(uint64_t a1)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  v2 = [*(a1 + 32) syncRemoteProxy];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__PTPassiveTraceConfig_fetchPerfPowerMetricMonitoredProcesses___block_invoke_2;
  v6[3] = &unk_279A18FA0;
  v6[4] = &v17;
  v6[5] = &v7;
  v6[6] = &v13;
  [v2 getMetricMonitoredAppProcessNames:v6];

  if (v14[3])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8[5]);
  }

  else
  {
    v3 = [*(a1 + 32) proxyError];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    [*(a1 + 32) setProxyError:0];
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v18[5]);
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
}

void __63__PTPassiveTraceConfig_fetchPerfPowerMetricMonitoredProcesses___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1[4] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  *(*(a1[6] + 8) + 24) = 1;
}

- (id)updatePerfPowerMetricMonitoredProcesses:(id)processes
{
  processesCopy = processes;
  if ([(PTPassiveTraceConfig *)self connectionInvalidated])
  {
    v5 = [MEMORY[0x277CCA9B8] passiveTraceError:4 description:@"Client process could not establish connection to the backing mach service"];
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v9 = __64__PTPassiveTraceConfig_updatePerfPowerMetricMonitoredProcesses___block_invoke;
    v10 = &unk_279A18DE8;
    selfCopy = self;
    v12 = processesCopy;
    v13 = &v14;
    v6 = v8;
    os_unfair_lock_lock(&self->_syncLock);
    v9(v6);

    os_unfair_lock_unlock(&self->_syncLock);
    v5 = v15[5];

    _Block_object_dispose(&v14, 8);
  }

  return v5;
}

void __64__PTPassiveTraceConfig_updatePerfPowerMetricMonitoredProcesses___block_invoke(uint64_t a1)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  v2 = [*(a1 + 32) syncRemoteProxy];
  v3 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__PTPassiveTraceConfig_updatePerfPowerMetricMonitoredProcesses___block_invoke_2;
  v7[3] = &unk_279A18D70;
  v7[4] = &v8;
  v7[5] = &v14;
  [v2 setMetricMonitoredAppProcessNames:v3 callback:v7];

  if (v15[3])
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v9[5]);
  }

  else
  {
    v4 = [*(a1 + 32) proxyError];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    [*(a1 + 32) setProxyError:0];
  }

  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
}

void __64__PTPassiveTraceConfig_updatePerfPowerMetricMonitoredProcesses___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

- (id)fetchPerfPowerMetricMonitorEnabled:(id *)enabled
{
  if ([(PTPassiveTraceConfig *)self connectionInvalidated])
  {
    [MEMORY[0x277CCA9B8] passiveTraceError:4 description:@"Client process could not establish connection to the backing mach service"];
    *enabled = v5 = 0;
  }

  else
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__0;
    v24 = __Block_byref_object_dispose__0;
    v25 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    if (enabled)
    {
      *enabled = 0;
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v9 = __59__PTPassiveTraceConfig_fetchPerfPowerMetricMonitorEnabled___block_invoke;
    v10 = &unk_279A18D98;
    selfCopy = self;
    v12 = &v14;
    v13 = &v20;
    v6 = v8;
    os_unfair_lock_lock(&self->_syncLock);
    v9(v6);

    os_unfair_lock_unlock(&self->_syncLock);
    if (enabled)
    {
      *enabled = v15[5];
    }

    v5 = v21[5];
    _Block_object_dispose(&v14, 8);

    _Block_object_dispose(&v20, 8);
  }

  return v5;
}

void __59__PTPassiveTraceConfig_fetchPerfPowerMetricMonitorEnabled___block_invoke(uint64_t a1)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  v2 = [*(a1 + 32) syncRemoteProxy];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__PTPassiveTraceConfig_fetchPerfPowerMetricMonitorEnabled___block_invoke_2;
  v6[3] = &unk_279A18F28;
  v6[4] = &v17;
  v6[5] = &v7;
  v6[6] = &v13;
  [v2 getMetricMonitoringEnabled:v6];

  if (v14[3])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8[5]);
  }

  else
  {
    v3 = [*(a1 + 32) proxyError];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    [*(a1 + 32) setProxyError:0];
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v18[5]);
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
}

void __59__PTPassiveTraceConfig_fetchPerfPowerMetricMonitorEnabled___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1[4] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  *(*(a1[6] + 8) + 24) = 1;
}

- (id)updatePerfPowerMetricMonitorEnabled:(id)enabled
{
  enabledCopy = enabled;
  if ([(PTPassiveTraceConfig *)self connectionInvalidated])
  {
    v5 = [MEMORY[0x277CCA9B8] passiveTraceError:4 description:@"Client process could not establish connection to the backing mach service"];
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v9 = __60__PTPassiveTraceConfig_updatePerfPowerMetricMonitorEnabled___block_invoke;
    v10 = &unk_279A18DE8;
    selfCopy = self;
    v12 = enabledCopy;
    v13 = &v14;
    v6 = v8;
    os_unfair_lock_lock(&self->_syncLock);
    v9(v6);

    os_unfair_lock_unlock(&self->_syncLock);
    v5 = v15[5];

    _Block_object_dispose(&v14, 8);
  }

  return v5;
}

void __60__PTPassiveTraceConfig_updatePerfPowerMetricMonitorEnabled___block_invoke(uint64_t a1)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  v2 = [*(a1 + 32) syncRemoteProxy];
  v3 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__PTPassiveTraceConfig_updatePerfPowerMetricMonitorEnabled___block_invoke_2;
  v7[3] = &unk_279A18D70;
  v7[4] = &v8;
  v7[5] = &v14;
  [v2 setMetricMonitoringEnabled:v3 callback:v7];

  if (v15[3])
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v9[5]);
  }

  else
  {
    v4 = [*(a1 + 32) proxyError];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    [*(a1 + 32) setProxyError:0];
  }

  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
}

void __60__PTPassiveTraceConfig_updatePerfPowerMetricMonitorEnabled___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

@end