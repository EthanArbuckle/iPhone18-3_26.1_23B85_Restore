@interface NOIAnalyticsEngine
+ (id)queue;
+ (void)getQueryStatistics:(id *)a3;
+ (void)resetQueryStatistics;
- (BOOL)_initializeAllManagedNOIs;
- (NOIAnalyticsEngine)initWithWorkspace:(id)a3 params:(id)a4;
- (id)_clientNOIEvent:(id)a3 forNOIs:(id)a4 isAddEvent:(BOOL)a5;
- (id)_validatedNOIs:(id)a3 orPredicate:(id)a4;
- (void)_bottomUpNOIEvent:(id)a3 withInfo:(id)a4;
- (void)_collectBasicFieldsForRRCMetric:(id)a3 durationUsecs:(unint64_t)a4;
- (void)_collectDataUsageFieldsForRRCMetric:(id)a3 layer2EgressMetric:(id)a4 underrun:(BOOL *)a5;
- (void)_dumpClientStructure;
- (void)_evalPostingNotificationForNOI:(id)a3 forEvent:(id)a4 withInfo:(id)a5;
- (void)_getQueryStatistics:(id *)a3;
- (void)_observeStateRelays;
- (void)_resetQueryStatistics;
- (void)_resetRRCMetricCounters;
- (void)auditableLinkQuality:(id)a3 options:(id)a4 reply:(id)a5;
- (void)canUseOnAlternate:(id)a3 options:(id)a4 reply:(id)a5;
- (void)clientEvent:(id)a3 isAddEvent:(BOOL)a4;
- (void)clientTransactionsRelease;
- (void)dealloc;
- (void)estTransferTime:(id)a3 options:(id)a4 reply:(id)a5;
- (void)inquireNOIFor:(id)a3 orPredicate:(id)a4 requestedKeys:(id)a5 options:(id)a6 connection:(id)a7 reply:(id)a8;
- (void)l2ThroughputMetrics:(id)a3 options:(id)a4 reply:(id)a5;
- (void)networkAttachmentInfo:(id)a3 options:(id)a4 reply:(id)a5;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)subscribeToNOIsFor:(id)a3 orPredicate:(id)a4 options:(id)a5 connection:(id)a6;
- (void)unsubscribeToNOIs:(id)a3 connection:(id)a4;
@end

@implementation NOIAnalyticsEngine

- (NOIAnalyticsEngine)initWithWorkspace:(id)a3 params:(id)a4
{
  v85 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = SFGetStandardQueue(2);
  if (!v8)
  {
    v52 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v52, OS_LOG_TYPE_ERROR, "Failed to allocate internal NOI queue. Bailing.", buf, 2u);
    }

    goto LABEL_18;
  }

  v80.receiver = self;
  v80.super_class = NOIAnalyticsEngine;
  self = [(AnalyticsEngineCore *)&v80 initWithWorkspace:v6 params:v7 queue:v8];
  if (self)
  {
    v9 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v82 = self;
      v83 = 2080;
      v84 = "[NOIAnalyticsEngine initWithWorkspace:params:]";
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "NOI Analytics Engine: %p %s", buf, 0x16u);
    }

    v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:4];
    liveClients = self->liveClients;
    self->liveClients = v10;

    if (self->liveClients)
    {
      v12 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:4];
      managedNOIs = self->managedNOIs;
      self->managedNOIs = v12;

      if (self->managedNOIs)
      {
        self->_predictionQueryCount = 0;
        v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
        predictionQueryClients = self->_predictionQueryClients;
        self->_predictionQueryClients = v14;

        if (self->_predictionQueryClients)
        {
          v16 = [MEMORY[0x277CCAB98] defaultCenter];
          v78[0] = MEMORY[0x277D85DD0];
          v78[1] = 3221225472;
          v78[2] = __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke;
          v78[3] = &unk_27898A690;
          v17 = self;
          v79 = v17;
          v18 = [v16 addObserverForName:@"kNotificationNewConnectivityEpochCell" object:0 queue:0 usingBlock:v78];
          cellEpochObserver = v17->_cellEpochObserver;
          v17->_cellEpochObserver = v18;

          v76[0] = MEMORY[0x277D85DD0];
          v76[1] = 3221225472;
          v76[2] = __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_44;
          v76[3] = &unk_27898A690;
          v20 = v17;
          v77 = v20;
          v21 = [v16 addObserverForName:@"kNotificationNewConnectivityEpochWiFi" object:0 queue:0 usingBlock:v76];
          wifiEpochObserver = v20->_wifiEpochObserver;
          v20->_wifiEpochObserver = v21;

          v74[0] = MEMORY[0x277D85DD0];
          v74[1] = 3221225472;
          v74[2] = __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_46;
          v74[3] = &unk_27898A690;
          v23 = v20;
          v75 = v23;
          v24 = [v16 addObserverForName:@"kNotificationNewConnectivityEpochWired" object:0 queue:0 usingBlock:v74];
          wiredEpochObserver = v23->_wiredEpochObserver;
          v23->_wiredEpochObserver = v24;

          v72[0] = MEMORY[0x277D85DD0];
          v72[1] = 3221225472;
          v72[2] = __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_48;
          v72[3] = &unk_27898A690;
          v26 = v23;
          v73 = v26;
          v27 = [v16 addObserverForName:@"notificationNewModelGenerated" object:0 queue:0 usingBlock:v72];
          modelTurndownObserver = v26->_modelTurndownObserver;
          v26->_modelTurndownObserver = v27;

          v70[0] = MEMORY[0x277D85DD0];
          v70[1] = 3221225472;
          v70[2] = __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_50;
          v70[3] = &unk_27898A690;
          v29 = v26;
          v71 = v29;
          v30 = [v16 addObserverForName:@"kNotificationCellLinkStateReportCapable" object:0 queue:0 usingBlock:v70];
          cellStateCapabilityObserver = v29->_cellStateCapabilityObserver;
          v29->_cellStateCapabilityObserver = v30;

          v68[0] = MEMORY[0x277D85DD0];
          v68[1] = 3221225472;
          v68[2] = __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_52;
          v68[3] = &unk_27898A690;
          v32 = v29;
          v69 = v32;
          v33 = [v16 addObserverForName:@"kNotificationCellLinkStateChange" object:0 queue:0 usingBlock:v68];
          cellStateChangeObserver = v32->_cellStateChangeObserver;
          v32->_cellStateChangeObserver = v33;

          v66[0] = MEMORY[0x277D85DD0];
          v66[1] = 3221225472;
          v66[2] = __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_54;
          v66[3] = &unk_27898A690;
          v35 = v32;
          v67 = v35;
          v36 = [v16 addObserverForName:@"fallbackRecommendation" object:0 queue:0 usingBlock:v66];
          cellFallbackObserver = v35->_cellFallbackObserver;
          v35->_cellFallbackObserver = v36;

          v64[0] = MEMORY[0x277D85DD0];
          v64[1] = 3221225472;
          v64[2] = __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_56;
          v64[3] = &unk_27898A690;
          v38 = v35;
          v65 = v38;
          v39 = [v16 addObserverForName:@"considerAlternateUpdate" object:0 queue:0 usingBlock:v64];
          considerAlternateUpdateObserver = v38->_considerAlternateUpdateObserver;
          v38->_considerAlternateUpdateObserver = v39;

          v62[0] = MEMORY[0x277D85DD0];
          v62[1] = 3221225472;
          v62[2] = __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_58;
          v62[3] = &unk_27898A690;
          v41 = v38;
          v63 = v41;
          v42 = [v16 addObserverForName:@"kNotificationNewPrimaryInterface" object:0 queue:0 usingBlock:v62];
          primaryObserver = v41->_primaryObserver;
          v41->_primaryObserver = v42;

          v60[0] = MEMORY[0x277D85DD0];
          v60[1] = 3221225472;
          v60[2] = __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_60;
          v60[3] = &unk_27898A0C8;
          v44 = v41;
          v61 = v44;
          if (initWithWorkspace_params__pred != -1)
          {
            dispatch_once(&initWithWorkspace_params__pred, v60);
          }

          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_2_62;
          block[3] = &unk_27898A0C8;
          v45 = v44;
          v59 = v45;
          dispatch_sync(v8, block);
          signal(31, 1);
          v46 = [v45 queue];
          v47 = dispatch_source_create(MEMORY[0x277D85D30], 0x1FuLL, 0, v46);
          v48 = initWithWorkspace_params__sigusr2;
          initWithWorkspace_params__sigusr2 = v47;

          v49 = initWithWorkspace_params__sigusr2;
          if (initWithWorkspace_params__sigusr2)
          {
            handler[0] = MEMORY[0x277D85DD0];
            handler[1] = 3221225472;
            handler[2] = __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_3;
            handler[3] = &unk_27898A7D0;
            v56 = v45;
            v57 = v16;
            dispatch_source_set_event_handler(v49, handler);
            dispatch_resume(initWithWorkspace_params__sigusr2);
          }

          v50 = measureLaunchXPCHandle();
          if (os_signpost_enabled(v50))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_23255B000, v50, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NOIAnalyticsEngineInitialized", "NOIAnalyticsEngine completed initialization", buf, 2u);
          }

          markMeasurement(2, 13);
          goto LABEL_15;
        }
      }
    }

LABEL_18:
    v51 = 0;
    goto LABEL_19;
  }

LABEL_15:
  self = self;
  v51 = self;
LABEL_19:

  v53 = *MEMORY[0x277D85DE8];
  return v51;
}

void __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_2;
  v6[3] = &unk_27898A7D0;
  v7 = v3;
  v8 = *(a1 + 32);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 userInfo];
    v9 = 138477827;
    v10 = v5;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "Cell epoch change: %{private}@", &v9, 0xCu);
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) userInfo];
  [v6 _bottomUpNOIEvent:@"kNotificationNewConnectivityEpochCell" withInfo:v7];

  v8 = *MEMORY[0x277D85DE8];
}

void __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_44(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_2_45;
  v6[3] = &unk_27898A7D0;
  v7 = v3;
  v8 = *(a1 + 32);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_2_45(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 userInfo];
    v9 = 138477827;
    v10 = v5;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "WiFi epoch change: %{private}@", &v9, 0xCu);
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) userInfo];
  [v6 _bottomUpNOIEvent:@"kNotificationNewConnectivityEpochWiFi" withInfo:v7];

  v8 = *MEMORY[0x277D85DE8];
}

void __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_46(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_2_47;
  v6[3] = &unk_27898A7D0;
  v7 = v3;
  v8 = *(a1 + 32);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_2_47(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 userInfo];
    v9 = 138477827;
    v10 = v5;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "Wired epoch change: %{private}@", &v9, 0xCu);
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) userInfo];
  [v6 _bottomUpNOIEvent:@"kNotificationNewConnectivityEpochWired" withInfo:v7];

  v8 = *MEMORY[0x277D85DE8];
}

void __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_2_49;
  v6[3] = &unk_27898A7D0;
  v7 = v3;
  v8 = *(a1 + 32);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_2_49(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 userInfo];
    v9 = 138477827;
    v10 = v5;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "model regenerated: %{private}@", &v9, 0xCu);
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) userInfo];
  [v6 _bottomUpNOIEvent:@"notificationNewModelGenerated" withInfo:v7];

  v8 = *MEMORY[0x277D85DE8];
}

void __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_50(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_2_51;
  v6[3] = &unk_27898A7D0;
  v7 = v3;
  v8 = *(a1 + 32);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_2_51(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 userInfo];
    v9 = 138477827;
    v10 = v5;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "RRC Capability change: %{private}@", &v9, 0xCu);
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) userInfo];
  [v6 _bottomUpNOIEvent:@"kNotificationCellLinkStateReportCapable" withInfo:v7];

  v8 = *MEMORY[0x277D85DE8];
}

void __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_52(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_2_53;
  v6[3] = &unk_27898A7D0;
  v7 = v3;
  v8 = *(a1 + 32);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_2_53(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 userInfo];
    v9 = 138477827;
    v10 = v5;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "RRC State change: %{private}@", &v9, 0xCu);
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) userInfo];
  [v6 _bottomUpNOIEvent:@"kNotificationCellLinkStateChange" withInfo:v7];

  v8 = *MEMORY[0x277D85DE8];
}

void __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_54(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_2_55;
  v6[3] = &unk_27898A7D0;
  v7 = v3;
  v8 = *(a1 + 32);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_2_55(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 userInfo];
    v9 = 138477827;
    v10 = v5;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "Cell Fallback recommendation: %{private}@", &v9, 0xCu);
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) userInfo];
  [v6 _bottomUpNOIEvent:@"fallbackRecommendation" withInfo:v7];

  v8 = *MEMORY[0x277D85DE8];
}

void __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_56(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_2_57;
  v6[3] = &unk_27898A7D0;
  v7 = v3;
  v8 = *(a1 + 32);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_2_57(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 userInfo];
    v9 = 138477827;
    v10 = v5;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "Consider alternate update: %{private}@", &v9, 0xCu);
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) userInfo];
  [v6 _bottomUpNOIEvent:@"considerAlternateUpdate" withInfo:v7];

  v8 = *MEMORY[0x277D85DE8];
}

void __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_2_59;
  v6[3] = &unk_27898A7D0;
  v7 = v3;
  v8 = *(a1 + 32);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_2_59(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 userInfo];
    v9 = 138477827;
    v10 = v5;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "Primary change: %{private}@", &v9, 0xCu);
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) userInfo];
  [v6 _bottomUpNOIEvent:@"kNotificationNewPrimaryInterface" withInfo:v7];

  v8 = *MEMORY[0x277D85DE8];
}

void __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_60(uint64_t a1)
{
  v16[14] = *MEMORY[0x277D85DE8];
  objc_storeStrong(&sharedInstance_0, *(a1 + 32));
  v1 = objc_alloc(MEMORY[0x277CBEB98]);
  v16[0] = @"predictions";
  v16[1] = @"predictionsGeneratedAt";
  v16[2] = @"instantQuality";
  v16[3] = @"l2ThroughputMetrics";
  v16[4] = @"auditableLinkQuality";
  v16[5] = @"networkAttachmentInfo";
  v16[6] = @"estTransferTime";
  v16[7] = @"hasForegroundActivity";
  v16[8] = @"canUseOnAlternate";
  v16[9] = @"predictionsError";
  v16[10] = @"dayOfWeekGrouping";
  v16[11] = @"trainingProgress";
  v16[12] = @"invitesHourlyDistribution";
  v16[13] = @"interfaceTimeline";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:14];
  v3 = [v1 initWithArray:v2];
  v4 = supportedKeys;
  supportedKeys = v3;

  v5 = objc_alloc(MEMORY[0x277CBEB98]);
  v15[0] = @"l2ThroughputMetrics";
  v15[1] = @"auditableLinkQuality";
  v15[2] = @"networkAttachmentInfo";
  v15[3] = @"estTransferTime";
  v15[4] = @"canUseOnAlternate";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:5];
  v7 = [v5 initWithArray:v6];
  v8 = supportedAsyncKeys;
  supportedAsyncKeys = v7;

  v9 = objc_alloc(MEMORY[0x277CBEB98]);
  v14[0] = @"predictions";
  v14[1] = @"predictionsGeneratedAt";
  v14[2] = @"predictionsError";
  v14[3] = @"dayOfWeekGrouping";
  v14[4] = @"trainingProgress";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:5];
  v11 = [v9 initWithArray:v10];
  v12 = predictionQueryKeys;
  predictionQueryKeys = v11;

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_2_62(uint64_t a1)
{
  [*(a1 + 32) _initializeAllManagedNOIs];
  v2 = *(a1 + 32);

  return [v2 _observeStateRelays];
}

void __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_3(uint64_t a1)
{
  v14[3] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _dumpClientStructure];
  v2 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "NetworkAnalyticsEngine: posting event ON", buf, 2u);
  }

  v13[0] = @"State";
  v13[1] = @"Detail";
  v14[0] = MEMORY[0x277CBEC38];
  v14[1] = MEMORY[0x277CBEC38];
  v13[2] = @"StateChangeTimestamp";
  v3 = MEMORY[0x277CCABB0];
  v4 = [MEMORY[0x277CBEAA8] date];
  [v4 timeIntervalSince1970];
  v5 = [v3 numberWithDouble:?];
  v14[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];

  [*(a1 + 40) postNotificationName:@"kNotificationCellLinkStateChange" object:*(a1 + 32) userInfo:v6];
  v7 = dispatch_time(0, 10000000000);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_66;
  v9[3] = &unk_27898A7D0;
  v10 = *(a1 + 40);
  v11 = *(a1 + 32);
  dispatch_after(v7, MEMORY[0x277D85CD0], v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_66(uint64_t a1)
{
  v10[3] = *MEMORY[0x277D85DE8];
  v2 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "NetworkAnalyticsEngine: posting event OFF", v8, 2u);
  }

  v9[0] = @"State";
  v9[1] = @"Detail";
  v10[0] = MEMORY[0x277CBEC28];
  v10[1] = MEMORY[0x277CBEC38];
  v9[2] = @"StateChangeTimestamp";
  v3 = MEMORY[0x277CCABB0];
  v4 = [MEMORY[0x277CBEAA8] date];
  [v4 timeIntervalSince1970];
  v5 = [v3 numberWithDouble:?];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  [*(a1 + 32) postNotificationName:@"kNotificationCellLinkStateChange" object:*(a1 + 40) userInfo:v6];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self->_cellEpochObserver];
  [v3 removeObserver:self->_wifiEpochObserver];
  [v3 removeObserver:self->_wiredEpochObserver];
  [v3 removeObserver:self->_modelTurndownObserver];
  [v3 removeObserver:self->_cellStateCapabilityObserver];
  [v3 removeObserver:self->_cellStateChangeObserver];
  [v3 removeObserver:self->_cellFallbackObserver];
  [v3 removeObserver:self->_primaryObserver];
  wifiRelay = self->_wifiRelay;
  if (wifiRelay)
  {
    [(NetworkStateRelay *)wifiRelay removeObserver:self forKeyPath:@"linkQuality"];
    [(NetworkStateRelay *)self->_wifiRelay removeObserver:self forKeyPath:@"radioTechnology"];
  }

  cellRelay = self->_cellRelay;
  if (cellRelay)
  {
    [(NetworkStateRelay *)cellRelay removeObserver:self forKeyPath:@"linkQuality"];
    [(NetworkStateRelay *)self->_cellRelay removeObserver:self forKeyPath:@"powerCostDL"];
    [(NetworkStateRelay *)self->_cellRelay removeObserver:self forKeyPath:@"powerCostUL"];
    [(NetworkStateRelay *)self->_cellRelay removeObserver:self forKeyPath:@"radioTechnology"];
  }

  wiredRelay = self->_wiredRelay;
  if (wiredRelay)
  {
    [(NetworkStateRelay *)wiredRelay removeObserver:self forKeyPath:@"linkQuality"];
  }

  v7.receiver = self;
  v7.super_class = NOIAnalyticsEngine;
  [(AnalyticsEngineCore *)&v7 dealloc];
}

- (void)_dumpClientStructure
{
  obj = self->liveClients;
  objc_sync_enter(obj);
  [(NSMutableDictionary *)self->liveClients enumerateKeysAndObjectsUsingBlock:&__block_literal_global_10];
  objc_sync_exit(obj);
}

void __42__NOIAnalyticsEngine__dumpClientStructure__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [v5 connection];
    v13 = 67109120;
    LODWORD(v14) = [v8 processIdentifier];
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "Active client pid: %d", &v13, 8u);
  }

  v9 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v5 subscribedNOIs];
    v13 = 138412290;
    v14 = v11;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "Subscribed to: %@", &v13, 0xCu);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)clientEvent:(id)a3 isAddEvent:(BOOL)a4
{
  v4 = a4;
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v6 processIdentifier];
    *buf = 134218496;
    v36 = self;
    v37 = 1024;
    v38 = v9;
    v39 = 1024;
    v40 = v4;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "%p for pid: %d, client event: %d", buf, 0x18u);
  }

  v10 = self->liveClients;
  objc_sync_enter(v10);
  v11 = [(NSMutableDictionary *)self->liveClients count];
  v29 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:v6];
  if (v4)
  {
    v12 = [[Client alloc] initWithConn:v6];
    [(NSMutableDictionary *)self->liveClients setObject:v12 forKeyedSubscript:v29];
    v13 = noiLogHandle;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(NSMutableDictionary *)self->liveClients count];
      *buf = 134217984;
      v36 = v14;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "Total number of NOI clients: %ld", buf, 0xCu);
    }
  }

  else
  {
    v15 = [(NSMutableDictionary *)self->liveClients objectForKeyedSubscript:v29];
    v12 = v15;
    if (v15)
    {
      v28 = v6;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v16 = [(Client *)v15 subscribedNOIs];
      v17 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v17)
      {
        v18 = *v31;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v31 != v18)
            {
              objc_enumerationMutation(v16);
            }

            [*(*(&v30 + 1) + 8 * i) removeObserverForAllKeyPaths:v12];
          }

          v17 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v17);
      }

      v6 = v28;
      v20 = [(Client *)v12 subscribedNOIs];
      [v20 removeAllObjects];

      [(NSMutableDictionary *)self->liveClients removeObjectForKey:v29];
    }

    else
    {
      v21 = noiLogHandle;
      if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v36 = self;
        v37 = 1024;
        v38 = 0;
        _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEFAULT, "%p event: %d, client unknown", buf, 0x12u);
      }
    }
  }

  if (v11 != [(NSMutableDictionary *)self->liveClients count])
  {
    if (!v4 || v11)
    {
      if (v4)
      {
        goto LABEL_19;
      }

      if (v11 != 1)
      {
        goto LABEL_19;
      }

      noiLiveClientTransaction = self->_noiLiveClientTransaction;
      if (!noiLiveClientTransaction)
      {
        goto LABEL_19;
      }

      self->_noiLiveClientTransaction = 0;

      v25 = noiLogHandle;
      if (!os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *buf = 134217984;
      v36 = self;
      v26 = "%p now not holding os_transaction for noi_live_clients";
    }

    else
    {
      if (self->xpcShutdown)
      {
        goto LABEL_19;
      }

      if (self->_noiLiveClientTransaction)
      {
        goto LABEL_19;
      }

      v23 = os_transaction_create();
      v24 = self->_noiLiveClientTransaction;
      self->_noiLiveClientTransaction = v23;

      v25 = noiLogHandle;
      if (!os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *buf = 134217984;
      v36 = self;
      v26 = "%p now holding os_transaction for noi_live_clients";
    }

    _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_DEFAULT, v26, buf, 0xCu);
  }

LABEL_19:

  objc_sync_exit(v10);
  v22 = *MEMORY[0x277D85DE8];
}

- (id)_clientNOIEvent:(id)a3 forNOIs:(id)a4 isAddEvent:(BOOL)a5
{
  v5 = a5;
  v72 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v52 = a4;
  v53 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:3];
  v9 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v8 processIdentifier];
    v12 = [v52 count];
    v13 = "remove";
    *buf = 134218754;
    v66 = 1024;
    v65 = self;
    if (v5)
    {
      v13 = "add";
    }

    v67 = v11;
    v68 = 2048;
    v69 = v12;
    v70 = 2080;
    v71 = v13;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "%p for pid: %d, %ld nois, client noi event: %s", buf, 0x26u);
  }

  obj = self->liveClients;
  objc_sync_enter(obj);
  v14 = self;
  liveClients = self->liveClients;
  v50 = v8;
  v16 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:v8];
  v17 = [(NSMutableDictionary *)liveClients objectForKeyedSubscript:v16];

  if (v17)
  {
    if (v5)
    {
      v60 = 0uLL;
      v61 = 0uLL;
      v58 = 0uLL;
      v59 = 0uLL;
      v18 = v52;
      v19 = [v18 countByEnumeratingWithState:&v58 objects:v63 count:16];
      if (v19)
      {
        v20 = *v59;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v59 != v20)
            {
              objc_enumerationMutation(v18);
            }

            v22 = *(*(&v58 + 1) + 8 * i);
            v23 = [v17 subscribedNOIs];
            v24 = [v23 member:v22];
            v25 = v24 == 0;

            if (v25)
            {
              [v22 addObserverForAllKeyPaths:v17];
              v29 = [v17 subscribedNOIs];
              [v29 addObject:v22];

              v26 = [v22 copy];
              [v53 addObject:v26];
              v30 = noiLogHandle;
              if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
              {
                v31 = [v17 connection];
                v32 = [v31 processIdentifier];
                *buf = 134218498;
                v65 = v14;
                v66 = 1024;
                v67 = v32;
                v68 = 2112;
                v69 = v26;
                _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_INFO, "%p NOI client[%d] subscribed to noi %@", buf, 0x1Cu);
              }
            }

            else
            {
              v26 = noiLogHandle;
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                v27 = [v17 connection];
                v28 = [v27 processIdentifier];
                *buf = 134218498;
                v65 = v14;
                v66 = 1024;
                v67 = v28;
                v68 = 2112;
                v69 = v22;
                _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEFAULT, "%p NOI client[%d] already has noi %@", buf, 0x1Cu);
              }
            }
          }

          v19 = [v18 countByEnumeratingWithState:&v58 objects:v63 count:16];
        }

        while (v19);
      }
    }

    else
    {
      v56 = 0uLL;
      v57 = 0uLL;
      v54 = 0uLL;
      v55 = 0uLL;
      v18 = v52;
      v35 = [v18 countByEnumeratingWithState:&v54 objects:v62 count:16];
      if (v35)
      {
        v36 = *v55;
        do
        {
          for (j = 0; j != v35; ++j)
          {
            if (*v55 != v36)
            {
              objc_enumerationMutation(v18);
            }

            v38 = *(*(&v54 + 1) + 8 * j);
            v39 = [v17 subscribedNOIs];
            v40 = [v39 member:v38];

            if (v40)
            {
              [v38 removeObserverForAllKeyPaths:v17];
              v41 = [v17 subscribedNOIs];
              [v41 removeObject:v38];

              v42 = [v38 copy];
              [v53 addObject:v42];
              v43 = noiLogHandle;
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
              {
                v44 = [v17 connection];
                v45 = [v44 processIdentifier];
                *buf = 134218498;
                v65 = v14;
                v66 = 1024;
                v67 = v45;
                v68 = 2112;
                v69 = v42;
                _os_log_impl(&dword_23255B000, v43, OS_LOG_TYPE_DEBUG, "%p NOI client[%d] unsubscribed from noi %@", buf, 0x1Cu);
              }
            }

            else
            {
              v42 = noiLogHandle;
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                v46 = [v17 connection];
                v47 = [v46 processIdentifier];
                *buf = 134218498;
                v65 = v14;
                v66 = 1024;
                v67 = v47;
                v68 = 2112;
                v69 = v38;
                _os_log_impl(&dword_23255B000, v42, OS_LOG_TYPE_DEFAULT, "%p NOI client[%d] cannot remove this noi because it does not have one: %@", buf, 0x1Cu);
              }
            }
          }

          v35 = [v18 countByEnumeratingWithState:&v54 objects:v62 count:16];
        }

        while (v35);
      }
    }
  }

  else
  {
    v18 = noiLogHandle;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v33 = [0 connection];
      v34 = [v33 processIdentifier];
      *buf = 134218496;
      v65 = v14;
      v66 = 1024;
      v67 = v5;
      v68 = 1024;
      LODWORD(v69) = v34;
      _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEFAULT, "%p event: %d: NOI client[%d] unknown", buf, 0x18u);
    }
  }

  objc_sync_exit(obj);
  v48 = *MEMORY[0x277D85DE8];

  return v53;
}

- (void)_bottomUpNOIEvent:(id)a3 withInfo:(id)a4
{
  v103 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v82 = self;
  v83 = a4;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  obj = self->managedNOIs;
  v7 = [(NSMutableSet *)obj countByEnumeratingWithState:&v94 objects:v102 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v95;
    v80 = v6;
    do
    {
      v10 = 0;
      do
      {
        if (*v95 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v94 + 1) + 8 * v10);
        if ([v11 functionalInterfaceType] == 5 && (objc_msgSend(v6, "isEqualToString:", @"kNotificationNewConnectivityEpochCell") & 1) != 0 || objc_msgSend(v11, "functionalInterfaceType") == 3 && (objc_msgSend(v6, "isEqualToString:", @"kNotificationNewConnectivityEpochWiFi") & 1) != 0 || objc_msgSend(v11, "functionalInterfaceType") == 2 && (objc_msgSend(v6, "isEqualToString:", @"kNotificationNewConnectivityEpochWired") & 1) != 0 || objc_msgSend(v11, "functionalInterfaceType") == 7 && objc_msgSend(v6, "isEqualToString:", @"kNotificationNewConnectivityEpochCompanionLink"))
        {
          if ([v11 isAny])
          {
            v12 = [v83 objectForKeyedSubscript:@"State"];
            v13 = [v12 BOOLValue];

            v14 = noiLogHandle;
            if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              v15 = v14;
              v16 = [v11 isTrafficEligible];
              *buf = 134219010;
              *v99 = v82;
              *&v99[8] = 2112;
              *&v99[10] = v6;
              *&v99[18] = 2112;
              *v100 = v11;
              *&v100[8] = 1024;
              *v101 = v16;
              *&v101[4] = 1024;
              *&v101[6] = v13;
              _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEFAULT, "%p event: %@, noi: %@, fastpath, current elig: %d, new elig: %d", buf, 0x2Cu);
            }

            [v11 setIsTrafficEligible:v13];
          }

          else
          {
            v85 = [v11 functionalInterfaceType];
            v84 = [v11 isAny];
            v17 = [v11 isBuiltin];
            v18 = v10;
            v19 = v9;
            v20 = v8;
            v21 = [v11 scopedToLOI];
            v22 = [v11 customSignature];
            v23 = [(AnalyticsEngineCore *)v82 queue];
            v91[0] = MEMORY[0x277D85DD0];
            v91[1] = 3221225472;
            v91[2] = __49__NOIAnalyticsEngine__bottomUpNOIEvent_withInfo___block_invoke;
            v91[3] = &unk_27898BAD0;
            v91[4] = v82;
            v6 = v80;
            v92 = v80;
            v93 = v11;
            v24 = v21;
            v8 = v20;
            v9 = v19;
            v10 = v18;
            [NetworkAnalyticsEngine hasNetworkAttachmentOn:v85 isAny:v84 isBuiltin:v17 scopedToLOI:v24 hasCustomSignature:v22 queue:v23 reply:v91];
          }

          goto LABEL_55;
        }

        if ([v11 functionalInterfaceType] == 5 && objc_msgSend(v6, "isEqualToString:", @"kNotificationCellLinkStateReportCapable"))
        {
          v25 = [v83 objectForKeyedSubscript:@"State"];
          [v11 setWillGetDiscretionaryTrafficInvites:{objc_msgSend(v25, "BOOLValue")}];
LABEL_54:

          goto LABEL_55;
        }

        if ([v11 functionalInterfaceType] != 5 || !objc_msgSend(v6, "isEqualToString:", @"kNotificationCellLinkStateChange"))
        {
          if ([v11 functionalInterfaceType] == 3 && objc_msgSend(v6, "isEqualToString:", @"fallbackRecommendation"))
          {
            v38 = [v83 objectForKeyedSubscript:@"detail"];
            v39 = [v38 integerValue];

            [v11 setConsiderAlternate:v39];
            goto LABEL_55;
          }

          if ([v11 functionalInterfaceType] == 3 && objc_msgSend(v6, "isEqualToString:", @"considerAlternateUpdate"))
          {
            v40 = [v83 objectForKeyedSubscript:@"updateDetail"];
            v41 = [objc_alloc(MEMORY[0x277D6B3E8]) initWithDictionary:v40];
            [v11 setConsiderAlternateUpdate:v41];

            v42 = noiLogHandle;
            if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              v43 = v42;
              v44 = [v11 considerAlternateUpdate];
              *buf = 138412290;
              *v99 = v44;
              _os_log_impl(&dword_23255B000, v43, OS_LOG_TYPE_DEFAULT, "Consider alternate update: %@", buf, 0xCu);
            }
          }

          else
          {
            if ([v11 isAny])
            {
              if (![v11 flags])
              {
                if ([v6 isEqualToString:@"kNotificationNewPrimaryInterface"])
                {
                  v45 = [v83 objectForKeyedSubscript:@"Detail"];
                  v46 = [v45 integerValue];

                  if ([v11 interface] == v46)
                  {
                    if ([v11 functionalInterfaceType] != 7 || (objc_msgSend(v83, "objectForKeyedSubscript:", @"kNotificationNewConnectivityEpochCompanionLink"), v47 = objc_claimAutoreleasedReturnValue(), v48 = objc_msgSend(v47, "BOOLValue"), v47, v48))
                    {
                      [(NOIAnalyticsEngine *)v82 _evalPostingNotificationForNOI:v11 forEvent:@"kNotificationNewPrimaryInterface" withInfo:v83];
                      goto LABEL_92;
                    }
                  }
                }
              }
            }

            if ([v6 isEqualToString:@"notificationNewModelGenerated"])
            {
              v25 = +[NetworkAnalyticsModel modelGeneratedAt];
              [v11 setPredictionsGeneratedAt:v25];
              goto LABEL_54;
            }
          }

          goto LABEL_55;
        }

        v26 = [v83 objectForKeyedSubscript:@"Detail"];
        v86 = [v26 BOOLValue];

        v27 = [v83 objectForKeyedSubscript:@"State"];
        v28 = [v27 BOOLValue];

        v29 = [v83 objectForKeyedSubscript:@"StateChangeTimestamp"];
        [v29 doubleValue];
        v31 = v30;

        if (v28 && ([v11 willGetDiscretionaryTrafficInvites] & 1) == 0)
        {
          [v11 setWillGetDiscretionaryTrafficInvites:1];
        }

        [v11 setDiscretionaryTrafficInvited:v28];
        if (rrcStateChangeTimestamp < (v31 * 1000.0))
        {
          [(NOIAnalyticsEngine *)v82 _updateRrcStateChangeTimestamp:(v31 * 1000.0) forRrcState:v28];
        }

        if (![v11 isAny] || (objc_msgSend(v11, "flags") & 1) != 0)
        {
          goto LABEL_55;
        }

        v32 = mach_absolute_time();
        v33 = noiLogHandle;
        if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67110146;
          *v99 = v28;
          *&v99[4] = 2048;
          *&v99[6] = v32;
          *&v99[14] = 1024;
          *&v99[16] = v86;
          *v100 = 2048;
          *&v100[2] = v11;
          *v101 = 2112;
          *&v101[2] = v11;
          _os_log_impl(&dword_23255B000, v33, OS_LOG_TYPE_DEFAULT, "RRC Metric: RRC state %d, mach time %llu, isBBUpdate %d <%p> (%@)", buf, 0x2Cu);
        }

        if (v28)
        {
          if (v86 && v82->_startConnectionTimestamp)
          {
            goto LABEL_69;
          }

          v82->_startConnectionTimestamp = v32;
          v34 = noiLogHandle;
          if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            startConnectionTimestamp = v82->_startConnectionTimestamp;
            *buf = 134217984;
            *v99 = startConnectionTimestamp;
            v36 = v34;
            v37 = "RRC Metric: _startConnectionTimestamp %llu";
LABEL_67:
            _os_log_impl(&dword_23255B000, v36, OS_LOG_TYPE_DEFAULT, v37, buf, 0xCu);
          }
        }

        else
        {
          v49 = v82;
          if (v86)
          {
            if (!v82->_startConnectionTimestamp)
            {
              goto LABEL_68;
            }

            v50 = +[IOKitHandler sharedInstance];
            v51 = [v50 mostRecentAPSleepMachTime];

            if (v51 <= v82->_startConnectionTimestamp)
            {
              v54 = noiLogHandle;
              v49 = v82;
              if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                v55 = v82->_startConnectionTimestamp;
                *buf = 134218240;
                *v99 = v51;
                *&v99[8] = 2048;
                *&v99[10] = v55;
                _os_log_impl(&dword_23255B000, v54, OS_LOG_TYPE_DEFAULT, "RRC Metric: BB update apSleepTime (%llu) is less than startConnectionTime (%llu)!! Setting _lastDisconnectTime to now", buf, 0x16u);
              }
            }

            else
            {
              v32 = v51;
            }

            v49->_lastDisconnectTimestamp = v32;
            v49->_startConnectionTimestamp = 0;
            v56 = noiLogHandle;
            if (!os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_68;
            }

            lastDisconnectTimestamp = v49->_lastDisconnectTimestamp;
            *buf = 134217984;
            *v99 = lastDisconnectTimestamp;
            v36 = v56;
            v37 = "RRC Metric: BB update _lastDisconnectTimestamp %llu";
            goto LABEL_67;
          }

          v82->_lastDisconnectTimestamp = v32;
          v82->_startConnectionTimestamp = 0;
          v52 = noiLogHandle;
          if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            v53 = v82->_lastDisconnectTimestamp;
            *buf = 134217984;
            *v99 = v53;
            v36 = v52;
            v37 = "RRC Metric: _lastDisconnectTimestamp %llu";
            goto LABEL_67;
          }
        }

LABEL_68:
        v6 = v80;
LABEL_69:
        v58 = [v11 hasForegroundActivity];
        v59 = [v58 BOOLValue];

        if (v59)
        {
          goto LABEL_55;
        }

        v60 = +[PowerStateRelay defaultRelay];
        v61 = [v60 pluggedIn];

        v62 = noiLogHandle;
        if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *v99 = v28;
          *&v99[4] = 1024;
          *&v99[6] = v61;
          _os_log_impl(&dword_23255B000, v62, OS_LOG_TYPE_DEFAULT, "RRC Metric: no foregroundActivity, RRC state %d, pluggedIn %d", buf, 0xEu);
        }

        if (!(v61 & 1 | ((v28 & 1) == 0)) && (!v86 || !v82->_startBackgroundConnectionTimestamp))
        {
          v82->_startBackgroundConnectionTimestamp = v82->_startConnectionTimestamp;
          v70 = noiLogHandle;
          if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            startBackgroundConnectionTimestamp = v82->_startBackgroundConnectionTimestamp;
            *buf = 134217984;
            *v99 = startBackgroundConnectionTimestamp;
            _os_log_impl(&dword_23255B000, v70, OS_LOG_TYPE_DEFAULT, "RRC Metric: _startBackgroundConnectionTimestamp %llu", buf, 0xCu);
          }

          +[AppTracker beginTrafficClassFlowSnapshot];
          v72 = v82->_lastDisconnectTimestamp;
          if (v72)
          {
            v82->_lastDisconnectedSecs = secondsFromMachAbsoluteTime(v82->_startBackgroundConnectionTimestamp - v72);
            v73 = noiLogHandle;
            if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              lastDisconnectedSecs = v82->_lastDisconnectedSecs;
              *buf = 134217984;
              *v99 = lastDisconnectedSecs;
              _os_log_impl(&dword_23255B000, v73, OS_LOG_TYPE_DEFAULT, "RRC Metric: updated _lastDisconnectedSecs to %llu", buf, 0xCu);
            }
          }

          v82->_ingressLQM = [NetworkAnalyticsEngine getLoadedLQMOn:5];
          v75 = noiLogHandle;
          if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23255B000, v75, OS_LOG_TYPE_DEFAULT, "RRC Metric: query layer2 ingressMetric", buf, 2u);
          }

          v76 = [v11 functionalInterfaceType];
          v77 = [(AnalyticsEngineCore *)v82 queue];
          v90[0] = MEMORY[0x277D85DD0];
          v90[1] = 3221225472;
          v90[2] = __49__NOIAnalyticsEngine__bottomUpNOIEvent_withInfo___block_invoke_92;
          v90[3] = &unk_27898BAF8;
          v90[4] = v82;
          [NetworkAnalyticsEngine layer2MetricsOn:v76 queue:v77 reply:v90];

          goto LABEL_88;
        }

        if ((v28 & 1) == 0)
        {
          v63 = v82->_startBackgroundConnectionTimestamp;
          if (v63)
          {
            v64 = nanosecondsFromMachAbsoluteTime(v82->_lastDisconnectTimestamp - v63) / 0x3E8;
            v65 = [[SymptomsNetworkAnalyticsRRCConnectedPeriodMetric alloc] initWithPeriodType:2];
            [(NOIAnalyticsEngine *)v82 _collectBasicFieldsForRRCMetric:v65 durationUsecs:v64];
            v66 = noiLogHandle;
            if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v66, OS_LOG_TYPE_DEFAULT, "RRC Metric: query layer2 egressMetric", buf, 2u);
            }

            v67 = [v11 functionalInterfaceType];
            v68 = [(AnalyticsEngineCore *)v82 queue];
            v87[0] = MEMORY[0x277D85DD0];
            v87[1] = 3221225472;
            v87[2] = __49__NOIAnalyticsEngine__bottomUpNOIEvent_withInfo___block_invoke_95;
            v87[3] = &unk_27898BB68;
            v87[4] = v82;
            v88 = v65;
            v89 = v64;
            v69 = v65;
            [NetworkAnalyticsEngine layer2MetricsOn:v67 queue:v68 reply:v87];

LABEL_88:
            v6 = v80;
          }
        }

LABEL_55:
        ++v10;
      }

      while (v8 != v10);
      v78 = [(NSMutableSet *)obj countByEnumeratingWithState:&v94 objects:v102 count:16];
      v8 = v78;
    }

    while (v78);
  }

LABEL_92:

  v79 = *MEMORY[0x277D85DE8];
}

uint64_t __49__NOIAnalyticsEngine__bottomUpNOIEvent_withInfo___block_invoke(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = v4;
    v11 = 134219010;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    v17 = 1024;
    v18 = [v7 isTrafficEligible];
    v19 = 1024;
    v20 = a2;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "%p event: %@, noi: %@, slowpath, current elig: %d, new elig: %d", &v11, 0x2Cu);
  }

  result = [*(a1 + 48) setIsTrafficEligible:a2];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void __49__NOIAnalyticsEngine__bottomUpNOIEvent_withInfo___block_invoke_92(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = noiLogHandle;
  if (v6)
  {
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_ERROR))
    {
      v21 = 138412546;
      v22 = v5;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "RRC Metric: error fetching layer2 ingressMetric %@, error %@", &v21, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v5;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "RRC Metric: reply layer2 ingressMetric %@", &v21, 0xCu);
    }

    v8 = [v5 objectForKeyedSubscript:*MEMORY[0x277D2CB28]];
    v9 = [v5 objectForKeyedSubscript:*MEMORY[0x277D2CB58]];
    v10 = [v5 objectForKeyedSubscript:*MEMORY[0x277D2CB38]];
    v11 = [v5 objectForKeyedSubscript:*MEMORY[0x277D2CB68]];
    v12 = [v5 objectForKeyedSubscript:*MEMORY[0x277D2CAF0]];
    v13 = [v5 objectForKeyedSubscript:*MEMORY[0x277D2CAD0]];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v14 = [v8 unsignedLongValue];
    }

    else
    {
      v14 = 0;
    }

    *(*(a1 + 32) + 232) = v14;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v15 = [v9 unsignedLongValue];
    }

    else
    {
      v15 = 0;
    }

    *(*(a1 + 32) + 240) = v15;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v16 = [v10 unsignedLongValue];
    }

    else
    {
      v16 = 0;
    }

    *(*(a1 + 32) + 248) = v16;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v17 = [v11 unsignedLongValue];
    }

    else
    {
      v17 = 0;
    }

    *(*(a1 + 32) + 256) = v17;
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v18 = [v12 unsignedLongValue];
    }

    else
    {
      v18 = 0;
    }

    *(*(a1 + 32) + 216) = v18;
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v19 = [v13 unsignedLongValue];
    }

    else
    {
      v19 = 0;
    }

    *(*(a1 + 32) + 224) = v19;
    *(*(a1 + 32) + 272) = 1;
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __49__NOIAnalyticsEngine__bottomUpNOIEvent_withInfo___block_invoke_95(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v24 = 0;
  if (v6)
  {
    v7 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *v26 = v5;
      *&v26[8] = 2112;
      *&v26[10] = v6;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "RRC Metric: error fetching layer2 egressMetric %@, error %@", buf, 0x16u);
    }

LABEL_10:
    v11 = [*(a1 + 32) queue];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __49__NOIAnalyticsEngine__bottomUpNOIEvent_withInfo___block_invoke_96;
    v20 = &unk_27898BB40;
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v21 = *(a1 + 32);
    v14 = v12;
    v15 = *(a1 + 48);
    v22 = v14;
    v23 = v15;
    [AppTracker endTrafficClassFlowSnapshot:v11 periodUsecs:v13 reply:&v17];

    goto LABEL_11;
  }

  if (*(*(a1 + 32) + 272) != 1)
  {
    goto LABEL_10;
  }

  v8 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v26 = v5;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "RRC Metric: reply layer2 egressMetric %@", buf, 0xCu);
  }

  [*(a1 + 32) _collectDataUsageFieldsForRRCMetric:*(a1 + 40) layer2EgressMetric:v5 underrun:&v24];
  if ((v24 & 1) == 0)
  {
    goto LABEL_10;
  }

  v9 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 40);
    *buf = 67109378;
    *v26 = v24;
    *&v26[4] = 2112;
    *&v26[6] = v10;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "RRC Metric: underrun %d, not posting rrcMetric %@", buf, 0x12u);
  }

LABEL_11:
  *(*(a1 + 32) + 192) = 0;
  [*(a1 + 32) _resetRRCMetricCounters];

  v16 = *MEMORY[0x277D85DE8];
}

void __49__NOIAnalyticsEngine__bottomUpNOIEvent_withInfo___block_invoke_96(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [*(a1 + 32) _collectTrafficClassFieldsForRRCMetric:*(a1 + 40) activeApps:a4 trafficClassFlags:a2 durationUsecs:a3];
  [*(a1 + 40) postCAEvent];
  v6 = +[SystemProperties sharedInstance];
  v7 = [v6 internalBuild];

  if (a4 && v7 && *(a1 + 48) >= 0xD693A401uLL)
  {
    v8 = +[BitmapRetriever sharedInstance];
    v9 = SFGetStandardQueue(1);
    v10 = [*(a1 + 32) queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __49__NOIAnalyticsEngine__bottomUpNOIEvent_withInfo___block_invoke_2;
    v11[3] = &__block_descriptor_40_e22_v16__0__NSDictionary_8l;
    v11[4] = *(a1 + 48);
    [v8 tallyUpActivityBitmapsForInterface:5 queue:v9 replyQueue:v10 reply:v11];
  }
}

void __49__NOIAnalyticsEngine__bottomUpNOIEvent_withInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32) / 0xF4240uLL;
    v13 = 134218242;
    v14 = v5;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "RRC Up for %llu seconds. EgregiousOffenders are %@", &v13, 0x16u);
  }

  if ([v3 count])
  {
    v6 = v3;
    if (v6 && [MEMORY[0x277CCAAA0] isValidJSONObject:v6] && (objc_msgSend(MEMORY[0x277CCAAA0], "dataWithJSONObject:options:error:", v6, 0, 0), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = v7;
      v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
    }

    else
    {
      v9 = 0;
    }

    if ([v9 length])
    {
      v10 = [v9 UTF8String];
      internal_symptom_new(405505);
      v11 = *(a1 + 32);
      internal_symptom_set_qualifier();
      [v6 count];
      internal_symptom_set_qualifier();
      strlen(v10);
      internal_symptom_set_additional_qualifier();
      internal_symptom_send();
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_observeStateRelays
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [NetworkStateRelay getStateRelayFor:3];
  wifiRelay = self->_wifiRelay;
  self->_wifiRelay = v3;

  v5 = self->_wifiRelay;
  if (v5)
  {
    [(NetworkStateRelay *)v5 addObserver:self forKeyPath:@"linkQuality" options:5 context:0];
    [(NetworkStateRelay *)self->_wifiRelay addObserver:self forKeyPath:@"radioTechnology" options:5 context:0];
  }

  v6 = [NetworkStateRelay getStateRelayFor:5];
  cellRelay = self->_cellRelay;
  self->_cellRelay = v6;

  v8 = self->_cellRelay;
  if (v8)
  {
    [(NetworkStateRelay *)v8 addObserver:self forKeyPath:@"linkQuality" options:5 context:0];
    [(NetworkStateRelay *)self->_cellRelay addObserver:self forKeyPath:@"powerCostDL" options:5 context:0];
    [(NetworkStateRelay *)self->_cellRelay addObserver:self forKeyPath:@"powerCostUL" options:5 context:0];
    [(NetworkStateRelay *)self->_cellRelay addObserver:self forKeyPath:@"radioTechnology" options:5 context:0];
  }

  v9 = [NetworkStateRelay getStateRelayFor:2];
  wiredRelay = self->_wiredRelay;
  self->_wiredRelay = v9;

  v11 = self->_wiredRelay;
  if (v11)
  {
    [(NetworkStateRelay *)v11 addObserver:self forKeyPath:@"linkQuality" options:7 context:0];
  }

  v12 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v13 = self->_wifiRelay;
    v14 = self->_cellRelay;
    v15 = self->_wiredRelay;
    companionLinkRelay = self->_companionLinkRelay;
    v18 = 134218752;
    v19 = v13;
    v20 = 2048;
    v21 = v14;
    v22 = 2048;
    v23 = v15;
    v24 = 2048;
    v25 = companionLinkRelay;
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "Observing StateRelays for loaded LQM change via linkQuality: wifi %p, cell %p, wired %p, companion link %p", &v18, 0x2Au);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = [(AnalyticsEngineCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__NOIAnalyticsEngine_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_27898A328;
  v14 = v9;
  v15 = self;
  v16 = v8;
  v11 = v8;
  v12 = v9;
  dispatch_async(v10, block);
}

void __69__NOIAnalyticsEngine_observeValueForKeyPath_ofObject_change_context___block_invoke(id *a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = a1[4];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v4 = *(a1[5] + 9);
    v5 = [v4 countByEnumeratingWithState:&v35 objects:v45 count:16];
    if (v5)
    {
      v7 = v5;
      v8 = *v36;
      *&v6 = 67109890;
      v34 = v6;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v36 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v35 + 1) + 8 * i);
          v11 = [v10 functionalInterfaceType];
          if (v11 == [v3 functionalInterfaceType])
          {
            if ([a1[6] isEqualToString:@"linkQuality"])
            {
              v12 = noiLogHandle;
              if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                v13 = v12;
                v14 = [v3 linkQuality];
                v15 = [v3 functionalInterfaceType];
                *buf = 134218498;
                *v40 = v14;
                *&v40[8] = 1024;
                *&v40[10] = v15;
                v41 = 2112;
                v42 = v10;
                _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "linkQuality changed to %ld as loaded LQM changed on interface type %hhu noi: %@", buf, 0x1Cu);
              }

              [v10 setLinkQuality:{+[NetworkAnalyticsEngine mapLinkQuality:](NetworkAnalyticsEngine, "mapLinkQuality:", objc_msgSend(v3, "linkQuality"))}];
              if ([v10 functionalInterfaceType] == 5)
              {
                if ([v10 linkQuality])
                {
                  [v10 setPowerCostDL:{+[NetworkAnalyticsEngine mapPowerCost:](NetworkAnalyticsEngine, "mapPowerCost:", objc_msgSend(v3, "powerCostDL"))}];
                  v16 = +[NetworkAnalyticsEngine mapPowerCost:](NetworkAnalyticsEngine, "mapPowerCost:", [v3 powerCostUL]);
                  v17 = v10;
                }

                else
                {
                  [v10 setPowerCostDL:0];
                  v17 = v10;
                  v16 = 0;
                }

                [v17 setPowerCostUL:v16];
              }

              else
              {
                [v10 anchorPowerCostToLinkQuality];
              }

              if ([v10 isAny] && !objc_msgSend(v10, "flags"))
              {
                [a1[5] _evalPostingNotificationForNOI:v10 forEvent:a1[6] withInfo:0];
              }
            }

            else if ([a1[6] isEqualToString:@"powerCostDL"])
            {
              v18 = noiLogHandle;
              if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                v19 = v18;
                v20 = [v3 powerCostDL];
                v21 = [v3 functionalInterfaceType];
                *buf = 67109634;
                *v40 = v20;
                *&v40[4] = 2048;
                *&v40[6] = v21;
                v41 = 2112;
                v42 = v10;
                _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "powerCostDL changed to %hhu as loaded LQM changed on interface type %ld noi: %@", buf, 0x1Cu);
              }

              [v10 setPowerCostDL:{+[NetworkAnalyticsEngine mapPowerCost:](NetworkAnalyticsEngine, "mapPowerCost:", objc_msgSend(v3, "powerCostDL"))}];
            }

            else if ([a1[6] isEqualToString:@"powerCostUL"])
            {
              v22 = noiLogHandle;
              if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                v23 = v22;
                v24 = [v3 powerCostUL];
                v25 = [v3 functionalInterfaceType];
                *buf = 67109634;
                *v40 = v24;
                *&v40[4] = 2048;
                *&v40[6] = v25;
                v41 = 2112;
                v42 = v10;
                _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEFAULT, "powerCostUL changed to %hhu as loaded LQM changed on interface type %ld noi: %@", buf, 0x1Cu);
              }

              [v10 setPowerCostUL:{+[NetworkAnalyticsEngine mapPowerCost:](NetworkAnalyticsEngine, "mapPowerCost:", objc_msgSend(v3, "powerCostUL"))}];
            }

            else if ([a1[6] isEqualToString:@"radioTechnology"])
            {
              [v10 setInterfaceClass:{+[NetworkAnalyticsEngine mapRadioTechnology:](NetworkAnalyticsEngine, "mapRadioTechnology:", objc_msgSend(v3, "radioTechnology"))}];
              v26 = noiLogHandle;
              if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                v27 = v26;
                v28 = [v3 radioTechnology];
                v29 = [v10 interfaceClass];
                v30 = [v3 functionalInterfaceType];
                *buf = v34;
                *v40 = v28;
                *&v40[4] = 2048;
                *&v40[6] = v29;
                v41 = 2048;
                v42 = v30;
                v43 = 2112;
                v44 = v10;
                _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_DEFAULT, "radioTechnology changed to %hhu, interfaceClass changed to %ld on interface type %ld noi: %@", buf, 0x26u);
              }
            }
          }
        }

        v7 = [v4 countByEnumeratingWithState:&v35 objects:v45 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v31 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_ERROR))
    {
      v32 = a1[4];
      *buf = 138412290;
      *v40 = v32;
      _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_ERROR, "Not StateRelay type of object %@", buf, 0xCu);
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_evalPostingNotificationForNOI:(id)a3 forEvent:(id)a4 withInfo:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __71__NOIAnalyticsEngine__evalPostingNotificationForNOI_forEvent_withInfo___block_invoke;
  v29[3] = &unk_27898A0C8;
  v29[4] = self;
  if (_evalPostingNotificationForNOI_forEvent_withInfo__onceToken != -1)
  {
    dispatch_once(&_evalPostingNotificationForNOI_forEvent_withInfo__onceToken, v29);
  }

  if (([v9 isEqualToString:@"linkQuality"] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"kNotificationNewPrimaryInterface"))
  {
    v11 = +[NetworkStateRelay getStateRelayFor:](NetworkStateRelay, "getStateRelayFor:", [v8 functionalInterfaceType]);
    v12 = +[NetworkAnalyticsEngine getLoadedLQMOn:](NetworkAnalyticsEngine, "getLoadedLQMOn:", [v8 functionalInterfaceType]);
    if ([v11 primary] && v12 >= 1)
    {
      v13 = _evalPostingNotificationForNOI_forEvent_withInfo__lastPrimaryQuality;
      v14 = [NetworkAnalyticsEngine mapLinkQuality:v12];
      v15 = v14;
      v16 = v13 >= 50 && v14 < 50 || v14 > 49 && v13 < 50;
      v20 = noiLogHandle;
      if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v21 = "not ";
        *buf = 138413570;
        v32 = 2112;
        v31 = v8;
        if (v16)
        {
          v21 = "";
        }

        v33 = v9;
        v34 = 2048;
        v35 = v13;
        v36 = 1024;
        v37 = v12;
        v38 = 2048;
        v39 = v15;
        v40 = 2080;
        v41 = v21;
        _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEFAULT, "noi: %@, event: %@, oldLoadedLqm: %ld, rawLoadedLqm: %d, newLoadedLqm: %ld, %sposting", buf, 0x3Au);
      }

      if (v16 && !_evalPostingNotificationForNOI_forEvent_withInfo__debouncing++)
      {
        v23 = dispatch_time(0, 1000000000);
        v24 = [(AnalyticsEngineCore *)self queue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __71__NOIAnalyticsEngine__evalPostingNotificationForNOI_forEvent_withInfo___block_invoke_107;
        block[3] = &unk_27898A7D0;
        v27 = v9;
        v28 = self;
        dispatch_after(v23, v24, block);
      }

      _evalPostingNotificationForNOI_forEvent_withInfo__lastPrimaryQuality = v15;
    }

    else
    {
      v17 = noiLogHandle;
      if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v31 = v8;
        v32 = 2112;
        v33 = v9;
        v34 = 1024;
        LODWORD(v35) = v12;
        _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "noi: %@, event: %@, rawLoadedLqm: %d, don't qualify", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v18 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v31 = v8;
      v32 = 2112;
      v33 = v9;
      _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEBUG, "noi: %@, event: %@, not a change in linkQuality or primary interface", buf, 0x16u);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __71__NOIAnalyticsEngine__evalPostingNotificationForNOI_forEvent_withInfo___block_invoke_107(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "debounced posting event: %@", &v6, 0xCu);
  }

  notify_set_state(*(*(a1 + 40) + 160), 0);
  result = notify_post(*MEMORY[0x277D6B4C0]);
  _evalPostingNotificationForNOI_forEvent_withInfo__debouncing = 0;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_resetRRCMetricCounters
{
  v3 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "RRC Metric: resetRRCMetricCounters", v4, 2u);
  }

  self->_ingressLQM = 0;
  self->_ingressBytesIn = 0;
  self->_ingressBytesOut = 0;
  self->_ingressPacketsIn = 0;
  self->_ingressPacketsOut = 0;
  self->_ingressDlThroughput = 0;
  self->_ingressUlThroughput = 0;
  self->_lastDisconnectedSecs = 0;
  self->_ingressMetricAvailable = 0;
}

- (BOOL)_initializeAllManagedNOIs
{
  v3 = +[NetworkAnalyticsModel modelGeneratedAt];
  v4 = [[SFNetworkOfInterest alloc] initWithSpec:5 isAny:1 isBuiltin:0 scopedToLOI:-1 flags:0 hasCustomSignature:0];
  v5 = v4;
  if (v4)
  {
    [(SFNetworkOfInterest *)v4 setPredictionsGeneratedAt:v3];
    [(NSMutableSet *)self->managedNOIs addObject:v5];
    [(SFNetworkOfInterest *)v5 setPowerCostDL:0];
    [(SFNetworkOfInterest *)v5 setPowerCostUL:0];
  }

  v6 = [[SFNetworkOfInterest alloc] initWithSpec:5 isAny:1 isBuiltin:0 scopedToLOI:-1 flags:1 hasCustomSignature:0];

  if (v6)
  {
    [(SFNetworkOfInterest *)v6 setPredictionsGeneratedAt:v3];
    [(NSMutableSet *)self->managedNOIs addObject:v6];
    [(SFNetworkOfInterest *)v6 setPowerCostDL:0];
    [(SFNetworkOfInterest *)v6 setPowerCostUL:0];
  }

  v7 = [[SFNetworkOfInterest alloc] initWithSpec:3 isAny:1 isBuiltin:0 scopedToLOI:-1 flags:0 hasCustomSignature:0];

  if (v7)
  {
    [(SFNetworkOfInterest *)v7 setPredictionsGeneratedAt:v3];
    [(NSMutableSet *)self->managedNOIs addObject:v7];
    [(SFNetworkOfInterest *)v7 anchorPowerCostToLinkQuality];
  }

  v8 = [[SFNetworkOfInterest alloc] initWithSpec:3 isAny:1 isBuiltin:0 scopedToLOI:-1 flags:1 hasCustomSignature:0];

  if (v8)
  {
    [(SFNetworkOfInterest *)v8 setPredictionsGeneratedAt:v3];
    [(NSMutableSet *)self->managedNOIs addObject:v8];
    [(SFNetworkOfInterest *)v8 anchorPowerCostToLinkQuality];
  }

  v9 = [[SFNetworkOfInterest alloc] initWithSpec:2 isAny:1 isBuiltin:0 scopedToLOI:-1 flags:0 hasCustomSignature:0];

  if (v9)
  {
    [(NSMutableSet *)self->managedNOIs addObject:v9];
    [(SFNetworkOfInterest *)v9 anchorPowerCostToLinkQuality];
  }

  v10 = [[SFNetworkOfInterest alloc] initWithSpec:5 isAny:0 isBuiltin:1 scopedToLOI:0 flags:0 hasCustomSignature:0];

  if (v10)
  {
    [(NSMutableSet *)self->managedNOIs addObject:v10];
    [(SFNetworkOfInterest *)v10 setPowerCostDL:0];
    [(SFNetworkOfInterest *)v10 setPowerCostUL:0];
  }

  v11 = [[SFNetworkOfInterest alloc] initWithSpec:5 isAny:0 isBuiltin:1 scopedToLOI:1 flags:0 hasCustomSignature:0];

  if (v11)
  {
    [(NSMutableSet *)self->managedNOIs addObject:v11];
    [(SFNetworkOfInterest *)v11 setPowerCostDL:0];
    [(SFNetworkOfInterest *)v11 setPowerCostUL:0];
  }

  v12 = [[SFNetworkOfInterest alloc] initWithSpec:3 isAny:0 isBuiltin:1 scopedToLOI:0 flags:0 hasCustomSignature:0];

  if (v12)
  {
    [(NSMutableSet *)self->managedNOIs addObject:v12];
    [(SFNetworkOfInterest *)v12 anchorPowerCostToLinkQuality];
  }

  v13 = [[SFNetworkOfInterest alloc] initWithSpec:3 isAny:0 isBuiltin:1 scopedToLOI:1 flags:0 hasCustomSignature:0];

  if (v13)
  {
    [(NSMutableSet *)self->managedNOIs addObject:v13];
    [(SFNetworkOfInterest *)v13 anchorPowerCostToLinkQuality];
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = 0;
  v14 = [MEMORY[0x277CCAB98] defaultCenter];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __47__NOIAnalyticsEngine__initializeAllManagedNOIs__block_invoke;
  v18[3] = &unk_27898BBE0;
  v18[4] = self;
  v18[5] = &v19;
  v15 = [v14 addObserverForName:@"stateRelay" object:0 queue:0 usingBlock:v18];
  v16 = v20[5];
  v20[5] = v15;

  _Block_object_dispose(&v19, 8);
  return 1;
}

uint64_t __47__NOIAnalyticsEngine__initializeAllManagedNOIs__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 removeObserver:*(*(*(a1 + 40) + 8) + 40)];

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = *(a1 + 32);
  v6 = *(v5 + 72);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__NOIAnalyticsEngine__initializeAllManagedNOIs__block_invoke_2;
  v8[3] = &unk_27898BBB8;
  v8[4] = v5;
  return [v6 enumerateObjectsUsingBlock:v8];
}

void __47__NOIAnalyticsEngine__initializeAllManagedNOIs__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 functionalInterfaceType];
  v5 = [v3 isAny];
  v6 = [v3 isBuiltin];
  v7 = [v3 scopedToLOI];
  v8 = [v3 customSignature];
  v9 = [*(a1 + 32) queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__NOIAnalyticsEngine__initializeAllManagedNOIs__block_invoke_3;
  v11[3] = &unk_27898BB90;
  v12 = v3;
  v10 = v3;
  [NetworkAnalyticsEngine hasNetworkAttachmentOn:v4 isAny:v5 isBuiltin:v6 scopedToLOI:v7 hasCustomSignature:v8 queue:v9 reply:v11];
}

- (id)_validatedNOIs:(id)a3 orPredicate:(id)a4
{
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:4];
  managedNOIs = self->managedNOIs;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __49__NOIAnalyticsEngine__validatedNOIs_orPredicate___block_invoke;
  v13[3] = &unk_27898BC08;
  v14 = v5;
  v8 = v6;
  v15 = v8;
  v9 = v5;
  [(NSMutableSet *)managedNOIs enumerateObjectsUsingBlock:v13];
  v10 = v15;
  v11 = v8;

  return v8;
}

void __49__NOIAnalyticsEngine__validatedNOIs_orPredicate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEqual:*(a1 + 32)])
  {
    [*(a1 + 40) addObject:v3];
  }
}

- (void)subscribeToNOIsFor:(id)a3 orPredicate:(id)a4 options:(id)a5 connection:(id)a6
{
  v21 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a6;
  v11 = [(NOIAnalyticsEngine *)self _validatedNOIs:v9 orPredicate:a4];
  v12 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v15 = 134218498;
    v16 = self;
    v17 = 2112;
    v18 = v9;
    v19 = 2048;
    v20 = [v11 count];
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "%p subscribe to NOI: %@, found %lu", &v15, 0x20u);
  }

  [(NOIAnalyticsEngine *)self _coreNOIMembershipChangeOn:v10 forNOIs:v11 isAddEvent:1];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)inquireNOIFor:(id)a3 orPredicate:(id)a4 requestedKeys:(id)a5 options:(id)a6 connection:(id)a7 reply:(id)a8
{
  v71 = *MEMORY[0x277D85DE8];
  *&v56 = a3;
  *(&v56 + 1) = a4;
  v14 = a5;
  v15 = a6;
  v63 = v15;
  v16 = a7;
  v17 = a8;
  v62 = v17;
  context = objc_autoreleasePoolPush();
  v18 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v66 = self;
    v67 = 2112;
    v68 = v14;
    v69 = 2112;
    v70 = v15;
    _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEFAULT, "%p keys: %@, opt: %@", buf, 0x20u);
  }

  if (v56 == 0)
  {
    v34 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:2 userInfo:0];
LABEL_29:
    v35 = 0;
    goto LABEL_30;
  }

  v54 = self;
  v19 = MEMORY[0x277CBEB98];
  v20 = [v14 allKeys];
  v51 = [v19 setWithArray:v20];

  if (([v51 isSubsetOfSet:supportedKeys] & 1) == 0)
  {
    v34 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];

    goto LABEL_29;
  }

  v48 = [(NOIAnalyticsEngine *)self _validatedNOIs:v56 orPredicate:?];
  if ([v48 count] != 1)
  {
    v34 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:2 userInfo:0];

    goto LABEL_29;
  }

  v61 = [v48 anyObject];
  v55 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = [v14 allKeys];
  v21 = [obj countByEnumeratingWithState:&v57 objects:v64 count:16];
  if (v21)
  {
    v50 = 0;
    v22 = *v58;
    v23 = &realTimeLqm;
    v47 = *MEMORY[0x277CCA5B8];
LABEL_8:
    v24 = 0;
    v49 = v21;
    while (1)
    {
      if (*v58 != v22)
      {
        objc_enumerationMutation(obj);
      }

      v25 = *(*(&v57 + 1) + 8 * v24);
      if ([v23[95] containsObject:v25])
      {
        v26 = [v16 processIdentifier];
        if (v26 >= 1)
        {
          v27 = pid_to_process_name(v26);
          v28 = v54->_predictionQueryClients;
          objc_sync_enter(v28);
          if (v27)
          {
            v29 = v27;
          }

          else
          {
            v29 = [MEMORY[0x277CBEB68] null];
          }

          v30 = v29;
          [(NSMutableSet *)v54->_predictionQueryClients addObject:v29];
          ++v54->_predictionQueryCount;

          v21 = v49;
          v23 = &realTimeLqm;
          objc_sync_exit(v28);
        }
      }

      if ([supportedAsyncKeys containsObject:v25])
      {
        break;
      }

      v31 = v61;
      NSSelectorFromString(v25);
      if (objc_opt_respondsToSelector())
      {
        [v31 setValue:0 forKey:v25];
        v32 = [v31 valueForKey:v25];
        if (v32)
        {
          [v55 setObject:v32 forKeyedSubscript:v25];
        }

        else
        {
          v33 = [MEMORY[0x277CCA9B8] errorWithDomain:v47 code:2 userInfo:0];

          v50 = v33;
        }
      }

      if (v21 == ++v24)
      {
        v21 = [obj countByEnumeratingWithState:&v57 objects:v64 count:16];
        if (v21)
        {
          goto LABEL_8;
        }

        v34 = v50;
        goto LABEL_44;
      }
    }

    v37 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v66 = v25;
      _os_log_impl(&dword_23255B000, v37, OS_LOG_TYPE_DEFAULT, "Operating on async key: %@", buf, 0xCu);
    }

    v38 = [v14 allKeys];
    v39 = [v38 count] > 1;

    if (v39)
    {

      v34 = [MEMORY[0x277CCA9B8] errorWithDomain:v47 code:7 userInfo:0];

      v40 = noiLogHandle;
      if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v66 = v25;
        _os_log_impl(&dword_23255B000, v40, OS_LOG_TYPE_DEFAULT, "Unable to operate on async key when multiple keys provided: %@", buf, 0xCu);
      }
    }

    else
    {
      v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:options:reply:", v25];
      v42 = NSSelectorFromString(v41);
      if (objc_opt_respondsToSelector())
      {
        v43 = MEMORY[0x277CBEAE8];
        v44 = [objc_opt_class() instanceMethodSignatureForSelector:v42];
        v45 = [v43 invocationWithMethodSignature:v44];

        [v45 setTarget:v54];
        [v45 setSelector:v42];
        [v45 setArgument:&v61 atIndex:2];
        [v45 setArgument:&v63 atIndex:3];
        [v45 setArgument:&v62 atIndex:4];
        [v45 invoke];

        v34 = v50;
        goto LABEL_31;
      }

      v46 = noiLogHandle;
      if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v66 = v25;
        _os_log_impl(&dword_23255B000, v46, OS_LOG_TYPE_DEFAULT, "Unable to operate on async key because object doesn't implement it: %@", buf, 0xCu);
      }

      v34 = [MEMORY[0x277CCA9B8] errorWithDomain:v47 code:2 userInfo:0];
    }

    v55 = 0;
  }

  else
  {
    v34 = 0;
  }

LABEL_44:

  v17 = v62;
  v35 = v55;
LABEL_30:
  v55 = v35;
  v17[2](v17);
LABEL_31:

  objc_autoreleasePoolPop(context);
  v36 = *MEMORY[0x277D85DE8];
}

- (void)unsubscribeToNOIs:(id)a3 connection:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:4];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(NOIAnalyticsEngine *)self _validatedNOIs:*(*(&v19 + 1) + 8 * v13) orPredicate:0, v19];
        if ([v14 count])
        {
          [v8 unionSet:v14];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v19 objects:v29 count:16];
    }

    while (v11);
  }

  v15 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    v17 = [v8 count];
    *buf = 134218498;
    v24 = self;
    v25 = 2112;
    v26 = v9;
    v27 = 2048;
    v28 = v17;
    _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, "%p unsubscribe to NOI: %@, found %lu", buf, 0x20u);
  }

  [(NOIAnalyticsEngine *)self _coreNOIMembershipChangeOn:v7 forNOIs:v8 isAddEvent:0, v19];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)auditableLinkQuality:(id)a3 options:(id)a4 reply:(id)a5
{
  v7 = a5;
  v8 = [a3 functionalInterfaceType];
  v9 = [(AnalyticsEngineCore *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__NOIAnalyticsEngine_auditableLinkQuality_options_reply___block_invoke;
  v11[3] = &unk_27898BC30;
  v12 = v7;
  v10 = v7;
  [NetworkAnalyticsEngine getAuditableLoadedLQMOn:v8 queue:v9 reply:v11];
}

void __57__NOIAnalyticsEngine_auditableLinkQuality_options_reply___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7 || v8)
  {
    v15 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v9;
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEFAULT, "returning error: %@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = [v7 mutableCopy];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{+[NetworkAnalyticsEngine mapLinkQuality:](NetworkAnalyticsEngine, "mapLinkQuality:", a2)}];
    [v10 setObject:v11 forKeyedSubscript:@"linkQuality"];

    v12 = [MEMORY[0x277CCABB0] numberWithInt:a2];
    [v10 setObject:v12 forKeyedSubscript:@"loadedLQM"];

    v17 = @"auditableLinkQuality";
    v18 = v10;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v14 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v13;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "returning: %@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)networkAttachmentInfo:(id)a3 options:(id)a4 reply:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [v8 functionalInterfaceType];
  v10 = [v8 scopedToLOI];

  v11 = [(AnalyticsEngineCore *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__NOIAnalyticsEngine_networkAttachmentInfo_options_reply___block_invoke;
  v13[3] = &unk_27898BC58;
  v14 = v7;
  v12 = v7;
  [NetworkAnalyticsEngine usageToLOICorrelationFor:v9 scopedToLOI:v10 queue:v11 reply:v13];
}

void __58__NOIAnalyticsEngine_networkAttachmentInfo_options_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "Error: %@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = [v5 copy];
    v12 = @"networkAttachmentInfo";
    v13 = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v10 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_INFO, "Correlation: %@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)l2ThroughputMetrics:(id)a3 options:(id)a4 reply:(id)a5
{
  v7 = a5;
  v8 = [a3 functionalInterfaceType];
  v9 = [(AnalyticsEngineCore *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__NOIAnalyticsEngine_l2ThroughputMetrics_options_reply___block_invoke;
  v11[3] = &unk_27898BC58;
  v12 = v7;
  v10 = v7;
  [NetworkAnalyticsEngine layer2MetricsOn:v8 queue:v9 reply:v11];
}

void __56__NOIAnalyticsEngine_l2ThroughputMetrics_options_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = v6;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "returning error: %@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  else if (v5)
  {
    v8 = MEMORY[0x277D2CAF8];
    v30[0] = *MEMORY[0x277D2CAF8];
    v27 = [v5 objectForKey:?];
    if (v27)
    {
      [v5 objectForKey:*v8];
    }

    else
    {
      [MEMORY[0x277CBEB68] null];
    }
    v26 = ;
    v31[0] = v26;
    v9 = MEMORY[0x277D2CAF0];
    v30[1] = *MEMORY[0x277D2CAF0];
    v25 = [v5 objectForKey:?];
    if (v25)
    {
      [v5 objectForKey:*v9];
    }

    else
    {
      [MEMORY[0x277CBEB68] null];
    }
    v24 = ;
    v31[1] = v24;
    v10 = MEMORY[0x277D2CAD8];
    v30[2] = *MEMORY[0x277D2CAD8];
    v23 = [v5 objectForKey:?];
    if (v23)
    {
      [v5 objectForKey:*v10];
    }

    else
    {
      [MEMORY[0x277CBEB68] null];
    }
    v32 = ;
    v11 = MEMORY[0x277D2CAD0];
    v30[3] = *MEMORY[0x277D2CAD0];
    v12 = [v5 objectForKey:v32];
    if (v12)
    {
      [v5 objectForKey:*v11];
    }

    else
    {
      [MEMORY[0x277CBEB68] null];
    }
    v13 = ;
    v33 = v13;
    v30[4] = @"RRCIdleULThroughputKbps";
    v14 = [v5 objectForKey:?];
    v15 = v14;
    if (!v14)
    {
      v15 = [MEMORY[0x277CBEB68] null];
    }

    v34 = v15;
    v30[5] = @"RRCIdleDLThroughputKbps";
    v16 = [v5 objectForKey:?];
    v17 = v16;
    if (!v16)
    {
      v17 = [MEMORY[0x277CBEB68] null];
    }

    v35 = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:6];
    if (!v16)
    {
    }

    if (!v14)
    {
    }

    v28 = @"l2ThroughputMetrics";
    v29 = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v20 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = v19;
      _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEFAULT, "returning: %@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)estTransferTime:(id)a3 options:(id)a4 reply:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 functionalInterfaceType];
  v11 = [(AnalyticsEngineCore *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__NOIAnalyticsEngine_estTransferTime_options_reply___block_invoke;
  v13[3] = &unk_27898BC58;
  v14 = v8;
  v12 = v8;
  [NetworkAnalyticsEngine estimatedTransferTimeOn:v10 forPayloadInfo:v9 queue:v11 reply:v13];
}

void __52__NOIAnalyticsEngine_estTransferTime_options_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 32) + 16))();
    v7 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v6;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "eLQM: Returning data transfer time error = %@", buf, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      v20[0] = @"kEstTransferTimeULSecs";
      v8 = [v5 objectForKey:?];
      v9 = v8;
      if (!v8)
      {
        v9 = [MEMORY[0x277CBEB68] null];
      }

      v21[0] = v9;
      v20[1] = @"kEstTransferTimeDLSecs";
      v10 = [v5 objectForKey:?];
      v11 = v10;
      if (!v10)
      {
        v11 = [MEMORY[0x277CBEB68] null];
      }

      v21[1] = v11;
      v20[2] = @"kEstTransferTimeConfidence";
      v12 = [v5 objectForKey:?];
      v13 = v12;
      if (!v12)
      {
        v13 = [MEMORY[0x277CBEB68] null];
      }

      v21[2] = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
      if (!v12)
      {
      }

      if (!v10)
      {
      }

      if (!v8)
      {
      }

      v18 = @"estTransferTime";
      v19 = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    }

    else
    {
      v15 = 0;
    }

    (*(*(a1 + 32) + 16))();
    v16 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v15;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, "eLQM: Returning data transfer time dictionary = %@", buf, 0xCu);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)canUseOnAlternate:(id)a3 options:(id)a4 reply:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 interface];
  v12 = [v9 objectForKeyedSubscript:@"arg1"];
  v13 = &v24;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  if (v12)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v13 = v25;
  }

  else
  {
    isKindOfClass = 0;
  }

  v27 = isKindOfClass & 1;
  if (*(v13 + 24) == 1)
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __54__NOIAnalyticsEngine_canUseOnAlternate_options_reply___block_invoke;
    v23[3] = &unk_27898BC80;
    v23[4] = &v24;
    [v12 enumerateKeysAndObjectsUsingBlock:v23];
  }

  else
  {
    v15 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = v12;
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "bundleNamesWithState is not an instance of NSDictionary: %@", buf, 0xCu);
    }
  }

  v16 = *(v25 + 24);
  if (v11 == 1 && (v25[3] & 1) != 0)
  {
    v17 = [(AnalyticsEngineCore *)self queue];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __54__NOIAnalyticsEngine_canUseOnAlternate_options_reply___block_invoke_120;
    v21[3] = &unk_27898BCA8;
    v22 = v10;
    [CellFallbackHandler canUseApps:v12 replyQueue:v17 reply:v21];

    v18 = v22;
  }

  else
  {
    if (((v11 != 1) & v25[3]) != 0)
    {
      v19 = 45;
    }

    else
    {
      v19 = 22;
    }

    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:v19 userInfo:0];
    (*(v10 + 2))(v10, 0, v18);
  }

  _Block_object_dispose(&v24, 8);
  v20 = *MEMORY[0x277D85DE8];
}

void __54__NOIAnalyticsEngine_canUseOnAlternate_options_reply___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
    v9 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412546;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "bundleNamesWithState contains invalid key-value pair: key %@, value %@", &v11, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __54__NOIAnalyticsEngine_canUseOnAlternate_options_reply___block_invoke_120(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v23 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a6;
  if (v11)
  {
    (*(*(a1 + 32) + 16))();
    v12 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v11;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "returning: error %@", buf, 0xCu);
    }
  }

  else
  {
    v19[0] = @"codes";
    v19[1] = @"reasons";
    v20[0] = v9;
    v20[1] = v10;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
    v17 = @"canUseOnAlternate";
    v18 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    (*(*(a1 + 32) + 16))();
    v15 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v14;
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEFAULT, "returning: %@", buf, 0xCu);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_getQueryStatistics:(id *)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = self->_predictionQueryClients;
  objc_sync_enter(v5);
  v6 = noiLogHandle;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    predictionQueryCount = self->_predictionQueryCount;
    v8 = [(NSMutableSet *)self->_predictionQueryClients count];
    v10 = 134218240;
    v11 = predictionQueryCount;
    v12 = 2048;
    v13 = v8;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "AWD Prediction Metrics: predictionQueryClients:%lu predictionQueryCount:%lu", &v10, 0x16u);
  }

  a3->var0 = [(NSMutableSet *)self->_predictionQueryClients count];
  a3->var1 = self->_predictionQueryCount;
  objc_sync_exit(v5);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_resetQueryStatistics
{
  v3 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "AWD Prediction Metrics: resetQueryStatistics", v5, 2u);
  }

  v4 = self->_predictionQueryClients;
  objc_sync_enter(v4);
  [(NSMutableSet *)self->_predictionQueryClients removeAllObjects];
  self->_predictionQueryCount = 0;
  objc_sync_exit(v4);
}

+ (id)queue
{
  v3 = sharedInstance_0;
  if (sharedInstance_0)
  {
    v3 = [sharedInstance_0 queue];
    v2 = vars8;
  }

  return v3;
}

+ (void)resetQueryStatistics
{
  if (sharedInstance_0)
  {
    [sharedInstance_0 _resetQueryStatistics];
  }
}

+ (void)getQueryStatistics:(id *)a3
{
  if (sharedInstance_0)
  {
    [sharedInstance_0 _getQueryStatistics:a3];
  }

  else
  {
    a3->var0 = 0;
    a3->var1 = 0;
  }
}

- (void)clientTransactionsRelease
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = self->liveClients;
  objc_sync_enter(v3);
  if ([(NSMutableDictionary *)self->liveClients count])
  {
    v4 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "NOI analytics engine xpc shutdown", &v8, 2u);
    }

    self->xpcShutdown = 1;
    noiLiveClientTransaction = self->_noiLiveClientTransaction;
    if (noiLiveClientTransaction)
    {
      self->_noiLiveClientTransaction = 0;

      v6 = noiLogHandle;
      if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 134217984;
        v9 = self;
        _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "%p now not holding os_transaction for noi_live_clients", &v8, 0xCu);
      }
    }
  }

  objc_sync_exit(v3);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_collectBasicFieldsForRRCMetric:(id)a3 durationUsecs:(unint64_t)a4
{
  v6 = a3;
  [v6 setPeriodDurationSecs:a4 / 0xF4240];
  [v6 setLastDisconnectedSecs:self->_lastDisconnectedSecs];
  [v6 setIngressLQM:self->_ingressLQM];
  [v6 setEgressLQM:{+[NetworkAnalyticsEngine getLoadedLQMOn:](NetworkAnalyticsEngine, "getLoadedLQMOn:", 5)}];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7 = self->liveClients;
  objc_sync_enter(v7);
  liveClients = self->liveClients;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__NOIAnalyticsEngine__collectBasicFieldsForRRCMetric_durationUsecs___block_invoke;
  v9[3] = &unk_27898BCD0;
  v9[4] = &v14;
  v9[5] = &v10;
  [(NSMutableDictionary *)liveClients enumerateKeysAndObjectsUsingBlock:v9];
  objc_sync_exit(v7);

  [v6 setAnyListenerCount:*(v11 + 6)];
  [v6 setBackgroundListenerCount:*(v15 + 6)];
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
}

void __68__NOIAnalyticsEngine__collectBasicFieldsForRRCMetric_durationUsecs___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [a3 subscribedNOIs];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v7 |= ([*(*(&v11 + 1) + 8 * i) flags] & 1) == 0;
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);

    if (v7)
    {
      ++*(*(*(a1 + 32) + 8) + 24);
    }

    ++*(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_collectDataUsageFieldsForRRCMetric:(id)a3 layer2EgressMetric:(id)a4 underrun:(BOOL *)a5
{
  v29 = a3;
  *a5 = 0;
  v8 = *MEMORY[0x277D2CB28];
  v9 = a4;
  v10 = [v9 objectForKeyedSubscript:v8];
  v11 = [v9 objectForKeyedSubscript:*MEMORY[0x277D2CB58]];
  v12 = [v9 objectForKeyedSubscript:*MEMORY[0x277D2CB38]];
  v13 = [v9 objectForKeyedSubscript:*MEMORY[0x277D2CB68]];
  v14 = [v9 objectForKeyedSubscript:*MEMORY[0x277D2CAF0]];
  v15 = [v9 objectForKeyedSubscript:*MEMORY[0x277D2CAD0]];

  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v16 = [v10 unsignedLongValue];
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v16 = 0;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = [v11 unsignedLongValue];
    if (!v12)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

LABEL_9:
  v28 = 0;
  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_10:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = [v12 unsignedLongValue];
    if (!v13)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

LABEL_13:
  v27 = 0;
  if (!v13)
  {
    goto LABEL_17;
  }

LABEL_14:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = [v13 unsignedLongValue];
    if (!v14)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

LABEL_17:
  v26 = 0;
  if (!v14)
  {
LABEL_20:
    v17 = 0;
    goto LABEL_21;
  }

LABEL_18:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_20;
  }

  v17 = [v14 unsignedLongValue];
LABEL_21:
  v25 = v17;
  if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v18 = [v15 unsignedLongValue];
  }

  else
  {
    v18 = 0;
  }

  ingressBytesIn = self->_ingressBytesIn;
  if (v16 >= ingressBytesIn && ([v29 setBytesIn:v16 - ingressBytesIn], ingressBytesOut = self->_ingressBytesOut, v28 >= ingressBytesOut) && (objc_msgSend(v29, "setBytesOut:", v28 - ingressBytesOut), ingressPacketsIn = self->_ingressPacketsIn, v27 >= ingressPacketsIn) && (objc_msgSend(v29, "setPacketsIn:", v27 - ingressPacketsIn), ingressPacketsOut = self->_ingressPacketsOut, v26 >= ingressPacketsOut))
  {
    [v29 setPacketsOut:v26 - ingressPacketsOut];
    [v29 setIngressUlThroughputBps:self->_ingressUlThroughput];
    [v29 setIngressDlThroughputBps:self->_ingressDlThroughput];
    v23 = [v29 periodDurationSecs];
    v24 = v23;
    if (!v18)
    {
      if (v23)
      {
        v18 = 8 * [v29 bytesIn] / v23;
      }

      else
      {
        v18 = 0;
      }
    }

    [v29 setEgressDlThroughputBps:v18];
    if (!v25 && v24)
    {
      [v29 bytesOut];
    }

    [v29 setEgressUlThroughputBps:?];
  }

  else
  {
    *a5 = 1;
  }
}

@end