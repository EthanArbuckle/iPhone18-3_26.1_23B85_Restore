@interface RTClientListenerInternal
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (RTClientListenerInternal)initWithAccountManager:(id)a3 assetManager:(id)a4 authorizationManager:(id)a5 bluePOITileManager:(id)a6 buildingPolygonManager:(id)a7 deviceLocationPredictor:(id)a8 diagnostics:(id)a9 eventAgentManager:(id)a10 eventModelProvider:(id)a11 authorizedLocationManager:(id)a12 fingerprintManager:(id)a13 hintManager:(id)a14 intermittentGNSSManager:(id)a15 learnedLocationManager:(id)a16 learnedLocationStore:(id)a17 locationManager:(id)a18 locationStore:(id)a19 mapServiceManager:(id)a20 motionActivityManager:(id)a21 peopleDiscoveryProvider:(id)a22 persistenceManager:(id)a23 placeInferenceQueryStore:(id)a24 platform:(id)a25 pointOfInterestSampler:(id)a26 predictedContextManager:(id)a27 purgeManager:(id)a28 safetyCacheStore:(id)a29 scenarioTriggerManager:(id)a30 userCurationManager:(id)a31 vehicleLocationProvider:(id)a32 visitManager:(id)a33 workoutRouteManager:(id)a34 workoutScheduler:(id)a35;
- (id)handleClientConnection:(id)a3;
@end

@implementation RTClientListenerInternal

- (RTClientListenerInternal)initWithAccountManager:(id)a3 assetManager:(id)a4 authorizationManager:(id)a5 bluePOITileManager:(id)a6 buildingPolygonManager:(id)a7 deviceLocationPredictor:(id)a8 diagnostics:(id)a9 eventAgentManager:(id)a10 eventModelProvider:(id)a11 authorizedLocationManager:(id)a12 fingerprintManager:(id)a13 hintManager:(id)a14 intermittentGNSSManager:(id)a15 learnedLocationManager:(id)a16 learnedLocationStore:(id)a17 locationManager:(id)a18 locationStore:(id)a19 mapServiceManager:(id)a20 motionActivityManager:(id)a21 peopleDiscoveryProvider:(id)a22 persistenceManager:(id)a23 placeInferenceQueryStore:(id)a24 platform:(id)a25 pointOfInterestSampler:(id)a26 predictedContextManager:(id)a27 purgeManager:(id)a28 safetyCacheStore:(id)a29 scenarioTriggerManager:(id)a30 userCurationManager:(id)a31 vehicleLocationProvider:(id)a32 visitManager:(id)a33 workoutRouteManager:(id)a34 workoutScheduler:(id)a35
{
  v82 = a3;
  v50 = a4;
  v81 = a4;
  v51 = a5;
  v80 = a5;
  v79 = a6;
  v52 = a7;
  v78 = a7;
  v77 = a8;
  v76 = a9;
  v75 = a10;
  v74 = a11;
  v73 = a12;
  v72 = a13;
  v71 = a14;
  v70 = a15;
  v69 = a16;
  v68 = a17;
  v67 = a18;
  v66 = a19;
  v65 = a20;
  v64 = a21;
  v63 = a22;
  v62 = a23;
  v40 = a24;
  v41 = a25;
  v42 = a26;
  v43 = a27;
  v61 = a28;
  v60 = a29;
  v59 = a30;
  v58 = a31;
  v57 = a32;
  v56 = a33;
  v55 = a34;
  v54 = a35;
  if ([v41 internalInstall])
  {
    v83.receiver = self;
    v83.super_class = RTClientListenerInternal;
    v44 = [(RTXPCListener *)&v83 initWithMachServiceName:@"com.apple.routined.internal"];
    p_isa = &v44->super.super.super.isa;
    if (v44)
    {
      objc_storeStrong(&v44->_accountManager, a3);
      objc_storeStrong(p_isa + 12, v50);
      objc_storeStrong(p_isa + 13, v51);
      objc_storeStrong(p_isa + 14, a6);
      objc_storeStrong(p_isa + 15, v52);
      objc_storeStrong(p_isa + 16, a8);
      objc_storeStrong(p_isa + 17, a9);
      objc_storeStrong(p_isa + 18, a10);
      objc_storeStrong(p_isa + 19, a11);
      objc_storeStrong(p_isa + 20, a12);
      objc_storeStrong(p_isa + 21, a13);
      objc_storeStrong(p_isa + 22, a14);
      objc_storeStrong(p_isa + 23, a15);
      objc_storeStrong(p_isa + 24, a16);
      objc_storeStrong(p_isa + 25, a17);
      objc_storeStrong(p_isa + 26, a18);
      objc_storeStrong(p_isa + 27, a19);
      objc_storeStrong(p_isa + 28, a20);
      objc_storeStrong(p_isa + 29, a21);
      objc_storeStrong(p_isa + 31, a22);
      objc_storeStrong(p_isa + 30, a23);
      objc_storeStrong(p_isa + 32, a24);
      objc_storeStrong(p_isa + 34, a25);
      objc_storeStrong(p_isa + 33, a26);
      objc_storeStrong(p_isa + 35, a27);
      objc_storeStrong(p_isa + 36, a28);
      objc_storeStrong(p_isa + 37, a30);
      objc_storeStrong(p_isa + 38, a31);
      objc_storeStrong(p_isa + 39, a32);
      objc_storeStrong(p_isa + 40, a33);
      objc_storeStrong(p_isa + 42, a34);
      objc_storeStrong(p_isa + 43, a35);
      objc_storeStrong(p_isa + 44, a29);
      [p_isa setup];
    }

    v46 = p_isa;
    v47 = v46;
  }

  else
  {
    v47 = 0;
    v46 = self;
  }

  return v47;
}

- (id)handleClientConnection:(id)a3
{
  v4 = a3;
  v11 = [RTDaemonClientInternal alloc];
  v5 = [(RTXPCListener *)self queue];
  v6 = [(RTDaemonClientInternal *)v11 initWithQueue:v5 accountManager:self->_accountManager assetManager:self->_assetManager authorizationManager:self->_authorizationManager bluePOITileManager:self->_bluePOITileManager buildingPolygonManager:self->_buildingPolygonManager deviceLocationPredictor:self->_deviceLocationPredictor diagnostics:self->_diagnostics eventModelProvider:self->_eventModelProvider authorizedLocationManager:self->_authorizedLocationManager fingerprintManager:self->_fingerprintManager hintManager:self->_hintManager intermittentGNSSManager:self->_intermittentGNSSManager learnedLocationManager:self->_learnedLocationManager learnedLocationStore:self->_learnedLocationStore locationManager:self->_locationManager locationStore:self->_locationStore mapServiceManager:self->_mapServiceManager motionActivityManager:self->_motionActivityManager peopleDiscoveryProvider:self->_peopleDiscoveryProvider persistenceManager:self->_persistenceManager placeInferenceQueryStore:self->_placeInferenceQueryStore pointOfInterestSampler:self->_pointOfInterestSampler predictedContextManager:self->_predictedContextManager purgeManager:self->_purgeManager safetyCacheStore:self->_safetyCacheStore scenarioTriggerManager:self->_scenarioTriggerManager userCurationManager:self->_userCurationManager vehicleLocationProvider:self->_vehicleLocationProvider visitManager:self->_visitManager workoutRouteManager:self->_workoutRouteManager workoutScheduler:self->_workoutScheduler];

  v7 = [RTXPC executablePathOfConnection:v4];
  [(RTDaemonClientInternal *)v6 setExecutablePath:v7];

  -[RTDaemonClientInternal setProcessIdentifier:](v6, "setProcessIdentifier:", [v4 processIdentifier]);
  v8 = [RTXPC signingIdentifierOfConnection:v4];
  [(RTDaemonClientInternal *)v6 setSigningIdentifier:v8];

  [(RTDaemonClientInternal *)v6 setXpcConnection:v4];
  v9 = [(RTDaemonClientInternal *)v6 xpcConnection];
  [v9 setDelegate:v6];

  return v6;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if ([(RTPlatform *)self->_platform internalInstall])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v8 = _rt_log_facility_get_os_log(RTLogFacilityConnection);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v19 = [v7 processIdentifier];
          v20 = [(RTXPCListener *)self machServiceName];
          v21 = 67109378;
          *v22 = v19;
          *&v22[4] = 2112;
          *&v22[6] = v20;
          _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "listener received incoming connection from pid %d, for service, %@", &v21, 0x12u);
        }
      }

      v9 = [(RTClientListenerInternal *)self handleClientConnection:v7];
      if (v9)
      {
        v10 = v9;
        v11 = [(RTXPCListener *)self connectedClients];
        [v11 addObject:v10];

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v12 = _rt_log_facility_get_os_log(RTLogFacilityConnection);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v13 = [(RTXPCListener *)self machServiceName];
            v21 = 138412546;
            *v22 = v10;
            *&v22[8] = 2112;
            *&v22[10] = v13;
            _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "client connected, %@, to service, %@", &v21, 0x16u);
          }
        }

        [(RTXPCListener *)self logClients];
        v14 = 1;
        goto LABEL_23;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v15 = _rt_log_facility_get_os_log(RTLogFacilityConnection);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = [v7 processIdentifier];
          v17 = [(RTXPCListener *)self machServiceName];
          v21 = 67109378;
          *v22 = v16;
          *&v22[4] = 2112;
          *&v22[6] = v17;
          _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "failed to create client for connection from pid, %d, for service, %@", &v21, 0x12u);
        }
      }

      v10 = 0;
LABEL_22:
      v14 = 0;
LABEL_23:

      goto LABEL_24;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityConnection);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v21) = 0;
      _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, "incoming xpc connection is nil", &v21, 2u);
    }

    goto LABEL_22;
  }

  v14 = 0;
LABEL_24:

  return v14;
}

@end