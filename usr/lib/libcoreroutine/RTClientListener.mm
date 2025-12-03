@interface RTClientListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (RTClientListener)initWithAccountManager:(id)manager assetManager:(id)assetManager authorizationManager:(id)authorizationManager backgroundInertialOdometryManager:(id)odometryManager bluePOITileManager:(id)tileManager contactsManager:(id)contactsManager defaultsManager:(id)defaultsManager deviceLocationPredictor:(id)self0 diagnostics:(id)self1 elevationManager:(id)self2 eventAgentManager:(id)self3 eventModelProvider:(id)self4 authorizedLocationManager:(id)self5 fingerprintManager:(id)self6 healthKitManager:(id)self7 hintManager:(id)self8 intermittentGNSSManager:(id)self9 learnedLocationManager:(id)learnedLocationManager learnedLocationStore:(id)store locationManager:(id)a22 locationContextManager:(id)contextManager locationStore:(id)locationStore mapServiceManager:(id)serviceManager metricManager:(id)metricManager motionActivityManager:(id)activityManager peopleDiscoveryProvider:(id)discoveryProvider placeInferenceManager:(id)inferenceManager predictedContextManager:(id)manager0 purgeManager:(id)manager1 scenarioTriggerManager:(id)manager2 timerManager:(id)manager3 tripSegmentManager:(id)manager4 userCurationManager:(id)manager5 vehicleLocationProvider:(id)manager6 vehicleStore:(id)manager7 visitManager:(id)manager8 wifiManager:(id)manager9 tripClusterManager:(id)assetManager0 visitConsolidator:(id)assetManager1;
- (id)handleClientConnection:(id)connection;
- (id)handleRestorationForDaemonClient:(id)client;
- (void)_setup;
- (void)_setupConnection:(id)connection forClient:(id)client;
- (void)handleDisconnectionForDaemonClient:(id)client;
- (void)saveDaemonClient:(id)client;
@end

@implementation RTClientListener

- (RTClientListener)initWithAccountManager:(id)manager assetManager:(id)assetManager authorizationManager:(id)authorizationManager backgroundInertialOdometryManager:(id)odometryManager bluePOITileManager:(id)tileManager contactsManager:(id)contactsManager defaultsManager:(id)defaultsManager deviceLocationPredictor:(id)self0 diagnostics:(id)self1 elevationManager:(id)self2 eventAgentManager:(id)self3 eventModelProvider:(id)self4 authorizedLocationManager:(id)self5 fingerprintManager:(id)self6 healthKitManager:(id)self7 hintManager:(id)self8 intermittentGNSSManager:(id)self9 learnedLocationManager:(id)learnedLocationManager learnedLocationStore:(id)store locationManager:(id)a22 locationContextManager:(id)contextManager locationStore:(id)locationStore mapServiceManager:(id)serviceManager metricManager:(id)metricManager motionActivityManager:(id)activityManager peopleDiscoveryProvider:(id)discoveryProvider placeInferenceManager:(id)inferenceManager predictedContextManager:(id)manager0 purgeManager:(id)manager1 scenarioTriggerManager:(id)manager2 timerManager:(id)manager3 tripSegmentManager:(id)manager4 userCurationManager:(id)manager5 vehicleLocationProvider:(id)manager6 vehicleStore:(id)manager7 visitManager:(id)manager8 wifiManager:(id)manager9 tripClusterManager:(id)assetManager0 visitConsolidator:(id)assetManager1
{
  managerCopy = manager;
  assetManagerCopy = assetManager;
  authorizationManagerCopy = authorizationManager;
  odometryManagerCopy = odometryManager;
  tileManagerCopy = tileManager;
  contactsManagerCopy = contactsManager;
  contactsManagerCopy2 = contactsManager;
  defaultsManagerCopy = defaultsManager;
  predictorCopy = predictor;
  diagnosticsCopy = diagnostics;
  elevationManagerCopy = elevationManager;
  agentManagerCopy = agentManager;
  providerCopy = provider;
  locationManagerCopy = locationManager;
  fingerprintManagerCopy = fingerprintManager;
  kitManagerCopy = kitManager;
  hintManagerCopy = hintManager;
  sManagerCopy = sManager;
  learnedLocationManagerCopy = learnedLocationManager;
  storeCopy = store;
  v159 = a22;
  contextManagerCopy = contextManager;
  locationStoreCopy = locationStore;
  serviceManagerCopy = serviceManager;
  metricManagerCopy = metricManager;
  activityManagerCopy = activityManager;
  discoveryProviderCopy = discoveryProvider;
  inferenceManagerCopy = inferenceManager;
  predictedContextManagerCopy = predictedContextManager;
  purgeManagerCopy = purgeManager;
  triggerManagerCopy = triggerManager;
  timerManagerCopy = timerManager;
  segmentManagerCopy = segmentManager;
  curationManagerCopy = curationManager;
  locationProviderCopy = locationProvider;
  vehicleStoreCopy = vehicleStore;
  visitManagerCopy = visitManager;
  wifiManagerCopy = wifiManager;
  clusterManagerCopy = clusterManager;
  consolidatorCopy = consolidator;
  v180.receiver = self;
  v180.super_class = RTClientListener;
  v46 = [(RTXPCListener *)&v180 initWithMachServiceName:@"com.apple.routined.registration"];
  v47 = v46;
  if (v46)
  {
    objc_storeStrong(&v46->_accountManager, manager);
    objc_storeStrong(&v47->_assetManager, assetManager);
    objc_storeStrong(&v47->_authorizationManager, authorizationManager);
    objc_storeStrong(&v47->_backgroundInertialOdometryManager, odometryManager);
    objc_storeStrong(&v47->_bluePOITileManager, tileManager);
    objc_storeStrong(&v47->_contactsManager, contactsManagerCopy);
    objc_storeStrong(&v47->_defaultsManager, defaultsManager);
    objc_storeStrong(&v47->_deviceLocationPredictor, predictor);
    objc_storeStrong(&v47->_diagnostics, diagnostics);
    objc_storeStrong(&v47->_elevationManager, elevationManager);
    objc_storeStrong(&v47->_eventAgentManager, agentManager);
    objc_storeStrong(&v47->_eventModelProvider, provider);
    objc_storeStrong(&v47->_fingerprintManager, fingerprintManager);
    objc_storeStrong(&v47->_authorizedLocationManager, locationManager);
    objc_storeStrong(&v47->_healthKitManager, kitManager);
    objc_storeStrong(&v47->_hintManager, hintManager);
    objc_storeStrong(&v47->_intermittentGNSSManager, sManager);
    objc_storeStrong(&v47->_learnedLocationManager, learnedLocationManager);
    objc_storeStrong(&v47->_learnedLocationStore, store);
    objc_storeStrong(&v47->_locationManager, a22);
    objc_storeStrong(&v47->_locationContextManager, contextManager);
    objc_storeStrong(&v47->_locationStore, locationStore);
    objc_storeStrong(&v47->_mapServiceManager, serviceManager);
    objc_storeStrong(&v47->_metricManager, metricManager);
    objc_storeStrong(&v47->_motionActivityManager, activityManager);
    objc_storeStrong(&v47->_peopleDiscoveryProvider, discoveryProvider);
    objc_storeStrong(&v47->_placeInferenceManager, inferenceManager);
    objc_storeStrong(&v47->_predictedContextManager, predictedContextManager);
    objc_storeStrong(&v47->_purgeManager, purgeManager);
    objc_storeStrong(&v47->_scenarioTriggerManager, triggerManager);
    objc_storeStrong(&v47->_timerManager, timerManager);
    objc_storeStrong(&v47->_tripSegmentManager, segmentManager);
    objc_storeStrong(&v47->_userCurationManager, curationManager);
    objc_storeStrong(&v47->_vehicleLocationProvider, locationProvider);
    objc_storeStrong(&v47->_vehicleStore, vehicleStore);
    objc_storeStrong(&v47->_visitManager, visitManager);
    objc_storeStrong(&v47->_wifiManager, wifiManager);
    objc_storeStrong(&v47->_tripClusterManager, clusterManager);
    objc_storeStrong(&v47->_visitConsolidator, consolidator);
    v48 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28465E648];
    frameworkInterface = v47->_frameworkInterface;
    v47->_frameworkInterface = v48;

    v50 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2845AEF18];
    daemonInterface = v47->_daemonInterface;
    v47->_daemonInterface = v50;

    v52 = MEMORY[0x277CBEB98];
    v179 = objc_opt_class();
    v53 = objc_opt_class();
    v54 = objc_opt_class();
    v55 = objc_opt_class();
    v56 = objc_opt_class();
    v57 = objc_opt_class();
    v58 = objc_opt_class();
    v59 = objc_opt_class();
    v60 = [v52 setWithObjects:{v179, v53, v54, v55, v56, v57, v58, v59, objc_opt_class(), 0}];
    [(NSXPCInterface *)v47->_daemonInterface setClasses:v60 forSelector:sel_extendLifetimeOfVisitsWithIdentifiers_reply_ argumentIndex:0 ofReply:0];
    v61 = v47->_daemonInterface;
    v62 = MEMORY[0x277CBEB98];
    v63 = objc_opt_class();
    v64 = [v62 setWithObjects:{v63, objc_opt_class(), 0}];
    [(NSXPCInterface *)v61 setClasses:v64 forSelector:sel_fetchStoredVisitsWithOptions_reply_ argumentIndex:0 ofReply:0];

    v65 = v47->_daemonInterface;
    v66 = MEMORY[0x277CBEB98];
    v67 = objc_opt_class();
    v68 = objc_opt_class();
    v69 = [v66 setWithObjects:{v67, v68, objc_opt_class(), 0}];
    [(NSXPCInterface *)v65 setClasses:v69 forSelector:sel_fetchFamiliarityIndexResultsWithOptions_reply_ argumentIndex:0 ofReply:0];

    v70 = v47->_daemonInterface;
    v71 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [(NSXPCInterface *)v70 setClasses:v71 forSelector:sel_fetchAuthorizedLocationStatus_ argumentIndex:0 ofReply:0];

    v72 = v47->_daemonInterface;
    v73 = MEMORY[0x277CBEB98];
    v74 = objc_opt_class();
    v75 = [v73 setWithObjects:{v74, objc_opt_class(), 0}];
    [(NSXPCInterface *)v72 setClasses:v75 forSelector:sel_fetchLearnedRoutesWithOptions_reply_ argumentIndex:0 ofReply:0];

    v76 = v47->_daemonInterface;
    v77 = MEMORY[0x277CBEB98];
    v78 = objc_opt_class();
    v79 = [v77 setWithObjects:{v78, objc_opt_class(), 0}];
    [(NSXPCInterface *)v76 setClasses:v79 forSelector:sel_fetchTripClusterMetadataWithOptions_reply_ argumentIndex:0 ofReply:0];

    v80 = v47->_daemonInterface;
    v81 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [(NSXPCInterface *)v80 setClasses:v81 forSelector:sel_purgeTripClusterTable_reply_ argumentIndex:0 ofReply:0];

    v82 = v47->_daemonInterface;
    v83 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [(NSXPCInterface *)v82 setClasses:v83 forSelector:sel_purgeTripClusterWithClusterID_reply_ argumentIndex:0 ofReply:0];

    v84 = v47->_daemonInterface;
    v85 = MEMORY[0x277CBEB98];
    v86 = objc_opt_class();
    v87 = [v85 setWithObjects:{v86, objc_opt_class(), 0}];
    [(NSXPCInterface *)v84 setClasses:v87 forSelector:sel_fetchTripSegmentsWithOptions_reply_ argumentIndex:0 ofReply:0];

    v88 = v47->_daemonInterface;
    v89 = MEMORY[0x277CBEB98];
    v90 = objc_opt_class();
    v91 = [v89 setWithObjects:{v90, objc_opt_class(), 0}];
    [(NSXPCInterface *)v88 setClasses:v91 forSelector:sel_fetchLocationsCountForTripSegmentWithOptions_reply_ argumentIndex:0 ofReply:0];

    v92 = v47->_daemonInterface;
    v93 = MEMORY[0x277CBEB98];
    v94 = objc_opt_class();
    v95 = [v93 setWithObjects:{v94, objc_opt_class(), 0}];
    [(NSXPCInterface *)v92 setClasses:v95 forSelector:sel_fetchLocationsForTripSegmentWithOptions_reply_ argumentIndex:0 ofReply:0];

    v96 = v47->_daemonInterface;
    v97 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [(NSXPCInterface *)v96 setClasses:v97 forSelector:sel_deleteTripSegmentWithUUID_reply_ argumentIndex:0 ofReply:0];

    v98 = v47->_daemonInterface;
    v99 = MEMORY[0x277CBEB98];
    v100 = objc_opt_class();
    v101 = [v99 setWithObjects:{v100, objc_opt_class(), 0}];
    [(NSXPCInterface *)v98 setClasses:v101 forSelector:sel_fetchTripSegmentMetadataWithOptions_reply_ argumentIndex:0 ofReply:0];

    v102 = v47->_daemonInterface;
    v103 = MEMORY[0x277CBEB98];
    v104 = objc_opt_class();
    v105 = [v103 setWithObjects:{v104, objc_opt_class(), 0}];
    [(NSXPCInterface *)v102 setClasses:v105 forSelector:sel_fetchVehiclesWithOptions_reply_ argumentIndex:0 ofReply:0];

    v106 = v47->_daemonInterface;
    v107 = MEMORY[0x277CBEB98];
    v108 = objc_opt_class();
    v109 = [v107 setWithObjects:{v108, objc_opt_class(), 0}];
    [(NSXPCInterface *)v106 setClasses:v109 forSelector:sel_fetchProximityHistoryFromEventIDs_completionHandler_ argumentIndex:0 ofReply:0];

    v110 = v47->_daemonInterface;
    v111 = MEMORY[0x277CBEB98];
    v112 = objc_opt_class();
    v113 = [v111 setWithObjects:{v112, objc_opt_class(), 0}];
    [(NSXPCInterface *)v110 setClasses:v113 forSelector:sel_fetchPeopleCountEventsHistory_completionHandler_ argumentIndex:0 ofReply:0];

    v114 = v47->_daemonInterface;
    v115 = MEMORY[0x277CBEB98];
    v116 = objc_opt_class();
    v117 = [v115 setWithObjects:{v116, objc_opt_class(), 0}];
    [(NSXPCInterface *)v114 setClasses:v117 forSelector:sel_fetchContactScoresFromContactIDs_completionHandler_ argumentIndex:0 ofReply:0];

    v118 = v47->_daemonInterface;
    v119 = MEMORY[0x277CBEB98];
    v120 = objc_opt_class();
    v121 = [v119 setWithObjects:{v120, objc_opt_class(), 0}];
    [(NSXPCInterface *)v118 setClasses:v121 forSelector:sel_addElevations_handler_ argumentIndex:0 ofReply:0];

    v122 = v47->_daemonInterface;
    v123 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [(NSXPCInterface *)v122 setClasses:v123 forSelector:sel_fetchElevationsWithOptions_reply_ argumentIndex:0 ofReply:0];

    v124 = v47->_daemonInterface;
    v125 = MEMORY[0x277CBEB98];
    v126 = objc_opt_class();
    v127 = [v125 setWithObjects:{v126, objc_opt_class(), 0}];
    [(NSXPCInterface *)v124 setClasses:v127 forSelector:sel_addBackgroundInertialOdometrySamples_reply_ argumentIndex:0 ofReply:0];

    v128 = v47->_daemonInterface;
    v129 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [(NSXPCInterface *)v128 setClasses:v129 forSelector:sel_fetchBackgroundInertialOdometrySamplesWithOptions_reply_ argumentIndex:0 ofReply:0];

    v130 = v47->_daemonInterface;
    v131 = MEMORY[0x277CBEB98];
    v132 = objc_opt_class();
    v133 = objc_opt_class();
    v134 = objc_opt_class();
    v135 = [v131 setWithObjects:{v132, v133, v134, objc_opt_class(), 0}];
    [(NSXPCInterface *)v130 setClasses:v135 forSelector:sel_fetchPredictedContextWithOptions_reply_ argumentIndex:0 ofReply:0];

    [(RTXPCListener *)v47 setup];
  }

  return v47;
}

- (void)_setup
{
  v3 = MEMORY[0x277CBEB38];
  v4 = +[RTClientListener persistedClientsPath];
  v5 = [v3 dictionaryWithContentsOfFile:v4];
  [(RTClientListener *)self setPersistedClients:v5];

  persistedClients = [(RTClientListener *)self persistedClients];

  if (!persistedClients || (-[RTClientListener persistedClients](self, "persistedClients"), v7 = objc_claimAutoreleasedReturnValue(), [v7 objectForKeyedSubscript:@"$archiver"], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    v9 = objc_opt_new();
    [(RTClientListener *)self setPersistedClients:v9];
  }

  persistedClients2 = [(RTClientListener *)self persistedClients];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __26__RTClientListener__setup__block_invoke;
  v12[3] = &unk_2788D20D8;
  v12[4] = self;
  [persistedClients2 enumerateKeysAndObjectsUsingBlock:v12];

  v11.receiver = self;
  v11.super_class = RTClientListener;
  [(RTXPCListener *)&v11 _setup];
}

void __26__RTClientListener__setup__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v9 = [RTDaemonClient alloc];
  v4 = [*(a1 + 32) queue];
  v5 = *(a1 + 32);
  v6 = v4;
  v10 = [(RTDaemonClient *)v9 initWithQueue:v4 restorationData:v8 accountManager:v5[39] assetManager:v5[27] authorizationManager:v5[17] backgroundInertialOdometryManager:v5[48] contactsManager:v5[45] defaultsManager:v5[19] deviceLocationPredictor:v5[20] diagnostics:v5[33] elevationManager:v5[47] eventAgentManager:v5[32] eventModelProvider:v5[23] authorizedLocationManager:v5[24] fingerprintManager:v5[42] healthKitManager:v5[21] hintManager:v5[28] intermittentGNSSManager:v5[49] learnedLocationManager:v5[34] learnedLocationStore:v5[35] locationManager:v5[30] locationContextManager:v5[31] locationStore:v5[29] mapServiceManager:v5[44] metricManager:v5[40] motionActivityManager:v5[41] peopleDiscoveryProvider:v5[37] placeInferenceManager:v5[36] predictedContextManager:v5[38] purgeManager:v5[22] scenarioTriggerManager:v5[14] timerManager:v5[46] tripSegmentManager:v5[26] userCurationManager:v5[51] vehicleLocationProvider:v5[15] vehicleStore:v5[16] visitManager:v5[25] wifiManager:v5[43] tripClusterManager:v5[50] visitConsolidator:v5[52]];

  [(RTDaemonClient *)v10 setClientManagerDelegate:*(a1 + 32)];
  v7 = [*(a1 + 32) disconnectedClients];
  [v7 addObject:v10];
}

- (id)handleClientConnection:(id)connection
{
  connectionCopy = connection;
  v7 = [RTDaemonClient alloc];
  queue = [(RTXPCListener *)self queue];
  v5 = [(RTDaemonClient *)v7 initWithQueue:queue restorationData:0 accountManager:self->_accountManager assetManager:self->_assetManager authorizationManager:self->_authorizationManager backgroundInertialOdometryManager:self->_backgroundInertialOdometryManager contactsManager:self->_contactsManager defaultsManager:self->_defaultsManager deviceLocationPredictor:self->_deviceLocationPredictor diagnostics:self->_diagnostics elevationManager:self->_elevationManager eventAgentManager:self->_eventAgentManager eventModelProvider:self->_eventModelProvider authorizedLocationManager:self->_authorizedLocationManager fingerprintManager:self->_fingerprintManager healthKitManager:self->_healthKitManager hintManager:self->_hintManager intermittentGNSSManager:self->_intermittentGNSSManager learnedLocationManager:self->_learnedLocationManager learnedLocationStore:self->_learnedLocationStore locationManager:self->_locationManager locationContextManager:self->_locationContextManager locationStore:self->_locationStore mapServiceManager:self->_mapServiceManager metricManager:self->_metricManager motionActivityManager:self->_motionActivityManager peopleDiscoveryProvider:self->_peopleDiscoveryProvider placeInferenceManager:self->_placeInferenceManager predictedContextManager:self->_predictedContextManager purgeManager:self->_purgeManager scenarioTriggerManager:self->_scenarioTriggerManager timerManager:self->_timerManager tripSegmentManager:self->_tripSegmentManager userCurationManager:self->_userCurationManager vehicleLocationProvider:self->_vehicleLocationProvider vehicleStore:self->_vehicleStore visitManager:self->_visitManager wifiManager:self->_wifiManager tripClusterManager:self->_tripClusterManager visitConsolidator:self->_visitConsolidator];

  [(RTDaemonClient *)v5 setClientManagerDelegate:self];
  [(RTClientListener *)self _setupConnection:connectionCopy forClient:v5];

  return v5;
}

- (void)_setupConnection:(id)connection forClient:(id)client
{
  connectionCopy = connection;
  clientCopy = client;
  [connectionCopy suspend];
  queue = [(RTXPCListener *)self queue];
  [connectionCopy _setQueue:queue];

  [connectionCopy setRemoteObjectInterface:self->_frameworkInterface];
  [connectionCopy setExportedInterface:self->_daemonInterface];
  [connectionCopy setExportedObject:clientCopy];
  objc_initWeak(&location, clientCopy);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __47__RTClientListener__setupConnection_forClient___block_invoke;
  v17[3] = &unk_2788C5908;
  objc_copyWeak(&v18, &location);
  [connectionCopy setInterruptionHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __47__RTClientListener__setupConnection_forClient___block_invoke_312;
  v15[3] = &unk_2788C5908;
  objc_copyWeak(&v16, &location);
  [connectionCopy setInvalidationHandler:v15];
  [connectionCopy resume];
  v9 = [RTXPC executablePathOfConnection:connectionCopy];
  [clientCopy setExecutablePath:v9];

  executablePath = [clientCopy executablePath];
  lastPathComponent = [executablePath lastPathComponent];
  [clientCopy setExecutableName:lastPathComponent];

  [clientCopy setProcessIdentifier:{objc_msgSend(connectionCopy, "processIdentifier")}];
  v12 = [RTXPC signingIdentifierOfConnection:connectionCopy];
  [clientCopy setSigningIdentifier:v12];

  signingIdentifier = [clientCopy signingIdentifier];
  [clientCopy setBundleIdentifier:signingIdentifier];

  [clientCopy setXpcConnection:connectionCopy];
  xpcConnection = [clientCopy xpcConnection];
  [xpcConnection setDelegate:clientCopy];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __47__RTClientListener__setupConnection_forClient___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityConnection);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [WeakRetained executableName];
      v4 = 138412290;
      v5 = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "client, %@, handle xpc interruption", &v4, 0xCu);
    }
  }
}

void __47__RTClientListener__setupConnection_forClient___block_invoke_312(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityConnection);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [WeakRetained executableName];
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "client, %@, handle xpc invalidation", &v5, 0xCu);
    }
  }

  [WeakRetained setXpcConnection:0];
  [WeakRetained setProcessIdentifier:0];
  [WeakRetained setExecutablePath:0];
  v4 = [WeakRetained clientManagerDelegate];
  [v4 handleDisconnectionForDaemonClient:WeakRetained];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v26 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  if (connectionCopy)
  {
    v23 = 0;
    v8 = [RTXPC clientCodeSignatureIsValid:connectionCopy error:&v23];
    v9 = v23;
    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v10 = _rt_log_facility_get_os_log(RTLogFacilityConnection);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          processIdentifier = [connectionCopy processIdentifier];
          machServiceName = [(RTXPCListener *)self machServiceName];
          *buf = 67109378;
          *v25 = processIdentifier;
          *&v25[4] = 2112;
          *&v25[6] = machServiceName;
          _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, "listener received incoming connection from pid %d, for service, %@", buf, 0x12u);
        }
      }

      v11 = [(RTClientListener *)self handleClientConnection:connectionCopy];
      if (v11)
      {
        v12 = v11;
        connectedClients = [(RTXPCListener *)self connectedClients];
        [connectedClients addObject:v12];

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v14 = _rt_log_facility_get_os_log(RTLogFacilityConnection);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            machServiceName2 = [(RTXPCListener *)self machServiceName];
            *buf = 138412546;
            *v25 = v12;
            *&v25[8] = 2112;
            *&v25[10] = machServiceName2;
            _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "client connected, %@, to service, %@", buf, 0x16u);
          }
        }

        [(RTXPCListener *)self logClients];
        v16 = 1;
        goto LABEL_26;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v17 = _rt_log_facility_get_os_log(RTLogFacilityConnection);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          processIdentifier2 = [connectionCopy processIdentifier];
          machServiceName3 = [(RTXPCListener *)self machServiceName];
          *buf = 67109378;
          *v25 = processIdentifier2;
          *&v25[4] = 2112;
          *&v25[6] = machServiceName3;
          _os_log_debug_impl(&dword_2304B3000, v17, OS_LOG_TYPE_DEBUG, "failed to create client for connection from pid, %d, for service, %@", buf, 0x12u);
        }
      }

      v12 = 0;
    }

    else
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityConnection);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v25 = v9;
        _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "incoming xpc connection failed code-signing check, error, %@.", buf, 0xCu);
      }
    }

    v16 = 0;
LABEL_26:

LABEL_27:
    goto LABEL_28;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityConnection);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "incoming xpc connection is nil", buf, 2u);
    }

    v16 = 0;
    goto LABEL_27;
  }

  v16 = 0;
LABEL_28:

  return v16;
}

- (id)handleRestorationForDaemonClient:(id)client
{
  v47 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  restorationIdentifier = [clientCopy restorationIdentifier];

  if (restorationIdentifier)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityConnection);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        restorationIdentifier2 = [clientCopy restorationIdentifier];
        *buf = 138412546;
        *&buf[4] = clientCopy;
        *&buf[12] = 2112;
        *&buf[14] = restorationIdentifier2;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "rehydrate any existing session for client, %@, restoration identifier, %@", buf, 0x16u);
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v44 = __Block_byref_object_copy__176;
    v45 = __Block_byref_object_dispose__176;
    v46 = 0;
    disconnectedClients = [(RTXPCListener *)self disconnectedClients];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __53__RTClientListener_handleRestorationForDaemonClient___block_invoke;
    v36[3] = &unk_2788D2100;
    v9 = clientCopy;
    v37 = v9;
    v38 = buf;
    [disconnectedClients enumerateObjectsUsingBlock:v36];

    if (*(*&buf[8] + 40))
    {
      xpcConnection = [v9 xpcConnection];
      [(RTClientListener *)self _setupConnection:xpcConnection forClient:*(*&buf[8] + 40)];

      disconnectedClients2 = [(RTXPCListener *)self disconnectedClients];
      [disconnectedClients2 removeObject:*(*&buf[8] + 40)];

      connectedClients = [(RTXPCListener *)self connectedClients];
      [connectedClients addObject:*(*&buf[8] + 40)];

      connectedClients2 = [(RTXPCListener *)self connectedClients];
      [connectedClients2 removeObject:v9];

      [v9 setXpcConnection:0];
      [v9 shutdown];
      [(RTXPCListener *)self logClients];
      v14 = *(*&buf[8] + 40);
    }

    else
    {
      v30 = 0;
      v31 = &v30;
      v32 = 0x3032000000;
      v33 = __Block_byref_object_copy__176;
      v34 = __Block_byref_object_dispose__176;
      v35 = 0;
      connectedClients3 = [(RTXPCListener *)self connectedClients];
      v24 = MEMORY[0x277D85DD0];
      v25 = 3221225472;
      v26 = __53__RTClientListener_handleRestorationForDaemonClient___block_invoke_2;
      v27 = &unk_2788D2100;
      v16 = v9;
      v28 = v16;
      v29 = &v30;
      [connectedClients3 enumerateObjectsUsingBlock:&v24];

      if (v31[5])
      {
        v17 = _rt_log_facility_get_os_log(RTLogFacilityConnection);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          restorationIdentifier3 = [v16 restorationIdentifier];
          *v39 = 138412546;
          v40 = v16;
          v41 = 2112;
          v42 = restorationIdentifier3;
          _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "client, %@, already rehydrated session for restoration identifier, %@, terminating connection, this is likely a programming error that multiple instances of RTRoutineManager from the same process are using the same restoration identifier", v39, 0x16u);
        }

        xpcConnection2 = [v16 xpcConnection];
        [xpcConnection2 invalidate];

        [v16 shutdown];
        connectedClients4 = [(RTXPCListener *)self connectedClients];
        [connectedClients4 removeObject:v16];

        [(RTXPCListener *)self logClients];
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v20 = _rt_log_facility_get_os_log(RTLogFacilityConnection);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          restorationIdentifier4 = [v16 restorationIdentifier];
          *v39 = 138412290;
          v40 = restorationIdentifier4;
          _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_INFO, "client, %@, does not have any existing sessions", v39, 0xCu);
        }
      }

      _Block_object_dispose(&v30, 8);
      v14 = 0;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __53__RTClientListener_handleRestorationForDaemonClient___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v7 = [v10 restorationIdentifier];
  v8 = [*(a1 + 32) restorationIdentifier];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __53__RTClientListener_handleRestorationForDaemonClient___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (*(a1 + 32) != v4)
  {
    v8 = v4;
    v5 = [v4 restorationIdentifier];
    v6 = [*(a1 + 32) restorationIdentifier];
    v7 = [v5 isEqualToString:v6];

    v4 = v8;
    if (v7)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      v4 = v8;
    }
  }
}

- (void)saveDaemonClient:(id)client
{
  v28 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  restorationIdentifier = [clientCopy restorationIdentifier];

  if (restorationIdentifier)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityConnection);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v16 = NSStringFromSelector(a2);
        restorationIdentifier2 = [clientCopy restorationIdentifier];
        restorationData = [clientCopy restorationData];
        v20 = 138413058;
        v21 = v16;
        v22 = 2112;
        v23 = clientCopy;
        v24 = 2112;
        v25 = restorationIdentifier2;
        v26 = 2112;
        v27 = restorationData;
        _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "%@%@, restorationIdentifier, %@, restorationData, %@", &v20, 0x2Au);
      }
    }

    restorationData2 = [clientCopy restorationData];

    persistedClients = [(RTClientListener *)self persistedClients];
    if (restorationData2)
    {
      restorationData3 = [clientCopy restorationData];
      restorationIdentifier3 = [clientCopy restorationIdentifier];
      [persistedClients setObject:restorationData3 forKey:restorationIdentifier3];
    }

    else
    {
      restorationData3 = [clientCopy restorationIdentifier];
      [persistedClients removeObjectForKey:restorationData3];
    }

    persistedClients2 = [(RTClientListener *)self persistedClients];
    v13 = +[RTClientListener persistedClientsPath];
    v14 = [persistedClients2 writeToFile:v13 atomically:0];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilityConnection);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v19 = @"NO";
        if (v14)
        {
          v19 = @"YES";
        }

        v20 = 138412290;
        v21 = v19;
        _os_log_debug_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEBUG, "success writing persisted clients, %@", &v20, 0xCu);
      }
    }
  }
}

- (void)handleDisconnectionForDaemonClient:(id)client
{
  v11 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityConnection);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = clientCopy;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "client disconnected, %@", &v9, 0xCu);
    }
  }

  connectedClients = [(RTXPCListener *)self connectedClients];
  [connectedClients removeObject:clientCopy];

  if ([clientCopy hasReasonToOutliveClientConnection])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityConnection);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v9 = 138412290;
        v10 = clientCopy;
        _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "client, %@, has a reason outlive client connection", &v9, 0xCu);
      }
    }

    disconnectedClients = [(RTXPCListener *)self disconnectedClients];
    [disconnectedClients addObject:clientCopy];
  }

  else
  {
    [clientCopy shutdown];
  }

  [(RTXPCListener *)self logClients];
}

@end