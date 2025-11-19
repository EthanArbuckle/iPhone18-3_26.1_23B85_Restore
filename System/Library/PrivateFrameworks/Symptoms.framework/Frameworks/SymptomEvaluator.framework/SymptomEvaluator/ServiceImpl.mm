@interface ServiceImpl
- (BOOL)assertEntitlement:(id)a3 entitlement:(unint64_t)a4 orWaiveOnIntent:(id)a5;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (ServiceImpl)initWithQueue:(id)a3 noiEngine:(id)a4 isHelper:(BOOL)a5;
- (id)nwEndpointArrayFromXPCObject:(id)a3;
- (uint64_t)_checkRateLimitForConnection:(os_unfair_lock_s *)a1;
- (uint64_t)_isServiceReady;
- (void)_cacheEntitlementValuesForConnection:(id)a3;
- (void)_handleNOIClientForConnection:(void *)a1;
- (void)_serviceReadyCheckPointRelease;
- (void)abortRNFTestWithReply:(id)a3;
- (void)assertFactString:(id)a3 module:(id)a4 asSymptom:(BOOL)a5 reply:(id)a6;
- (void)cleanupNDFDeviceRecordsWithReply:(id)a3;
- (void)clientTransactionsRelease;
- (void)createSnapshotFor:(id)a3 pred:(id)a4 actions:(id)a5 reply:(id)a6;
- (void)dealloc;
- (void)donateBiomeEventForEdgeSelectionWithPrefix:(id)a3 interfaceType:(id)a4 radioType:(id)a5 radioBand:(id)a6 latitude:(double)a7 longitude:(double)a8 reply:(id)a9;
- (void)fetchNDFDeviceRecordsWithReply:(id)a3;
- (void)getExpertSystemsStatus:(id)a3;
- (void)getNetworkBitmapsWithNames:(id)a3 startTime:(unint64_t)a4 endTime:(unint64_t)a5 options:(id)a6 reply:(id)a7;
- (void)getOption:(id)a3 inScopes:(id)a4 reply:(id)a5;
- (void)getPreferCellOverWiFiWithOptions:(id)a3 reply:(id)a4;
- (void)handlePendingXPCConnection:(uint64_t)a1;
- (void)identifierForUUID:(id)a3 reply:(id)a4;
- (void)inquireNOIFor:(id)a3 orPredicate:(id)a4 requestedKeys:(id)a5 options:(id)a6 reply:(id)a7;
- (void)listNDFDeviceObjectsWithIdentifier:(id)a3 reply:(id)a4;
- (void)ndfClientCheckInWithReply:(id)a3;
- (void)networkRestrictsMulticastTrafficWithReply:(id)a3;
- (void)performActionWithOptions:(id)a3 inScopes:(id)a4 reply:(id)a5;
- (void)performAppEndpointTrackingPeriodicTasksWithReply:(id)a3;
- (void)performAppExperiencePeriodicTasksWithReply:(id)a3;
- (void)performAppPeriodicTasksWithReply:(id)a3;
- (void)performAppTrackingPeriodicTasksWithReply:(id)a3;
- (void)performPersistentStoreHealthCheckWithReply:(id)a3;
- (void)performQueryOnEntity:(id)a3 fetchRequestProperties:(id)a4 pred:(id)a5 sort:(id)a6 actions:(id)a7 reply:(id)a8;
- (void)pingEndpoints:(id)a3 reply:(id)a4;
- (void)postCoreAnalyticsEvent:(id)a3 forEventName:(id)a4 reply:(id)a5;
- (void)remotePingToAddress:(id)a3 interface:(unint64_t)a4 interval:(double)a5 count:(int64_t)a6 timeout:(double)a7 reply:(id)a8;
- (void)resetDataFor:(id)a3 nameKind:(id)a4 inScopes:(id)a5 reply:(id)a6;
- (void)resetUsageFor:(id)a3 nameKind:(id)a4 reply:(id)a5;
- (void)resumePendingXPCConnections;
- (void)retrieveActivityMetrics:(id)a3 reply:(id)a4;
- (void)sendMessage:(id)a3 toEndpoints:(id)a4 reply:(id)a5;
- (void)sendPayloadToDaemonWithReply:(id)a3;
- (void)setOption:(id)a3 inScopes:(id)a4 reply:(id)a5;
- (void)setPreferCellOverWiFiWithOptions:(id)a3 reply:(id)a4;
- (void)setUsageOption:(id)a3 reply:(id)a4;
- (void)shutdown;
- (void)startRNFTestWithOptions:(id)a3 scenarioName:(id)a4 reply:(id)a5;
- (void)subscribeToNOIsFor:(id)a3 orPredicate:(id)a4 options:(id)a5;
- (void)trainModelAndScore:(BOOL)a3 lastScoreDate:(id)a4 reply:(id)a5;
- (void)triggerSendPayloadToDaemonWithInterval:(int64_t)a3 leeway:(int64_t)a4 reply:(id)a5;
- (void)unsubscribeToNOIs:(id)a3;
- (void)updatedNDFDeviceRecords:(id)a3 reply:(id)a4;
- (void)waitForOSLogErrorSymptomWithReply:(id)a3;
@end

@implementation ServiceImpl

- (uint64_t)_isServiceReady
{
  if (a1)
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x2020000000;
    v7 = 0;
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __30__ServiceImpl__isServiceReady__block_invoke;
    v3[3] = &unk_27898A848;
    v3[4] = a1;
    v3[5] = &v4;
    sf_synchronize(a1 + 18, v3);
    v1 = *(v5 + 24);
    _Block_object_dispose(&v4, 8);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t __30__ServiceImpl__isServiceReady__block_invoke(uint64_t result)
{
  *(*(*(result + 40) + 8) + 24) = *(*(result + 32) + 16) != 0;
  v1 = *(result + 32);
  if ((*(v1 + 64) & 1) == 0)
  {
    v2 = *(*(result + 40) + 8);
    v3 = *(v2 + 24) == 1 && *(v1 + 24) != 0;
    *(v2 + 24) = v3;
    v4 = *(*(result + 40) + 8);
    v5 = *(v4 + 24) == 1 && *(*(result + 32) + 8) != 0;
    *(v4 + 24) = v5;
  }

  return result;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (listener_shouldAcceptNewConnection__onceToken != -1)
  {
    [ServiceImpl listener:shouldAcceptNewConnection:];
  }

  v8 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v9 = v8;
    v10 = qos_class_self();
    v16 = 136315138;
    v17 = qos_string(v10);
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "ServiceImpl listener:shouldAcceptNewConnection: QoS %s", &v16, 0xCu);
  }

  [(ServiceImpl *)self _cacheEntitlementValuesForConnection:v7];
  if (!self->_isHelper)
  {
    [v7 setExportedInterface:listener_shouldAcceptNewConnection__extendedServiceInterface];
    [v7 setExportedObject:self];
LABEL_12:
    [(ServiceImpl *)self handlePendingXPCConnection:v7];
    v13 = 1;
    goto LABEL_9;
  }

  v11 = [(ServiceImpl *)self assertEntitlement:v7 entitlement:0 orWaiveOnIntent:0];
  v12 = [(ServiceImpl *)self assertEntitlement:v7 entitlement:1 orWaiveOnIntent:0];
  if (v11 || v12)
  {
    [v7 setExportedObject:self];
    [v7 setExportedInterface:listener_shouldAcceptNewConnection__extendedServiceInterface];
    goto LABEL_12;
  }

  v13 = 0;
LABEL_9:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

void __50__ServiceImpl_listener_shouldAcceptNewConnection___block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28480FB30];
  v1 = listener_shouldAcceptNewConnection__extendedServiceInterface;
  listener_shouldAcceptNewConnection__extendedServiceInterface = v0;

  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v10 = [v2 setWithObjects:{v3, v4, v5, objc_opt_class(), 0}];
  [listener_shouldAcceptNewConnection__extendedServiceInterface setClasses:v10 forSelector:sel_inquireNOIFor_orPredicate_requestedKeys_options_reply_ argumentIndex:3 ofReply:0];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [listener_shouldAcceptNewConnection__extendedServiceInterface setClasses:v8 forSelector:sel_unsubscribeToNOIs_ argumentIndex:0 ofReply:0];
  v9 = MEMORY[0x277D86440];
  [listener_shouldAcceptNewConnection__extendedServiceInterface setXPCType:MEMORY[0x277D86440] forSelector:sel_pingEndpoints_reply_ argumentIndex:0 ofReply:0];
  [listener_shouldAcceptNewConnection__extendedServiceInterface setXPCType:v9 forSelector:sel_sendMessage_toEndpoints_reply_ argumentIndex:1 ofReply:0];
}

- (void)_cacheEntitlementValuesForConnection:(id)a3
{
  v89 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v83 = 138477827;
    v84 = v3;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: Preparing to cache entitlements for: %{private}@", &v83, 0xCu);
  }

  v5 = objc_alloc_init(SFEntitlements);
  v6 = [(__CFString *)v3 valueForEntitlement:@"com.apple.symptom_analytics.train"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SFEntitlements setSymptomAnalyticsTrain:](v5, "setSymptomAnalyticsTrain:", [v6 BOOLValue]);
    v7 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v8 = v7;
      v9 = [(SFEntitlements *)v5 symptomAnalyticsTrain];
      v83 = 138478339;
      v84 = @"com.apple.symptom_analytics.train";
      v85 = 1024;
      v86 = v9;
      v87 = 2048;
      v88 = v3;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: caching entitlement %{private}@ = %d for %p", &v83, 0x1Cu);
    }
  }

  v10 = [(__CFString *)v3 valueForEntitlement:@"com.apple.symptom_analytics.sweep"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SFEntitlements setSymptomAnalyticsSweep:](v5, "setSymptomAnalyticsSweep:", [v10 BOOLValue]);
    v11 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v12 = v11;
      v13 = [(SFEntitlements *)v5 symptomAnalyticsSweep];
      v83 = 138478339;
      v84 = @"com.apple.symptom_analytics.sweep";
      v85 = 1024;
      v86 = v13;
      v87 = 2048;
      v88 = v3;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: caching entitlement %{private}@ = %d for %p", &v83, 0x1Cu);
    }
  }

  v14 = [(__CFString *)v3 valueForEntitlement:@"com.apple.symptom_analytics.refresh"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SFEntitlements setSymptomAnalyticsRefresh:](v5, "setSymptomAnalyticsRefresh:", [v14 BOOLValue]);
    v15 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v16 = v15;
      v17 = [(SFEntitlements *)v5 symptomAnalyticsRefresh];
      v83 = 138478339;
      v84 = @"com.apple.symptom_analytics.refresh";
      v85 = 1024;
      v86 = v17;
      v87 = 2048;
      v88 = v3;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: caching entitlement %{private}@ = %d for %p", &v83, 0x1Cu);
    }
  }

  v18 = [(__CFString *)v3 valueForEntitlement:@"com.apple.symptom_analytics.setwatchpoint"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SFEntitlements setSymptomAnalyticsSetWatchpoint:](v5, "setSymptomAnalyticsSetWatchpoint:", [v18 BOOLValue]);
    v19 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v20 = v19;
      v21 = [(SFEntitlements *)v5 symptomAnalyticsSetWatchpoint];
      v83 = 138478339;
      v84 = @"com.apple.symptom_analytics.setwatchpoint";
      v85 = 1024;
      v86 = v21;
      v87 = 2048;
      v88 = v3;
      _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: caching entitlement %{private}@ = %d for %p", &v83, 0x1Cu);
    }
  }

  v22 = [(__CFString *)v3 valueForEntitlement:@"com.apple.symptom_analytics.network_bitmap"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SFEntitlements setSymptomAnalyticsNetworkBitmap:](v5, "setSymptomAnalyticsNetworkBitmap:", [v22 BOOLValue]);
    v23 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v24 = v23;
      v25 = [(SFEntitlements *)v5 symptomAnalyticsNetworkBitmap];
      v83 = 138478339;
      v84 = @"com.apple.symptom_analytics.network_bitmap";
      v85 = 1024;
      v86 = v25;
      v87 = 2048;
      v88 = v3;
      _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: caching entitlement %{private}@ = %d for %p", &v83, 0x1Cu);
    }
  }

  v26 = [(__CFString *)v3 valueForEntitlement:@"com.apple.symptom_analytics.query"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SFEntitlements setSymptomAnalyticsQuery:](v5, "setSymptomAnalyticsQuery:", [v26 BOOLValue]);
    v27 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v28 = v27;
      v29 = [(SFEntitlements *)v5 symptomAnalyticsQuery];
      v83 = 138478339;
      v84 = @"com.apple.symptom_analytics.query";
      v85 = 1024;
      v86 = v29;
      v87 = 2048;
      v88 = v3;
      _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: caching entitlement %{private}@ = %d for %p", &v83, 0x1Cu);
    }
  }

  v30 = [(__CFString *)v3 valueForEntitlement:@"com.apple.symptoms.linkAdvisory"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SFEntitlements setSymptomsLinkAdvisory:](v5, "setSymptomsLinkAdvisory:", [v30 BOOLValue]);
    v31 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v32 = v31;
      v33 = [(SFEntitlements *)v5 symptomsLinkAdvisory];
      v83 = 138478339;
      v84 = @"com.apple.symptoms.linkAdvisory";
      v85 = 1024;
      v86 = v33;
      v87 = 2048;
      v88 = v3;
      _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: caching entitlement %{private}@ = %d for %p", &v83, 0x1Cu);
    }
  }

  v34 = [(__CFString *)v3 valueForEntitlement:@"com.apple.symptom_analytics.reset"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SFEntitlements setSymptomAnalyticsReset:](v5, "setSymptomAnalyticsReset:", [v34 BOOLValue]);
    v35 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v36 = v35;
      v37 = [(SFEntitlements *)v5 symptomAnalyticsReset];
      v83 = 138478339;
      v84 = @"com.apple.symptom_analytics.reset";
      v85 = 1024;
      v86 = v37;
      v87 = 2048;
      v88 = v3;
      _os_log_impl(&dword_23255B000, v36, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: caching entitlement %{private}@ = %d for %p", &v83, 0x1Cu);
    }
  }

  v38 = [(__CFString *)v3 valueForEntitlement:@"com.apple.symptom_analytics.configure"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SFEntitlements setSymptomAnalyticsConfigure:](v5, "setSymptomAnalyticsConfigure:", [v38 BOOLValue]);
    v39 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v40 = v39;
      v41 = [(SFEntitlements *)v5 symptomAnalyticsConfigure];
      v83 = 138478339;
      v84 = @"com.apple.symptom_analytics.configure";
      v85 = 1024;
      v86 = v41;
      v87 = 2048;
      v88 = v3;
      _os_log_impl(&dword_23255B000, v40, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: caching entitlement %{private}@ = %d for %p", &v83, 0x1Cu);
    }
  }

  v42 = [(__CFString *)v3 valueForEntitlement:@"com.apple.symptom_analytics.setsnapshot"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SFEntitlements setSymptomAnalyticsSetSnapshot:](v5, "setSymptomAnalyticsSetSnapshot:", [v42 BOOLValue]);
    v43 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v44 = v43;
      v45 = [(SFEntitlements *)v5 symptomAnalyticsSetSnapshot];
      v83 = 138478339;
      v84 = @"com.apple.symptom_analytics.setsnapshot";
      v85 = 1024;
      v86 = v45;
      v87 = 2048;
      v88 = v3;
      _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: caching entitlement %{private}@ = %d for %p", &v83, 0x1Cu);
    }
  }

  v46 = [(__CFString *)v3 valueForEntitlement:@"com.apple.symptom_analytics.healthcheck"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SFEntitlements setSymptomAnalyticsHealthCheck:](v5, "setSymptomAnalyticsHealthCheck:", [v46 BOOLValue]);
    v47 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v48 = v47;
      v49 = [(SFEntitlements *)v5 symptomAnalyticsHealthCheck];
      v83 = 138478339;
      v84 = @"com.apple.symptom_analytics.healthcheck";
      v85 = 1024;
      v86 = v49;
      v87 = 2048;
      v88 = v3;
      _os_log_impl(&dword_23255B000, v48, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: caching entitlement %{private}@ = %d for %p", &v83, 0x1Cu);
    }
  }

  v50 = [(__CFString *)v3 valueForEntitlement:@"com.apple.symptoms.NetworkOfInterest"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SFEntitlements setSymptomsNetworkOfInterest:](v5, "setSymptomsNetworkOfInterest:", [v50 BOOLValue]);
    v51 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v52 = v51;
      v53 = [(SFEntitlements *)v5 symptomsNetworkOfInterest];
      v83 = 138478339;
      v84 = @"com.apple.symptoms.NetworkOfInterest";
      v85 = 1024;
      v86 = v53;
      v87 = 2048;
      v88 = v3;
      _os_log_impl(&dword_23255B000, v52, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: caching entitlement %{private}@ = %d for %p", &v83, 0x1Cu);
    }
  }

  v54 = [(__CFString *)v3 valueForEntitlement:@"com.apple.symptoms.NetDomains.admin"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SFEntitlements setSymptomsNetDomainsAdmin:](v5, "setSymptomsNetDomainsAdmin:", [v54 BOOLValue]);
    v55 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v56 = v55;
      v57 = [(SFEntitlements *)v5 symptomsNetDomainsAdmin];
      v83 = 138478339;
      v84 = @"com.apple.symptoms.NetDomains.admin";
      v85 = 1024;
      v86 = v57;
      v87 = 2048;
      v88 = v3;
      _os_log_impl(&dword_23255B000, v56, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: caching entitlement %{private}@ = %d for %p", &v83, 0x1Cu);
    }
  }

  v58 = [(__CFString *)v3 valueForEntitlement:@"com.apple.symptoms.rnftest"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SFEntitlements setSymptomsRNFTest:](v5, "setSymptomsRNFTest:", [v58 BOOLValue]);
    v59 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v60 = v59;
      v61 = [(SFEntitlements *)v5 symptomsRNFTest];
      v83 = 138478339;
      v84 = @"com.apple.symptoms.rnftest";
      v85 = 1024;
      v86 = v61;
      v87 = 2048;
      v88 = v3;
      _os_log_impl(&dword_23255B000, v60, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: caching entitlement %{private}@ = %d for %p", &v83, 0x1Cu);
    }
  }

  v62 = [(__CFString *)v3 valueForEntitlement:@"com.apple.symptoms.symptomstooltest"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SFEntitlements setSymptomsSymptomsToolTest:](v5, "setSymptomsSymptomsToolTest:", [v62 BOOLValue]);
    v63 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v64 = v63;
      v65 = [(SFEntitlements *)v5 symptomsSymptomsToolTest];
      v83 = 138478339;
      v84 = @"com.apple.symptoms.symptomstooltest";
      v85 = 1024;
      v86 = v65;
      v87 = 2048;
      v88 = v3;
      _os_log_impl(&dword_23255B000, v64, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: caching entitlement %{private}@ = %d for %p", &v83, 0x1Cu);
    }
  }

  v66 = [(__CFString *)v3 valueForEntitlement:@"com.apple.symptoms_ndf"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SFEntitlements setSymptomsNDF:](v5, "setSymptomsNDF:", [v66 BOOLValue]);
    v67 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v68 = v67;
      v69 = [(SFEntitlements *)v5 symptomsNDF];
      v83 = 138478339;
      v84 = @"com.apple.symptoms_ndf";
      v85 = 1024;
      v86 = v69;
      v87 = 2048;
      v88 = v3;
      _os_log_impl(&dword_23255B000, v68, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: caching entitlement %{private}@ = %d for %p", &v83, 0x1Cu);
    }
  }

  v70 = [(__CFString *)v3 valueForEntitlement:@"com.apple.symptoms.cosm.admin"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SFEntitlements setSymptomsCOSMAdmin:](v5, "setSymptomsCOSMAdmin:", [v70 BOOLValue]);
    v71 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v72 = v71;
      v73 = [(SFEntitlements *)v5 symptomsCOSMAdmin];
      v83 = 138478339;
      v84 = @"com.apple.symptoms.cosm.admin";
      v85 = 1024;
      v86 = v73;
      v87 = 2048;
      v88 = v3;
      _os_log_impl(&dword_23255B000, v72, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: caching entitlement %{private}@ = %d for %p", &v83, 0x1Cu);
    }
  }

  v74 = [(__CFString *)v3 valueForEntitlement:@"com.apple.symptoms.nw_activity.database"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SFEntitlements setSymptomsNWActivityDatabase:](v5, "setSymptomsNWActivityDatabase:", [v74 BOOLValue]);
    v75 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v76 = v75;
      v77 = [(SFEntitlements *)v5 symptomsNWActivityDatabase];
      v83 = 138478339;
      v84 = @"com.apple.symptoms.nw_activity.database";
      v85 = 1024;
      v86 = v77;
      v87 = 2048;
      v88 = v3;
      _os_log_impl(&dword_23255B000, v76, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: caching entitlement %{private}@ = %d for %p", &v83, 0x1Cu);
    }
  }

  v78 = [(__CFString *)v3 valueForEntitlement:@"com.apple.symptoms.NetworkDiagnostics"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SFEntitlements setSymptomsNetworkDiagnostics:](v5, "setSymptomsNetworkDiagnostics:", [v78 BOOLValue]);
    v79 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v80 = v79;
      v81 = [(SFEntitlements *)v5 symptomsNetworkDiagnostics];
      v83 = 138478339;
      v84 = @"com.apple.symptoms.NetworkDiagnostics";
      v85 = 1024;
      v86 = v81;
      v87 = 2048;
      v88 = v3;
      _os_log_impl(&dword_23255B000, v80, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: caching entitlement %{private}@ = %d for %p", &v83, 0x1Cu);
    }
  }

  [(__CFString *)v3 setUserInfo:v5];

  v82 = *MEMORY[0x277D85DE8];
}

- (void)_handleNOIClientForConnection:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    if (_handleNOIClientForConnection__onceToken != -1)
    {
      [ServiceImpl _handleNOIClientForConnection:];
    }

    if ([a1 assertEntitlement:v3 entitlement:11 orWaiveOnIntent:0])
    {
      [v3 setRemoteObjectInterface:_handleNOIClientForConnection__clientInterface];
      objc_initWeak(&location, v3);
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __45__ServiceImpl__handleNOIClientForConnection___block_invoke_2;
      v5[3] = &unk_27898E6A0;
      v5[4] = a1;
      objc_copyWeak(&v6, &location);
      [v3 setInvalidationHandler:v5];
      v4 = a1[3];
      if (v4)
      {
        [v4 clientEvent:v3 isAddEvent:1];
      }

      objc_destroyWeak(&v6);
      objc_destroyWeak(&location);
    }
  }
}

uint64_t __45__ServiceImpl__handleNOIClientForConnection___block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28482A648];
  v1 = _handleNOIClientForConnection__clientInterface;
  _handleNOIClientForConnection__clientInterface = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __45__ServiceImpl__handleNOIClientForConnection___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  if (v1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [v1 clientEvent:WeakRetained isAddEvent:0];
  }
}

void __42__ServiceImpl_resumePendingXPCConnections__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_INFO, "ServiceImpl: Resuming pending XPC connection %@", &v6, 0xCu);
  }

  [(ServiceImpl *)*(a1 + 32) _handleNOIClientForConnection:v3];
  [v3 activate];
  [*(a1 + 40) addObject:v3];

  v5 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_checkRateLimitForConnection:(os_unfair_lock_s *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 processIdentifier];
    v6 = pid_to_uuid_string(v5);
    v7 = v6;
    if (v6)
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 0;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __44__ServiceImpl__checkRateLimitForConnection___block_invoke;
      v9[3] = &unk_27898C4E0;
      v9[4] = a1;
      v10 = v6;
      v11 = &v13;
      v12 = v5;
      sf_synchronize(a1 + 17, v9);
      LOBYTE(a1) = *(v14 + 24);

      _Block_object_dispose(&v13, 8);
    }

    else
    {
      [(ServiceImpl *)v5 _checkRateLimitForConnection:?];
      LOBYTE(a1) = v13;
    }
  }

  return a1 & 1;
}

void __44__ServiceImpl__checkRateLimitForConnection___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAA8] date];
  if ([*(*(a1 + 32) + 48) count] >= 0xB)
  {
    v3 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v14 = 67109120;
      v15 = 10;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_ERROR, "Request Time cache (size %d) exceeded maximum size. Clearing now", &v14, 8u);
    }

    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = *(a1 + 32);
    v6 = *(v5 + 48);
    *(v5 + 48) = v4;
  }

  v7 = [*(*(a1 + 32) + 48) objectForKeyedSubscript:*(a1 + 40)];
  v8 = v7;
  if (!v7 || ([v7 timeIntervalSinceDate:v2], fabs(v9) >= 20.0))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    [*(*(a1 + 32) + 48) setObject:v2 forKeyedSubscript:*(a1 + 40)];
  }

  v10 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 56);
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v12 = "true";
    }

    else
    {
      v12 = "false";
    }

    v14 = 67109890;
    v15 = v11;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v2;
    v20 = 2080;
    v21 = v12;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "pid: %d, last allowed request: %@, now: %@, allowed: %s", &v14, 0x26u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)assertEntitlement:(id)a3 entitlement:(unint64_t)a4 orWaiveOnIntent:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  if (assertEntitlement_entitlement_orWaiveOnIntent__onceToken != -1)
  {
    [ServiceImpl assertEntitlement:entitlement:orWaiveOnIntent:];
  }

  v9 = [v7 userInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v9 BOOLForEntitlement:a4])
  {
    v10 = 1;
  }

  else
  {
    v11 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v12 = v11;
      v13 = [SFEntitlements stringForEntitlement:a4];
      v24 = 138478083;
      v25 = v13;
      v26 = 1024;
      v27 = [v7 processIdentifier];
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: entitlement %{private}@ is missing from %d", &v24, 0x12u);
    }

    if (v8)
    {
      v14 = MEMORY[0x277CBEB98];
      v15 = [v8 allKeys];
      v16 = [v14 setWithArray:v15];

      if ([assertEntitlement_entitlement_orWaiveOnIntent__waiverIntentMustHave isSubsetOfSet:v16])
      {
        v17 = [v16 mutableCopy];
        [v17 minusSet:assertEntitlement_entitlement_orWaiveOnIntent__waiverIntentMustNotHave];
        v18 = [v17 count];
        v19 = [v16 count];
        v10 = v18 == v19;
        v20 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v21 = "not ";
          if (v18 == v19)
          {
            v21 = "";
          }

          v24 = 136315138;
          v25 = v21;
          _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: intent fallback did %ssucceed", &v24, 0xCu);
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v10;
}

void __61__ServiceImpl_assertEntitlement_entitlement_orWaiveOnIntent___block_invoke()
{
  v10[1] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v10[0] = @"instant";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v2 = [v0 initWithArray:v1];
  v3 = assertEntitlement_entitlement_orWaiveOnIntent__waiverIntentMustHave;
  assertEntitlement_entitlement_orWaiveOnIntent__waiverIntentMustHave = v2;

  v4 = objc_alloc(MEMORY[0x277CBEB98]);
  v9[0] = @"historicalFlow";
  v9[1] = @"instantFlow";
  v9[2] = @"historical";
  v9[3] = @"sweepUsage";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:4];
  v6 = [v4 initWithArray:v5];
  v7 = assertEntitlement_entitlement_orWaiveOnIntent__waiverIntentMustNotHave;
  assertEntitlement_entitlement_orWaiveOnIntent__waiverIntentMustNotHave = v6;

  v8 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self->featureReadyObserver];

  v4.receiver = self;
  v4.super_class = ServiceImpl;
  [(ServiceImpl *)&v4 dealloc];
}

- (ServiceImpl)initWithQueue:(id)a3 noiEngine:(id)a4 isHelper:(BOOL)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v32.receiver = self;
  v32.super_class = ServiceImpl;
  v11 = [(ServiceImpl *)&v32 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_queue, a3);
    if (!v12->_queue)
    {
      v13 = SFGetQueueAttribute(4u);
      v14 = SFGetStandardQueue(4);
      v15 = dispatch_queue_create_with_target_V2("com.apple.symptoms.serviceimpl.service.queue", v13, v14);
      queue = v12->_queue;
      v12->_queue = v15;
    }

    v12->_isHelper = a5;
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    lastAllowedRequests = v12->lastAllowedRequests;
    v12->lastAllowedRequests = v17;

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__ServiceImpl_initWithQueue_noiEngine_isHelper___block_invoke;
    block[3] = &unk_27898A0C8;
    v19 = v12;
    v31 = v19;
    if (initWithQueue_noiEngine_isHelper__onceToken != -1)
    {
      dispatch_once(&initWithQueue_noiEngine_isHelper__onceToken, block);
    }

    objc_storeStrong(v19 + 3, a4);
    v20 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v21 = v19[3];
      *buf = 134217984;
      v34 = v21;
      _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: noi engine set as: %p", buf, 0xCu);
    }

    v22 = [MEMORY[0x277CCAB98] defaultCenter];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __48__ServiceImpl_initWithQueue_noiEngine_isHelper___block_invoke_178;
    v28[3] = &unk_27898A690;
    v23 = v19;
    v29 = v23;
    v24 = [v22 addObserverForName:@"kNotificationOfPartialInitialization" object:0 queue:0 usingBlock:v28];
    v25 = v23[7];
    v23[7] = v24;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t __48__ServiceImpl_initWithQueue_noiEngine_isHelper___block_invoke(uint64_t result)
{
  *(*(result + 32) + 72) = 0;
  *(*(result + 32) + 68) = 0;
  return result;
}

void __48__ServiceImpl_initWithQueue_noiEngine_isHelper___block_invoke_178(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = [a2 userInfo];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"ObjectKey"];
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v7 = *(*(a1 + 32) + 8);
          *buf = 134218240;
          v36 = v5;
          v37 = 2048;
          v38 = v7;
          _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: notification sets flow engine: %p, was: %p", buf, 0x16u);
        }

        v8 = *(a1 + 32);
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __48__ServiceImpl_initWithQueue_noiEngine_isHelper___block_invoke_180;
        v32[3] = &unk_27898A7D0;
        v33 = v8;
        v34 = v5;
        sf_synchronize(v8 + 18, v32);
        v9 = *(a1 + 32);
        v10 = v9[5];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __48__ServiceImpl_initWithQueue_noiEngine_isHelper___block_invoke_2;
        block[3] = &unk_27898A0C8;
        v31 = v9;
        v11 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
        dispatch_async(v10, v11);

        v12 = v33;
LABEL_15:

        goto LABEL_19;
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v18 = analyticsLogHandle;
      if (isKindOfClass)
      {
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v19 = *(*(a1 + 32) + 16);
          *buf = 134218240;
          v36 = v5;
          v37 = 2048;
          v38 = v19;
          _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: notification sets network engine: %p, was: %p", buf, 0x16u);
        }

        v20 = *(a1 + 32);
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __48__ServiceImpl_initWithQueue_noiEngine_isHelper___block_invoke_182;
        v27[3] = &unk_27898A7D0;
        v28 = v20;
        v29 = v5;
        sf_synchronize(v20 + 18, v27);
        v21 = *(a1 + 32);
        v22 = v21[5];
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __48__ServiceImpl_initWithQueue_noiEngine_isHelper___block_invoke_2_183;
        v25[3] = &unk_27898A0C8;
        v26 = v21;
        v23 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v25);
        dispatch_async(v22, v23);

        v12 = v28;
        goto LABEL_15;
      }

      if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      *buf = 134217984;
      v36 = v5;
      v15 = "SymptomAnalytics ServiceImpl: notification has unknown engine: %p";
      v16 = v18;
    }

    else
    {
      v14 = analyticsLogHandle;
      if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
      {
LABEL_19:

        goto LABEL_20;
      }

      *buf = 138412290;
      v36 = v4;
      v15 = "SymptomAnalytics ServiceImpl: notification lacks engine info: %@";
      v16 = v14;
    }

    _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, v15, buf, 0xCu);
    goto LABEL_19;
  }

  v13 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "SymptomAnalytics ServiceImpl: notification has no info", buf, 2u);
  }

LABEL_20:

  v24 = *MEMORY[0x277D85DE8];
}

- (void)getNetworkBitmapsWithNames:(id)a3 startTime:(unint64_t)a4 endTime:(unint64_t)a5 options:(id)a6 reply:(id)a7
{
  v37 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a6;
  v14 = a7;
  ++_query_id;
  v15 = objc_autoreleasePoolPush();
  v16 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v30 = v12;
    v31 = 2048;
    v32 = a4;
    v33 = 2048;
    v34 = a5;
    v35 = 2112;
    v36 = v13;
    _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, "[Bitmap] SymptomAnalytics ServiceImpl: received network bitmap request: names: %@ interval: [%llu, %llu] options: %@", buf, 0x2Au);
  }

  if (v14)
  {
    v17 = [MEMORY[0x277CCAE80] currentConnection];
    if ([(ServiceImpl *)self assertEntitlement:v17 entitlement:4 orWaiveOnIntent:0])
    {
      f_engine = self->f_engine;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __74__ServiceImpl_getNetworkBitmapsWithNames_startTime_endTime_options_reply___block_invoke;
      v25[3] = &unk_27898BC58;
      v26 = v14;
      [(FlowAnalyticsEngine *)f_engine getNetworkBitmapsWithNames:v12 startTime:a4 endTime:a5 options:v13 reply:v25];
      v19 = v26;
    }

    else
    {
      v20 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_ERROR, "SymptomAnalytics ServiceImpl: network bitmap query didn't pass entitlement check", buf, 2u);
      }

      v21 = MEMORY[0x277CCA9B8];
      v22 = *MEMORY[0x277CCA050];
      v27 = *MEMORY[0x277CCA450];
      v28 = @"A proper entitlement is needed for retrieving the network bitmap.";
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      v23 = [v21 errorWithDomain:v22 code:13 userInfo:v19];
      (*(v14 + 2))(v14, 0, v23);
    }
  }

  objc_autoreleasePoolPop(v15);

  v24 = *MEMORY[0x277D85DE8];
}

- (void)performQueryOnEntity:(id)a3 fetchRequestProperties:(id)a4 pred:(id)a5 sort:(id)a6 actions:(id)a7 reply:(id)a8
{
  v93 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v65 = a4;
  v15 = a5;
  v66 = a6;
  v16 = a7;
  v17 = a8;
  v18 = ++_query_id;
  context = objc_autoreleasePoolPush();
  v19 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v20 = v19;
    v21 = [v15 description];
    v22 = [v66 description];
    [v16 description];
    v62 = self;
    v23 = v18;
    v24 = v16;
    v25 = v17;
    v27 = v26 = v15;
    *buf = 138413058;
    v86 = v14;
    v87 = 2112;
    v88 = v21;
    v89 = 2112;
    v90 = v22;
    v91 = 2112;
    v92 = v27;
    _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: received query for: %@ pred %@ sort %@ actions %@", buf, 0x2Au);

    v15 = v26;
    v17 = v25;
    v16 = v24;
    v18 = v23;
    self = v62;
  }

  if (v14)
  {
    v28 = [MEMORY[0x277CCAE80] currentConnection];
    if (![(ServiceImpl *)self assertEntitlement:v28 entitlement:5 orWaiveOnIntent:v16]&& ![(ServiceImpl *)self assertEntitlement:v28 entitlement:7 orWaiveOnIntent:v16])
    {
      v36 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
      {
        v37 = v15;
        v38 = v36;
        v39 = pid_to_process_name([v28 processIdentifier]);
        v40 = v39;
        v41 = @"<unknown>";
        if (v39)
        {
          v41 = v39;
        }

        *buf = 138412290;
        v86 = v41;
        _os_log_impl(&dword_23255B000, v38, OS_LOG_TYPE_ERROR, "SymptomAnalytics ServiceImpl: query from %@ didn't pass entitlement check", buf, 0xCu);

        v15 = v37;
      }

      goto LABEL_34;
    }

    v29 = [v16 objectForKey:{@"sweepUsage", v15, context}];

    if (!v29)
    {
LABEL_25:
      v47 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v48 = v47;
        v49 = qos_class_self();
        v50 = qos_string(v49);
        *buf = 136315394;
        v86 = v50;
        v87 = 2048;
        v88 = v18;
        _os_log_impl(&dword_23255B000, v48, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: (performQueryOnEntity:) QoS %s (%lu)", buf, 0x16u);
      }

      v15 = v63;
      if ([(FlowAnalyticsEngine *)self->f_engine handlesEntity:v14])
      {
        v51 = [(AnalyticsEngineCore *)self->f_engine queue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __83__ServiceImpl_performQueryOnEntity_fetchRequestProperties_pred_sort_actions_reply___block_invoke;
        block[3] = &unk_27898E6F0;
        v84 = v18;
        block[4] = self;
        v77 = v14;
        v35 = v65;
        v78 = v65;
        v79 = v63;
        v80 = v66;
        v81 = v16;
        v82 = v28;
        v83 = v17;
        v52 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
        dispatch_async(v51, v52);

        v15 = v63;
        v53 = v77;
LABEL_31:

LABEL_35:
        goto LABEL_36;
      }

      if ([(NetworkAnalyticsEngine *)self->n_engine handlesEntity:v14])
      {
        v54 = [(AnalyticsEngineCore *)self->n_engine queue];
        v67[0] = MEMORY[0x277D85DD0];
        v67[1] = 3221225472;
        v67[2] = __83__ServiceImpl_performQueryOnEntity_fetchRequestProperties_pred_sort_actions_reply___block_invoke_194;
        v67[3] = &unk_27898E6F0;
        v75 = v18;
        v67[4] = self;
        v68 = v14;
        v35 = v65;
        v69 = v65;
        v70 = v63;
        v71 = v66;
        v72 = v16;
        v73 = v28;
        v74 = v17;
        v55 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v67);
        dispatch_async(v54, v55);

        v15 = v63;
        v53 = v68;
        goto LABEL_31;
      }

      v56 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v56, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: no engine suitable to reply to query", buf, 2u);
      }

LABEL_34:
      (*(v17 + 2))(v17, 0);
      v35 = v65;
      goto LABEL_35;
    }

    v30 = [v16 objectForKeyedSubscript:@"fetchOffset"];
    if ([v30 integerValue] >= 1)
    {
      v31 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v32 = v31;
        v33 = [v30 integerValue];
        *buf = 134217984;
        v86 = v33;
        _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: found non-zero (%ld) fetch-offset (part of batched queries), rate-limit check waived", buf, 0xCu);
      }

      goto LABEL_24;
    }

    if ([(ServiceImpl *)self assertEntitlement:v28 entitlement:8 orWaiveOnIntent:0])
    {
      v42 = analyticsLogHandle;
      if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
LABEL_24:

        goto LABEL_25;
      }

      *buf = 0;
      v43 = "SymptomAnalytics ServiceImpl: client has 'configuration' entitlement, rate-limit check waived";
      v44 = v42;
    }

    else
    {
      v45 = [(ServiceImpl *)self _checkRateLimitForConnection:v28];
      v46 = analyticsLogHandle;
      if ((v45 & 1) == 0)
      {
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
        {
          v58 = v46;
          v59 = pid_to_process_name([v28 processIdentifier]);
          v60 = v59;
          v61 = @"<unknown>";
          if (v59)
          {
            v61 = v59;
          }

          *buf = 138412290;
          v86 = v61;
          _os_log_impl(&dword_23255B000, v58, OS_LOG_TYPE_ERROR, "SymptomAnalytics ServiceImpl: query from %@ didn't pass rate-limit check", buf, 0xCu);
        }

        (*(v17 + 2))(v17, 0);

        v35 = v65;
        v15 = v63;
        goto LABEL_35;
      }

      if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_24;
      }

      *buf = 0;
      v43 = "SymptomAnalytics ServiceImpl: query passed rate-limit check";
      v44 = v46;
    }

    _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_DEBUG, v43, buf, 2u);
    goto LABEL_24;
  }

  v34 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v34, OS_LOG_TYPE_ERROR, "SymptomAnalytics ServiceImpl: received query w/ nil entityName", buf, 2u);
  }

  (*(v17 + 2))(v17, 0);
  v35 = v65;
LABEL_36:
  objc_autoreleasePoolPop(context);

  v57 = *MEMORY[0x277D85DE8];
}

uint64_t __83__ServiceImpl_performQueryOnEntity_fetchRequestProperties_pred_sort_actions_reply___block_invoke(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = a1[12];
    *buf = 136315394;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: performQueryOnEntity: [FAE] QoS %s (%lu)", buf, 0x16u);
  }

  result = [*(a1[4] + 8) performQueryOnEntity:a1[5] fetchRequestProperties:a1[6] pred:a1[7] sort:a1[8] actions:a1[9] service:a1[10] connection:a1[11] reply:?];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __83__ServiceImpl_performQueryOnEntity_fetchRequestProperties_pred_sort_actions_reply___block_invoke_194(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = a1[12];
    *buf = 136315394;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: performQueryOnEntity: [NAE] QoS %s (%lu)", buf, 0x16u);
  }

  result = [*(a1[4] + 16) performQueryOnEntity:a1[5] fetchRequestProperties:a1[6] pred:a1[7] sort:a1[8] actions:a1[9] service:a1[10] connection:a1[11] reply:?];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)createSnapshotFor:(id)a3 pred:(id)a4 actions:(id)a5 reply:(id)a6
{
  v49 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = ++_query_id;
  v15 = objc_autoreleasePoolPush();
  v16 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v46 = v10;
    _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: received snapshot request on entity: %@", buf, 0xCu);
  }

  if (v10)
  {
    v32 = v15;
    v17 = [MEMORY[0x277CCAE80] currentConnection];
    if ([(ServiceImpl *)self assertEntitlement:v17 entitlement:9 orWaiveOnIntent:0])
    {
      v18 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v19 = v18;
        v20 = qos_class_self();
        v21 = qos_string(v20);
        *buf = 136315394;
        v46 = v21;
        v47 = 2048;
        v48 = v14;
        _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: (createSnapshotFor:) QoS %s (%lu)", buf, 0x16u);
      }

      if ([(FlowAnalyticsEngine *)self->f_engine handlesEntity:v10])
      {
        v22 = [(AnalyticsEngineCore *)self->f_engine queue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __52__ServiceImpl_createSnapshotFor_pred_actions_reply___block_invoke;
        block[3] = &unk_27898E718;
        v44 = v14;
        block[4] = self;
        v40 = v10;
        v41 = v11;
        v42 = v12;
        v43 = v13;
        v23 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
        dispatch_async(v22, v23);

        v24 = v40;
LABEL_18:

        goto LABEL_19;
      }

      if ([(NetworkAnalyticsEngine *)self->n_engine handlesEntity:v10])
      {
        v29 = [(AnalyticsEngineCore *)self->n_engine queue];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __52__ServiceImpl_createSnapshotFor_pred_actions_reply___block_invoke_195;
        v33[3] = &unk_27898E718;
        v38 = v14;
        v33[4] = self;
        v34 = v10;
        v35 = v11;
        v36 = v12;
        v37 = v13;
        v30 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v33);
        dispatch_async(v29, v30);

        v24 = v34;
        goto LABEL_18;
      }

      v26 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:2 userInfo:0];
      v27 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v28 = "SymptomAnalytics ServiceImpl: no engine suitable to reply to query";
        goto LABEL_14;
      }
    }

    else
    {
      v26 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:1 userInfo:0];
      v27 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v28 = "SymptomAnalytics ServiceImpl: query denied for lack of entitlement";
LABEL_14:
        _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_DEBUG, v28, buf, 2u);
      }
    }

    (*(v13 + 2))(v13, 0, v26);

LABEL_19:
    v15 = v32;
    goto LABEL_20;
  }

  v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:2 userInfo:0];
  v25 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: received snapshot request w/ nil entityName", buf, 2u);
  }

  (*(v13 + 2))(v13, 0, v17);
LABEL_20:

  objc_autoreleasePoolPop(v15);
  v31 = *MEMORY[0x277D85DE8];
}

uint64_t __52__ServiceImpl_createSnapshotFor_pred_actions_reply___block_invoke(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = a1[9];
    v9 = 136315394;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: createSnapshotFor: [FAE] QoS %s (%lu)", &v9, 0x16u);
  }

  result = [*(a1[4] + 8) createSnapshotFor:a1[5] pred:a1[6] actions:a1[7] reply:a1[8]];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __52__ServiceImpl_createSnapshotFor_pred_actions_reply___block_invoke_195(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = a1[9];
    v9 = 136315394;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: createSnapshotFor: [NAE] QoS %s (%lu)", &v9, 0x16u);
  }

  result = [*(a1[4] + 16) createSnapshotFor:a1[5] pred:a1[6] actions:a1[7] reply:a1[8]];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setOption:(id)a3 inScopes:(id)a4 reply:(id)a5
{
  v53 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = ++_query_id;
  v12 = [MEMORY[0x277CCAE80] currentConnection];
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__13;
  v47 = __Block_byref_object_dispose__13;
  v48 = 0;
  v13 = [(ServiceImpl *)self assertEntitlement:v12 entitlement:8 orWaiveOnIntent:0];
  v14 = analyticsLogHandle;
  if (v13)
  {
    v15 = analyticsLogHandle;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = qos_class_self();
      v17 = qos_string(v16);
      *buf = 136315394;
      v50 = v17;
      v51 = 2048;
      v52 = v11;
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: configure (setOption:inScopes:) authorized QoS %s (%lu)", buf, 0x16u);
    }

    v18 = [v9 objectForKey:@"kSymptomAnalyticsServiceUsage"];

    if (v18)
    {
      v19 = [(AnalyticsEngineCore *)self->f_engine queue];
      v20 = block;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __40__ServiceImpl_setOption_inScopes_reply___block_invoke;
      block[3] = &unk_27898E740;
      block[7] = &v43;
      block[8] = v11;
      block[4] = self;
      block[5] = v8;
      block[6] = v10;
      v21 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
      dispatch_async(v19, v21);

LABEL_12:
      v26 = (v20 + 5);
      v27 = (v20 + 6);
LABEL_13:

      goto LABEL_14;
    }

    v24 = [v9 objectForKey:@"kSymptomAnalyticsServiceNetworkAttachmentPerformance"];

    if (v24)
    {
      v19 = [(AnalyticsEngineCore *)self->n_engine queue];
      v20 = v41;
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __40__ServiceImpl_setOption_inScopes_reply___block_invoke_196;
      v41[3] = &unk_27898E740;
      v41[7] = &v43;
      v41[8] = v11;
      v41[4] = self;
      v41[5] = v8;
      v41[6] = v10;
      v25 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v41);
      dispatch_async(v19, v25);

      goto LABEL_12;
    }

    v29 = [v9 objectForKey:@"networkDomainTracking"];

    if (v29)
    {
      v30 = +[NetDomainsHandler sharedInstance];
      netDomainsHandler = self->netDomainsHandler;
      self->netDomainsHandler = v30;

      v32 = [(NetDomainsHandler *)self->netDomainsHandler queue];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __40__ServiceImpl_setOption_inScopes_reply___block_invoke_198;
      v35[3] = &unk_27898E768;
      v39 = &v43;
      v40 = v11;
      v35[4] = self;
      v36 = v8;
      v37 = v12;
      v38 = v10;
      v33 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v35);
      dispatch_async(v32, v33);

      v26 = &v36;
      v27 = &v37;
      v19 = v38;
      goto LABEL_13;
    }

    v34 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v22 = "SymptomAnalytics ServiceImpl: no engine suitable to reply to setOption";
      v23 = v34;
      goto LABEL_8;
    }
  }

  else if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    v22 = "SymptomAnalytics ServiceImpl: no entitlement to execute setOption";
    v23 = v14;
LABEL_8:
    _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEBUG, v22, buf, 2u);
  }

  (*(v10 + 2))(v10, v44[5]);
LABEL_14:
  _Block_object_dispose(&v43, 8);

  v28 = *MEMORY[0x277D85DE8];
}

uint64_t __40__ServiceImpl_setOption_inScopes_reply___block_invoke(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = a1[8];
    v13 = 136315394;
    v14 = v5;
    v15 = 2048;
    v16 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: [FAE] setOption:inScopes: QoS %s (%lu)", &v13, 0x16u);
  }

  v7 = [*(a1[4] + 8) setOption:a1[5]];
  v8 = *(a1[7] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = *(*(a1[7] + 8) + 40);
  result = (*(a1[6] + 16))();
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __40__ServiceImpl_setOption_inScopes_reply___block_invoke_196(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = a1[8];
    v13 = 136315394;
    v14 = v5;
    v15 = 2048;
    v16 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: [NAE] setOption:inScopes: QoS %s (%lu)", &v13, 0x16u);
  }

  v7 = [*(a1[4] + 16) setOption:a1[5]];
  v8 = *(a1[7] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = *(*(a1[7] + 8) + 40);
  result = (*(a1[6] + 16))();
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __40__ServiceImpl_setOption_inScopes_reply___block_invoke_198(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = a1[9];
    v13 = 136315394;
    v14 = v5;
    v15 = 2048;
    v16 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: [NetDomain] setOption:inScopes: QoS %s (%lu)", &v13, 0x16u);
  }

  v7 = [*(a1[4] + 32) setNetworkDomainsOptions:a1[5] service:a1[4] connection:a1[6]];
  v8 = *(a1[8] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = *(*(a1[8] + 8) + 40);
  result = (*(a1[7] + 16))();
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)getOption:(id)a3 inScopes:(id)a4 reply:(id)a5
{
  v56 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = ++_query_id;
  v12 = [MEMORY[0x277CCAE80] currentConnection];
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__13;
  v50 = __Block_byref_object_dispose__13;
  v51 = 0;
  v13 = [(ServiceImpl *)self assertEntitlement:v12 entitlement:8 orWaiveOnIntent:0];
  v14 = analyticsLogHandle;
  if (v13)
  {
    v15 = analyticsLogHandle;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = qos_class_self();
      v17 = qos_string(v16);
      *buf = 136315394;
      v53 = v17;
      v54 = 2048;
      v55 = v11;
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: configure (getOption:inScopes:) authorized QoS %s (%lu)", buf, 0x16u);
    }

    v18 = [v9 objectForKey:@"kSymptomAnalyticsServiceUsage"];

    if (v18)
    {
      v19 = [(AnalyticsEngineCore *)self->f_engine queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __40__ServiceImpl_getOption_inScopes_reply___block_invoke;
      block[3] = &unk_27898E790;
      v45[1] = &v46;
      block[4] = self;
      v44 = v8;
      v45[0] = v10;
      v20 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
      dispatch_async(v19, v20);

      v21 = &v44;
      v22 = v45;
LABEL_14:

      goto LABEL_15;
    }

    v25 = [v9 objectForKey:@"kSymptomAnalyticsServiceNetworkAttachmentPerformance"];

    if (v25)
    {
      v19 = [(AnalyticsEngineCore *)self->n_engine queue];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __40__ServiceImpl_getOption_inScopes_reply___block_invoke_199;
      v40[3] = &unk_27898E740;
      v42[1] = &v46;
      v42[2] = v11;
      v40[4] = self;
      v41 = v8;
      v42[0] = v10;
      v26 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v40);
      dispatch_async(v19, v26);

      v21 = &v41;
      v22 = v42;
      goto LABEL_14;
    }

    v27 = [v9 objectForKey:@"networkDomainTracking"];

    if (v27)
    {
      v28 = +[NetDomainsHandler sharedInstance];
      netDomainsHandler = self->netDomainsHandler;
      self->netDomainsHandler = v28;

      v30 = [(NetDomainsHandler *)self->netDomainsHandler queue];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __40__ServiceImpl_getOption_inScopes_reply___block_invoke_200;
      v34[3] = &unk_27898E768;
      v38 = &v46;
      v39 = v11;
      v34[4] = self;
      v35 = v8;
      v36 = v12;
      v37 = v10;
      v31 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v34);
      dispatch_async(v30, v31);

      v21 = &v35;
      v22 = &v36;
      v19 = v37;
      goto LABEL_14;
    }

    v33 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v23 = "SymptomAnalytics ServiceImpl: no engine suitable to reply to getOption";
      v24 = v33;
      goto LABEL_8;
    }
  }

  else if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    v23 = "SymptomAnalytics ServiceImpl: no entitlement to execute getOption";
    v24 = v14;
LABEL_8:
    _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEBUG, v23, buf, 2u);
  }

  (*(v10 + 2))(v10, v47[5]);
LABEL_15:
  _Block_object_dispose(&v46, 8);

  v32 = *MEMORY[0x277D85DE8];
}

uint64_t __40__ServiceImpl_getOption_inScopes_reply___block_invoke(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v11 = 136315138;
    v12 = qos_string(v4);
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: getOption:inScopes: [FAE] QoS %s", &v11, 0xCu);
  }

  v5 = [*(a1[4] + 8) getOption:a1[5]];
  v6 = *(a1[7] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(*(a1[7] + 8) + 40);
  result = (*(a1[6] + 16))();
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __40__ServiceImpl_getOption_inScopes_reply___block_invoke_199(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = a1[8];
    v13 = 136315394;
    v14 = v5;
    v15 = 2048;
    v16 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: getOption:inScopes: [NAE] QoS %s (%lu)", &v13, 0x16u);
  }

  v7 = [*(a1[4] + 16) getOption:a1[5]];
  v8 = *(a1[7] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = *(*(a1[7] + 8) + 40);
  result = (*(a1[6] + 16))();
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __40__ServiceImpl_getOption_inScopes_reply___block_invoke_200(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = a1[9];
    v13 = 136315394;
    v14 = v5;
    v15 = 2048;
    v16 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: getOption:inScopes: [NetDomain] QoS %s (%lu)", &v13, 0x16u);
  }

  v7 = [*(a1[4] + 32) getNetworkDomainsOptions:a1[5] service:a1[4] connection:a1[6]];
  v8 = *(a1[8] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = *(*(a1[8] + 8) + 40);
  result = (*(a1[7] + 16))();
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)performActionWithOptions:(id)a3 inScopes:(id)a4 reply:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = ++_query_id;
  v12 = objc_autoreleasePoolPush();
  v13 = [MEMORY[0x277CCAE80] currentConnection];
  v14 = [(ServiceImpl *)self assertEntitlement:v13 entitlement:8 orWaiveOnIntent:0];
  v15 = analyticsLogHandle;
  v16 = os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG);
  if (!v14)
  {
    if (v16)
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: no entitlement to execute performActionWithOptions", buf, 2u);
    }

    v23 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA050];
    v31 = *MEMORY[0x277CCA450];
    v32 = @"A proper entitlement is needed to execute perform action";
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v22 = [v23 errorWithDomain:v24 code:13 userInfo:v25];

    v10[2](v10, 0, v22);
    goto LABEL_9;
  }

  if (v16)
  {
    v17 = v15;
    v18 = qos_class_self();
    *buf = 136315394;
    v34 = qos_string(v18);
    v35 = 2048;
    v36 = v11;
    _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: configure (performActionWithOptions:inScopes:) authorized QoS %s (%lu)", buf, 0x16u);
  }

  v19 = [v9 objectForKey:@"networkDomainTracking"];

  if (v19)
  {
    v20 = [v13 effectiveUserIdentifier];
    v21 = [(AnalyticsEngineCore *)self->f_engine queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__ServiceImpl_performActionWithOptions_inScopes_reply___block_invoke;
    block[3] = &unk_27898C7D0;
    v28 = v8;
    v30 = v20;
    v29 = v10;
    dispatch_sync(v21, block);

    v22 = v28;
LABEL_9:
  }

  objc_autoreleasePoolPop(v12);
  v26 = *MEMORY[0x277D85DE8];
}

- (void)resetDataFor:(id)a3 nameKind:(id)a4 inScopes:(id)a5 reply:(id)a6
{
  v47 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = ++_query_id;
  v14 = MEMORY[0x277CCAE80];
  v15 = a6;
  v16 = [v14 currentConnection];
  if (([(ServiceImpl *)self _checkRateLimitForConnection:v16]& 1) == 0)
  {
    v25 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v26 = v25;
      v27 = pid_to_process_name([v16 processIdentifier]);
      v28 = v27;
      v29 = @"<unknown>";
      if (v27)
      {
        v29 = v27;
      }

      *buf = 138412290;
      v44 = v29;
      _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_ERROR, "SymptomAnalytics ServiceImpl: reset query from %@ denied due to rate limit control", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v17 = [(ServiceImpl *)self assertEntitlement:v16 entitlement:7 orWaiveOnIntent:0];
  v18 = analyticsLogHandle;
  v19 = os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG);
  if (v17)
  {
    if (v19)
    {
      v20 = v18;
      v21 = qos_class_self();
      *buf = 136315394;
      v44 = qos_string(v21);
      v45 = 2048;
      v46 = v13;
      _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: reset authorized QoS %s (%lu)", buf, 0x16u);
    }

    v22 = [v12 objectForKey:@"kSymptomAnalyticsServiceUsage"];

    if (v22)
    {
      v23 = [(AnalyticsEngineCore *)self->f_engine queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __52__ServiceImpl_resetDataFor_nameKind_inScopes_reply___block_invoke;
      block[3] = &unk_27898A328;
      block[4] = self;
      v41 = v10;
      v42 = v11;
      dispatch_sync(v23, block);

      v24 = v41;
LABEL_17:

      v32 = 1;
      goto LABEL_18;
    }

    v33 = [v12 objectForKey:@"kSymptomAnalyticsServiceNetworkAttachmentPerformance"];

    if (v33)
    {
      v34 = [(AnalyticsEngineCore *)self->n_engine queue];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __52__ServiceImpl_resetDataFor_nameKind_inScopes_reply___block_invoke_2;
      v37[3] = &unk_27898A328;
      v37[4] = self;
      v38 = v10;
      v39 = v11;
      dispatch_sync(v34, v37);

      v24 = v38;
      goto LABEL_17;
    }

    v36 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v30 = "SymptomAnalytics ServiceImpl: no engine suitable to reply to reset";
      v31 = v36;
      goto LABEL_13;
    }
  }

  else if (v19)
  {
    *buf = 0;
    v30 = "SymptomAnalytics ServiceImpl: no entitlement to execute reset";
    v31 = v18;
LABEL_13:
    _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_DEBUG, v30, buf, 2u);
  }

LABEL_14:
  v32 = 0;
LABEL_18:
  v15[2](v15, v32);

  v35 = *MEMORY[0x277D85DE8];
}

- (void)subscribeToNOIsFor:(id)a3 orPredicate:(id)a4 options:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = ++_query_id;
  v12 = objc_autoreleasePoolPush();
  v13 = [MEMORY[0x277CCAE80] currentConnection];
  if ([(ServiceImpl *)self assertEntitlement:v13 entitlement:11 orWaiveOnIntent:0])
  {
    v14 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v15 = v14;
      v16 = qos_class_self();
      *buf = 136315394;
      v29 = qos_string(v16);
      v30 = 2048;
      v31 = v11;
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: (subscribeToNOIsFor:orPredicate:) authorized QoS %s (%lu)", buf, 0x16u);
    }

    v17 = [(AnalyticsEngineCore *)self->noi_engine queue];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __54__ServiceImpl_subscribeToNOIsFor_orPredicate_options___block_invoke;
    v22[3] = &unk_27898E7B8;
    v27 = v11;
    v22[4] = self;
    v23 = v8;
    v24 = v9;
    v25 = v10;
    v26 = v13;
    v18 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v22);
    dispatch_async(v17, v18);
  }

  else
  {
    v19 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      *buf = 134218754;
      v29 = self;
      v30 = 2048;
      v31 = v13;
      v32 = 1024;
      v33 = [v13 processIdentifier];
      v34 = 2112;
      v35 = v8;
      _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEFAULT, "%p for conn: %p pid: %d, client subscribe event failure for noi: %@", buf, 0x26u);
    }
  }

  objc_autoreleasePoolPop(v12);
  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __54__ServiceImpl_subscribeToNOIsFor_orPredicate_options___block_invoke(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = a1[9];
    v9 = 136315394;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: subscribeToNOIsFor:orPredicate: [NOI] QoS %s (%lu)", &v9, 0x16u);
  }

  result = [*(a1[4] + 24) subscribeToNOIsFor:a1[5] orPredicate:a1[6] options:a1[7] connection:a1[8]];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)inquireNOIFor:(id)a3 orPredicate:(id)a4 requestedKeys:(id)a5 options:(id)a6 reply:(id)a7
{
  v39 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = ++_query_id;
  v18 = objc_autoreleasePoolPush();
  v19 = [MEMORY[0x277CCAE80] currentConnection];
  if ([(ServiceImpl *)self assertEntitlement:v19 entitlement:11 orWaiveOnIntent:0])
  {
    v20 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v21 = v20;
      v22 = qos_class_self();
      *buf = 136315394;
      v36 = qos_string(v22);
      v37 = 2048;
      v38 = v17;
      _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: (inquireNOIFor:orPredicate:requestedKeys:options:reply:) authorized QoS %s (%lu)", buf, 0x16u);
    }

    v23 = [(AnalyticsEngineCore *)self->noi_engine queue];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __69__ServiceImpl_inquireNOIFor_orPredicate_requestedKeys_options_reply___block_invoke;
    v27[3] = &unk_27898E7E0;
    v34 = v17;
    v27[4] = self;
    v28 = v12;
    v29 = v13;
    v30 = v14;
    v31 = v15;
    v32 = v19;
    v33 = v16;
    v24 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v27);
    dispatch_async(v23, v24);
  }

  else
  {
    v25 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:13 userInfo:0];
    (*(v16 + 2))(v16, 0, v25);
  }

  objc_autoreleasePoolPop(v18);
  v26 = *MEMORY[0x277D85DE8];
}

uint64_t __69__ServiceImpl_inquireNOIFor_orPredicate_requestedKeys_options_reply___block_invoke(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = a1[11];
    v9 = 136315394;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: inquireNOIFor:orPredicate:requestedKeys:options:reply: [NOI] QoS %s (%lu)", &v9, 0x16u);
  }

  result = [*(a1[4] + 24) inquireNOIFor:a1[5] orPredicate:a1[6] requestedKeys:a1[7] options:a1[8] connection:a1[9] reply:a1[10]];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)unsubscribeToNOIs:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ++_query_id;
  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277CCAE80] currentConnection];
  if ([(ServiceImpl *)self assertEntitlement:v7 entitlement:11 orWaiveOnIntent:0])
  {
    v8 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v9 = v8;
      v10 = qos_class_self();
      *buf = 136315394;
      v21 = qos_string(v10);
      v22 = 2048;
      v23 = v5;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: (unsubscribeToNOIs:) authorized QoS %s (%lu)", buf, 0x16u);
    }

    v11 = [(AnalyticsEngineCore *)self->noi_engine queue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __33__ServiceImpl_unsubscribeToNOIs___block_invoke;
    v16[3] = &unk_27898E4B0;
    v19 = v5;
    v16[4] = self;
    v17 = v4;
    v18 = v7;
    v12 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v16);
    dispatch_async(v11, v12);
  }

  else
  {
    v13 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      *buf = 134218754;
      v21 = self;
      v22 = 2048;
      v23 = v7;
      v24 = 1024;
      v25 = [v7 processIdentifier];
      v26 = 2112;
      v27 = v4;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "%p for conn: %p pid: %d, client unsubscribe event failure for nois: %@", buf, 0x26u);
    }
  }

  objc_autoreleasePoolPop(v6);
  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __33__ServiceImpl_unsubscribeToNOIs___block_invoke(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = a1[7];
    v9 = 136315394;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: unsubscribeToNOIs: [NOI] QoS %s (%lu)", &v9, 0x16u);
  }

  result = [*(a1[4] + 24) unsubscribeToNOIs:a1[5] connection:a1[6]];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)identifierForUUID:(id)a3 reply:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = ++_query_id;
  v9 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v10 = v9;
    v11 = [v6 UUIDString];
    v12 = qos_class_self();
    *buf = 138412802;
    v24 = v11;
    v25 = 2080;
    v26 = qos_string(v12);
    v27 = 2048;
    v28 = v8;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: received identifier request for UUID: %@ QoS %s (%lu)", buf, 0x20u);
  }

  v13 = objc_autoreleasePoolPush();
  if (v6)
  {
    v14 = [(AnalyticsEngineCore *)self->f_engine queue];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __39__ServiceImpl_identifierForUUID_reply___block_invoke;
    v19[3] = &unk_27898E808;
    v22 = v8;
    v19[4] = self;
    v20 = v6;
    v21 = v7;
    v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v19);
    dispatch_async(v14, v15);
  }

  else
  {
    v16 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "SymptomAnalytics ServiceImpl: received query w/ nil UUID", buf, 2u);
    }

    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
    (*(v7 + 2))(v7, 0, 0, v17);
  }

  objc_autoreleasePoolPop(v13);

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __39__ServiceImpl_identifierForUUID_reply___block_invoke(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = a1[7];
    v9 = 136315394;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: identifierForUUID:reply: [FAE] QoS %s (%lu)", &v9, 0x16u);
  }

  result = [*(a1[4] + 8) identifierForUUID:a1[5] reply:a1[6]];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)getExpertSystemsStatus:(id)a3
{
  v4 = a3;
  ++_query_id;
  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x277CCAE80] currentConnection];
  if ([(ServiceImpl *)self assertEntitlement:v6 entitlement:13 orWaiveOnIntent:0])
  {
    [v6 setInvalidationHandler:&__block_literal_global_205];
    v7 = [MEMORY[0x277CBEB38] dictionary];
    v8 = +[CellFallbackHandler internalStateDictionary];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v7 setObject:v8 forKeyedSubscript:v10];

    v11 = +[NoBackhaulHandler internalStateDictionary];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [v7 setObject:v11 forKeyedSubscript:v13];

    v14 = +[CellOutrankHandler internalStateDictionary];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v7 setObject:v14 forKeyedSubscript:v16];

    if (v4)
    {
      v4[2](v4, v7);
    }
  }

  else
  {
    v17 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_ERROR, "RNFTest: unauthorized connection", v18, 2u);
    }
  }

  objc_autoreleasePoolPop(v5);
}

void __38__ServiceImpl_getExpertSystemsStatus___block_invoke()
{
  v0 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v1 = 0;
    _os_log_impl(&dword_23255B000, v0, OS_LOG_TYPE_DEBUG, "RNFTest: rnf test tool connection was invalidated", v1, 2u);
  }
}

- (void)trainModelAndScore:(BOOL)a3 lastScoreDate:(id)a4 reply:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = ++_query_id;
  v11 = objc_autoreleasePoolPush();
  v12 = [MEMORY[0x277CCAE80] currentConnection];
  v13 = [(ServiceImpl *)self assertEntitlement:v12 entitlement:0 orWaiveOnIntent:0];

  if (v13)
  {
    v14 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v15 = v14;
      v16 = qos_class_self();
      *buf = 136315394;
      v27 = qos_string(v16);
      v28 = 2048;
      v29 = v10;
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: (trainModelAndScore:lastScoreDate:reply:) authorized QoS %s (%lu)", buf, 0x16u);
    }

    v17 = [(AnalyticsEngineCore *)self->n_engine queue];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __54__ServiceImpl_trainModelAndScore_lastScoreDate_reply___block_invoke;
    v21[3] = &unk_27898E830;
    v24 = v10;
    v25 = a3;
    v22 = v8;
    v23 = v9;
    v18 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v21);
    dispatch_async(v17, v18);
  }

  else if (v9)
  {
    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:13 userInfo:0];
    (*(v9 + 2))(v9, 0, v19);

    xpc_transaction_exit_clean();
  }

  objc_autoreleasePoolPop(v11);

  v20 = *MEMORY[0x277D85DE8];
}

void __54__ServiceImpl_trainModelAndScore_lastScoreDate_reply___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = *(a1 + 48);
    *buf = 136315394;
    v18 = v5;
    v19 = 2048;
    v20 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: trainModelAndScore:lastScoreDate:reply: [NAE] QoS %s (%lu)", buf, 0x16u);
  }

  v7 = *(a1 + 56);
  v8 = *(a1 + 32);
  v16 = 0;
  v9 = [NetworkAnalyticsEngine trainModelAndScore:v7 lastScoreDate:v8 output:&v16];
  v10 = v16;
  v11 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v12 = "false";
    if (v9)
    {
      v12 = "true";
    }

    *buf = 136315138;
    v18 = v12;
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "Train and score complete. Success:%s", buf, 0xCu);
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    if (v9)
    {
      (*(v13 + 16))(v13, v10, 0);
    }

    else
    {
      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
      (*(v13 + 16))(v13, v10, v14);
    }
  }

  xpc_transaction_exit_clean();

  v15 = *MEMORY[0x277D85DE8];
}

- (void)startRNFTestWithOptions:(id)a3 scenarioName:(id)a4 reply:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = ++_query_id;
  v12 = objc_autoreleasePoolPush();
  v13 = [MEMORY[0x277CCAE80] currentConnection];
  if ([(ServiceImpl *)self assertEntitlement:v13 entitlement:13 orWaiveOnIntent:0])
  {
    v14 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v15 = v14;
      v16 = qos_class_self();
      *buf = 136315394;
      v30 = qos_string(v16);
      v31 = 2048;
      v32 = v11;
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: (startRNFTestWithOptions:scenarioName:reply:) authorized QoS %s (%lu)", buf, 0x16u);
    }

    v17 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28482A6A8];
    [v13 setRemoteObjectInterface:v17];

    [v13 setInvalidationHandler:&__block_literal_global_213];
    v18 = [(AnalyticsEngineCore *)self->n_engine queue];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __58__ServiceImpl_startRNFTestWithOptions_scenarioName_reply___block_invoke_214;
    v23[3] = &unk_27898E718;
    v28 = v11;
    v23[4] = self;
    v24 = v13;
    v25 = v8;
    v26 = v9;
    v27 = v10;
    v19 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v23);
    dispatch_async(v18, v19);
  }

  else
  {
    if (v10)
    {
      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:13 userInfo:0];
      (*(v10 + 2))(v10, 0, v20);
    }

    v21 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_ERROR, "RNFTest: unauthorized connection", buf, 2u);
    }
  }

  objc_autoreleasePoolPop(v12);
  v22 = *MEMORY[0x277D85DE8];
}

void __58__ServiceImpl_startRNFTestWithOptions_scenarioName_reply___block_invoke()
{
  v0 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v1 = 0;
    _os_log_impl(&dword_23255B000, v0, OS_LOG_TYPE_DEBUG, "RNFTest: rnf test tool connection was invalidated", v1, 2u);
  }
}

uint64_t __58__ServiceImpl_startRNFTestWithOptions_scenarioName_reply___block_invoke_214(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = a1[9];
    v9 = 136315394;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: startRNFTestWithOptions:scenarioName:reply: [NAE] QoS %s (%lu)", &v9, 0x16u);
  }

  result = [*(a1[4] + 16) startRNFTestWithConnection:a1[5] options:a1[6] scenarioName:a1[7] reply:a1[8]];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)abortRNFTestWithReply:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ++_query_id;
  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277CCAE80] currentConnection];
  if ([(ServiceImpl *)self assertEntitlement:v7 entitlement:13 orWaiveOnIntent:0])
  {
    v8 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v9 = v8;
      v10 = qos_class_self();
      *buf = 136315394;
      v21 = qos_string(v10);
      v22 = 2048;
      v23 = v5;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: (abortRNFTestWithReply:) QoS %s (%lu)", buf, 0x16u);
    }

    v11 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28482A6A8];
    [v7 setRemoteObjectInterface:v11];

    [v7 setInvalidationHandler:&__block_literal_global_216];
    v12 = [(AnalyticsEngineCore *)self->n_engine queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__ServiceImpl_abortRNFTestWithReply___block_invoke_217;
    block[3] = &unk_27898E858;
    v19 = v5;
    block[4] = self;
    v18 = v4;
    v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(v12, v13);
  }

  else
  {
    if (v4)
    {
      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:13 userInfo:0];
      (*(v4 + 2))(v4, 0, v14);
    }

    v15 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "RNFTest: unauthorized connection", buf, 2u);
    }
  }

  objc_autoreleasePoolPop(v6);
  v16 = *MEMORY[0x277D85DE8];
}

void __37__ServiceImpl_abortRNFTestWithReply___block_invoke()
{
  v0 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v1 = 0;
    _os_log_impl(&dword_23255B000, v0, OS_LOG_TYPE_DEBUG, "RNFTest: rnf test tool connection was invalidated", v1, 2u);
  }
}

uint64_t __37__ServiceImpl_abortRNFTestWithReply___block_invoke_217(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = a1[6];
    v9 = 136315394;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: abortRNFTestWithReply: [NAE] QoS %s (%lu)", &v9, 0x16u);
  }

  result = [*(a1[4] + 16) abortRNFTestWithReply:a1[5]];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)performPersistentStoreHealthCheckWithReply:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ++_query_id;
  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277CCAE80] currentConnection];
  v8 = [(ServiceImpl *)self assertEntitlement:v7 entitlement:10 orWaiveOnIntent:0];

  if (v8)
  {
    v9 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v10 = v9;
      v11 = qos_class_self();
      *buf = 136315394;
      v20 = qos_string(v11);
      v21 = 2048;
      v22 = v5;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: (performPersistentStoreHealthCheckWithReply:) QoS %s (%lu)", buf, 0x16u);
    }

    v12 = [(AnalyticsEngineCore *)self->n_engine queue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __58__ServiceImpl_performPersistentStoreHealthCheckWithReply___block_invoke;
    v16[3] = &unk_27898C440;
    v18 = v5;
    v17 = v4;
    v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v16);
    dispatch_async(v12, v13);
  }

  else if (v4)
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:13 userInfo:0];
    (*(v4 + 2))(v4, 0, v14);

    xpc_transaction_exit_clean();
  }

  objc_autoreleasePoolPop(v6);

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __58__ServiceImpl_performPersistentStoreHealthCheckWithReply___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = *(a1 + 40);
    v13 = 136315394;
    v14 = v5;
    v15 = 2048;
    v16 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: performPersistentStoreHealthCheckWithReply: [NAE] QoS %s (%lu)", &v13, 0x16u);
  }

  [NetworkAnalyticsEngine performPersistentStoreHealthCheckWithReply:*(a1 + 32)];
  v7 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = v7;
    v10 = _Block_copy(v8);
    v13 = 138412290;
    v14 = v10;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "performPersistentStoreHealthCheckWithReply complete: %@", &v13, 0xCu);
  }

  result = xpc_transaction_exit_clean();
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)performAppPeriodicTasksWithReply:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ++_query_id;
  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277CCAE80] currentConnection];
  v8 = [(ServiceImpl *)self assertEntitlement:v7 entitlement:0 orWaiveOnIntent:0];

  if (v8)
  {
    v9 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v10 = v9;
      v11 = qos_class_self();
      *buf = 136315394;
      v20 = qos_string(v11);
      v21 = 2048;
      v22 = v5;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: (performAppPeriodicTasksWithReply:) QoS %s (%lu)", buf, 0x16u);
    }

    v12 = [(AnalyticsEngineCore *)self->f_engine queue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __48__ServiceImpl_performAppPeriodicTasksWithReply___block_invoke;
    v16[3] = &unk_27898C440;
    v18 = v5;
    v17 = v4;
    v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v16);
    dispatch_async(v12, v13);
  }

  else if (v4)
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:13 userInfo:0];
    (*(v4 + 2))(v4, 0, v14);

    xpc_transaction_exit_clean();
  }

  objc_autoreleasePoolPop(v6);

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __48__ServiceImpl_performAppPeriodicTasksWithReply___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = *(a1 + 40);
    v10 = 136315394;
    v11 = v5;
    v12 = 2048;
    v13 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: performAppPeriodicTasksWithReply: [FAE] QoS %s (%lu)", &v10, 0x16u);
  }

  [FlowAnalyticsEngine performAppPeriodicActivityWithReply:*(a1 + 32)];
  v7 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "performAppPeriodicActivityWithReply complete", &v10, 2u);
  }

  result = xpc_transaction_exit_clean();
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)performAppTrackingPeriodicTasksWithReply:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ++_query_id;
  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277CCAE80] currentConnection];
  v8 = [(ServiceImpl *)self assertEntitlement:v7 entitlement:0 orWaiveOnIntent:0];

  if (v8)
  {
    v9 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v10 = v9;
      v11 = qos_class_self();
      *buf = 136315394;
      v20 = qos_string(v11);
      v21 = 2048;
      v22 = v5;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: (performAppTrackingPeriodicTasksWithReply:) QoS %s (%lu)", buf, 0x16u);
    }

    v12 = [(AnalyticsEngineCore *)self->f_engine queue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __56__ServiceImpl_performAppTrackingPeriodicTasksWithReply___block_invoke;
    v16[3] = &unk_27898C440;
    v18 = v5;
    v17 = v4;
    v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v16);
    dispatch_async(v12, v13);
  }

  else if (v4)
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:13 userInfo:0];
    (*(v4 + 2))(v4, 0, v14);

    xpc_transaction_exit_clean();
  }

  objc_autoreleasePoolPop(v6);

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __56__ServiceImpl_performAppTrackingPeriodicTasksWithReply___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = *(a1 + 40);
    v10 = 136315394;
    v11 = v5;
    v12 = 2048;
    v13 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: performAppTrackingPeriodicTasksWithReply: [FAE] QoS %s (%lu)", &v10, 0x16u);
  }

  [FlowAnalyticsEngine performAppTrackingPeriodicActivityWithReply:*(a1 + 32)];
  v7 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "performAppTrackingPeriodicTasksWithReply complete:", &v10, 2u);
  }

  result = xpc_transaction_exit_clean();
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)performAppExperiencePeriodicTasksWithReply:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ++_query_id;
  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277CCAE80] currentConnection];
  v8 = [(ServiceImpl *)self assertEntitlement:v7 entitlement:0 orWaiveOnIntent:0];

  if (v8)
  {
    v9 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v10 = v9;
      v11 = qos_class_self();
      *buf = 136315394;
      v20 = qos_string(v11);
      v21 = 2048;
      v22 = v5;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: (performAppExperiencePeriodicTasksWithReply:) QoS %s (%lu)", buf, 0x16u);
    }

    v12 = [(AnalyticsEngineCore *)self->f_engine queue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __58__ServiceImpl_performAppExperiencePeriodicTasksWithReply___block_invoke;
    v16[3] = &unk_27898C440;
    v18 = v5;
    v17 = v4;
    v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v16);
    dispatch_async(v12, v13);
  }

  else if (v4)
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:13 userInfo:0];
    (*(v4 + 2))(v4, 0, v14);

    xpc_transaction_exit_clean();
  }

  objc_autoreleasePoolPop(v6);

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __58__ServiceImpl_performAppExperiencePeriodicTasksWithReply___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = *(a1 + 40);
    v10 = 136315394;
    v11 = v5;
    v12 = 2048;
    v13 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: performAppExperiencePeriodicTasksWithReply: [FAE] QoS %s (%lu)", &v10, 0x16u);
  }

  [FlowAnalyticsEngine performAppExperiencePeriodicActivityWithReply:*(a1 + 32)];
  v7 = appExperienceLogHandle;
  if (os_log_type_enabled(appExperienceLogHandle, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "performAppExperiencePeriodicTasksWithReply complete:", &v10, 2u);
  }

  result = xpc_transaction_exit_clean();
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)performAppEndpointTrackingPeriodicTasksWithReply:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ++_query_id;
  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277CCAE80] currentConnection];
  v8 = [(ServiceImpl *)self assertEntitlement:v7 entitlement:0 orWaiveOnIntent:0];

  if (v8)
  {
    v9 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v10 = v9;
      v11 = qos_class_self();
      *buf = 136315394;
      v20 = qos_string(v11);
      v21 = 2048;
      v22 = v5;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: (performAppEndpointTrackingPeriodicTasksWithReply:) QoS %s (%lu)", buf, 0x16u);
    }

    v12 = [(AnalyticsEngineCore *)self->f_engine queue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __64__ServiceImpl_performAppEndpointTrackingPeriodicTasksWithReply___block_invoke;
    v16[3] = &unk_27898C440;
    v18 = v5;
    v17 = v4;
    v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v16);
    dispatch_async(v12, v13);
  }

  else if (v4)
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:13 userInfo:0];
    (*(v4 + 2))(v4, 0, v14);

    xpc_transaction_exit_clean();
  }

  objc_autoreleasePoolPop(v6);

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __64__ServiceImpl_performAppEndpointTrackingPeriodicTasksWithReply___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = *(a1 + 40);
    v10 = 136315394;
    v11 = v5;
    v12 = 2048;
    v13 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: performAppEndpointTrackingPeriodicTasksWithReply: [FAE] QoS %s (%lu)", &v10, 0x16u);
  }

  [FlowAnalyticsEngine performAppEndpointTrackingPeriodicActivityWithReply:*(a1 + 32)];
  v7 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "performAppEndpointTrackingPeriodicTasksWithReply complete:", &v10, 2u);
  }

  result = xpc_transaction_exit_clean();
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)donateBiomeEventForEdgeSelectionWithPrefix:(id)a3 interfaceType:(id)a4 radioType:(id)a5 radioBand:(id)a6 latitude:(double)a7 longitude:(double)a8 reply:(id)a9
{
  v23 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a9;
  ++_query_id;
  v20 = objc_autoreleasePoolPush();
  v21 = [MEMORY[0x277CCAE80] currentConnection];
  LODWORD(self) = [(ServiceImpl *)self assertEntitlement:v21 entitlement:0 orWaiveOnIntent:0];

  if (self)
  {
    v22 = +[GeoDBHandler sharedInstance];
    [v22 donateBiomeEventForEdgeSelectionWithPrefix:v23 interfaceType:v16 radioType:v17 radioBand:v18 latitude:v19 longitude:a7 reply:a8];
  }

  else
  {
    if (!v19)
    {
      goto LABEL_6;
    }

    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:13 userInfo:0];
    v19[2](v19, 0, v22);
  }

  xpc_transaction_exit_clean();
LABEL_6:
  objc_autoreleasePoolPop(v20);
}

- (void)clientTransactionsRelease
{
  n_engine = self->n_engine;
  if (n_engine)
  {
    v4 = [(AnalyticsEngineCore *)n_engine queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__ServiceImpl_clientTransactionsRelease__block_invoke;
    block[3] = &unk_27898A0C8;
    block[4] = self;
    dispatch_sync(v4, block);

    v5 = evaluationLogHandle;
    if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "Network analytics client transactions release", buf, 2u);
    }
  }

  noi_engine = self->noi_engine;
  if (noi_engine)
  {
    v7 = [(AnalyticsEngineCore *)noi_engine queue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __40__ServiceImpl_clientTransactionsRelease__block_invoke_219;
    v9[3] = &unk_27898A0C8;
    v9[4] = self;
    dispatch_sync(v7, v9);

    v8 = evaluationLogHandle;
    if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "NOI client transactions release", buf, 2u);
    }
  }
}

- (void)shutdown
{
  f_engine = self->f_engine;
  if (f_engine)
  {
    v4 = [(AnalyticsEngineCore *)f_engine queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __23__ServiceImpl_shutdown__block_invoke;
    block[3] = &unk_27898A0C8;
    block[4] = self;
    dispatch_sync(v4, block);

    v5 = evaluationLogHandle;
    if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "Flow analytics saved", buf, 2u);
    }
  }

  n_engine = self->n_engine;
  if (n_engine)
  {
    v7 = [(AnalyticsEngineCore *)n_engine queue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __23__ServiceImpl_shutdown__block_invoke_220;
    v9[3] = &unk_27898A0C8;
    v9[4] = self;
    dispatch_sync(v7, v9);

    v8 = evaluationLogHandle;
    if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "Network analytics saved", buf, 2u);
    }
  }
}

- (void)setUsageOption:(id)a3 reply:(id)a4
{
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionaryWithObjectsAndKeys:{@"kSymptomAnalyticsServiceUsage", @"kSymptomAnalyticsServiceUsage", 0}];
  [(ServiceImpl *)self setOption:v8 inScopes:v9 reply:v7];
}

- (void)resetUsageFor:(id)a3 nameKind:(id)a4 reply:(id)a5
{
  ++_query_id;
  v8 = MEMORY[0x277CBEAC0];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 dictionaryWithObjectsAndKeys:{@"kSymptomAnalyticsServiceUsage", @"kSymptomAnalyticsServiceUsage", 0}];
  [(ServiceImpl *)self resetDataFor:v11 nameKind:v10 inScopes:v12 reply:v9];
}

- (void)waitForOSLogErrorSymptomWithReply:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ++_query_id;
  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277CCAE80] currentConnection];
  v8 = [(ServiceImpl *)self assertEntitlement:v7 entitlement:14 orWaiveOnIntent:0];
  v9 = analyticsLogHandle;
  if (v8)
  {
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v10 = v9;
      v11 = qos_class_self();
      *buf = 136315394;
      v19 = qos_string(v11);
      v20 = 2048;
      v21 = v5;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: (waitForOSLogErrorSymptomWithReply:) Authorized QoS %s (%lu)", buf, 0x16u);
    }

    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__ServiceImpl_waitForOSLogErrorSymptomWithReply___block_invoke;
    block[3] = &unk_27898E858;
    v17 = v5;
    block[4] = self;
    v16 = v4;
    v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(queue, v13);
  }

  else if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "os_log_error with symptom test: unauthorized connection", buf, 2u);
  }

  objc_autoreleasePoolPop(v6);
  v14 = *MEMORY[0x277D85DE8];
}

void __49__ServiceImpl_waitForOSLogErrorSymptomWithReply___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = *(a1 + 48);
    *buf = 136315394;
    *&buf[4] = v5;
    *&buf[12] = 2048;
    *&buf[14] = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: waitForOSLogErrorSymptomWithReply: [XPC] QoS %s (%lu)", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v22 = __Block_byref_object_copy__13;
  v23 = __Block_byref_object_dispose__13;
  v24 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(*(a1 + 32) + 40));
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __49__ServiceImpl_waitForOSLogErrorSymptomWithReply___block_invoke_221;
  v18[3] = &unk_27898E880;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v20 = buf;
  v18[4] = v8;
  v19 = v9;
  v10 = [v7 addObserverForName:@"com.apple.symptoms.oslogfromsymptomstool" object:0 queue:0 usingBlock:v18];

  v11 = *(*&buf[8] + 40);
  v12 = dispatch_time(0, 5000000000);
  dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0);
  v13 = *(*&buf[8] + 40);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __49__ServiceImpl_waitForOSLogErrorSymptomWithReply___block_invoke_2;
  handler[3] = &unk_27898E8A8;
  v16 = *(a1 + 40);
  v17 = buf;
  dispatch_source_set_event_handler(v13, handler);
  dispatch_resume(*(*&buf[8] + 40));

  _Block_object_dispose(buf, 8);
  v14 = *MEMORY[0x277D85DE8];
}

void __49__ServiceImpl_waitForOSLogErrorSymptomWithReply___block_invoke_221(void *a1, void *a2)
{
  v10 = a2;
  v3 = *(*(a1[6] + 8) + 40);
  if (v3)
  {
    dispatch_source_cancel(v3);
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;
  }

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 removeObserver:a1[4] name:@"com.apple.symptoms.oslogfromsymptomstool" object:0];

  v7 = a1[5];
  v8 = v10;
  if (v7)
  {
    v9 = [v10 userInfo];
    (*(v7 + 16))(v7, v9, 0);

    v8 = v10;
  }
}

void __49__ServiceImpl_waitForOSLogErrorSymptomWithReply___block_invoke_2(uint64_t a1)
{
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_ERROR, "os_log_error with symptom test failed. Timed out waiting for kNotificationSymptomsOSLogReceivedFromSymptomsTool", v7, 2u);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:60 userInfo:0];
    (*(v3 + 16))(v3, 0, v4);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

- (void)assertFactString:(id)a3 module:(id)a4 asSymptom:(BOOL)a5 reply:(id)a6
{
  v7 = a5;
  v38 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = ++_query_id;
  v14 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = v10;
    _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "SFServiceInterface: Request to assert fact string %@", buf, 0xCu);
  }

  v15 = [MEMORY[0x277CBEB38] dictionary];
  v16 = [MEMORY[0x277CCAE80] currentConnection];
  v17 = [(ServiceImpl *)self assertEntitlement:v16 entitlement:15 orWaiveOnIntent:0];
  v18 = debuggabilityLogHandle;
  v19 = os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    if (v19)
    {
      v20 = v18;
      v21 = qos_class_self();
      v22 = qos_string(v21);
      *buf = 136315394;
      v35 = v22;
      v36 = 2048;
      v37 = v13;
      _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEFAULT, "SFServiceInterface: CLIPS fact assertion authorized QoS %s (%lu)", buf, 0x16u);
    }

    v23 = +[SymptomExpertSystemHandler sharedInstance];
    v24 = v23;
    if (!v7)
    {
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __55__ServiceImpl_assertFactString_module_asSymptom_reply___block_invoke_2;
      v28[3] = &unk_27898E8D0;
      v30 = v12;
      v28[4] = self;
      v29 = v15;
      [v24 assertFactAndRun:v10 module:v11 reply:v28];

      v26 = v30;
      goto LABEL_14;
    }

    [v23 assertFactAsSymptom:v10 module:v11];

    if (v12)
    {
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __55__ServiceImpl_assertFactString_module_asSymptom_reply___block_invoke;
      block[3] = &unk_27898C648;
      v32 = v15;
      v33 = v12;
      dispatch_async(queue, block);

      v26 = v32;
LABEL_14:
    }
  }

  else
  {
    if (v19)
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEFAULT, "SFServiceInterface: not entitled to access private API", buf, 2u);
    }

    if (v12)
    {
      [v15 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"SymptomAnalyticsServiceSuccess"];
      (*(v12 + 2))(v12, v15);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t __55__ServiceImpl_assertFactString_module_asSymptom_reply___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"SymptomAnalyticsServiceSuccess"];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __55__ServiceImpl_assertFactString_module_asSymptom_reply___block_invoke_2(uint64_t a1, char a2)
{
  if (*(a1 + 48))
  {
    v4 = *(*(a1 + 32) + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__ServiceImpl_assertFactString_module_asSymptom_reply___block_invoke_3;
    block[3] = &unk_27898DD18;
    v6 = *(a1 + 40);
    v8 = a2;
    v7 = *(a1 + 48);
    dispatch_async(v4, block);
  }
}

uint64_t __55__ServiceImpl_assertFactString_module_asSymptom_reply___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
  [*(a1 + 32) setObject:v2 forKeyedSubscript:@"SymptomAnalyticsServiceSuccess"];

  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)postCoreAnalyticsEvent:(id)a3 forEventName:(id)a4 reply:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = ++_query_id;
  v12 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v8;
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "SFServiceInterface: request to post AWD Event %@", buf, 0xCu);
  }

  v13 = [MEMORY[0x277CBEB38] dictionary];
  v14 = [MEMORY[0x277CCAE80] currentConnection];
  v15 = [(ServiceImpl *)self assertEntitlement:v14 entitlement:15 orWaiveOnIntent:0];
  v16 = debuggabilityLogHandle;
  v17 = os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    if (v17)
    {
      v18 = v16;
      v19 = qos_class_self();
      v20 = qos_string(v19);
      *buf = 136315394;
      v30 = v20;
      v31 = 2048;
      v32 = v11;
      _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEFAULT, "SFServiceInterface: post AWD Event authorized QoS %s (%lu)", buf, 0x16u);
    }

    v21 = +[SymptomExpertSystemHandler sharedInstance];
    v22 = [v21 postCoreAnalyticsEvent:v8 forEventName:v9];

    if (v10)
    {
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __57__ServiceImpl_postCoreAnalyticsEvent_forEventName_reply___block_invoke;
      block[3] = &unk_27898DD18;
      v26 = v13;
      v28 = v22;
      v27 = v10;
      dispatch_async(queue, block);
    }
  }

  else
  {
    if (v17)
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, "SFServiceInterface: not entitled to access private API", buf, 2u);
    }

    if (v10)
    {
      [v13 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"SymptomAnalyticsServiceSuccess"];
      (*(v10 + 2))(v10, v13);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __57__ServiceImpl_postCoreAnalyticsEvent_forEventName_reply___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
  [*(a1 + 32) setObject:v2 forKeyedSubscript:@"SymptomAnalyticsServiceSuccess"];

  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)getPreferCellOverWiFiWithOptions:(id)a3 reply:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = ++_query_id;
  v9 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *v29 = v6;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "getPreferCellOverWiFiWithOptions entered with %@", buf, 0xCu);
  }

  v10 = objc_autoreleasePoolPush();
  v11 = [MEMORY[0x277CCAE80] currentConnection];
  v12 = [(ServiceImpl *)self assertEntitlement:v11 entitlement:16 orWaiveOnIntent:0];

  v13 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v14 = v13;
    v15 = qos_class_self();
    v16 = qos_string(v15);
    *buf = 67109634;
    *v29 = v12;
    *&v29[4] = 2080;
    *&v29[6] = v16;
    v30 = 2048;
    v31 = v8;
    _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEBUG, "getPreferCellOverWiFiWithOptions trainEntitl %d QoS %s (%lu)", buf, 0x1Cu);
  }

  if (v12)
  {
    if (v7)
    {
      v17 = +[CellOutrankForceSPIHandler sharedInstance];
      v18 = [v17 queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__ServiceImpl_getPreferCellOverWiFiWithOptions_reply___block_invoke;
      block[3] = &unk_27898E8F8;
      v23 = v6;
      v24 = v17;
      v25 = self;
      v27 = v8;
      v26 = v7;
      v19 = v17;
      v20 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
      dispatch_async(v18, v20);

LABEL_10:
    }
  }

  else if (v7)
  {
    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:13 userInfo:0];
    (*(v7 + 2))(v7, 0, v19);
    goto LABEL_10;
  }

  objc_autoreleasePoolPop(v10);

  v21 = *MEMORY[0x277D85DE8];
}

void __54__ServiceImpl_getPreferCellOverWiFiWithOptions_reply___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    *buf = 136315138;
    v21 = qos_string(v4);
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "getPreferCellOverWiFiWithOptions [CellOutrankForceSPIHandler] QoS %s", buf, 0xCu);
  }

  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [*(a1 + 32) objectForKeyedSubscript:@"ForcePreferCellOverWiFiEnable"];

  if (v6)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "cellOutrankForcedViaSPI")}];
    [v5 setObject:v7 forKeyedSubscript:@"ForcePreferCellOverWiFiEnable"];
  }

  v8 = [*(a1 + 32) objectForKeyedSubscript:@"ForcePreferCellOverWiFiAutoDisableTimestamp"];

  if (v8)
  {
    v9 = MEMORY[0x277CCABB0];
    [*(a1 + 40) cellOutrankForcedViaSPIUntil];
    v10 = [v9 numberWithDouble:?];
    [v5 setObject:v10 forKeyedSubscript:@"ForcePreferCellOverWiFiAutoDisableTimestamp"];
  }

  v11 = *(*(a1 + 48) + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__ServiceImpl_getPreferCellOverWiFiWithOptions_reply___block_invoke_225;
  block[3] = &unk_27898DCF0;
  v12 = *(a1 + 56);
  v19 = *(a1 + 64);
  v17 = v5;
  v18 = v12;
  v13 = v5;
  v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v11, v14);

  v15 = *MEMORY[0x277D85DE8];
}

void __54__ServiceImpl_getPreferCellOverWiFiWithOptions_reply___block_invoke_225(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = a1[6];
    v10 = 136315394;
    v11 = v5;
    v12 = 2048;
    v13 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "getPreferCellOverWiFiWithOptions reply QoS %s (%lu)", &v10, 0x16u);
  }

  v7 = a1[4];
  (*(a1[5] + 16))();
  v8 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "getPreferCellOverWiFiWithOptions complete:", &v10, 2u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setPreferCellOverWiFiWithOptions:(id)a3 reply:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = ++_query_id;
  v9 = objc_autoreleasePoolPush();
  v10 = [MEMORY[0x277CCAE80] currentConnection];
  v11 = [(ServiceImpl *)self assertEntitlement:v10 entitlement:16 orWaiveOnIntent:0];

  v12 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v13 = v12;
    v14 = qos_class_self();
    *buf = 67109890;
    v27 = v11;
    v28 = 2112;
    v29 = v6;
    v30 = 2080;
    v31 = qos_string(v14);
    v32 = 2048;
    v33 = v8;
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "setPreferCellOverWiFiWithOptions trainEntitl %d for entry %@ QoS %s (%lu)", buf, 0x26u);
  }

  if (v11)
  {
    if (v6)
    {
      v15 = +[CellOutrankForceSPIHandler sharedInstance];
      v16 = [v15 queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__ServiceImpl_setPreferCellOverWiFiWithOptions_reply___block_invoke;
      block[3] = &unk_27898E920;
      v25 = v8;
      v21 = v6;
      v22 = v15;
      v23 = self;
      v24 = v7;
      v17 = v15;
      v18 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
      dispatch_async(v16, v18);

LABEL_8:
    }
  }

  else if (v7)
  {
    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:13 userInfo:0];
    (*(v7 + 2))(v7, 0, v17);
    goto LABEL_8;
  }

  objc_autoreleasePoolPop(v9);

  v19 = *MEMORY[0x277D85DE8];
}

void __54__ServiceImpl_setPreferCellOverWiFiWithOptions_reply___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = *(a1 + 64);
    *buf = 136315394;
    v25 = v5;
    v26 = 2048;
    v27 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "setPreferCellOverWiFiWithOptions [CellOutrankForceSPIHandler] QoS %s (%lu)", buf, 0x16u);
  }

  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = [*(a1 + 32) objectForKeyedSubscript:@"ForcePreferCellOverWiFiEnable"];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "cellOutrankForcedViaSPI")}];
    [v7 setObject:v9 forKeyedSubscript:@"ForcePreferCellOverWiFiEnable"];

    v10 = [v8 BOOLValue];
  }

  else
  {
    v10 = 0;
  }

  v11 = [*(a1 + 32) objectForKeyedSubscript:@"ForcePreferCellOverWiFiAutoDisableTimestamp"];
  v12 = 0.0;
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = MEMORY[0x277CCABB0];
      [*(a1 + 40) cellOutrankForcedViaSPIUntil];
      v14 = [v13 numberWithDouble:?];
      [v7 setObject:v14 forKeyedSubscript:@"ForcePreferCellOverWiFiAutoDisableTimestamp"];

      [v11 doubleValue];
      v12 = v15;
    }
  }

  [*(a1 + 40) setForcePreferCellOverWiFi:v10 autoDisableTimestamp:v12];
  v16 = *(a1 + 56);
  if (v16)
  {
    v17 = *(*(a1 + 48) + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__ServiceImpl_setPreferCellOverWiFiWithOptions_reply___block_invoke_226;
    block[3] = &unk_27898DCF0;
    v23 = *(a1 + 64);
    v22 = v16;
    v21 = v7;
    v18 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(v17, v18);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __54__ServiceImpl_setPreferCellOverWiFiWithOptions_reply___block_invoke_226(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = a1[6];
    v10 = 136315394;
    v11 = v5;
    v12 = 2048;
    v13 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "setPreferCellOverWiFiWithOptions reply QoS %s (%lu)", &v10, 0x16u);
  }

  v7 = a1[4];
  (*(a1[5] + 16))();
  v8 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "setPreferCellOverWiFiWithOptions complete:", &v10, 2u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)retrieveActivityMetrics:(id)a3 reply:(id)a4
{
  v37[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  ++_query_id;
  if (v7)
  {
    v9 = [MEMORY[0x277CCAE80] currentConnection];
    if ([(ServiceImpl *)self assertEntitlement:v9 entitlement:17 orWaiveOnIntent:0])
    {
      if (([(ServiceImpl *)self _checkRateLimitForConnection:v9]& 1) != 0)
      {
        if (!v6)
        {
          v28 = analyticsLogHandle;
          if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_ERROR, "retrieveActivityMetrics: Activity is required", buf, 2u);
          }

          v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:72 userInfo:0];
          v7[2](v7, 0, v10);
          goto LABEL_20;
        }

        v10 = +[NWActivityHandler sharedMetricsQueue];
        if (v10)
        {
          v11 = [[NWActivityHelper alloc] initWithQueue:v10];
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __45__ServiceImpl_retrieveActivityMetrics_reply___block_invoke;
          v30[3] = &unk_27898E948;
          v31 = v7;
          [(NWActivityHelper *)v11 retrieveNWActivityMetricsForActivity:v6 completion:v30];

LABEL_19:
LABEL_20:

          goto LABEL_21;
        }

        v29 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v29, OS_LOG_TYPE_ERROR, "retrieveActivityMetrics: Queue not available", buf, 2u);
        }

        v16 = MEMORY[0x277CCA9B8];
        v17 = *MEMORY[0x277CCA5B8];
        v18 = 74;
        v26 = 0;
LABEL_18:
        v11 = [v16 errorWithDomain:v17 code:v18 userInfo:v26];
        v7[2](v7, 0, v11);
        goto LABEL_19;
      }

      v19 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
      {
        v20 = v19;
        v21 = pid_to_process_name([v9 processIdentifier]);
        v22 = v21;
        v23 = @"<unknown>";
        if (v21)
        {
          v23 = v21;
        }

        *buf = 138412290;
        v35 = v23;
        _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_ERROR, "retrieveActivityMetrics from %@ denied due to rate limit control", buf, 0xCu);
      }

      v24 = MEMORY[0x277CCA9B8];
      v25 = *MEMORY[0x277CCA5B8];
      v32 = *MEMORY[0x277CCA450];
      v33 = @"Rate limit exceeded.";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v16 = v24;
      v17 = v25;
      v18 = 16;
    }

    else
    {
      v13 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "retrieveActivityMetrics does not have required entitlement", buf, 2u);
      }

      v14 = MEMORY[0x277CCA9B8];
      v15 = *MEMORY[0x277CCA5B8];
      v36 = *MEMORY[0x277CCA450];
      v37[0] = @"An entitlement is required for retrieving nw_activity information.";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
      v16 = v14;
      v17 = v15;
      v18 = 13;
    }

    v26 = v10;
    goto LABEL_18;
  }

  v12 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, "retrieveActivityMetrics: Reply is required", buf, 2u);
  }

LABEL_21:
  objc_autoreleasePoolPop(v8);

  v27 = *MEMORY[0x277D85DE8];
}

- (void)updatedNDFDeviceRecords:(id)a3 reply:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  ++_query_id;
  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [MEMORY[0x277CCAE80] currentConnection];
    if ([(ServiceImpl *)self assertEntitlement:v9 entitlement:18 orWaiveOnIntent:0])
    {
      v10 = +[NDFCoreShim sharedInstance];
      [v10 noteDeviceRecordUpdates:v6 reply:v7];
    }

    else
    {
      v12 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        v13 = v12;
        v14 = [v9 processIdentifier];
        v15 = [SFEntitlements stringForEntitlement:18];
        v17[0] = 67109378;
        v17[1] = v14;
        v18 = 2112;
        v19 = v15;
        _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "Unauthorized request: client with pid %d is missing entitlement %@", v17, 0x12u);
      }

      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:13 userInfo:0];
      v7[2](v7, v10);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v11 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v17[0]) = 0;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "NDF: reply block is required", v17, 2u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)ndfClientCheckInWithReply:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  ++_query_id;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [MEMORY[0x277CCAE80] currentConnection];
    v7 = [(ServiceImpl *)self assertEntitlement:v6 entitlement:18 orWaiveOnIntent:0];
    v8 = otherLogHandle;
    if (v7)
    {
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
        v17 = 67109120;
        v18 = [v6 processIdentifier];
        _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "NDF: Received check-in from client with pid %d", &v17, 8u);
      }

      v10 = +[NDFCoreShim sharedInstance];
      [v10 clientCheckInWithConnection:v6];

      v4[2](v4, 0);
    }

    else
    {
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        v12 = v8;
        v13 = [v6 processIdentifier];
        v14 = [SFEntitlements stringForEntitlement:18];
        v17 = 67109378;
        v18 = v13;
        v19 = 2112;
        v20 = v14;
        _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, "Unauthorized request: client with pid %d is missing entitlement %@", &v17, 0x12u);
      }

      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:13 userInfo:0];
      (v4)[2](v4, v15);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v11 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "NDF: reply block is required", &v17, 2u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)nwEndpointArrayFromXPCObject:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3 && MEMORY[0x238389170](v3) == MEMORY[0x277D86440])
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    applier[0] = MEMORY[0x277D85DD0];
    applier[1] = 3221225472;
    applier[2] = __44__ServiceImpl_nwEndpointArrayFromXPCObject___block_invoke;
    applier[3] = &unk_27898E970;
    v6 = v7;
    v14 = v6;
    xpc_array_apply(v4, applier);
    v8 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v9 = v8;
      v10 = [v6 count];
      *buf = 134218242;
      v16 = v10;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "NDF: Recovered %lu endpoints, all endpoints = %@", buf, 0x16u);
    }
  }

  else
  {
    v5 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v16 = v4;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "NDF: Invalid XPC object %p", buf, 0xCu);
    }

    v6 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

uint64_t __44__ServiceImpl_nwEndpointArrayFromXPCObject___block_invoke(uint64_t a1)
{
  v2 = nw_endpoint_create_from_dictionary();
  [*(a1 + 32) addObject:v2];

  return 1;
}

- (void)pingEndpoints:(id)a3 reply:(id)a4
{
  *&v22[5] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  ++_query_id;
  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [MEMORY[0x277CCAE80] currentConnection];
    if (![(ServiceImpl *)self assertEntitlement:v9 entitlement:18 orWaiveOnIntent:0])
    {
      v14 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        v15 = v14;
        v16 = [v9 processIdentifier];
        v17 = [SFEntitlements stringForEntitlement:18];
        v21 = 67109378;
        v22[0] = v16;
        LOWORD(v22[1]) = 2112;
        *(&v22[1] + 2) = v17;
        _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "Unauthorized request: client with pid %d is missing entitlement %@", &v21, 0x12u);
      }

      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:13 userInfo:0];
      v7[2](v7, 0, v11);
      goto LABEL_16;
    }

    v10 = [(ServiceImpl *)self nwEndpointArrayFromXPCObject:v6];
    v11 = v10;
    if (v10)
    {
      if (![v10 count])
      {
        v20 = otherLogHandle;
        if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v21) = 0;
          _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEFAULT, "NDF: Got no nw_endpoint_t instances, returning empty response", &v21, 2u);
        }

        (v7)[2](v7, &stru_2847966D8, 0);
        goto LABEL_16;
      }

      v12 = +[NDFCoreShim sharedInstance];
      [v12 pingEndpoints:v11 reply:v7];
    }

    else
    {
      v18 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        v21 = 138412290;
        *v22 = v6;
        _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_ERROR, "NDF: Error converting %@ to array of nw_endpoint_t instances", &v21, 0xCu);
      }

      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:&unk_2847EF570];
      (v7)[2](v7, &stru_2847966D8, v12);
    }

LABEL_16:
    objc_autoreleasePoolPop(v8);
    goto LABEL_17;
  }

  v13 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v21) = 0;
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "NDF: reply block is required", &v21, 2u);
  }

LABEL_17:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)sendMessage:(id)a3 toEndpoints:(id)a4 reply:(id)a5
{
  *&v25[5] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  ++_query_id;
  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = [MEMORY[0x277CCAE80] currentConnection];
    if (![(ServiceImpl *)self assertEntitlement:v12 entitlement:18 orWaiveOnIntent:0])
    {
      v17 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        v18 = v17;
        v19 = [v12 processIdentifier];
        v20 = [SFEntitlements stringForEntitlement:18];
        v24 = 67109378;
        v25[0] = v19;
        LOWORD(v25[1]) = 2112;
        *(&v25[1] + 2) = v20;
        _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_ERROR, "Unauthorized request: client with pid %d is missing entitlement %@", &v24, 0x12u);
      }

      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:13 userInfo:0];
      v10[2](v10, 0, v14);
      goto LABEL_16;
    }

    v13 = [(ServiceImpl *)self nwEndpointArrayFromXPCObject:v9];
    v14 = v13;
    if (v13)
    {
      if (![v13 count])
      {
        v23 = otherLogHandle;
        if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v24) = 0;
          _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEFAULT, "NDF: Got no nw_endpoint_t instances, returning empty response", &v24, 2u);
        }

        (v10)[2](v10, &stru_2847966D8, 0);
        goto LABEL_16;
      }

      v15 = +[NDFCoreShim sharedInstance];
      [v15 sendMessage:v8 toEndpoints:v14 reply:v10];
    }

    else
    {
      v21 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        v24 = 138412290;
        *v25 = v9;
        _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_ERROR, "NDF: Error converting %@ to array of nw_endpoint_t instances", &v24, 0xCu);
      }

      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:&unk_2847EF598];
      (v10)[2](v10, &stru_2847966D8, v15);
    }

LABEL_16:
    objc_autoreleasePoolPop(v11);
    goto LABEL_17;
  }

  v16 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v24) = 0;
    _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "NDF: reply block is required", &v24, 2u);
  }

LABEL_17:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)sendPayloadToDaemonWithReply:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  ++_query_id;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [MEMORY[0x277CCAE80] currentConnection];
    if ([(ServiceImpl *)self assertEntitlement:v6 entitlement:18 orWaiveOnIntent:0])
    {
      v7 = +[NDFCoreShim sharedInstance];
      [v7 sendArbitraryPayloadToDistributedSymptomsWithReply:v4];
    }

    else
    {
      v9 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
        v11 = [v6 processIdentifier];
        v12 = [SFEntitlements stringForEntitlement:18];
        v14[0] = 67109378;
        v14[1] = v11;
        v15 = 2112;
        v16 = v12;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "Unauthorized request: client with pid %d is missing entitlement %@", v14, 0x12u);
      }

      v4[2](v4, 0);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v8 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14[0]) = 0;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "NDF: reply block is required", v14, 2u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)triggerSendPayloadToDaemonWithInterval:(int64_t)a3 leeway:(int64_t)a4 reply:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a5;
  ++_query_id;
  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [MEMORY[0x277CCAE80] currentConnection];
    if ([(ServiceImpl *)self assertEntitlement:v10 entitlement:18 orWaiveOnIntent:0])
    {
      v11 = +[NDFCoreShim sharedInstance];
      [v11 triggerSendPayloadToDistributedSymptomsWithInterval:a3 leeway:a4 reply:v8];
    }

    else
    {
      v13 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        v14 = v13;
        v15 = [v10 processIdentifier];
        v16 = [SFEntitlements stringForEntitlement:18];
        v18[0] = 67109378;
        v18[1] = v15;
        v19 = 2112;
        v20 = v16;
        _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "Unauthorized request: client with pid %d is missing entitlement %@", v18, 0x12u);
      }

      v8[2](v8, 0);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v12 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18[0]) = 0;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, "NDF: reply block is required", v18, 2u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)listNDFDeviceObjectsWithIdentifier:(id)a3 reply:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  ++_query_id;
  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [MEMORY[0x277CCAE80] currentConnection];
    if ([(ServiceImpl *)self assertEntitlement:v9 entitlement:18 orWaiveOnIntent:0])
    {
      v10 = +[NDFCoreShim sharedInstance];
      [v10 listNDFDeviceObjectsWithIdentifier:v6 reply:v7];
    }

    else
    {
      v12 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        v13 = v12;
        v14 = [v9 processIdentifier];
        v15 = [SFEntitlements stringForEntitlement:18];
        v17[0] = 67109378;
        v17[1] = v14;
        v18 = 2112;
        v19 = v15;
        _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "Unauthorized request: client with pid %d is missing entitlement %@", v17, 0x12u);
      }

      v7[2](v7, 0);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v11 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v17[0]) = 0;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "NDF: reply block is required", v17, 2u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)fetchNDFDeviceRecordsWithReply:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  ++_query_id;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [MEMORY[0x277CCAE80] currentConnection];
    if ([(ServiceImpl *)self assertEntitlement:v6 entitlement:18 orWaiveOnIntent:0])
    {
      v7 = +[NDFCoreShim sharedInstance];
      [v7 fetchNDFDeviceRecordsWithReply:v4];
    }

    else
    {
      v9 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
        v11 = [v6 processIdentifier];
        v12 = [SFEntitlements stringForEntitlement:18];
        v14[0] = 67109378;
        v14[1] = v11;
        v15 = 2112;
        v16 = v12;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "Unauthorized request: client with pid %d is missing entitlement %@", v14, 0x12u);
      }

      v4[2](v4, 0);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v8 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14[0]) = 0;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "NDF: reply block is required", v14, 2u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)cleanupNDFDeviceRecordsWithReply:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  ++_query_id;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [MEMORY[0x277CCAE80] currentConnection];
    if ([(ServiceImpl *)self assertEntitlement:v6 entitlement:18 orWaiveOnIntent:0])
    {
      v7 = +[NDFCoreShim sharedInstance];
      [v7 cleanupNDFDeviceRecordsWithReply:v4];
    }

    else
    {
      v9 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
        v11 = [v6 processIdentifier];
        v12 = [SFEntitlements stringForEntitlement:18];
        v14[0] = 67109378;
        v14[1] = v11;
        v15 = 2112;
        v16 = v12;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "Unauthorized request: client with pid %d is missing entitlement %@", v14, 0x12u);
      }

      v4[2](v4, 0);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v8 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14[0]) = 0;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "NDF: reply block is required", v14, 2u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)networkRestrictsMulticastTrafficWithReply:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  ++_query_id;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [MEMORY[0x277CCAE80] currentConnection];
    if ([(ServiceImpl *)self assertEntitlement:v6 entitlement:18 orWaiveOnIntent:0])
    {
      v7 = +[NDFCoreShim sharedInstance];
      [v7 networkRestrictsMulticastTrafficWithReply:v4];
    }

    else
    {
      v9 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
        v11 = [v6 processIdentifier];
        v12 = [SFEntitlements stringForEntitlement:18];
        v14[0] = 67109378;
        v14[1] = v11;
        v15 = 2112;
        v16 = v12;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "Unauthorized request: client with pid %d is missing entitlement %@", v14, 0x12u);
      }

      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:13 userInfo:0];
      v4[2](v4, 0, v7);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v8 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14[0]) = 0;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "NDF: reply block is required", v14, 2u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)remotePingToAddress:(id)a3 interface:(unint64_t)a4 interval:(double)a5 count:(int64_t)a6 timeout:(double)a7 reply:(id)a8
{
  v57[1] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a8;
  v16 = objc_autoreleasePoolPush();
  ++_query_id;
  if (v15)
  {
    v17 = [MEMORY[0x277CCAE80] currentConnection];
    if ([(ServiceImpl *)self assertEntitlement:v17 entitlement:14 orWaiveOnIntent:0])
    {
      if (a5 < 0.5)
      {
        a5 = 0.5;
      }

      if (a6 >= 100)
      {
        a6 = 100;
      }

      if ([v14 length] > 2)
      {
        *&buf = 0;
        *(&buf + 1) = &buf;
        v50 = 0x3032000000;
        v51 = __Block_byref_object_copy__13;
        v52 = __Block_byref_object_dispose__13;
        v53 = objc_alloc_init(ICMPPingHandler);
        v35 = 0;
        v36 = &v35;
        v37 = 0x3032000000;
        v38 = __Block_byref_object_copy__13;
        v39 = __Block_byref_object_dispose__13;
        v27 = [ICMPPingProbe alloc];
        v28 = [v17 _queue];
        v40 = [(ICMPPingProbe *)v27 initWithQueue:v28];

        [v36[5] setDelegate:*(*(&buf + 1) + 40)];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __93__ServiceImpl_TestingExtensions__remotePingToAddress_interface_interval_count_timeout_reply___block_invoke;
        v31[3] = &unk_27898E998;
        v32 = v15;
        v33 = &v35;
        p_buf = &buf;
        [*(*(&buf + 1) + 40) setReplyBlock:v31];
        v29 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *v41 = 138413058;
          v42 = v14;
          v43 = 2048;
          v44 = a6;
          v45 = 2048;
          v46 = a5;
          v47 = 2048;
          v48 = a4;
          _os_log_impl(&dword_23255B000, v29, OS_LOG_TYPE_DEBUG, "Ready to start ping to %@ (%ld every %.1lf seconds over ifidx %ld)", v41, 0x2Au);
        }

        [v36[5] startICMPPingTestTo:v14 hostName:0 interface:a4 pingCount:a6 interPingInterval:1 burstCount:0 interBurstInterval:a5 timeout:0.0 stopTestOnFirstSuccess:a7];

        _Block_object_dispose(&v35, 8);
        _Block_object_dispose(&buf, 8);
      }

      else
      {
        v18 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v14;
          _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_ERROR, "remotePingToAddress requires a valid destination address: %@", &buf, 0xCu);
        }

        v19 = MEMORY[0x277CCA9B8];
        v54 = *MEMORY[0x277CCA450];
        v55 = @"Invalid destination address.";
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
        v21 = [v19 errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:v20];
        (*(v15 + 2))(v15, 0, 0, v21);
      }
    }

    else
    {
      v23 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_ERROR, "remotePingToAddress does not have required entitlement", &buf, 2u);
      }

      v24 = MEMORY[0x277CCA9B8];
      v56 = *MEMORY[0x277CCA450];
      v57[0] = @"An entitlement is required for accessing testing specific endpoints.";
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:&v56 count:1];
      v26 = [v24 errorWithDomain:*MEMORY[0x277CCA5B8] code:13 userInfo:v25];
      (*(v15 + 2))(v15, 0, 0, v26);
    }
  }

  else
  {
    v22 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_ERROR, "remotePingToAddress:interval:count:timeout: Reply is required", &buf, 2u);
    }
  }

  objc_autoreleasePoolPop(v16);

  v30 = *MEMORY[0x277D85DE8];
}

void __93__ServiceImpl_TestingExtensions__remotePingToAddress_interface_interval_count_timeout_reply___block_invoke(void *a1)
{
  (*(a1[4] + 16))();
  v2 = *(a1[5] + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "Finished calling ICMP pinger reply callback", v7, 2u);
  }
}

- (void)handlePendingXPCConnection:(uint64_t)a1
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!a1)
  {
    goto LABEL_14;
  }

  if (!*(a1 + 80))
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = *(a1 + 80);
    *(a1 + 80) = v4;
  }

  if (([(ServiceImpl *)a1 _isServiceReady]& 1) != 0)
  {
    [(ServiceImpl *)a1 _handleNOIClientForConnection:v3];
    [v3 activate];
    goto LABEL_14;
  }

  v6 = *(a1 + 64);
  v7 = analyticsLogHandle;
  v8 = os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT);
  if (v6 == 1)
  {
    if (!v8)
    {
      goto LABEL_12;
    }

    v9 = *(a1 + 8);
    *v18 = 134217984;
    *&v18[4] = v9;
    v10 = "ServiceImpl:[helper] waiting for FAE (%p)";
    v11 = v7;
    v12 = 12;
  }

  else
  {
    if (!v8)
    {
      goto LABEL_12;
    }

    v13 = *(a1 + 8);
    v14 = *(a1 + 16);
    v15 = *(a1 + 24);
    OUTLINED_FUNCTION_1_2();
    v10 = "ServiceImpl: waiting for FAE (%p), NAE (%p), NOI (%p)";
    v11 = v7;
    v12 = 32;
  }

  _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, v10, v18, v12);
LABEL_12:
  [*(a1 + 80) addObject:{v3, *v18}];
  v16 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 138412290;
    *&v18[4] = v3;
    _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, "ServiceImpl: Added pending XPC connection to queue (%@)", v18, 0xCu);
  }

LABEL_14:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_serviceReadyCheckPointRelease
{
  v45 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = otherLogHandle;
    if (OUTLINED_FUNCTION_3())
    {
      v3 = v2;
      v4 = qos_class_self();
      *v44 = 136315138;
      *&v44[4] = qos_string(v4);
      OUTLINED_FUNCTION_0_3();
      _os_log_impl(v5, v6, v7, v8, v9, v10);
    }

    if ([(ServiceImpl *)a1 _isServiceReady])
    {
      if (*(a1 + 76) == 1)
      {
        v11 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *v44 = 0;
          _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "ServiceImpl: XPC service has already released checkpoint", v44, 2u);
        }

        goto LABEL_8;
      }

      v13 = *(a1 + 64);
      v14 = analyticsLogHandle;
      v15 = OUTLINED_FUNCTION_3();
      if (v13 == 1)
      {
        if (!v15)
        {
          goto LABEL_15;
        }

        v16 = *(a1 + 8);
        *v44 = 134217984;
        *&v44[4] = v16;
        OUTLINED_FUNCTION_0_3();
      }

      else
      {
        if (!v15)
        {
          goto LABEL_15;
        }

        v23 = *(a1 + 8);
        v24 = *(a1 + 16);
        v25 = *(a1 + 24);
        OUTLINED_FUNCTION_1_2();
        v17 = &dword_23255B000;
        v20 = "SymptomAnalytics ServiceImpl: engines up, FAE (%p), NAE (%p), NOI (%p)";
        v21 = v44;
        v18 = v14;
        v19 = OS_LOG_TYPE_DEBUG;
        v22 = 32;
      }

      _os_log_impl(v17, v18, v19, v20, v21, v22);
LABEL_15:
      v26 = [MEMORY[0x277CCAB98] defaultCenter];
      [v26 removeObserver:*(a1 + 56)];

      v27 = *(a1 + 56);
      *(a1 + 56) = 0;

      if (*(a1 + 64) == 1)
      {
        v28 = measureLaunchXPCHandle();
        if (os_signpost_enabled(v28))
        {
          *v44 = 0;
LABEL_23:
          OUTLINED_FUNCTION_2_0();
          _os_signpost_emit_with_name_impl(v31, v32, OS_SIGNPOST_INTERVAL_END, v33, v34, v35, v36, 2u);
        }
      }

      else
      {
        Measurement = getMeasurement(2, 0xFFu);
        v28 = measureLaunchXPCHandle();
        v30 = os_signpost_enabled(v28);
        if (Measurement)
        {
          if (v30)
          {
            *v44 = 0;
            goto LABEL_23;
          }
        }

        else if (v30)
        {
          *v44 = 0;
          goto LABEL_23;
        }
      }

      v37 = measureLaunchXPCHandle();
      if (os_signpost_enabled(v37))
      {
        *v44 = 0;
        OUTLINED_FUNCTION_2_0();
        _os_signpost_emit_with_name_impl(v38, v39, OS_SIGNPOST_EVENT, v40, v41, v42, v43, 2u);
      }

      markMeasurement(2, 14);
      submitAllMeasurementsToCA();
      [(ServiceImpl *)a1 resumePendingXPCConnections];
      *(a1 + 76) = 1;
    }
  }

LABEL_8:
  v12 = *MEMORY[0x277D85DE8];
}

- (void)resumePendingXPCConnections
{
  v24 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 80);
      v4 = v2;
      *buf = 134217984;
      v21 = [v3 count];
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "ServiceImpl: Resuming all (%ld) pending XPC connections", buf, 0xCu);
    }

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = *(a1 + 80);
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __42__ServiceImpl_resumePendingXPCConnections__block_invoke;
    v17 = &unk_27898E6C8;
    v18 = a1;
    v7 = v5;
    v19 = v7;
    [v6 enumerateObjectsUsingBlock:&v14];
    [*(a1 + 80) removeObjectsInArray:{v7, v14, v15, v16, v17, v18}];
    v8 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      v10 = [v7 count];
      v11 = [*(a1 + 80) count];
      *buf = 134218240;
      v21 = v10;
      v22 = 2048;
      v23 = v11;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_INFO, "ServiceImpl: Removed %ld connections - remaining pending connections: %ld", buf, 0x16u);
    }

    if (![*(a1 + 80) count])
    {
      v12 = *(a1 + 80);
      *(a1 + 80) = 0;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __48__ServiceImpl_initWithQueue_noiEngine_isHelper___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = otherLogHandle;
  if (OUTLINED_FUNCTION_3())
  {
    v3 = v2;
    v4 = qos_class_self();
    qos_string(v4);
    OUTLINED_FUNCTION_0_3();
    _os_log_impl(v5, v6, v7, v8, v9, v10);
  }

  [(ServiceImpl *)*(a1 + 32) _serviceReadyCheckPointRelease];
  v11 = *MEMORY[0x277D85DE8];
}

void __48__ServiceImpl_initWithQueue_noiEngine_isHelper___block_invoke_2_183(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = otherLogHandle;
  if (OUTLINED_FUNCTION_3())
  {
    v3 = v2;
    v4 = qos_class_self();
    qos_string(v4);
    OUTLINED_FUNCTION_0_3();
    _os_log_impl(v5, v6, v7, v8, v9, v10);
  }

  [(ServiceImpl *)*(a1 + 32) _serviceReadyCheckPointRelease];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)_checkRateLimitForConnection:(int)a1 .cold.1(int a1, _BYTE *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
  {
    v6[0] = 67109120;
    v6[1] = a1;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_ERROR, "Can't find UUID for pid %d. Allowing for now", v6, 8u);
  }

  *a2 = 1;
  v5 = *MEMORY[0x277D85DE8];
}

@end