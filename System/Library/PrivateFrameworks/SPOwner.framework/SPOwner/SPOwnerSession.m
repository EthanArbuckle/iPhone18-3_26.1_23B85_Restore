@interface SPOwnerSession
- (NSSet)allBeacons;
- (SPOwnerSession)init;
- (SPOwnerSessionState)ownerSessionState;
- (SPOwnerSessionXPCProtocol)proxy;
- (id)_enforceRateLimit;
- (id)executeCommand:(id)a3;
- (id)executeUTPlaySoundCommand:(id)a3;
- (id)maintenanceConnectionUpdateBlock;
- (id)remoteInterface;
- (void)_invalidate;
- (void)_unregisterDarwinNotificationName:(id)a3;
- (void)_updateOwnerSessionState;
- (void)acceptUTForBeaconUUID:(id)a3;
- (void)activeCompanionWithCompletion:(id)a3;
- (void)addBeaconChangedListener:(id)a3 beaconUUID:(id)a4 taskName:(id)a5 commandIdentifier:(id)a6 commandIssueDate:(id)a7;
- (void)addSafeLocation:(id)a3 completion:(id)a4;
- (void)allBeaconsWithCompletion:(id)a3;
- (void)allObservationsForBeacon:(id)a3 completion:(id)a4;
- (void)assignSafeLocation:(id)a3 beaconUUIDs:(id)a4 completion:(id)a5;
- (void)assignSafeLocation:(id)a3 to:(id)a4 completion:(id)a5;
- (void)beaconForIdentifier:(id)a3 completion:(id)a4;
- (void)beaconForUUID:(id)a3 completion:(id)a4;
- (void)beaconGroupForIdentifier:(id)a3 completion:(id)a4;
- (void)beaconGroupsForUUIDs:(id)a3 completion:(id)a4;
- (void)beaconStoreStatusWithCompletion:(id)a3;
- (void)beaconingIdentifierForMACAddress:(id)a3 completion:(id)a4;
- (void)beaconsToMaintainPersistentConnection:(id)a3;
- (void)beaconsToMonitorForSeparation:(id)a3;
- (void)clientConfigurationWithCompletion:(id)a3;
- (void)connectUsingMACAddress:(id)a3 longTermKey:(id)a4 completion:(id)a5;
- (void)connectionExpiryTimerFired;
- (void)dealloc;
- (void)delegatedLocationForContext:(id)a3 completion:(id)a4;
- (void)didDetectUnauthorizedTrackingWithCompletion:(id)a3 completion:(id)a4;
- (void)didObserveUnauthorizedTrackingWithCompletion:(id)a3 completion:(id)a4;
- (void)didUpdateUnauthorizedTrackingWithCompletion:(id)a3 completion:(id)a4;
- (void)didWithdrawUnauthorizedTrackingWithCompletion:(id)a3 completion:(id)a4;
- (void)disableSeparationMonitoringForBeacon:(id)a3 completion:(id)a4;
- (void)disableSeparationMonitoringForBeacons:(id)a3 completion:(id)a4;
- (void)disableUTAppAlert:(BOOL)a3 completion:(id)a4;
- (void)disconnectFromMACAddress:(id)a3 completion:(id)a4;
- (void)enableSeparationMonitoringForBeacon:(id)a3 completion:(id)a4;
- (void)enableSeparationMonitoringForBeacons:(id)a3 completion:(id)a4;
- (void)executeCommand:(id)a3 completion:(id)a4;
- (void)fakeClassicPairingWithMACAddress:(id)a3 completion:(id)a4;
- (void)fetchFindMyNetworkStatusForMACAddress:(id)a3 completion:(id)a4;
- (void)fetchHawkeyeFirmwareVersion:(id)a3 completion:(id)a4;
- (void)fetchSeparationMonitoringStatus:(id)a3;
- (void)fetchUnauthorizedEncryptedPayload:(id)a3 completion:(id)a4;
- (void)finishBeaconFuture:(id)a3 beaconUUID:(id)a4;
- (void)finishBeaconGroupFuture:(id)a3 command:(id)a4 commandIssueDate:(id)a5;
- (void)forceDistributeKeysWithCompletion:(id)a3;
- (void)forceKeySyncForBeaconUUID:(id)a3 lastObservationDate:(id)a4 lastObservationIndex:(unint64_t)a5 completion:(id)a6;
- (void)forceLOIBasedSafeLocationRefresh:(id)a3;
- (void)forceRePairingWithUUID:(id)a3 partIds:(id)a4 completion:(id)a5;
- (void)forceUpdateKeyAlignmentRecordForUUID:(id)a3 completion:(id)a4;
- (void)forceUpdateKeyMapsForUUID:(id)a3 completion:(id)a4;
- (void)hasAccessoryWithCapabilities:(unint64_t)a3 completion:(id)a4;
- (void)hintBasedIndexSearchForBeacon:(id)a3 baseIndex:(id)a4 hint:(unsigned __int8)a5 completion:(id)a6;
- (void)ignoreBeaconByAdvertisement:(id)a3 until:(unint64_t)a4 completion:(id)a5;
- (void)ignoreBeaconByUUID:(id)a3 until:(unint64_t)a4;
- (void)ignoreBeaconByUUID:(id)a3 until:(unint64_t)a4 completion:(id)a5;
- (void)ignoreBeaconByUUID:(id)a3 untilDate:(id)a4 completion:(id)a5;
- (void)ignoringUnauthorizedTrackingWithCompletion:(id)a3 completion:(id)a4;
- (void)isUTAppAlertDisabled:(id)a3;
- (void)locationForContext:(id)a3 completion:(id)a4;
- (void)locationsForBeacons:(id)a3 completion:(id)a4;
- (void)peripheralConnectionMaterialForAccessoryIdentifier:(id)a3 completion:(id)a4;
- (void)playUnauthorizedSoundOnBeaconByUUID:(id)a3 completion:(id)a4;
- (void)publishSeparationEventForBeacons:(id)a3 eventType:(int64_t)a4 region:(id)a5 completion:(id)a6;
- (void)publishUnificationEventForBeacons:(id)a3;
- (void)publishWildModeRecordsWithCompletion:(id)a3;
- (void)rawSearchResultsForBeacon:(id)a3 dateInterval:(id)a4 completion:(id)a5;
- (void)readAISMetadataFromBeaconIdentifier:(id)a3 completion:(id)a4;
- (void)readAISMetadataFromMACAddress:(id)a3 useOwnerControlPoint:(BOOL)a4 completion:(id)a5;
- (void)readRawAISMetadataFromBeaconIdentifier:(id)a3 completion:(id)a4;
- (void)readRawAISMetadataFromMACAddress:(id)a3 useOwnerControlPoint:(BOOL)a4 completion:(id)a5;
- (void)registerDarwinNotificationName:(id)a3 block:(id)a4;
- (void)removeBeacon:(id)a3 completion:(id)a4;
- (void)removeBeaconFromGroup:(id)a3 completion:(id)a4;
- (void)removeSafeLocation:(id)a3 completion:(id)a4;
- (void)safeLocationsForSeparationMonitoring:(id)a3;
- (void)setConnectionExpiryDispatchTimerWithInterval:(double)a3;
- (void)setDelegatedLocationUpdateBlock:(id)a3;
- (void)setDeviceEventUpdateBlock:(id)a3;
- (void)setFindMyNetworkStatusForMACAddress:(id)a3 status:(BOOL)a4 completion:(id)a5;
- (void)setInvalidationBlock:(id)a3;
- (void)setLocationUpdateBlock:(id)a3;
- (void)simulateAccessoryPairing:(id)a3 name:(id)a4 isAirPods:(BOOL)a5 completion:(id)a6;
- (void)standaloneBeaconsForUUIDs:(id)a3 completion:(id)a4;
- (void)startRefreshing;
- (void)startRefreshingBeacons:(id)a3;
- (void)startRefreshingBeaconsForSeparationMonitoringWithBlock:(id)a3;
- (void)startRefreshingPersistentConnectionWithBlock:(id)a3;
- (void)startRefreshingSafeLocationWithBlock:(id)a3;
- (void)startRefreshingSeparationMonitoringState:(id)a3;
- (void)startRefreshingTagSeparationWithBlock:(id)a3;
- (void)startUpdatingApplicationBeaconsWithContext:(id)a3 collectionDifference:(id)a4 completion:(id)a5;
- (void)startUpdatingMaintenanceConnection;
- (void)stopFetchingUnauthorizedEncryptedPayloadWithCompletion:(id)a3;
- (void)stopRefreshing;
- (void)stopUpdatingApplicationBeaconsWithCompletion:(id)a3;
- (void)subscribeAndFetchLocationForContext:(id)a3 completion:(id)a4;
- (void)subscribeDelegatedLocationUpdatesForContext:(id)a3 completion:(id)a4;
- (void)tagSeparationStateChanged:(id)a3 beaconUUID:(id)a4 location:(id)a5 completion:(id)a6;
- (void)unacceptedBeaconsWithCompletion:(id)a3;
- (void)unassignSafeLocation:(id)a3 beaconUUID:(id)a4 completion:(id)a5;
- (void)unassignSafeLocation:(id)a3 beaconUUIDs:(id)a4 completion:(id)a5;
- (void)unauthorizedTrackingTypeWithCompletion:(id)a3 completion:(id)a4;
- (void)unknownBeaconsForUUIDs:(id)a3 completion:(id)a4;
- (void)unregisterDarwinNotificationName:(id)a3;
- (void)unsubscribeDelegatedLocationUpdatesWithCompletion:(id)a3;
- (void)unsubscribeLocationUpdatesWithCompletion:(id)a3;
- (void)updateAllBeacons;
- (void)updateBatteryStatus:(unsigned __int8)a3 beaconUUID:(id)a4 completion:(id)a5;
- (void)updateBeaconObservations:(id)a3 completion:(id)a4;
- (void)updateConnectionExpiryDispatchTimerWithBeacons:(id)a3;
- (void)updateSafeLocation:(id)a3 completion:(id)a4;
- (void)waitForBeaconStoreAvailableWithCompletion:(id)a3;
@end

@implementation SPOwnerSession

- (SPOwnerSession)init
{
  v32.receiver = self;
  v32.super_class = SPOwnerSession;
  v2 = [(SPOwnerSession *)&v32 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.icloud.searchpartyd.SPOwnerSession", v3);

    queue = v2->_queue;
    v2->_queue = v4;
    v6 = v4;

    v7 = [objc_alloc(MEMORY[0x277D07B78]) initWithQueue:v2->_queue];
    queueSynchronizer = v2->_queueSynchronizer;
    v2->_queueSynchronizer = v7;

    v9 = objc_alloc_init(MEMORY[0x277CCABD8]);
    notificationQueue = v2->_notificationQueue;
    v2->_notificationQueue = v9;

    v11 = objc_opt_new();
    clientObservedBeacons = v2->_clientObservedBeacons;
    v2->_clientObservedBeacons = v11;

    v13 = objc_opt_new();
    locationSources = v2->_locationSources;
    v2->_locationSources = v13;

    v15 = objc_opt_new();
    darwinHandlers = v2->_darwinHandlers;
    v2->_darwinHandlers = v15;

    v17 = objc_opt_new();
    locationFetch = v2->_locationFetch;
    v2->_locationFetch = v17;

    v19 = objc_opt_new();
    delegationUpdate = v2->_delegationUpdate;
    v2->_delegationUpdate = v19;

    v21 = [objc_alloc(MEMORY[0x277D07B88]) initWithFillRate:10.0 capacity:50.0];
    tokenBucket = v2->_tokenBucket;
    v2->_tokenBucket = v21;

    v23 = objc_alloc(MEMORY[0x277D07BA0]);
    v24 = [(SPOwnerSession *)v2 remoteInterface];
    v25 = [v23 initWithMachServiceName:@"com.apple.icloud.searchpartyd.ownersession" options:0 remoteObjectInterface:v24 interruptionHandler:0 invalidationHandler:0];
    serviceDescription = v2->_serviceDescription;
    v2->_serviceDescription = v25;

    v27 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    locationCache = v2->_locationCache;
    v2->_locationCache = v27;

    v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
    batteryStatusCache = v2->_batteryStatusCache;
    v2->_batteryStatusCache = v29;
  }

  return v2;
}

- (id)remoteInterface
{
  v84[4] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287606D90];
  v3 = MEMORY[0x277CBEB98];
  v84[0] = objc_opt_class();
  v84[1] = objc_opt_class();
  v84[2] = objc_opt_class();
  v84[3] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:4];
  v5 = [v3 setWithArray:v4];
  [v2 setClasses:v5 forSelector:sel_latestLocationsForIdentifiers_fetchLimit_sources_completion_ argumentIndex:0 ofReply:1];

  v6 = MEMORY[0x277CBEB98];
  v83[0] = objc_opt_class();
  v83[1] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:2];
  v8 = [v6 setWithArray:v7];
  [v2 setClasses:v8 forSelector:sel_rawSearchResultsForIdentifier_dateInterval_completion_ argumentIndex:0 ofReply:1];

  v9 = MEMORY[0x277CBEB98];
  v82[0] = objc_opt_class();
  v82[1] = objc_opt_class();
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:2];
  v11 = [v9 setWithArray:v10];
  [v2 setClasses:v11 forSelector:sel_allBeaconsWithCompletion_ argumentIndex:0 ofReply:1];

  v12 = MEMORY[0x277CBEB98];
  v81[0] = objc_opt_class();
  v81[1] = objc_opt_class();
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:2];
  v14 = [v12 setWithArray:v13];
  [v2 setClasses:v14 forSelector:sel_unacceptedBeaconsWithCompletion_ argumentIndex:0 ofReply:1];

  v15 = MEMORY[0x277CBEB98];
  v80[0] = objc_opt_class();
  v80[1] = objc_opt_class();
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:2];
  v17 = [v15 setWithArray:v16];
  [v2 setClasses:v17 forSelector:sel_beaconGroupsForUUIDs_completion_ argumentIndex:0 ofReply:1];

  v18 = MEMORY[0x277CBEB98];
  v79[0] = objc_opt_class();
  v79[1] = objc_opt_class();
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:2];
  v20 = [v18 setWithArray:v19];
  [v2 setClasses:v20 forSelector:sel_standaloneBeaconsForUUIDs_completion_ argumentIndex:0 ofReply:1];

  v21 = MEMORY[0x277CBEB98];
  v78[0] = objc_opt_class();
  v78[1] = objc_opt_class();
  v78[2] = objc_opt_class();
  v78[3] = objc_opt_class();
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:4];
  v23 = [v21 setWithArray:v22];
  [v2 setClasses:v23 forSelector:sel_didObserveUnauthorizedTrackingWithCompletion_completion_ argumentIndex:0 ofReply:0];

  v24 = MEMORY[0x277CBEB98];
  v77[0] = objc_opt_class();
  v77[1] = objc_opt_class();
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:2];
  v26 = [v24 setWithArray:v25];
  [v2 setClasses:v26 forSelector:sel_didObserveUnauthorizedTrackingWithCompletion_completion_ argumentIndex:0 ofReply:1];

  v27 = MEMORY[0x277CBEB98];
  v76[0] = objc_opt_class();
  v76[1] = objc_opt_class();
  v76[2] = objc_opt_class();
  v76[3] = objc_opt_class();
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:4];
  v29 = [v27 setWithArray:v28];
  [v2 setClasses:v29 forSelector:sel_didDetectUnauthorizedTrackingWithCompletion_completion_ argumentIndex:0 ofReply:0];

  v30 = MEMORY[0x277CBEB98];
  v75[0] = objc_opt_class();
  v75[1] = objc_opt_class();
  v75[2] = objc_opt_class();
  v75[3] = objc_opt_class();
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:4];
  v32 = [v30 setWithArray:v31];
  [v2 setClasses:v32 forSelector:sel_didUpdateUnauthorizedTrackingWithCompletion_completion_ argumentIndex:0 ofReply:0];

  v33 = MEMORY[0x277CBEB98];
  v74[0] = objc_opt_class();
  v74[1] = objc_opt_class();
  v74[2] = objc_opt_class();
  v74[3] = objc_opt_class();
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:4];
  v35 = [v33 setWithArray:v34];
  [v2 setClasses:v35 forSelector:sel_didWithdrawUnauthorizedTrackingWithCompletion_completion_ argumentIndex:0 ofReply:0];

  v36 = MEMORY[0x277CBEB98];
  v73[0] = objc_opt_class();
  v73[1] = objc_opt_class();
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:2];
  v38 = [v36 setWithArray:v37];
  [v2 setClasses:v38 forSelector:sel_beaconsToMaintainWithCompletion_ argumentIndex:0 ofReply:1];

  v39 = MEMORY[0x277CBEB98];
  v72[0] = objc_opt_class();
  v72[1] = objc_opt_class();
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:2];
  v41 = [v39 setWithArray:v40];
  [v2 setClasses:v41 forSelector:sel_unknownBeaconsForUUIDs_completion_ argumentIndex:0 ofReply:1];

  v42 = MEMORY[0x277CBEB98];
  v71[0] = objc_opt_class();
  v71[1] = objc_opt_class();
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:2];
  v44 = [v42 setWithArray:v43];
  [v2 setClasses:v44 forSelector:sel_beaconsToMaintainPersistentConnection_ argumentIndex:0 ofReply:1];

  v45 = MEMORY[0x277CBEB98];
  v70[0] = objc_opt_class();
  v70[1] = objc_opt_class();
  v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:2];
  v47 = [v45 setWithArray:v46];
  [v2 setClasses:v47 forSelector:sel_safeLocationsWithCompletion_ argumentIndex:0 ofReply:1];

  v48 = MEMORY[0x277CBEB98];
  v69[0] = objc_opt_class();
  v69[1] = objc_opt_class();
  v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:2];
  v50 = [v48 setWithArray:v49];
  [v2 setClasses:v50 forSelector:sel_beaconsToMonitorForSeparation_ argumentIndex:0 ofReply:1];

  v51 = MEMORY[0x277CBEB98];
  v68 = objc_opt_class();
  v52 = [MEMORY[0x277CBEA60] arrayWithObjects:&v68 count:1];
  v53 = [v51 setWithArray:v52];
  [v2 setClasses:v53 forSelector:sel_publishSeparationEventForBeacons_eventType_region_completion_ argumentIndex:0 ofReply:1];

  v54 = MEMORY[0x277CBEB98];
  v67 = objc_opt_class();
  v55 = [MEMORY[0x277CBEA60] arrayWithObjects:&v67 count:1];
  v56 = [v54 setWithArray:v55];
  [v2 setClasses:v56 forSelector:sel_activeCompanionWithCompletion_ argumentIndex:0 ofReply:1];

  v57 = MEMORY[0x277CBEB98];
  v66[0] = objc_opt_class();
  v66[1] = objc_opt_class();
  v58 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:2];
  v59 = [v57 setWithArray:v58];
  [v2 setClasses:v59 forSelector:sel_allObservationsForBeacon_completion_ argumentIndex:0 ofReply:1];

  v60 = MEMORY[0x277CBEB98];
  v65[0] = objc_opt_class();
  v65[1] = objc_opt_class();
  v61 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:2];
  v62 = [v60 setWithArray:{v61, v65[0]}];
  [v2 setClasses:v62 forSelector:sel_addSafeLocation_completion_ argumentIndex:1 ofReply:1];

  v63 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = self;
    _os_log_impl(&dword_2643D0000, v3, OS_LOG_TYPE_DEFAULT, "SPOwnerSession: Dealloc %@", buf, 0xCu);
  }

  [(SPOwnerSession *)self _invalidate];
  v5.receiver = self;
  v5.super_class = SPOwnerSession;
  [(SPOwnerSession *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_invalidate
{
  v3 = [(SPOwnerSession *)self connectionExpiryDispatchTimer];

  if (v3)
  {
    v4 = [(SPOwnerSession *)self connectionExpiryDispatchTimer];
    dispatch_source_cancel(v4);
  }

  [(SPOwnerSession *)self setConnectionExpiryDispatchTimer:0];
  v5 = objc_opt_new();
  [(SPOwnerSession *)self setClientObservedBeacons:v5];

  v6 = [(SPOwnerSession *)self session];
  [v6 invalidate];

  [(SPOwnerSession *)self setSession:0];
  [(SPOwnerSession *)self _unregisterDarwinNotificationName:@"SPBeaconsChangedNotification"];
  [(SPOwnerSession *)self _unregisterDarwinNotificationName:@"com.apple.locationd.authorization"];
  [(SPOwnerSession *)self _unregisterDarwinNotificationName:@"com.apple.locationd/Prefs"];

  [(SPOwnerSession *)self _unregisterDarwinNotificationName:@"com.apple.icloud.searchparty.ServiceSettingsChanged"];
}

- (SPOwnerSessionXPCProtocol)proxy
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(SPOwnerSession *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SPOwnerSession *)self session];

  if (!v4)
  {
    v5 = objc_alloc(MEMORY[0x277D07BA8]);
    v6 = [(SPOwnerSession *)self serviceDescription];
    v7 = [v5 initWithServiceDescription:v6];
    [(SPOwnerSession *)self setSession:v7];

    v8 = LogCategory_OwnerSession();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(SPOwnerSession *)self serviceDescription];
      v10 = [v9 machService];
      v16 = 138412290;
      v17 = v10;
      _os_log_impl(&dword_2643D0000, v8, OS_LOG_TYPE_DEFAULT, "SPOwnerSession: Establishing XPC connection to %@", &v16, 0xCu);
    }

    v11 = [(SPOwnerSession *)self session];
    [v11 resume];
  }

  v12 = [(SPOwnerSession *)self session];
  v13 = [v12 proxy];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)beaconsToMonitorForSeparation:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(SPOwnerSession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__SPOwnerSession_SeparationMonitoring__beaconsToMonitorForSeparation___block_invoke;
  block[3] = &unk_279B58B80;
  block[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&location);
}

void __70__SPOwnerSession_SeparationMonitoring__beaconsToMonitorForSeparation___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 userAgentProxy];
  [v3 beaconsToMonitorForSeparation:*(a1 + 40)];
}

- (void)startRefreshingBeaconsForSeparationMonitoringWithBlock:(id)a3
{
  v4 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __95__SPOwnerSession_SeparationMonitoring__startRefreshingBeaconsForSeparationMonitoringWithBlock___block_invoke;
  aBlock[3] = &unk_279B59348;
  v5 = v4;
  v12 = v5;
  v6 = _Block_copy(aBlock);
  [(SPOwnerSession *)self beaconsToMonitorForSeparation:v6];
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __95__SPOwnerSession_SeparationMonitoring__startRefreshingBeaconsForSeparationMonitoringWithBlock___block_invoke_3;
  v8[3] = &unk_279B58B80;
  v8[4] = self;
  v7 = v6;
  v9 = v7;
  [(SPOwnerSession *)self registerDarwinNotificationName:@"com.apple.icloud.searchparty.separation_monitoring.beacons_changed" block:v8];

  objc_destroyWeak(&location);
}

void __95__SPOwnerSession_SeparationMonitoring__startRefreshingBeaconsForSeparationMonitoringWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __95__SPOwnerSession_SeparationMonitoring__startRefreshingBeaconsForSeparationMonitoringWithBlock___block_invoke_2;
  v6[3] = &unk_279B58B80;
  v7 = v3;
  v8 = *(a1 + 32);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __95__SPOwnerSession_SeparationMonitoring__startRefreshingBeaconsForSeparationMonitoringWithBlock___block_invoke_2(uint64_t result)
{
  if (*(result + 32))
  {
    return (*(*(result + 40) + 16))();
  }

  return result;
}

- (void)enableSeparationMonitoringForBeacons:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(SPOwnerSession *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __88__SPOwnerSession_SeparationMonitoring__enableSeparationMonitoringForBeacons_completion___block_invoke;
  v11[3] = &unk_279B58BD0;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&location);
}

void __88__SPOwnerSession_SeparationMonitoring__enableSeparationMonitoringForBeacons_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 userAgentProxy];
  [v3 enableSeparationMonitoringForBeacons:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)disableSeparationMonitoringForBeacons:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(SPOwnerSession *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __89__SPOwnerSession_SeparationMonitoring__disableSeparationMonitoringForBeacons_completion___block_invoke;
  v11[3] = &unk_279B58BD0;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&location);
}

void __89__SPOwnerSession_SeparationMonitoring__disableSeparationMonitoringForBeacons_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 userAgentProxy];
  [v3 disableSeparationMonitoringForBeacons:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)enableSeparationMonitoringForBeacon:(id)a3 completion:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v6 = MEMORY[0x277CBEA60];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v11 count:1];

  [(SPOwnerSession *)self enableSeparationMonitoringForBeacons:v9 completion:v7, v11, v12];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)disableSeparationMonitoringForBeacon:(id)a3 completion:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v6 = MEMORY[0x277CBEA60];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v11 count:1];

  [(SPOwnerSession *)self disableSeparationMonitoringForBeacons:v9 completion:v7, v11, v12];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)safeLocationsForSeparationMonitoring:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(SPOwnerSession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__SPOwnerSession_SeparationMonitoring__safeLocationsForSeparationMonitoring___block_invoke;
  block[3] = &unk_279B58B80;
  block[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&location);
}

void __77__SPOwnerSession_SeparationMonitoring__safeLocationsForSeparationMonitoring___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 userAgentProxy];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __77__SPOwnerSession_SeparationMonitoring__safeLocationsForSeparationMonitoring___block_invoke_2;
  v4[3] = &unk_279B59370;
  v5 = *(a1 + 40);
  [v3 safeLocationsWithCompletion:v4];
}

- (void)startRefreshingSafeLocationWithBlock:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  [(SPOwnerSession *)self safeLocationsForSeparationMonitoring:v4];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__SPOwnerSession_SeparationMonitoring__startRefreshingSafeLocationWithBlock___block_invoke;
  v6[3] = &unk_279B58B80;
  v6[4] = self;
  v5 = v4;
  v7 = v5;
  [(SPOwnerSession *)self registerDarwinNotificationName:@"com.apple.icloud.searchparty.separation_monitoring.safelocations_changed" block:v6];

  objc_destroyWeak(&location);
}

void __77__SPOwnerSession_SeparationMonitoring__startRefreshingSafeLocationWithBlock___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __77__SPOwnerSession_SeparationMonitoring__startRefreshingSafeLocationWithBlock___block_invoke_2;
  v3[3] = &unk_279B59348;
  v1 = *(a1 + 32);
  v4 = *(a1 + 40);
  v2 = v1;
  [v2 safeLocationsForSeparationMonitoring:v3];
}

void __77__SPOwnerSession_SeparationMonitoring__startRefreshingSafeLocationWithBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__SPOwnerSession_SeparationMonitoring__startRefreshingSafeLocationWithBlock___block_invoke_3;
  v7[3] = &unk_279B59398;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)addSafeLocation:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(SPOwnerSession *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__SPOwnerSession_SeparationMonitoring__addSafeLocation_completion___block_invoke;
  v11[3] = &unk_279B58BD0;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&location);
}

void __67__SPOwnerSession_SeparationMonitoring__addSafeLocation_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 userAgentProxy];
  [v3 addSafeLocation:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)removeSafeLocation:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(SPOwnerSession *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__SPOwnerSession_SeparationMonitoring__removeSafeLocation_completion___block_invoke;
  v11[3] = &unk_279B58BD0;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&location);
}

void __70__SPOwnerSession_SeparationMonitoring__removeSafeLocation_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 userAgentProxy];
  [v3 removeSafeLocation:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)updateSafeLocation:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(SPOwnerSession *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__SPOwnerSession_SeparationMonitoring__updateSafeLocation_completion___block_invoke;
  v11[3] = &unk_279B58BD0;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&location);
}

void __70__SPOwnerSession_SeparationMonitoring__updateSafeLocation_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 userAgentProxy];
  [v3 updateSafeLocation:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)assignSafeLocation:(id)a3 to:(id)a4 completion:(id)a5
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = a4;
  v8 = MEMORY[0x277CBEA60];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 arrayWithObjects:&v14 count:1];

  [(SPOwnerSession *)self assignSafeLocation:v11 beaconUUIDs:v12 completion:v9, v14, v15];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)unassignSafeLocation:(id)a3 beaconUUID:(id)a4 completion:(id)a5
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = a4;
  v8 = MEMORY[0x277CBEA60];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 arrayWithObjects:&v14 count:1];

  [(SPOwnerSession *)self unassignSafeLocation:v11 beaconUUIDs:v12 completion:v9, v14, v15];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)assignSafeLocation:(id)a3 beaconUUIDs:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = [(SPOwnerSession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__SPOwnerSession_SeparationMonitoring__assignSafeLocation_beaconUUIDs_completion___block_invoke;
  block[3] = &unk_279B593C0;
  block[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, block);

  objc_destroyWeak(&location);
}

void __82__SPOwnerSession_SeparationMonitoring__assignSafeLocation_beaconUUIDs_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 userAgentProxy];
  [v3 assignSafeLocation:*(a1 + 40) to:*(a1 + 48) completion:*(a1 + 56)];
}

- (void)unassignSafeLocation:(id)a3 beaconUUIDs:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = [(SPOwnerSession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__SPOwnerSession_SeparationMonitoring__unassignSafeLocation_beaconUUIDs_completion___block_invoke;
  block[3] = &unk_279B593C0;
  block[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, block);

  objc_destroyWeak(&location);
}

void __84__SPOwnerSession_SeparationMonitoring__unassignSafeLocation_beaconUUIDs_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 userAgentProxy];
  [v3 unassignSafeLocation:*(a1 + 40) from:*(a1 + 48) completion:*(a1 + 56)];
}

- (void)publishSeparationEventForBeacons:(id)a3 eventType:(int64_t)a4 region:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  objc_initWeak(&location, self);
  v13 = [(SPOwnerSession *)self queue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __101__SPOwnerSession_SeparationMonitoring__publishSeparationEventForBeacons_eventType_region_completion___block_invoke;
  v17[3] = &unk_279B593E8;
  v17[4] = self;
  v18 = v10;
  v20 = v12;
  v21 = a4;
  v19 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, v17);

  objc_destroyWeak(&location);
}

void __101__SPOwnerSession_SeparationMonitoring__publishSeparationEventForBeacons_eventType_region_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 userAgentProxy];
  [v3 publishSeparationEventForBeacons:*(a1 + 40) eventType:*(a1 + 64) region:*(a1 + 48) completion:*(a1 + 56)];
}

- (void)publishUnificationEventForBeacons:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(SPOwnerSession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__SPOwnerSession_SeparationMonitoring__publishUnificationEventForBeacons___block_invoke;
  block[3] = &unk_279B59228;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __74__SPOwnerSession_SeparationMonitoring__publishUnificationEventForBeacons___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained userAgentProxy];
  [v2 publishUnificationEventForBeacons:*(a1 + 32)];
}

- (void)activeCompanionWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(SPOwnerSession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__SPOwnerSession_SeparationMonitoring__activeCompanionWithCompletion___block_invoke;
  block[3] = &unk_279B58B80;
  block[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&location);
}

void __70__SPOwnerSession_SeparationMonitoring__activeCompanionWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 userAgentProxy];
  [v3 activeCompanionWithCompletion:*(a1 + 40)];
}

- (void)fetchSeparationMonitoringStatus:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(SPOwnerSession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__SPOwnerSession_SeparationMonitoring__fetchSeparationMonitoringStatus___block_invoke;
  block[3] = &unk_279B58B80;
  block[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&location);
}

void __72__SPOwnerSession_SeparationMonitoring__fetchSeparationMonitoringStatus___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 userAgentProxy];
  [v3 fetchSeparationMonitoringStatus:*(a1 + 40)];
}

- (void)startRefreshingSeparationMonitoringState:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  [(SPOwnerSession *)self fetchSeparationMonitoringStatus:v4];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __81__SPOwnerSession_SeparationMonitoring__startRefreshingSeparationMonitoringState___block_invoke;
  v6[3] = &unk_279B58B80;
  v6[4] = self;
  v5 = v4;
  v7 = v5;
  [(SPOwnerSession *)self registerDarwinNotificationName:@"com.apple.icloud.searchparty.separation_monitoring.state_changed" block:v6];

  objc_destroyWeak(&location);
}

- (void)forceLOIBasedSafeLocationRefresh:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = self;
  v6 = [(SPOwnerSession *)v5 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__SPOwnerSession_SeparationMonitoring__forceLOIBasedSafeLocationRefresh___block_invoke;
  block[3] = &unk_279B58B80;
  block[4] = v5;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, block);

  objc_destroyWeak(&location);
}

void __73__SPOwnerSession_SeparationMonitoring__forceLOIBasedSafeLocationRefresh___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userAgentProxy];
  [v2 forceLOIBasedSafeLocationRefresh:*(a1 + 40)];
}

- (id)maintenanceConnectionUpdateBlock
{
  v3 = [(SPOwnerSession *)self queue];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__SPOwnerSession_MaintenanceConnection__maintenanceConnectionUpdateBlock__block_invoke;
  aBlock[3] = &unk_279B58F90;
  v9 = v3;
  v4 = v3;
  objc_copyWeak(&v10, &location);
  v5 = _Block_copy(aBlock);
  v6 = _Block_copy(v5);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v6;
}

void __73__SPOwnerSession_MaintenanceConnection__maintenanceConnectionUpdateBlock__block_invoke(uint64_t a1)
{
  v2 = LogCategory_MaintenanceConnection();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "Updating maintenance connection.", buf, 2u);
  }

  v3 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__SPOwnerSession_MaintenanceConnection__maintenanceConnectionUpdateBlock__block_invoke_1;
  block[3] = &unk_279B58D88;
  objc_copyWeak(&v5, (a1 + 40));
  dispatch_async(v3, block);
  objc_destroyWeak(&v5);
}

void __73__SPOwnerSession_MaintenanceConnection__maintenanceConnectionUpdateBlock__block_invoke_1(uint64_t a1)
{
  v2 = dispatch_group_create();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  dispatch_group_enter(v2);
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__3;
  v18[4] = __Block_byref_object_dispose__3;
  v19 = 0;
  v4 = [WeakRetained userAgentProxy];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __73__SPOwnerSession_MaintenanceConnection__maintenanceConnectionUpdateBlock__block_invoke_2;
  v15[3] = &unk_279B59550;
  v17 = v18;
  v5 = v2;
  v16 = v5;
  [v4 beaconsToMaintainWithCompletion:v15];

  dispatch_group_enter(v5);
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__3;
  v13[4] = __Block_byref_object_dispose__3;
  v14 = 0;
  v6 = [WeakRetained userAgentProxy];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__SPOwnerSession_MaintenanceConnection__maintenanceConnectionUpdateBlock__block_invoke_2;
  v10[3] = &unk_279B59578;
  v12 = v13;
  v7 = v5;
  v11 = v7;
  [v6 unknownBeaconsForUUIDs:MEMORY[0x277CBEBF8] completion:v10];

  v8 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__SPOwnerSession_MaintenanceConnection__maintenanceConnectionUpdateBlock__block_invoke_3;
  block[3] = &unk_279B595A0;
  block[4] = WeakRetained;
  block[5] = v18;
  block[6] = v13;
  dispatch_group_notify(v7, v8, block);

  _Block_object_dispose(v13, 8);
  _Block_object_dispose(v18, 8);
}

void __73__SPOwnerSession_MaintenanceConnection__maintenanceConnectionUpdateBlock__block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __73__SPOwnerSession_MaintenanceConnection__maintenanceConnectionUpdateBlock__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) maintainedBeaconsChangedBlock];
  v2[2](v2, *(*(*(a1 + 40) + 8) + 40));

  v4 = [*(a1 + 32) maintainedUnknownBeaconsChangedBlock];
  v3 = [MEMORY[0x277CBEB98] setWithArray:*(*(*(a1 + 48) + 8) + 40)];
  v4[2](v4, v3);
}

- (void)startUpdatingMaintenanceConnection
{
  v3 = [(SPOwnerSession *)self maintenanceConnectionUpdateBlock];
  [(SPOwnerSession *)self registerDarwinNotificationName:@"com.apple.nanoregistry.watchdidbecomeactive" block:v3];
  [(SPOwnerSession *)self registerDarwinNotificationName:@"com.apple.mobile.keybagd.first_unlock" block:v3];
  [(SPOwnerSession *)self registerDarwinNotificationName:@"SPMaintenancePolicyChangedNotification" block:v3];
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __75__SPOwnerSession_MaintenanceConnection__startUpdatingMaintenanceConnection__block_invoke;
  activity_block[3] = &unk_279B58EF8;
  v6 = v3;
  v4 = v3;
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSession: Calling initial maintenanceConnectionUpdateBlock", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)startRefreshingPersistentConnectionWithBlock:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __85__SPOwnerSession_PersistentConnection__startRefreshingPersistentConnectionWithBlock___block_invoke;
  v6[3] = &unk_279B58B80;
  v6[4] = self;
  v5 = v4;
  v7 = v5;
  [(SPOwnerSession *)self registerDarwinNotificationName:@"com.apple.icloud.searchparty.PersistentConnectionChanged" block:v6];

  objc_destroyWeak(&location);
}

void __85__SPOwnerSession_PersistentConnection__startRefreshingPersistentConnectionWithBlock___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __85__SPOwnerSession_PersistentConnection__startRefreshingPersistentConnectionWithBlock___block_invoke_2;
  v3[3] = &unk_279B59348;
  v1 = *(a1 + 32);
  v4 = *(a1 + 40);
  v2 = v1;
  [v2 beaconsToMaintainPersistentConnection:v3];
}

void __85__SPOwnerSession_PersistentConnection__startRefreshingPersistentConnectionWithBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __85__SPOwnerSession_PersistentConnection__startRefreshingPersistentConnectionWithBlock___block_invoke_3;
  v7[3] = &unk_279B59398;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)beaconsToMaintainPersistentConnection:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(SPOwnerSession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__SPOwnerSession_PersistentConnection__beaconsToMaintainPersistentConnection___block_invoke;
  block[3] = &unk_279B59650;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __78__SPOwnerSession_PersistentConnection__beaconsToMaintainPersistentConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained proxy];
  [v2 beaconsToMaintainPersistentConnection:*(a1 + 32)];
}

- (void)locationsForBeacons:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(SPOwnerSession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SPOwnerSession_locationsForBeacons_completion___block_invoke;
  block[3] = &unk_279B599D0;
  v12 = v6;
  v9 = v6;
  objc_copyWeak(&v15, &location);
  v13 = self;
  v14 = v7;
  v10 = v7;
  dispatch_async(v8, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __49__SPOwnerSession_locationsForBeacons_completion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  v3 = [*(a1 + 32) fm_map:&__block_literal_global_13];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = [WeakRetained userAgentProxy];
  v6 = [*(a1 + 40) fetchLimit];
  v7 = [*(a1 + 40) locationSources];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__SPOwnerSession_locationsForBeacons_completion___block_invoke_3;
  v10[3] = &unk_279B599A8;
  v8 = *(a1 + 48);
  v10[4] = *(a1 + 40);
  v11 = v2;
  v12 = v8;
  v9 = v2;
  [v5 latestLocationsForIdentifiers:v3 fetchLimit:v6 sources:v7 completion:v10];
}

void __49__SPOwnerSession_locationsForBeacons_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__SPOwnerSession_locationsForBeacons_completion___block_invoke_4;
  v7[3] = &unk_279B593C0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v9 = v3;
  v10 = *(a1 + 48);
  v6 = v3;
  dispatch_sync(v4, v7);
}

void __49__SPOwnerSession_locationsForBeacons_completion___block_invoke_4(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setFetchLimit:*(a1 + 40)];
  v2 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) fetchLimit];
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPOwnerSession: fetchLimit set to %@", &v9, 0xCu);
  }

  [*(a1 + 32) setLocationCache:*(a1 + 48)];
  v4 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_2643D0000, v4, OS_LOG_TYPE_DEFAULT, "SPOwnerSession: updated location cache: %@", &v9, 0xCu);
  }

  v6 = *(a1 + 56);
  v7 = [*(a1 + 32) locationCache];
  (*(v6 + 16))(v6, v7);

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_enforceRateLimit
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4;
  v11 = __Block_byref_object_dispose__4;
  v12 = 0;
  v3 = [(SPOwnerSession *)self queueSynchronizer];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__SPOwnerSession__enforceRateLimit__block_invoke;
  v6[3] = &unk_279B594E0;
  v6[4] = self;
  v6[5] = &v7;
  [v3 conditionalSync:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __35__SPOwnerSession__enforceRateLimit__block_invoke(uint64_t a1)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) tokenBucket];
  v3 = [v2 operationAllowed];

  if ((v3 & 1) == 0)
  {
    v14[0] = @"delay";
    v4 = MEMORY[0x277CCABB0];
    v5 = [*(a1 + 32) tokenBucket];
    [v5 timeIntervalUntilOperationAllowed];
    v6 = [v4 numberWithDouble:?];
    v14[1] = @"stats";
    v15[0] = v6;
    v7 = [*(a1 + 32) tokenBucket];
    v8 = [v7 dumpStatistics];
    v15[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.icloud.searchpartyd.SPOwnerSession.ErrorDomain" code:20 userInfo:v9];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)locationForContext:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SPOwnerSession *)self locationFetch];
  [v8 locationForContext:v7 completion:v6];
}

- (void)subscribeAndFetchLocationForContext:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SPOwnerSession *)self locationFetch];
  [v8 subscribeAndFetchLocationForContext:v7 completion:v6];
}

- (void)unsubscribeLocationUpdatesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SPOwnerSession *)self locationFetch];
  [v5 unsubscribeLocationUpdatesWithCompletion:v4];
}

- (void)setLocationUpdateBlock:(id)a3
{
  v4 = a3;
  v5 = [(SPOwnerSession *)self locationFetch];
  [v5 setLocationUpdateBlock:v4];
}

- (void)setDeviceEventUpdateBlock:(id)a3
{
  v4 = a3;
  v5 = [(SPOwnerSession *)self locationFetch];
  [v5 setDeviceEventUpdateBlock:v4];
}

- (void)setInvalidationBlock:(id)a3
{
  v4 = a3;
  v5 = [(SPOwnerSession *)self locationFetch];
  [v5 setInvalidationBlock:v4];
}

- (void)delegatedLocationForContext:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SPOwnerSession *)self delegationUpdate];
  [v8 delegatedLocationForContext:v7 completion:v6];
}

- (void)setDelegatedLocationUpdateBlock:(id)a3
{
  v4 = a3;
  v5 = [(SPOwnerSession *)self delegationUpdate];
  [v5 setDelegatedLocationUpdateBlock:v4];
}

- (void)subscribeDelegatedLocationUpdatesForContext:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SPOwnerSession *)self delegationUpdate];
  [v8 subscribeDelegatedLocationUpdatesForContext:v7 completion:v6];
}

- (void)unsubscribeDelegatedLocationUpdatesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SPOwnerSession *)self delegationUpdate];
  [v5 unsubscribeDelegatedLocationUpdatesWithCompletion:v4];
}

- (void)setConnectionExpiryDispatchTimerWithInterval:(double)a3
{
  v5 = [(SPOwnerSession *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(SPOwnerSession *)self connectionExpiryDispatchTimer];

  if (v6)
  {
    v7 = [(SPOwnerSession *)self connectionExpiryDispatchTimer];
    dispatch_source_cancel(v7);

    [(SPOwnerSession *)self setConnectionExpiryDispatchTimer:0];
  }

  if ((a3 < 0.0 || ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*&a3 - 1) > 0xFFFFFFFFFFFFELL)
  {
    v12 = -1;
    v11 = -1;
  }

  else
  {
    v10 = a3 * 1000000000.0;
    v11 = dispatch_walltime(0, v10);
    v12 = (v10 * 0.02);
  }

  v13 = [(SPOwnerSession *)self queue];
  v14 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v13);
  [(SPOwnerSession *)self setConnectionExpiryDispatchTimer:v14];

  v15 = [(SPOwnerSession *)self connectionExpiryDispatchTimer];
  dispatch_source_set_timer(v15, v11, 0xFFFFFFFFFFFFFFFFLL, v12);

  objc_initWeak(&location, self);
  v16 = [(SPOwnerSession *)self connectionExpiryDispatchTimer];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __63__SPOwnerSession_setConnectionExpiryDispatchTimerWithInterval___block_invoke;
  v21 = &unk_279B58D88;
  objc_copyWeak(&v22, &location);
  dispatch_source_set_event_handler(v16, &v18);

  v17 = [(SPOwnerSession *)self connectionExpiryDispatchTimer:v18];
  dispatch_resume(v17);

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __63__SPOwnerSession_setConnectionExpiryDispatchTimerWithInterval___block_invoke(uint64_t a1)
{
  v2 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPOwnerSession connection expiry dispatch timer fired", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained connectionExpiryTimerFired];
}

- (void)connectionExpiryTimerFired
{
  v3 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_2643D0000, v3, OS_LOG_TYPE_DEFAULT, "SPBeaconManager connectionExpiryTimerFired", buf, 2u);
  }

  objc_initWeak(buf, self);
  v4 = [(SPOwnerSession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__SPOwnerSession_connectionExpiryTimerFired__block_invoke;
  block[3] = &unk_279B58D88;
  objc_copyWeak(&v6, buf);
  dispatch_async(v4, block);

  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __44__SPOwnerSession_connectionExpiryTimerFired__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateAllBeacons];
}

- (void)updateConnectionExpiryDispatchTimerWithBeacons:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SPOwnerSession *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v6, OS_LOG_TYPE_DEFAULT, "SPBeaconManager considering update for connection expiry timer", buf, 2u);
  }

  *buf = 0;
  v14 = buf;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__4;
  v17 = __Block_byref_object_dispose__4;
  v18 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__SPOwnerSession_updateConnectionExpiryDispatchTimerWithBeacons___block_invoke;
  v12[3] = &unk_279B599F8;
  v12[4] = buf;
  [v4 enumerateObjectsUsingBlock:v12];
  if (*(v14 + 5))
  {
    v7 = LogCategory_BeaconManager();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(v14 + 5);
      *v19 = 138412290;
      v20 = v8;
      _os_log_impl(&dword_2643D0000, v7, OS_LOG_TYPE_DEFAULT, "SPBeaconManager updating connection expiry timer with fire date %@", v19, 0xCu);
    }

    [*(v14 + 5) timeIntervalSinceNow];
    if (v9 < 1.0)
    {
      v9 = 1.0;
    }

    [(SPOwnerSession *)self setConnectionExpiryDispatchTimerWithInterval:v9];
  }

  else
  {
    v10 = LogCategory_BeaconManager();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_2643D0000, v10, OS_LOG_TYPE_DEFAULT, "SPBeaconManager not updating connection expiry timer, there are no expiring beacons.", v19, 2u);
    }
  }

  _Block_object_dispose(buf, 8);

  v11 = *MEMORY[0x277D85DE8];
}

void __65__SPOwnerSession_updateConnectionExpiryDispatchTimerWithBeacons___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 connectedStateExpiryDate];
  if (v3)
  {
    v4 = *(*(a1 + 32) + 8);
    v7 = *(v4 + 40);
    v5 = (v4 + 40);
    v6 = v7;
    if (v7)
    {
      [v6 timeIntervalSinceDate:v3];
      if (v8 <= 0.0)
      {
        goto LABEL_6;
      }

      v5 = (*(*(a1 + 32) + 8) + 40);
    }

    objc_storeStrong(v5, v3);
  }

LABEL_6:
}

- (void)rawSearchResultsForBeacon:(id)a3 dateInterval:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = [(SPOwnerSession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__SPOwnerSession_rawSearchResultsForBeacon_dateInterval_completion___block_invoke;
  block[3] = &unk_279B59A20;
  objc_copyWeak(&v19, &location);
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __68__SPOwnerSession_rawSearchResultsForBeacon_dateInterval_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained userAgentProxy];
  v3 = [*(a1 + 32) identifier];
  [v2 rawSearchResultsForIdentifier:v3 dateInterval:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)beaconForUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __43__SPOwnerSession_beaconForUUID_completion___block_invoke;
  activity_block[3] = &unk_279B59A48;
  v12 = self;
  v13 = v7;
  v11 = v6;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSession: beaconForUUID:completion:", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __43__SPOwnerSession_beaconForUUID_completion___block_invoke(id *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a1[4])
  {
    v2 = LogCategory_BeaconManager();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = "[SPOwnerSession beaconForUUID:completion:]_block_invoke";
      _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPOwnerSession: SPI: %s", buf, 0xCu);
    }

    objc_initWeak(buf, a1[5]);
    v3 = [a1[5] queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__SPOwnerSession_beaconForUUID_completion___block_invoke_266;
    block[3] = &unk_279B58BA8;
    objc_copyWeak(&v9, buf);
    v7 = a1[4];
    v8 = a1[6];
    dispatch_async(v3, block);

    objc_destroyWeak(&v9);
    objc_destroyWeak(buf);
  }

  else
  {
    v4 = LogCategory_OwnerSession();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __43__SPOwnerSession_beaconForUUID_completion___block_invoke_cold_1();
    }

    (*(a1[6] + 2))();
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __43__SPOwnerSession_beaconForUUID_completion___block_invoke_266(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained userAgentProxy];
  [v2 beaconForUUID:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)forceDistributeKeysWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(SPOwnerSession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SPOwnerSession_forceDistributeKeysWithCompletion___block_invoke;
  block[3] = &unk_279B59650;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __52__SPOwnerSession_forceDistributeKeysWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained userAgentProxy];
  [v2 forceDistributeKeysWithCompletion:*(a1 + 32)];
}

- (void)forceUpdateKeyMapsForUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(SPOwnerSession *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__SPOwnerSession_forceUpdateKeyMapsForUUID_completion___block_invoke;
  v11[3] = &unk_279B58BA8;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __55__SPOwnerSession_forceUpdateKeyMapsForUUID_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained userAgentProxy];
  [v2 forceUpdateKeyMapsForUUID:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)forceUpdateKeyAlignmentRecordForUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(SPOwnerSession *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__SPOwnerSession_forceUpdateKeyAlignmentRecordForUUID_completion___block_invoke;
  v11[3] = &unk_279B58BA8;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __66__SPOwnerSession_forceUpdateKeyAlignmentRecordForUUID_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained userAgentProxy];
  [v2 forceUpdateKeyAlignmentRecordForUUID:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)beaconForIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __49__SPOwnerSession_beaconForIdentifier_completion___block_invoke;
  activity_block[3] = &unk_279B59A70;
  v12 = self;
  v13 = v7;
  v11 = v6;
  v8 = v7;
  v9 = v6;
  objc_copyWeak(&v14, &location);
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSession: Calling beaconForIdentifier:completion:", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  objc_destroyWeak(&v14);

  objc_destroyWeak(&location);
}

void __49__SPOwnerSession_beaconForIdentifier_completion___block_invoke(id *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = LogCategory_OwnerSession();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "[SPOwnerSession beaconForIdentifier:completion:]_block_invoke";
      _os_log_impl(&dword_2643D0000, v4, OS_LOG_TYPE_DEFAULT, "SPOwnerSession: SPI: %s", buf, 0xCu);
    }

    v5 = [a1[5] queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__SPOwnerSession_beaconForIdentifier_completion___block_invoke_267;
    block[3] = &unk_279B58BA8;
    objc_copyWeak(&v12, a1 + 7);
    v10 = a1[4];
    v11 = a1[6];
    dispatch_async(v5, block);

    objc_destroyWeak(&v12);
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __49__SPOwnerSession_beaconForIdentifier_completion___block_invoke_cold_1();
    }

    v6 = a1[6];
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.icloud.searchpartyd.SPOwnerSession.ErrorDomain" code:2 userInfo:0];
    v6[2](v6, 0, v7);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __49__SPOwnerSession_beaconForIdentifier_completion___block_invoke_267(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained userAgentProxy];
  [v2 beaconForIdentifier:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)beaconGroupForIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __54__SPOwnerSession_beaconGroupForIdentifier_completion___block_invoke;
  activity_block[3] = &unk_279B59A70;
  v12 = self;
  v13 = v7;
  v11 = v6;
  v8 = v7;
  v9 = v6;
  objc_copyWeak(&v14, &location);
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSession: Calling beaconGroupForIdentifier:completion:", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  objc_destroyWeak(&v14);

  objc_destroyWeak(&location);
}

void __54__SPOwnerSession_beaconGroupForIdentifier_completion___block_invoke(id *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = LogCategory_OwnerSession();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "[SPOwnerSession beaconGroupForIdentifier:completion:]_block_invoke";
      _os_log_impl(&dword_2643D0000, v4, OS_LOG_TYPE_DEFAULT, "SPOwnerSession: SPI: %s", buf, 0xCu);
    }

    v5 = [a1[5] queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__SPOwnerSession_beaconGroupForIdentifier_completion___block_invoke_268;
    block[3] = &unk_279B58BA8;
    objc_copyWeak(&v12, a1 + 7);
    v10 = a1[4];
    v11 = a1[6];
    dispatch_async(v5, block);

    objc_destroyWeak(&v12);
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __54__SPOwnerSession_beaconGroupForIdentifier_completion___block_invoke_cold_1();
    }

    v6 = a1[6];
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.icloud.searchpartyd.SPOwnerSession.ErrorDomain" code:17 userInfo:0];
    v6[2](v6, 0, v7);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __54__SPOwnerSession_beaconGroupForIdentifier_completion___block_invoke_268(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained userAgentProxy];
  [v2 beaconGroupForIdentifier:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)hasAccessoryWithCapabilities:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __58__SPOwnerSession_hasAccessoryWithCapabilities_completion___block_invoke;
  activity_block[3] = &unk_279B59AC0;
  v10[1] = a3;
  activity_block[4] = self;
  v9 = v6;
  v7 = v6;
  objc_copyWeak(v10, &location);
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSession: Calling hasAccessoryWithCapabilities:completion:", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  objc_destroyWeak(v10);

  objc_destroyWeak(&location);
}

void __58__SPOwnerSession_hasAccessoryWithCapabilities_completion___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v3 = LogCategory_OwnerSession();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[SPOwnerSession hasAccessoryWithCapabilities:completion:]_block_invoke";
      _os_log_impl(&dword_2643D0000, v4, OS_LOG_TYPE_DEFAULT, "SPOwnerSession: SPI: %s", buf, 0xCu);
    }

    v5 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__SPOwnerSession_hasAccessoryWithCapabilities_completion___block_invoke_269;
    block[3] = &unk_279B59A98;
    objc_copyWeak(v11, (a1 + 48));
    v11[1] = *(a1 + 56);
    v10 = *(a1 + 40);
    dispatch_async(v5, block);

    objc_destroyWeak(v11);
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __58__SPOwnerSession_hasAccessoryWithCapabilities_completion___block_invoke_cold_1();
    }

    v6 = *(a1 + 40);
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.icloud.searchpartyd.SPOwnerSession.ErrorDomain" code:5 userInfo:0];
    (*(v6 + 16))(v6, 0, v7);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __58__SPOwnerSession_hasAccessoryWithCapabilities_completion___block_invoke_269(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained userAgentProxy];
  [v2 hasAccessoryWithCapabilities:*(a1 + 48) completion:*(a1 + 32)];
}

- (void)beaconGroupsForUUIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(SPOwnerSession *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__SPOwnerSession_beaconGroupsForUUIDs_completion___block_invoke;
  v11[3] = &unk_279B58BA8;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __50__SPOwnerSession_beaconGroupsForUUIDs_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained userAgentProxy];
  [v2 beaconGroupsForUUIDs:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)standaloneBeaconsForUUIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(SPOwnerSession *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__SPOwnerSession_standaloneBeaconsForUUIDs_completion___block_invoke;
  v11[3] = &unk_279B58BA8;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __55__SPOwnerSession_standaloneBeaconsForUUIDs_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained userAgentProxy];
  [v2 standaloneBeaconsForUUIDs:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)beaconingIdentifierForMACAddress:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(SPOwnerSession *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__SPOwnerSession_beaconingIdentifierForMACAddress_completion___block_invoke;
  v11[3] = &unk_279B58BA8;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __62__SPOwnerSession_beaconingIdentifierForMACAddress_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained userAgentProxy];
  [v2 beaconingIdentifierForMACAddress:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)clientConfigurationWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(SPOwnerSession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SPOwnerSession_clientConfigurationWithCompletion___block_invoke;
  block[3] = &unk_279B59650;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __52__SPOwnerSession_clientConfigurationWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained userAgentProxy];
  [v2 clientConfigurationWithCompletion:*(a1 + 32)];
}

- (void)fetchFindMyNetworkStatusForMACAddress:(id)a3 completion:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v6;
    _os_log_impl(&dword_2643D0000, v8, OS_LOG_TYPE_DEFAULT, "SPOwnerSession: fetchFindMyNetworkStatusForMACAddress: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v9 = [(SPOwnerSession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__SPOwnerSession_fetchFindMyNetworkStatusForMACAddress_completion___block_invoke;
  block[3] = &unk_279B58BA8;
  objc_copyWeak(&v16, buf);
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
  v12 = *MEMORY[0x277D85DE8];
}

void __67__SPOwnerSession_fetchFindMyNetworkStatusForMACAddress_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained userAgentProxy];
  [v2 fetchFindMyNetworkStatusForMACAddress:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)setFindMyNetworkStatusForMACAddress:(id)a3 status:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109378;
    HIDWORD(buf) = v6;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_2643D0000, v10, OS_LOG_TYPE_DEFAULT, "SPOwnerSession: setFindMyNetworkStatus: %d for MACAddress: %@", &buf, 0x12u);
  }

  objc_initWeak(&buf, self);
  v11 = [(SPOwnerSession *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72__SPOwnerSession_setFindMyNetworkStatusForMACAddress_status_completion___block_invoke;
  v15[3] = &unk_279B59678;
  objc_copyWeak(&v18, &buf);
  v19 = v6;
  v16 = v8;
  v17 = v9;
  v12 = v9;
  v13 = v8;
  dispatch_async(v11, v15);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&buf);
  v14 = *MEMORY[0x277D85DE8];
}

void __72__SPOwnerSession_setFindMyNetworkStatusForMACAddress_status_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained userAgentProxy];
  [v2 setFindMyNetworkStatusForMACAddress:*(a1 + 32) status:*(a1 + 56) completion:*(a1 + 40)];
}

- (void)connectUsingMACAddress:(id)a3 longTermKey:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = [(SPOwnerSession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__SPOwnerSession_connectUsingMACAddress_longTermKey_completion___block_invoke;
  block[3] = &unk_279B59A20;
  objc_copyWeak(&v19, &location);
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __64__SPOwnerSession_connectUsingMACAddress_longTermKey_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained userAgentProxy];
  [v2 connectUsingMACAddress:*(a1 + 32) longTermKey:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)disconnectFromMACAddress:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(SPOwnerSession *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__SPOwnerSession_disconnectFromMACAddress_completion___block_invoke;
  v11[3] = &unk_279B58BA8;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __54__SPOwnerSession_disconnectFromMACAddress_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained userAgentProxy];
  [v2 disconnectFromMACAddress:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)simulateAccessoryPairing:(id)a3 name:(id)a4 isAirPods:(BOOL)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  objc_initWeak(&location, self);
  v13 = [(SPOwnerSession *)self queue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __69__SPOwnerSession_simulateAccessoryPairing_name_isAirPods_completion___block_invoke;
  v17[3] = &unk_279B59AE8;
  objc_copyWeak(&v21, &location);
  v18 = v10;
  v19 = v11;
  v22 = a5;
  v20 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, v17);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __69__SPOwnerSession_simulateAccessoryPairing_name_isAirPods_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained userAgentProxy];
  [v2 simulateAccessoryPairing:*(a1 + 32) name:*(a1 + 40) isAirPods:*(a1 + 64) completion:*(a1 + 48)];
}

- (void)forceKeySyncForBeaconUUID:(id)a3 lastObservationDate:(id)a4 lastObservationIndex:(unint64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  objc_initWeak(&location, self);
  v13 = [(SPOwnerSession *)self queue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __96__SPOwnerSession_forceKeySyncForBeaconUUID_lastObservationDate_lastObservationIndex_completion___block_invoke;
  v17[3] = &unk_279B59B10;
  objc_copyWeak(v21, &location);
  v18 = v10;
  v19 = v11;
  v21[1] = a5;
  v20 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, v17);

  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
}

void __96__SPOwnerSession_forceKeySyncForBeaconUUID_lastObservationDate_lastObservationIndex_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained userAgentProxy];
  [v2 forceKeySyncForBeaconUUID:*(a1 + 32) lastObservationDate:*(a1 + 40) lastObservationIndex:*(a1 + 64) completion:*(a1 + 48)];
}

- (void)fakeClassicPairingWithMACAddress:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(SPOwnerSession *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__SPOwnerSession_fakeClassicPairingWithMACAddress_completion___block_invoke;
  v11[3] = &unk_279B58BA8;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __62__SPOwnerSession_fakeClassicPairingWithMACAddress_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained userAgentProxy];
  [v2 fakeClassicPairingWithMACAddress:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)forceRePairingWithUUID:(id)a3 partIds:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = [(SPOwnerSession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__SPOwnerSession_forceRePairingWithUUID_partIds_completion___block_invoke;
  block[3] = &unk_279B59A20;
  objc_copyWeak(&v19, &location);
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __60__SPOwnerSession_forceRePairingWithUUID_partIds_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained userAgentProxy];
  [v2 forceRePairingWithUUID:*(a1 + 32) partIds:*(a1 + 40) completion:*(a1 + 48)];
}

- (id)executeCommand:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v4;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "SPOwnerSession: executeCommand: %@", buf, 0xCu);
  }

  v6 = objc_alloc_init(MEMORY[0x277D07B68]);
  v7 = [MEMORY[0x277CBEAA8] date];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __33__SPOwnerSession_executeCommand___block_invoke;
  v18 = &unk_279B59B38;
  v19 = v4;
  v8 = v6;
  v20 = v8;
  v21 = self;
  v22 = v7;
  v9 = v7;
  v10 = v4;
  v11 = _Block_copy(&v15);
  [(SPOwnerSession *)self executeCommand:v10 completion:v11, v15, v16, v17, v18];
  v12 = v8;

  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

void __33__SPOwnerSession_executeCommand___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412290;
    v26 = v5;
    _os_log_impl(&dword_2643D0000, v4, OS_LOG_TYPE_DEFAULT, "SPOwnerSession: commandCompletion: %@", buf, 0xCu);
  }

  if (v3)
  {
    v6 = LogCategory_OwnerSession();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) identifier];
      v8 = [v7 UUIDString];
      *buf = 138412546;
      v26 = v8;
      v27 = 2112;
      v28 = v3;
      _os_log_impl(&dword_2643D0000, v6, OS_LOG_TYPE_DEFAULT, "SPOwnerSession: Command: %@ finishing with error %@", buf, 0x16u);
    }

    v9 = dispatch_get_global_queue(0, 0);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __33__SPOwnerSession_executeCommand___block_invoke_271;
    v22[3] = &unk_279B58C78;
    v23 = *(a1 + 40);
    v24 = v3;
    dispatch_async(v9, v22);
  }

  else
  {
    v10 = [*(a1 + 32) taskName];

    v11 = LogCategory_OwnerSession();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        v13 = [*(a1 + 32) identifier];
        v14 = [v13 UUIDString];
        v15 = [*(a1 + 32) taskName];
        *buf = 138412546;
        v26 = v14;
        v27 = 2112;
        v28 = v15;
        _os_log_impl(&dword_2643D0000, v11, OS_LOG_TYPE_DEFAULT, "SPOwnerSession: Command: %@ finishing with task: %@", buf, 0x16u);
      }

      [*(a1 + 48) finishBeaconGroupFuture:*(a1 + 40) command:*(a1 + 32) commandIssueDate:*(a1 + 56)];
    }

    else
    {
      if (v12)
      {
        v16 = [*(a1 + 32) identifier];
        v17 = [v16 UUIDString];
        *buf = 138412290;
        v26 = v17;
        _os_log_impl(&dword_2643D0000, v11, OS_LOG_TYPE_DEFAULT, "SPOwnerSession: Command: %@ finishing with no task.", buf, 0xCu);
      }

      v19 = *(a1 + 40);
      v18 = *(a1 + 48);
      v20 = [*(a1 + 32) beaconIdentifier];
      [v18 finishBeaconFuture:v19 beaconUUID:v20];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)finishBeaconGroupFuture:(id)a3 command:(id)a4 commandIssueDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x277CBEA60];
  v12 = [v9 beaconIdentifier];
  v13 = [v11 arrayWithObject:v12];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __67__SPOwnerSession_finishBeaconGroupFuture_command_commandIssueDate___block_invoke;
  v18[3] = &unk_279B59B88;
  v19 = v9;
  v20 = v8;
  v21 = self;
  v22 = v13;
  v23 = v10;
  v14 = v10;
  v15 = v13;
  v16 = v8;
  v17 = v9;
  [(SPOwnerSession *)self beaconGroupsForUUIDs:v15 completion:v18];
}

void __67__SPOwnerSession_finishBeaconGroupFuture_command_commandIssueDate___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if ([a2 count])
  {
    v3 = objc_opt_new();
    v4 = [*(a1 + 32) beaconIdentifier];
    [v3 setIdentifier:v4];

    v5 = LogCategory_OwnerSession();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) beaconIdentifier];
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "SPOwnerSession: finishBeaconGroupFuture: GroupUUID: %@", buf, 0xCu);
    }

    [*(a1 + 40) finishWithResult:v3];
  }

  else
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __67__SPOwnerSession_finishBeaconGroupFuture_command_commandIssueDate___block_invoke_273;
    v12[3] = &unk_279B59B60;
    v13 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v14 = v9;
    v15 = v10;
    v16 = *(a1 + 64);
    [v7 unknownBeaconsForUUIDs:v8 completion:v12];

    v3 = v13;
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __67__SPOwnerSession_finishBeaconGroupFuture_command_commandIssueDate___block_invoke_273(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if ([a2 count])
  {
    v3 = objc_opt_new();
    v4 = [*(a1 + 32) beaconIdentifier];
    [v3 setIdentifier:v4];

    v5 = LogCategory_OwnerSession();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) beaconIdentifier];
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "SPOwnerSession: finish future with unknown beacon: %@", &v13, 0xCu);
    }

    [*(a1 + 40) finishWithResult:v3];
  }

  else
  {
    v7 = LogCategory_OwnerSession();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __67__SPOwnerSession_finishBeaconGroupFuture_command_commandIssueDate___block_invoke_273_cold_1();
    }

    v9 = *(a1 + 40);
    v8 = *(a1 + 48);
    v3 = [*(a1 + 32) beaconIdentifier];
    v10 = [*(a1 + 32) taskName];
    v11 = [*(a1 + 32) identifier];
    [v8 addBeaconChangedListener:v9 beaconUUID:v3 taskName:v10 commandIdentifier:v11 commandIssueDate:*(a1 + 56)];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)finishBeaconFuture:(id)a3 beaconUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__SPOwnerSession_finishBeaconFuture_beaconUUID___block_invoke;
  v10[3] = &unk_279B59BD8;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  [(SPOwnerSession *)self allBeaconsWithCompletion:v10];
}

void __48__SPOwnerSession_finishBeaconFuture_beaconUUID___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__SPOwnerSession_finishBeaconFuture_beaconUUID___block_invoke_2;
  v10[3] = &unk_279B59BB0;
  v11 = *(a1 + 32);
  v4 = [a2 fm_firstObjectPassingTest:v10];
  v5 = LogCategory_OwnerSession();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138412290;
      v13 = v7;
      _os_log_impl(&dword_2643D0000, v6, OS_LOG_TYPE_DEFAULT, "SPOwnerSession: finishBeaconFuture: BeaconUUID: %@", buf, 0xCu);
    }

    [*(a1 + 40) finishWithResult:v4];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __48__SPOwnerSession_finishBeaconFuture_beaconUUID___block_invoke_cold_1();
    }

    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.icloud.searchpartyd.SPOwnerSession.ErrorDomain" code:2 userInfo:0];
    [*(a1 + 40) finishWithError:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __48__SPOwnerSession_finishBeaconFuture_beaconUUID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)addBeaconChangedListener:(id)a3 beaconUUID:(id)a4 taskName:(id)a5 commandIdentifier:(id)a6 commandIssueDate:(id)a7
{
  v45[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(SPOwnerSession *)self queue];
  v18 = objc_opt_new();
  v19 = [SPSimpleBeaconContext alloc];
  v45[0] = v13;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:1];
  v21 = [(SPSimpleBeaconContext *)v19 initWithFetchProperties:4608 matchingBeaconUUIDs:v20];

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __98__SPOwnerSession_addBeaconChangedListener_beaconUUID_taskName_commandIdentifier_commandIssueDate___block_invoke;
  v38[3] = &unk_279B59C50;
  v22 = v13;
  v39 = v22;
  v40 = v17;
  v41 = v14;
  v42 = v15;
  v43 = v16;
  v44 = v12;
  v23 = v12;
  v24 = v16;
  v25 = v15;
  v26 = v14;
  v27 = v17;
  [v18 setSimpleBeaconDifferenceBlock:v38];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __98__SPOwnerSession_addBeaconChangedListener_beaconUUID_taskName_commandIdentifier_commandIssueDate___block_invoke_2_284;
  v36[3] = &unk_279B58A20;
  v28 = v22;
  v37 = v28;
  [v18 startUpdatingSimpleBeaconsWithContext:v21 completion:v36];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __98__SPOwnerSession_addBeaconChangedListener_beaconUUID_taskName_commandIdentifier_commandIssueDate___block_invoke_286;
  v33[3] = &unk_279B59C78;
  v34 = v18;
  v35 = v28;
  v29 = v28;
  v30 = v18;
  v31 = [v23 addCompletionBlock:v33];

  v32 = *MEMORY[0x277D85DE8];
}

void __98__SPOwnerSession_addBeaconChangedListener_beaconUUID_taskName_commandIdentifier_commandIssueDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [v5 insertions];
    *buf = 138412802;
    v21 = v8;
    v22 = 2048;
    v23 = [v9 count];
    v24 = 2112;
    v25 = v6;
    _os_log_impl(&dword_2643D0000, v7, OS_LOG_TYPE_DEFAULT, "SPOwnerSession: task info updated beacon: %@, changes: %lu, error %@", buf, 0x20u);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __98__SPOwnerSession_addBeaconChangedListener_beaconUUID_taskName_commandIdentifier_commandIssueDate___block_invoke_279;
  v13[3] = &unk_279B59C28;
  v14 = v5;
  v10 = *(a1 + 40);
  v15 = *(a1 + 32);
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v18 = *(a1 + 64);
  v19 = *(a1 + 72);
  v11 = v5;
  dispatch_async(v10, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __98__SPOwnerSession_addBeaconChangedListener_beaconUUID_taskName_commandIdentifier_commandIssueDate___block_invoke_279(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) insertions];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __98__SPOwnerSession_addBeaconChangedListener_beaconUUID_taskName_commandIdentifier_commandIssueDate___block_invoke_2;
  v36[3] = &unk_279B59C00;
  v37 = *(a1 + 40);
  v3 = [v2 fm_filter:v36];
  v4 = [v3 firstObject];
  v5 = [v4 object];

  v6 = [v5 taskInformation];
  v7 = [v6 objectForKeyedSubscript:*(a1 + 48)];

  v8 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 40);
    v10 = [v7 lastUpdated];
    v11 = [v7 state];
    *buf = 138412802;
    v39 = v9;
    v40 = 2112;
    v41 = v10;
    v42 = 2048;
    v43 = v11;
    _os_log_impl(&dword_2643D0000, v8, OS_LOG_TYPE_DEFAULT, "SPOwnerSession: task info updated beacon: %@, date: %@, state %ld", buf, 0x20u);
  }

  if (v7)
  {
    v12 = LogCategory_OwnerSession();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v7 lastUpdated];
      v14 = *(a1 + 56);
      *buf = 138412546;
      v39 = v13;
      v40 = 2112;
      v41 = v14;
      _os_log_impl(&dword_2643D0000, v12, OS_LOG_TYPE_DEFAULT, "SPOwnerSession: task last updated: %@ command: %@", buf, 0x16u);
    }

    v15 = [v7 lastUpdated];
    [v15 timeIntervalSinceReferenceDate];
    v17 = v16;
    [*(a1 + 64) timeIntervalSinceReferenceDate];
    if (v17 > v18)
    {
    }

    else
    {
      v19 = [v7 commandIdentifier];
      v20 = [v19 isEqual:*(a1 + 56)];

      if (!v20)
      {
        goto LABEL_18;
      }
    }

    v25 = LogCategory_OwnerSession();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [v7 name];
      v27 = *(a1 + 56);
      *buf = 138412546;
      v39 = v26;
      v40 = 2112;
      v41 = v27;
      _os_log_impl(&dword_2643D0000, v25, OS_LOG_TYPE_DEFAULT, "SPOwnerSession: task completed: %@ command: %@", buf, 0x16u);
    }

    v28 = dispatch_get_global_queue(0, 0);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __98__SPOwnerSession_addBeaconChangedListener_beaconUUID_taskName_commandIdentifier_commandIssueDate___block_invoke_281;
    v33[3] = &unk_279B58C78;
    v34 = v5;
    v35 = *(a1 + 72);
    dispatch_async(v28, v33);

    v24 = v34;
    goto LABEL_17;
  }

  if (v5)
  {
    v21 = LogCategory_OwnerSession();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      __98__SPOwnerSession_addBeaconChangedListener_beaconUUID_taskName_commandIdentifier_commandIssueDate___block_invoke_279_cold_1((a1 + 48), v21);
    }

    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.icloud.searchpartyd.SPOwnerSession.ErrorDomain" code:3 userInfo:0];
    v23 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __98__SPOwnerSession_addBeaconChangedListener_beaconUUID_taskName_commandIdentifier_commandIssueDate___block_invoke_282;
    block[3] = &unk_279B58C78;
    v31 = *(a1 + 72);
    v32 = v22;
    v24 = v22;
    dispatch_async(v23, block);

LABEL_17:
  }

LABEL_18:

  v29 = *MEMORY[0x277D85DE8];
}

uint64_t __98__SPOwnerSession_addBeaconChangedListener_beaconUUID_taskName_commandIdentifier_commandIssueDate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  v4 = [v3 identifier];
  v5 = [v4 isEqual:*(a1 + 32)];

  return v5;
}

void __98__SPOwnerSession_addBeaconChangedListener_beaconUUID_taskName_commandIdentifier_commandIssueDate___block_invoke_281(uint64_t a1)
{
  v15 = objc_alloc_init(SPBeacon);
  v2 = [*(a1 + 32) identifier];
  [(SPBeacon *)v15 setIdentifier:v2];

  v3 = [*(a1 + 32) groupIdentifier];
  [(SPBeacon *)v15 setGroupIdentifier:v3];

  -[SPBeacon setPartIdentifier:](v15, "setPartIdentifier:", [*(a1 + 32) partIdentifier]);
  v4 = [*(a1 + 32) owner];
  [(SPBeacon *)v15 setOwner:v4];

  v5 = [*(a1 + 32) name];
  [(SPBeacon *)v15 setName:v5];

  v6 = [*(a1 + 32) modelName];
  [(SPBeacon *)v15 setModel:v6];

  v7 = [*(a1 + 32) role];
  [(SPBeacon *)v15 setRole:v7];

  v8 = [*(a1 + 32) lostModeInfo];
  [(SPBeacon *)v15 setLostModeInfo:v8];

  v9 = [*(a1 + 32) taskInformation];
  [(SPBeacon *)v15 setTaskInformation:v9];

  v10 = [*(a1 + 32) systemVersion];
  [(SPBeacon *)v15 setSystemVersion:v10];

  v11 = [*(a1 + 32) productUUID];
  [(SPBeacon *)v15 setProductUUID:v11];

  -[SPBeacon setVendorId:](v15, "setVendorId:", [*(a1 + 32) vendorId]);
  -[SPBeacon setProductId:](v15, "setProductId:", [*(a1 + 32) productId]);
  v12 = [*(a1 + 32) type];
  [(SPBeacon *)v15 setType:v12];

  -[SPBeacon setBatteryLevel:](v15, "setBatteryLevel:", [*(a1 + 32) batteryLevel]);
  -[SPBeacon setIsZeus:](v15, "setIsZeus:", [*(a1 + 32) isZeus]);
  -[SPBeacon setConnected:](v15, "setConnected:", [*(a1 + 32) connected]);
  -[SPBeacon setCanBeLeashedByHost:](v15, "setCanBeLeashedByHost:", [*(a1 + 32) canBeLeashedByHost]);
  -[SPBeacon setConnectionAllowed:](v15, "setConnectionAllowed:", [*(a1 + 32) connectionAllowed]);
  -[SPBeacon setConnectableDeviceCount:](v15, "setConnectableDeviceCount:", [*(a1 + 32) connectableDeviceCount]);
  v13 = [*(a1 + 32) safeLocations];
  [(SPBeacon *)v15 setSafeLocations:v13];

  v14 = [*(a1 + 32) accessoryProductInfo];
  [(SPBeacon *)v15 setAccessoryProductInfo:v14];

  [*(a1 + 40) finishWithResult:v15];
}

void __98__SPOwnerSession_addBeaconChangedListener_beaconUUID_taskName_commandIdentifier_commandIssueDate___block_invoke_2_284(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v9 = 138412802;
    v10 = v7;
    v11 = 1024;
    v12 = a2;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_2643D0000, v6, OS_LOG_TYPE_DEFAULT, "SPOwnerSession: registered for task info updates on this beacon: %@, subscribed: %i, error %@", &v9, 0x1Cu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __98__SPOwnerSession_addBeaconChangedListener_beaconUUID_taskName_commandIdentifier_commandIssueDate___block_invoke_286(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __98__SPOwnerSession_addBeaconChangedListener_beaconUUID_taskName_commandIdentifier_commandIssueDate___block_invoke_2_287;
  v2[3] = &unk_279B58A20;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 stopUpdatingSimpleBeaconsWithCompletion:v2];
}

void __98__SPOwnerSession_addBeaconChangedListener_beaconUUID_taskName_commandIdentifier_commandIssueDate___block_invoke_2_287(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v9 = 138412802;
    v10 = v7;
    v11 = 1024;
    v12 = a2;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_2643D0000, v6, OS_LOG_TYPE_DEFAULT, "SPOwnerSession: stopped all task info updates on this beacon: %@, stopped: %i, error %@", &v9, 0x1Cu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)executeCommand:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __44__SPOwnerSession_executeCommand_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  activity_block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSession: Calling executeCommand:completion:", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __44__SPOwnerSession_executeCommand_completion___block_invoke(id *a1)
{
  objc_initWeak(&location, a1[4]);
  v2 = [a1[4] queue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__SPOwnerSession_executeCommand_completion___block_invoke_2;
  v3[3] = &unk_279B58BA8;
  objc_copyWeak(&v6, &location);
  v4 = a1[5];
  v5 = a1[6];
  dispatch_async(v2, v3);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __44__SPOwnerSession_executeCommand_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained userAgentProxy];
  [v2 executeCommand:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)startRefreshing
{
  v3 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v3, OS_LOG_TYPE_DEFAULT, "SPOwnerSession: startRefreshing", buf, 2u);
  }

  v4 = [(SPOwnerSession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__SPOwnerSession_startRefreshing__block_invoke;
  block[3] = &unk_279B58AE8;
  block[4] = self;
  dispatch_async(v4, block);
}

void __33__SPOwnerSession_startRefreshing__block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __33__SPOwnerSession_startRefreshing__block_invoke_2;
  v12[3] = &unk_279B58D88;
  objc_copyWeak(&v13, &location);
  [v2 registerDarwinNotificationName:@"SPBeaconsChangedNotification" block:v12];
  v3 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __33__SPOwnerSession_startRefreshing__block_invoke_3;
  v10[3] = &unk_279B58D88;
  objc_copyWeak(&v11, &location);
  [v3 registerDarwinNotificationName:@"com.apple.locationd.authorization" block:v10];
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __33__SPOwnerSession_startRefreshing__block_invoke_4;
  v8[3] = &unk_279B58D88;
  objc_copyWeak(&v9, &location);
  [v4 registerDarwinNotificationName:@"com.apple.locationd/Prefs" block:v8];
  v5 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__SPOwnerSession_startRefreshing__block_invoke_5;
  v6[3] = &unk_279B58D88;
  objc_copyWeak(&v7, &location);
  [v5 registerDarwinNotificationName:@"com.apple.icloud.searchparty.ServiceSettingsChanged" block:v6];
  [*(a1 + 32) updateAllBeacons];
  [*(a1 + 32) _updateOwnerSessionState];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __33__SPOwnerSession_startRefreshing__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateAllBeacons];
}

void __33__SPOwnerSession_startRefreshing__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateAllBeacons];
}

void __33__SPOwnerSession_startRefreshing__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateAllBeacons];
}

void __33__SPOwnerSession_startRefreshing__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateOwnerSessionState];
}

- (void)startRefreshingBeacons:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v16 = [v4 count];
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "SPOwnerSession: startRefreshingBeacons: %lu", buf, 0xCu);
  }

  v6 = [(SPOwnerSession *)self queue];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __41__SPOwnerSession_startRefreshingBeacons___block_invoke;
  v12 = &unk_279B58C78;
  v13 = self;
  v14 = v4;
  v7 = v4;
  dispatch_async(v6, &v9);

  [(SPOwnerSession *)self startRefreshing:v9];
  v8 = *MEMORY[0x277D85DE8];
}

void __41__SPOwnerSession_startRefreshingBeacons___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 40)];
  [*(a1 + 32) setClientObservedBeacons:v2];
}

- (void)stopRefreshing
{
  v3 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v3, OS_LOG_TYPE_DEFAULT, "SPOwnerSession: stopRefreshing", buf, 2u);
  }

  v4 = [(SPOwnerSession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__SPOwnerSession_stopRefreshing__block_invoke;
  block[3] = &unk_279B58AE8;
  block[4] = self;
  dispatch_async(v4, block);

  v5 = [(SPOwnerSession *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__SPOwnerSession_stopRefreshing__block_invoke_2;
  v6[3] = &unk_279B58AE8;
  v6[4] = self;
  dispatch_sync(v5, v6);
}

- (void)updateAllBeacons
{
  v3 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2643D0000, v3, OS_LOG_TYPE_DEFAULT, "SPOwnerSession: updateAllBeacons:", v4, 2u);
  }

  [(SPOwnerSession *)self allBeaconsWithCompletion:&__block_literal_global_290];
}

void __34__SPOwnerSession_updateAllBeacons__block_invoke()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:SPOwnerBeaconsChangedLocalNotification object:0];
}

- (NSSet)allBeacons
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4;
  v11 = __Block_byref_object_dispose__4;
  v12 = 0;
  v3 = [(SPOwnerSession *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __28__SPOwnerSession_allBeacons__block_invoke;
  v6[3] = &unk_279B58D60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __28__SPOwnerSession_allBeacons__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) allBeaconsCache];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)allBeaconsWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(SPOwnerSession *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__SPOwnerSession_allBeaconsWithCompletion___block_invoke;
  v8[3] = &unk_279B58BA8;
  objc_copyWeak(&v11, &location);
  v9 = v5;
  v10 = v4;
  v6 = v4;
  v7 = v5;
  dispatch_async(v7, v8);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __43__SPOwnerSession_allBeaconsWithCompletion___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained userAgentProxy];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__SPOwnerSession_allBeaconsWithCompletion___block_invoke_2;
  v4[3] = &unk_279B59CC0;
  v5 = a1[4];
  objc_copyWeak(&v7, a1 + 6);
  v6 = a1[5];
  [v3 allBeaconsWithCompletion:v4];

  objc_destroyWeak(&v7);
}

void __43__SPOwnerSession_allBeaconsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__SPOwnerSession_allBeaconsWithCompletion___block_invoke_3;
  v8[3] = &unk_279B59228;
  objc_copyWeak(&v10, (a1 + 48));
  v5 = v3;
  v9 = v5;
  dispatch_async(v4, v8);
  (*(*(a1 + 40) + 16))(*(a1 + 40), v5, v6, v7);

  objc_destroyWeak(&v10);
}

void __43__SPOwnerSession_allBeaconsWithCompletion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setAllBeaconsCache:*(a1 + 32)];
  [WeakRetained updateConnectionExpiryDispatchTimerWithBeacons:*(a1 + 32)];
  v3 = [WeakRetained tagSeparationBeaconsChangedBlock];
  if (v3)
  {
    v4 = dispatch_get_global_queue(0, 0);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __43__SPOwnerSession_allBeaconsWithCompletion___block_invoke_4;
    v5[3] = &unk_279B59398;
    v5[4] = WeakRetained;
    v6 = v3;
    dispatch_async(v4, v5);
  }
}

void __43__SPOwnerSession_allBeaconsWithCompletion___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) beaconsToLeash];
  (*(v1 + 16))(v1, v2);
}

- (void)startUpdatingApplicationBeaconsWithContext:(id)a3 collectionDifference:(id)a4 completion:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v26 = "[SPOwnerSession startUpdatingApplicationBeaconsWithContext:collectionDifference:completion:]";
    _os_log_impl(&dword_2643D0000, v11, OS_LOG_TYPE_DEFAULT, "SPOwnerSession: SPI: %{public}s", buf, 0xCu);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__SPOwnerSession_startUpdatingApplicationBeaconsWithContext_collectionDifference_completion___block_invoke;
  aBlock[3] = &unk_279B58E30;
  aBlock[4] = self;
  v22 = v8;
  v23 = v9;
  v24 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  v15 = _Block_copy(aBlock);
  v16 = [(SPOwnerSession *)self queue];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __93__SPOwnerSession_startUpdatingApplicationBeaconsWithContext_collectionDifference_completion___block_invoke_4;
  v19[3] = &unk_279B58B80;
  v19[4] = self;
  v20 = v15;
  v17 = v15;
  dispatch_async(v16, v19);

  v18 = *MEMORY[0x277D85DE8];
}

void __93__SPOwnerSession_startUpdatingApplicationBeaconsWithContext_collectionDifference_completion___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  [*(a1 + 32) setSimpleBeaconUpdateInterface:v2];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __93__SPOwnerSession_startUpdatingApplicationBeaconsWithContext_collectionDifference_completion___block_invoke_2;
  v3[3] = &unk_279B58E78;
  v4 = *(a1 + 48);
  [v2 setSimpleBeaconDifferenceBlock:v3];
  [v2 startUpdatingSimpleBeaconsWithContext:*(a1 + 40) completion:*(a1 + 56)];
}

void __93__SPOwnerSession_startUpdatingApplicationBeaconsWithContext_collectionDifference_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v11 = v5;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = [v5 insertions];
    v7 = [v11 removals];
    v8 = [v6 arrayByAddingObjectsFromArray:v7];
    v9 = [v8 fm_map:&__block_literal_global_294];

    v10 = [objc_alloc(MEMORY[0x277CCABF0]) initWithChanges:v9];
    (*(*(a1 + 32) + 16))();
  }
}

id __93__SPOwnerSession_startUpdatingApplicationBeaconsWithContext_collectionDifference_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SPApplicationBeacon alloc];
  v4 = [v2 object];
  v5 = [(SPApplicationBeacon *)v3 initWithInternalSimpleBeacon:v4];

  v6 = objc_alloc(MEMORY[0x277CCABE8]);
  v7 = [v2 changeType];
  v8 = [v2 index];

  v9 = [v6 initWithObject:v5 type:v7 index:v8];

  return v9;
}

void __93__SPOwnerSession_startUpdatingApplicationBeaconsWithContext_collectionDifference_completion___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) simpleBeaconUpdateInterface];

  if (v2)
  {
    v3 = *(a1 + 32);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __93__SPOwnerSession_startUpdatingApplicationBeaconsWithContext_collectionDifference_completion___block_invoke_5;
    v5[3] = &unk_279B597A0;
    v5[4] = v3;
    v6 = *(a1 + 40);
    [v3 stopUpdatingApplicationBeaconsWithCompletion:v5];
  }

  else
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

void __93__SPOwnerSession_startUpdatingApplicationBeaconsWithContext_collectionDifference_completion___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__SPOwnerSession_startUpdatingApplicationBeaconsWithContext_collectionDifference_completion___block_invoke_6;
  block[3] = &unk_279B58EF8;
  v4 = *(a1 + 40);
  dispatch_async(v2, block);
}

- (void)stopUpdatingApplicationBeaconsWithCompletion:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v12 = "[SPOwnerSession stopUpdatingApplicationBeaconsWithCompletion:]";
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "SPOwnerSession: SPI: %{public}s", buf, 0xCu);
  }

  v6 = [(SPOwnerSession *)self queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__SPOwnerSession_stopUpdatingApplicationBeaconsWithCompletion___block_invoke;
  v9[3] = &unk_279B58B80;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_async(v6, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __63__SPOwnerSession_stopUpdatingApplicationBeaconsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) simpleBeaconUpdateInterface];
  if (v2)
  {
    [*(a1 + 32) setSimpleBeaconUpdateInterface:0];
    [v2 stopUpdatingSimpleBeaconsWithCompletion:*(a1 + 40)];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)unacceptedBeaconsWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(SPOwnerSession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SPOwnerSession_unacceptedBeaconsWithCompletion___block_invoke;
  block[3] = &unk_279B59650;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __50__SPOwnerSession_unacceptedBeaconsWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained userAgentProxy];
  [v2 unacceptedBeaconsWithCompletion:*(a1 + 32)];
}

- (void)removeBeacon:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(SPOwnerSession *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__SPOwnerSession_removeBeacon_completion___block_invoke;
  v11[3] = &unk_279B58BA8;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __42__SPOwnerSession_removeBeacon_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained userAgentProxy];
  [v2 removeBeacon:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)removeBeaconFromGroup:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(SPOwnerSession *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__SPOwnerSession_removeBeaconFromGroup_completion___block_invoke;
  v11[3] = &unk_279B58BA8;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __51__SPOwnerSession_removeBeaconFromGroup_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained userAgentProxy];
  [v2 removeBeaconFromGroup:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)beaconStoreStatusWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(SPOwnerSession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SPOwnerSession_beaconStoreStatusWithCompletion___block_invoke;
  block[3] = &unk_279B59650;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __50__SPOwnerSession_beaconStoreStatusWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained userAgentProxy];
  [v2 beaconStoreStatusWithCompletion:*(a1 + 32)];
}

- (void)waitForBeaconStoreAvailableWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(SPOwnerSession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__SPOwnerSession_waitForBeaconStoreAvailableWithCompletion___block_invoke;
  block[3] = &unk_279B59650;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __60__SPOwnerSession_waitForBeaconStoreAvailableWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained userAgentProxy];
  [v2 waitForBeaconStoreAvailableWithCompletion:*(a1 + 32)];
}

- (void)updateBeaconObservations:(id)a3 completion:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v6;
    _os_log_impl(&dword_2643D0000, v8, OS_LOG_TYPE_DEFAULT, "update beacon observations %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v9 = [(SPOwnerSession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SPOwnerSession_updateBeaconObservations_completion___block_invoke;
  block[3] = &unk_279B58BA8;
  objc_copyWeak(&v16, buf);
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
  v12 = *MEMORY[0x277D85DE8];
}

void __54__SPOwnerSession_updateBeaconObservations_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained userAgentProxy];
  [v2 updateBeaconObservations:*(a1 + 32) completion:*(a1 + 40)];
}

- (id)executeUTPlaySoundCommand:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v4;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "SPOwnerSession: executeUTPlaySoundCommand: %@", buf, 0xCu);
  }

  [(SPOwnerSession *)self startRefreshing];
  v6 = objc_alloc_init(MEMORY[0x277D07B68]);
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "playSoundContext")}];
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_2875F2BE0];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __44__SPOwnerSession_executeUTPlaySoundCommand___block_invoke;
  v20 = &unk_279B59B38;
  v21 = v4;
  v9 = v6;
  v22 = v9;
  v23 = v8;
  v24 = v7;
  v10 = v7;
  v11 = v8;
  v12 = v4;
  v13 = _Block_copy(&v17);
  [(SPOwnerSession *)self executeCommand:v12 completion:v13, v17, v18, v19, v20];
  v14 = v9;

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

void __44__SPOwnerSession_executeUTPlaySoundCommand___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412290;
    v26 = v5;
    _os_log_impl(&dword_2643D0000, v4, OS_LOG_TYPE_DEFAULT, "SPOwnerSession: commandCompletion: %@", buf, 0xCu);
  }

  if (v3)
  {
    v6 = LogCategory_OwnerSession();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) identifier];
      v8 = [v7 UUIDString];
      *buf = 138412546;
      v26 = v8;
      v27 = 2112;
      v28 = v3;
      _os_log_impl(&dword_2643D0000, v6, OS_LOG_TYPE_DEFAULT, "SPOwnerSession: executeUTPlaySoundCommand: %@ finishing with error %@", buf, 0x16u);
    }

    v9 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__SPOwnerSession_executeUTPlaySoundCommand___block_invoke_303;
    block[3] = &unk_279B58C78;
    v23 = *(a1 + 40);
    v24 = v3;
    dispatch_async(v9, block);

    v10 = v23;
  }

  else
  {
    v11 = [*(a1 + 48) containsObject:*(a1 + 56)];
    v12 = LogCategory_OwnerSession();
    v10 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [*(a1 + 32) identifier];
        v14 = [v13 UUIDString];
        *buf = 138412290;
        v26 = v14;
        _os_log_impl(&dword_2643D0000, v10, OS_LOG_TYPE_DEFAULT, "SPOwnerSession: executeUTPlaySoundCommand: %@ finished.", buf, 0xCu);
      }

      v15 = objc_opt_new();
      v16 = [*(a1 + 32) beaconIdentifier];
      [v15 setIdentifier:v16];

      v17 = dispatch_get_global_queue(0, 0);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __44__SPOwnerSession_executeUTPlaySoundCommand___block_invoke_304;
      v19[3] = &unk_279B58C78;
      v20 = *(a1 + 40);
      v21 = v15;
      v10 = v15;
      dispatch_async(v17, v19);
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __44__SPOwnerSession_executeUTPlaySoundCommand___block_invoke_cold_1(a1, (a1 + 56), v10);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)unknownBeaconsForUUIDs:(id)a3 completion:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v6;
    _os_log_impl(&dword_2643D0000, v8, OS_LOG_TYPE_DEFAULT, "unknownBeaconsForUUIDs %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v9 = [(SPOwnerSession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SPOwnerSession_unknownBeaconsForUUIDs_completion___block_invoke;
  block[3] = &unk_279B58BA8;
  objc_copyWeak(&v16, buf);
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
  v12 = *MEMORY[0x277D85DE8];
}

void __52__SPOwnerSession_unknownBeaconsForUUIDs_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained userAgentProxy];
  [v2 unknownBeaconsForUUIDs:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)updateBatteryStatus:(unsigned __int8)a3 beaconUUID:(id)a4 completion:(id)a5
{
  v6 = a3;
  v24 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v8 UUIDString];
    *buf = 67109378;
    v21 = v6;
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&dword_2643D0000, v10, OS_LOG_TYPE_DEFAULT, "updateBatteryStatus %d for beacon %@.", buf, 0x12u);
  }

  v12 = [(SPOwnerSession *)self queue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __60__SPOwnerSession_updateBatteryStatus_beaconUUID_completion___block_invoke;
  v16[3] = &unk_279B59890;
  v16[4] = self;
  v17 = v8;
  v19 = v6;
  v18 = v9;
  v13 = v9;
  v14 = v8;
  dispatch_async(v12, v16);

  v15 = *MEMORY[0x277D85DE8];
}

void __60__SPOwnerSession_updateBatteryStatus_beaconUUID_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) batteryStatusCache];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (!v3)
  {
    v5 = *(a1 + 56);
    goto LABEL_7;
  }

  v4 = [v3 unsignedCharValue];
  v5 = *(a1 + 56);
  if (v4 != v5)
  {
LABEL_7:
    [*(a1 + 32) _updateBatteryStatus:v5 beaconUUID:*(a1 + 40) completion:*(a1 + 48)];
    goto LABEL_8;
  }

  v6 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_2643D0000, v6, OS_LOG_TYPE_DEFAULT, "updateBatteryStatus: value has not changed. Not updating.", v8, 2u);
  }

  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.icloud.searchpartyd.SPOwnerSession.ErrorDomain" code:4 userInfo:0];
  (*(*(a1 + 48) + 16))();

LABEL_8:
}

void __61__SPOwnerSession__updateBatteryStatus_beaconUUID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__SPOwnerSession__updateBatteryStatus_beaconUUID_completion___block_invoke_2;
  block[3] = &unk_279B59CE8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v13 = *(a1 + 56);
  v11 = v6;
  v12 = *(a1 + 48);
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __61__SPOwnerSession__updateBatteryStatus_beaconUUID_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    v3 = LogCategory_OwnerSession();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v4 = "Battery status updated successfully. Saving new status to local cache.";
      v5 = buf;
      goto LABEL_7;
    }

LABEL_8:

    [*(a1 + 40) _cacheBatteryStatus:*(a1 + 64) beaconUUID:*(a1 + 48)];
    goto LABEL_9;
  }

  if ([v2 code] == 4)
  {
    v3 = LogCategory_OwnerSession();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 0;
      v4 = "Battery status has NOT changed. Saving status to local cache to save an XPC call next time.";
      v5 = &v8;
LABEL_7:
      _os_log_impl(&dword_2643D0000, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
  v6 = *(a1 + 32);
  return (*(*(a1 + 56) + 16))(*(a1 + 56));
}

- (SPOwnerSessionState)ownerSessionState
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4;
  v11 = __Block_byref_object_dispose__4;
  v12 = 0;
  v3 = [(SPOwnerSession *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__SPOwnerSession_ownerSessionState__block_invoke;
  v6[3] = &unk_279B58D60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __35__SPOwnerSession_ownerSessionState__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _ownerSessionState];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_updateOwnerSessionState
{
  objc_initWeak(&location, self);
  v3 = [(SPOwnerSession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SPOwnerSession__updateOwnerSessionState__block_invoke;
  block[3] = &unk_279B58F90;
  block[4] = self;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, block);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __42__SPOwnerSession__updateOwnerSessionState__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) ownerSessionStateUpdatedBlock];
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = [WeakRetained userAgentProxy];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __42__SPOwnerSession__updateOwnerSessionState__block_invoke_2;
    v5[3] = &unk_279B59D38;
    v5[4] = *(a1 + 32);
    objc_copyWeak(&v7, (a1 + 40));
    v6 = v2;
    [v4 ownerSessionStateWithCompletion:v5];

    objc_destroyWeak(&v7);
  }
}

void __42__SPOwnerSession__updateOwnerSessionState__block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SPOwnerSession__updateOwnerSessionState__block_invoke_3;
  block[3] = &unk_279B58BA8;
  objc_copyWeak(&v9, a1 + 6);
  v7 = v3;
  v8 = a1[5];
  v5 = v3;
  dispatch_async(v4, block);

  objc_destroyWeak(&v9);
}

void __42__SPOwnerSession__updateOwnerSessionState__block_invoke_3(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [WeakRetained set_ownerSessionState:a1[4]];
  v3 = dispatch_get_global_queue(0, 0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__SPOwnerSession__updateOwnerSessionState__block_invoke_4;
  v4[3] = &unk_279B59398;
  v6 = a1[5];
  v5 = a1[4];
  dispatch_async(v3, v4);
}

- (void)disableUTAppAlert:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v16 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = v4;
    _os_log_impl(&dword_2643D0000, v7, OS_LOG_TYPE_DEFAULT, "disableUTAppAlert %d", &buf, 8u);
  }

  objc_initWeak(&buf, self);
  v8 = [(SPOwnerSession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__SPOwnerSession_disableUTAppAlert_completion___block_invoke;
  block[3] = &unk_279B596C8;
  objc_copyWeak(&v13, &buf);
  v14 = v4;
  v12 = v6;
  v9 = v6;
  dispatch_async(v8, block);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&buf);
  v10 = *MEMORY[0x277D85DE8];
}

void __47__SPOwnerSession_disableUTAppAlert_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained userAgentProxy];
  [v2 disableUTAppAlert:*(a1 + 48) completion:*(a1 + 32)];
}

- (void)isUTAppAlertDisabled:(id)a3
{
  v4 = a3;
  v5 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "isUTAppAlertDisabled", buf, 2u);
  }

  objc_initWeak(buf, self);
  v6 = [(SPOwnerSession *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__SPOwnerSession_isUTAppAlertDisabled___block_invoke;
  v8[3] = &unk_279B59650;
  objc_copyWeak(&v10, buf);
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __39__SPOwnerSession_isUTAppAlertDisabled___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained userAgentProxy];
  [v2 isUTAppAlertDisabled:*(a1 + 32)];
}

- (void)fetchUnauthorizedEncryptedPayload:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __63__SPOwnerSession_fetchUnauthorizedEncryptedPayload_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  v11 = v6;
  v12 = self;
  v13 = v7;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSession.fetchUnauthorizedEncryptedPayload", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __63__SPOwnerSession_fetchUnauthorizedEncryptedPayload_completion___block_invoke(id *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [a1[4] UUIDString];
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "fetchUnauthorizedEncryptedPayload %@", buf, 0xCu);
  }

  objc_initWeak(buf, a1[5]);
  v4 = [a1[5] queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SPOwnerSession_fetchUnauthorizedEncryptedPayload_completion___block_invoke_306;
  block[3] = &unk_279B58BA8;
  objc_copyWeak(&v9, buf);
  v7 = a1[4];
  v8 = a1[6];
  dispatch_async(v4, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
  v5 = *MEMORY[0x277D85DE8];
}

void __63__SPOwnerSession_fetchUnauthorizedEncryptedPayload_completion___block_invoke_306(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained userAgentProxy];
  [v2 fetchUnauthorizedEncryptedPayload:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)fetchHawkeyeFirmwareVersion:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __57__SPOwnerSession_fetchHawkeyeFirmwareVersion_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  v11 = v6;
  v12 = self;
  v13 = v7;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSession.fetchFirmwareVersion", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __57__SPOwnerSession_fetchHawkeyeFirmwareVersion_completion___block_invoke(id *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [a1[4] UUIDString];
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "fetchFirmwareVersion %@", buf, 0xCu);
  }

  objc_initWeak(buf, a1[5]);
  v4 = [a1[5] queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SPOwnerSession_fetchHawkeyeFirmwareVersion_completion___block_invoke_307;
  block[3] = &unk_279B58BA8;
  objc_copyWeak(&v9, buf);
  v7 = a1[4];
  v8 = a1[6];
  dispatch_async(v4, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
  v5 = *MEMORY[0x277D85DE8];
}

void __57__SPOwnerSession_fetchHawkeyeFirmwareVersion_completion___block_invoke_307(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained userAgentProxy];
  [v2 fetchHawkeyeFirmwareVersion:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)stopFetchingUnauthorizedEncryptedPayloadWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__SPOwnerSession_stopFetchingUnauthorizedEncryptedPayloadWithCompletion___block_invoke;
  v6[3] = &unk_279B58B80;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSession.stopFetchingUnauthorizedEncryptedPayload", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

void __73__SPOwnerSession_stopFetchingUnauthorizedEncryptedPayloadWithCompletion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "stopFetchingUnauthorizedEncryptedPayload", buf, 2u);
  }

  objc_initWeak(buf, *(a1 + 32));
  v3 = [*(a1 + 32) queue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __73__SPOwnerSession_stopFetchingUnauthorizedEncryptedPayloadWithCompletion___block_invoke_308;
  v4[3] = &unk_279B59650;
  objc_copyWeak(&v6, buf);
  v5 = *(a1 + 40);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __73__SPOwnerSession_stopFetchingUnauthorizedEncryptedPayloadWithCompletion___block_invoke_308(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained userAgentProxy];
  [v2 stopFetchingUnauthorizedEncryptedPayloadWithCompletion:*(a1 + 32)];
}

- (void)peripheralConnectionMaterialForAccessoryIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __80__SPOwnerSession_peripheralConnectionMaterialForAccessoryIdentifier_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  v11 = v6;
  v12 = self;
  v13 = v7;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSession.peripheralConnectionMaterialForAccessoryIdentifier", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __80__SPOwnerSession_peripheralConnectionMaterialForAccessoryIdentifier_completion___block_invoke(id *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [a1[4] UUIDString];
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "peripheralConnectionMaterial for %@", buf, 0xCu);
  }

  objc_initWeak(buf, a1[5]);
  v4 = [a1[5] queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__SPOwnerSession_peripheralConnectionMaterialForAccessoryIdentifier_completion___block_invoke_309;
  block[3] = &unk_279B58BA8;
  objc_copyWeak(&v9, buf);
  v7 = a1[4];
  v8 = a1[6];
  dispatch_async(v4, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
  v5 = *MEMORY[0x277D85DE8];
}

void __80__SPOwnerSession_peripheralConnectionMaterialForAccessoryIdentifier_completion___block_invoke_309(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained userAgentProxy];
  [v2 peripheralConnectionMaterialForAccessoryIdentifier:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)registerDarwinNotificationName:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(SPOwnerSession *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__SPOwnerSession_registerDarwinNotificationName_block___block_invoke;
  v11[3] = &unk_279B58BA8;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __55__SPOwnerSession_registerDarwinNotificationName_block___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained darwinHandlers];
  v3 = [[SPDarwinNotificationHandler alloc] initWithNotificationName:*(a1 + 32) changeBlock:*(a1 + 40)];
  [v2 setValue:v3 forKey:*(a1 + 32)];
}

- (void)unregisterDarwinNotificationName:(id)a3
{
  v4 = a3;
  v5 = [(SPOwnerSession *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__SPOwnerSession_unregisterDarwinNotificationName___block_invoke;
  v7[3] = &unk_279B58C78;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)_unregisterDarwinNotificationName:(id)a3
{
  v4 = a3;
  v5 = [(SPOwnerSession *)self darwinHandlers];
  [v5 removeObjectForKey:v4];
}

- (void)allObservationsForBeacon:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SPOwnerSession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SPOwnerSession_allObservationsForBeacon_completion___block_invoke;
  block[3] = &unk_279B58BD0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __54__SPOwnerSession_allObservationsForBeacon_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userAgentProxy];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__SPOwnerSession_allObservationsForBeacon_completion___block_invoke_2;
  v4[3] = &unk_279B59D60;
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 allObservationsForBeacon:v3 completion:v4];
}

void __54__SPOwnerSession_allObservationsForBeacon_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__SPOwnerSession_allObservationsForBeacon_completion___block_invoke_3;
  v7[3] = &unk_279B59398;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)hintBasedIndexSearchForBeacon:(id)a3 baseIndex:(id)a4 hint:(unsigned __int8)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(SPOwnerSession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__SPOwnerSession_hintBasedIndexSearchForBeacon_baseIndex_hint_completion___block_invoke;
  block[3] = &unk_279B59CE8;
  block[4] = self;
  v18 = v10;
  v21 = a5;
  v19 = v11;
  v20 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, block);
}

void __74__SPOwnerSession_hintBasedIndexSearchForBeacon_baseIndex_hint_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userAgentProxy];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__SPOwnerSession_hintBasedIndexSearchForBeacon_baseIndex_hint_completion___block_invoke_2;
  v6[3] = &unk_279B59D88;
  v7 = *(a1 + 56);
  [v2 hintBasedIndexSearchForBeacon:v3 baseIndex:v4 hint:v5 completion:v6];
}

void __74__SPOwnerSession_hintBasedIndexSearchForBeacon_baseIndex_hint_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__SPOwnerSession_hintBasedIndexSearchForBeacon_baseIndex_hint_completion___block_invoke_3;
  block[3] = &unk_279B59118;
  v8 = *(a1 + 32);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)readRawAISMetadataFromMACAddress:(id)a3 useOwnerControlPoint:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  v10 = [(SPOwnerSession *)self _enforceRateLimit];
  if (v10)
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__SPOwnerSession_readRawAISMetadataFromMACAddress_useOwnerControlPoint_completion___block_invoke;
    block[3] = &unk_279B59398;
    v22 = v9;
    v21 = v10;
    v12 = v9;
    dispatch_async(v11, block);
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __83__SPOwnerSession_readRawAISMetadataFromMACAddress_useOwnerControlPoint_completion___block_invoke_2;
    v15[3] = &unk_279B59DD8;
    v15[4] = self;
    objc_copyWeak(&v18, &location);
    v13 = v8;
    v19 = a4;
    v16 = v13;
    v17 = v9;
    v14 = v9;
    _os_activity_initiate(&dword_2643D0000, "SPOwnerSession: readRawAISMetadataFromMACAddress:useOwnerControlPoint:completion:", OS_ACTIVITY_FLAG_DEFAULT, v15);

    objc_destroyWeak(&v18);
  }

  objc_destroyWeak(&location);
}

void __83__SPOwnerSession_readRawAISMetadataFromMACAddress_useOwnerControlPoint_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __83__SPOwnerSession_readRawAISMetadataFromMACAddress_useOwnerControlPoint_completion___block_invoke_3;
  v3[3] = &unk_279B59678;
  objc_copyWeak(&v6, (a1 + 56));
  v4 = *(a1 + 40);
  v7 = *(a1 + 64);
  v5 = *(a1 + 48);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v6);
}

void __83__SPOwnerSession_readRawAISMetadataFromMACAddress_useOwnerControlPoint_completion___block_invoke_3(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 56);
    *buf = 141558530;
    v18 = 1752392040;
    v19 = 2112;
    v20 = v4;
    v21 = 1024;
    v22 = v5;
    _os_log_impl(&dword_2643D0000, v3, OS_LOG_TYPE_DEFAULT, "readRawAISMetadataFromMACAddress %{mask.hash}@ useOwnerControlPoint:%d called", buf, 0x1Cu);
  }

  v6 = [WeakRetained userAgentProxy];
  v7 = *(a1 + 32);
  v8 = *(a1 + 56);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __83__SPOwnerSession_readRawAISMetadataFromMACAddress_useOwnerControlPoint_completion___block_invoke_312;
  v13[3] = &unk_279B59DB0;
  v14 = v7;
  v16 = *(a1 + 56);
  v15 = *(a1 + 40);
  [v6 readRawAISMetadataFromMACAddress:v14 useOwnerControlPoint:v8 completion:v13];

  v9 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 56);
    *buf = 141558530;
    v18 = 1752392040;
    v19 = 2112;
    v20 = v10;
    v21 = 1024;
    v22 = v11;
    _os_log_impl(&dword_2643D0000, v9, OS_LOG_TYPE_DEFAULT, "readRawAISMetadataFromMACAddress %{mask.hash}@ userOwnerControlPoint:%d", buf, 0x1Cu);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __83__SPOwnerSession_readRawAISMetadataFromMACAddress_useOwnerControlPoint_completion___block_invoke_312(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    v11 = 141558530;
    v12 = 1752392040;
    v13 = 2112;
    v14 = v8;
    v15 = 1024;
    v16 = v9;
    _os_log_impl(&dword_2643D0000, v7, OS_LOG_TYPE_DEFAULT, "readRawAISMetadataFromMACAddress %{mask.hash}@ useOwnerControlPoint:%d completion called", &v11, 0x1Cu);
  }

  (*(*(a1 + 40) + 16))();
  v10 = *MEMORY[0x277D85DE8];
}

- (void)readAISMetadataFromMACAddress:(id)a3 useOwnerControlPoint:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  v10 = [(SPOwnerSession *)self _enforceRateLimit];
  if (v10)
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__SPOwnerSession_readAISMetadataFromMACAddress_useOwnerControlPoint_completion___block_invoke;
    block[3] = &unk_279B59398;
    v22 = v9;
    v21 = v10;
    v12 = v9;
    dispatch_async(v11, block);
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __80__SPOwnerSession_readAISMetadataFromMACAddress_useOwnerControlPoint_completion___block_invoke_2;
    v15[3] = &unk_279B59DD8;
    v15[4] = self;
    objc_copyWeak(&v18, &location);
    v13 = v8;
    v19 = a4;
    v16 = v13;
    v17 = v9;
    v14 = v9;
    _os_activity_initiate(&dword_2643D0000, "SPOwnerSession: readAISMetadataFromMACAddress:useOwnerControlPoint:completion:", OS_ACTIVITY_FLAG_DEFAULT, v15);

    objc_destroyWeak(&v18);
  }

  objc_destroyWeak(&location);
}

void __80__SPOwnerSession_readAISMetadataFromMACAddress_useOwnerControlPoint_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __80__SPOwnerSession_readAISMetadataFromMACAddress_useOwnerControlPoint_completion___block_invoke_3;
  v3[3] = &unk_279B59678;
  objc_copyWeak(&v6, (a1 + 56));
  v4 = *(a1 + 40);
  v7 = *(a1 + 64);
  v5 = *(a1 + 48);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v6);
}

void __80__SPOwnerSession_readAISMetadataFromMACAddress_useOwnerControlPoint_completion___block_invoke_3(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 56);
    *buf = 141558530;
    v18 = 1752392040;
    v19 = 2112;
    v20 = v4;
    v21 = 1024;
    v22 = v5;
    _os_log_impl(&dword_2643D0000, v3, OS_LOG_TYPE_DEFAULT, "readAISMetadataFromMACAddress %{mask.hash}@ useOwnerControlPoint:%d called", buf, 0x1Cu);
  }

  v6 = [WeakRetained userAgentProxy];
  v7 = *(a1 + 32);
  v8 = *(a1 + 56);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__SPOwnerSession_readAISMetadataFromMACAddress_useOwnerControlPoint_completion___block_invoke_314;
  v13[3] = &unk_279B59E00;
  v14 = v7;
  v16 = *(a1 + 56);
  v15 = *(a1 + 40);
  [v6 readAISMetadataFromMACAddress:v14 useOwnerControlPoint:v8 completion:v13];

  v9 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 56);
    *buf = 141558530;
    v18 = 1752392040;
    v19 = 2112;
    v20 = v10;
    v21 = 1024;
    v22 = v11;
    _os_log_impl(&dword_2643D0000, v9, OS_LOG_TYPE_DEFAULT, "readAISMetadataFromMACAddress %{mask.hash}@ userOwnerControlPoint:%d", buf, 0x1Cu);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __80__SPOwnerSession_readAISMetadataFromMACAddress_useOwnerControlPoint_completion___block_invoke_314(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    v11 = 141558530;
    v12 = 1752392040;
    v13 = 2112;
    v14 = v8;
    v15 = 1024;
    v16 = v9;
    _os_log_impl(&dword_2643D0000, v7, OS_LOG_TYPE_DEFAULT, "readAISMetadataFromMACAddress %{mask.hash}@ useOwnerControlPoint:%d completion called", &v11, 0x1Cu);
  }

  (*(*(a1 + 40) + 16))();
  v10 = *MEMORY[0x277D85DE8];
}

- (void)readRawAISMetadataFromBeaconIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(SPOwnerSession *)self _enforceRateLimit];
  if (v8)
  {
    v9 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__SPOwnerSession_readRawAISMetadataFromBeaconIdentifier_completion___block_invoke;
    block[3] = &unk_279B59398;
    v18 = v7;
    v17 = v8;
    v10 = v7;
    dispatch_async(v9, block);
  }

  else
  {
    activity_block[0] = MEMORY[0x277D85DD0];
    activity_block[1] = 3221225472;
    activity_block[2] = __68__SPOwnerSession_readRawAISMetadataFromBeaconIdentifier_completion___block_invoke_2;
    activity_block[3] = &unk_279B599D0;
    activity_block[4] = self;
    objc_copyWeak(&v15, &location);
    v13 = v6;
    v14 = v7;
    v11 = v7;
    _os_activity_initiate(&dword_2643D0000, "SPOwnerSession: readRawAISMetadataFromBeaconIdentifier:completion:", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

    objc_destroyWeak(&v15);
  }

  objc_destroyWeak(&location);
}

void __68__SPOwnerSession_readRawAISMetadataFromBeaconIdentifier_completion___block_invoke_2(id *a1)
{
  v2 = [a1[4] queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__SPOwnerSession_readRawAISMetadataFromBeaconIdentifier_completion___block_invoke_3;
  block[3] = &unk_279B58BA8;
  objc_copyWeak(&v6, a1 + 7);
  v4 = a1[5];
  v5 = a1[6];
  dispatch_async(v2, block);

  objc_destroyWeak(&v6);
}

void __68__SPOwnerSession_readRawAISMetadataFromBeaconIdentifier_completion___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&dword_2643D0000, v3, OS_LOG_TYPE_DEFAULT, "readRawAISMetadataFromBeaconIdentifier %{mask}@ called", buf, 0xCu);
  }

  v5 = [WeakRetained userAgentProxy];
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__SPOwnerSession_readRawAISMetadataFromBeaconIdentifier_completion___block_invoke_316;
  v8[3] = &unk_279B59E28;
  v9 = v6;
  v10 = *(a1 + 40);
  [v5 readRawAISMetadataForIdentifier:v9 completion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __68__SPOwnerSession_readRawAISMetadataFromBeaconIdentifier_completion___block_invoke_316(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v12 = 141558274;
    v13 = 1752392040;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_2643D0000, v7, OS_LOG_TYPE_DEFAULT, "readRawAISMetadataFromBeaconIdentifier %{mask.hash}@ completion called", &v12, 0x16u);
  }

  v9 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v12 = 141558274;
    v13 = 1752392040;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_2643D0000, v9, OS_LOG_TYPE_DEFAULT, "readRawAISMetadataFromBeaconIdentifier %{mask.hash}@ completion called", &v12, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v11 = *MEMORY[0x277D85DE8];
}

- (void)readAISMetadataFromBeaconIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(SPOwnerSession *)self _enforceRateLimit];
  if (v8)
  {
    v9 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__SPOwnerSession_readAISMetadataFromBeaconIdentifier_completion___block_invoke;
    block[3] = &unk_279B59398;
    v18 = v7;
    v17 = v8;
    v10 = v7;
    dispatch_async(v9, block);
  }

  else
  {
    activity_block[0] = MEMORY[0x277D85DD0];
    activity_block[1] = 3221225472;
    activity_block[2] = __65__SPOwnerSession_readAISMetadataFromBeaconIdentifier_completion___block_invoke_2;
    activity_block[3] = &unk_279B599D0;
    activity_block[4] = self;
    objc_copyWeak(&v15, &location);
    v13 = v6;
    v14 = v7;
    v11 = v7;
    _os_activity_initiate(&dword_2643D0000, "SPOwnerSession: readAISMetadataFromBeaconIdentifier:completion:", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

    objc_destroyWeak(&v15);
  }

  objc_destroyWeak(&location);
}

void __65__SPOwnerSession_readAISMetadataFromBeaconIdentifier_completion___block_invoke_2(id *a1)
{
  v2 = [a1[4] queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__SPOwnerSession_readAISMetadataFromBeaconIdentifier_completion___block_invoke_3;
  block[3] = &unk_279B58BA8;
  objc_copyWeak(&v6, a1 + 7);
  v4 = a1[5];
  v5 = a1[6];
  dispatch_async(v2, block);

  objc_destroyWeak(&v6);
}

void __65__SPOwnerSession_readAISMetadataFromBeaconIdentifier_completion___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&dword_2643D0000, v3, OS_LOG_TYPE_DEFAULT, "readAISMetadataFromBeaconIdentifier %{mask}@ called", buf, 0xCu);
  }

  v5 = [WeakRetained userAgentProxy];
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__SPOwnerSession_readAISMetadataFromBeaconIdentifier_completion___block_invoke_317;
  v8[3] = &unk_279B59E50;
  v9 = v6;
  v10 = *(a1 + 40);
  [v5 readAISMetadataForIdentifier:v9 completion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __65__SPOwnerSession_readAISMetadataFromBeaconIdentifier_completion___block_invoke_317(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v12 = 141558274;
    v13 = 1752392040;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_2643D0000, v7, OS_LOG_TYPE_DEFAULT, "readAISMetadataFromBeaconIdentifier %{mask.hash}@ completion called", &v12, 0x16u);
  }

  v9 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v12 = 141558274;
    v13 = 1752392040;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_2643D0000, v9, OS_LOG_TYPE_DEFAULT, "readAISMetadataFromBeaconIdentifier %{mask.hash}@ completion called", &v12, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v11 = *MEMORY[0x277D85DE8];
}

- (void)didDetectUnauthorizedTrackingWithCompletion:(id)a3 completion:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[SPOwnerSession(TrackingAvoidance) didDetectUnauthorizedTrackingWithCompletion:completion:]";
    _os_log_impl(&dword_2643D0000, v8, OS_LOG_TYPE_DEFAULT, "SPOwnerSession: API: %s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v9 = [(SPOwnerSession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__SPOwnerSession_TrackingAvoidance__didDetectUnauthorizedTrackingWithCompletion_completion___block_invoke;
  block[3] = &unk_279B58BA8;
  objc_copyWeak(&v16, buf);
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
  v12 = *MEMORY[0x277D85DE8];
}

void __92__SPOwnerSession_TrackingAvoidance__didDetectUnauthorizedTrackingWithCompletion_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained userAgentProxy];
  [v2 didDetectUnauthorizedTrackingWithCompletion:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)didUpdateUnauthorizedTrackingWithCompletion:(id)a3 completion:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[SPOwnerSession(TrackingAvoidance) didUpdateUnauthorizedTrackingWithCompletion:completion:]";
    _os_log_impl(&dword_2643D0000, v8, OS_LOG_TYPE_DEFAULT, "SPOwnerSession: API: %s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v9 = [(SPOwnerSession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__SPOwnerSession_TrackingAvoidance__didUpdateUnauthorizedTrackingWithCompletion_completion___block_invoke;
  block[3] = &unk_279B58BA8;
  objc_copyWeak(&v16, buf);
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
  v12 = *MEMORY[0x277D85DE8];
}

void __92__SPOwnerSession_TrackingAvoidance__didUpdateUnauthorizedTrackingWithCompletion_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained userAgentProxy];
  [v2 didUpdateUnauthorizedTrackingWithCompletion:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)didWithdrawUnauthorizedTrackingWithCompletion:(id)a3 completion:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[SPOwnerSession(TrackingAvoidance) didWithdrawUnauthorizedTrackingWithCompletion:completion:]";
    _os_log_impl(&dword_2643D0000, v8, OS_LOG_TYPE_DEFAULT, "SPOwnerSession: API: %s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v9 = [(SPOwnerSession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94__SPOwnerSession_TrackingAvoidance__didWithdrawUnauthorizedTrackingWithCompletion_completion___block_invoke;
  block[3] = &unk_279B58BA8;
  objc_copyWeak(&v16, buf);
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
  v12 = *MEMORY[0x277D85DE8];
}

void __94__SPOwnerSession_TrackingAvoidance__didWithdrawUnauthorizedTrackingWithCompletion_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained userAgentProxy];
  [v2 didWithdrawUnauthorizedTrackingWithCompletion:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)ignoringUnauthorizedTrackingWithCompletion:(id)a3 completion:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[SPOwnerSession(TrackingAvoidance) ignoringUnauthorizedTrackingWithCompletion:completion:]";
    _os_log_impl(&dword_2643D0000, v8, OS_LOG_TYPE_DEFAULT, "SPOwnerSession: API: %s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v9 = [(SPOwnerSession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__SPOwnerSession_TrackingAvoidance__ignoringUnauthorizedTrackingWithCompletion_completion___block_invoke;
  block[3] = &unk_279B58BA8;
  objc_copyWeak(&v16, buf);
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
  v12 = *MEMORY[0x277D85DE8];
}

void __91__SPOwnerSession_TrackingAvoidance__ignoringUnauthorizedTrackingWithCompletion_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained userAgentProxy];
  [v2 ignoringUnauthorizedTrackingWithCompletion:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)unauthorizedTrackingTypeWithCompletion:(id)a3 completion:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[SPOwnerSession(TrackingAvoidance) unauthorizedTrackingTypeWithCompletion:completion:]";
    _os_log_impl(&dword_2643D0000, v8, OS_LOG_TYPE_DEFAULT, "SPOwnerSession: API: %s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v9 = [(SPOwnerSession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__SPOwnerSession_TrackingAvoidance__unauthorizedTrackingTypeWithCompletion_completion___block_invoke;
  block[3] = &unk_279B58BA8;
  objc_copyWeak(&v16, buf);
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
  v12 = *MEMORY[0x277D85DE8];
}

void __87__SPOwnerSession_TrackingAvoidance__unauthorizedTrackingTypeWithCompletion_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained userAgentProxy];
  [v2 unauthorizedTrackingTypeWithCompletion:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)playUnauthorizedSoundOnBeaconByUUID:(id)a3 completion:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[SPOwnerSession(TrackingAvoidance) playUnauthorizedSoundOnBeaconByUUID:completion:]";
    _os_log_impl(&dword_2643D0000, v8, OS_LOG_TYPE_DEFAULT, "SPOwnerSession: API: %s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v9 = [(SPOwnerSession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__SPOwnerSession_TrackingAvoidance__playUnauthorizedSoundOnBeaconByUUID_completion___block_invoke;
  block[3] = &unk_279B58BA8;
  objc_copyWeak(&v16, buf);
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
  v12 = *MEMORY[0x277D85DE8];
}

void __84__SPOwnerSession_TrackingAvoidance__playUnauthorizedSoundOnBeaconByUUID_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained userAgentProxy];
  [v2 playUnauthorizedSoundOnBeaconUUID:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)ignoreBeaconByUUID:(id)a3 until:(unint64_t)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 UUIDString];
    *buf = 138412290;
    v16 = v8;
    _os_log_impl(&dword_2643D0000, v7, OS_LOG_TYPE_DEFAULT, "received ignore beacon for %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v9 = [(SPOwnerSession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__SPOwnerSession_TrackingAvoidance__ignoreBeaconByUUID_until___block_invoke;
  block[3] = &unk_279B59F50;
  objc_copyWeak(v14, buf);
  v13 = v6;
  v14[1] = a4;
  v10 = v6;
  dispatch_async(v9, block);

  objc_destroyWeak(v14);
  objc_destroyWeak(buf);
  v11 = *MEMORY[0x277D85DE8];
}

void __62__SPOwnerSession_TrackingAvoidance__ignoreBeaconByUUID_until___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained userAgentProxy];
  [v2 ignoreBeaconByUUID:*(a1 + 32) until:*(a1 + 48)];
}

- (void)ignoreBeaconByUUID:(id)a3 until:(unint64_t)a4 completion:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v8 UUIDString];
    *buf = 138412290;
    v21 = v11;
    _os_log_impl(&dword_2643D0000, v10, OS_LOG_TYPE_DEFAULT, "received ignore beacon for %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v12 = [(SPOwnerSession *)self queue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __73__SPOwnerSession_TrackingAvoidance__ignoreBeaconByUUID_until_completion___block_invoke;
  v16[3] = &unk_279B59F78;
  objc_copyWeak(v19, buf);
  v19[1] = a4;
  v17 = v8;
  v18 = v9;
  v13 = v9;
  v14 = v8;
  dispatch_async(v12, v16);

  objc_destroyWeak(v19);
  objc_destroyWeak(buf);
  v15 = *MEMORY[0x277D85DE8];
}

void __73__SPOwnerSession_TrackingAvoidance__ignoreBeaconByUUID_until_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained userAgentProxy];
  [v2 ignoreTrackingForUUID:*(a1 + 32) until:*(a1 + 56) completion:*(a1 + 40)];
}

- (void)ignoreBeaconByUUID:(id)a3 untilDate:(id)a4 completion:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 UUIDString];
    *buf = 138412290;
    v24 = v12;
    _os_log_impl(&dword_2643D0000, v11, OS_LOG_TYPE_DEFAULT, "received ignore beacon for %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v13 = [(SPOwnerSession *)self queue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __77__SPOwnerSession_TrackingAvoidance__ignoreBeaconByUUID_untilDate_completion___block_invoke;
  v18[3] = &unk_279B59A20;
  objc_copyWeak(&v22, buf);
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v14 = v10;
  v15 = v9;
  v16 = v8;
  dispatch_async(v13, v18);

  objc_destroyWeak(&v22);
  objc_destroyWeak(buf);
  v17 = *MEMORY[0x277D85DE8];
}

void __77__SPOwnerSession_TrackingAvoidance__ignoreBeaconByUUID_untilDate_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained userAgentProxy];
  [v2 ignoreBeaconByUUID:*(a1 + 32) untilDate:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)ignoreBeaconByAdvertisement:(id)a3 until:(unint64_t)a4 completion:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v8 data];
    v12 = [v11 fm_hexString];
    *buf = 138412290;
    v22 = v12;
    _os_log_impl(&dword_2643D0000, v10, OS_LOG_TYPE_DEFAULT, "received ignore beacon for %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v13 = [(SPOwnerSession *)self queue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __82__SPOwnerSession_TrackingAvoidance__ignoreBeaconByAdvertisement_until_completion___block_invoke;
  v17[3] = &unk_279B59F78;
  objc_copyWeak(v20, buf);
  v20[1] = a4;
  v18 = v8;
  v19 = v9;
  v14 = v9;
  v15 = v8;
  dispatch_async(v13, v17);

  objc_destroyWeak(v20);
  objc_destroyWeak(buf);
  v16 = *MEMORY[0x277D85DE8];
}

void __82__SPOwnerSession_TrackingAvoidance__ignoreBeaconByAdvertisement_until_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained userAgentProxy];
  [v2 ignoreTrackingFor:*(a1 + 32) until:*(a1 + 56) completion:*(a1 + 40)];
}

- (void)acceptUTForBeaconUUID:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 UUIDString];
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "received accept UT event for beacon %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v7 = [(SPOwnerSession *)self queue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__SPOwnerSession_TrackingAvoidance__acceptUTForBeaconUUID___block_invoke;
  v10[3] = &unk_279B59228;
  objc_copyWeak(&v12, buf);
  v11 = v4;
  v8 = v4;
  dispatch_async(v7, v10);

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
  v9 = *MEMORY[0x277D85DE8];
}

void __59__SPOwnerSession_TrackingAvoidance__acceptUTForBeaconUUID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained userAgentProxy];
  [v2 acceptUTForBeaconUUID:*(a1 + 32)];
}

- (void)didObserveUnauthorizedTrackingWithCompletion:(id)a3 completion:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[SPOwnerSession(TrackingAvoidance) didObserveUnauthorizedTrackingWithCompletion:completion:]";
    _os_log_impl(&dword_2643D0000, v8, OS_LOG_TYPE_DEFAULT, "SPOwnerSession: API: %s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v9 = [(SPOwnerSession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__SPOwnerSession_TrackingAvoidance__didObserveUnauthorizedTrackingWithCompletion_completion___block_invoke;
  block[3] = &unk_279B58BA8;
  objc_copyWeak(&v16, buf);
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
  v12 = *MEMORY[0x277D85DE8];
}

void __93__SPOwnerSession_TrackingAvoidance__didObserveUnauthorizedTrackingWithCompletion_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained userAgentProxy];
  [v2 didObserveUnauthorizedTrackingWithCompletion:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)publishWildModeRecordsWithCompletion:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[SPOwnerSession(TrackingAvoidance) publishWildModeRecordsWithCompletion:]";
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "SPOwnerSession: API: %s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v6 = [(SPOwnerSession *)self queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__SPOwnerSession_TrackingAvoidance__publishWildModeRecordsWithCompletion___block_invoke;
  v9[3] = &unk_279B59650;
  objc_copyWeak(&v11, buf);
  v10 = v4;
  v7 = v4;
  dispatch_async(v6, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
  v8 = *MEMORY[0x277D85DE8];
}

void __74__SPOwnerSession_TrackingAvoidance__publishWildModeRecordsWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained userAgentProxy];
  [v2 publishWildModeRecordsWithCompletion:*(a1 + 32)];
}

- (void)startRefreshingTagSeparationWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(SPOwnerSession *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__SPOwnerSession_TagSeparation__startRefreshingTagSeparationWithBlock___block_invoke;
  v7[3] = &unk_279B58B80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __71__SPOwnerSession_TagSeparation__startRefreshingTagSeparationWithBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setTagSeparationBeaconsChangedBlock:*(a1 + 40)];
  v2 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__SPOwnerSession_TagSeparation__startRefreshingTagSeparationWithBlock___block_invoke_2;
  block[3] = &unk_279B58AE8;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

- (void)tagSeparationStateChanged:(id)a3 beaconUUID:(id)a4 location:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(SPOwnerSession *)self queue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __90__SPOwnerSession_TagSeparation__tagSeparationStateChanged_beaconUUID_location_completion___block_invoke;
  v16[3] = &unk_279B593C0;
  v16[4] = self;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v13 = v11;
  v14 = v10;
  v15 = v9;
  dispatch_async(v12, v16);
}

void __90__SPOwnerSession_TagSeparation__tagSeparationStateChanged_beaconUUID_location_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userAgentProxy];
  [v2 tagSeparationStateChanged:*(a1 + 40) beaconUUID:*(a1 + 48) location:0 completion:*(a1 + 56)];
}

void __98__SPOwnerSession_addBeaconChangedListener_beaconUUID_taskName_commandIdentifier_commandIssueDate___block_invoke_279_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_2643D0000, a2, OS_LOG_TYPE_ERROR, "SPOwnerSession: notifiedBeaconsChangedBlock: beacon does not support task %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __44__SPOwnerSession_executeUTPlaySoundCommand___block_invoke_cold_1(uint64_t a1, uint64_t *a2, NSObject *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = [*(a1 + 32) identifier];
  v7 = [v6 UUIDString];
  v8 = [*(a1 + 32) taskName];
  v9 = *a2;
  v11 = 138412802;
  v12 = v7;
  v13 = 2112;
  v14 = v8;
  v15 = 2112;
  v16 = v9;
  _os_log_error_impl(&dword_2643D0000, a3, OS_LOG_TYPE_ERROR, "SPOwnerSession: executeUTPlaySoundCommand: %@ finishing with task: %@ playSoundContext %@. We should never get here", &v11, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

@end