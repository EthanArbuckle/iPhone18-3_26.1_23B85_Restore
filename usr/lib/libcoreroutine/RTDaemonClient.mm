@interface RTDaemonClient
+ (id)filterVisits:(id)visits executable:(id)executable;
- (BOOL)hasReasonToOutliveClientConnection;
- (NSString)description;
- (RTClientListenerProtocol)clientManagerDelegate;
- (RTDaemonClient)initWithQueue:(id)queue restorationData:(id)data accountManager:(id)manager assetManager:(id)assetManager authorizationManager:(id)authorizationManager backgroundInertialOdometryManager:(id)odometryManager contactsManager:(id)contactsManager defaultsManager:(id)self0 deviceLocationPredictor:(id)self1 diagnostics:(id)self2 elevationManager:(id)self3 eventAgentManager:(id)self4 eventModelProvider:(id)self5 authorizedLocationManager:(id)self6 fingerprintManager:(id)self7 healthKitManager:(id)self8 hintManager:(id)self9 intermittentGNSSManager:(id)sManager learnedLocationManager:(id)learnedLocationManager learnedLocationStore:(id)store locationManager:(id)a23 locationContextManager:(id)contextManager locationStore:(id)locationStore mapServiceManager:(id)serviceManager metricManager:(id)metricManager motionActivityManager:(id)activityManager peopleDiscoveryProvider:(id)discoveryProvider placeInferenceManager:(id)queue0 predictedContextManager:(id)queue1 purgeManager:(id)queue2 scenarioTriggerManager:(id)queue3 timerManager:(id)queue4 tripSegmentManager:(id)queue5 userCurationManager:(id)queue6 vehicleLocationProvider:(id)queue7 vehicleStore:(id)queue8 visitManager:(id)queue9 wifiManager:(id)data0 tripClusterManager:(id)data1 visitConsolidator:(id)data2;
- (id)_clientIdentifier;
- (id)_clientIdentity;
- (void)_onLocationContextManagerNotification:(id)notification;
- (void)_onVisitManagerNotification:(id)notification;
- (void)_startMonitoringVehicleEvents;
- (void)addBackgroundInertialOdometrySamples:(id)samples reply:(id)reply;
- (void)addElevations:(id)elevations handler:(id)handler;
- (void)addLocationOfInterestOfType:(int64_t)type mapItemStorage:(id)storage customLabel:(id)label reply:(id)reply;
- (void)clearAllVehicleEventsWithReply:(id)reply;
- (void)clearRoutineWithReply:(id)reply;
- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply;
- (void)correctLabelForVisitWithIdentifier:(id)identifier entryDate:(id)date originalLabel:(id)label newLabel:(id)newLabel handler:(id)handler;
- (void)deleteTripSegmentWithUUID:(id)d reply:(id)reply;
- (void)engageInVehicleEventWithIdentifier:(id)identifier reply:(id)reply;
- (void)extendLifetimeOfVisitsWithIdentifiers:(id)identifiers reply:(id)reply;
- (void)fetchAllLocationsOfInterestForSettingsWithReply:(id)reply;
- (void)fetchAuthorizedLocationStatus:(id)status;
- (void)fetchAutomaticVehicleEventDetectionSupportedWithReply:(id)reply;
- (void)fetchBackgroundInertialOdometrySamplesWithOptions:(id)options reply:(id)reply;
- (void)fetchCloudSyncAuthorizationStateWithReply:(id)reply;
- (void)fetchContactScoresFromContactIDs:(id)ds completionHandler:(id)handler;
- (void)fetchCurrentPredictedLocationsOfInterestLookingBack:(double)back lookingAhead:(double)ahead reply:(id)reply;
- (void)fetchDedupedLocationOfInterestIdentifiersWithIdentifier:(id)identifier reply:(id)reply;
- (void)fetchElevationsWithContext:(id)context reply:(id)reply;
- (void)fetchElevationsWithOptions:(id)options reply:(id)reply;
- (void)fetchEnumerableObjectsWithOptions:(id)options offset:(id)offset reply:(id)reply;
- (void)fetchEstimatedLocationAtDate:(id)date options:(id)options reply:(id)reply;
- (void)fetchFamiliarityIndexResultsWithOptions:(id)options reply:(id)reply;
- (void)fetchFinerGranularityInferredMapItemWithVisitIdentifier:(id)identifier reply:(id)reply;
- (void)fetchFormattedPostalAddressesFromMeCard:(id)card;
- (void)fetchLastVehicleEventsWithReply:(id)reply;
- (void)fetchLearnedRoutesWithOptions:(id)options reply:(id)reply;
- (void)fetchLocationOfInterestAtLocation:(id)location reply:(id)reply;
- (void)fetchLocationOfInterestForRegion:(id)region reply:(id)reply;
- (void)fetchLocationOfInterestWithIdentifier:(id)identifier reply:(id)reply;
- (void)fetchLocationsCountForTripSegmentWithOptions:(id)options reply:(id)reply;
- (void)fetchLocationsForTripSegmentWithOptions:(id)options reply:(id)reply;
- (void)fetchLocationsOfInterestAssociatedToIdentifier:(id)identifier reply:(id)reply;
- (void)fetchLocationsOfInterestOfType:(int64_t)type reply:(id)reply;
- (void)fetchLocationsOfInterestVisitedBetweenStartDate:(id)date endDate:(id)endDate reply:(id)reply;
- (void)fetchLocationsOfInterestWithinDistance:(double)distance ofLocation:(id)location reply:(id)reply;
- (void)fetchLookbackWindowStartDateWithLocation:(id)location reply:(id)reply;
- (void)fetchMonitoredScenarioTriggerTypesWithReply:(id)reply;
- (void)fetchNextPredictedLocationsOfInterestFromLocation:(id)location startDate:(id)date timeInterval:(double)interval reply:(id)reply;
- (void)fetchOngoingPeopleDensity:(id)density;
- (void)fetchPathToDiagnosticFilesWithOptions:(id)options reply:(id)reply;
- (void)fetchPeopleCountEventsHistory:(id)history completionHandler:(id)handler;
- (void)fetchPeopleDensityHistoryFromStartDate:(id)date endDate:(id)endDate completionHandler:(id)handler;
- (void)fetchPlaceInferencesWithOptions:(id)options reply:(id)reply;
- (void)fetchPredictedContextWithOptions:(id)options reply:(id)reply;
- (void)fetchPredictedExitDatesFromLocation:(id)location onDate:(id)date reply:(id)reply;
- (void)fetchPredictedLocationsOfInterestAssociatedToTitle:(id)title location:(id)location calendarIdentifier:(id)identifier reply:(id)reply;
- (void)fetchPredictedLocationsOfInterestBetweenStartDate:(id)date endDate:(id)endDate reply:(id)reply;
- (void)fetchPredictedLocationsOfInterestOnDate:(id)date reply:(id)reply;
- (void)fetchProximityHistoryFromEventIDs:(id)ds completionHandler:(id)handler;
- (void)fetchProximityHistoryFromStartDate:(id)date endDate:(id)endDate completionHandler:(id)handler;
- (void)fetchRemoteStatusWithReply:(id)reply;
- (void)fetchRoutineEnabledWithReply:(id)reply;
- (void)fetchRoutineModeFromLocation:(id)location reply:(id)reply;
- (void)fetchStoredLocationsWithContext:(id)context reply:(id)reply;
- (void)fetchStoredVisitsWithOptions:(id)options reply:(id)reply;
- (void)fetchTransitionsBetweenStartDate:(id)date endDate:(id)endDate reply:(id)reply;
- (void)fetchTripClusterMetadataWithOptions:(id)options reply:(id)reply;
- (void)fetchTripSegmentMetadataWithOptions:(id)options reply:(id)reply;
- (void)fetchTripSegmentsWithOptions:(id)options reply:(id)reply;
- (void)fetchVehiclesWithOptions:(id)options reply:(id)reply;
- (void)launchClient;
- (void)onAuthorizationNotification:(id)notification;
- (void)onLocationContextManagerNotification:(id)notification;
- (void)onVisitManagerNotification:(id)notification;
- (void)peopleDiscoveryRegistrar:(id)registrar didReceivePeopleDensityUpdate:(id)update error:(id)error;
- (void)performBluePOIQueryLookingBack:(double)back lookingAhead:(double)ahead reply:(id)reply;
- (void)predictedContextRegistrar:(id)registrar didReceivePredictedContextResult:(id)result error:(id)error;
- (void)processHindsightVisitsWithReply:(id)reply;
- (void)purgeTripClusterTable:(id)table reply:(id)reply;
- (void)purgeTripClusterWithClusterID:(id)d reply:(id)reply;
- (void)remoteStatusRegistrar:(id)registrar didReceiveRemoteStatus:(int64_t)status error:(id)error;
- (void)removeLocationOfInterestWithIdentifier:(id)identifier reply:(id)reply;
- (void)removeVisitWithIdentifier:(id)identifier reply:(id)reply;
- (void)restore;
- (void)scenarioTriggerRegistrar:(id)registrar didReceiveScenarioTriggers:(id)triggers error:(id)error;
- (void)setBundleIdentifier:(id)identifier;
- (void)setHintForRegionState:(int64_t)state significantRegion:(id)region reply:(id)reply;
- (void)setLeechLowConfidenceVisits:(BOOL)visits;
- (void)setLeechVisits:(BOOL)visits;
- (void)setMonitorPlaceInferences:(BOOL)inferences;
- (void)setMonitorVisits:(BOOL)visits;
- (void)setRestorationIdentifier:(id)identifier;
- (void)setRoutineEnabled:(BOOL)enabled reply:(id)reply;
- (void)setTargetUserSession:(BOOL)session;
- (void)shutdown;
- (void)startLeechingLowConfidenceVisitsWithReply:(id)reply;
- (void)startLeechingVisitsWithReply:(id)reply;
- (void)startMonitoringForPeopleDiscoveryWithIdentifier:(id)identifier configuration:(id)configuration reply:(id)reply;
- (void)startMonitoringPlaceInferencesWithOptions:(id)options reply:(id)reply;
- (void)startMonitoringPredictedContextWithOptions:(id)options reply:(id)reply;
- (void)startMonitoringRemoteStatusWithReply:(id)reply;
- (void)startMonitoringScenarioTriggerOfType:(unint64_t)type reply:(id)reply;
- (void)startMonitoringVehicleEventsWithReply:(id)reply;
- (void)startMonitoringVisitsWithReply:(id)reply;
- (void)stopLeechingLowConfidenceVisitsWithReply:(id)reply;
- (void)stopLeechingVisitsWithReply:(id)reply;
- (void)stopMonitoringForPeopleDiscoveryWithIdentifier:(id)identifier reply:(id)reply;
- (void)stopMonitoringPlaceInferencesWithReply:(id)reply;
- (void)stopMonitoringPredictedContextWithReply:(id)reply;
- (void)stopMonitoringRemoteStatusWithReply:(id)reply;
- (void)stopMonitoringScenarioTriggerOfType:(unint64_t)type reply:(id)reply;
- (void)stopMonitoringVehicleEventsWithReply:(id)reply;
- (void)stopMonitoringVisitsWithReply:(id)reply;
- (void)submitUserCurationForVisitDateRange:(id)range newLabel:(id)label handler:(id)handler;
- (void)updateCloudSyncProvisionedForAccount:(BOOL)account reply:(id)reply;
- (void)updateLocationOfInterestWithIdentifier:(id)identifier customLabel:(id)label reply:(id)reply;
- (void)updateLocationOfInterestWithIdentifier:(id)identifier mapItemStorage:(id)storage reply:(id)reply;
- (void)updateLocationOfInterestWithIdentifier:(id)identifier type:(int64_t)type customLabel:(id)label reply:(id)reply;
- (void)updateLocationOfInterestWithIdentifier:(id)identifier type:(int64_t)type mapItemStorage:(id)storage customLabel:(id)label reply:(id)reply;
- (void)updateLocationOfInterestWithIdentifier:(id)identifier type:(int64_t)type reply:(id)reply;
- (void)updateVehicleEventWithIdentifier:(id)identifier geoMapItem:(id)item reply:(id)reply;
- (void)updateVehicleEventWithIdentifier:(id)identifier location:(id)location reply:(id)reply;
- (void)updateVehicleEventWithIdentifier:(id)identifier notes:(id)notes reply:(id)reply;
- (void)updateVehicleEventWithIdentifier:(id)identifier photo:(id)photo reply:(id)reply;
- (void)userInteractionWithPredictedLocationOfInterest:(id)interest interaction:(unint64_t)interaction feedback:(id)feedback geoMapItem:(id)item reply:(id)reply;
- (void)vehicleEventAtLocation:(id)location notes:(id)notes reply:(id)reply;
- (void)vehicleEventRegistrar:(id)registrar didReceiveVehicleEvents:(id)events error:(id)error;
@end

@implementation RTDaemonClient

- (void)restore
{
  v10 = *MEMORY[0x277D85DE8];
  restorationData = [(RTDaemonClient *)self restorationData];
  v4 = [restorationData count];

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityClient);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "restoring client, %@, from existing session", buf, 0xCu);
      }
    }

    restorationData2 = [(RTDaemonClient *)self restorationData];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __25__RTDaemonClient_restore__block_invoke;
    v7[3] = &unk_2788C5890;
    v7[4] = self;
    [restorationData2 enumerateKeysAndObjectsUsingBlock:v7];
  }
}

void __25__RTDaemonClient_restore__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 isEqualToString:@"scenarioTriggerRegistrar"])
  {
    v18 = 0;
    v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v18];
    v8 = v18;
    if (v8)
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityClient);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v20 = v8;
        _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "error unarchiving scenario trigger registrar, %@", buf, 0xCu);
      }
    }

    [*(a1 + 32) startMonitoringScenarioTriggerOfType:objc_msgSend(v7 reply:{"monitoredScenarioTriggerTypes"), &__block_literal_global_747}];
  }

  else
  {
    if ([v5 isEqualToString:@"vehicleEventRegistrar"])
    {
      [*(a1 + 32) _startMonitoringVehicleEvents];
      goto LABEL_18;
    }

    if (![v5 isEqualToString:@"peopleDiscoveryRegistrar"])
    {
      goto LABEL_18;
    }

    v17 = 0;
    v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v17];
    v8 = v17;
    if (v8)
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityClient);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v20 = v8;
        _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "error unarchiving people discovery registrar, %@", buf, 0xCu);
      }
    }

    v11 = [v7 clientIdentifier];
    if (v11)
    {
      v12 = v11;
      v13 = [v7 configuration];

      if (v13)
      {
        v14 = *(a1 + 32);
        v15 = [v7 clientIdentifier];
        v16 = [v7 configuration];
        [v14 startMonitoringForPeopleDiscoveryWithIdentifier:v15 configuration:v16 reply:&__block_literal_global_750];
      }
    }
  }

LABEL_18:
}

- (id)_clientIdentifier
{
  bundleIdentifier = [(RTDaemonClient *)self bundleIdentifier];

  if (bundleIdentifier)
  {
    [(RTDaemonClient *)self bundleIdentifier];
  }

  else
  {
    [(RTDaemonClient *)self executableName];
  }
  v4 = ;

  return v4;
}

- (void)_startMonitoringVehicleEvents
{
  v17 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v12 = NSStringFromSelector(a2);
      v13 = 138412546;
      selfCopy = self;
      v15 = 2112;
      v16 = v12;
      _os_log_debug_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEBUG, "client, %@, called, %@", &v13, 0x16u);
    }
  }

  if (![(RTDaemonClient *)self enabled])
  {
    xpcConnection = [(RTDaemonClient *)self xpcConnection];
    remoteObjectProxy = [xpcConnection remoteObjectProxy];
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:2 userInfo:0];
    [remoteObjectProxy onVehicleEvents:0 error:v7];
  }

  vehicleEventRegistrar = [(RTDaemonClient *)self vehicleEventRegistrar];
  [vehicleEventRegistrar startMonitoringVehicleEvents];

  restorationData = [(RTDaemonClient *)self restorationData];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [restorationData setObject:v10 forKey:@"vehicleEventRegistrar"];

  clientManagerDelegate = [(RTDaemonClient *)self clientManagerDelegate];
  [clientManagerDelegate saveDaemonClient:self];
}

- (RTClientListenerProtocol)clientManagerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_clientManagerDelegate);

  return WeakRetained;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  executablePath = [(RTDaemonClient *)self executablePath];
  processIdentifier = [(RTDaemonClient *)self processIdentifier];
  restorationIdentifier = [(RTDaemonClient *)self restorationIdentifier];
  if (restorationIdentifier)
  {
    [(RTDaemonClient *)self restorationIdentifier];
  }

  else
  {
    [(RTDaemonClient *)self signingIdentifier];
  }
  v7 = ;
  v8 = [v3 stringWithFormat:@"%@(%d), %@", executablePath, processIdentifier, v7];

  return v8;
}

- (RTDaemonClient)initWithQueue:(id)queue restorationData:(id)data accountManager:(id)manager assetManager:(id)assetManager authorizationManager:(id)authorizationManager backgroundInertialOdometryManager:(id)odometryManager contactsManager:(id)contactsManager defaultsManager:(id)self0 deviceLocationPredictor:(id)self1 diagnostics:(id)self2 elevationManager:(id)self3 eventAgentManager:(id)self4 eventModelProvider:(id)self5 authorizedLocationManager:(id)self6 fingerprintManager:(id)self7 healthKitManager:(id)self8 hintManager:(id)self9 intermittentGNSSManager:(id)sManager learnedLocationManager:(id)learnedLocationManager learnedLocationStore:(id)store locationManager:(id)a23 locationContextManager:(id)contextManager locationStore:(id)locationStore mapServiceManager:(id)serviceManager metricManager:(id)metricManager motionActivityManager:(id)activityManager peopleDiscoveryProvider:(id)discoveryProvider placeInferenceManager:(id)queue0 predictedContextManager:(id)queue1 purgeManager:(id)queue2 scenarioTriggerManager:(id)queue3 timerManager:(id)queue4 tripSegmentManager:(id)queue5 userCurationManager:(id)queue6 vehicleLocationProvider:(id)queue7 vehicleStore:(id)queue8 visitManager:(id)queue9 wifiManager:(id)data0 tripClusterManager:(id)data1 visitConsolidator:(id)data2
{
  v347[32] = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  dataCopy = data;
  managerCopy = manager;
  managerCopy2 = manager;
  assetManagerCopy = assetManager;
  authorizationManagerCopy = authorizationManager;
  odometryManagerCopy = odometryManager;
  contactsManagerCopy = contactsManager;
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
  v273 = a23;
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
  if (!queueCopy)
  {
    v90 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v90, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: queue", buf, 2u);
    }

    v91 = 0;
    v92 = managerCopy2;
    goto LABEL_66;
  }

  v187 = managerCopy2;
  if (!managerCopy2)
  {
    v93 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v93, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: accountManager", buf, 2u);
    }

    v91 = 0;
    v92 = 0;
LABEL_66:
    v47 = assetManagerCopy;
LABEL_103:
    v96 = locationStoreCopy;
    selfCopy2 = self;
    v98 = dataCopy;
    goto LABEL_104;
  }

  v47 = assetManagerCopy;
  if (!assetManagerCopy)
  {
    v94 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_102;
    }

    *buf = 0;
    v95 = "Invalid parameter not satisfying: assetManager";
LABEL_101:
    _os_log_error_impl(&dword_2304B3000, v94, OS_LOG_TYPE_ERROR, v95, buf, 2u);
    goto LABEL_102;
  }

  if (!authorizationManagerCopy)
  {
    v94 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_102;
    }

    *buf = 0;
    v95 = "Invalid parameter not satisfying: authorizationManager";
    goto LABEL_101;
  }

  if (!odometryManagerCopy)
  {
    v94 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_102;
    }

    *buf = 0;
    v95 = "Invalid parameter not satisfying: backgroundInertialOdometryManager";
    goto LABEL_101;
  }

  if (!contactsManagerCopy)
  {
    v94 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_102;
    }

    *buf = 0;
    v95 = "Invalid parameter not satisfying: contactsManager";
    goto LABEL_101;
  }

  if (!defaultsManagerCopy)
  {
    v94 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_102;
    }

    *buf = 0;
    v95 = "Invalid parameter not satisfying: defaultsManager";
    goto LABEL_101;
  }

  if (!predictorCopy)
  {
    v94 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_102;
    }

    *buf = 0;
    v95 = "Invalid parameter not satisfying: deviceLocationPredictor";
    goto LABEL_101;
  }

  if (!diagnosticsCopy)
  {
    v94 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_102;
    }

    *buf = 0;
    v95 = "Invalid parameter not satisfying: diagnostics";
    goto LABEL_101;
  }

  if (!elevationManagerCopy)
  {
    v94 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_102;
    }

    *buf = 0;
    v95 = "Invalid parameter not satisfying: elevationManager";
    goto LABEL_101;
  }

  if (!agentManagerCopy)
  {
    v94 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_102;
    }

    *buf = 0;
    v95 = "Invalid parameter not satisfying: eventAgentManager";
    goto LABEL_101;
  }

  if (!providerCopy)
  {
    v94 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_102;
    }

    *buf = 0;
    v95 = "Invalid parameter not satisfying: eventModelProvider";
    goto LABEL_101;
  }

  if (!locationManagerCopy)
  {
    v94 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_102;
    }

    *buf = 0;
    v95 = "Invalid parameter not satisfying: authorizedLocationManager";
    goto LABEL_101;
  }

  if (!fingerprintManagerCopy)
  {
    v94 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_102;
    }

    *buf = 0;
    v95 = "Invalid parameter not satisfying: fingerprintManager";
    goto LABEL_101;
  }

  if (!kitManagerCopy)
  {
    v94 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_102;
    }

    *buf = 0;
    v95 = "Invalid parameter not satisfying: healthKitManager";
    goto LABEL_101;
  }

  if (!hintManagerCopy)
  {
    v94 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_102;
    }

    *buf = 0;
    v95 = "Invalid parameter not satisfying: hintManager";
    goto LABEL_101;
  }

  if (!sManagerCopy)
  {
    v94 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_102;
    }

    *buf = 0;
    v95 = "Invalid parameter not satisfying: intermittentGNSSManager";
    goto LABEL_101;
  }

  if (!learnedLocationManagerCopy)
  {
    v94 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_102;
    }

    *buf = 0;
    v95 = "Invalid parameter not satisfying: learnedLocationManager";
    goto LABEL_101;
  }

  if (!storeCopy)
  {
    v94 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v95 = "Invalid parameter not satisfying: learnedLocationStore";
      goto LABEL_101;
    }

LABEL_102:

    v91 = 0;
    v92 = managerCopy2;
    goto LABEL_103;
  }

  if (!v273)
  {
    v100 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v100, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: locationManager", buf, 2u);
    }

    goto LABEL_145;
  }

  v172 = queueCopy;
  if (!contextManagerCopy)
  {
    v100 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_145;
    }

    *buf = 0;
    v101 = "Invalid parameter not satisfying: locationContextManager";
LABEL_144:
    _os_log_error_impl(&dword_2304B3000, v100, OS_LOG_TYPE_ERROR, v101, buf, 2u);
    goto LABEL_145;
  }

  if (!serviceManagerCopy)
  {
    v100 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_145;
    }

    *buf = 0;
    v101 = "Invalid parameter not satisfying: mapServiceManager";
    goto LABEL_144;
  }

  if (!metricManagerCopy)
  {
    v100 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_145;
    }

    *buf = 0;
    v101 = "Invalid parameter not satisfying: metricManager";
    goto LABEL_144;
  }

  if (!activityManagerCopy)
  {
    v100 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_145;
    }

    *buf = 0;
    v101 = "Invalid parameter not satisfying: motionActivityManager";
    goto LABEL_144;
  }

  if (!discoveryProviderCopy)
  {
    v100 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_145;
    }

    *buf = 0;
    v101 = "Invalid parameter not satisfying: peopleDiscoveryProvider";
    goto LABEL_144;
  }

  if (!inferenceManagerCopy)
  {
    v100 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_145;
    }

    *buf = 0;
    v101 = "Invalid parameter not satisfying: placeInferenceManager";
    goto LABEL_144;
  }

  if (!predictedContextManagerCopy)
  {
    v100 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_145;
    }

    *buf = 0;
    v101 = "Invalid parameter not satisfying: predictedContextManager";
    goto LABEL_144;
  }

  if (!purgeManagerCopy)
  {
    v100 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_145;
    }

    *buf = 0;
    v101 = "Invalid parameter not satisfying: purgeManager";
    goto LABEL_144;
  }

  if (!triggerManagerCopy)
  {
    v100 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_145;
    }

    *buf = 0;
    v101 = "Invalid parameter not satisfying: scenarioTriggerManager";
    goto LABEL_144;
  }

  if (!timerManagerCopy)
  {
    v100 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_145;
    }

    *buf = 0;
    v101 = "Invalid parameter not satisfying: timerManager";
    goto LABEL_144;
  }

  if (!segmentManagerCopy)
  {
    v100 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_145;
    }

    *buf = 0;
    v101 = "Invalid parameter not satisfying: tripSegmentManager";
    goto LABEL_144;
  }

  if (!curationManagerCopy)
  {
    v100 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_145;
    }

    *buf = 0;
    v101 = "Invalid parameter not satisfying: userCurationManager";
    goto LABEL_144;
  }

  if (!locationProviderCopy)
  {
    v100 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_145;
    }

    *buf = 0;
    v101 = "Invalid parameter not satisfying: vehicleLocationProvider";
    goto LABEL_144;
  }

  if (!visitManagerCopy)
  {
    v100 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_145;
    }

    *buf = 0;
    v101 = "Invalid parameter not satisfying: visitManager";
    goto LABEL_144;
  }

  if (!vehicleStoreCopy)
  {
    v100 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_145;
    }

    *buf = 0;
    v101 = "Invalid parameter not satisfying: vehicleStore";
    goto LABEL_144;
  }

  if (!wifiManagerCopy)
  {
    v100 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_145;
    }

    *buf = 0;
    v101 = "Invalid parameter not satisfying: wifiManager";
    goto LABEL_144;
  }

  if (!clusterManagerCopy)
  {
    v100 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_145;
    }

    *buf = 0;
    v101 = "Invalid parameter not satisfying: tripClusterManager";
    goto LABEL_144;
  }

  if (!consolidatorCopy)
  {
    v100 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v101 = "Invalid parameter not satisfying: visitConsolidator";
      goto LABEL_144;
    }

LABEL_145:

    v91 = 0;
    v98 = dataCopy;
    v92 = managerCopy2;
    v47 = assetManagerCopy;
    v96 = locationStoreCopy;
    selfCopy2 = self;
    goto LABEL_104;
  }

  v307.receiver = self;
  v307.super_class = RTDaemonClient;
  v251 = [(RTDaemonClient *)&v307 init];
  if (v251)
  {
    objc_storeStrong(&v251->_queue, queue);
    objc_storeStrong(&v251->_accountManager, managerCopy);
    objc_storeStrong(&v251->_assetManager, assetManager);
    objc_storeStrong(&v251->_authorizationManager, authorizationManager);
    objc_storeStrong(&v251->_backgroundInertialOdometryManager, odometryManager);
    objc_storeStrong(&v251->_contactsManager, contactsManager);
    objc_storeStrong(&v251->_defaultsManager, defaultsManager);
    objc_storeStrong(&v251->_deviceLocationPredictor, predictor);
    objc_storeStrong(&v251->_diagnostics, diagnostics);
    objc_storeStrong(&v251->_elevationManager, elevationManager);
    objc_storeStrong(&v251->_eventAgentManager, agentManager);
    objc_storeStrong(&v251->_eventModelProvider, provider);
    objc_storeStrong(&v251->_authorizedLocationManager, locationManager);
    objc_storeStrong(&v251->_fingerprintManager, fingerprintManager);
    objc_storeStrong(&v251->_healthKitManager, kitManager);
    objc_storeStrong(&v251->_hintManager, hintManager);
    objc_storeStrong(&v251->_intermittentGNSSManager, sManager);
    objc_storeStrong(&v251->_learnedLocationManager, learnedLocationManager);
    objc_storeStrong(&v251->_learnedLocationStore, store);
    objc_storeStrong(&v251->_locationManager, a23);
    objc_storeStrong(&v251->_locationContextManager, contextManager);
    objc_storeStrong(&v251->_locationStore, locationStore);
    objc_storeStrong(&v251->_mapServiceManager, serviceManager);
    objc_storeStrong(&v251->_metricManager, metricManager);
    objc_storeStrong(&v251->_motionActivityManager, activityManager);
    objc_storeStrong(&v251->_peopleDiscoveryProvider, discoveryProvider);
    objc_storeStrong(&v251->_placeInferenceManager, inferenceManager);
    objc_storeStrong(&v251->_predictedContextManager, predictedContextManager);
    objc_storeStrong(&v251->_purgeManager, purgeManager);
    objc_storeStrong(&v251->_scenarioTriggerManager, triggerManager);
    objc_storeStrong(&v251->_timerManager, timerManager);
    objc_storeStrong(&v251->_vehicleLocationProvider, locationProvider);
    objc_storeStrong(&v251->_vehicleStore, vehicleStore);
    objc_storeStrong(&v251->_visitManager, visitManager);
    objc_storeStrong(&v251->_tripSegmentManager, segmentManager);
    objc_storeStrong(&v251->_userCurationManager, curationManager);
    objc_storeStrong(&v251->_wifiManager, wifiManager);
    objc_storeStrong(&v251->_tripClusterManager, clusterManager);
    objc_storeStrong(&v251->_visitConsolidator, consolidator);
    v153 = MEMORY[0x277CBEB98];
    v248 = NSStringFromSelector(sel_startMonitoringVisitsWithReply_);
    v246 = NSStringFromSelector(sel_stopMonitoringVisitsWithReply_);
    v243 = NSStringFromSelector(sel_startLeechingVisitsWithReply_);
    v240 = NSStringFromSelector(sel_stopLeechingVisitsWithReply_);
    v237 = NSStringFromSelector(sel_startLeechingLowConfidenceVisitsWithReply_);
    v235 = NSStringFromSelector(sel_stopLeechingLowConfidenceVisitsWithReply_);
    v233 = NSStringFromSelector(sel_startMonitoringPlaceInferencesWithOptions_reply_);
    v231 = NSStringFromSelector(sel_stopMonitoringPlaceInferencesWithReply_);
    v229 = NSStringFromSelector(sel_fetchTripSegmentsWithOptions_reply_);
    v227 = NSStringFromSelector(sel_fetchLocationsCountForTripSegmentWithOptions_reply_);
    v225 = NSStringFromSelector(sel_fetchLocationsForTripSegmentWithOptions_reply_);
    v223 = NSStringFromSelector(sel_deleteTripSegmentWithUUID_reply_);
    v221 = NSStringFromSelector(sel_fetchVehiclesWithOptions_reply_);
    v219 = NSStringFromSelector(sel_fetchTripSegmentMetadataWithOptions_reply_);
    v215 = NSStringFromSelector(sel_startMonitoringScenarioTriggerOfType_reply_);
    v217 = NSStringFromSelector(sel_stopMonitoringScenarioTriggerOfType_reply_);
    v207 = NSStringFromSelector(sel_fetchMonitoredScenarioTriggerTypesWithReply_);
    v213 = NSStringFromSelector(sel_startMonitoringVehicleEventsWithReply_);
    v203 = NSStringFromSelector(sel_stopMonitoringVehicleEventsWithReply_);
    v211 = NSStringFromSelector(sel_setRoutineEnabled_reply_);
    v209 = NSStringFromSelector(sel_fetchRoutineEnabledWithReply_);
    v205 = NSStringFromSelector(sel_clearRoutineWithReply_);
    v194 = NSStringFromSelector(sel_setRestorationIdentifier_);
    v201 = NSStringFromSelector(sel_setTargetUserSession_);
    v152 = NSStringFromSelector(sel_fetchCloudSyncAuthorizationStateWithReply_);
    v199 = NSStringFromSelector(sel_updateCloudSyncProvisionedForAccount_reply_);
    v151 = NSStringFromSelector(sel_fetchAllLocationsOfInterestForSettingsWithReply_);
    v196 = NSStringFromSelector(sel_addElevations_handler_);
    v192 = NSStringFromSelector(sel_fetchElevationsWithOptions_reply_);
    v190 = NSStringFromSelector(sel_fetchElevationsWithContext_reply_);
    v149 = NSStringFromSelector(sel_fetchBackgroundInertialOdometrySamplesWithOptions_reply_);
    v188 = NSStringFromSelector(sel_addBackgroundInertialOdometrySamples_reply_);
    v185 = NSStringFromSelector(sel_submitUserCurationForVisitDateRange_newLabel_handler_);
    v183 = NSStringFromSelector(sel_correctLabelForVisitWithIdentifier_entryDate_originalLabel_newLabel_handler_);
    v181 = NSStringFromSelector(sel_fetchStoredUserCurationsWithOptions_handler_);
    v178 = NSStringFromSelector(sel_startMonitoringForPeopleDiscoveryWithIdentifier_configuration_reply_);
    obja = NSStringFromSelector(sel_stopMonitoringForPeopleDiscoveryWithIdentifier_reply_);
    v147 = NSStringFromSelector(sel_fetchProximityHistoryFromStartDate_endDate_completionHandler_);
    v145 = NSStringFromSelector(sel_fetchProximityHistoryFromEventIDs_completionHandler_);
    v48 = NSStringFromSelector(sel_fetchPeopleCountEventsHistory_completionHandler_);
    v49 = NSStringFromSelector(sel_fetchPeopleDensityHistoryFromStartDate_endDate_completionHandler_);
    v50 = NSStringFromSelector(sel_fetchOngoingPeopleDensity_);
    v144 = NSStringFromSelector(sel_fetchContactScoresFromContactIDs_completionHandler_);
    v51 = NSStringFromSelector(sel_fetchAuthorizedLocationStatus_);
    v52 = NSStringFromSelector(sel_fetchTripClusterMetadataWithOptions_reply_);
    v53 = NSStringFromSelector(sel_purgeTripClusterTable_reply_);
    v54 = NSStringFromSelector(sel_purgeTripClusterWithClusterID_reply_);
    v55 = [v153 setWithObjects:{v248, v246, v243, v240, v237, v235, v233, v231, v229, v227, v225, v223, v221, v219, v215, v217, v207, v213, v203, v211, v209, v205, v194, v201, v152, v199, v151, v196, v192, v190, v149, v188, v185, v183, v181, v178, obja, v147, v145, v48, v49, v50, v144, v51, v52, v53, v54, 0}];
    v56 = _MergedGlobals_111;
    _MergedGlobals_111 = v55;

    v236 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{@"locationd", @"loctool", @"RTDiagnosticExtension", @"xctest", @"wedge", @"coreautomationd", @"Routine", @"routinetool", @"RoutineAssistant", @"safetyalertsd", @"momentsd", @"MomentsUIService", @"poser", 0}];
    v226 = NSStringFromSelector(sel_fetchFormattedPostalAddressesFromMeCard_);
    v346[0] = v226;
    v345[0] = @"locationd";
    v345[1] = @"wedge";
    v345[2] = @"xctest";
    v224 = [MEMORY[0x277CBEA60] arrayWithObjects:v345 count:3];
    v347[0] = v224;
    v222 = NSStringFromSelector(sel_fetchPlaceInferencesWithOptions_reply_);
    v346[1] = v222;
    v344[0] = @"locationd";
    v344[1] = @"wedge";
    v344[2] = @"coreautomationd";
    v220 = [MEMORY[0x277CBEA60] arrayWithObjects:v344 count:3];
    v347[1] = v220;
    v218 = NSStringFromSelector(sel_startMonitoringVisitsWithReply_);
    v346[2] = v218;
    v343[0] = @"locationd";
    v343[1] = @"wedge";
    v343[2] = @"xctest";
    v216 = [MEMORY[0x277CBEA60] arrayWithObjects:v343 count:3];
    v347[2] = v216;
    v214 = NSStringFromSelector(sel_startLeechingVisitsWithReply_);
    v346[3] = v214;
    v342[0] = @"locationd";
    v342[1] = @"wedge";
    v212 = [MEMORY[0x277CBEA60] arrayWithObjects:v342 count:2];
    v347[3] = v212;
    v210 = NSStringFromSelector(sel_startLeechingLowConfidenceVisitsWithReply_);
    v346[4] = v210;
    v341[0] = @"locationd";
    v341[1] = @"wedge";
    v208 = [MEMORY[0x277CBEA60] arrayWithObjects:v341 count:2];
    v347[4] = v208;
    v206 = NSStringFromSelector(sel_startMonitoringPlaceInferencesWithOptions_reply_);
    v346[5] = v206;
    v340[0] = @"locationd";
    v340[1] = @"wedge";
    v340[2] = @"xctest";
    v204 = [MEMORY[0x277CBEA60] arrayWithObjects:v340 count:3];
    v347[5] = v204;
    v202 = NSStringFromSelector(sel_fetchStoredVisitsWithOptions_reply_);
    v346[6] = v202;
    v339[0] = @"locationd";
    v339[1] = @"wedge";
    v339[2] = @"loctool";
    v339[3] = @"xctest";
    v339[4] = @"coreautomationd";
    v339[5] = @"Routine";
    v339[6] = @"AirWave";
    v339[7] = @"momentsd";
    v339[8] = @"MomentsUIService";
    v339[9] = @"poser";
    v339[10] = @"intelligenceplatformd";
    v339[11] = @"knowledgeconstructiond";
    v339[12] = @"destinationd";
    v339[13] = @"com.apple.Maps";
    v339[14] = @"LivTips";
    v339[15] = @"safetyalertsd";
    v339[16] = @"CoreLocationVisitHistoryAuthPromptPlugin";
    v200 = [MEMORY[0x277CBEA60] arrayWithObjects:v339 count:17];
    v347[6] = v200;
    v197 = NSStringFromSelector(sel_processHindsightVisitsWithReply_);
    v346[7] = v197;
    v338[0] = @"wedge";
    v338[1] = @"xctest";
    v338[2] = @"Routine";
    v338[3] = @"momentsd";
    v338[4] = @"MomentsUIService";
    v195 = [MEMORY[0x277CBEA60] arrayWithObjects:v338 count:5];
    v347[7] = v195;
    v193 = NSStringFromSelector(sel_fetchLearnedRoutesWithOptions_reply_);
    v346[8] = v193;
    v337[0] = @"locationd";
    v337[1] = @"wedge";
    v337[2] = @"xctest";
    v337[3] = @"Routine";
    v337[4] = @"routinetool";
    v337[5] = @"RoutineAssistant";
    v337[6] = @"navd";
    v337[7] = @"CoreLocationLearnedRouteAuthPromptPlugin";
    v337[8] = @"LivTips";
    v337[9] = @"com.apple.momentsd";
    v337[10] = @"com.apple.MomentsUIService";
    v337[11] = @"com.apple.appsspecialprojects.PromptValidator";
    v337[12] = @"com.apple.Maps";
    v337[13] = @"com.apple.MapsSupport";
    v337[14] = @"com.apple.LivTips";
    v191 = [MEMORY[0x277CBEA60] arrayWithObjects:v337 count:15];
    v347[8] = v191;
    v189 = NSStringFromSelector(sel_fetchTripClusterMetadataWithOptions_reply_);
    v346[9] = v189;
    v336[0] = @"locationd";
    v336[1] = @"wedge";
    v336[2] = @"xctest";
    v336[3] = @"Routine";
    v336[4] = @"routinetool";
    v336[5] = @"RoutineAssistant";
    v336[6] = @"LivTips";
    v336[7] = @"CoreLocationLearnedRouteAuthPromptPlugin";
    v336[8] = @"com.apple.momentsd";
    v336[9] = @"com.apple.MomentsUIService";
    v336[10] = @"com.apple.appsspecialprojects.PromptValidator";
    v336[11] = @"com.apple.Maps";
    v336[12] = @"com.apple.MapsSupport";
    v336[13] = @"com.apple.LivTips";
    v186 = [MEMORY[0x277CBEA60] arrayWithObjects:v336 count:14];
    v347[9] = v186;
    v184 = NSStringFromSelector(sel_purgeTripClusterTable_reply_);
    v346[10] = v184;
    v335[0] = @"locationd";
    v335[1] = @"wedge";
    v335[2] = @"xctest";
    v335[3] = @"Routine";
    v335[4] = @"routinetool";
    v335[5] = @"RoutineAssistant";
    v335[6] = @"navd";
    v335[7] = @"LivTips";
    v335[8] = @"com.apple.momentsd";
    v335[9] = @"com.apple.MomentsUIService";
    v335[10] = @"com.apple.appsspecialprojects.PromptValidator";
    v335[11] = @"com.apple.Maps";
    v335[12] = @"com.apple.MapsSupport";
    v335[13] = @"com.apple.LivTips";
    v182 = [MEMORY[0x277CBEA60] arrayWithObjects:v335 count:14];
    v347[10] = v182;
    v179 = NSStringFromSelector(sel_purgeTripClusterWithClusterID_reply_);
    v346[11] = v179;
    v334[0] = @"locationd";
    v334[1] = @"wedge";
    v334[2] = @"xctest";
    v334[3] = @"Routine";
    v334[4] = @"routinetool";
    v334[5] = @"RoutineAssistant";
    v334[6] = @"navd";
    v334[7] = @"LivTips";
    v334[8] = @"com.apple.momentsd";
    v334[9] = @"com.apple.MomentsUIService";
    v334[10] = @"com.apple.appsspecialprojects.PromptValidator";
    v334[11] = @"com.apple.Maps";
    v334[12] = @"com.apple.MapsSupport";
    v334[13] = @"com.apple.LivTips";
    v238 = [MEMORY[0x277CBEA60] arrayWithObjects:v334 count:14];
    v347[11] = v238;
    v234 = NSStringFromSelector(sel_fetchTripSegmentsWithOptions_reply_);
    v346[12] = v234;
    v333[0] = @"locationd";
    v333[1] = @"wedge";
    v333[2] = @"xctest";
    v333[3] = @"Routine";
    v333[4] = @"routinetool";
    v333[5] = @"RoutineAssistant";
    v333[6] = @"poser";
    v333[7] = @"com.apple.momentsd";
    v333[8] = @"com.apple.MomentsUIService";
    v333[9] = @"com.apple.appsspecialprojects.PromptValidator";
    v230 = [MEMORY[0x277CBEA60] arrayWithObjects:v333 count:10];
    v347[12] = v230;
    objb = NSStringFromSelector(sel_fetchLocationsCountForTripSegmentWithOptions_reply_);
    v346[13] = objb;
    v332[0] = @"locationd";
    v332[1] = @"wedge";
    v332[2] = @"xctest";
    v332[3] = @"Routine";
    v332[4] = @"routinetool";
    v332[5] = @"RoutineAssistant";
    v332[6] = @"com.apple.momentsd";
    v332[7] = @"com.apple.MomentsUIService";
    v332[8] = @"com.apple.appsspecialprojects.PromptValidator";
    v163 = [MEMORY[0x277CBEA60] arrayWithObjects:v332 count:9];
    v347[13] = v163;
    v165 = NSStringFromSelector(sel_fetchLocationsForTripSegmentWithOptions_reply_);
    v346[14] = v165;
    v331[0] = @"locationd";
    v331[1] = @"wedge";
    v331[2] = @"xctest";
    v331[3] = @"Routine";
    v331[4] = @"routinetool";
    v331[5] = @"RoutineAssistant";
    v331[6] = @"com.apple.momentsd";
    v331[7] = @"com.apple.MomentsUIService";
    v331[8] = @"com.apple.appsspecialprojects.PromptValidator";
    v162 = [MEMORY[0x277CBEA60] arrayWithObjects:v331 count:9];
    v347[14] = v162;
    v166 = NSStringFromSelector(sel_deleteTripSegmentWithUUID_reply_);
    v346[15] = v166;
    v330[0] = @"locationd";
    v330[1] = @"wedge";
    v330[2] = @"xctest";
    v330[3] = @"Routine";
    v330[4] = @"routinetool";
    v330[5] = @"RoutineAssistant";
    v161 = [MEMORY[0x277CBEA60] arrayWithObjects:v330 count:6];
    v347[15] = v161;
    v167 = NSStringFromSelector(sel_fetchVehiclesWithOptions_reply_);
    v346[16] = v167;
    v329[0] = @"locationd";
    v329[1] = @"wedge";
    v329[2] = @"xctest";
    v329[3] = @"Routine";
    v329[4] = @"routinetool";
    v329[5] = @"RoutineAssistant";
    v160 = [MEMORY[0x277CBEA60] arrayWithObjects:v329 count:6];
    v347[16] = v160;
    v168 = NSStringFromSelector(sel_fetchTripSegmentMetadataWithOptions_reply_);
    v346[17] = v168;
    v328[0] = @"locationd";
    v328[1] = @"wedge";
    v328[2] = @"xctest";
    v328[3] = @"Routine";
    v328[4] = @"routinetool";
    v328[5] = @"RoutineAssistant";
    v328[6] = @"com.apple.momentsd";
    v328[7] = @"com.apple.MomentsUIService";
    v328[8] = @"com.apple.appsspecialprojects.PromptValidator";
    v241 = [MEMORY[0x277CBEA60] arrayWithObjects:v328 count:9];
    v347[17] = v241;
    v232 = NSStringFromSelector(sel_fetchAllLocationsOfInterestForSettingsWithReply_);
    v346[18] = v232;
    v327[0] = @"com.apple.Preferences";
    v327[1] = @"SecurityPrivacyExtension";
    v327[2] = @"com.apple.NanoSettings";
    v327[3] = @"xctest";
    v327[4] = @"wedge";
    v327[5] = @"coreautomationd";
    v327[6] = @"RTDiagnosticExtension";
    v327[7] = @"induce";
    v327[8] = @"CoreLocationVisitHistoryAuthPromptPlugin";
    v228 = [MEMORY[0x277CBEA60] arrayWithObjects:v327 count:9];
    v347[18] = v228;
    v169 = NSStringFromSelector(sel_setRoutineEnabled_reply_);
    v346[19] = v169;
    v326[0] = @"com.apple.Preferences";
    v326[1] = @"SecurityPrivacyExtension";
    v326[2] = @"com.apple.NanoSettings";
    v326[3] = @"xctest";
    v326[4] = @"wedge";
    v326[5] = @"coreautomationd";
    v164 = [MEMORY[0x277CBEA60] arrayWithObjects:v326 count:6];
    v347[19] = v164;
    v170 = NSStringFromSelector(sel_clearRoutineWithReply_);
    v346[20] = v170;
    v325[0] = @"com.apple.Preferences";
    v325[1] = @"SecurityPrivacyExtension";
    v325[2] = @"com.apple.NanoSettings";
    v325[3] = @"xctest";
    v325[4] = @"wedge";
    v325[5] = @"coreautomationd";
    v325[6] = @"RTDiagnosticExtension";
    v325[7] = @"induce";
    v159 = [MEMORY[0x277CBEA60] arrayWithObjects:v325 count:8];
    v347[20] = v159;
    aSelector = NSStringFromSelector(sel_fetchPathToDiagnosticFilesWithOptions_reply_);
    v346[21] = aSelector;
    v324[0] = @"com.apple.Preferences";
    v324[1] = @"SecurityPrivacyExtension";
    v324[2] = @"com.apple.NanoSettings";
    v324[3] = @"xctest";
    v324[4] = @"wedge";
    v324[5] = @"coreautomationd";
    v324[6] = @"RTDiagnosticExtension";
    v324[7] = @"induce";
    v157 = [MEMORY[0x277CBEA60] arrayWithObjects:v324 count:8];
    v347[21] = v157;
    v171 = NSStringFromSelector(sel_fetchCloudSyncAuthorizationStateWithReply_);
    v346[22] = v171;
    v323[0] = @"com.apple.Preferences";
    v323[1] = @"SecurityPrivacyExtension";
    v323[2] = @"com.apple.NanoSettings";
    v323[3] = @"accountsd";
    v323[4] = @"xctest";
    v323[5] = @"wedge";
    v323[6] = @"coreautomationd";
    v323[7] = @"RTDiagnosticExtension";
    v323[8] = @"Routine";
    v156 = [MEMORY[0x277CBEA60] arrayWithObjects:v323 count:9];
    v347[22] = v156;
    v173 = NSStringFromSelector(sel_updateCloudSyncProvisionedForAccount_reply_);
    v346[23] = v173;
    v322[0] = @"accountsd";
    v322[1] = @"xctest";
    v322[2] = @"wedge";
    v322[3] = @"coreautomationd";
    v322[4] = @"Routine";
    v155 = [MEMORY[0x277CBEA60] arrayWithObjects:v322 count:5];
    v347[23] = v155;
    v150 = NSStringFromSelector(sel_fetchEnumerableObjectsWithOptions_offset_reply_);
    v346[24] = v150;
    v321[0] = @"locationd";
    v321[1] = @"RTDiagnosticExtension";
    v321[2] = @"xctest";
    v321[3] = @"wedge";
    v321[4] = @"coreautomationd";
    v321[5] = @"Routine";
    v148 = [MEMORY[0x277CBEA60] arrayWithObjects:v321 count:6];
    v347[24] = v148;
    v146 = NSStringFromSelector(sel_fetchEstimatedLocationAtDate_options_reply_);
    v346[25] = v146;
    v320[0] = @"locationd";
    v320[1] = @"loctool";
    v320[2] = @"RTDiagnosticExtension";
    v320[3] = @"xctest";
    v320[4] = @"wedge";
    v320[5] = @"coreautomationd";
    v320[6] = @"Routine";
    v154 = [MEMORY[0x277CBEA60] arrayWithObjects:v320 count:7];
    v347[25] = v154;
    v174 = NSStringFromSelector(sel_fetchElevationsWithOptions_reply_);
    v346[26] = v174;
    v319[0] = @"locationd";
    v319[1] = @"wedge";
    v319[2] = @"xctest";
    v319[3] = @"Routine";
    v319[4] = @"routinetool";
    v319[5] = @"RoutineAssistant";
    v249 = [MEMORY[0x277CBEA60] arrayWithObjects:v319 count:6];
    v347[26] = v249;
    v244 = NSStringFromSelector(sel_fetchAuthorizedLocationStatus_);
    v346[27] = v244;
    v318[0] = @"wedge";
    v318[1] = @"xctest";
    v318[2] = @"Routine";
    v318[3] = @"coreauthd";
    v318[4] = @"com.apple.coreauthd";
    v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v318 count:5];
    v347[27] = v57;
    v58 = NSStringFromSelector(sel_fetchBackgroundInertialOdometrySamplesWithOptions_reply_);
    v346[28] = v58;
    v317[0] = @"locationd";
    v317[1] = @"wedge";
    v317[2] = @"xctest";
    v59 = [MEMORY[0x277CBEA60] arrayWithObjects:v317 count:3];
    v347[28] = v59;
    v60 = NSStringFromSelector(sel_addBackgroundInertialOdometrySamples_reply_);
    v346[29] = v60;
    v316[0] = @"locationd";
    v316[1] = @"wedge";
    v316[2] = @"xctest";
    v61 = [MEMORY[0x277CBEA60] arrayWithObjects:v316 count:3];
    v347[29] = v61;
    v62 = NSStringFromSelector(sel_fetchStoredLocationsWithContext_reply_);
    v346[30] = v62;
    v347[30] = v236;
    v63 = NSStringFromSelector(sel_fetchStoredUserCurationsWithOptions_handler_);
    v346[31] = v63;
    v315[0] = @"wedge";
    v315[1] = @"xctest";
    v64 = [MEMORY[0x277CBEA60] arrayWithObjects:v315 count:2];
    v347[31] = v64;
    v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v347 forKeys:v346 count:32];
    v66 = qword_2814A7CC0;
    qword_2814A7CC0 = v65;

    v67 = objc_opt_new();
    vendedClassesStoreManagerDict = v251->_vendedClassesStoreManagerDict;
    v251->_vendedClassesStoreManagerDict = v67;

    v305 = 0u;
    v306 = 0u;
    v303 = 0u;
    v304 = 0u;
    locationManager = v251->_locationManager;
    v313[0] = v251->_learnedLocationManager;
    v313[1] = locationManager;
    visitManager = v251->_visitManager;
    v313[2] = v251->_fingerprintManager;
    v313[3] = visitManager;
    v313[4] = v251->_hintManager;
    v239 = [MEMORY[0x277CBEA60] arrayWithObjects:v313 count:5];
    v245 = [v239 countByEnumeratingWithState:&v303 objects:v314 count:16];
    if (v245)
    {
      v242 = *v304;
      do
      {
        for (i = 0; i != v245; i = i + 1)
        {
          if (*v304 != v242)
          {
            objc_enumerationMutation(v239);
          }

          v71 = *(*(&v303 + 1) + 8 * i);
          v299 = 0u;
          v300 = 0u;
          v301 = 0u;
          v302 = 0u;
          vendedClasses = [objc_opt_class() vendedClasses];
          v73 = [vendedClasses countByEnumeratingWithState:&v299 objects:v312 count:16];
          if (v73)
          {
            v74 = v73;
            v75 = *v300;
            do
            {
              for (j = 0; j != v74; ++j)
              {
                if (*v300 != v75)
                {
                  objc_enumerationMutation(vendedClasses);
                }

                v77 = *(*(&v299 + 1) + 8 * j);
                v78 = v251->_vendedClassesStoreManagerDict;
                v79 = NSStringFromClass(v77);
                v80 = [(NSMutableDictionary *)v78 objectForKey:v79];

                if (v80)
                {
                  v81 = _rt_log_facility_get_os_log(RTLogFacilityClient);
                  if (os_log_type_enabled(v81, OS_LOG_TYPE_FAULT))
                  {
                    v84 = NSStringFromClass(v77);
                    v85 = objc_opt_class();
                    v86 = NSStringFromClass(v85);
                    *buf = 138412546;
                    v309 = v84;
                    v310 = 2112;
                    v311 = v86;
                    _os_log_fault_impl(&dword_2304B3000, v81, OS_LOG_TYPE_FAULT, "duplicate vended class, %@, from manager class, %@", buf, 0x16u);
                  }
                }

                v82 = v251->_vendedClassesStoreManagerDict;
                v83 = NSStringFromClass(v77);
                [(NSMutableDictionary *)v82 setObject:v71 forKey:v83];
              }

              v74 = [vendedClasses countByEnumeratingWithState:&v299 objects:v312 count:16];
            }

            while (v74);
          }
        }

        v245 = [v239 countByEnumeratingWithState:&v303 objects:v314 count:16];
      }

      while (v245);
    }

    v87 = +[RTEntitlementProvider daemonProtocolEntitlementProvider];
    entitlementProvider = v251->_entitlementProvider;
    v251->_entitlementProvider = v87;

    if (dataCopy)
    {
      v89 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:dataCopy copyItems:1];
    }

    else
    {
      v89 = objc_opt_new();
    }

    v102 = v251;
    restorationData = v251->_restorationData;
    v251->_restorationData = v89;

    v104 = [dataCopy objectForKey:@"restorationIdentifier"];
    v105 = [v104 copy];
    restorationIdentifier = v251->_restorationIdentifier;
    v251->_restorationIdentifier = v105;

    v107 = [dataCopy objectForKey:@"bundleIdentifier"];
    v108 = [v107 copy];
    bundleIdentifier = v251->_bundleIdentifier;
    v251->_bundleIdentifier = v108;

    v110 = [[RTDaemonClientRegistrarScenarioTrigger alloc] initWithScenarioTriggerManager:v102->_scenarioTriggerManager queue:v102->_queue];
    scenarioTriggerRegistrar = v251->_scenarioTriggerRegistrar;
    v251->_scenarioTriggerRegistrar = v110;

    [(RTDaemonClientRegistrarScenarioTrigger *)v102->_scenarioTriggerRegistrar setDelegate:v102];
    v112 = [RTDaemonClientRegistrarVehicleEvent alloc];
    vehicleLocationProvider = v251->_vehicleLocationProvider;
    queue = [(RTDaemonClient *)v251 queue];
    v115 = [(RTDaemonClientRegistrarVehicleEvent *)v112 initWithVehicleLocationProvider:vehicleLocationProvider queue:queue];
    vehicleEventRegistrar = v251->_vehicleEventRegistrar;
    v251->_vehicleEventRegistrar = v115;

    vehicleEventRegistrar = [(RTDaemonClient *)v251 vehicleEventRegistrar];
    [vehicleEventRegistrar setDelegate:v251];

    v118 = [RTDaemonClientRegistrarPredictedContext alloc];
    predictedContextManager = v251->_predictedContextManager;
    queue2 = [(RTDaemonClient *)v251 queue];
    _clientIdentity = [(RTDaemonClient *)v251 _clientIdentity];
    v122 = [(RTDaemonClientRegistrarPredictedContext *)v118 initWithPredictedContextManager:predictedContextManager queue:queue2 clientIdentity:_clientIdentity];
    predictedContextRegistrar = v251->_predictedContextRegistrar;
    v251->_predictedContextRegistrar = v122;

    [(RTDaemonClientRegistrarPredictedContext *)v102->_predictedContextRegistrar setDelegate:v102];
    v124 = [RTDaemonClientRegistrarRemoteStatus alloc];
    intermittentGNSSManager = v251->_intermittentGNSSManager;
    queue3 = [(RTDaemonClient *)v251 queue];
    v127 = [(RTDaemonClientRegistrarRemoteStatus *)v124 initWithIntermittentGNSSManager:intermittentGNSSManager queue:queue3];
    remoteStatusRegistrar = v251->_remoteStatusRegistrar;
    v251->_remoteStatusRegistrar = v127;

    [(RTDaemonClientRegistrarRemoteStatus *)v102->_remoteStatusRegistrar setDelegate:v102];
    v129 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
    {
      executableName = [(RTDaemonClient *)v251 executableName];
      v131 = v251->_restorationIdentifier;
      *buf = 138412546;
      v309 = executableName;
      v310 = 2112;
      v311 = v131;
      _os_log_impl(&dword_2304B3000, v129, OS_LOG_TYPE_DEFAULT, "client, %@, _restorationIdentifier, %@", buf, 0x16u);
    }

    v132 = [[RTDaemonClientRegistrarPeopleDiscovery alloc] initWithPeopleDiscoveryProvider:v251->_peopleDiscoveryProvider queue:v251->_queue];
    peopleDiscoveryRegistrar = v251->_peopleDiscoveryRegistrar;
    v251->_peopleDiscoveryRegistrar = v132;

    [(RTDaemonClientRegistrarPeopleDiscovery *)v251->_peopleDiscoveryRegistrar setDelegate:v251];
    v134 = dispatch_group_create();
    dispatch_group_enter(v134);
    authorizationManager = v251->_authorizationManager;
    v296[0] = MEMORY[0x277D85DD0];
    v296[1] = 3221225472;
    v296[2] = __759__RTDaemonClient_initWithQueue_restorationData_accountManager_assetManager_authorizationManager_backgroundInertialOdometryManager_contactsManager_defaultsManager_deviceLocationPredictor_diagnostics_elevationManager_eventAgentManager_eventModelProvider_authorizedLocationManager_fingerprintManager_healthKitManager_hintManager_intermittentGNSSManager_learnedLocationManager_learnedLocationStore_locationManager_locationContextManager_locationStore_mapServiceManager_metricManager_motionActivityManager_peopleDiscoveryProvider_placeInferenceManager_predictedContextManager_purgeManager_scenarioTriggerManager_timerManager_tripSegmentManager_userCurationManager_vehicleLocationProvider_vehicleStore_visitManager_wifiManager_tripClusterManager_visitConsolidator___block_invoke;
    v296[3] = &unk_2788C53F0;
    v136 = v251;
    v297 = v136;
    v137 = v134;
    v298 = v137;
    [(RTAuthorizationManager *)authorizationManager fetchRoutineSupportedWithHandler:v296];
    v138 = v251->_authorizationManager;
    v139 = +[(RTNotification *)RTAuthorizationManagerNotificationRoutineEnabled];
    [(RTNotifier *)v138 addObserver:v136 selector:sel_onAuthorizationNotification_ name:v139];

    dispatch_group_enter(v137);
    v140 = v251->_authorizationManager;
    v293[0] = MEMORY[0x277D85DD0];
    v293[1] = 3221225472;
    v293[2] = __759__RTDaemonClient_initWithQueue_restorationData_accountManager_assetManager_authorizationManager_backgroundInertialOdometryManager_contactsManager_defaultsManager_deviceLocationPredictor_diagnostics_elevationManager_eventAgentManager_eventModelProvider_authorizedLocationManager_fingerprintManager_healthKitManager_hintManager_intermittentGNSSManager_learnedLocationManager_learnedLocationStore_locationManager_locationContextManager_locationStore_mapServiceManager_metricManager_motionActivityManager_peopleDiscoveryProvider_placeInferenceManager_predictedContextManager_purgeManager_scenarioTriggerManager_timerManager_tripSegmentManager_userCurationManager_vehicleLocationProvider_vehicleStore_visitManager_wifiManager_tripClusterManager_visitConsolidator___block_invoke_3;
    v293[3] = &unk_2788C53F0;
    v141 = v136;
    v294 = v141;
    v295 = v137;
    v142 = v137;
    [(RTAuthorizationManager *)v140 fetchRoutineEnabledWithHandler:v293];
    queue4 = [(RTDaemonClient *)v141 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __759__RTDaemonClient_initWithQueue_restorationData_accountManager_assetManager_authorizationManager_backgroundInertialOdometryManager_contactsManager_defaultsManager_deviceLocationPredictor_diagnostics_elevationManager_eventAgentManager_eventModelProvider_authorizedLocationManager_fingerprintManager_healthKitManager_hintManager_intermittentGNSSManager_learnedLocationManager_learnedLocationStore_locationManager_locationContextManager_locationStore_mapServiceManager_metricManager_motionActivityManager_peopleDiscoveryProvider_placeInferenceManager_predictedContextManager_purgeManager_scenarioTriggerManager_timerManager_tripSegmentManager_userCurationManager_vehicleLocationProvider_vehicleStore_visitManager_wifiManager_tripClusterManager_visitConsolidator___block_invoke_5;
    block[3] = &unk_2788C4EA0;
    v292 = v141;
    dispatch_group_notify(v142, queue4, block);
  }

  selfCopy2 = v251;
  v91 = selfCopy2;
  queueCopy = v172;
  v98 = dataCopy;
  v92 = v187;
  v47 = assetManagerCopy;
  v96 = locationStoreCopy;
LABEL_104:

  return v91;
}

void __759__RTDaemonClient_initWithQueue_restorationData_accountManager_assetManager_authorizationManager_backgroundInertialOdometryManager_contactsManager_defaultsManager_deviceLocationPredictor_diagnostics_elevationManager_eventAgentManager_eventModelProvider_authorizedLocationManager_fingerprintManager_healthKitManager_hintManager_intermittentGNSSManager_learnedLocationManager_learnedLocationStore_locationManager_locationContextManager_locationStore_mapServiceManager_metricManager_motionActivityManager_peopleDiscoveryProvider_placeInferenceManager_predictedContextManager_purgeManager_scenarioTriggerManager_timerManager_tripSegmentManager_userCurationManager_vehicleLocationProvider_vehicleStore_visitManager_wifiManager_tripClusterManager_visitConsolidator___block_invoke(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __759__RTDaemonClient_initWithQueue_restorationData_accountManager_assetManager_authorizationManager_backgroundInertialOdometryManager_contactsManager_defaultsManager_deviceLocationPredictor_diagnostics_elevationManager_eventAgentManager_eventModelProvider_authorizedLocationManager_fingerprintManager_healthKitManager_hintManager_intermittentGNSSManager_learnedLocationManager_learnedLocationStore_locationManager_locationContextManager_locationStore_mapServiceManager_metricManager_motionActivityManager_peopleDiscoveryProvider_placeInferenceManager_predictedContextManager_purgeManager_scenarioTriggerManager_timerManager_tripSegmentManager_userCurationManager_vehicleLocationProvider_vehicleStore_visitManager_wifiManager_tripClusterManager_visitConsolidator___block_invoke_2;
  block[3] = &unk_2788C53C8;
  v6 = *(a1 + 32);
  v8 = a2;
  v7 = *(a1 + 40);
  dispatch_async(v4, block);
}

void __759__RTDaemonClient_initWithQueue_restorationData_accountManager_assetManager_authorizationManager_backgroundInertialOdometryManager_contactsManager_defaultsManager_deviceLocationPredictor_diagnostics_elevationManager_eventAgentManager_eventModelProvider_authorizedLocationManager_fingerprintManager_healthKitManager_hintManager_intermittentGNSSManager_learnedLocationManager_learnedLocationStore_locationManager_locationContextManager_locationStore_mapServiceManager_metricManager_motionActivityManager_peopleDiscoveryProvider_placeInferenceManager_predictedContextManager_purgeManager_scenarioTriggerManager_timerManager_tripSegmentManager_userCurationManager_vehicleLocationProvider_vehicleStore_visitManager_wifiManager_tripClusterManager_visitConsolidator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setSupported:*(a1 + 48)];
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

void __759__RTDaemonClient_initWithQueue_restorationData_accountManager_assetManager_authorizationManager_backgroundInertialOdometryManager_contactsManager_defaultsManager_deviceLocationPredictor_diagnostics_elevationManager_eventAgentManager_eventModelProvider_authorizedLocationManager_fingerprintManager_healthKitManager_hintManager_intermittentGNSSManager_learnedLocationManager_learnedLocationStore_locationManager_locationContextManager_locationStore_mapServiceManager_metricManager_motionActivityManager_peopleDiscoveryProvider_placeInferenceManager_predictedContextManager_purgeManager_scenarioTriggerManager_timerManager_tripSegmentManager_userCurationManager_vehicleLocationProvider_vehicleStore_visitManager_wifiManager_tripClusterManager_visitConsolidator___block_invoke_3(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __759__RTDaemonClient_initWithQueue_restorationData_accountManager_assetManager_authorizationManager_backgroundInertialOdometryManager_contactsManager_defaultsManager_deviceLocationPredictor_diagnostics_elevationManager_eventAgentManager_eventModelProvider_authorizedLocationManager_fingerprintManager_healthKitManager_hintManager_intermittentGNSSManager_learnedLocationManager_learnedLocationStore_locationManager_locationContextManager_locationStore_mapServiceManager_metricManager_motionActivityManager_peopleDiscoveryProvider_placeInferenceManager_predictedContextManager_purgeManager_scenarioTriggerManager_timerManager_tripSegmentManager_userCurationManager_vehicleLocationProvider_vehicleStore_visitManager_wifiManager_tripClusterManager_visitConsolidator___block_invoke_4;
  block[3] = &unk_2788C53C8;
  v6 = *(a1 + 32);
  v8 = a2;
  v7 = *(a1 + 40);
  dispatch_async(v4, block);
}

void __759__RTDaemonClient_initWithQueue_restorationData_accountManager_assetManager_authorizationManager_backgroundInertialOdometryManager_contactsManager_defaultsManager_deviceLocationPredictor_diagnostics_elevationManager_eventAgentManager_eventModelProvider_authorizedLocationManager_fingerprintManager_healthKitManager_hintManager_intermittentGNSSManager_learnedLocationManager_learnedLocationStore_locationManager_locationContextManager_locationStore_mapServiceManager_metricManager_motionActivityManager_peopleDiscoveryProvider_placeInferenceManager_predictedContextManager_purgeManager_scenarioTriggerManager_timerManager_tripSegmentManager_userCurationManager_vehicleLocationProvider_vehicleStore_visitManager_wifiManager_tripClusterManager_visitConsolidator___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setEnabled:*(a1 + 48)];
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

void __759__RTDaemonClient_initWithQueue_restorationData_accountManager_assetManager_authorizationManager_backgroundInertialOdometryManager_contactsManager_defaultsManager_deviceLocationPredictor_diagnostics_elevationManager_eventAgentManager_eventModelProvider_authorizedLocationManager_fingerprintManager_healthKitManager_hintManager_intermittentGNSSManager_learnedLocationManager_learnedLocationStore_locationManager_locationContextManager_locationStore_mapServiceManager_metricManager_motionActivityManager_peopleDiscoveryProvider_placeInferenceManager_predictedContextManager_purgeManager_scenarioTriggerManager_timerManager_tripSegmentManager_userCurationManager_vehicleLocationProvider_vehicleStore_visitManager_wifiManager_tripClusterManager_visitConsolidator___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) restore];
  v2 = [*(a1 + 32) xpcConnection];
  [v2 resume];
}

- (id)_clientIdentity
{
  restorationIdentifier = [(RTDaemonClient *)self restorationIdentifier];
  if (restorationIdentifier)
  {
    [(RTDaemonClient *)self restorationIdentifier];
  }

  else
  {
    [(RTDaemonClient *)self signingIdentifier];
  }
  v4 = ;

  if (v4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply
{
  v36 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  invocationCopy = invocation;
  [invocationCopy retainArguments];
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__11;
  v30[4] = __Block_byref_object_dispose__11;
  v11 = MEMORY[0x277CCACA8];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = NSStringFromSelector(a2);
  v15 = [v11 stringWithFormat:@"%@-%@", v13, v14];
  v16 = v15;
  [v15 UTF8String];
  v31 = os_transaction_create();

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v23 = NSStringFromSelector(a2);
      *buf = 138412546;
      v33 = v22;
      v34 = 2112;
      v35 = v23;
      _os_log_debug_impl(&dword_2304B3000, v17, OS_LOG_TYPE_DEBUG, "creating os_transaction, %@, %@", buf, 0x16u);
    }
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__RTDaemonClient_connection_handleInvocation_isReply___block_invoke;
  block[3] = &unk_2788C5440;
  replyCopy = reply;
  v25 = invocationCopy;
  selfCopy = self;
  v27 = connectionCopy;
  v28 = v30;
  v19 = connectionCopy;
  v20 = invocationCopy;
  dispatch_async(queue, block);

  _Block_object_dispose(v30, 8);
}

void __54__RTDaemonClient_connection_handleInvocation_isReply___block_invoke(uint64_t a1)
{
  v87[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    [*(a1 + 32) invoke];
    v2 = *(*(a1 + 56) + 8);
    v3 = *(v2 + 40);
    *(v2 + 40) = 0;
  }

  else
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    v5 = os_signpost_id_generate(v4);

    v6 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    v7 = v6;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      v8 = [*(a1 + 40) executableName];
      v9 = NSStringFromSelector([*(a1 + 32) selector]);
      *buf = 138412546;
      *&buf[4] = v8;
      v82 = 2112;
      v83 = v9;
      _os_signpost_emit_with_name_impl(&dword_2304B3000, v7, OS_SIGNPOST_EVENT, v5, "ClientService", "client %@, request %@", buf, 0x16u);
    }

    v10 = [MEMORY[0x277CBEAA8] date];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityClient);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v17 = [*(a1 + 40) executableName];
        v18 = NSStringFromSelector([*(a1 + 32) selector]);
        *buf = 138412546;
        *&buf[4] = v17;
        v82 = 2112;
        v83 = v18;
        _os_log_debug_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEBUG, "client, %@, called, %@", buf, 0x16u);
      }
    }

    v12 = [*(a1 + 32) target];
    v13 = [*(*(a1 + 40) + 64) protocol];
    v14 = [v12 conformsToProtocol:v13];

    if (v14)
    {
      v15 = [*(a1 + 48) exportedInterface];
      v16 = [v15 replyBlockSignatureForSelector:{objc_msgSend(*(a1 + 32), "selector")}];
    }

    else
    {
      v16 = 0;
    }

    v19 = [*(a1 + 40) supported];
    v20 = _MergedGlobals_111;
    v21 = NSStringFromSelector([*(a1 + 32) selector]);
    if ([v20 containsObject:v21])
    {
      v22 = 1;
    }

    else
    {
      v22 = [*(a1 + 40) enabled];
    }

    v23 = qword_2814A7CC0;
    v24 = NSStringFromSelector([*(a1 + 32) selector]);
    v25 = [v23 objectForKey:v24];

    if ([v25 count])
    {
      if ([v25 count])
      {
        v26 = [*(a1 + 40) executableName];
        if ([v25 containsObject:v26])
        {
          v27 = 1;
        }

        else
        {
          v28 = [*(a1 + 40) bundleIdentifier];
          v27 = [v25 containsObject:v28];
        }
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v27 = 1;
    }

    v29 = [*(*(a1 + 40) + 64) clientConnection:*(a1 + 48) satisfiesEntitlementRequirementsForInvocation:*(a1 + 32)];
    if (v16)
    {
      if (v29)
      {
        if (v19)
        {
          if (v22)
          {
            if (v27)
            {
              v30 = [*(a1 + 32) blockArgumentIndex];
              *buf = 0;
              [*(a1 + 32) getArgument:buf atIndex:v30];
              v31 = NSStringFromSelector([*(a1 + 32) selector]);
              v32 = [*buf copy];
              v33 = v16;
              [v16 UTF8String];
              v71 = v31;
              v72 = v10;
              v73 = v32;
              v34 = v32;
              v35 = v31;
              v74 = __NSMakeSpecialForwardingCaptureBlock();
              [*(a1 + 32) setArgument:&v74 atIndex:v30];
              [*(a1 + 32) invoke];
              v36 = *(*(a1 + 56) + 8);
              v37 = *(v36 + 40);
              *(v36 + 40) = 0;
            }

            else
            {
              v75 = *MEMORY[0x277CCA450];
              v57 = MEMORY[0x277CCACA8];
              v58 = [*(a1 + 40) executableName];
              v59 = [v57 stringWithFormat:@"This operation is unavailable for %@.", v58];
              v76 = v59;
              v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v76 forKeys:&v75 count:1];

              v61 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:2 userInfo:v60];
              v62 = _rt_log_facility_get_os_log(RTLogFacilityClient);
              if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
              {
                v68 = NSStringFromSelector([*(a1 + 32) selector]);
                v69 = [*(a1 + 40) executableName];
                v70 = [*(a1 + 40) bundleIdentifier];
                *buf = 138412802;
                *&buf[4] = v68;
                v82 = 2112;
                v83 = v69;
                v84 = 2112;
                v85 = v70;
                _os_log_error_impl(&dword_2304B3000, v62, OS_LOG_TYPE_ERROR, "invocation, %@, for client, %@, bundleId, %@, is unavailable.", buf, 0x20u);
              }

              [*(a1 + 48) rejectInvocation:*(a1 + 32) withError:v61 replyTypes:v16];
              v63 = *(*(a1 + 56) + 8);
              v64 = *(v63 + 40);
              *(v63 + 40) = 0;
            }
          }

          else
          {
            v77 = *MEMORY[0x277CCA450];
            v78 = @"This operation is not supported since Significant Locations is not enabled.";
            v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
            v54 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:2 userInfo:v53];
            [*(a1 + 48) rejectInvocation:*(a1 + 32) withError:v54 replyTypes:v16];
            v55 = *(*(a1 + 56) + 8);
            v56 = *(v55 + 40);
            *(v55 + 40) = 0;
          }
        }

        else
        {
          v79 = *MEMORY[0x277CCA450];
          v80 = @"This operation is not supported on this platform.";
          v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
          v50 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:1 userInfo:v49];
          [*(a1 + 48) rejectInvocation:*(a1 + 32) withError:v50 replyTypes:v16];
          v51 = *(*(a1 + 56) + 8);
          v52 = *(v51 + 40);
          *(v51 + 40) = 0;
        }
      }

      else
      {
        v86 = *MEMORY[0x277CCA450];
        v40 = MEMORY[0x277CCACA8];
        v41 = [*(a1 + 40) executableName];
        v42 = [v40 stringWithFormat:@"%@ is not entitled for this operation.", v41];
        v87[0] = v42;
        v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:&v86 count:1];

        v44 = objc_alloc(MEMORY[0x277CCA9B8]);
        v45 = [v44 initWithDomain:*MEMORY[0x277D01448] code:3 userInfo:v43];
        v46 = _rt_log_facility_get_os_log(RTLogFacilityClient);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v65 = [*(a1 + 40) executableName];
          v66 = [*(a1 + 40) bundleIdentifier];
          v67 = NSStringFromSelector([*(a1 + 32) selector]);
          *buf = 138412802;
          *&buf[4] = v65;
          v82 = 2112;
          v83 = v66;
          v84 = 2112;
          v85 = v67;
          _os_log_error_impl(&dword_2304B3000, v46, OS_LOG_TYPE_ERROR, "client, %@, bundleId, %@, is not entitled for invocation, %@.", buf, 0x20u);
        }

        [*(a1 + 48) rejectInvocation:*(a1 + 32) withError:v45 replyTypes:v16];
        v47 = *(*(a1 + 56) + 8);
        v48 = *(v47 + 40);
        *(v47 + 40) = 0;
      }
    }

    else
    {
      if ((v29 & v19 & v22 & v27) == 1)
      {
        [*(a1 + 32) invoke];
      }

      v38 = *(*(a1 + 56) + 8);
      v39 = *(v38 + 40);
      *(v38 + 40) = 0;
    }
  }
}

void __54__RTDaemonClient_connection_handleInvocation_isReply___block_invoke_670(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = a1[4];
      v6 = [MEMORY[0x277CBEAA8] date];
      [v6 timeIntervalSinceDate:a1[5]];
      v8 = 138412546;
      v9 = v5;
      v10 = 2048;
      v11 = v7;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "Sending reply for request %@, latency, %.2f", &v8, 0x16u);
    }
  }

  [v3 setTarget:a1[6]];
  [v3 invoke];
}

- (void)fetchLocationsOfInterestWithinDistance:(double)distance ofLocation:(id)location reply:(id)reply
{
  locationCopy = location;
  replyCopy = reply;
  if (replyCopy)
  {
    learnedLocationManager = self->_learnedLocationManager;
    v12 = [objc_alloc(MEMORY[0x277D01160]) initWithCLLocation:locationCopy];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __74__RTDaemonClient_fetchLocationsOfInterestWithinDistance_ofLocation_reply___block_invoke;
    v14[3] = &unk_2788C5490;
    v14[4] = self;
    v17 = a2;
    distanceCopy = distance;
    v15 = locationCopy;
    v16 = replyCopy;
    [(RTLearnedLocationManager *)learnedLocationManager fetchLocationsOfInterestWithinDistance:v12 ofLocation:v14 handler:distance];
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __74__RTDaemonClient_fetchLocationsOfInterestWithinDistance_ofLocation_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__RTDaemonClient_fetchLocationsOfInterestWithinDistance_ofLocation_reply___block_invoke_2;
  block[3] = &unk_2788C5468;
  v19 = *(a1 + 56);
  v14 = v5;
  v20 = *(a1 + 64);
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v15 = v8;
  v16 = v9;
  v10 = *(a1 + 48);
  v17 = v6;
  v18 = v10;
  v11 = v6;
  v12 = v5;
  dispatch_async(v7, block);
}

void __74__RTDaemonClient_fetchLocationsOfInterestWithinDistance_ofLocation_reply___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 72));
      v4 = [*(a1 + 32) count];
      v5 = *(a1 + 80);
      v6 = [*(a1 + 40) coordinateToString];
      v7 = *(a1 + 48);
      v10 = 138413315;
      v11 = v3;
      v12 = 2048;
      v13 = v4;
      v14 = 2048;
      v15 = v5;
      v16 = 2117;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, sending %lu locations of interest within %.2fm of %{sensitive}@ to client, %@", &v10, 0x34u);
    }
  }

  v8 = *(a1 + 64);
  v9 = [MEMORY[0x277D01170] locationsOfInterestFromLearnedLocationsOfInterest:*(a1 + 32)];
  (*(v8 + 16))(v8, v9, *(a1 + 56));
}

- (void)fetchLocationsOfInterestOfType:(int64_t)type reply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    v8 = [RTLearnedPlace placeTypeFromType:type];
    learnedLocationManager = self->_learnedLocationManager;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __55__RTDaemonClient_fetchLocationsOfInterestOfType_reply___block_invoke;
    v11[3] = &unk_2788C54E0;
    v11[4] = self;
    v13 = a2;
    v14 = v8;
    v12 = replyCopy;
    [(RTLearnedLocationManager *)learnedLocationManager fetchLocationsOfInterestWithPlaceType:v8 handler:v11];
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __55__RTDaemonClient_fetchLocationsOfInterestOfType_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__RTDaemonClient_fetchLocationsOfInterestOfType_reply___block_invoke_2;
  block[3] = &unk_2788C54B8;
  v8 = *(a1 + 56);
  v9 = *(a1 + 32);
  v15 = v5;
  v16 = v9;
  v19 = v8;
  v17 = v6;
  v13 = *(a1 + 40);
  v10 = v13;
  v18 = v13;
  v11 = v6;
  v12 = v5;
  dispatch_async(v7, block);
}

void __55__RTDaemonClient_fetchLocationsOfInterestOfType_reply___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 64));
      v4 = [*(a1 + 32) count];
      v5 = [RTLearnedPlace placeTypeToString:*(a1 + 72)];
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v10 = 138413314;
      v11 = v3;
      v12 = 2048;
      v13 = v4;
      v14 = 2112;
      v15 = v5;
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, sending %lu locations of interest with type, %@, to client, %@, error, %@", &v10, 0x34u);
    }
  }

  v8 = *(a1 + 56);
  v9 = [MEMORY[0x277D01170] locationsOfInterestFromLearnedLocationsOfInterest:*(a1 + 32)];
  (*(v8 + 16))(v8, v9, *(a1 + 48));
}

- (void)fetchAllLocationsOfInterestForSettingsWithReply:(id)reply
{
  replyCopy = reply;
  v6 = replyCopy;
  if (replyCopy)
  {
    learnedLocationManager = self->_learnedLocationManager;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __66__RTDaemonClient_fetchAllLocationsOfInterestForSettingsWithReply___block_invoke;
    v9[3] = &unk_2788C5508;
    v9[4] = self;
    v11 = a2;
    v10 = replyCopy;
    [(RTLearnedLocationManager *)learnedLocationManager fetchAllLocationsOfInterestWithHandler:v9];
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __66__RTDaemonClient_fetchAllLocationsOfInterestForSettingsWithReply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__RTDaemonClient_fetchAllLocationsOfInterestForSettingsWithReply___block_invoke_2;
  block[3] = &unk_2788C5110;
  v8 = *(a1 + 32);
  v14 = v5;
  v15 = v8;
  v16 = v6;
  v12 = *(a1 + 40);
  v9 = v12;
  v17 = v12;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

void __66__RTDaemonClient_fetchAllLocationsOfInterestForSettingsWithReply___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 64));
      v4 = [*(a1 + 32) count];
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v9 = 138413058;
      v10 = v3;
      v11 = 2048;
      v12 = v4;
      v13 = 2112;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, sending %lu locations of interest to client, %@, error, %@", &v9, 0x2Au);
    }
  }

  v7 = *(a1 + 56);
  v8 = [MEMORY[0x277D01170] locationsOfInterestFromLearnedLocationsOfInterest:*(a1 + 32)];
  (*(v7 + 16))(v7, v8, *(a1 + 48));
}

- (void)fetchNextPredictedLocationsOfInterestFromLocation:(id)location startDate:(id)date timeInterval:(double)interval reply:(id)reply
{
  locationCopy = location;
  dateCopy = date;
  replyCopy = reply;
  if (replyCopy)
  {
    v13 = [objc_alloc(MEMORY[0x277D01160]) initWithCLLocation:locationCopy];
    deviceLocationPredictor = self->_deviceLocationPredictor;
    _clientIdentifier = [(RTDaemonClient *)self _clientIdentifier];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __97__RTDaemonClient_fetchNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval_reply___block_invoke;
    v16[3] = &unk_2788C5558;
    v16[4] = self;
    v17 = replyCopy;
    [(RTDeviceLocationPredictor *)deviceLocationPredictor fetchNextPredictedLocationsOfInterestFromLocation:v13 startDate:dateCopy timeInterval:_clientIdentifier clientIdentifier:v16 handler:interval];
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __97__RTDaemonClient_fetchNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __97__RTDaemonClient_fetchNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval_reply___block_invoke_2;
  v12[3] = &unk_2788C5530;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v5;
  v14 = v8;
  v15 = v6;
  v16 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, v12);
}

uint64_t __97__RTDaemonClient_fetchNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval_reply___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 32) count];
      v4 = *(a1 + 40);
      v5 = *(a1 + 48);
      v7 = 134218498;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "sending %lu next PLOIs to client, %@, error, %@", &v7, 0x20u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    [*(a1 + 32) enumerateObjectsUsingBlock:&__block_literal_global_9];
  }

  return (*(*(a1 + 56) + 16))();
}

void __97__RTDaemonClient_fetchNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval_reply___block_invoke_676(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 134218243;
      v7 = a3 + 1;
      v8 = 2117;
      v9 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "PLOI %lu, %{sensitive}@", &v6, 0x16u);
    }
  }
}

- (void)fetchPlaceInferencesWithOptions:(id)options reply:(id)reply
{
  v22 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  replyCopy = reply;
  if (!replyCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }

    goto LABEL_11;
  }

  if (!optionsCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityClient);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "options is required, %@", buf, 0xCu);
      }
    }

    v11 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277D01448];
    v18 = *MEMORY[0x277CCA450];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"options is required."];
    v19 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v9 = [v11 errorWithDomain:v12 code:7 userInfo:v14];

    replyCopy[2](replyCopy, 0, v9);
LABEL_11:

    goto LABEL_12;
  }

  queue = [(RTDaemonClient *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__RTDaemonClient_fetchPlaceInferencesWithOptions_reply___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v16 = optionsCopy;
  v17 = replyCopy;
  dispatch_async(queue, block);

LABEL_12:
}

void __56__RTDaemonClient_fetchPlaceInferencesWithOptions_reply___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v2 + 320);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__RTDaemonClient_fetchPlaceInferencesWithOptions_reply___block_invoke_2;
  v5[3] = &unk_2788C55A8;
  v5[4] = v2;
  v6 = v3;
  v7 = *(a1 + 48);
  [v4 fetchPlaceInferencesForOptions:v6 handler:v5];
}

void __56__RTDaemonClient_fetchPlaceInferencesWithOptions_reply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__RTDaemonClient_fetchPlaceInferencesWithOptions_reply___block_invoke_3;
  block[3] = &unk_2788C5580;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v5;
  v14 = v8;
  v15 = v9;
  v16 = v6;
  v17 = *(a1 + 48);
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __56__RTDaemonClient_fetchPlaceInferencesWithOptions_reply___block_invoke_3(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 32) count];
      v5 = *(a1 + 40);
      v4 = *(a1 + 48);
      v6 = [*(a1 + 32) firstObject];
      v7 = *(a1 + 56);
      v9 = 134219011;
      v10 = v3;
      v11 = 2112;
      v12 = v5;
      v13 = 2117;
      v14 = v4;
      v15 = 2117;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "sending %lu placeInferences to client, %@, options, %{sensitive}@, placeInferences[0], %{sensitive}@, error, %@", &v9, 0x34u);
    }
  }

  return (*(*(a1 + 64) + 16))();
}

- (void)fetchRoutineEnabledWithReply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    replyCopy[2](replyCopy, [(RTDaemonClient *)self enabled]);
  }

  else
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v6, 2u);
    }
  }
}

- (void)setRoutineEnabled:(BOOL)enabled reply:(id)reply
{
  enabledCopy = enabled;
  v14 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  if (replyCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityClient);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = @"NO";
        if (enabledCopy)
        {
          v8 = @"YES";
        }

        v10 = 138412546;
        selfCopy = self;
        v12 = 2112;
        v13 = v8;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "client, %@, setting CoreRoutine enabled to, %@", &v10, 0x16u);
      }
    }

    [(RTAuthorizationManager *)self->_authorizationManager setRoutineEnabled:enabledCopy withHandler:replyCopy];
    [(RTDaemonClient *)self setEnabled:enabledCopy];
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", &v10, 2u);
    }
  }
}

- (void)clearRoutineWithReply:(id)reply
{
  if (reply)
  {
    purgeManager = self->_purgeManager;

    [(RTPurgeManager *)purgeManager clearRoutineWithHandler:?];
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v7, 2u);
    }
  }
}

- (void)fetchCloudSyncAuthorizationStateWithReply:(id)reply
{
  if (reply)
  {
    accountManager = self->_accountManager;

    [(RTAccountManager *)accountManager fetchCloudSyncAuthorizationState:?];
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v7, 2u);
    }
  }
}

- (void)updateCloudSyncProvisionedForAccount:(BOOL)account reply:(id)reply
{
  if (reply)
  {
    accountManager = self->_accountManager;

    [(RTAccountManager *)accountManager updateCloudSyncProvisionedForAccount:account handler:?];
  }

  else
  {
    v9 = v4;
    v10 = v5;
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v8, 2u);
    }
  }
}

- (void)fetchRoutineModeFromLocation:(id)location reply:(id)reply
{
  locationCopy = location;
  replyCopy = reply;
  if (replyCopy)
  {
    learnedLocationManager = self->_learnedLocationManager;
    v10 = [objc_alloc(MEMORY[0x277D01160]) initWithCLLocation:locationCopy];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __53__RTDaemonClient_fetchRoutineModeFromLocation_reply___block_invoke;
    v12[3] = &unk_2788C55D0;
    v12[4] = self;
    v15 = a2;
    v13 = locationCopy;
    v14 = replyCopy;
    [(RTLearnedLocationManager *)learnedLocationManager fetchModeAtLocation:v10 handler:v12];
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __53__RTDaemonClient_fetchRoutineModeFromLocation_reply___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) queue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__RTDaemonClient_fetchRoutineModeFromLocation_reply___block_invoke_2;
  v10[3] = &unk_2788C54B8;
  v15 = *(a1 + 56);
  v16 = a2;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v11 = v7;
  v12 = v8;
  v13 = v5;
  v14 = *(a1 + 48);
  v9 = v5;
  dispatch_async(v6, v10);
}

uint64_t __53__RTDaemonClient_fetchRoutineModeFromLocation_reply___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 64));
      v4 = [RTLearnedLocationManager modeToString:*(a1 + 72)];
      v5 = [*(a1 + 32) coordinateToString];
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v9 = 138413315;
      v10 = v3;
      v11 = 2112;
      v12 = v4;
      v13 = 2117;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, sending mode, %@, at location, %{sensitive}@, to client, %@, error, %@", &v9, 0x34u);
    }
  }

  return (*(*(a1 + 56) + 16))(*(a1 + 56), [MEMORY[0x277D01170] routineModeFromLearnedLocationMode:*(a1 + 72)], *(a1 + 48));
}

- (void)fetchLocationsOfInterestAssociatedToIdentifier:(id)identifier reply:(id)reply
{
  replyCopy = reply;
  v7 = replyCopy;
  if (replyCopy)
  {
    eventModelProvider = self->_eventModelProvider;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __71__RTDaemonClient_fetchLocationsOfInterestAssociatedToIdentifier_reply___block_invoke;
    v10[3] = &unk_2788C5558;
    v10[4] = self;
    v11 = replyCopy;
    [(RTEventModelProvider *)eventModelProvider fetchLocationsOfInterestAssociatedToIdentifier:identifier withHandler:v10];
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __71__RTDaemonClient_fetchLocationsOfInterestAssociatedToIdentifier_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__RTDaemonClient_fetchLocationsOfInterestAssociatedToIdentifier_reply___block_invoke_2;
  v12[3] = &unk_2788C5530;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v5;
  v14 = v8;
  v15 = v6;
  v16 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, v12);
}

uint64_t __71__RTDaemonClient_fetchLocationsOfInterestAssociatedToIdentifier_reply___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v4 = [*(a1 + 32) count];
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v7 = 134218498;
      v8 = v4;
      v9 = 2112;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      _os_log_debug_impl(&dword_2304B3000, v2, OS_LOG_TYPE_DEBUG, "sending %lu locations of interest to client, %@, error, %@", &v7, 0x20u);
    }
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)fetchPredictedLocationsOfInterestAssociatedToTitle:(id)title location:(id)location calendarIdentifier:(id)identifier reply:(id)reply
{
  replyCopy = reply;
  v11 = replyCopy;
  if (replyCopy)
  {
    eventModelProvider = self->_eventModelProvider;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __103__RTDaemonClient_fetchPredictedLocationsOfInterestAssociatedToTitle_location_calendarIdentifier_reply___block_invoke;
    v14[3] = &unk_2788C5558;
    v14[4] = self;
    v15 = replyCopy;
    [(RTEventModelProvider *)eventModelProvider fetchPredictedLocationsOfInterestAssociatedToTitle:title location:location calendarIdentifier:identifier withHandler:v14];
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __103__RTDaemonClient_fetchPredictedLocationsOfInterestAssociatedToTitle_location_calendarIdentifier_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __103__RTDaemonClient_fetchPredictedLocationsOfInterestAssociatedToTitle_location_calendarIdentifier_reply___block_invoke_2;
  v12[3] = &unk_2788C5530;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v5;
  v14 = v8;
  v15 = v6;
  v16 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, v12);
}

uint64_t __103__RTDaemonClient_fetchPredictedLocationsOfInterestAssociatedToTitle_location_calendarIdentifier_reply___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v4 = [*(a1 + 32) count];
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v7 = 134218498;
      v8 = v4;
      v9 = 2112;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      _os_log_debug_impl(&dword_2304B3000, v2, OS_LOG_TYPE_DEBUG, "sending %lu predicted locations of interest to client, %@, error, %@", &v7, 0x20u);
    }
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)fetchPredictedLocationsOfInterestOnDate:(id)date reply:(id)reply
{
  dateCopy = date;
  replyCopy = reply;
  if (replyCopy)
  {
    deviceLocationPredictor = self->_deviceLocationPredictor;
    _clientIdentifier = [(RTDaemonClient *)self _clientIdentifier];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __64__RTDaemonClient_fetchPredictedLocationsOfInterestOnDate_reply___block_invoke;
    v11[3] = &unk_2788C55A8;
    v11[4] = self;
    v12 = dateCopy;
    v13 = replyCopy;
    [(RTDeviceLocationPredictor *)deviceLocationPredictor fetchPredictedLocationsOfInterestOnDate:v12 clientIdentifier:_clientIdentifier withHandler:v11];
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __64__RTDaemonClient_fetchPredictedLocationsOfInterestOnDate_reply___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__RTDaemonClient_fetchPredictedLocationsOfInterestOnDate_reply___block_invoke_2;
  block[3] = &unk_2788C5580;
  v13 = v5;
  v8 = a1[5];
  v9 = a1[4];
  v14 = v8;
  v15 = v9;
  v16 = v6;
  v17 = a1[6];
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __64__RTDaemonClient_fetchPredictedLocationsOfInterestOnDate_reply___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 32) count];
      v4 = [*(a1 + 40) stringFromDate];
      v5 = *(a1 + 48);
      v6 = *(a1 + 56);
      v8 = 134218754;
      v9 = v3;
      v10 = 2112;
      v11 = v4;
      v12 = 2112;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "sending %lu predicted locations the device may be at on %@ to client, %@, error, %@", &v8, 0x2Au);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    [*(a1 + 32) enumerateObjectsUsingBlock:&__block_literal_global_691];
  }

  return (*(*(a1 + 64) + 16))();
}

void __64__RTDaemonClient_fetchPredictedLocationsOfInterestOnDate_reply___block_invoke_689(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 134218243;
      v7 = a3 + 1;
      v8 = 2117;
      v9 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "PLOI %lu, %{sensitive}@", &v6, 0x16u);
    }
  }
}

- (void)fetchCurrentPredictedLocationsOfInterestLookingBack:(double)back lookingAhead:(double)ahead reply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    v10 = [[RTCurrentMapItemProvider alloc] initWithFingerprintManager:self->_fingerprintManager locationManager:self->_locationManager mapServiceManager:self->_mapServiceManager wifiManager:self->_wifiManager];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __89__RTDaemonClient_fetchCurrentPredictedLocationsOfInterestLookingBack_lookingAhead_reply___block_invoke;
    v11[3] = &unk_2788C5620;
    v11[4] = self;
    v13 = a2;
    backCopy = back;
    aheadCopy = ahead;
    v12 = replyCopy;
    [(RTCurrentMapItemProvider *)v10 fetchCurrentMapItemsLookingBack:v11 lookingAhead:back handler:ahead];
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, &v10->super, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __89__RTDaemonClient_fetchCurrentPredictedLocationsOfInterestLookingBack_lookingAhead_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__RTDaemonClient_fetchCurrentPredictedLocationsOfInterestLookingBack_lookingAhead_reply___block_invoke_2;
  block[3] = &unk_2788C55F8;
  v8 = *(a1 + 32);
  v14 = v5;
  v15 = v8;
  v16 = v6;
  v18 = *(a1 + 56);
  v12 = *(a1 + 40);
  v9 = v12;
  v17 = v12;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

void __89__RTDaemonClient_fetchCurrentPredictedLocationsOfInterestLookingBack_lookingAhead_reply___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 64));
      v4 = [*(a1 + 32) count];
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v7 = *(a1 + 72);
      v8 = *(a1 + 80);
      v11 = 138413570;
      v12 = v3;
      v13 = 2048;
      v14 = v4;
      v15 = 2112;
      v16 = v5;
      v17 = 2112;
      v18 = v6;
      v19 = 2048;
      v20 = v7;
      v21 = 2048;
      v22 = v8;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, sending %lu predicted locations of interest to client, %@, error, %@, looking back, %.2fs, seconds, looking ahead, %.2fs", &v11, 0x3Eu);
    }
  }

  [RTCurrentMapItemProvider logMapItems:*(a1 + 32) prestring:@"Outputted MapItems"];
  v9 = *(a1 + 56);
  v10 = [RTCurrentMapItemProvider convertMapItemsToPredictedLocationsOfInterest:*(a1 + 32)];
  (*(v9 + 16))(v9, v10, *(a1 + 48));
}

- (void)performBluePOIQueryLookingBack:(double)back lookingAhead:(double)ahead reply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    v10 = [[RTCurrentMapItemProvider alloc] initWithFingerprintManager:self->_fingerprintManager locationManager:self->_locationManager mapServiceManager:self->_mapServiceManager wifiManager:self->_wifiManager];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __68__RTDaemonClient_performBluePOIQueryLookingBack_lookingAhead_reply___block_invoke;
    v11[3] = &unk_2788C5670;
    v11[4] = self;
    v13 = a2;
    backCopy = back;
    aheadCopy = ahead;
    v12 = replyCopy;
    [(RTCurrentMapItemProvider *)v10 performBluePOIQueryLookingBack:v11 lookingAhead:back handler:ahead];
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, &v10->super, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __68__RTDaemonClient_performBluePOIQueryLookingBack_lookingAhead_reply___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__RTDaemonClient_performBluePOIQueryLookingBack_lookingAhead_reply___block_invoke_2;
  block[3] = &unk_2788C5648;
  v14 = *(a1 + 32);
  v22 = v11;
  v23 = v14;
  v24 = v12;
  v28 = *(a1 + 56);
  v20 = *(a1 + 40);
  v15 = v20;
  v27 = v20;
  v25 = v9;
  v26 = v10;
  v16 = v10;
  v17 = v9;
  v18 = v12;
  v19 = v11;
  dispatch_async(v13, block);
}

void __68__RTDaemonClient_performBluePOIQueryLookingBack_lookingAhead_reply___block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 80));
      v4 = [*(a1 + 32) count];
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v7 = *(a1 + 88);
      v8 = *(a1 + 96);
      v13 = 138413570;
      v14 = v3;
      v15 = 2048;
      v16 = v4;
      v17 = 2112;
      v18 = v5;
      v19 = 2112;
      v20 = v6;
      v21 = 2048;
      v22 = v7;
      v23 = 2048;
      v24 = v8;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, sending %lu predicted locations of interest to client, %@, error, %@, looking back, %.2fs, seconds, looking ahead, %.2fs", &v13, 0x3Eu);
    }
  }

  [RTCurrentMapItemProvider logMapItems:*(a1 + 32) prestring:@"Outputted MapItems"];
  v10 = *(a1 + 64);
  v9 = *(a1 + 72);
  v11 = *(a1 + 56);
  v12 = [RTCurrentMapItemProvider convertMapItemsToPredictedLocationsOfInterest:*(a1 + 32)];
  (*(v9 + 16))(v9, v11, v10, v12, *(a1 + 48));
}

- (void)setMonitorVisits:(BOOL)visits
{
  if (self->_monitorVisits != visits)
  {
    self->_monitorVisits = visits;
    visitManager = self->_visitManager;
    if (visits)
    {
      v6 = +[(RTNotification *)RTVisitManagerVisitIncidentNotification];
      [(RTNotifier *)visitManager addObserver:self selector:sel_onVisitManagerNotification_ name:?];
    }

    else
    {
      v6 = +[(RTNotification *)RTVisitManagerVisitIncidentNotification];
      [(RTNotifier *)visitManager removeObserver:self fromNotification:?];
    }
  }
}

- (void)startMonitoringVisitsWithReply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    [(RTDaemonClient *)self setMonitorVisits:1];
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v6, 2u);
    }
  }
}

- (void)stopMonitoringVisitsWithReply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    [(RTDaemonClient *)self setMonitorVisits:0];
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v6, 2u);
    }
  }
}

- (void)startLeechingVisitsWithReply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    [(RTDaemonClient *)self setLeechVisits:1];
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v6, 2u);
    }
  }
}

- (void)stopLeechingVisitsWithReply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    [(RTDaemonClient *)self setLeechVisits:0];
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v6, 2u);
    }
  }
}

- (void)setLeechVisits:(BOOL)visits
{
  if (self->_leechVisits != visits)
  {
    self->_leechVisits = visits;
    visitManager = self->_visitManager;
    if (visits)
    {
      v6 = +[(RTNotification *)RTVisitManagerLeechedVisitIncidentNotification];
      [(RTNotifier *)visitManager addObserver:self selector:sel_onVisitManagerNotification_ name:?];
    }

    else
    {
      v6 = +[(RTNotification *)RTVisitManagerLeechedVisitIncidentNotification];
      [(RTNotifier *)visitManager removeObserver:self fromNotification:?];
    }
  }
}

- (void)startLeechingLowConfidenceVisitsWithReply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    [(RTDaemonClient *)self setLeechLowConfidenceVisits:1];
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v6, 2u);
    }
  }
}

- (void)stopLeechingLowConfidenceVisitsWithReply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    [(RTDaemonClient *)self setLeechLowConfidenceVisits:0];
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v6, 2u);
    }
  }
}

- (void)setLeechLowConfidenceVisits:(BOOL)visits
{
  if (self->_leechLowConfidenceVisits != visits)
  {
    self->_leechLowConfidenceVisits = visits;
    visitManager = self->_visitManager;
    if (visits)
    {
      v6 = +[(RTNotification *)RTVisitManagerLowConfidenceVisitIncidentNotification];
      [(RTNotifier *)visitManager addObserver:self selector:sel_onVisitManagerNotification_ name:?];
    }

    else
    {
      v6 = +[(RTNotification *)RTVisitManagerLowConfidenceVisitIncidentNotification];
      [(RTNotifier *)visitManager removeObserver:self fromNotification:?];
    }
  }
}

- (void)_onVisitManagerNotification:(id)notification
{
  v24 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  name = [notificationCopy name];
  v6 = +[(RTNotification *)RTVisitManagerVisitIncidentNotification];
  v7 = [name isEqualToString:v6];

  if (v7)
  {
    if ([(RTDaemonClient *)self monitorVisits])
    {
      visitIncident = [notificationCopy visitIncident];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v9 = _rt_log_facility_get_os_log(RTLogFacilityClient);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v20 = 138740227;
          v21 = visitIncident;
          v22 = 2112;
          selfCopy3 = self;
          _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "sending visit, %{sensitive}@, to client, %@", &v20, 0x16u);
        }
      }

      xpcConnection = [(RTDaemonClient *)self xpcConnection];
      remoteObjectProxy = [xpcConnection remoteObjectProxy];
      [remoteObjectProxy onVisit:visitIncident withError:0];
LABEL_22:
    }
  }

  else
  {
    name2 = [notificationCopy name];
    v13 = +[(RTNotification *)RTVisitManagerLeechedVisitIncidentNotification];
    v14 = [name2 isEqualToString:v13];

    if (v14)
    {
      if ([(RTDaemonClient *)self leechVisits])
      {
        visitIncident = [notificationCopy visitIncident];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v15 = _rt_log_facility_get_os_log(RTLogFacilityClient);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v20 = 138740227;
            v21 = visitIncident;
            v22 = 2112;
            selfCopy3 = self;
            _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "sending leeched visit, %{sensitive}@, to client, %@", &v20, 0x16u);
          }
        }

        xpcConnection = [(RTDaemonClient *)self xpcConnection];
        remoteObjectProxy = [xpcConnection remoteObjectProxy];
        [remoteObjectProxy onLeechedVisit:visitIncident withError:0];
        goto LABEL_22;
      }
    }

    else
    {
      name3 = [notificationCopy name];
      v17 = +[(RTNotification *)RTVisitManagerLowConfidenceVisitIncidentNotification];
      v18 = [name3 isEqualToString:v17];

      if (v18 && [(RTDaemonClient *)self leechLowConfidenceVisits])
      {
        visitIncident = [notificationCopy visitIncident];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v19 = _rt_log_facility_get_os_log(RTLogFacilityClient);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = 138740227;
            v21 = visitIncident;
            v22 = 2112;
            selfCopy3 = self;
            _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "sending leeched low conf visit, %{sensitive}@, to client, %@", &v20, 0x16u);
          }
        }

        xpcConnection = [(RTDaemonClient *)self xpcConnection];
        remoteObjectProxy = [xpcConnection remoteObjectProxy];
        [remoteObjectProxy onLeechedLowConfidenceVisit:visitIncident withError:0];
        goto LABEL_22;
      }
    }
  }
}

- (void)onVisitManagerNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTDaemonClient *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__RTDaemonClient_onVisitManagerNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)startMonitoringPlaceInferencesWithOptions:(id)options reply:(id)reply
{
  v15[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  replyCopy = reply;
  if (replyCopy)
  {
    if ([optionsCopy fidelityPolicy])
    {
      v8 = MEMORY[0x277CCA9B8];
      v9 = *MEMORY[0x277D01448];
      v14 = *MEMORY[0x277CCA450];
      v15[0] = @"invalid fidelity policy passed. Only Local is accepted";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      v11 = [v8 errorWithDomain:v9 code:7 userInfo:v10];
      replyCopy[2](replyCopy, v11);
    }

    else
    {
      [(RTDaemonClient *)self setMonitorPlaceInferences:1];
      replyCopy[2](replyCopy, 0);
    }
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", &v13, 2u);
    }
  }
}

- (void)stopMonitoringPlaceInferencesWithReply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    [(RTDaemonClient *)self setMonitorPlaceInferences:0];
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v6, 2u);
    }
  }
}

- (void)setMonitorPlaceInferences:(BOOL)inferences
{
  if (self->_monitorPlaceInferences != inferences)
  {
    self->_monitorPlaceInferences = inferences;
    locationContextManager = self->_locationContextManager;
    if (inferences)
    {
      v6 = +[(RTNotification *)RTLocationContextManagerPlaceInferencesNotification];
      [(RTNotifier *)locationContextManager addObserver:self selector:sel_onLocationContextManagerNotification_ name:?];
    }

    else
    {
      v6 = +[(RTNotification *)RTLocationContextManagerPlaceInferencesNotification];
      [(RTNotifier *)locationContextManager removeObserver:self fromNotification:?];
    }
  }
}

- (void)onLocationContextManagerNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTDaemonClient *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__RTDaemonClient_onLocationContextManagerNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)_onLocationContextManagerNotification:(id)notification
{
  v24 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  name = [notificationCopy name];
  v7 = +[(RTNotification *)RTLocationContextManagerPlaceInferencesNotification];
  v8 = [name isEqualToString:v7];

  if (v8 && [(RTDaemonClient *)self monitorPlaceInferences])
  {
    placeInferences = [notificationCopy placeInferences];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = NSStringFromSelector(a2);
        v16 = 138413059;
        v17 = v12;
        v18 = 2112;
        v19 = v13;
        v20 = 2117;
        v21 = placeInferences;
        v22 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, %@, sending place inferences, %{sensitive}@, to client, %@", &v16, 0x2Au);
      }
    }

    xpcConnection = [(RTDaemonClient *)self xpcConnection];
    remoteObjectProxy = [xpcConnection remoteObjectProxy];
    [remoteObjectProxy onPlaceInferences:placeInferences error:0];
  }
}

+ (id)filterVisits:(id)visits executable:(id)executable
{
  v14[10] = *MEMORY[0x277D85DE8];
  visitsCopy = visits;
  v14[0] = @"locationd";
  v14[1] = @"wedge";
  v14[2] = @"loctool";
  v14[3] = @"xctest";
  v14[4] = @"coreautomationd";
  v14[5] = @"AirWave";
  v14[6] = @"Routine";
  v14[7] = @"momentsd";
  v14[8] = @"MomentsUIService";
  v14[9] = @"poser";
  v6 = MEMORY[0x277CBEA60];
  executableCopy = executable;
  v8 = [v6 arrayWithObjects:v14 count:10];
  LODWORD(v6) = [v8 containsObject:executableCopy];

  if (v6 || ([visitsCopy lastObject], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "type"), v9, v10 != 1))
  {
    v12 = visitsCopy;
  }

  else
  {
    v11 = [visitsCopy mutableCopy];
    [v11 removeLastObject];
    v12 = [v11 copy];
  }

  return v12;
}

- (void)fetchStoredVisitsWithOptions:(id)options reply:(id)reply
{
  v19 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  replyCopy = reply;
  if (replyCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityClient);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v12 = NSStringFromSelector(a2);
        *buf = 138412546;
        v16 = v12;
        v17 = 2112;
        v18 = optionsCopy;
        _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "%@, options, %@", buf, 0x16u);
      }
    }

    visitConsolidator = self->_visitConsolidator;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __53__RTDaemonClient_fetchStoredVisitsWithOptions_reply___block_invoke;
    v13[3] = &unk_2788C5558;
    v13[4] = self;
    v14 = replyCopy;
    [(RTVisitConsolidator *)visitConsolidator fetchStoredVisitsWithOptions:optionsCopy handler:v13];
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __53__RTDaemonClient_fetchStoredVisitsWithOptions_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__RTDaemonClient_fetchStoredVisitsWithOptions_reply___block_invoke_2;
  v11[3] = &unk_2788C5698;
  v8 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v5;
  v13 = v6;
  v14 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, v11);
}

void __53__RTDaemonClient_fetchStoredVisitsWithOptions_reply___block_invoke_2(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) executableName];
  v5 = [v2 filterVisits:v3 executable:v4];

  (*(*(a1 + 56) + 16))();
}

- (void)processHindsightVisitsWithReply:(id)reply
{
  replyCopy = reply;
  v6 = replyCopy;
  if (replyCopy)
  {
    learnedLocationManager = self->_learnedLocationManager;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __50__RTDaemonClient_processHindsightVisitsWithReply___block_invoke;
    v9[3] = &unk_2788C56C0;
    v9[4] = self;
    v11 = a2;
    v10 = replyCopy;
    [(RTLearnedLocationManager *)learnedLocationManager trainForReason:2 mode:2 handler:v9];
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __50__RTDaemonClient_processHindsightVisitsWithReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__RTDaemonClient_processHindsightVisitsWithReply___block_invoke_2;
  block[3] = &unk_2788C4C20;
  block[4] = *(a1 + 32);
  v9 = v3;
  v7 = *(a1 + 40);
  v5 = v7;
  v10 = v7;
  v6 = v3;
  dispatch_async(v4, block);
}

uint64_t __50__RTDaemonClient_processHindsightVisitsWithReply___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 56));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = 138412802;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, reply to client, %@, error, %@", &v7, 0x20u);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)fetchPathToDiagnosticFilesWithOptions:(id)options reply:(id)reply
{
  optionsCopy = options;
  replyCopy = reply;
  if (replyCopy)
  {
    diagnostics = self->_diagnostics;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __62__RTDaemonClient_fetchPathToDiagnosticFilesWithOptions_reply___block_invoke;
    v11[3] = &unk_2788C5710;
    v11[4] = self;
    v14 = a2;
    v12 = optionsCopy;
    v13 = replyCopy;
    [(RTDiagnostics *)diagnostics fetchPathToDiagnosticFilesWithOptions:v12 handler:v11];
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __62__RTDaemonClient_fetchPathToDiagnosticFilesWithOptions_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__RTDaemonClient_fetchPathToDiagnosticFilesWithOptions_reply___block_invoke_2;
  v12[3] = &unk_2788C56E8;
  v18 = *(a1 + 56);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v5;
  v14 = v8;
  v15 = v9;
  v16 = v6;
  v17 = *(a1 + 48);
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, v12);
}

uint64_t __62__RTDaemonClient_fetchPathToDiagnosticFilesWithOptions_reply___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 72));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v7 = *(a1 + 56);
      v9 = 138413314;
      v10 = v3;
      v11 = 2112;
      v12 = v4;
      v13 = 2112;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, sending path to diagnostic files, %@, to client, %@, options, %@, error, %@", &v9, 0x34u);
    }
  }

  return (*(*(a1 + 64) + 16))();
}

- (void)onAuthorizationNotification:(id)notification
{
  v27 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  name = [notificationCopy name];
  v7 = +[(RTNotification *)RTAuthorizationManagerNotificationRoutineEnabled];
  v8 = [name isEqualToString:v7];

  if (v8)
  {
    -[RTDaemonClient setEnabled:](self, "setEnabled:", [notificationCopy enabled]);
  }

  else
  {
    name2 = [notificationCopy name];
    v10 = +[(RTNotification *)RTAuthorizationManagerNotificationConsoleUserDidChange];
    v11 = [name2 isEqualToString:v10];

    if (v11)
    {
      v12 = notificationCopy;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v13 = _rt_log_facility_get_os_log(RTLogFacilityClient);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = NSStringFromSelector(a2);
          if ([(RTDaemonClient *)self targetUserSession])
          {
            v15 = @"YES";
          }

          else
          {
            v15 = @"NO";
          }

          *v20 = 138413058;
          if ([v12 activeUser])
          {
            v16 = @"YES";
          }

          else
          {
            v16 = @"NO";
          }

          *&v20[4] = v14;
          v21 = 2112;
          selfCopy2 = self;
          v23 = 2112;
          v24 = v15;
          v25 = 2112;
          v26 = v16;
          _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@, client, %@, targetUserSesssion, %@, activeUser, %@", v20, 0x2Au);
        }
      }

      if (-[RTDaemonClient targetUserSession](self, "targetUserSession", *v20) && ([v12 activeUser] & 1) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v17 = _rt_log_facility_get_os_log(RTLogFacilityClient);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = NSStringFromSelector(a2);
            *v20 = 138412546;
            *&v20[4] = v18;
            v21 = 2112;
            selfCopy2 = self;
            _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "%@, invalidating connection to client, %@", v20, 0x16u);
          }
        }

        xpcConnection = [(RTDaemonClient *)self xpcConnection];
        [xpcConnection invalidate];
      }
    }
  }
}

- (void)shutdown
{
  queue = [(RTDaemonClient *)self queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __26__RTDaemonClient_shutdown__block_invoke;
  v5[3] = &unk_2788C52E8;
  v5[4] = self;
  v5[5] = a2;
  dispatch_async(queue, v5);
}

void __26__RTDaemonClient_shutdown__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 40));
      v4 = *(a1 + 32);
      v10 = 138412546;
      v11 = v3;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@ %@", &v10, 0x16u);
    }
  }

  v5 = [*(a1 + 32) deviceLocationPredictor];
  [v5 removeObserver:*(a1 + 32)];

  v6 = [*(a1 + 32) authorizationManager];
  [v6 removeObserver:*(a1 + 32)];

  v7 = [*(a1 + 32) scenarioTriggerManager];
  [v7 removeObserver:*(a1 + 32)];

  v8 = [*(a1 + 32) vehicleEventRegistrar];
  [v8 stopMonitoringVehicleEvents];

  v9 = [*(a1 + 32) visitManager];
  [v9 removeObserver:*(a1 + 32)];
}

- (void)fetchLocationOfInterestForRegion:(id)region reply:(id)reply
{
  regionCopy = region;
  replyCopy = reply;
  if (replyCopy)
  {
    learnedLocationManager = self->_learnedLocationManager;
    v10 = [objc_alloc(MEMORY[0x277D01160]) initWithCLCircularRegion:regionCopy];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __57__RTDaemonClient_fetchLocationOfInterestForRegion_reply___block_invoke;
    v12[3] = &unk_2788C5738;
    v12[4] = self;
    v15 = a2;
    v13 = regionCopy;
    v14 = replyCopy;
    [(RTLearnedLocationManager *)learnedLocationManager fetchLocationOfInterestForRegion:v10 handler:v12];
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __57__RTDaemonClient_fetchLocationOfInterestForRegion_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__RTDaemonClient_fetchLocationOfInterestForRegion_reply___block_invoke_2;
  v12[3] = &unk_2788C56E8;
  v18 = *(a1 + 56);
  v13 = v5;
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v14 = v8;
  v15 = v9;
  v16 = v6;
  v17 = *(a1 + 48);
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, v12);
}

void __57__RTDaemonClient_fetchLocationOfInterestForRegion_reply___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 72));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v7 = *(a1 + 56);
      v10 = 138413315;
      v11 = v3;
      v12 = 2117;
      v13 = v4;
      v14 = 2117;
      v15 = v5;
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, sending location of interest, %{sensitive}@, matching region, %{sensitive}@, to client, %@, error, %@", &v10, 0x34u);
    }
  }

  v8 = *(a1 + 64);
  v9 = [objc_alloc(MEMORY[0x277D01170]) initWithLearnedLocationOfInterest:*(a1 + 32)];
  (*(v8 + 16))(v8, v9, *(a1 + 56));
}

- (void)fetchLocationOfInterestAtLocation:(id)location reply:(id)reply
{
  locationCopy = location;
  replyCopy = reply;
  if (replyCopy)
  {
    learnedLocationManager = self->_learnedLocationManager;
    v10 = [objc_alloc(MEMORY[0x277D01160]) initWithCLLocation:locationCopy];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __58__RTDaemonClient_fetchLocationOfInterestAtLocation_reply___block_invoke;
    v12[3] = &unk_2788C5738;
    v12[4] = self;
    v15 = a2;
    v13 = locationCopy;
    v14 = replyCopy;
    [(RTLearnedLocationManager *)learnedLocationManager fetchLocationOfInterestAtLocation:v10 handler:v12];
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __58__RTDaemonClient_fetchLocationOfInterestAtLocation_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__RTDaemonClient_fetchLocationOfInterestAtLocation_reply___block_invoke_2;
  v12[3] = &unk_2788C56E8;
  v18 = *(a1 + 56);
  v13 = v5;
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v14 = v8;
  v15 = v9;
  v16 = v6;
  v17 = *(a1 + 48);
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, v12);
}

void __58__RTDaemonClient_fetchLocationOfInterestAtLocation_reply___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 72));
      v4 = *(a1 + 32);
      v5 = [*(a1 + 40) coordinateToString];
      v6 = *(a1 + 48);
      v7 = *(a1 + 56);
      v10 = 138413315;
      v11 = v3;
      v12 = 2117;
      v13 = v4;
      v14 = 2117;
      v15 = v5;
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, sending location of interest, %{sensitive}@, at location, %{sensitive}@, to client, %@, error, %@", &v10, 0x34u);
    }
  }

  v8 = *(a1 + 64);
  v9 = [objc_alloc(MEMORY[0x277D01170]) initWithLearnedLocationOfInterest:*(a1 + 32)];
  (*(v8 + 16))(v8, v9, *(a1 + 56));
}

- (void)fetchLocationOfInterestWithIdentifier:(id)identifier reply:(id)reply
{
  identifierCopy = identifier;
  replyCopy = reply;
  if (replyCopy)
  {
    learnedLocationManager = self->_learnedLocationManager;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __62__RTDaemonClient_fetchLocationOfInterestWithIdentifier_reply___block_invoke;
    v11[3] = &unk_2788C5738;
    v11[4] = self;
    v14 = a2;
    v12 = identifierCopy;
    v13 = replyCopy;
    [(RTLearnedLocationManager *)learnedLocationManager fetchLocationOfInterestWithIdentifier:v12 handler:v11];
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __62__RTDaemonClient_fetchLocationOfInterestWithIdentifier_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__RTDaemonClient_fetchLocationOfInterestWithIdentifier_reply___block_invoke_2;
  v12[3] = &unk_2788C56E8;
  v18 = *(a1 + 56);
  v13 = v5;
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v14 = v8;
  v15 = v9;
  v16 = v6;
  v17 = *(a1 + 48);
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, v12);
}

void __62__RTDaemonClient_fetchLocationOfInterestWithIdentifier_reply___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 72));
      v4 = *(a1 + 32);
      v5 = [*(a1 + 40) UUIDString];
      v6 = *(a1 + 48);
      v7 = *(a1 + 56);
      v10 = 138413315;
      v11 = v3;
      v12 = 2117;
      v13 = v4;
      v14 = 2112;
      v15 = v5;
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, sending location of interest, %{sensitive}@, with identifier, %@, to client, %@, error, %@", &v10, 0x34u);
    }
  }

  v8 = *(a1 + 64);
  v9 = [objc_alloc(MEMORY[0x277D01170]) initWithLearnedLocationOfInterest:*(a1 + 32)];
  (*(v8 + 16))(v8, v9, *(a1 + 56));
}

- (void)fetchLocationsOfInterestVisitedBetweenStartDate:(id)date endDate:(id)endDate reply:(id)reply
{
  v30[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  replyCopy = reply;
  if (replyCopy)
  {
    if (dateCopy)
    {
      if (endDateCopy)
      {
        if ([dateCopy compare:endDateCopy] != 1)
        {
          learnedLocationManager = self->_learnedLocationManager;
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __80__RTDaemonClient_fetchLocationsOfInterestVisitedBetweenStartDate_endDate_reply___block_invoke;
          v21[3] = &unk_2788C5508;
          v21[4] = self;
          v23 = a2;
          v22 = replyCopy;
          [(RTLearnedLocationManager *)learnedLocationManager fetchLocationsOfInterestVisitedBetweenStartDate:dateCopy endDate:endDateCopy handler:v21];

          goto LABEL_12;
        }

        v12 = MEMORY[0x277CCA9B8];
        v13 = *MEMORY[0x277D01448];
        v25 = *MEMORY[0x277CCA450];
        v26 = @"endDate must be greater than or equal to startDate";
        v14 = MEMORY[0x277CBEAC0];
        v15 = &v26;
        v16 = &v25;
      }

      else
      {
        v12 = MEMORY[0x277CCA9B8];
        v13 = *MEMORY[0x277D01448];
        v27 = *MEMORY[0x277CCA450];
        v28 = @"endDate is required";
        v14 = MEMORY[0x277CBEAC0];
        v15 = &v28;
        v16 = &v27;
      }
    }

    else
    {
      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277D01448];
      v29 = *MEMORY[0x277CCA450];
      v30[0] = @"startDate is required";
      v14 = MEMORY[0x277CBEAC0];
      v15 = v30;
      v16 = &v29;
    }

    v18 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:1];
    v19 = [v12 errorWithDomain:v13 code:7 userInfo:v18];
    (*(replyCopy + 2))(replyCopy, 0, v19);
  }

  else
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }

LABEL_12:
}

void __80__RTDaemonClient_fetchLocationsOfInterestVisitedBetweenStartDate_endDate_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__RTDaemonClient_fetchLocationsOfInterestVisitedBetweenStartDate_endDate_reply___block_invoke_2;
  block[3] = &unk_2788C5110;
  v8 = *(a1 + 32);
  v14 = v5;
  v15 = v8;
  v16 = v6;
  v12 = *(a1 + 40);
  v9 = v12;
  v17 = v12;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

void __80__RTDaemonClient_fetchLocationsOfInterestVisitedBetweenStartDate_endDate_reply___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 64));
      v4 = [*(a1 + 32) count];
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      *buf = 138413058;
      v12 = v3;
      v13 = 2048;
      v14 = v4;
      v15 = 2112;
      v16 = v5;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, sending %lu locations of interest, to client, %@, error, %@", buf, 0x2Au);
    }
  }

  v7 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__RTDaemonClient_fetchLocationsOfInterestVisitedBetweenStartDate_endDate_reply___block_invoke_721;
  v10[3] = &__block_descriptor_40_e44_v32__0__RTLearnedLocationOfInterest_8Q16_B24l;
  v10[4] = *(a1 + 64);
  [v7 enumerateObjectsUsingBlock:v10];
  v8 = *(a1 + 56);
  v9 = [MEMORY[0x277D01170] locationsOfInterestFromLearnedLocationsOfInterest:*(a1 + 32)];
  (*(v8 + 16))(v8, v9, *(a1 + 48));
}

void __80__RTDaemonClient_fetchLocationsOfInterestVisitedBetweenStartDate_endDate_reply___block_invoke_721(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(*(a1 + 32));
      v8 = 138412803;
      v9 = v7;
      v10 = 2048;
      v11 = a3;
      v12 = 2117;
      v13 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, idx, %lu, location of interest, %{sensitive}@", &v8, 0x20u);
    }
  }
}

- (void)fetchTransitionsBetweenStartDate:(id)date endDate:(id)endDate reply:(id)reply
{
  dateCopy = date;
  endDateCopy = endDate;
  replyCopy = reply;
  if (replyCopy)
  {
    v12 = dispatch_group_create();
    v13 = v12;
    *buf = 0;
    v28 = buf;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__11;
    v31 = __Block_byref_object_dispose__11;
    v32 = 0;
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x3032000000;
    v25[3] = __Block_byref_object_copy__11;
    v25[4] = __Block_byref_object_dispose__11;
    v26 = 0;
    if (self->_learnedLocationManager)
    {
      dispatch_group_enter(v12);
      learnedLocationManager = self->_learnedLocationManager;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __65__RTDaemonClient_fetchTransitionsBetweenStartDate_endDate_reply___block_invoke;
      v21[3] = &unk_2788C4490;
      v23 = buf;
      v24 = v25;
      v22 = v13;
      [(RTLearnedLocationManager *)learnedLocationManager fetchTransitionsBetweenStartDate:dateCopy endDate:endDateCopy handler:v21];
    }

    queue = [(RTDaemonClient *)self queue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __65__RTDaemonClient_fetchTransitionsBetweenStartDate_endDate_reply___block_invoke_2;
    v16[3] = &unk_2788C5780;
    v19 = buf;
    v20 = a2;
    v18 = v25;
    v16[4] = self;
    v17 = replyCopy;
    dispatch_group_notify(v13, queue, v16);

    _Block_object_dispose(v25, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __65__RTDaemonClient_fetchTransitionsBetweenStartDate_endDate_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void __65__RTDaemonClient_fetchTransitionsBetweenStartDate_endDate_reply___block_invoke_2(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = *(*(*(a1 + 48) + 8) + 40);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [*(*(*(a1 + 56) + 8) + 40) count];
      *buf = 134218242;
      v31 = v4;
      v32 = 2112;
      v33 = v2;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "Fetched %lu transitions, error, %@", buf, 0x16u);
    }
  }

  v22 = v2;
  v24 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(*(*(a1 + 56) + 8) + 40), "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v21 = a1;
  obj = *(*(*(a1 + 56) + 8) + 40);
  v5 = [obj countByEnumeratingWithState:&v26 objects:v40 count:16];
  if (v5)
  {
    v6 = v5;
    v25 = *v27;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        v9 = [MEMORY[0x277D01180] modeOfTransportationFromMotionActivityType:{objc_msgSend(v8, "predominantMotionActivityType")}];
        v10 = objc_alloc(MEMORY[0x277D01180]);
        v11 = [v8 identifier];
        v12 = [v8 startDate];
        v13 = [v8 stopDate];
        v14 = [v8 visitIdentifierOrigin];
        v15 = [v8 visitIdentifierDestination];
        v16 = [v10 initWithIdentifier:v11 startDate:v12 stopDate:v13 visitIdentifierOrigin:v14 visitIdentifierDestination:v15 modeOfTransportation:v9];

        if (v16)
        {
          [v24 addObject:v16];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v26 objects:v40 count:16];
    }

    while (v6);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = NSStringFromSelector(*(v21 + 64));
      v19 = [v24 count];
      v20 = *(v21 + 32);
      *buf = 138413315;
      v31 = v18;
      v32 = 2048;
      v33 = v19;
      v34 = 2117;
      v35 = v24;
      v36 = 2112;
      v37 = v20;
      v38 = 2112;
      v39 = v22;
      _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "%@, sending %lu transitions, %{sensitive}@, to client, %@, error, %@", buf, 0x34u);
    }
  }

  (*(*(v21 + 40) + 16))();
}

- (void)fetchFinerGranularityInferredMapItemWithVisitIdentifier:(id)identifier reply:(id)reply
{
  identifierCopy = identifier;
  replyCopy = reply;
  if (replyCopy)
  {
    learnedLocationManager = self->_learnedLocationManager;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __80__RTDaemonClient_fetchFinerGranularityInferredMapItemWithVisitIdentifier_reply___block_invoke;
    v11[3] = &unk_2788C57A8;
    v11[4] = self;
    v14 = a2;
    v12 = identifierCopy;
    v13 = replyCopy;
    [(RTLearnedLocationManager *)learnedLocationManager fetchFinerGranularityInferredMapItemWithVisitIdentifier:v12 handler:v11];
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __80__RTDaemonClient_fetchFinerGranularityInferredMapItemWithVisitIdentifier_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __80__RTDaemonClient_fetchFinerGranularityInferredMapItemWithVisitIdentifier_reply___block_invoke_2;
  v12[3] = &unk_2788C56E8;
  v8 = *(a1 + 56);
  v9 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v17 = v8;
  v13 = v9;
  v14 = v5;
  v15 = v6;
  v16 = *(a1 + 48);
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, v12);
}

uint64_t __80__RTDaemonClient_fetchFinerGranularityInferredMapItemWithVisitIdentifier_reply___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = objc_opt_class();
      v4 = NSStringFromClass(v3);
      v5 = NSStringFromSelector(*(a1 + 72));
      v6 = [*(a1 + 40) UUIDString];
      v7 = *(a1 + 32);
      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      v11 = 138413570;
      v12 = v4;
      v13 = 2112;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v7;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, %@, sending finer granularity inferredMapItem, %@, for visit identifier, %@, to client, %@, error, %@", &v11, 0x3Eu);
    }
  }

  return (*(*(a1 + 64) + 16))();
}

- (void)setHintForRegionState:(int64_t)state significantRegion:(id)region reply:(id)reply
{
  v27[1] = *MEMORY[0x277D85DE8];
  regionCopy = region;
  replyCopy = reply;
  if (!state)
  {
    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277D01448];
    v18 = *MEMORY[0x277CCA450];
    v26 = *MEMORY[0x277CCA450];
    v27[0] = @"Region State Unknown. Unable to determine what type of hint we need to inject";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v20 = [v16 errorWithDomain:v17 code:0 userInfo:v19];
    replyCopy[2](replyCopy, 0, v20);

LABEL_9:
    v21 = MEMORY[0x277CCA9B8];
    v24 = v18;
    v25 = @"Region State unsuported yet";
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v23 = [v21 errorWithDomain:v17 code:0 userInfo:v22];
    replyCopy[2](replyCopy, 0, v23);

    goto LABEL_10;
  }

  if (state == 1)
  {
    hintManager = self->_hintManager;
    v11 = [objc_alloc(MEMORY[0x277D01160]) initWithCLCircularRegion:regionCopy];
    v12 = hintManager;
    v13 = v11;
    v14 = 9;
    goto LABEL_6;
  }

  if (state != 2)
  {
    v17 = *MEMORY[0x277D01448];
    v18 = *MEMORY[0x277CCA450];
    goto LABEL_9;
  }

  v10 = self->_hintManager;
  v11 = [objc_alloc(MEMORY[0x277D01160]) initWithCLCircularRegion:regionCopy];
  v12 = v10;
  v13 = v11;
  v14 = 10;
LABEL_6:
  [(RTHintManager *)v12 storeHintSignificantRegion:v13 hintSource:v14 handler:replyCopy];

LABEL_10:
}

- (void)startMonitoringScenarioTriggerOfType:(unint64_t)type reply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    [(RTDaemonClientRegistrarScenarioTrigger *)self->_scenarioTriggerRegistrar startMonitoringForScenarioTriggerType:type];
    v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self->_scenarioTriggerRegistrar requiringSecureCoding:1 error:0];
    restorationData = [(RTDaemonClient *)self restorationData];
    [restorationData setObject:v7 forKey:@"scenarioTriggerRegistrar"];

    clientManagerDelegate = [(RTDaemonClient *)self clientManagerDelegate];
    [clientManagerDelegate saveDaemonClient:self];

    replyCopy[2](replyCopy, 0);
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v11, 2u);
    }
  }
}

- (void)stopMonitoringScenarioTriggerOfType:(unint64_t)type reply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    [(RTDaemonClientRegistrarScenarioTrigger *)self->_scenarioTriggerRegistrar stopMonitoringForScenarioTriggerType:type];
    v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self->_scenarioTriggerRegistrar requiringSecureCoding:1 error:0];
    restorationData = [(RTDaemonClient *)self restorationData];
    [restorationData setObject:v7 forKey:@"scenarioTriggerRegistrar"];

    clientManagerDelegate = [(RTDaemonClient *)self clientManagerDelegate];
    [clientManagerDelegate saveDaemonClient:self];

    replyCopy[2](replyCopy, 0);
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v11, 2u);
    }
  }
}

- (void)fetchMonitoredScenarioTriggerTypesWithReply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    scenarioTriggerRegistrar = self->_scenarioTriggerRegistrar;
    if (scenarioTriggerRegistrar)
    {
      monitoredScenarioTriggerTypes = [(RTDaemonClientRegistrarScenarioTrigger *)scenarioTriggerRegistrar monitoredScenarioTriggerTypes];
    }

    else
    {
      monitoredScenarioTriggerTypes = 0;
    }

    replyCopy[2](replyCopy, monitoredScenarioTriggerTypes, 0);
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v8, 2u);
    }
  }
}

- (void)scenarioTriggerRegistrar:(id)registrar didReceiveScenarioTriggers:(id)triggers error:(id)error
{
  v21 = *MEMORY[0x277D85DE8];
  triggersCopy = triggers;
  errorCopy = error;
  if ([(RTDaemonClient *)self enabled]&& [(RTDaemonClient *)self supported])
  {
    if ([triggersCopy count])
    {
      queue = [(RTDaemonClient *)self queue];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __76__RTDaemonClient_scenarioTriggerRegistrar_didReceiveScenarioTriggers_error___block_invoke;
      v13[3] = &unk_2788C4C70;
      v13[4] = self;
      v14 = triggersCopy;
      v15 = errorCopy;
      v16 = a2;
      dispatch_async(queue, v13);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityClient);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "Dropping callback to scenario trigger monitor handler because there are no triggers.", buf, 2u);
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      enabled = [(RTDaemonClient *)self enabled];
      v19 = 1024;
      supported = [(RTDaemonClient *)self supported];
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "Dropping callback to scenario trigger monitor handler because routine is either not enabled %d or supported %d.", buf, 0xEu);
    }
  }
}

void __76__RTDaemonClient_scenarioTriggerRegistrar_didReceiveScenarioTriggers_error___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) launchClient];
  v2 = [*(a1 + 32) xpcConnection];

  v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v3)
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityClient);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 32);
        v5 = *(a1 + 40);
        *buf = 138412546;
        v32 = v5;
        v33 = 2112;
        v34 = v6;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "sending scenario triggers, %@, to client, %@", buf, 0x16u);
      }
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = *(a1 + 40);
    v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v8)
    {
      v9 = *v27;
      do
      {
        v10 = 0;
        do
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v26 + 1) + 8 * v10);
          v12 = [*(a1 + 32) xpcConnection];
          v13 = [v12 remoteObjectProxy];
          [v13 onScenarioTrigger:v11 withError:0];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v8);
    }
  }

  else
  {
    if (v3)
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityClient);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = *(a1 + 32);
        v16 = *(a1 + 40);
        *buf = 138412546;
        v32 = v15;
        v33 = 2112;
        v34 = v16;
        _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "client, %@, not connected. buffering scenario triggers, %@", buf, 0x16u);
      }
    }

    objc_initWeak(buf, *(a1 + 32));
    v17 = *(*(a1 + 32) + 88);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __76__RTDaemonClient_scenarioTriggerRegistrar_didReceiveScenarioTriggers_error___block_invoke_732;
    v22[3] = &unk_2788C57D0;
    objc_copyWeak(&v25, buf);
    v23 = *(a1 + 40);
    v24 = *(a1 + 48);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __76__RTDaemonClient_scenarioTriggerRegistrar_didReceiveScenarioTriggers_error___block_invoke_733;
    v19[3] = &unk_2788C57F8;
    objc_copyWeak(&v21, buf);
    v20 = *(a1 + 48);
    v18 = NSStringFromSelector(*(a1 + 56));
    [v17 addPendingScenarioTriggerBlock:v22 failBlock:v19 description:v18];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }
}

void __76__RTDaemonClient_scenarioTriggerRegistrar_didReceiveScenarioTriggers_error___block_invoke_732(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained scenarioTriggerRegistrar:WeakRetained[11] didReceiveScenarioTriggers:*(a1 + 32) error:*(a1 + 40)];
  }

  else
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "nil reference to self, returning from scenario trigger block", v5, 2u);
    }
  }
}

void __76__RTDaemonClient_scenarioTriggerRegistrar_didReceiveScenarioTriggers_error___block_invoke_733(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = MEMORY[0x277CCA9B8];
    v4 = *MEMORY[0x277D01448];
    v13 = *MEMORY[0x277CCA450];
    v14[0] = @"Buffered scenario trigger failed.";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v6 = [v3 errorWithDomain:v4 code:0 userInfo:v5];

    v7 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = [v6 localizedDescription];
      v11 = 138412290;
      v12 = v10;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@", &v11, 0xCu);
    }

    v8 = [WeakRetained xpcConnection];
    v9 = [v8 remoteObjectProxy];
    [v9 onScenarioTrigger:0 withError:*(a1 + 32)];
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11) = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "nil reference to self, returning from scenario trigger block", &v11, 2u);
    }
  }
}

- (void)fetchPredictedExitDatesFromLocation:(id)location onDate:(id)date reply:(id)reply
{
  locationCopy = location;
  dateCopy = date;
  replyCopy = reply;
  if (replyCopy)
  {
    v11 = [objc_alloc(MEMORY[0x277D01160]) initWithCLLocation:locationCopy];
    deviceLocationPredictor = self->_deviceLocationPredictor;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __67__RTDaemonClient_fetchPredictedExitDatesFromLocation_onDate_reply___block_invoke;
    v13[3] = &unk_2788C5848;
    v13[4] = self;
    v14 = locationCopy;
    v15 = dateCopy;
    v16 = replyCopy;
    [(RTDeviceLocationPredictor *)deviceLocationPredictor fetchPredictedExitDatesFromLocation:v11 onDate:v15 withHandler:v13];
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __67__RTDaemonClient_fetchPredictedExitDatesFromLocation_onDate_reply___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__RTDaemonClient_fetchPredictedExitDatesFromLocation_onDate_reply___block_invoke_2;
  v12[3] = &unk_2788C5820;
  v13 = v5;
  v14 = a1[5];
  v8 = a1[6];
  v9 = a1[4];
  v15 = v8;
  v16 = v9;
  v17 = v6;
  v18 = a1[7];
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, v12);
}

uint64_t __67__RTDaemonClient_fetchPredictedExitDatesFromLocation_onDate_reply___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 32) count];
      v4 = [*(a1 + 40) coordinateToString];
      v5 = [*(a1 + 48) stringFromDate];
      v6 = *(a1 + 56);
      v7 = *(a1 + 64);
      v9 = 134219011;
      v10 = v3;
      v11 = 2117;
      v12 = v4;
      v13 = 2112;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "sending %lu predicted exit dates from location, %{sensitive}@, on date, %@, to client, %@, error, %@", &v9, 0x34u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    [*(a1 + 32) enumerateObjectsUsingBlock:&__block_literal_global_739];
  }

  return (*(*(a1 + 72) + 16))();
}

void __67__RTDaemonClient_fetchPredictedExitDatesFromLocation_onDate_reply___block_invoke_737(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 134218243;
      v7 = a3 + 1;
      v8 = 2117;
      v9 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "PD %lu, %{sensitive}@", &v6, 0x16u);
    }
  }
}

- (void)fetchPredictedLocationsOfInterestBetweenStartDate:(id)date endDate:(id)endDate reply:(id)reply
{
  dateCopy = date;
  endDateCopy = endDate;
  replyCopy = reply;
  if (replyCopy)
  {
    deviceLocationPredictor = self->_deviceLocationPredictor;
    _clientIdentifier = [(RTDaemonClient *)self _clientIdentifier];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __82__RTDaemonClient_fetchPredictedLocationsOfInterestBetweenStartDate_endDate_reply___block_invoke;
    v14[3] = &unk_2788C5848;
    v14[4] = self;
    v15 = dateCopy;
    v16 = endDateCopy;
    v17 = replyCopy;
    [(RTDeviceLocationPredictor *)deviceLocationPredictor fetchPredictedLocationsOfInterestBetweenStartDate:v15 endDate:v16 clientIdentifier:_clientIdentifier withHandler:v14];
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __82__RTDaemonClient_fetchPredictedLocationsOfInterestBetweenStartDate_endDate_reply___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__RTDaemonClient_fetchPredictedLocationsOfInterestBetweenStartDate_endDate_reply___block_invoke_2;
  v12[3] = &unk_2788C5820;
  v13 = v5;
  v14 = a1[5];
  v8 = a1[6];
  v9 = a1[4];
  v15 = v8;
  v16 = v9;
  v17 = v6;
  v18 = a1[7];
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, v12);
}

uint64_t __82__RTDaemonClient_fetchPredictedLocationsOfInterestBetweenStartDate_endDate_reply___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 32) count];
      v4 = [*(a1 + 40) stringFromDate];
      v5 = [*(a1 + 48) stringFromDate];
      v6 = *(a1 + 56);
      v7 = *(a1 + 64);
      v9 = 134219010;
      v10 = v3;
      v11 = 2112;
      v12 = v4;
      v13 = 2112;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "sending %lu PLOIs between startDate, %@, endDate, %@, to client, %@, error, %@", &v9, 0x34u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    [*(a1 + 32) enumerateObjectsUsingBlock:&__block_literal_global_742];
  }

  return (*(*(a1 + 72) + 16))();
}

void __82__RTDaemonClient_fetchPredictedLocationsOfInterestBetweenStartDate_endDate_reply___block_invoke_740(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 134218243;
      v7 = a3 + 1;
      v8 = 2117;
      v9 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "PLOI %lu, %{sensitive}@", &v6, 0x16u);
    }
  }
}

- (void)setBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (![(NSString *)self->_bundleIdentifier isEqualToString:identifierCopy])
  {
    v4 = [identifierCopy copy];
    bundleIdentifier = self->_bundleIdentifier;
    self->_bundleIdentifier = v4;

    v6 = self->_bundleIdentifier;
    restorationData = [(RTDaemonClient *)self restorationData];
    v8 = restorationData;
    if (v6)
    {
      [restorationData setObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
    }

    else
    {
      [restorationData removeObjectForKey:@"bundleIdentifier"];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setRestorationIdentifier:(id)identifier
{
  v24 = *MEMORY[0x277D85DE8];
  if (identifier)
  {
    v4 = MEMORY[0x277CCACA8];
    identifierCopy = identifier;
    signingIdentifier = [(RTDaemonClient *)self signingIdentifier];
    identifierCopy = [v4 stringWithFormat:@"%@-%@", signingIdentifier, identifierCopy];

    restorationIdentifier = self->_restorationIdentifier;
    self->_restorationIdentifier = identifierCopy;

    restorationData = [(RTDaemonClient *)self restorationData];
    [restorationData setObject:self->_restorationIdentifier forKey:@"restorationIdentifier"];

    clientManagerDelegate = [(RTDaemonClient *)self clientManagerDelegate];
    v11 = [clientManagerDelegate handleRestorationForDaemonClient:self];

    scenarioTriggerRegistrar = [v11 scenarioTriggerRegistrar];
    if (([scenarioTriggerRegistrar invocationsPending] & 1) == 0)
    {
      vehicleEventRegistrar = [v11 vehicleEventRegistrar];
      if (![vehicleEventRegistrar invocationsPending])
      {
        predictedContextRegistrar = [v11 predictedContextRegistrar];
        invocationsPending = [predictedContextRegistrar invocationsPending];

        if ((invocationsPending & 1) == 0)
        {
LABEL_11:

          return;
        }

LABEL_6:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v14 = _rt_log_facility_get_os_log(RTLogFacilityClient);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v23 = v11;
            _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "taking process asssertion for client, %@", buf, 0xCu);
          }
        }

        xpcConnection = [v11 xpcConnection];
        processIdentifier = [xpcConnection processIdentifier];
        queue = [(RTDaemonClient *)self queue];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __43__RTDaemonClient_setRestorationIdentifier___block_invoke;
        v20[3] = &unk_2788C4EA0;
        v21 = v11;
        [RTLaunchServices createProcessAssertionForPid:processIdentifier timeout:queue queue:v20 timeoutHandler:10.0];

        goto LABEL_11;
      }
    }

    goto LABEL_6;
  }
}

void __43__RTDaemonClient_setRestorationIdentifier___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v4 = 138412290;
      v5 = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "release process assertion for client, %@", &v4, 0xCu);
    }
  }
}

- (void)setTargetUserSession:(BOOL)session
{
  self->_targetUserSession = session;
  if (session)
  {
    authorizationManager = [(RTDaemonClient *)self authorizationManager];
    v4 = +[(RTNotification *)RTAuthorizationManagerNotificationConsoleUserDidChange];
    [authorizationManager addObserver:self selector:sel_onAuthorizationNotification_ name:v4];
  }
}

- (BOOL)hasReasonToOutliveClientConnection
{
  restorationIdentifier = [(RTDaemonClient *)self restorationIdentifier];
  if (restorationIdentifier)
  {
    restorationData = [(RTDaemonClient *)self restorationData];
    v5 = [restorationData count] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __25__RTDaemonClient_restore__block_invoke_745(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "error restoring scenario trigger monitoring, %@", &v4, 0xCu);
    }
  }
}

void __25__RTDaemonClient_restore__block_invoke_748(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = _rt_log_facility_get_os_log(RTLogFacilityClient);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"OK";
    if (v2)
    {
      v4 = v2;
    }

    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_DEFAULT, "restoring people discovery monitoring %@", &v5, 0xCu);
  }
}

- (void)launchClient
{
  bundleIdentifier = [(RTDaemonClient *)self bundleIdentifier];
  if (bundleIdentifier)
  {
    v4 = bundleIdentifier;
    restorationIdentifier = [(RTDaemonClient *)self restorationIdentifier];

    if (restorationIdentifier)
    {
      bundleIdentifier2 = [(RTDaemonClient *)self bundleIdentifier];
      restorationIdentifier2 = [(RTDaemonClient *)self restorationIdentifier];
      eventAgentManager = self->_eventAgentManager;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __30__RTDaemonClient_launchClient__block_invoke;
      v9[3] = &unk_2788C4730;
      v9[4] = self;
      [RTLaunchServices launchClientWithBundleIdentifier:bundleIdentifier2 restorationIdentifier:restorationIdentifier2 eventAgentManager:eventAgentManager handler:v9];
    }
  }
}

void __30__RTDaemonClient_launchClient__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__RTDaemonClient_launchClient__block_invoke_2;
  v6[3] = &unk_2788C4A70;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __30__RTDaemonClient_launchClient__block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 40);
      v5 = 138412546;
      v6 = v3;
      v7 = 2112;
      v8 = v4;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "launched client, %@, error, %@", &v5, 0x16u);
    }
  }
}

- (void)fetchLastVehicleEventsWithReply:(id)reply
{
  replyCopy = reply;
  v5 = replyCopy;
  if (replyCopy)
  {
    vehicleLocationProvider = self->_vehicleLocationProvider;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __50__RTDaemonClient_fetchLastVehicleEventsWithReply___block_invoke;
    v8[3] = &unk_2788C5558;
    v8[4] = self;
    v9 = replyCopy;
    [(RTVehicleLocationProvider *)vehicleLocationProvider fetchLastVehicleEventsWithHandler:v8];
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __50__RTDaemonClient_fetchLastVehicleEventsWithReply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__RTDaemonClient_fetchLastVehicleEventsWithReply___block_invoke_2;
  v12[3] = &unk_2788C5530;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v5;
  v14 = v8;
  v15 = v6;
  v16 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, v12);
}

uint64_t __50__RTDaemonClient_fetchLastVehicleEventsWithReply___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 32) count];
      v4 = *(a1 + 40);
      v5 = *(a1 + 48);
      v7 = 134218498;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "sending %lu vehicle parked events to client, %@, error, %@", &v7, 0x20u);
    }
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)vehicleEventAtLocation:(id)location notes:(id)notes reply:(id)reply
{
  replyCopy = reply;
  v9 = replyCopy;
  if (replyCopy)
  {
    vehicleLocationProvider = self->_vehicleLocationProvider;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __53__RTDaemonClient_vehicleEventAtLocation_notes_reply___block_invoke;
    v12[3] = &unk_2788C48C0;
    v13 = replyCopy;
    [(RTVehicleLocationProvider *)vehicleLocationProvider vehicleEventAtLocation:location notes:notes handler:v12];
    v11 = v13;
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

uint64_t __53__RTDaemonClient_vehicleEventAtLocation_notes_reply___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)clearAllVehicleEventsWithReply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    [(RTVehicleLocationProvider *)self->_vehicleLocationProvider clearAllVehicleEvents];
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v6, 2u);
    }
  }
}

- (void)updateVehicleEventWithIdentifier:(id)identifier notes:(id)notes reply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    [(RTVehicleLocationProvider *)self->_vehicleLocationProvider updateVehicleEventWithIdentifier:identifier notes:notes];
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v10, 2u);
    }
  }
}

- (void)updateVehicleEventWithIdentifier:(id)identifier photo:(id)photo reply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    [(RTVehicleLocationProvider *)self->_vehicleLocationProvider updateVehicleEventWithIdentifier:identifier photo:photo];
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v10, 2u);
    }
  }
}

- (void)updateVehicleEventWithIdentifier:(id)identifier geoMapItem:(id)item reply:(id)reply
{
  v32[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  itemCopy = item;
  replyCopy = reply;
  if (replyCopy)
  {
    if (identifierCopy)
    {
      if (itemCopy)
      {
        mapServiceManager = self->_mapServiceManager;
        uUID = [MEMORY[0x277CCAD78] UUID];
        date = [MEMORY[0x277CBEAA8] date];
        v24 = 0;
        v15 = [(RTMapServiceManager *)mapServiceManager mapItemWithIdentifier:uUID geoMapItem:itemCopy source:8 creationDate:date error:&v24];
        v16 = v24;

        if (v16)
        {
          v17 = _rt_log_facility_get_os_log(RTLogFacilityClient);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v28 = v16;
            _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }

          replyCopy[2](replyCopy, v16);
LABEL_8:

          goto LABEL_17;
        }

        if (!v15)
        {
          v20 = _rt_log_facility_get_os_log(RTLogFacilityClient);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "map item was nil, invalid parameter", buf, 2u);
          }

          v25 = *MEMORY[0x277CCA450];
          v26 = @"Map item must be non-nil.";
          v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
          v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v21];
          replyCopy[2](replyCopy, v22);

          goto LABEL_8;
        }
      }

      else
      {
        v15 = 0;
      }

      [(RTVehicleLocationProvider *)self->_vehicleLocationProvider updateVehicleEventWithIdentifier:identifierCopy mapItem:v15];
      replyCopy[2](replyCopy, 0);
      goto LABEL_17;
    }

    v31 = *MEMORY[0x277CCA450];
    v32[0] = @"Invalid parameter identifier, must be non-nil";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v15];
    v19 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v23 = NSStringFromSelector(a2);
      *buf = 138412546;
      v28 = v23;
      v29 = 2112;
      v30 = v18;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "error while calling %@, %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, v18);
  }

  else
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }

LABEL_17:
}

- (void)updateVehicleEventWithIdentifier:(id)identifier location:(id)location reply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    [(RTVehicleLocationProvider *)self->_vehicleLocationProvider updateVehicleEventWithIdentifier:identifier location:location];
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v10, 2u);
    }
  }
}

- (void)engageInVehicleEventWithIdentifier:(id)identifier reply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    [(RTVehicleLocationProvider *)self->_vehicleLocationProvider engageInVehicleEventWithIdentifier:identifier];
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v8, 2u);
    }
  }
}

- (void)startMonitoringVehicleEventsWithReply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    [(RTDaemonClient *)self _startMonitoringVehicleEvents];
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v6, 2u);
    }
  }
}

- (void)stopMonitoringVehicleEventsWithReply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    vehicleEventRegistrar = [(RTDaemonClient *)self vehicleEventRegistrar];
    [vehicleEventRegistrar stopMonitoringVehicleEvents];

    restorationData = [(RTDaemonClient *)self restorationData];
    [restorationData removeObjectForKey:@"vehicleEventRegistrar"];

    clientManagerDelegate = [(RTDaemonClient *)self clientManagerDelegate];
    [clientManagerDelegate saveDaemonClient:self];

    replyCopy[2](replyCopy, 0);
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v9, 2u);
    }
  }
}

- (void)fetchAutomaticVehicleEventDetectionSupportedWithReply:(id)reply
{
  replyCopy = reply;
  v5 = replyCopy;
  if (replyCopy)
  {
    vehicleLocationProvider = self->_vehicleLocationProvider;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __72__RTDaemonClient_fetchAutomaticVehicleEventDetectionSupportedWithReply___block_invoke;
    v8[3] = &unk_2788C58B8;
    v8[4] = self;
    v9 = replyCopy;
    [(RTVehicleLocationProvider *)vehicleLocationProvider fetchAutomaticVehicleEventDetectionSupportedWithHandler:v8];
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __72__RTDaemonClient_fetchAutomaticVehicleEventDetectionSupportedWithReply___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__RTDaemonClient_fetchAutomaticVehicleEventDetectionSupportedWithReply___block_invoke_2;
  v9[3] = &unk_2788C4690;
  v12 = a2;
  v7 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, v9);
}

uint64_t __72__RTDaemonClient_fetchAutomaticVehicleEventDetectionSupportedWithReply___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 56);
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7[0] = 67109634;
      v7[1] = v3;
      v8 = 2112;
      v9 = v4;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "sending automatic vehicle event detection supported, %d, to client, %@, error, %@", v7, 0x1Cu);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)vehicleEventRegistrar:(id)registrar didReceiveVehicleEvents:(id)events error:(id)error
{
  registrarCopy = registrar;
  eventsCopy = events;
  errorCopy = error;
  queue = [(RTDaemonClient *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__RTDaemonClient_vehicleEventRegistrar_didReceiveVehicleEvents_error___block_invoke;
  block[3] = &unk_2788C50E8;
  block[4] = self;
  v17 = eventsCopy;
  v18 = errorCopy;
  v19 = registrarCopy;
  v20 = a2;
  v13 = registrarCopy;
  v14 = errorCopy;
  v15 = eventsCopy;
  dispatch_async(queue, block);
}

void __70__RTDaemonClient_vehicleEventRegistrar_didReceiveVehicleEvents_error___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) launchClient];
  v2 = [*(a1 + 32) xpcConnection];

  v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v3)
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityClient);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 32);
        v5 = *(a1 + 40);
        *buf = 138740227;
        v22 = v5;
        v23 = 2112;
        v24 = v6;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "sending vehicle events, %{sensitive}@, to client, %@", buf, 0x16u);
      }
    }

    v7 = [*(a1 + 32) xpcConnection];
    v8 = [v7 remoteObjectProxy];
    [v8 onVehicleEvents:*(a1 + 40) error:*(a1 + 48)];
  }

  else
  {
    if (v3)
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityClient);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 32);
        v11 = *(a1 + 40);
        *buf = 138412547;
        v22 = v10;
        v23 = 2117;
        v24 = v11;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "client, %@, not connected. buffering vehicle events, %{sensitive}@", buf, 0x16u);
      }
    }

    objc_initWeak(buf, *(a1 + 32));
    v12 = [*(a1 + 32) vehicleEventRegistrar];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __70__RTDaemonClient_vehicleEventRegistrar_didReceiveVehicleEvents_error___block_invoke_764;
    v16[3] = &unk_2788C58E0;
    objc_copyWeak(&v20, buf);
    v17 = *(a1 + 56);
    v18 = *(a1 + 40);
    v19 = *(a1 + 48);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __70__RTDaemonClient_vehicleEventRegistrar_didReceiveVehicleEvents_error___block_invoke_2;
    v14[3] = &unk_2788C5908;
    objc_copyWeak(&v15, buf);
    v13 = NSStringFromSelector(*(a1 + 64));
    [v12 addPendingVehicleEventBlock:v16 failBlock:v14 description:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }
}

void __70__RTDaemonClient_vehicleEventRegistrar_didReceiveVehicleEvents_error___block_invoke_764(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained vehicleEventRegistrar:*(a1 + 32) didReceiveVehicleEvents:*(a1 + 40) error:*(a1 + 48)];
}

void __70__RTDaemonClient_vehicleEventRegistrar_didReceiveVehicleEvents_error___block_invoke_2(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D01448];
  v13 = *MEMORY[0x277CCA450];
  v14[0] = @"Buffered vehicle events failed";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v5 = [v2 errorWithDomain:v3 code:0 userInfo:v4];

  v6 = _rt_log_facility_get_os_log(RTLogFacilityClient);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v10 = [v5 localizedDescription];
    v11 = 138412290;
    v12 = v10;
    _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "%@", &v11, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained xpcConnection];
  v9 = [v8 remoteObjectProxy];
  [v9 onVehicleEvents:0 error:v5];
}

- (void)addLocationOfInterestOfType:(int64_t)type mapItemStorage:(id)storage customLabel:(id)label reply:(id)reply
{
  v32 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  labelCopy = label;
  replyCopy = reply;
  if (replyCopy)
  {
    if (storageCopy)
    {
      mapServiceManager = self->_mapServiceManager;
      uUID = [MEMORY[0x277CCAD78] UUID];
      date = [MEMORY[0x277CBEAA8] date];
      v27 = 0;
      v17 = [(RTMapServiceManager *)mapServiceManager mapItemWithIdentifier:uUID geoMapItem:storageCopy source:8 creationDate:date error:&v27];
      v18 = v27;

      if (v18)
      {
        v19 = _rt_log_facility_get_os_log(RTLogFacilityClient);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v31 = v18;
          _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }

        replyCopy[2](replyCopy, 0, v18);
        goto LABEL_14;
      }

      if (v17)
      {
        objc_initWeak(buf, self);
        v20 = [RTLearnedPlace placeTypeFromType:type];
        learnedLocationManager = [(RTDaemonClient *)self learnedLocationManager];
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __79__RTDaemonClient_addLocationOfInterestOfType_mapItemStorage_customLabel_reply___block_invoke;
        v24[3] = &unk_2788C5930;
        objc_copyWeak(v26, buf);
        v26[1] = a2;
        v26[2] = v20;
        v25 = replyCopy;
        [learnedLocationManager addLocationOfInterestWithType:v20 mapItem:v17 customLabel:labelCopy handler:v24];

        objc_destroyWeak(v26);
        objc_destroyWeak(buf);
        goto LABEL_14;
      }
    }

    v22 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "map item was nil, invalid parameter", buf, 2u);
    }

    v28 = *MEMORY[0x277CCA450];
    v29 = @"Map item must be non-nil.";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v17];
    replyCopy[2](replyCopy, 0, v23);
  }

  else
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }

LABEL_14:
}

void __79__RTDaemonClient_addLocationOfInterestOfType_mapItemStorage_customLabel_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained queue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __79__RTDaemonClient_addLocationOfInterestOfType_mapItemStorage_customLabel_reply___block_invoke_768;
    v16[3] = &unk_2788C54B8;
    v21 = *(a1 + 48);
    v10 = v5;
    v22 = *(a1 + 56);
    v17 = v10;
    v18 = v8;
    v19 = v6;
    v20 = *(a1 + 32);
    dispatch_async(v9, v16);

    v11 = v17;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityClient);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = NSStringFromSelector(*(a1 + 48));
        v14 = [RTLearnedPlace placeTypeToString:*(a1 + 56)];
        *buf = 138413059;
        v24 = v13;
        v25 = 2117;
        v26 = v5;
        v27 = 2112;
        v28 = v14;
        v29 = 2112;
        v30 = v6;
        _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%@, added location of interest, %{sensitive}@, type, %@, error, %@", buf, 0x2Au);
      }
    }

    v15 = *(a1 + 32);
    v11 = [objc_alloc(MEMORY[0x277D01170]) initWithLearnedLocationOfInterest:v5];
    (*(v15 + 16))(v15, v11, v6);
  }
}

void __79__RTDaemonClient_addLocationOfInterestOfType_mapItemStorage_customLabel_reply___block_invoke_768(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 64));
      v4 = *(a1 + 32);
      v5 = [RTLearnedPlace placeTypeToString:*(a1 + 72)];
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v10 = 138413315;
      v11 = v3;
      v12 = 2117;
      v13 = v4;
      v14 = 2112;
      v15 = v5;
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, added location of interest, %{sensitive}@, type, %@, reply to client, %@, error, %@", &v10, 0x34u);
    }
  }

  v8 = *(a1 + 56);
  v9 = [objc_alloc(MEMORY[0x277D01170]) initWithLearnedLocationOfInterest:*(a1 + 32)];
  (*(v8 + 16))(v8, v9, *(a1 + 48));
}

- (void)updateLocationOfInterestWithIdentifier:(id)identifier type:(int64_t)type mapItemStorage:(id)storage customLabel:(id)label reply:(id)reply
{
  v42[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  storageCopy = storage;
  labelCopy = label;
  replyCopy = reply;
  if (replyCopy)
  {
    if (storageCopy)
    {
      v30 = identifierCopy;
      mapServiceManager = self->_mapServiceManager;
      uUID = [MEMORY[0x277CCAD78] UUID];
      date = [MEMORY[0x277CBEAA8] date];
      v36 = 0;
      v20 = [(RTMapServiceManager *)mapServiceManager mapItemWithIdentifier:uUID geoMapItem:storageCopy source:8 creationDate:date error:&v36];
      v21 = v36;

      if (v21)
      {
        v22 = _rt_log_facility_get_os_log(RTLogFacilityClient);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v40 = v21;
          _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }

        replyCopy[2](replyCopy, 0, v21);
        identifierCopy = v30;
      }

      else if (v20)
      {
        v26 = [RTLearnedPlace placeTypeFromType:type];
        learnedLocationManager = self->_learnedLocationManager;
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __95__RTDaemonClient_updateLocationOfInterestWithIdentifier_type_mapItemStorage_customLabel_reply___block_invoke;
        v31[3] = &unk_2788C5980;
        v31[4] = self;
        v34 = a2;
        v35 = v26;
        v32 = labelCopy;
        v33 = replyCopy;
        identifierCopy = v30;
        [(RTLearnedLocationManager *)learnedLocationManager updateLocationOfInterestWithIdentifier:v30 type:v26 mapItem:v20 mapItemSource:8 customLabel:v32 handler:v31];
      }

      else
      {
        v28 = _rt_log_facility_get_os_log(RTLogFacilityClient);
        identifierCopy = v30;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "map item was nil, invalid parameter", buf, 2u);
        }

        v37 = *MEMORY[0x277CCA450];
        v38 = @"Map item must be non-nil.";
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
        v29 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v20];
        replyCopy[2](replyCopy, 0, v29);
      }
    }

    else
    {
      v23 = MEMORY[0x277CCA9B8];
      v24 = *MEMORY[0x277D01448];
      v41 = *MEMORY[0x277CCA450];
      v42[0] = @"requires a valid mapItem.";
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:&v41 count:1];
      v25 = [v23 errorWithDomain:v24 code:0 userInfo:v20];
      replyCopy[2](replyCopy, 0, v25);
    }
  }

  else
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __95__RTDaemonClient_updateLocationOfInterestWithIdentifier_type_mapItemStorage_customLabel_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__RTDaemonClient_updateLocationOfInterestWithIdentifier_type_mapItemStorage_customLabel_reply___block_invoke_2;
  block[3] = &unk_2788C5958;
  v8 = *(a1 + 64);
  v19 = *(a1 + 56);
  v20 = v8;
  v14 = v5;
  v9 = *(a1 + 40);
  v10 = *(a1 + 32);
  v15 = v9;
  v16 = v10;
  v17 = v6;
  v18 = *(a1 + 48);
  v11 = v6;
  v12 = v5;
  dispatch_async(v7, block);
}

void __95__RTDaemonClient_updateLocationOfInterestWithIdentifier_type_mapItemStorage_customLabel_reply___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 72));
      v4 = *(a1 + 32);
      v5 = [RTLearnedPlace placeTypeToString:*(a1 + 80)];
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8 = *(a1 + 56);
      v11 = 138413571;
      v12 = v3;
      v13 = 2117;
      v14 = v4;
      v15 = 2112;
      v16 = v5;
      v17 = 2112;
      v18 = v6;
      v19 = 2112;
      v20 = v7;
      v21 = 2117;
      v22 = v8;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, updated location of interest, %{sensitive}@, type, %@, customLabel, %@, reply to client, %@, error, %{sensitive}@", &v11, 0x3Eu);
    }
  }

  v9 = *(a1 + 64);
  v10 = [objc_alloc(MEMORY[0x277D01170]) initWithLearnedLocationOfInterest:*(a1 + 32)];
  (*(v9 + 16))(v9, v10, *(a1 + 56));
}

- (void)updateLocationOfInterestWithIdentifier:(id)identifier mapItemStorage:(id)storage reply:(id)reply
{
  v30 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  storageCopy = storage;
  replyCopy = reply;
  if (replyCopy)
  {
    if (storageCopy)
    {
      mapServiceManager = self->_mapServiceManager;
      uUID = [MEMORY[0x277CCAD78] UUID];
      date = [MEMORY[0x277CBEAA8] date];
      v25 = 0;
      v15 = [(RTMapServiceManager *)mapServiceManager mapItemWithIdentifier:uUID geoMapItem:storageCopy source:8 creationDate:date error:&v25];
      v16 = v25;

      if (v16)
      {
        v17 = _rt_log_facility_get_os_log(RTLogFacilityClient);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v29 = v16;
          _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }

        replyCopy[2](replyCopy, v16);
        goto LABEL_14;
      }

      if (v15)
      {
        learnedLocationManager = self->_learnedLocationManager;
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __78__RTDaemonClient_updateLocationOfInterestWithIdentifier_mapItemStorage_reply___block_invoke;
        v21[3] = &unk_2788C5738;
        v21[4] = self;
        v24 = a2;
        v22 = identifierCopy;
        v23 = replyCopy;
        [(RTLearnedLocationManager *)learnedLocationManager updateLocationOfInterestWithIdentifier:v22 mapItem:v15 mapItemSource:8 handler:v21];

        goto LABEL_14;
      }
    }

    v19 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "map item was nil, invalid parameter", buf, 2u);
    }

    v26 = *MEMORY[0x277CCA450];
    v27 = @"Map item must be non-nil.";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v15];
    replyCopy[2](replyCopy, v20);
  }

  else
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }

LABEL_14:
}

void __78__RTDaemonClient_updateLocationOfInterestWithIdentifier_mapItemStorage_reply___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__RTDaemonClient_updateLocationOfInterestWithIdentifier_mapItemStorage_reply___block_invoke_2;
  block[3] = &unk_2788C5110;
  v14 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v10 = v6;
  v11 = v7;
  v12 = v4;
  v13 = *(a1 + 48);
  v8 = v4;
  dispatch_async(v5, block);
}

uint64_t __78__RTDaemonClient_updateLocationOfInterestWithIdentifier_mapItemStorage_reply___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 64));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v8 = 138413059;
      v9 = v3;
      v10 = 2117;
      v11 = v4;
      v12 = 2112;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, updated mapItem of location of interest, %{sensitive}@, reply to client, %@, error, %@", &v8, 0x2Au);
    }
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48));
  }

  return result;
}

- (void)updateLocationOfInterestWithIdentifier:(id)identifier type:(int64_t)type reply:(id)reply
{
  identifierCopy = identifier;
  replyCopy = reply;
  if (replyCopy)
  {
    v11 = [RTLearnedPlace placeTypeFromType:type];
    learnedLocationManager = self->_learnedLocationManager;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __68__RTDaemonClient_updateLocationOfInterestWithIdentifier_type_reply___block_invoke;
    v14[3] = &unk_2788C5980;
    v14[4] = self;
    v17 = a2;
    v15 = identifierCopy;
    v18 = v11;
    v16 = replyCopy;
    [(RTLearnedLocationManager *)learnedLocationManager updateLocationOfInterestWithIdentifier:v15 type:v11 handler:v14];
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __68__RTDaemonClient_updateLocationOfInterestWithIdentifier_type_reply___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) queue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__RTDaemonClient_updateLocationOfInterestWithIdentifier_type_reply___block_invoke_2;
  v10[3] = &unk_2788C54B8;
  v15 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = *(a1 + 64);
  v8 = *(a1 + 32);
  v11 = v6;
  v12 = v8;
  v16 = v7;
  v13 = v4;
  v14 = *(a1 + 48);
  v9 = v4;
  dispatch_async(v5, v10);
}

uint64_t __68__RTDaemonClient_updateLocationOfInterestWithIdentifier_type_reply___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 64));
      v4 = *(a1 + 32);
      v5 = [RTLearnedPlace placeTypeToString:*(a1 + 72)];
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v9 = 138413315;
      v10 = v3;
      v11 = 2117;
      v12 = v4;
      v13 = 2112;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, updated location of interest, %{sensitive}@, type, %@, reply to client, %@, error, %@", &v9, 0x34u);
    }
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48));
  }

  return result;
}

- (void)updateLocationOfInterestWithIdentifier:(id)identifier type:(int64_t)type customLabel:(id)label reply:(id)reply
{
  identifierCopy = identifier;
  labelCopy = label;
  replyCopy = reply;
  if (replyCopy)
  {
    v14 = [RTLearnedPlace placeTypeFromType:type];
    learnedLocationManager = self->_learnedLocationManager;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __80__RTDaemonClient_updateLocationOfInterestWithIdentifier_type_customLabel_reply___block_invoke;
    v17[3] = &unk_2788C59A8;
    v17[4] = self;
    v21 = a2;
    v18 = identifierCopy;
    v22 = v14;
    v19 = labelCopy;
    v20 = replyCopy;
    [(RTLearnedLocationManager *)learnedLocationManager updateLocationOfInterestWithIdentifier:v18 type:v14 customLabel:v19 handler:v17];
  }

  else
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __80__RTDaemonClient_updateLocationOfInterestWithIdentifier_type_customLabel_reply___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__RTDaemonClient_updateLocationOfInterestWithIdentifier_type_customLabel_reply___block_invoke_2;
  block[3] = &unk_2788C5958;
  v17 = *(a1 + 64);
  v6 = *(a1 + 40);
  v7 = *(a1 + 72);
  v12 = v6;
  v18 = v7;
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v13 = v8;
  v14 = v9;
  v15 = v4;
  v16 = *(a1 + 56);
  v10 = v4;
  dispatch_async(v5, block);
}

uint64_t __80__RTDaemonClient_updateLocationOfInterestWithIdentifier_type_customLabel_reply___block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 72));
      v4 = *(a1 + 32);
      v5 = [RTLearnedPlace placeTypeToString:*(a1 + 80)];
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8 = *(a1 + 56);
      v10 = 138413571;
      v11 = v3;
      v12 = 2117;
      v13 = v4;
      v14 = 2112;
      v15 = v5;
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, updated location of interest, %{sensitive}@, type, %@, customLabel, %@, reply to client, %@, error, %@", &v10, 0x3Eu);
    }
  }

  result = *(a1 + 64);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 56));
  }

  return result;
}

- (void)updateLocationOfInterestWithIdentifier:(id)identifier customLabel:(id)label reply:(id)reply
{
  identifierCopy = identifier;
  replyCopy = reply;
  if (replyCopy)
  {
    learnedLocationManager = self->_learnedLocationManager;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __75__RTDaemonClient_updateLocationOfInterestWithIdentifier_customLabel_reply___block_invoke;
    v13[3] = &unk_2788C5738;
    v13[4] = self;
    v16 = a2;
    v14 = identifierCopy;
    v15 = replyCopy;
    [(RTLearnedLocationManager *)learnedLocationManager updateLocationOfInterestWithIdentifier:v14 customLabel:label handler:v13];
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __75__RTDaemonClient_updateLocationOfInterestWithIdentifier_customLabel_reply___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__RTDaemonClient_updateLocationOfInterestWithIdentifier_customLabel_reply___block_invoke_2;
  block[3] = &unk_2788C5110;
  v14 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v10 = v6;
  v11 = v7;
  v12 = v4;
  v13 = *(a1 + 48);
  v8 = v4;
  dispatch_async(v5, block);
}

uint64_t __75__RTDaemonClient_updateLocationOfInterestWithIdentifier_customLabel_reply___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 64));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v8 = 138413059;
      v9 = v3;
      v10 = 2117;
      v11 = v4;
      v12 = 2112;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, updated customLabel of location of interest, %{sensitive}@, reply to client, %@, error, %@", &v8, 0x2Au);
    }
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48));
  }

  return result;
}

- (void)removeLocationOfInterestWithIdentifier:(id)identifier reply:(id)reply
{
  identifierCopy = identifier;
  replyCopy = reply;
  if (replyCopy)
  {
    learnedLocationManager = self->_learnedLocationManager;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __63__RTDaemonClient_removeLocationOfInterestWithIdentifier_reply___block_invoke;
    v11[3] = &unk_2788C59D0;
    v11[4] = self;
    v14 = a2;
    v12 = identifierCopy;
    v13 = replyCopy;
    [(RTLearnedLocationManager *)learnedLocationManager removeLocationOfInterestWithIdentifier:v12 handler:v11];
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __63__RTDaemonClient_removeLocationOfInterestWithIdentifier_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__RTDaemonClient_removeLocationOfInterestWithIdentifier_reply___block_invoke_2;
  block[3] = &unk_2788C5110;
  v13 = *(a1 + 56);
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v11 = v3;
  v12 = *(a1 + 48);
  v7 = v3;
  dispatch_async(v4, block);
}

uint64_t __63__RTDaemonClient_removeLocationOfInterestWithIdentifier_reply___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 64));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v8 = 138413059;
      v9 = v3;
      v10 = 2117;
      v11 = v4;
      v12 = 2112;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, remove location of interest, %{sensitive}@, reply to client, %@, error, %@", &v8, 0x2Au);
    }
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)removeVisitWithIdentifier:(id)identifier reply:(id)reply
{
  identifierCopy = identifier;
  replyCopy = reply;
  if (replyCopy)
  {
    v9 = dispatch_group_create();
    v10 = v9;
    *buf = 0;
    v25 = buf;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__11;
    v28 = __Block_byref_object_dispose__11;
    v29 = 0;
    if (self->_learnedLocationManager)
    {
      dispatch_group_enter(v9);
      learnedLocationManager = self->_learnedLocationManager;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __50__RTDaemonClient_removeVisitWithIdentifier_reply___block_invoke;
      v19[3] = &unk_2788C5A20;
      v19[4] = self;
      v23 = a2;
      v20 = identifierCopy;
      v22 = buf;
      v21 = v10;
      [(RTLearnedLocationManager *)learnedLocationManager removeVisitWithIdentifier:v20 handler:v19];
    }

    queue = [(RTDaemonClient *)self queue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __50__RTDaemonClient_removeVisitWithIdentifier_reply___block_invoke_772;
    v13[3] = &unk_2788C5A48;
    v17 = buf;
    v18 = a2;
    v14 = identifierCopy;
    selfCopy = self;
    v16 = replyCopy;
    dispatch_group_notify(v10, queue, v13);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __50__RTDaemonClient_removeVisitWithIdentifier_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__RTDaemonClient_removeVisitWithIdentifier_reply___block_invoke_2;
  block[3] = &unk_2788C59F8;
  v12 = *(a1 + 64);
  v9 = *(a1 + 40);
  v10 = v3;
  v7 = *(a1 + 48);
  v5 = v7;
  v11 = v7;
  v6 = v3;
  dispatch_async(v4, block);
}

void __50__RTDaemonClient_removeVisitWithIdentifier_reply___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 64));
      v4 = *(a1 + 32);
      v5 = *(*(*(a1 + 56) + 8) + 40);
      v6 = 138412803;
      v7 = v3;
      v8 = 2117;
      v9 = v4;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, remove location of interest visit, %{sensitive}@, error, %@", &v6, 0x20u);
    }
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 40));
  dispatch_group_leave(*(a1 + 48));
}

void __50__RTDaemonClient_removeVisitWithIdentifier_reply___block_invoke_772(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(*(*(a1 + 56) + 8) + 40);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = NSStringFromSelector(*(a1 + 64));
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = 138413059;
      v8 = v4;
      v9 = 2117;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v2;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%@, remove location of interest visit, %{sensitive}@, reply to client, %@, error, %@", &v7, 0x2Au);
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)extendLifetimeOfVisitsWithIdentifiers:(id)identifiers reply:(id)reply
{
  if (reply)
  {
    learnedLocationManager = self->_learnedLocationManager;

    [(RTLearnedLocationManager *)learnedLocationManager extendLifetimeOfVisitsWithIdentifiers:identifiers handler:?];
  }

  else
  {
    v9 = v4;
    v10 = v5;
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v8, 2u);
    }
  }
}

- (void)fetchDedupedLocationOfInterestIdentifiersWithIdentifier:(id)identifier reply:(id)reply
{
  identifierCopy = identifier;
  replyCopy = reply;
  if (replyCopy)
  {
    learnedLocationManager = self->_learnedLocationManager;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __80__RTDaemonClient_fetchDedupedLocationOfInterestIdentifiersWithIdentifier_reply___block_invoke;
    v11[3] = &unk_2788C5A70;
    v15 = a2;
    v12 = identifierCopy;
    selfCopy = self;
    v14 = replyCopy;
    [(RTLearnedLocationManager *)learnedLocationManager fetchDedupedLocationOfInterestIdentifiersWithIdentifier:v12 handler:v11];

    v10 = v12;
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __80__RTDaemonClient_fetchDedupedLocationOfInterestIdentifiersWithIdentifier_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(*(a1 + 56));
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v11 = 138413314;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = v5;
      v17 = 2112;
      v18 = v10;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, loi identifier, %@, deduped from other loi identifiers, %@, reply to client, %@, error, %@", &v11, 0x34u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)userInteractionWithPredictedLocationOfInterest:(id)interest interaction:(unint64_t)interaction feedback:(id)feedback geoMapItem:(id)item reply:(id)reply
{
  v29 = *MEMORY[0x277D85DE8];
  interestCopy = interest;
  feedbackCopy = feedback;
  itemCopy = item;
  replyCopy = reply;
  if (replyCopy)
  {
    if (itemCopy)
    {
      mapServiceManager = self->_mapServiceManager;
      uUID = [MEMORY[0x277CCAD78] UUID];
      date = [MEMORY[0x277CBEAA8] date];
      v24 = 0;
      v19 = [(RTMapServiceManager *)mapServiceManager mapItemWithIdentifier:uUID geoMapItem:itemCopy source:8 creationDate:date error:&v24];
      v20 = v24;

      if (v20)
      {
        v21 = _rt_log_facility_get_os_log(RTLogFacilityClient);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v28 = v20;
          _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }

        replyCopy[2](replyCopy, v20);
        goto LABEL_14;
      }

      if (v19)
      {
        [(RTEventModelProvider *)self->_eventModelProvider userInteractionWithPredictedLocationOfInterest:interestCopy interaction:interaction feedback:feedbackCopy mapItem:v19 handler:replyCopy];
        goto LABEL_14;
      }
    }

    v22 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "map item was nil, invalid parameter", buf, 2u);
    }

    v25 = *MEMORY[0x277CCA450];
    v26 = @"Map item must be non-nil.";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v19];
    replyCopy[2](replyCopy, v23);
  }

  else
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }

LABEL_14:
}

- (void)remoteStatusRegistrar:(id)registrar didReceiveRemoteStatus:(int64_t)status error:(id)error
{
  registrarCopy = registrar;
  errorCopy = error;
  queue = [(RTDaemonClient *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__RTDaemonClient_remoteStatusRegistrar_didReceiveRemoteStatus_error___block_invoke;
  block[3] = &unk_2788C5AC0;
  block[4] = self;
  v15 = errorCopy;
  v16 = registrarCopy;
  statusCopy = status;
  v18 = a2;
  v12 = registrarCopy;
  v13 = errorCopy;
  dispatch_async(queue, block);
}

void __69__RTDaemonClient_remoteStatusRegistrar_didReceiveRemoteStatus_error___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) launchClient];
  v2 = [*(a1 + 32) xpcConnection];
  v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v3)
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityClient);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 56);
        v6 = *(a1 + 32);
        *buf = 134218242;
        v24 = v5;
        v25 = 2112;
        v26 = v6;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "sending remote status update, %ld, to client, %@", buf, 0x16u);
      }
    }

    v7 = [v2 remoteObjectProxy];
    [v7 onRemoteStatusUpdate:*(a1 + 56) error:*(a1 + 40)];
  }

  else
  {
    if (v3)
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityClient);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 32);
        v10 = *(a1 + 56);
        *buf = 138412546;
        v24 = v9;
        v25 = 2048;
        v26 = v10;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "client, %@, not connected. buffering remote status, %ld", buf, 0x16u);
      }
    }

    objc_initWeak(buf, *(a1 + 32));
    objc_initWeak(&location, *(a1 + 48));
    v11 = *(a1 + 48);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __69__RTDaemonClient_remoteStatusRegistrar_didReceiveRemoteStatus_error___block_invoke_773;
    v18[3] = &unk_2788C5A98;
    objc_copyWeak(&v20, buf);
    objc_copyWeak(v21, &location);
    v21[1] = *(a1 + 56);
    v19 = *(a1 + 40);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __69__RTDaemonClient_remoteStatusRegistrar_didReceiveRemoteStatus_error___block_invoke_2;
    v14[3] = &unk_2788C5020;
    v12 = *(a1 + 56);
    v15 = 0;
    v17 = v12;
    v16 = *(a1 + 40);
    v13 = NSStringFromSelector(*(a1 + 64));
    [v11 addPendingRemoteStatusUpdateBlock:v18 failBlock:v14 description:v13];

    objc_destroyWeak(v21);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }
}

void __69__RTDaemonClient_remoteStatusRegistrar_didReceiveRemoteStatus_error___block_invoke_773(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_loadWeakRetained((a1 + 48));
  [WeakRetained remoteStatusRegistrar:v2 didReceiveRemoteStatus:*(a1 + 56) error:*(a1 + 32)];
}

void __69__RTDaemonClient_remoteStatusRegistrar_didReceiveRemoteStatus_error___block_invoke_2(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D01448];
  v11 = *MEMORY[0x277CCA450];
  v12[0] = @"Buffered remote status failed";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v5 = [v2 errorWithDomain:v3 code:0 userInfo:v4];

  v6 = _rt_log_facility_get_os_log(RTLogFacilityClient);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = [v5 localizedDescription];
    v9 = 138412290;
    v10 = v8;
    _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "%@", &v9, 0xCu);
  }

  v7 = [*(a1 + 32) remoteObjectProxy];
  [v7 onRemoteStatusUpdate:*(a1 + 48) error:*(a1 + 40)];
}

- (void)fetchRemoteStatusWithReply:(id)reply
{
  replyCopy = reply;
  v6 = replyCopy;
  if (replyCopy)
  {
    intermittentGNSSManager = self->_intermittentGNSSManager;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __45__RTDaemonClient_fetchRemoteStatusWithReply___block_invoke;
    v9[3] = &unk_2788C5AE8;
    v11 = a2;
    v9[4] = self;
    v10 = replyCopy;
    [(RTIntermittentGNSSManager *)intermittentGNSSManager fetchRemoteStatusWithHandler:v9];
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __45__RTDaemonClient_fetchRemoteStatusWithReply___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(*(a1 + 48));
      v8 = *(a1 + 32);
      v9 = 138413058;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      v13 = 2048;
      v14 = a2;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, reply to client, %@, remote status, %ld, error, %@", &v9, 0x2Au);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)startMonitoringRemoteStatusWithReply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    remoteStatusRegistrar = [(RTDaemonClient *)self remoteStatusRegistrar];
    [remoteStatusRegistrar startMonitoringForRemoteStatus:0];
    v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:remoteStatusRegistrar requiringSecureCoding:1 error:0];
    restorationData = [(RTDaemonClient *)self restorationData];
    [restorationData setObject:v6 forKey:@"remoteStatusRegistrar"];

    clientManagerDelegate = [(RTDaemonClient *)self clientManagerDelegate];
    [clientManagerDelegate saveDaemonClient:self];

    replyCopy[2](replyCopy, 0);
  }

  else
  {
    remoteStatusRegistrar = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(remoteStatusRegistrar, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_2304B3000, remoteStatusRegistrar, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v9, 2u);
    }
  }
}

- (void)stopMonitoringRemoteStatusWithReply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    remoteStatusRegistrar = [(RTDaemonClient *)self remoteStatusRegistrar];
    [remoteStatusRegistrar stopMonitoringRemoteStatus];

    restorationData = [(RTDaemonClient *)self restorationData];
    [restorationData removeObjectForKey:@"remoteStatusRegistrar"];

    clientManagerDelegate = [(RTDaemonClient *)self clientManagerDelegate];
    [clientManagerDelegate saveDaemonClient:self];

    replyCopy[2](replyCopy, 0);
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v9, 2u);
    }
  }
}

- (void)fetchLookbackWindowStartDateWithLocation:(id)location reply:(id)reply
{
  locationCopy = location;
  replyCopy = reply;
  if (replyCopy)
  {
    v18 = [RTSensitiveDateClassifier alloc];
    defaultsManager = [(RTDaemonClient *)self defaultsManager];
    healthKitManager = [(RTDaemonClient *)self healthKitManager];
    learnedLocationStore = [(RTDaemonClient *)self learnedLocationStore];
    locationManager = [(RTDaemonClient *)self locationManager];
    motionActivityManager = [(RTDaemonClient *)self motionActivityManager];
    [(RTDaemonClient *)self timerManager];
    v13 = v20 = a2;
    [(RTDaemonClient *)self vehicleLocationProvider];
    v14 = v19 = locationCopy;
    wifiManager = [(RTDaemonClient *)self wifiManager];
    v16 = [(RTSensitiveDateClassifier *)v18 initWithDefaultsManager:defaultsManager healthKitManager:healthKitManager learnedLocationStore:learnedLocationStore locationManager:locationManager motionActivityManager:motionActivityManager timerManager:v13 vehicleLocationProvider:v14 wifiManager:wifiManager];

    locationCopy = v19;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __65__RTDaemonClient_fetchLookbackWindowStartDateWithLocation_reply___block_invoke;
    v21[3] = &unk_2788C5B10;
    v21[4] = self;
    v23 = v20;
    v22 = replyCopy;
    [v16 fetchLookbackWindowStartDateWithLocation:v19 handler:v21];
  }

  else
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __65__RTDaemonClient_fetchLookbackWindowStartDateWithLocation_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__RTDaemonClient_fetchLookbackWindowStartDateWithLocation_reply___block_invoke_2;
  block[3] = &unk_2788C5110;
  block[4] = *(a1 + 32);
  v13 = v5;
  v14 = v6;
  v11 = *(a1 + 40);
  v8 = v11;
  v15 = v11;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __65__RTDaemonClient_fetchLookbackWindowStartDateWithLocation_reply___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 64));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v8 = 138413058;
      v9 = v3;
      v10 = 2112;
      v11 = v4;
      v12 = 2112;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, reply to client, %@, lookback window start date %@, error, %@", &v8, 0x2Au);
    }
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)fetchStoredLocationsWithContext:(id)context reply:(id)reply
{
  contextCopy = context;
  replyCopy = reply;
  if (replyCopy)
  {
    locationManager = self->_locationManager;
    if (locationManager)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __56__RTDaemonClient_fetchStoredLocationsWithContext_reply___block_invoke;
      v12[3] = &unk_2788C5A70;
      v12[4] = self;
      v15 = a2;
      v13 = contextCopy;
      v14 = replyCopy;
      [(RTLocationManager *)locationManager fetchStoredLocationsWithContext:v13 handler:v12];
    }

    else
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityClient);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "LocationManager is nil, returning", buf, 2u);
      }

      (*(replyCopy + 2))(replyCopy, MEMORY[0x277CBEBF8], 0);
    }
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __56__RTDaemonClient_fetchStoredLocationsWithContext_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__RTDaemonClient_fetchStoredLocationsWithContext_reply___block_invoke_2;
  v11[3] = &unk_2788C56E8;
  v16 = *(a1 + 56);
  v8 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v5;
  v13 = v8;
  v14 = v6;
  v15 = *(a1 + 48);
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, v11);
}

uint64_t __56__RTDaemonClient_fetchStoredLocationsWithContext_reply___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 72));
      v4 = *(a1 + 32);
      v5 = [*(a1 + 40) count];
      v6 = [*(a1 + 48) options];
      v7 = *(a1 + 56);
      v9 = 138413314;
      v10 = v3;
      v11 = 2112;
      v12 = v4;
      v13 = 2048;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, reply to client, %@, %lu location options %@, error, %@", &v9, 0x34u);
    }
  }

  return (*(*(a1 + 64) + 16))();
}

- (void)fetchEstimatedLocationAtDate:(id)date options:(id)options reply:(id)reply
{
  dateCopy = date;
  optionsCopy = options;
  replyCopy = reply;
  v12 = replyCopy;
  if (!dateCopy)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
LABEL_8:

      goto LABEL_9;
    }

    *buf = 0;
    v15 = "Invalid parameter not satisfying: date";
LABEL_14:
    _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, v15, buf, 2u);
    goto LABEL_8;
  }

  if (!replyCopy)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 0;
    v15 = "Invalid parameter not satisfying: reply";
    goto LABEL_14;
  }

  locationManager = self->_locationManager;
  if (locationManager)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __61__RTDaemonClient_fetchEstimatedLocationAtDate_options_reply___block_invoke;
    v17[3] = &unk_2788C5B38;
    v17[4] = self;
    v19 = a2;
    v18 = replyCopy;
    [(RTLocationManager *)locationManager fetchEstimatedLocationAtDate:dateCopy options:optionsCopy handler:v17];
  }

  else
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "LocationManager is nil, returning", buf, 2u);
    }

    v12[2](v12, 0, 0);
  }

LABEL_9:
}

void __61__RTDaemonClient_fetchEstimatedLocationAtDate_options_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__RTDaemonClient_fetchEstimatedLocationAtDate_options_reply___block_invoke_2;
  block[3] = &unk_2788C5110;
  block[4] = *(a1 + 32);
  v13 = v5;
  v14 = v6;
  v11 = *(a1 + 40);
  v8 = v11;
  v15 = v11;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __61__RTDaemonClient_fetchEstimatedLocationAtDate_options_reply___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 64));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v8 = 138413059;
      v9 = v3;
      v10 = 2112;
      v11 = v4;
      v12 = 2117;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, reply to client, %@, location, %{sensitive}@, error, %@", &v8, 0x2Au);
    }
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)fetchLearnedRoutesWithOptions:(id)options reply:(id)reply
{
  v32 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  replyCopy = reply;
  if (replyCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityClient);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = NSStringFromSelector(a2);
        bundleIdentifier = [optionsCopy bundleIdentifier];
        bundlePath = [optionsCopy bundlePath];
        *buf = 138412802;
        v27 = v10;
        v28 = 2112;
        v29 = bundleIdentifier;
        v30 = 2112;
        v31 = bundlePath;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@,bundleID,%@,bundlePath,%@", buf, 0x20u);
      }
    }

    bundleIdentifier2 = [optionsCopy bundleIdentifier];
    bundlePath2 = [optionsCopy bundlePath];
    v15 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTDefaultsLearnedRoutesFetchSPIBundleAuthBypass"];
    if (v15)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
        v17 = v16;
        if (bundleIdentifier2 && ([v16 isEqualToString:bundleIdentifier2]& 1) != 0 || bundlePath2 && [v17 isEqualToString:bundlePath2])
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v18 = _rt_log_facility_get_os_log(RTLogFacilityClient);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v27 = v17;
              _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "fetchLearnedRoutesWithOptions skipping checkAndExerciseLearnedRoutes for,%@", buf, 0xCu);
            }
          }

          tripClusterManager = [(RTDaemonClient *)self tripClusterManager];
          [tripClusterManager fetchLearnedRoutesWithOptions:optionsCopy handler:replyCopy];

LABEL_29:
          goto LABEL_30;
        }
      }
    }

    v17 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTDefaultsLearnedRoutesFetchSPIBundleIDToAuthorize"];
    if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v20 = v17;

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v21 = _rt_log_facility_get_os_log(RTLogFacilityClient);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v27 = v20;
          _os_log_impl(&dword_2304B3000, v21, OS_LOG_TYPE_INFO, "RTDefaultsLearnedRoutesFetchSPIBundleIDToAuthorize,%@", buf, 0xCu);
        }
      }

      bundlePath2 = 0;
    }

    else
    {
      v20 = bundleIdentifier2;
    }

    v22 = MEMORY[0x277CBFC10];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __54__RTDaemonClient_fetchLearnedRoutesWithOptions_reply___block_invoke;
    v23[3] = &unk_2788C5B88;
    v23[4] = self;
    v25 = replyCopy;
    v24 = optionsCopy;
    [v22 _checkAndExerciseLearnedRoutesAuthorizationForBundleID:v20 orBundlePath:bundlePath2 completionHandler:v23];

    bundleIdentifier2 = v20;
    goto LABEL_29;
  }

  bundleIdentifier2 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(bundleIdentifier2, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, bundleIdentifier2, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
  }

LABEL_30:
}

void __54__RTDaemonClient_fetchLearnedRoutesWithOptions_reply___block_invoke(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__RTDaemonClient_fetchLearnedRoutesWithOptions_reply___block_invoke_2;
  block[3] = &unk_2788C5B60;
  v12 = v5;
  v16 = a3;
  v7 = *(a1 + 48);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v15 = v7;
  v13 = v8;
  v14 = v9;
  v10 = v5;
  dispatch_async(v6, block);
}

void __54__RTDaemonClient_fetchLearnedRoutesWithOptions_reply___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32) || (*(a1 + 64) & 1) == 0)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 64);
      *buf = 138412546;
      v14 = v8;
      v15 = 1024;
      v16 = v9;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "checkAndExerciseLearnedRoutes,error,%@,allowed,%d", buf, 0x12u);
    }

    v5 = MEMORY[0x277CCA9B8];
    v6 = *MEMORY[0x277D01448];
    v11 = *MEMORY[0x277CCA450];
    v12 = @"Not authorized.";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v3 = [v5 errorWithDomain:v6 code:2 userInfo:v7];

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v10 = *(a1 + 64);
        *buf = 67109120;
        LODWORD(v14) = v10;
        _os_log_debug_impl(&dword_2304B3000, v2, OS_LOG_TYPE_DEBUG, "checkAndExerciseLearnedRoutes,allowed,%d", buf, 8u);
      }
    }

    v3 = [*(a1 + 40) tripClusterManager];
    [v3 fetchLearnedRoutesWithOptions:*(a1 + 48) handler:*(a1 + 56)];
  }
}

- (void)fetchTripClusterMetadataWithOptions:(id)options reply:(id)reply
{
  optionsCopy = options;
  replyCopy = reply;
  if (replyCopy)
  {
    tripClusterManager = [(RTDaemonClient *)self tripClusterManager];
    [tripClusterManager fetchTripClusterMetadataWithOptions:optionsCopy handler:replyCopy];
  }

  else
  {
    tripClusterManager = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(tripClusterManager, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_2304B3000, tripClusterManager, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", v9, 2u);
    }
  }
}

- (void)purgeTripClusterTable:(id)table reply:(id)reply
{
  tableCopy = table;
  replyCopy = reply;
  if (!replyCopy)
  {
    tripClusterManager = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(tripClusterManager, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v12 = 0;
    v9 = "Invalid parameter not satisfying: handler";
    v10 = &v12;
LABEL_9:
    _os_log_error_impl(&dword_2304B3000, tripClusterManager, OS_LOG_TYPE_ERROR, v9, v10, 2u);
    goto LABEL_7;
  }

  if (!tableCopy)
  {
    tripClusterManager = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(tripClusterManager, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v11 = 0;
    v9 = "Invalid parameter not satisfying: tableToDelete";
    v10 = &v11;
    goto LABEL_9;
  }

  tripClusterManager = [(RTDaemonClient *)self tripClusterManager];
  -[NSObject purgeTripClusterTable:handler:](tripClusterManager, "purgeTripClusterTable:handler:", [tableCopy intValue], replyCopy);
LABEL_7:
}

- (void)purgeTripClusterWithClusterID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  if (!replyCopy)
  {
    tripClusterManager = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(tripClusterManager, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v12 = 0;
    v9 = "Invalid parameter not satisfying: handler";
    v10 = &v12;
LABEL_9:
    _os_log_error_impl(&dword_2304B3000, tripClusterManager, OS_LOG_TYPE_ERROR, v9, v10, 2u);
    goto LABEL_7;
  }

  if (!dCopy)
  {
    tripClusterManager = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(tripClusterManager, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v11 = 0;
    v9 = "Invalid parameter not satisfying: clusterID";
    v10 = &v11;
    goto LABEL_9;
  }

  tripClusterManager = [(RTDaemonClient *)self tripClusterManager];
  [tripClusterManager purgeTripClusterWithClusterID:dCopy handler:replyCopy];
LABEL_7:
}

- (void)fetchTripSegmentsWithOptions:(id)options reply:(id)reply
{
  optionsCopy = options;
  replyCopy = reply;
  if (replyCopy)
  {
    tripSegmentManager = [(RTDaemonClient *)self tripSegmentManager];
    [tripSegmentManager fetchTripSegmentsWithOptions:optionsCopy handler:replyCopy];
  }

  else
  {
    tripSegmentManager = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(tripSegmentManager, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_2304B3000, tripSegmentManager, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", v9, 2u);
    }
  }
}

- (void)fetchLocationsCountForTripSegmentWithOptions:(id)options reply:(id)reply
{
  optionsCopy = options;
  replyCopy = reply;
  if (replyCopy)
  {
    tripSegmentManager = [(RTDaemonClient *)self tripSegmentManager];
    [tripSegmentManager fetchLocationsCountForTripSegmentWithOptions:optionsCopy handler:replyCopy];
  }

  else
  {
    tripSegmentManager = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(tripSegmentManager, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_2304B3000, tripSegmentManager, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v9, 2u);
    }
  }
}

- (void)fetchLocationsForTripSegmentWithOptions:(id)options reply:(id)reply
{
  optionsCopy = options;
  replyCopy = reply;
  if (replyCopy)
  {
    tripSegmentManager = [(RTDaemonClient *)self tripSegmentManager];
    [tripSegmentManager fetchLocationsForTripSegmentWithOptions:optionsCopy handler:replyCopy];
  }

  else
  {
    tripSegmentManager = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(tripSegmentManager, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_2304B3000, tripSegmentManager, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v9, 2u);
    }
  }
}

- (void)deleteTripSegmentWithUUID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  if (replyCopy)
  {
    tripSegmentManager = [(RTDaemonClient *)self tripSegmentManager];
    [tripSegmentManager deleteTripSegmentWithUUID:dCopy handler:replyCopy];
  }

  else
  {
    tripSegmentManager = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(tripSegmentManager, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_2304B3000, tripSegmentManager, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v9, 2u);
    }
  }
}

- (void)fetchVehiclesWithOptions:(id)options reply:(id)reply
{
  optionsCopy = options;
  replyCopy = reply;
  if (replyCopy)
  {
    vehicleStore = [(RTDaemonClient *)self vehicleStore];
    [vehicleStore fetchVehiclesWithOptions:optionsCopy handler:replyCopy];
  }

  else
  {
    vehicleStore = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(vehicleStore, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_2304B3000, vehicleStore, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", v9, 2u);
    }
  }
}

- (void)fetchTripSegmentMetadataWithOptions:(id)options reply:(id)reply
{
  optionsCopy = options;
  replyCopy = reply;
  if (replyCopy)
  {
    tripSegmentManager = [(RTDaemonClient *)self tripSegmentManager];
    [tripSegmentManager fetchTripSegmentMetadataWithOptions:optionsCopy handler:replyCopy];
  }

  else
  {
    tripSegmentManager = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(tripSegmentManager, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_2304B3000, tripSegmentManager, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v9, 2u);
    }
  }
}

- (void)fetchEnumerableObjectsWithOptions:(id)options offset:(id)offset reply:(id)reply
{
  v35[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  offsetCopy = offset;
  replyCopy = reply;
  if (replyCopy)
  {
    if (optionsCopy)
    {
      if (offsetCopy)
      {
        unsignedIntegerValue = [offsetCopy unsignedIntegerValue];
        enumeratedType = [optionsCopy enumeratedType];
        vendedClassesStoreManagerDict = self->_vendedClassesStoreManagerDict;
        v14 = NSStringFromClass(enumeratedType);
        v15 = [(NSMutableDictionary *)vendedClassesStoreManagerDict objectForKey:v14];

        vendedClasses = [objc_opt_class() vendedClasses];
        v17 = [vendedClasses member:enumeratedType];

        if (v17)
        {
          [v15 fetchEnumerableObjectsWithOptions:optionsCopy offset:unsignedIntegerValue handler:replyCopy];
        }

        else
        {
          optionsCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"no store supports the type expected by options, %@", optionsCopy];
          v25 = MEMORY[0x277CCA9B8];
          v26 = *MEMORY[0x277D01448];
          v30 = *MEMORY[0x277CCA450];
          v31 = optionsCopy;
          v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
          v28 = [v25 errorWithDomain:v26 code:7 userInfo:v27];

          (*(replyCopy + 2))(replyCopy, 0, 0, v28);
        }

        goto LABEL_11;
      }

      v18 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277D01448];
      v32 = *MEMORY[0x277CCA450];
      v33 = @"offset cannot be nil";
      v20 = MEMORY[0x277CBEAC0];
      v21 = &v33;
      v22 = &v32;
    }

    else
    {
      v18 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277D01448];
      v34 = *MEMORY[0x277CCA450];
      v35[0] = @"options cannot be nil";
      v20 = MEMORY[0x277CBEAC0];
      v21 = v35;
      v22 = &v34;
    }

    v23 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:1];
    v15 = [v18 errorWithDomain:v19 code:7 userInfo:v23];

    (*(replyCopy + 2))(replyCopy, 0, 0, v15);
    goto LABEL_11;
  }

  v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
  }

LABEL_11:
}

- (void)fetchFamiliarityIndexResultsWithOptions:(id)options reply:(id)reply
{
  optionsCopy = options;
  replyCopy = reply;
  v9 = replyCopy;
  if (!optionsCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 0;
    v13 = "Invalid parameter not satisfying: options";
LABEL_14:
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, v13, buf, 2u);
    goto LABEL_8;
  }

  if (!replyCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 0;
    v13 = "Invalid parameter not satisfying: reply";
    goto LABEL_14;
  }

  if (self->_learnedLocationManager)
  {
    date = [MEMORY[0x277CBEAA8] date];
    learnedLocationManager = self->_learnedLocationManager;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __64__RTDaemonClient_fetchFamiliarityIndexResultsWithOptions_reply___block_invoke;
    v15[3] = &unk_2788C5A70;
    v18 = a2;
    v15[4] = self;
    v16 = date;
    v17 = v9;
    v12 = date;
    [(RTLearnedLocationManager *)learnedLocationManager fetchFamiliarityIndexResultsWithOptions:optionsCopy handler:v15];

LABEL_8:
    goto LABEL_9;
  }

  v14 = _rt_log_facility_get_os_log(RTLogFacilityClient);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "LearnedLocationManager is nil, returning", buf, 2u);
  }

  v9[2](v9, 0, 0);
LABEL_9:
}

void __64__RTDaemonClient_fetchFamiliarityIndexResultsWithOptions_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__RTDaemonClient_fetchFamiliarityIndexResultsWithOptions_reply___block_invoke_2;
  v12[3] = &unk_2788C56E8;
  v8 = *(a1 + 56);
  v9 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v13 = v5;
  v17 = v8;
  v14 = v6;
  v15 = v9;
  v16 = *(a1 + 48);
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, v12);
}

uint64_t __64__RTDaemonClient_fetchFamiliarityIndexResultsWithOptions_reply___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 72));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v7 = [MEMORY[0x277CBEAA8] date];
      [v7 timeIntervalSinceDate:*(a1 + 56)];
      v10 = 138413314;
      v11 = v3;
      v12 = 2112;
      v13 = v4;
      v14 = 2112;
      v15 = v5;
      v16 = 2112;
      v17 = v6;
      v18 = 2048;
      v19 = v8;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, reply to client, %@, familiarityIndexResults, %@, error, %@, latency, %.2f", &v10, 0x34u);
    }
  }

  return (*(*(a1 + 64) + 16))();
}

- (void)fetchAuthorizedLocationStatus:(id)status
{
  v19 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  if (!statusCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[RTDaemonClient fetchAuthorizedLocationStatus:]";
      v17 = 1024;
      v18 = 3125;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply (in %s:%d)", buf, 0x12u);
    }
  }

  if (self->_authorizedLocationManager)
  {
    date = [MEMORY[0x277CBEAA8] date];
    authorizedLocationManager = self->_authorizedLocationManager;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __48__RTDaemonClient_fetchAuthorizedLocationStatus___block_invoke;
    v11[3] = &unk_2788C5BB0;
    v14 = a2;
    v11[4] = self;
    v12 = date;
    v13 = statusCopy;
    v9 = date;
    [(RTAuthorizedLocationManager *)authorizedLocationManager fetchAuthorizedLocationExtendedStatus:v11];
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "AuthorizedLocationManager is nil, returning", buf, 2u);
    }

    (*(statusCopy + 2))(statusCopy, 0, 0);
  }
}

void __48__RTDaemonClient_fetchAuthorizedLocationStatus___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [*(a1 + 32) queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__RTDaemonClient_fetchAuthorizedLocationStatus___block_invoke_2;
  v13[3] = &unk_2788C56E8;
  v9 = *(a1 + 56);
  v10 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  v14 = v6;
  v18 = v9;
  v15 = v7;
  v16 = v10;
  v17 = *(a1 + 48);
  v11 = v7;
  v12 = v6;
  dispatch_async(v8, v13);
}

uint64_t __48__RTDaemonClient_fetchAuthorizedLocationStatus___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 72));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v7 = [MEMORY[0x277CBEAA8] date];
      [v7 timeIntervalSinceDate:*(a1 + 56)];
      v10 = 138413314;
      v11 = v3;
      v12 = 2112;
      v13 = v4;
      v14 = 2112;
      v15 = v5;
      v16 = 2112;
      v17 = v6;
      v18 = 2048;
      v19 = v8;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, reply to client, %@, fetchAuthorizedLocationStatus, %@, error, %@, latency, %.2f", &v10, 0x34u);
    }
  }

  return (*(*(a1 + 64) + 16))();
}

- (void)peopleDiscoveryRegistrar:(id)registrar didReceivePeopleDensityUpdate:(id)update error:(id)error
{
  registrarCopy = registrar;
  updateCopy = update;
  errorCopy = error;
  queue = [(RTDaemonClient *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__RTDaemonClient_peopleDiscoveryRegistrar_didReceivePeopleDensityUpdate_error___block_invoke;
  block[3] = &unk_2788C50E8;
  block[4] = self;
  v17 = updateCopy;
  v18 = errorCopy;
  v19 = registrarCopy;
  v20 = a2;
  v13 = registrarCopy;
  v14 = errorCopy;
  v15 = updateCopy;
  dispatch_async(queue, block);
}

void __79__RTDaemonClient_peopleDiscoveryRegistrar_didReceivePeopleDensityUpdate_error___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) launchClient];
  v2 = [*(a1 + 32) xpcConnection];

  v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v3)
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityClient);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = [*(a1 + 40) count];
        v6 = *(a1 + 32);
        *buf = 134218242;
        v22 = v5;
        v23 = 2112;
        v24 = v6;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "sending people density events, count %lu, to client, %@", buf, 0x16u);
      }
    }

    v7 = [*(a1 + 32) xpcConnection];
    v8 = [v7 remoteObjectProxy];
    [v8 onDensityUpdate:*(a1 + 40) error:*(a1 + 48)];
  }

  else
  {
    if (v3)
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityClient);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 32);
        v11 = [*(a1 + 40) count];
        *buf = 138412546;
        v22 = v10;
        v23 = 2048;
        v24 = v11;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "client, %@, not connected. buffering people density events, count %lu", buf, 0x16u);
      }
    }

    objc_initWeak(buf, *(a1 + 32));
    v12 = [*(a1 + 32) peopleDiscoveryRegistrar];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __79__RTDaemonClient_peopleDiscoveryRegistrar_didReceivePeopleDensityUpdate_error___block_invoke_801;
    v16[3] = &unk_2788C58E0;
    objc_copyWeak(&v20, buf);
    v17 = *(a1 + 56);
    v18 = *(a1 + 40);
    v19 = *(a1 + 48);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __79__RTDaemonClient_peopleDiscoveryRegistrar_didReceivePeopleDensityUpdate_error___block_invoke_2;
    v14[3] = &unk_2788C5908;
    objc_copyWeak(&v15, buf);
    v13 = NSStringFromSelector(*(a1 + 64));
    [v12 addPendingPeopleDensityUpdateBlock:v16 failBlock:v14 description:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }
}

void __79__RTDaemonClient_peopleDiscoveryRegistrar_didReceivePeopleDensityUpdate_error___block_invoke_801(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained peopleDiscoveryRegistrar:*(a1 + 32) didReceivePeopleDensityUpdate:*(a1 + 40) error:*(a1 + 48)];
}

void __79__RTDaemonClient_peopleDiscoveryRegistrar_didReceivePeopleDensityUpdate_error___block_invoke_2(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D01448];
  v13 = *MEMORY[0x277CCA450];
  v14[0] = @"Buffered people density events failed";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v5 = [v2 errorWithDomain:v3 code:0 userInfo:v4];

  v6 = _rt_log_facility_get_os_log(RTLogFacilityClient);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v10 = [v5 localizedDescription];
    v11 = 138412290;
    v12 = v10;
    _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "%@", &v11, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained xpcConnection];
  v9 = [v8 remoteObjectProxy];
  [v9 onDensityUpdate:0 error:v5];
}

- (void)startMonitoringForPeopleDiscoveryWithIdentifier:(id)identifier configuration:(id)configuration reply:(id)reply
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  configurationCopy = configuration;
  replyCopy = reply;
  if (replyCopy)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412546;
      v16 = identifierCopy;
      v17 = 2112;
      v18 = configurationCopy;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEFAULT, "identifier %@, configuration %@", &v15, 0x16u);
    }

    [(RTDaemonClientRegistrarPeopleDiscovery *)self->_peopleDiscoveryRegistrar startMonitoringForPeopleDiscoveryWithIdentifier:identifierCopy configuration:configurationCopy];
    v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self->_peopleDiscoveryRegistrar requiringSecureCoding:1 error:0];
    restorationData = [(RTDaemonClient *)self restorationData];
    [restorationData setObject:v12 forKey:@"peopleDiscoveryRegistrar"];

    clientManagerDelegate = [(RTDaemonClient *)self clientManagerDelegate];
    [clientManagerDelegate saveDaemonClient:self];

    replyCopy[2](replyCopy, 0);
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15) = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", &v15, 2u);
    }
  }
}

- (void)stopMonitoringForPeopleDiscoveryWithIdentifier:(id)identifier reply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    [(RTDaemonClientRegistrarPeopleDiscovery *)self->_peopleDiscoveryRegistrar stopMonitoringForPeopleDiscoveryWithIdentifier:identifier];
    restorationData = [(RTDaemonClient *)self restorationData];
    [restorationData removeObjectForKey:@"peopleDiscoveryRegistrar"];

    clientManagerDelegate = [(RTDaemonClient *)self clientManagerDelegate];
    [clientManagerDelegate saveDaemonClient:self];

    replyCopy[2](replyCopy, 0);
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v10, 2u);
    }
  }
}

- (void)fetchProximityHistoryFromStartDate:(id)date endDate:(id)endDate completionHandler:(id)handler
{
  v26[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  if (!dateCopy)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v17 = "Invalid parameter not satisfying: startDate";
LABEL_11:
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, v17, buf, 2u);
    }

LABEL_15:

    goto LABEL_16;
  }

  if (!endDateCopy)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v17 = "Invalid parameter not satisfying: endDate";
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  isProximityEventsEnabled = [(RTPeopleDiscoveryProvider *)self->_peopleDiscoveryProvider isProximityEventsEnabled];
  v13 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (!isProximityEventsEnabled)
  {
    if (v14)
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEFAULT, "people discovery feature is not enabled", buf, 2u);
    }

    v18 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277D01448];
    v25 = *MEMORY[0x277CCA450];
    v26[0] = @"feature disabled";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v16 = [v18 errorWithDomain:v19 code:13 userInfo:v20];

    handlerCopy[2](handlerCopy, MEMORY[0x277CBEBF8], v16);
    goto LABEL_15;
  }

  if (v14)
  {
    *buf = 0;
    _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEFAULT, "fetchProximityHistoryFromStartDate:endDate:completionHandler:", buf, 2u);
  }

  peopleDiscoveryProvider = self->_peopleDiscoveryProvider;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __79__RTDaemonClient_fetchProximityHistoryFromStartDate_endDate_completionHandler___block_invoke;
  v21[3] = &unk_2788C5508;
  v21[4] = self;
  v23 = a2;
  v22 = handlerCopy;
  [(RTPeopleDiscoveryProvider *)peopleDiscoveryProvider fetchProximityHistoryFromStartDate:dateCopy endDate:endDateCopy completionHandler:v21];

LABEL_16:
}

void __79__RTDaemonClient_fetchProximityHistoryFromStartDate_endDate_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__RTDaemonClient_fetchProximityHistoryFromStartDate_endDate_completionHandler___block_invoke_2;
  block[3] = &unk_2788C5110;
  block[4] = *(a1 + 32);
  v13 = v5;
  v14 = v6;
  v11 = *(a1 + 40);
  v8 = v11;
  v15 = v11;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __79__RTDaemonClient_fetchProximityHistoryFromStartDate_endDate_completionHandler___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 64));
      v4 = *(a1 + 32);
      v5 = [*(a1 + 40) count];
      v6 = *(a1 + 48);
      v8 = 138413058;
      v9 = v3;
      v10 = 2112;
      v11 = v4;
      v12 = 2048;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, reply to client, %@, fetchProximityHistoryFromStartDate, %lu, error, %@", &v8, 0x2Au);
    }
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)fetchProximityHistoryFromEventIDs:(id)ds completionHandler:(id)handler
{
  v22[1] = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  handlerCopy = handler;
  if (!dsCopy)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: eventIDs", buf, 2u);
    }

    goto LABEL_11;
  }

  isProximityEventsEnabled = [(RTPeopleDiscoveryProvider *)self->_peopleDiscoveryProvider isProximityEventsEnabled];
  v10 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!isProximityEventsEnabled)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEFAULT, "people discovery feature is not enabled", buf, 2u);
    }

    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277D01448];
    v21 = *MEMORY[0x277CCA450];
    v22[0] = @"feature disabled";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v13 = [v14 errorWithDomain:v15 code:13 userInfo:v16];

    handlerCopy[2](handlerCopy, MEMORY[0x277CBEBF8], v13);
LABEL_11:

    goto LABEL_12;
  }

  if (v11)
  {
    *buf = 0;
    _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEFAULT, "fetchProximityHistoryFromEventIDs:completionHandler:", buf, 2u);
  }

  peopleDiscoveryProvider = self->_peopleDiscoveryProvider;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __70__RTDaemonClient_fetchProximityHistoryFromEventIDs_completionHandler___block_invoke;
  v17[3] = &unk_2788C5508;
  v17[4] = self;
  v19 = a2;
  v18 = handlerCopy;
  [(RTPeopleDiscoveryProvider *)peopleDiscoveryProvider fetchProximityHistoryFromEventIDs:dsCopy completionHandler:v17];

LABEL_12:
}

void __70__RTDaemonClient_fetchProximityHistoryFromEventIDs_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__RTDaemonClient_fetchProximityHistoryFromEventIDs_completionHandler___block_invoke_2;
  block[3] = &unk_2788C5110;
  block[4] = *(a1 + 32);
  v13 = v5;
  v14 = v6;
  v11 = *(a1 + 40);
  v8 = v11;
  v15 = v11;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __70__RTDaemonClient_fetchProximityHistoryFromEventIDs_completionHandler___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 64));
      v4 = *(a1 + 32);
      v5 = [*(a1 + 40) count];
      v6 = *(a1 + 48);
      v8 = 138413058;
      v9 = v3;
      v10 = 2112;
      v11 = v4;
      v12 = 2048;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, reply to client, %@, fetchProximityHistoryFromEventIDs, %lu, error, %@", &v8, 0x2Au);
    }
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)fetchPeopleCountEventsHistory:(id)history completionHandler:(id)handler
{
  v13[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (history)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "fetchPeopleCountEventsHistory SPI deprecated", v11, 2u);
    }

    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277D01448];
    v12 = *MEMORY[0x277CCA450];
    v13[0] = @"SPI deprecated";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v10 = [v7 errorWithDomain:v8 code:10 userInfo:v9];

    handlerCopy[2](handlerCopy, MEMORY[0x277CBEBF8], v10);
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: proximityEvents", v11, 2u);
    }
  }
}

- (void)fetchOngoingPeopleDensity:(id)density
{
  v19[1] = *MEMORY[0x277D85DE8];
  densityCopy = density;
  isPeopleDensityEventsEnabled = [(RTPeopleDiscoveryProvider *)self->_peopleDiscoveryProvider isPeopleDensityEventsEnabled];
  v7 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (isPeopleDensityEventsEnabled)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEFAULT, "RTDaemonClient fetchOngoingPeopleDensity", buf, 2u);
    }

    peopleDiscoveryProvider = self->_peopleDiscoveryProvider;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __44__RTDaemonClient_fetchOngoingPeopleDensity___block_invoke;
    v14[3] = &unk_2788C5BD8;
    v14[4] = self;
    v16 = a2;
    v15 = densityCopy;
    [(RTPeopleDiscoveryProvider *)peopleDiscoveryProvider fetchMostRecentPeopleDensity:v14];
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEFAULT, "people discovery feature is not enabled", buf, 2u);
    }

    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277D01448];
    v18 = *MEMORY[0x277CCA450];
    v19[0] = @"feature disabled";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v13 = [v10 errorWithDomain:v11 code:13 userInfo:v12];

    (*(densityCopy + 2))(densityCopy, 0, v13);
  }
}

void __44__RTDaemonClient_fetchOngoingPeopleDensity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__RTDaemonClient_fetchOngoingPeopleDensity___block_invoke_2;
  block[3] = &unk_2788C5110;
  block[4] = *(a1 + 32);
  v13 = v5;
  v14 = v6;
  v11 = *(a1 + 40);
  v8 = v11;
  v15 = v11;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __44__RTDaemonClient_fetchOngoingPeopleDensity___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 64));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v8 = 138413058;
      v9 = v3;
      v10 = 2112;
      v11 = v4;
      v12 = 2112;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, reply to client, %@, fetchMostRecentPeopleDensity, %@, error, %@", &v8, 0x2Au);
    }
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)fetchPeopleDensityHistoryFromStartDate:(id)date endDate:(id)endDate completionHandler:(id)handler
{
  v26[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  if (!dateCopy)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v17 = "Invalid parameter not satisfying: startDate";
LABEL_11:
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, v17, buf, 2u);
    }

LABEL_15:

    goto LABEL_16;
  }

  if (!endDateCopy)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v17 = "Invalid parameter not satisfying: endDate";
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  isPeopleDensityEventsEnabled = [(RTPeopleDiscoveryProvider *)self->_peopleDiscoveryProvider isPeopleDensityEventsEnabled];
  v13 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (!isPeopleDensityEventsEnabled)
  {
    if (v14)
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEFAULT, "people discovery feature is not enabled", buf, 2u);
    }

    v18 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277D01448];
    v25 = *MEMORY[0x277CCA450];
    v26[0] = @"feature disabled";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v16 = [v18 errorWithDomain:v19 code:13 userInfo:v20];

    handlerCopy[2](handlerCopy, MEMORY[0x277CBEBF8], v16);
    goto LABEL_15;
  }

  if (v14)
  {
    *buf = 0;
    _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEFAULT, "fetchPeopleDensityHistoryFromStartDate:endDate:completionHandler:", buf, 2u);
  }

  peopleDiscoveryProvider = self->_peopleDiscoveryProvider;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __83__RTDaemonClient_fetchPeopleDensityHistoryFromStartDate_endDate_completionHandler___block_invoke;
  v21[3] = &unk_2788C5508;
  v21[4] = self;
  v23 = a2;
  v22 = handlerCopy;
  [(RTPeopleDiscoveryProvider *)peopleDiscoveryProvider fetchPeopleDensityHistoryFromStartDate:dateCopy endDate:endDateCopy completionHandler:v21];

LABEL_16:
}

void __83__RTDaemonClient_fetchPeopleDensityHistoryFromStartDate_endDate_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__RTDaemonClient_fetchPeopleDensityHistoryFromStartDate_endDate_completionHandler___block_invoke_2;
  block[3] = &unk_2788C5110;
  block[4] = *(a1 + 32);
  v13 = v5;
  v14 = v6;
  v11 = *(a1 + 40);
  v8 = v11;
  v15 = v11;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __83__RTDaemonClient_fetchPeopleDensityHistoryFromStartDate_endDate_completionHandler___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 64));
      v4 = *(a1 + 32);
      v5 = [*(a1 + 40) count];
      v6 = *(a1 + 48);
      v8 = 138413058;
      v9 = v3;
      v10 = 2112;
      v11 = v4;
      v12 = 2048;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, reply to client, %@, fetchPeopleDensityHistoryFromStartDate, %lu, error, %@", &v8, 0x2Au);
    }
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)fetchContactScoresFromContactIDs:(id)ds completionHandler:(id)handler
{
  v22[1] = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  handlerCopy = handler;
  if (dsCopy)
  {
    isProximityEventsEnabled = [(RTPeopleDiscoveryProvider *)self->_peopleDiscoveryProvider isProximityEventsEnabled];
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (isProximityEventsEnabled)
    {
      if (v10)
      {
        *v18 = 0;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEFAULT, "per-contact score feature is not enabled", v18, 2u);
      }

      v11 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277D01448];
      v19 = *MEMORY[0x277CCA450];
      v20 = @"feature disabled";
      v13 = MEMORY[0x277CBEAC0];
      v14 = &v20;
      v15 = &v19;
    }

    else
    {
      if (v10)
      {
        *v18 = 0;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEFAULT, "people discovery feature is not enabled", v18, 2u);
      }

      v11 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277D01448];
      v21 = *MEMORY[0x277CCA450];
      v22[0] = @"feature disabled";
      v13 = MEMORY[0x277CBEAC0];
      v14 = v22;
      v15 = &v21;
    }

    v17 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:1];
    v16 = [v11 errorWithDomain:v12 code:13 userInfo:v17];

    handlerCopy[2](handlerCopy, MEMORY[0x277CBEBF8], v16);
  }

  else
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: contactIDs", v18, 2u);
    }
  }
}

- (void)fetchFormattedPostalAddressesFromMeCard:(id)card
{
  if (card)
  {
    contactsManager = self->_contactsManager;

    [(RTContactsManager *)contactsManager fetchFormattedPostalAddressesFromMeCard:?];
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v7, 2u);
    }
  }
}

- (void)predictedContextRegistrar:(id)registrar didReceivePredictedContextResult:(id)result error:(id)error
{
  registrarCopy = registrar;
  resultCopy = result;
  errorCopy = error;
  queue = [(RTDaemonClient *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__RTDaemonClient_predictedContextRegistrar_didReceivePredictedContextResult_error___block_invoke;
  block[3] = &unk_2788C50E8;
  block[4] = self;
  v17 = resultCopy;
  v18 = errorCopy;
  v19 = registrarCopy;
  v20 = a2;
  v13 = registrarCopy;
  v14 = errorCopy;
  v15 = resultCopy;
  dispatch_async(queue, block);
}

void __83__RTDaemonClient_predictedContextRegistrar_didReceivePredictedContextResult_error___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) launchClient];
  v2 = [*(a1 + 32) xpcConnection];

  v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v3)
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityClient);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 32);
        v5 = *(a1 + 40);
        *buf = 138412546;
        v22 = v5;
        v23 = 2112;
        v24 = v6;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "sending predicted context result, %@, to client, %@", buf, 0x16u);
      }
    }

    v7 = [*(a1 + 32) xpcConnection];
    v8 = [v7 remoteObjectProxy];
    [v8 onPredictedContextResult:*(a1 + 40) error:*(a1 + 48)];
  }

  else
  {
    if (v3)
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityClient);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 32);
        v11 = *(a1 + 40);
        *buf = 138412546;
        v22 = v10;
        v23 = 2112;
        v24 = v11;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "client, %@, not connected. buffering predictedContext, %@", buf, 0x16u);
      }
    }

    objc_initWeak(buf, *(a1 + 32));
    v12 = [*(a1 + 32) predictedContextRegistrar];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __83__RTDaemonClient_predictedContextRegistrar_didReceivePredictedContextResult_error___block_invoke_812;
    v16[3] = &unk_2788C58E0;
    objc_copyWeak(&v20, buf);
    v17 = *(a1 + 56);
    v18 = *(a1 + 40);
    v19 = *(a1 + 48);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __83__RTDaemonClient_predictedContextRegistrar_didReceivePredictedContextResult_error___block_invoke_2;
    v14[3] = &unk_2788C5908;
    objc_copyWeak(&v15, buf);
    v13 = NSStringFromSelector(*(a1 + 64));
    [v12 addPendingPredictedContextUpdateBlock:v16 failBlock:v14 description:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }
}

void __83__RTDaemonClient_predictedContextRegistrar_didReceivePredictedContextResult_error___block_invoke_812(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained predictedContextRegistrar:*(a1 + 32) didReceivePredictedContextResult:*(a1 + 40) error:*(a1 + 48)];
}

void __83__RTDaemonClient_predictedContextRegistrar_didReceivePredictedContextResult_error___block_invoke_2(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D01448];
  v13 = *MEMORY[0x277CCA450];
  v14[0] = @"Buffered predicted context failed";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v5 = [v2 errorWithDomain:v3 code:0 userInfo:v4];

  v6 = _rt_log_facility_get_os_log(RTLogFacilityClient);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v10 = [v5 localizedDescription];
    v11 = 138412290;
    v12 = v10;
    _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "%@", &v11, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained xpcConnection];
  v9 = [v8 remoteObjectProxy];
  [v9 onPredictedContextResult:0 error:v5];
}

- (void)fetchPredictedContextWithOptions:(id)options reply:(id)reply
{
  optionsCopy = options;
  replyCopy = reply;
  if (replyCopy)
  {
    date = [MEMORY[0x277CBEAA8] date];
    queue = [(RTDaemonClient *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__RTDaemonClient_fetchPredictedContextWithOptions_reply___block_invoke;
    block[3] = &unk_2788C5110;
    block[4] = self;
    v16 = a2;
    v13 = optionsCopy;
    v14 = date;
    v15 = replyCopy;
    v11 = date;
    dispatch_async(queue, block);
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __57__RTDaemonClient_fetchPredictedContextWithOptions_reply___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v2 + 328);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__RTDaemonClient_fetchPredictedContextWithOptions_reply___block_invoke_2;
  v5[3] = &unk_2788C5C00;
  v8 = *(a1 + 64);
  v5[4] = v2;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v4 fetchPredictedContextWithOptions:v3 handler:v5];
}

void __57__RTDaemonClient_fetchPredictedContextWithOptions_reply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(*(a1 + 56));
      v9 = *(a1 + 32);
      v10 = [MEMORY[0x277CBEAA8] date];
      [v10 timeIntervalSinceDate:*(a1 + 40)];
      v12 = 138413314;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      v20 = 2048;
      v21 = v11;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, reply to client, %@, predictedContextResult, %@, error, %@, latency, %.2f", &v12, 0x34u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)startMonitoringPredictedContextWithOptions:(id)options reply:(id)reply
{
  optionsCopy = options;
  replyCopy = reply;
  if (replyCopy)
  {
    predictedContextRegistrar = [(RTDaemonClient *)self predictedContextRegistrar];
    [predictedContextRegistrar startMonitoringForPredictedContextWithOptions:optionsCopy error:0];

    v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self->_predictedContextRegistrar requiringSecureCoding:1 error:0];
    restorationData = [(RTDaemonClient *)self restorationData];
    [restorationData setObject:v9 forKey:@"predictedContextRegistrar"];

    clientManagerDelegate = [(RTDaemonClient *)self clientManagerDelegate];
    [clientManagerDelegate saveDaemonClient:self];

    replyCopy[2](replyCopy, 0);
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v13, 2u);
    }
  }
}

- (void)stopMonitoringPredictedContextWithReply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    predictedContextRegistrar = [(RTDaemonClient *)self predictedContextRegistrar];
    [predictedContextRegistrar stopMonitoringForPredictedContext];

    restorationData = [(RTDaemonClient *)self restorationData];
    [restorationData removeObjectForKey:@"predictedContextRegistrar"];

    clientManagerDelegate = [(RTDaemonClient *)self clientManagerDelegate];
    [clientManagerDelegate saveDaemonClient:self];

    replyCopy[2](replyCopy, 0);
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v9, 2u);
    }
  }
}

- (void)addElevations:(id)elevations handler:(id)handler
{
  elevationsCopy = elevations;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (!elevationsCopy)
  {
    elevationManager = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(elevationManager, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v13 = 0;
    v10 = "Invalid parameter not satisfying: elevations";
    v11 = &v13;
LABEL_9:
    _os_log_error_impl(&dword_2304B3000, elevationManager, OS_LOG_TYPE_ERROR, v10, v11, 2u);
    goto LABEL_7;
  }

  if (!handlerCopy)
  {
    elevationManager = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(elevationManager, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v12 = 0;
    v10 = "Invalid parameter not satisfying: handler";
    v11 = &v12;
    goto LABEL_9;
  }

  elevationManager = [(RTDaemonClient *)self elevationManager];
  [elevationManager addElevations:elevationsCopy handler:v8];
LABEL_7:
}

- (void)fetchElevationsWithOptions:(id)options reply:(id)reply
{
  optionsCopy = options;
  replyCopy = reply;
  v8 = replyCopy;
  if (!optionsCopy)
  {
    elevationManager = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(elevationManager, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v13 = 0;
    v10 = "Invalid parameter not satisfying: options";
    v11 = &v13;
LABEL_9:
    _os_log_error_impl(&dword_2304B3000, elevationManager, OS_LOG_TYPE_ERROR, v10, v11, 2u);
    goto LABEL_7;
  }

  if (!replyCopy)
  {
    elevationManager = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(elevationManager, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v12 = 0;
    v10 = "Invalid parameter not satisfying: reply";
    v11 = &v12;
    goto LABEL_9;
  }

  elevationManager = [(RTDaemonClient *)self elevationManager];
  [elevationManager fetchElevationsWithOptions:optionsCopy handler:v8];
LABEL_7:
}

- (void)fetchElevationsWithContext:(id)context reply:(id)reply
{
  contextCopy = context;
  replyCopy = reply;
  v8 = replyCopy;
  if (!contextCopy)
  {
    elevationManager = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(elevationManager, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v13 = 0;
    v10 = "Invalid parameter not satisfying: context";
    v11 = &v13;
LABEL_9:
    _os_log_error_impl(&dword_2304B3000, elevationManager, OS_LOG_TYPE_ERROR, v10, v11, 2u);
    goto LABEL_7;
  }

  if (!replyCopy)
  {
    elevationManager = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(elevationManager, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v12 = 0;
    v10 = "Invalid parameter not satisfying: reply";
    v11 = &v12;
    goto LABEL_9;
  }

  elevationManager = [(RTDaemonClient *)self elevationManager];
  [elevationManager fetchElevationsWithContext:contextCopy handler:v8];
LABEL_7:
}

- (void)fetchBackgroundInertialOdometrySamplesWithOptions:(id)options reply:(id)reply
{
  v20 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  replyCopy = reply;
  v9 = replyCopy;
  if (!optionsCopy)
  {
    backgroundInertialOdometryManager = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(backgroundInertialOdometryManager, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    LOWORD(v16) = 0;
    v15 = "Invalid parameter not satisfying: options";
LABEL_13:
    _os_log_error_impl(&dword_2304B3000, backgroundInertialOdometryManager, OS_LOG_TYPE_ERROR, v15, &v16, 2u);
    goto LABEL_11;
  }

  if (!replyCopy)
  {
    backgroundInertialOdometryManager = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(backgroundInertialOdometryManager, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    LOWORD(v16) = 0;
    v15 = "Invalid parameter not satisfying: reply";
    goto LABEL_13;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityBackgroundInertialOdometry);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(a2);
      v16 = 138412546;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@,%@ invoked", &v16, 0x16u);
    }
  }

  backgroundInertialOdometryManager = [(RTDaemonClient *)self backgroundInertialOdometryManager];
  [backgroundInertialOdometryManager fetchBackgroundInertialOdometrySamplesWithOptions:optionsCopy handler:v9];
LABEL_11:
}

- (void)addBackgroundInertialOdometrySamples:(id)samples reply:(id)reply
{
  v22 = *MEMORY[0x277D85DE8];
  samplesCopy = samples;
  replyCopy = reply;
  v9 = replyCopy;
  if (!samplesCopy)
  {
    backgroundInertialOdometryManager = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(backgroundInertialOdometryManager, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    LOWORD(v16) = 0;
    v15 = "Invalid parameter not satisfying: samples";
LABEL_13:
    _os_log_error_impl(&dword_2304B3000, backgroundInertialOdometryManager, OS_LOG_TYPE_ERROR, v15, &v16, 2u);
    goto LABEL_11;
  }

  if (!replyCopy)
  {
    backgroundInertialOdometryManager = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(backgroundInertialOdometryManager, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    LOWORD(v16) = 0;
    v15 = "Invalid parameter not satisfying: reply";
    goto LABEL_13;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityBackgroundInertialOdometry);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(a2);
      v16 = 138412803;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      v20 = 1029;
      v21 = [samplesCopy count];
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@,%@ invoked with %{sensitive}d samples", &v16, 0x1Cu);
    }
  }

  backgroundInertialOdometryManager = [(RTDaemonClient *)self backgroundInertialOdometryManager];
  [backgroundInertialOdometryManager addBackgroundInertialOdometrySamples:samplesCopy handler:v9];
LABEL_11:
}

- (void)submitUserCurationForVisitDateRange:(id)range newLabel:(id)label handler:(id)handler
{
  v48 = *MEMORY[0x277D85DE8];
  rangeCopy = range;
  labelCopy = label;
  handlerCopy = handler;
  v12 = handlerCopy;
  if (!rangeCopy)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v23 = "Invalid parameter not satisfying: dateRange";
LABEL_17:
    _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, v23, buf, 2u);
    goto LABEL_21;
  }

  if (!handlerCopy)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v23 = "Invalid parameter not satisfying: handler";
    goto LABEL_17;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(a2);
      *buf = 138412546;
      v43 = v15;
      v44 = 2112;
      v45 = v16;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@, %@, invoked", buf, 0x16u);
    }
  }

  if (!labelCopy)
  {
    v20 = 0;
    goto LABEL_20;
  }

  mapServiceManager = [(RTDaemonClient *)self mapServiceManager];
  uUID = [MEMORY[0x277CCAD78] UUID];
  date = [MEMORY[0x277CBEAA8] date];
  v39 = 0;
  v20 = [mapServiceManager mapItemWithIdentifier:uUID geoMapItemStorage:labelCopy source:8 creationDate:date error:&v39];
  v21 = v39;

  if (!v21)
  {
    if (!v20)
    {
      v27 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        v35 = NSStringFromSelector(a2);
        *buf = 138412546;
        v43 = v34;
        v44 = 2112;
        v45 = v35;
        _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "%@, %@, fetched RTMapItem was nil from a non-nil GEOMapItem", buf, 0x16u);
      }

      v40 = *MEMORY[0x277CCA450];
      v41 = @"RTMapItem should be non-nil.";
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v29 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v28];
      (v12)[2](v12, v29);

      goto LABEL_12;
    }

LABEL_20:
    objc_initWeak(buf, self);
    userCurationManager = [(RTDaemonClient *)self userCurationManager];
    startDate = [rangeCopy startDate];
    endDate = [rangeCopy endDate];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __71__RTDaemonClient_submitUserCurationForVisitDateRange_newLabel_handler___block_invoke;
    v36[3] = &unk_2788C5C28;
    v37 = v12;
    objc_copyWeak(v38, buf);
    v36[4] = self;
    v38[1] = a2;
    [userCurationManager createAndStoreCurationWithEntryDate:startDate exitDate:endDate curatedLabel:v20 handler:v36];

    objc_destroyWeak(v38);
    objc_destroyWeak(buf);
    goto LABEL_21;
  }

  v22 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    v32 = NSStringFromSelector(a2);
    *buf = 138412802;
    v43 = v31;
    v44 = 2112;
    v45 = v32;
    v46 = 2112;
    v47 = v21;
    _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "%@, %@, failed to convert GEOMapItem to RTMapItem: %@", buf, 0x20u);
  }

  (v12)[2](v12, v21);
LABEL_12:

LABEL_21:
}

void __71__RTDaemonClient_submitUserCurationForVisitDateRange_newLabel_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  else if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (WeakRetained)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v8 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = objc_opt_class();
          v10 = NSStringFromClass(v9);
          v11 = NSStringFromSelector(*(a1 + 56));
          v16 = 138412802;
          v17 = v10;
          v18 = 2112;
          v19 = v11;
          v20 = 2112;
          v21 = v5;
          _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, %@, applying new user curation to existing LOI graph, %@", &v16, 0x20u);
        }
      }

      v12 = [WeakRetained learnedLocationManager];
      [v12 applyUserCuration:v5 harvestCuration:1 handler:*(a1 + 40)];
    }

    else
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = NSStringFromSelector(*(a1 + 56));
        v16 = 138412546;
        v17 = v14;
        v18 = 2112;
        v19 = v15;
        _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "%@, %@, invoked with nil reference to self, returning from scenario trigger block", &v16, 0x16u);
      }
    }
  }
}

- (void)correctLabelForVisitWithIdentifier:(id)identifier entryDate:(id)date originalLabel:(id)label newLabel:(id)newLabel handler:(id)handler
{
  v71 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dateCopy = date;
  labelCopy = label;
  newLabelCopy = newLabel;
  handlerCopy = handler;
  v16 = handlerCopy;
  if (!dateCopy)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v26 = "Invalid parameter not satisfying: entryDate";
LABEL_19:
    _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, v26, buf, 2u);
    goto LABEL_20;
  }

  if (!labelCopy)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v26 = "Invalid parameter not satisfying: originalLabel";
    goto LABEL_19;
  }

  if (!handlerCopy)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v26 = "Invalid parameter not satisfying: handler";
    goto LABEL_19;
  }

  aSelector = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = NSStringFromSelector(aSelector);
      *buf = 138412546;
      v66 = v19;
      v67 = 2112;
      v68 = v20;
      _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "%@, %@, invoked", buf, 0x16u);
    }
  }

  mapServiceManager = [(RTDaemonClient *)self mapServiceManager];
  uUID = [MEMORY[0x277CCAD78] UUID];
  date = [MEMORY[0x277CBEAA8] date];
  v60 = 0;
  v24 = [mapServiceManager mapItemWithIdentifier:uUID geoMapItemStorage:labelCopy source:8 creationDate:date error:&v60];
  v53 = v60;

  if (v53)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      v38 = NSStringFromSelector(aSelectora);
      *buf = 138412802;
      v66 = v37;
      v67 = 2112;
      v68 = v38;
      v69 = 2112;
      v70 = v53;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "%@, %@, failed to convert GEOMapItem to RTMapItem: %@", buf, 0x20u);
    }

    (v16)[2](v16, v53);
    goto LABEL_12;
  }

  if (v24)
  {
    if (newLabelCopy)
    {
      mapServiceManager2 = [(RTDaemonClient *)self mapServiceManager];
      uUID2 = [MEMORY[0x277CCAD78] UUID];
      date2 = [MEMORY[0x277CBEAA8] date];
      v59 = 0;
      v53 = [mapServiceManager2 mapItemWithIdentifier:uUID2 geoMapItemStorage:newLabelCopy source:8 creationDate:date2 error:&v59];
      v30 = v59;

      if (v30)
      {
        v31 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v45 = objc_opt_class();
          v46 = NSStringFromClass(v45);
          v47 = NSStringFromSelector(aSelectora);
          *buf = 138412802;
          v66 = v46;
          v67 = 2112;
          v68 = v47;
          v69 = 2112;
          v70 = v30;
          _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "%@, %@, failed to convert GEOMapItem to RTMapItem: %@", buf, 0x20u);
        }

        (v16)[2](v16, v30);
LABEL_27:

LABEL_12:
        goto LABEL_20;
      }

      if (!v53)
      {
        v39 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v48 = objc_opt_class();
          v49 = NSStringFromClass(v48);
          v50 = NSStringFromSelector(aSelectora);
          *buf = 138412546;
          v66 = v49;
          v67 = 2112;
          v68 = v50;
          _os_log_error_impl(&dword_2304B3000, v39, OS_LOG_TYPE_ERROR, "%@, %@, fetched RTMapItem was nil from a non-nil GEOMapItem", buf, 0x16u);
        }

        v61 = *MEMORY[0x277CCA450];
        v62 = @"RTMapItem should be non-nil.";
        v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
        v41 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v40];
        (v16)[2](v16, v41);

        goto LABEL_27;
      }
    }

    else
    {
      v53 = 0;
    }

    objc_initWeak(buf, self);
    userCurationManager = [(RTDaemonClient *)self userCurationManager];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __94__RTDaemonClient_correctLabelForVisitWithIdentifier_entryDate_originalLabel_newLabel_handler___block_invoke;
    v56[3] = &unk_2788C5C28;
    v57 = v16;
    objc_copyWeak(v58, buf);
    v56[4] = self;
    v58[1] = aSelectora;
    [userCurationManager createAndStoreCurationWithEntryDate:dateCopy exitDate:dateCopy visitIdentifier:identifierCopy originalLabel:v24 curatedLabel:v53 handler:v56];

    objc_destroyWeak(v58);
    objc_destroyWeak(buf);
    goto LABEL_12;
  }

  v32 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    v42 = objc_opt_class();
    v43 = NSStringFromClass(v42);
    v44 = NSStringFromSelector(aSelectora);
    *buf = 138412546;
    v66 = v43;
    v67 = 2112;
    v68 = v44;
    _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "%@, %@, fetched RTMapItem was nil from a non-nil GEOMapItem", buf, 0x16u);
  }

  v63 = *MEMORY[0x277CCA450];
  v64 = @"RTMapItem should be non-nil.";
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
  v34 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v33];
  (v16)[2](v16, v34);

LABEL_20:
}

void __94__RTDaemonClient_correctLabelForVisitWithIdentifier_entryDate_originalLabel_newLabel_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  else if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (WeakRetained)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v8 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = objc_opt_class();
          v10 = NSStringFromClass(v9);
          v11 = NSStringFromSelector(*(a1 + 56));
          v16 = 138412802;
          v17 = v10;
          v18 = 2112;
          v19 = v11;
          v20 = 2112;
          v21 = v5;
          _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, %@, applying new user curation to existing LOI graph, %@", &v16, 0x20u);
        }
      }

      v12 = [WeakRetained learnedLocationManager];
      [v12 applyUserCuration:v5 harvestCuration:1 handler:*(a1 + 40)];
    }

    else
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = NSStringFromSelector(*(a1 + 56));
        v16 = 138412546;
        v17 = v14;
        v18 = 2112;
        v19 = v15;
        _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "%@, %@, invoked with nil reference to self, returning from scenario trigger block", &v16, 0x16u);
      }
    }
  }
}

@end