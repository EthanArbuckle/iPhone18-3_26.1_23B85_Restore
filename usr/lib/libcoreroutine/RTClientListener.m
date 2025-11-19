@interface RTClientListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (RTClientListener)initWithAccountManager:(id)a3 assetManager:(id)a4 authorizationManager:(id)a5 backgroundInertialOdometryManager:(id)a6 bluePOITileManager:(id)a7 contactsManager:(id)a8 defaultsManager:(id)a9 deviceLocationPredictor:(id)a10 diagnostics:(id)a11 elevationManager:(id)a12 eventAgentManager:(id)a13 eventModelProvider:(id)a14 authorizedLocationManager:(id)a15 fingerprintManager:(id)a16 healthKitManager:(id)a17 hintManager:(id)a18 intermittentGNSSManager:(id)a19 learnedLocationManager:(id)a20 learnedLocationStore:(id)a21 locationManager:(id)a22 locationContextManager:(id)a23 locationStore:(id)a24 mapServiceManager:(id)a25 metricManager:(id)a26 motionActivityManager:(id)a27 peopleDiscoveryProvider:(id)a28 placeInferenceManager:(id)a29 predictedContextManager:(id)a30 purgeManager:(id)a31 scenarioTriggerManager:(id)a32 timerManager:(id)a33 tripSegmentManager:(id)a34 userCurationManager:(id)a35 vehicleLocationProvider:(id)a36 vehicleStore:(id)a37 visitManager:(id)a38 wifiManager:(id)a39 tripClusterManager:(id)a40 visitConsolidator:(id)a41;
- (id)handleClientConnection:(id)a3;
- (id)handleRestorationForDaemonClient:(id)a3;
- (void)_setup;
- (void)_setupConnection:(id)a3 forClient:(id)a4;
- (void)handleDisconnectionForDaemonClient:(id)a3;
- (void)saveDaemonClient:(id)a3;
@end

@implementation RTClientListener

- (RTClientListener)initWithAccountManager:(id)a3 assetManager:(id)a4 authorizationManager:(id)a5 backgroundInertialOdometryManager:(id)a6 bluePOITileManager:(id)a7 contactsManager:(id)a8 defaultsManager:(id)a9 deviceLocationPredictor:(id)a10 diagnostics:(id)a11 elevationManager:(id)a12 eventAgentManager:(id)a13 eventModelProvider:(id)a14 authorizedLocationManager:(id)a15 fingerprintManager:(id)a16 healthKitManager:(id)a17 hintManager:(id)a18 intermittentGNSSManager:(id)a19 learnedLocationManager:(id)a20 learnedLocationStore:(id)a21 locationManager:(id)a22 locationContextManager:(id)a23 locationStore:(id)a24 mapServiceManager:(id)a25 metricManager:(id)a26 motionActivityManager:(id)a27 peopleDiscoveryProvider:(id)a28 placeInferenceManager:(id)a29 predictedContextManager:(id)a30 purgeManager:(id)a31 scenarioTriggerManager:(id)a32 timerManager:(id)a33 tripSegmentManager:(id)a34 userCurationManager:(id)a35 vehicleLocationProvider:(id)a36 vehicleStore:(id)a37 visitManager:(id)a38 wifiManager:(id)a39 tripClusterManager:(id)a40 visitConsolidator:(id)a41
{
  v178 = a3;
  v177 = a4;
  v176 = a5;
  v175 = a6;
  v174 = a7;
  v138 = a8;
  v173 = a8;
  v172 = a9;
  v171 = a10;
  v170 = a11;
  v169 = a12;
  v168 = a13;
  v167 = a14;
  v166 = a15;
  v165 = a16;
  v164 = a17;
  v163 = a18;
  v162 = a19;
  v161 = a20;
  v160 = a21;
  v159 = a22;
  v158 = a23;
  v157 = a24;
  v156 = a25;
  v155 = a26;
  v154 = a27;
  v153 = a28;
  v152 = a29;
  v151 = a30;
  v150 = a31;
  v149 = a32;
  v148 = a33;
  v147 = a34;
  v146 = a35;
  v145 = a36;
  v144 = a37;
  v143 = a38;
  v142 = a39;
  v141 = a40;
  v140 = a41;
  v180.receiver = self;
  v180.super_class = RTClientListener;
  v46 = [(RTXPCListener *)&v180 initWithMachServiceName:@"com.apple.routined.registration"];
  v47 = v46;
  if (v46)
  {
    objc_storeStrong(&v46->_accountManager, a3);
    objc_storeStrong(&v47->_assetManager, a4);
    objc_storeStrong(&v47->_authorizationManager, a5);
    objc_storeStrong(&v47->_backgroundInertialOdometryManager, a6);
    objc_storeStrong(&v47->_bluePOITileManager, a7);
    objc_storeStrong(&v47->_contactsManager, v138);
    objc_storeStrong(&v47->_defaultsManager, a9);
    objc_storeStrong(&v47->_deviceLocationPredictor, a10);
    objc_storeStrong(&v47->_diagnostics, a11);
    objc_storeStrong(&v47->_elevationManager, a12);
    objc_storeStrong(&v47->_eventAgentManager, a13);
    objc_storeStrong(&v47->_eventModelProvider, a14);
    objc_storeStrong(&v47->_fingerprintManager, a16);
    objc_storeStrong(&v47->_authorizedLocationManager, a15);
    objc_storeStrong(&v47->_healthKitManager, a17);
    objc_storeStrong(&v47->_hintManager, a18);
    objc_storeStrong(&v47->_intermittentGNSSManager, a19);
    objc_storeStrong(&v47->_learnedLocationManager, a20);
    objc_storeStrong(&v47->_learnedLocationStore, a21);
    objc_storeStrong(&v47->_locationManager, a22);
    objc_storeStrong(&v47->_locationContextManager, a23);
    objc_storeStrong(&v47->_locationStore, a24);
    objc_storeStrong(&v47->_mapServiceManager, a25);
    objc_storeStrong(&v47->_metricManager, a26);
    objc_storeStrong(&v47->_motionActivityManager, a27);
    objc_storeStrong(&v47->_peopleDiscoveryProvider, a28);
    objc_storeStrong(&v47->_placeInferenceManager, a29);
    objc_storeStrong(&v47->_predictedContextManager, a30);
    objc_storeStrong(&v47->_purgeManager, a31);
    objc_storeStrong(&v47->_scenarioTriggerManager, a32);
    objc_storeStrong(&v47->_timerManager, a33);
    objc_storeStrong(&v47->_tripSegmentManager, a34);
    objc_storeStrong(&v47->_userCurationManager, a35);
    objc_storeStrong(&v47->_vehicleLocationProvider, a36);
    objc_storeStrong(&v47->_vehicleStore, a37);
    objc_storeStrong(&v47->_visitManager, a38);
    objc_storeStrong(&v47->_wifiManager, a39);
    objc_storeStrong(&v47->_tripClusterManager, a40);
    objc_storeStrong(&v47->_visitConsolidator, a41);
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

  v6 = [(RTClientListener *)self persistedClients];

  if (!v6 || (-[RTClientListener persistedClients](self, "persistedClients"), v7 = objc_claimAutoreleasedReturnValue(), [v7 objectForKeyedSubscript:@"$archiver"], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    v9 = objc_opt_new();
    [(RTClientListener *)self setPersistedClients:v9];
  }

  v10 = [(RTClientListener *)self persistedClients];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __26__RTClientListener__setup__block_invoke;
  v12[3] = &unk_2788D20D8;
  v12[4] = self;
  [v10 enumerateKeysAndObjectsUsingBlock:v12];

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

- (id)handleClientConnection:(id)a3
{
  v8 = a3;
  v7 = [RTDaemonClient alloc];
  v4 = [(RTXPCListener *)self queue];
  v5 = [(RTDaemonClient *)v7 initWithQueue:v4 restorationData:0 accountManager:self->_accountManager assetManager:self->_assetManager authorizationManager:self->_authorizationManager backgroundInertialOdometryManager:self->_backgroundInertialOdometryManager contactsManager:self->_contactsManager defaultsManager:self->_defaultsManager deviceLocationPredictor:self->_deviceLocationPredictor diagnostics:self->_diagnostics elevationManager:self->_elevationManager eventAgentManager:self->_eventAgentManager eventModelProvider:self->_eventModelProvider authorizedLocationManager:self->_authorizedLocationManager fingerprintManager:self->_fingerprintManager healthKitManager:self->_healthKitManager hintManager:self->_hintManager intermittentGNSSManager:self->_intermittentGNSSManager learnedLocationManager:self->_learnedLocationManager learnedLocationStore:self->_learnedLocationStore locationManager:self->_locationManager locationContextManager:self->_locationContextManager locationStore:self->_locationStore mapServiceManager:self->_mapServiceManager metricManager:self->_metricManager motionActivityManager:self->_motionActivityManager peopleDiscoveryProvider:self->_peopleDiscoveryProvider placeInferenceManager:self->_placeInferenceManager predictedContextManager:self->_predictedContextManager purgeManager:self->_purgeManager scenarioTriggerManager:self->_scenarioTriggerManager timerManager:self->_timerManager tripSegmentManager:self->_tripSegmentManager userCurationManager:self->_userCurationManager vehicleLocationProvider:self->_vehicleLocationProvider vehicleStore:self->_vehicleStore visitManager:self->_visitManager wifiManager:self->_wifiManager tripClusterManager:self->_tripClusterManager visitConsolidator:self->_visitConsolidator];

  [(RTDaemonClient *)v5 setClientManagerDelegate:self];
  [(RTClientListener *)self _setupConnection:v8 forClient:v5];

  return v5;
}

- (void)_setupConnection:(id)a3 forClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 suspend];
  v8 = [(RTXPCListener *)self queue];
  [v6 _setQueue:v8];

  [v6 setRemoteObjectInterface:self->_frameworkInterface];
  [v6 setExportedInterface:self->_daemonInterface];
  [v6 setExportedObject:v7];
  objc_initWeak(&location, v7);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __47__RTClientListener__setupConnection_forClient___block_invoke;
  v17[3] = &unk_2788C5908;
  objc_copyWeak(&v18, &location);
  [v6 setInterruptionHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __47__RTClientListener__setupConnection_forClient___block_invoke_312;
  v15[3] = &unk_2788C5908;
  objc_copyWeak(&v16, &location);
  [v6 setInvalidationHandler:v15];
  [v6 resume];
  v9 = [RTXPC executablePathOfConnection:v6];
  [v7 setExecutablePath:v9];

  v10 = [v7 executablePath];
  v11 = [v10 lastPathComponent];
  [v7 setExecutableName:v11];

  [v7 setProcessIdentifier:{objc_msgSend(v6, "processIdentifier")}];
  v12 = [RTXPC signingIdentifierOfConnection:v6];
  [v7 setSigningIdentifier:v12];

  v13 = [v7 signingIdentifier];
  [v7 setBundleIdentifier:v13];

  [v7 setXpcConnection:v6];
  v14 = [v7 xpcConnection];
  [v14 setDelegate:v7];

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

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v23 = 0;
    v8 = [RTXPC clientCodeSignatureIsValid:v7 error:&v23];
    v9 = v23;
    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v10 = _rt_log_facility_get_os_log(RTLogFacilityConnection);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v19 = [v7 processIdentifier];
          v20 = [(RTXPCListener *)self machServiceName];
          *buf = 67109378;
          *v25 = v19;
          *&v25[4] = 2112;
          *&v25[6] = v20;
          _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, "listener received incoming connection from pid %d, for service, %@", buf, 0x12u);
        }
      }

      v11 = [(RTClientListener *)self handleClientConnection:v7];
      if (v11)
      {
        v12 = v11;
        v13 = [(RTXPCListener *)self connectedClients];
        [v13 addObject:v12];

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v14 = _rt_log_facility_get_os_log(RTLogFacilityConnection);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = [(RTXPCListener *)self machServiceName];
            *buf = 138412546;
            *v25 = v12;
            *&v25[8] = 2112;
            *&v25[10] = v15;
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
          v21 = [v7 processIdentifier];
          v22 = [(RTXPCListener *)self machServiceName];
          *buf = 67109378;
          *v25 = v21;
          *&v25[4] = 2112;
          *&v25[6] = v22;
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

- (id)handleRestorationForDaemonClient:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 restorationIdentifier];

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityConnection);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [v4 restorationIdentifier];
        *buf = 138412546;
        *&buf[4] = v4;
        *&buf[12] = 2112;
        *&buf[14] = v7;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "rehydrate any existing session for client, %@, restoration identifier, %@", buf, 0x16u);
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v44 = __Block_byref_object_copy__176;
    v45 = __Block_byref_object_dispose__176;
    v46 = 0;
    v8 = [(RTXPCListener *)self disconnectedClients];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __53__RTClientListener_handleRestorationForDaemonClient___block_invoke;
    v36[3] = &unk_2788D2100;
    v9 = v4;
    v37 = v9;
    v38 = buf;
    [v8 enumerateObjectsUsingBlock:v36];

    if (*(*&buf[8] + 40))
    {
      v10 = [v9 xpcConnection];
      [(RTClientListener *)self _setupConnection:v10 forClient:*(*&buf[8] + 40)];

      v11 = [(RTXPCListener *)self disconnectedClients];
      [v11 removeObject:*(*&buf[8] + 40)];

      v12 = [(RTXPCListener *)self connectedClients];
      [v12 addObject:*(*&buf[8] + 40)];

      v13 = [(RTXPCListener *)self connectedClients];
      [v13 removeObject:v9];

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
      v15 = [(RTXPCListener *)self connectedClients];
      v24 = MEMORY[0x277D85DD0];
      v25 = 3221225472;
      v26 = __53__RTClientListener_handleRestorationForDaemonClient___block_invoke_2;
      v27 = &unk_2788D2100;
      v16 = v9;
      v28 = v16;
      v29 = &v30;
      [v15 enumerateObjectsUsingBlock:&v24];

      if (v31[5])
      {
        v17 = _rt_log_facility_get_os_log(RTLogFacilityConnection);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v23 = [v16 restorationIdentifier];
          *v39 = 138412546;
          v40 = v16;
          v41 = 2112;
          v42 = v23;
          _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "client, %@, already rehydrated session for restoration identifier, %@, terminating connection, this is likely a programming error that multiple instances of RTRoutineManager from the same process are using the same restoration identifier", v39, 0x16u);
        }

        v18 = [v16 xpcConnection];
        [v18 invalidate];

        [v16 shutdown];
        v19 = [(RTXPCListener *)self connectedClients];
        [v19 removeObject:v16];

        [(RTXPCListener *)self logClients];
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v20 = _rt_log_facility_get_os_log(RTLogFacilityConnection);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = [v16 restorationIdentifier];
          *v39 = 138412290;
          v40 = v21;
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

- (void)saveDaemonClient:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 restorationIdentifier];

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityConnection);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v16 = NSStringFromSelector(a2);
        v17 = [v5 restorationIdentifier];
        v18 = [v5 restorationData];
        v20 = 138413058;
        v21 = v16;
        v22 = 2112;
        v23 = v5;
        v24 = 2112;
        v25 = v17;
        v26 = 2112;
        v27 = v18;
        _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "%@%@, restorationIdentifier, %@, restorationData, %@", &v20, 0x2Au);
      }
    }

    v8 = [v5 restorationData];

    v9 = [(RTClientListener *)self persistedClients];
    if (v8)
    {
      v10 = [v5 restorationData];
      v11 = [v5 restorationIdentifier];
      [v9 setObject:v10 forKey:v11];
    }

    else
    {
      v10 = [v5 restorationIdentifier];
      [v9 removeObjectForKey:v10];
    }

    v12 = [(RTClientListener *)self persistedClients];
    v13 = +[RTClientListener persistedClientsPath];
    v14 = [v12 writeToFile:v13 atomically:0];

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

- (void)handleDisconnectionForDaemonClient:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityConnection);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "client disconnected, %@", &v9, 0xCu);
    }
  }

  v6 = [(RTXPCListener *)self connectedClients];
  [v6 removeObject:v4];

  if ([v4 hasReasonToOutliveClientConnection])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityConnection);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v9 = 138412290;
        v10 = v4;
        _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "client, %@, has a reason outlive client connection", &v9, 0xCu);
      }
    }

    v8 = [(RTXPCListener *)self disconnectedClients];
    [v8 addObject:v4];
  }

  else
  {
    [v4 shutdown];
  }

  [(RTXPCListener *)self logClients];
}

@end