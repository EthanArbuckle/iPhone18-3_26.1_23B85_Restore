@interface RTClientListenerInternal
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (RTClientListenerInternal)initWithAccountManager:(id)manager assetManager:(id)assetManager authorizationManager:(id)authorizationManager bluePOITileManager:(id)tileManager buildingPolygonManager:(id)polygonManager deviceLocationPredictor:(id)predictor diagnostics:(id)diagnostics eventAgentManager:(id)self0 eventModelProvider:(id)self1 authorizedLocationManager:(id)self2 fingerprintManager:(id)self3 hintManager:(id)self4 intermittentGNSSManager:(id)self5 learnedLocationManager:(id)self6 learnedLocationStore:(id)self7 locationManager:(id)self8 locationStore:(id)self9 mapServiceManager:(id)serviceManager motionActivityManager:(id)activityManager peopleDiscoveryProvider:(id)discoveryProvider persistenceManager:(id)persistenceManager placeInferenceQueryStore:(id)queryStore platform:(id)platform pointOfInterestSampler:(id)sampler predictedContextManager:(id)contextManager purgeManager:(id)purgeManager safetyCacheStore:(id)cacheStore scenarioTriggerManager:(id)manager0 userCurationManager:(id)manager1 vehicleLocationProvider:(id)manager2 visitManager:(id)manager3 workoutRouteManager:(id)manager4 workoutScheduler:(id)manager5;
- (id)handleClientConnection:(id)connection;
@end

@implementation RTClientListenerInternal

- (RTClientListenerInternal)initWithAccountManager:(id)manager assetManager:(id)assetManager authorizationManager:(id)authorizationManager bluePOITileManager:(id)tileManager buildingPolygonManager:(id)polygonManager deviceLocationPredictor:(id)predictor diagnostics:(id)diagnostics eventAgentManager:(id)self0 eventModelProvider:(id)self1 authorizedLocationManager:(id)self2 fingerprintManager:(id)self3 hintManager:(id)self4 intermittentGNSSManager:(id)self5 learnedLocationManager:(id)self6 learnedLocationStore:(id)self7 locationManager:(id)self8 locationStore:(id)self9 mapServiceManager:(id)serviceManager motionActivityManager:(id)activityManager peopleDiscoveryProvider:(id)discoveryProvider persistenceManager:(id)persistenceManager placeInferenceQueryStore:(id)queryStore platform:(id)platform pointOfInterestSampler:(id)sampler predictedContextManager:(id)contextManager purgeManager:(id)purgeManager safetyCacheStore:(id)cacheStore scenarioTriggerManager:(id)manager0 userCurationManager:(id)manager1 vehicleLocationProvider:(id)manager2 visitManager:(id)manager3 workoutRouteManager:(id)manager4 workoutScheduler:(id)manager5
{
  managerCopy = manager;
  assetManagerCopy = assetManager;
  assetManagerCopy2 = assetManager;
  authorizationManagerCopy = authorizationManager;
  authorizationManagerCopy2 = authorizationManager;
  tileManagerCopy = tileManager;
  polygonManagerCopy = polygonManager;
  polygonManagerCopy2 = polygonManager;
  predictorCopy = predictor;
  diagnosticsCopy = diagnostics;
  agentManagerCopy = agentManager;
  providerCopy = provider;
  locationManagerCopy = locationManager;
  fingerprintManagerCopy = fingerprintManager;
  hintManagerCopy = hintManager;
  sManagerCopy = sManager;
  learnedLocationManagerCopy = learnedLocationManager;
  storeCopy = store;
  v67 = a18;
  locationStoreCopy = locationStore;
  serviceManagerCopy = serviceManager;
  activityManagerCopy = activityManager;
  discoveryProviderCopy = discoveryProvider;
  persistenceManagerCopy = persistenceManager;
  queryStoreCopy = queryStore;
  platformCopy = platform;
  samplerCopy = sampler;
  contextManagerCopy = contextManager;
  purgeManagerCopy = purgeManager;
  cacheStoreCopy = cacheStore;
  triggerManagerCopy = triggerManager;
  curationManagerCopy = curationManager;
  locationProviderCopy = locationProvider;
  visitManagerCopy = visitManager;
  routeManagerCopy = routeManager;
  schedulerCopy = scheduler;
  if ([platformCopy internalInstall])
  {
    v83.receiver = self;
    v83.super_class = RTClientListenerInternal;
    v44 = [(RTXPCListener *)&v83 initWithMachServiceName:@"com.apple.routined.internal"];
    p_isa = &v44->super.super.super.isa;
    if (v44)
    {
      objc_storeStrong(&v44->_accountManager, manager);
      objc_storeStrong(p_isa + 12, assetManagerCopy);
      objc_storeStrong(p_isa + 13, authorizationManagerCopy);
      objc_storeStrong(p_isa + 14, tileManager);
      objc_storeStrong(p_isa + 15, polygonManagerCopy);
      objc_storeStrong(p_isa + 16, predictor);
      objc_storeStrong(p_isa + 17, diagnostics);
      objc_storeStrong(p_isa + 18, agentManager);
      objc_storeStrong(p_isa + 19, provider);
      objc_storeStrong(p_isa + 20, locationManager);
      objc_storeStrong(p_isa + 21, fingerprintManager);
      objc_storeStrong(p_isa + 22, hintManager);
      objc_storeStrong(p_isa + 23, sManager);
      objc_storeStrong(p_isa + 24, learnedLocationManager);
      objc_storeStrong(p_isa + 25, store);
      objc_storeStrong(p_isa + 26, a18);
      objc_storeStrong(p_isa + 27, locationStore);
      objc_storeStrong(p_isa + 28, serviceManager);
      objc_storeStrong(p_isa + 29, activityManager);
      objc_storeStrong(p_isa + 31, discoveryProvider);
      objc_storeStrong(p_isa + 30, persistenceManager);
      objc_storeStrong(p_isa + 32, queryStore);
      objc_storeStrong(p_isa + 34, platform);
      objc_storeStrong(p_isa + 33, sampler);
      objc_storeStrong(p_isa + 35, contextManager);
      objc_storeStrong(p_isa + 36, purgeManager);
      objc_storeStrong(p_isa + 37, triggerManager);
      objc_storeStrong(p_isa + 38, curationManager);
      objc_storeStrong(p_isa + 39, locationProvider);
      objc_storeStrong(p_isa + 40, visitManager);
      objc_storeStrong(p_isa + 42, routeManager);
      objc_storeStrong(p_isa + 43, scheduler);
      objc_storeStrong(p_isa + 44, cacheStore);
      [p_isa setup];
    }

    selfCopy = p_isa;
    v47 = selfCopy;
  }

  else
  {
    v47 = 0;
    selfCopy = self;
  }

  return v47;
}

- (id)handleClientConnection:(id)connection
{
  connectionCopy = connection;
  v11 = [RTDaemonClientInternal alloc];
  queue = [(RTXPCListener *)self queue];
  v6 = [(RTDaemonClientInternal *)v11 initWithQueue:queue accountManager:self->_accountManager assetManager:self->_assetManager authorizationManager:self->_authorizationManager bluePOITileManager:self->_bluePOITileManager buildingPolygonManager:self->_buildingPolygonManager deviceLocationPredictor:self->_deviceLocationPredictor diagnostics:self->_diagnostics eventModelProvider:self->_eventModelProvider authorizedLocationManager:self->_authorizedLocationManager fingerprintManager:self->_fingerprintManager hintManager:self->_hintManager intermittentGNSSManager:self->_intermittentGNSSManager learnedLocationManager:self->_learnedLocationManager learnedLocationStore:self->_learnedLocationStore locationManager:self->_locationManager locationStore:self->_locationStore mapServiceManager:self->_mapServiceManager motionActivityManager:self->_motionActivityManager peopleDiscoveryProvider:self->_peopleDiscoveryProvider persistenceManager:self->_persistenceManager placeInferenceQueryStore:self->_placeInferenceQueryStore pointOfInterestSampler:self->_pointOfInterestSampler predictedContextManager:self->_predictedContextManager purgeManager:self->_purgeManager safetyCacheStore:self->_safetyCacheStore scenarioTriggerManager:self->_scenarioTriggerManager userCurationManager:self->_userCurationManager vehicleLocationProvider:self->_vehicleLocationProvider visitManager:self->_visitManager workoutRouteManager:self->_workoutRouteManager workoutScheduler:self->_workoutScheduler];

  v7 = [RTXPC executablePathOfConnection:connectionCopy];
  [(RTDaemonClientInternal *)v6 setExecutablePath:v7];

  -[RTDaemonClientInternal setProcessIdentifier:](v6, "setProcessIdentifier:", [connectionCopy processIdentifier]);
  v8 = [RTXPC signingIdentifierOfConnection:connectionCopy];
  [(RTDaemonClientInternal *)v6 setSigningIdentifier:v8];

  [(RTDaemonClientInternal *)v6 setXpcConnection:connectionCopy];
  xpcConnection = [(RTDaemonClientInternal *)v6 xpcConnection];
  [xpcConnection setDelegate:v6];

  return v6;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v23 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  if (connectionCopy)
  {
    if ([(RTPlatform *)self->_platform internalInstall])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v8 = _rt_log_facility_get_os_log(RTLogFacilityConnection);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          processIdentifier = [connectionCopy processIdentifier];
          machServiceName = [(RTXPCListener *)self machServiceName];
          v21 = 67109378;
          *v22 = processIdentifier;
          *&v22[4] = 2112;
          *&v22[6] = machServiceName;
          _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "listener received incoming connection from pid %d, for service, %@", &v21, 0x12u);
        }
      }

      v9 = [(RTClientListenerInternal *)self handleClientConnection:connectionCopy];
      if (v9)
      {
        v10 = v9;
        connectedClients = [(RTXPCListener *)self connectedClients];
        [connectedClients addObject:v10];

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v12 = _rt_log_facility_get_os_log(RTLogFacilityConnection);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            machServiceName2 = [(RTXPCListener *)self machServiceName];
            v21 = 138412546;
            *v22 = v10;
            *&v22[8] = 2112;
            *&v22[10] = machServiceName2;
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
          processIdentifier2 = [connectionCopy processIdentifier];
          machServiceName3 = [(RTXPCListener *)self machServiceName];
          v21 = 67109378;
          *v22 = processIdentifier2;
          *&v22[4] = 2112;
          *&v22[6] = machServiceName3;
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