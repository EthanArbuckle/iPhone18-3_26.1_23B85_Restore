@interface SAServiceManager
+ (unint64_t)convertBeaconToDeviceType:(id)type;
+ (unint64_t)convertCLReferenceFrameToSAReferenceFrame:(int)frame;
- (SAServiceManager)initWithQueue:(id)queue;
- (void)_fetchAndIngestLastVisit;
- (void)_ingestVisit:(id)visit;
- (void)dealloc;
- (void)didFetchAllDevices:(id)devices;
- (void)didFetchAllSafeLocations:(id)locations;
- (void)ingestTAEvent:(id)event;
- (void)scheduleBeaconGroupMetricSubmission;
- (void)separationAlertsService:(id)service addGeofence:(id)geofence;
- (void)separationAlertsService:(id)service cancelSATimeEventForAlarm:(id)alarm;
- (void)separationAlertsService:(id)service notifySeparationsForDevices:(id)devices withLocation:(id)location withContext:(id)context;
- (void)separationAlertsService:(id)service removeGeofence:(id)geofence;
- (void)separationAlertsService:(id)service requestBluetoothScanForTypes:(unint64_t)types;
- (void)separationAlertsService:(id)service requestLocationForType:(unint64_t)type;
- (void)separationAlertsService:(id)service requestStateForRegion:(id)region;
- (void)separationAlertsService:(id)service scheduleSATimeEvent:(double)event forAlarm:(id)alarm;
- (void)separationAlertsServiceFetchLastVisit:(id)visit;
- (void)separationAlertsServiceStartBackgroundScanning:(id)scanning;
- (void)separationAlertsServiceStopBackgroundScanning:(id)scanning;
- (void)separationAlertsServiceStopLongAggressiveScan:(id)scan;
@end

@implementation SAServiceManager

- (SAServiceManager)initWithQueue:(id)queue
{
  queueCopy = queue;
  v49.receiver = self;
  v49.super_class = SAServiceManager;
  v6 = [(SAServiceManager *)&v49 init];
  if (v6)
  {
    TARegisterLogs();
    objc_storeStrong(&v6->_queue, queue);
    v7 = [[SAAudioAccessory alloc] initWithQueue:queueCopy];
    audioAcccessory = v6->_audioAcccessory;
    v6->_audioAcccessory = v7;

    v9 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    clients = v6->_clients;
    v6->_clients = v9;

    v11 = [SAAnalytics alloc];
    v12 = [[SAAnalyticsSettings alloc] initWithEnableSubmission:1];
    v13 = [(SAAnalytics *)v11 initWithSettings:v12];
    analytics = v6->_analytics;
    v6->_analytics = v13;

    v15 = objc_alloc(MEMORY[0x277CBEAA8]);
    analytics = [(SAServiceManager *)v6 analytics];
    [analytics publishingInterval];
    v17 = [v15 initWithTimeIntervalSinceNow:?];
    nextAnalyticsSubmission = v6->_nextAnalyticsSubmission;
    v6->_nextAnalyticsSubmission = v17;

    v19 = [SAService alloc];
    analytics2 = [(SAServiceManager *)v6 analytics];
    v21 = [(SAService *)v19 initWithAnalytics:analytics2 isReplay:0 audioAccessoryManager:v6->_audioAcccessory];
    service = v6->_service;
    v6->_service = v21;

    [(SAService *)v6->_service addClient:v6];
    v23 = objc_alloc_init(MEMORY[0x277D01280]);
    routineManager = v6->_routineManager;
    v6->_routineManager = v23;

    *&v6->_hasAttemptedToIngestLastVisitAtStartup = 256;
    v6->_beaconGroupSafeLocationsMatch = 1;
    scheduledMetricSubmissionBlock = v6->_scheduledMetricSubmissionBlock;
    v6->_scheduledMetricSubmissionBlock = 0;

    v26 = objc_opt_new();
    ownerSession = v6->_ownerSession;
    v6->_ownerSession = v26;

    v28 = objc_alloc_init(MEMORY[0x277D49690]);
    v29 = [v28 performSelector:sel_separationMonitoringSession];
    separationMonitoringSession = v6->_separationMonitoringSession;
    v6->_separationMonitoringSession = v29;

    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __34__SAServiceManager_initWithQueue___block_invoke;
    v47[3] = &unk_279B9C7B0;
    v31 = v6;
    v48 = v31;
    v32 = MEMORY[0x26675C330](v47);
    v42 = MEMORY[0x277D85DD0];
    v43 = 3221225472;
    v44 = __34__SAServiceManager_initWithQueue___block_invoke_3;
    v45 = &unk_279B9C7B0;
    v46 = v31;
    v33 = MEMORY[0x26675C330](&v42);
    v34 = v6->_separationMonitoringSession;
    v38 = MEMORY[0x26675C330](v33, v35, v36, v37);
    [(SPSeparationMonitoringProtocol *)v34 performSelector:sel_startRefreshingSafeLocationWithBlock_ withObject:v38, v42, v43, v44, v45];

    v39 = v6->_separationMonitoringSession;
    v40 = MEMORY[0x26675C330](v32);
    [(SPSeparationMonitoringProtocol *)v39 performSelector:sel_startRefreshingBeaconsForSeparationMonitoringWithBlock_ withObject:v40];
  }

  return v6;
}

void __34__SAServiceManager_initWithQueue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__SAServiceManager_initWithQueue___block_invoke_2;
  v6[3] = &unk_279B9C788;
  v7 = *(a1 + 32);
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __34__SAServiceManager_initWithQueue___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__SAServiceManager_initWithQueue___block_invoke_4;
  v6[3] = &unk_279B9C788;
  v7 = *(a1 + 32);
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

- (void)dealloc
{
  [(SAService *)self->_service removeClient:self];
  separationMonitoringSession = self->_separationMonitoringSession;
  self->_separationMonitoringSession = 0;

  ownerSession = self->_ownerSession;
  self->_ownerSession = 0;

  v5.receiver = self;
  v5.super_class = SAServiceManager;
  [(SAServiceManager *)&v5 dealloc];
}

+ (unint64_t)convertBeaconToDeviceType:(id)type
{
  typeCopy = type;
  type = [typeCopy type];
  if ([type isEqual:*MEMORY[0x277D49810]])
  {
    v5 = 2;
  }

  else if ([type isEqual:*MEMORY[0x277D49808]])
  {
    v5 = 4;
  }

  else if ([type isEqual:*MEMORY[0x277D49818]])
  {
    v5 = 16;
  }

  else
  {
    model = [typeCopy model];
    v7 = [model hasPrefix:@"Watch"];

    if (v7)
    {
      v5 = 8;
    }

    else if ([type isEqual:*MEMORY[0x277D49830]])
    {
      v5 = 1;
    }

    else
    {
      v8 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_FAULT))
      {
        [(SAServiceManager *)type convertBeaconToDeviceType:v8];
      }

      v5 = 0;
    }
  }

  return v5;
}

+ (unint64_t)convertCLReferenceFrameToSAReferenceFrame:(int)frame
{
  if (frame == 2)
  {
    return 2;
  }

  else
  {
    return frame == 1;
  }
}

- (void)didFetchAllSafeLocations:(id)locations
{
  v72 = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  v48 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v4 = locationsCopy;
  v5 = [v4 countByEnumeratingWithState:&v51 objects:v71 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v52;
    v46 = *v52;
    v47 = v4;
    do
    {
      v8 = 0;
      v49 = v6;
      do
      {
        if (*v52 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v51 + 1) + 8 * v8);
        if ([v9 approvalState] == 1)
        {
          v50 = [SASafeLocation alloc];
          identifier = [v9 identifier];
          location = [v9 location];
          [location coordinate];
          v13 = v12;
          location2 = [v9 location];
          [location2 coordinate];
          v16 = v15;
          location3 = [v9 location];
          [location3 horizontalAccuracy];
          v19 = v18;
          location4 = [v9 location];
          v21 = +[SAServiceManager convertCLReferenceFrameToSAReferenceFrame:](SAServiceManager, "convertCLReferenceFrameToSAReferenceFrame:", [location4 referenceFrame]);
          name = [v9 name];
          v23 = [MEMORY[0x277CBEAA8] now];
          v24 = [(SASafeLocation *)v50 initWithLocationUUID:identifier latitude:v21 longitude:name radius:v23 referenceFrame:v13 name:v16 date:v19];

          identifier2 = [v9 identifier];
          [v48 setObject:v24 forKeyedSubscript:identifier2];

          v26 = TASALog;
          if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
          {
            v27 = v26;
            identifier3 = [(SASafeLocation *)v24 identifier];
            name2 = [(SASafeLocation *)v24 name];
            [(SASafeLocation *)v24 latitude];
            v31 = v30;
            [(SASafeLocation *)v24 longitude];
            v33 = v32;
            [(SASafeLocation *)v24 radius];
            v35 = v34;
            referenceFrame = [(SASafeLocation *)v24 referenceFrame];
            *buf = 68290563;
            v56 = 0;
            v57 = 2082;
            v58 = "";
            v59 = 2113;
            v60 = identifier3;
            v61 = 2113;
            v62 = name2;
            v63 = 2053;
            v64 = v31;
            v65 = 2053;
            v66 = v33;
            v67 = 2050;
            v68 = v35;
            v69 = 2049;
            v70 = referenceFrame;
            _os_log_impl(&dword_2656EA000, v27, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa ServiceMgr FetchSafe, uuid:%{private}@, name:%{private}@, lat:%{sensitive}f, lon:%{sensitive}f, radius:%{public}f, refFrame:%{private}lu}", buf, 0x4Eu);
          }

          v7 = v46;
          v4 = v47;
          v6 = v49;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v51 objects:v71 count:16];
    }

    while (v6);
  }

  v37 = [SASafeLocationsEvent alloc];
  v38 = [MEMORY[0x277CBEAA8] now];
  v39 = [(SASafeLocationsEvent *)v37 initWithSafeLocations:v48 date:v38];

  [(SAServiceManager *)self ingestTAEvent:v39];
  v40 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    v41 = v40;
    v42 = [v4 count];
    *buf = 67240192;
    v56 = v42;
    _os_log_impl(&dword_2656EA000, v41, OS_LOG_TYPE_DEFAULT, "#sa ServiceMgr endFetchSafe, %{public}d", buf, 8u);
  }

  analytics = [(SAServiceManager *)self analytics];
  [analytics addSafeLocationFetchResultCount:{objc_msgSend(v4, "count")}];

  v44 = *MEMORY[0x277D85DE8];
}

- (void)didFetchAllDevices:(id)devices
{
  v173 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  v120 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v119 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v122 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  obj = devicesCopy;
  v135 = v4;
  v121 = v5;
  v124 = [obj countByEnumeratingWithState:&v150 objects:v172 count:16];
  if (v124)
  {
    v111 = 0;
    v112 = 0;
    v106 = 0;
    v107 = 0;
    v108 = 0;
    v109 = 0;
    v113 = 0;
    v123 = 0;
    v118 = *v151;
    v117 = *MEMORY[0x277D49810];
    v115 = *MEMORY[0x277D49808];
    v110 = *MEMORY[0x277D49818];
    v6 = 1;
    do
    {
      v7 = 0;
      do
      {
        if (*v151 != v118)
        {
          objc_enumerationMutation(obj);
        }

        v125 = v7;
        v8 = *(*(&v150 + 1) + 8 * v7);
        groupIdentifier = [v8 groupIdentifier];

        if (groupIdentifier)
        {
          groupIdentifier2 = [v8 groupIdentifier];
          v11 = [v5 objectForKey:groupIdentifier2];

          if (v11)
          {
            groupIdentifier3 = [v8 groupIdentifier];
            v13 = [v5 objectForKeyedSubscript:groupIdentifier3];

            identifier = [v8 identifier];
            [v13 addObject:identifier];
          }

          else
          {
            v15 = MEMORY[0x277CBEB58];
            identifier = [v8 identifier];
            v13 = [v15 setWithObject:identifier];
          }

          groupIdentifier4 = [v8 groupIdentifier];
          [v5 setObject:v13 forKeyedSubscript:groupIdentifier4];
        }

        type = [v8 type];
        v18 = [type isEqual:v117];

        v127 = v6;
        if (v18)
        {
          ++v123;
        }

        else
        {
          type2 = [v8 type];
          v77 = [type2 isEqual:v115];

          if (v77)
          {
            if ([v8 isAppleAudioAccessory])
            {
              ++v111;
            }

            else
            {
              ++v112;
            }
          }

          else
          {
            type3 = [v8 type];
            v79 = [type3 isEqual:v110];

            if (v79)
            {
              ++v113;
            }

            else
            {
              model = [v8 model];
              v81 = [model hasPrefix:@"iPhone"];

              if (v81)
              {
                ++v109;
              }

              else
              {
                model2 = [v8 model];
                v83 = [model2 hasPrefix:@"iPad"];

                if (v83)
                {
                  ++v108;
                }

                else
                {
                  model3 = [v8 model];
                  v85 = [model3 hasPrefix:@"MacBook"];

                  if (v85)
                  {
                    ++v106;
                  }

                  else
                  {
                    ++v107;
                  }
                }
              }
            }
          }
        }

        v141 = [SADevice alloc];
        identifier2 = [v8 identifier];
        groupIdentifier5 = [v8 groupIdentifier];
        partIdentifier = [v8 partIdentifier];
        name = [v8 name];
        model4 = [v8 model];
        systemVersion = [v8 systemVersion];
        vendorId = [v8 vendorId];
        productId = [v8 productId];
        v130 = v8;
        v26 = [SAServiceManager convertBeaconToDeviceType:v8];
        isAppleAudioAccessory = [v130 isAppleAudioAccessory];
        date = [MEMORY[0x277CBEAA8] date];
        BYTE1(v105) = isAppleAudioAccessory;
        LOBYTE(v105) = 1;
        v129 = [(SADevice *)v141 initWithDeviceUUID:identifier2 groupIdentifier:groupIdentifier5 macAddress:0 partIdentifier:partIdentifier name:name model:model4 systemVersion:systemVersion vendorId:vendorId productId:productId deviceType:v26 notifyEnabled:v105 isAppleAudioAccessory:date date:?];

        if ([v130 isAppleAudioAccessory])
        {
          groupIdentifier6 = [v130 groupIdentifier];

          if (groupIdentifier6)
          {
            ownerSession = self->_ownerSession;
            groupIdentifier7 = [v130 groupIdentifier];
            v148[0] = MEMORY[0x277D85DD0];
            v148[1] = 3221225472;
            v148[2] = __39__SAServiceManager_didFetchAllDevices___block_invoke;
            v148[3] = &unk_279B9C7D8;
            v148[4] = self;
            v149 = v129;
            [(SPOwnerSession *)ownerSession beaconGroupForIdentifier:groupIdentifier7 completion:v148];
          }
        }

        v32 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v144 = 0u;
        v145 = 0u;
        v146 = 0u;
        v147 = 0u;
        safeLocations = [v130 safeLocations];
        v33 = [safeLocations countByEnumeratingWithState:&v144 objects:v171 count:16];
        v4 = v135;
        if (v33)
        {
          v34 = v33;
          v35 = *v145;
          v131 = *v145;
          v133 = v32;
          do
          {
            v36 = 0;
            v136 = v34;
            do
            {
              if (*v145 != v35)
              {
                objc_enumerationMutation(safeLocations);
              }

              v37 = *(*(&v144 + 1) + 8 * v36);
              identifier3 = [v37 identifier];
              [v32 addObject:identifier3];

              if ([v37 approvalState] == 1)
              {
                v39 = [SASafeLocation alloc];
                identifier4 = [v37 identifier];
                location = [v37 location];
                [location coordinate];
                v42 = v41;
                location2 = [v37 location];
                [location2 coordinate];
                v45 = v44;
                location3 = [v37 location];
                [location3 horizontalAccuracy];
                v48 = v47;
                location4 = [v37 location];
                v50 = +[SAServiceManager convertCLReferenceFrameToSAReferenceFrame:](SAServiceManager, "convertCLReferenceFrameToSAReferenceFrame:", [location4 referenceFrame]);
                name2 = [v37 name];
                v52 = [MEMORY[0x277CBEAA8] now];
                v53 = [(SASafeLocation *)v39 initWithLocationUUID:identifier4 latitude:v50 longitude:name2 radius:v52 referenceFrame:v42 name:v45 date:v48];

                v4 = v135;
                identifier5 = [v37 identifier];
                [v135 setObject:v53 forKeyedSubscript:identifier5];

                v55 = TASALog;
                if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
                {
                  v56 = v55;
                  identifier6 = [v130 identifier];
                  identifier7 = [(SASafeLocation *)v53 identifier];
                  name3 = [(SASafeLocation *)v53 name];
                  [(SASafeLocation *)v53 latitude];
                  v61 = v60;
                  [(SASafeLocation *)v53 longitude];
                  v63 = v62;
                  [(SASafeLocation *)v53 radius];
                  v65 = v64;
                  referenceFrame = [(SASafeLocation *)v53 referenceFrame];
                  *buf = 68290819;
                  v155 = 2082;
                  v156 = "";
                  v157 = 2113;
                  v158 = identifier6;
                  v159 = 2113;
                  v160 = identifier7;
                  v161 = 2113;
                  v162 = name3;
                  v163 = 2053;
                  v164 = v61;
                  v165 = 2053;
                  v166 = v63;
                  v167 = 2050;
                  v168 = v65;
                  v169 = 2049;
                  v170 = referenceFrame;
                  _os_log_impl(&dword_2656EA000, v56, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#sa ServiceMgr FetchSafeForBeacon, device:%{private}@, uuid:%{private}@, name:%{private}@, lat:%{sensitive}f, lon:%{sensitive}f, radius:%{public}f, refFrame:%{private}lu}", buf, 0x58u);
                }

                v35 = v131;
                v32 = v133;
                v34 = v136;
              }

              ++v36;
            }

            while (v34 != v36);
            v34 = [safeLocations countByEnumeratingWithState:&v144 objects:v171 count:16];
          }

          while (v34);
        }

        identifier8 = [v130 identifier];
        [v120 setObject:v129 forKeyedSubscript:identifier8];

        identifier9 = [v130 identifier];
        [v119 setObject:v32 forKeyedSubscript:identifier9];

        v69 = TASALog;
        if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
        {
          v70 = v69;
          name4 = [v130 name];
          identifier10 = [v130 identifier];
          type4 = [v130 type];
          *buf = 68290051;
          v155 = 2082;
          v156 = "";
          v157 = 2113;
          v158 = name4;
          v159 = 2113;
          v160 = identifier10;
          v161 = 2113;
          v162 = type4;
          v163 = 2113;
          v164 = v32;
          _os_log_impl(&dword_2656EA000, v70, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa ServiceMgr FetchAll, name:%{private}@, device:%{private}@, type:%{private}@, safes:%{private}@}", buf, 0x3Au);
        }

        v74 = [v122 setByAddingObjectsFromSet:v32];
        v5 = v121;
        if (v127)
        {
          v75 = [v122 count];
          v6 = v75 == [v32 count];
        }

        else
        {
          v6 = 0;
        }

        v7 = v125 + 1;
      }

      while (v125 + 1 != v124);
      v86 = [obj countByEnumeratingWithState:&v150 objects:v172 count:16];
      v124 = v86;
    }

    while (v86);
    v128 = v6;
    v140 = v108;
    v143 = v109;
    v137 = v106;
    v134 = v111;
  }

  else
  {
    v134 = 0;
    v107 = 0;
    v137 = 0;
    v140 = 0;
    v143 = 0;
    v112 = 0;
    v113 = 0;
    v123 = 0;
    v128 = 1;
  }

  [(SAServiceManager *)self setBeaconGroupComplete:1];
  [(SAServiceManager *)self setBeaconGroupSafeLocationsMatch:1];
  v87 = [SABeaconGroupVerifier verifyBeaconGroupsWithBeaconGroups:v5 deviceUUIDtoDeviceMap:v120 deviceToSafeLocationMap:v119];
  -[SAServiceManager setBeaconGroupComplete:](self, "setBeaconGroupComplete:", [v87 beaconGroupComplete]);
  -[SAServiceManager setBeaconGroupSafeLocationsMatch:](self, "setBeaconGroupSafeLocationsMatch:", [v87 beaconGroupSafeLocationsMatch]);
  deviceUUIDtoDeviceMap = [v87 deviceUUIDtoDeviceMap];

  v132 = v87;
  deviceToSafeLocationMap = [v87 deviceToSafeLocationMap];

  v90 = [SASafeLocationsEvent alloc];
  v91 = [MEMORY[0x277CBEAA8] now];
  v92 = [(SASafeLocationsEvent *)v90 initWithSafeLocations:v4 date:v91];

  v126 = v92;
  [(SAServiceManager *)self ingestTAEvent:v92];
  v93 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    v94 = v93;
    v95 = [v4 count];
    *buf = 67240192;
    *&buf[4] = v95;
    _os_log_impl(&dword_2656EA000, v94, OS_LOG_TYPE_DEFAULT, "#sa ServiceMgr endFetchBeaconsSafe, %{public}d", buf, 8u);
  }

  analytics = [(SAServiceManager *)self analytics];
  [analytics addSafeLocationFetchResultCount:{objc_msgSend(v4, "count")}];

  v97 = [SADevicesWithSafeLocationsEvent alloc];
  date2 = [MEMORY[0x277CBEAA8] date];
  v99 = [(SADevicesWithSafeLocationsEvent *)v97 initWithDevices:deviceUUIDtoDeviceMap safeLocationUUIDs:deviceToSafeLocationMap date:date2];

  [(SAServiceManager *)self ingestTAEvent:v99];
  v100 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    v101 = v100;
    v102 = [obj count];
    *buf = 67240448;
    *&buf[4] = v102;
    v155 = 1026;
    LODWORD(v156) = 100 * v112 + 10000 * (v113 + v107) + v123;
    _os_log_impl(&dword_2656EA000, v101, OS_LOG_TYPE_DEFAULT, "#sa ServiceMgr endFetchAll %{public}d, types, %{public}d", buf, 0xEu);
  }

  analytics2 = [(SAServiceManager *)self analytics];
  LOBYTE(v105) = v128;
  [analytics2 addDeviceFetchResultCount:objc_msgSend(obj type1count:"count") type2count:v123 type3count:v112 type4count:v113 type5count:v107 type6count:v143 type7count:v140 type8count:v137 safeCount:v134 usingSameSafe:{objc_msgSend(v122, "count"), v105}];

  [(SAServiceManager *)self scheduleBeaconGroupMetricSubmission];
  v104 = *MEMORY[0x277D85DE8];
}

void __39__SAServiceManager_didFetchAllDevices___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__SAServiceManager_didFetchAllDevices___block_invoke_2;
  v6[3] = &unk_279B9C788;
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __39__SAServiceManager_didFetchAllDevices___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 identifier];
    v6 = [*(a1 + 40) macAddress];
    v7 = [v6 fm_hexString];
    v12[0] = 68289539;
    v12[1] = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2113;
    v16 = v5;
    v17 = 2113;
    v18 = v7;
    _os_log_impl(&dword_2656EA000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa ServiceMgr FetchBeaconGroup, device:%{private}@, macAddress:%{private}@}", v12, 0x26u);
  }

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) macAddress];
  v10 = [v9 fm_hexString];
  [v8 setMacAddress:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)scheduleBeaconGroupMetricSubmission
{
  scheduledMetricSubmissionBlock = [(SAServiceManager *)self scheduledMetricSubmissionBlock];

  if (scheduledMetricSubmissionBlock)
  {
    scheduledMetricSubmissionBlock2 = [(SAServiceManager *)self scheduledMetricSubmissionBlock];
    dispatch_block_cancel(scheduledMetricSubmissionBlock2);

    [(SAServiceManager *)self setScheduledMetricSubmissionBlock:0];
  }

  v5 = dispatch_time(0, 60000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SAServiceManager_scheduleBeaconGroupMetricSubmission__block_invoke;
  block[3] = &unk_279B9C800;
  block[4] = self;
  v6 = dispatch_block_create(0, block);
  dispatch_after(v5, self->_queue, v6);
  [(SAServiceManager *)self setScheduledMetricSubmissionBlock:v6];
  v7 = MEMORY[0x26675C330](v6);
  _Block_release(v7);
}

uint64_t __55__SAServiceManager_scheduleBeaconGroupMetricSubmission__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    if ([v3 beaconGroupComplete])
    {
      v5 = "YES";
    }

    else
    {
      v5 = "NO";
    }

    v6 = [*(a1 + 32) beaconGroupSafeLocationsMatch];
    LODWORD(v11) = 68289538;
    if (v6)
    {
      v7 = "YES";
    }

    else
    {
      v7 = "NO";
    }

    HIDWORD(v11) = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = v5;
    v16 = 2082;
    v17 = v7;
    _os_log_impl(&dword_2656EA000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa #beaconMonitoring timed-out submitting metrics, beaconGroupComplete:%{public}s, beaconGroupSafeLocationsMatch:%{public}s}", &v11, 0x26u);
  }

  v8 = [*(a1 + 32) analytics];
  [v8 submitBeaconMonitoringEvent:objc_msgSend(*(a1 + 32) safeLocationsMatch:{"beaconGroupComplete"), objc_msgSend(*(a1 + 32), "beaconGroupSafeLocationsMatch")}];

  result = [*(a1 + 32) setScheduledMetricSubmissionBlock:0];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_ingestVisit:(id)visit
{
  v26 = *MEMORY[0x277D85DE8];
  visitCopy = visit;
  service = [(SAServiceManager *)self service];

  if (service)
  {
    location = [visitCopy location];
    [location latitude];
    v8 = v7;
    location2 = [visitCopy location];
    [location2 longitude];
    v11 = CLLocationCoordinate2DMake(v8, v10);

    v12 = objc_alloc(MEMORY[0x277D73430]);
    location3 = [visitCopy location];
    [location3 horizontalUncertainty];
    v15 = v14;
    entry = [visitCopy entry];
    exit = [visitCopy exit];
    date = [visitCopy date];
    v19 = [v12 initWithCoordinate:entry horizontalAccuracy:exit arrivalDate:date departureDate:2 detectionDate:v11.latitude confidence:{v11.longitude, v15}];

    service2 = [(SAServiceManager *)self service];
    [service2 ingestTAEvent:v19];
  }

  else
  {
    v21 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      v23[0] = 68289026;
      v23[1] = 0;
      v24 = 2082;
      v25 = "";
      _os_log_impl(&dword_2656EA000, v21, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#manager:visit not ingesting TAEvent as SA service is down}", v23, 0x12u);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_fetchAndIngestLastVisit
{
  v3 = objc_alloc(MEMORY[0x277D01340]);
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D01470]];
  v5 = [v3 initWithAscending:0 confidence:v4 dateInterval:0 labelVisit:1 limit:&unk_287710108];

  routineManager = [(SAServiceManager *)self routineManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__SAServiceManager__fetchAndIngestLastVisit__block_invoke;
  v7[3] = &unk_279B9C878;
  v7[4] = self;
  [routineManager fetchStoredVisitsWithOptions:v5 handler:v7];
}

void __44__SAServiceManager__fetchAndIngestLastVisit__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__SAServiceManager__fetchAndIngestLastVisit__block_invoke_2;
  v7[3] = &unk_279B9C788;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __44__SAServiceManager__fetchAndIngestLastVisit__block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2 && [v2 count])
  {
    v3 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 68289283;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2117;
      v26 = v4;
      _os_log_impl(&dword_2656EA000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#manager:visit got last visit, visits:%{sensitive}@}", buf, 0x1Cu);
    }

    v5 = [*(a1 + 32) firstObject];
    v6 = v5;
    if (!v5)
    {
      goto LABEL_16;
    }

    v7 = [v5 entry];
    if (!v7)
    {
      goto LABEL_16;
    }

    v8 = v7;
    v9 = [MEMORY[0x277CBEAA8] now];
    v10 = [v6 entry];
    [v9 timeIntervalSinceDate:v10];
    if (v11 <= 0.0)
    {
    }

    else
    {
      v12 = [v6 location];

      if (!v12)
      {
LABEL_16:

        goto LABEL_17;
      }

      v13 = [v6 placeInference];
      v8 = [v13 loiIdentifier];

      if (v8 && ([v6 exit], v14 = objc_claimAutoreleasedReturnValue(), v14, !v14))
      {
        v17 = [*(a1 + 40) routineManager];
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __44__SAServiceManager__fetchAndIngestLastVisit__block_invoke_44;
        v18[3] = &unk_279B9C850;
        v18[4] = *(a1 + 40);
        v19 = v6;
        v20 = v8;
        [v17 fetchLocationOfInterestWithIdentifier:v20 withHandler:v18];
      }

      else
      {
        [*(a1 + 40) _ingestVisit:v6];
      }
    }

    goto LABEL_16;
  }

  v15 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v22 = 0;
    v23 = 2082;
    v24 = "";
    _os_log_impl(&dword_2656EA000, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#manager:visit no last visit to bootstrap onto}", buf, 0x12u);
  }

LABEL_17:
  v16 = *MEMORY[0x277D85DE8];
}

void __44__SAServiceManager__fetchAndIngestLastVisit__block_invoke_44(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__SAServiceManager__fetchAndIngestLastVisit__block_invoke_2_45;
  block[3] = &unk_279B9C828;
  v13 = v6;
  v8 = a1[5];
  v9 = a1[4];
  v14 = v8;
  v15 = v9;
  v16 = v5;
  v17 = a1[6];
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, block);
}

void __44__SAServiceManager__fetchAndIngestLastVisit__block_invoke_2_45(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = TASALog;
    if (!os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
LABEL_5:
      [*(a1 + 48) _ingestVisit:{*(a1 + 40), v32, *v33, *&v33[16], v34}];
      goto LABEL_6;
    }

    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v32 = 68289539;
    *v33 = 2082;
    *&v33[2] = "";
    *&v33[10] = 2117;
    *&v33[12] = v3;
    *&v33[20] = 2114;
    *&v33[22] = v4;
    v5 = "{msg%{public}.0s:#sa #loi error fetching LOI, visit:%{sensitive}@, error:%{public}@}";
    v6 = v2;
    v7 = OS_LOG_TYPE_ERROR;
LABEL_4:
    _os_log_impl(&dword_2656EA000, v6, v7, v5, &v32, 0x26u);
    goto LABEL_5;
  }

  v9 = TASALog;
  if (!*(a1 + 56))
  {
    if (!os_log_type_enabled(TASALog, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_5;
    }

    v30 = *(a1 + 40);
    v31 = *(a1 + 64);
    v32 = 68289539;
    *v33 = 2082;
    *&v33[2] = "";
    *&v33[10] = 2117;
    *&v33[12] = v30;
    *&v33[20] = 2113;
    *&v33[22] = v31;
    v5 = "{msg%{public}.0s:#sa #loi received nil in return when fetching LOI, visit:%{sensitive}@, loiIdentifier:%{private}@}";
    v6 = v9;
    v7 = OS_LOG_TYPE_FAULT;
    goto LABEL_4;
  }

  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    v32 = 68289539;
    *v33 = 2082;
    *&v33[2] = "";
    *&v33[10] = 2117;
    *&v33[12] = v10;
    *&v33[20] = 2113;
    *&v33[22] = v11;
    _os_log_impl(&dword_2656EA000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa #loi received LOI, loi:%{sensitive}@, loiIdentifier:%{private}@}", &v32, 0x26u);
  }

  v12 = [*(a1 + 56) type];
  v13 = [*(a1 + 48) service];

  if (v13)
  {
    if (v12)
    {
      v14 = 2 * (v12 == 1);
    }

    else
    {
      v14 = 1;
    }

    v15 = objc_alloc(MEMORY[0x277D73450]);
    v16 = [*(a1 + 56) location];
    [v16 latitude];
    v18 = v17;
    v19 = [*(a1 + 56) location];
    [v19 longitude];
    v21 = v20;
    v22 = [*(a1 + 56) location];
    [v22 horizontalUncertainty];
    v24 = v23;
    v25 = [*(a1 + 56) location];
    v26 = [v25 referenceFrame];
    v27 = [MEMORY[0x277CBEAA8] date];
    v28 = [v15 initWithType:v14 latitude:v26 longitude:v27 horizontalAccuracy:v18 referenceFrame:v21 date:v24];

    v29 = [*(a1 + 48) service];
    [v29 ingestTAEvent:v28];
  }

LABEL_6:
  v8 = *MEMORY[0x277D85DE8];
}

- (void)separationAlertsService:(id)service notifySeparationsForDevices:(id)devices withLocation:(id)location withContext:(id)context
{
  v35 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  devicesCopy = devices;
  locationCopy = location;
  contextCopy = context;
  service = [(SAServiceManager *)self service];
  v15 = service;
  if (devicesCopy && service == serviceCopy && [devicesCopy count])
  {

    if (contextCopy)
    {
      v16 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
        *buf = 134283521;
        v34 = [devicesCopy count];
        _os_log_impl(&dword_2656EA000, v17, OS_LOG_TYPE_DEFAULT, "#sa ServiceMgr notifyAboutDevices:%{private}ld", buf, 0xCu);
      }

      v27 = serviceCopy;
      if ([devicesCopy count])
      {
        v18 = 0;
        do
        {
          analytics = [(SAServiceManager *)self analytics];
          [analytics addAlertWithContext:contextCopy];

          ++v18;
        }

        while (v18 < [devicesCopy count]);
      }

      allObjects = [(NSHashTable *)self->_clients allObjects];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v21 = [allObjects countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v29;
        do
        {
          v24 = 0;
          do
          {
            if (*v29 != v23)
            {
              objc_enumerationMutation(allObjects);
            }

            v25 = *(*(&v28 + 1) + 8 * v24);
            if (objc_opt_respondsToSelector())
            {
              [v25 separationAlertsServiceManager:self notifySeparationsForDevices:devicesCopy withLocation:locationCopy withContext:contextCopy];
            }

            ++v24;
          }

          while (v22 != v24);
          v22 = [allObjects countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v22);
      }

      serviceCopy = v27;
    }
  }

  else
  {
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)separationAlertsService:(id)service requestBluetoothScanForTypes:(unint64_t)types
{
  v24 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  service = [(SAServiceManager *)self service];

  if (service == serviceCopy)
  {
    v8 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134283521;
      typesCopy = types;
      _os_log_impl(&dword_2656EA000, v8, OS_LOG_TYPE_DEFAULT, "#sa ServiceMgr requestBluetoothScan:%{private}#lx", buf, 0xCu);
    }

    analytics = [(SAServiceManager *)self analytics];
    [analytics addAggressiveScanRequest:types == 1];

    allObjects = [(NSHashTable *)self->_clients allObjects];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = [allObjects countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(allObjects);
          }

          v15 = *(*(&v17 + 1) + 8 * v14);
          if (objc_opt_respondsToSelector())
          {
            [v15 separationAlertsServiceManager:self requestBluetoothScanForTypes:types];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [allObjects countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)separationAlertsService:(id)service requestLocationForType:(unint64_t)type
{
  v25 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  service = [(SAServiceManager *)self service];

  if (service == serviceCopy)
  {
    v8 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134283521;
      typeCopy = type;
      _os_log_impl(&dword_2656EA000, v8, OS_LOG_TYPE_DEFAULT, "#sa ServiceMgr requestLocationForType:%{private}#lx", buf, 0xCu);
    }

    analytics = [(SAServiceManager *)self analytics];
    v10 = analytics;
    if (type)
    {
      [analytics addWifiLocationRequest:1];
    }

    else
    {
      [analytics addGpsLocationRequest:1];
    }

    allObjects = [(NSHashTable *)self->_clients allObjects];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = [allObjects countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(allObjects);
          }

          v16 = *(*(&v18 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v16 separationAlertsServiceManager:self requestLocationForType:type];
          }
        }

        v13 = [allObjects countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)separationAlertsService:(id)service addGeofence:(id)geofence
{
  v23 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  geofenceCopy = geofence;
  service = [(SAServiceManager *)self service];

  if (geofenceCopy && service == serviceCopy)
  {
    v9 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2656EA000, v9, OS_LOG_TYPE_DEFAULT, "#sa ServiceMgr addGeofence", buf, 2u);
    }

    allObjects = [(NSHashTable *)self->_clients allObjects];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = [allObjects countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(allObjects);
          }

          v15 = *(*(&v17 + 1) + 8 * v14);
          if (objc_opt_respondsToSelector())
          {
            [v15 separationAlertsServiceManager:self addGeofence:geofenceCopy];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [allObjects countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v12);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)separationAlertsService:(id)service removeGeofence:(id)geofence
{
  v23 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  geofenceCopy = geofence;
  service = [(SAServiceManager *)self service];

  if (geofenceCopy && service == serviceCopy)
  {
    v9 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2656EA000, v9, OS_LOG_TYPE_DEFAULT, "#sa ServiceMgr removeGeofence", buf, 2u);
    }

    allObjects = [(NSHashTable *)self->_clients allObjects];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = [allObjects countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(allObjects);
          }

          v15 = *(*(&v17 + 1) + 8 * v14);
          if (objc_opt_respondsToSelector())
          {
            [v15 separationAlertsServiceManager:self removeGeofence:geofenceCopy];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [allObjects countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v12);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)separationAlertsService:(id)service requestStateForRegion:(id)region
{
  v23 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  regionCopy = region;
  service = [(SAServiceManager *)self service];

  if (regionCopy && service == serviceCopy)
  {
    v9 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2656EA000, v9, OS_LOG_TYPE_DEFAULT, "#sa ServiceMgr requestStateForRegion", buf, 2u);
    }

    allObjects = [(NSHashTable *)self->_clients allObjects];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = [allObjects countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(allObjects);
          }

          v15 = *(*(&v17 + 1) + 8 * v14);
          if (objc_opt_respondsToSelector())
          {
            [v15 separationAlertsServiceManager:self requestStateForRegion:regionCopy];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [allObjects countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v12);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)separationAlertsService:(id)service scheduleSATimeEvent:(double)event forAlarm:(id)alarm
{
  v27 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  alarmCopy = alarm;
  service = [(SAServiceManager *)self service];

  if (service == serviceCopy)
  {
    v11 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      eventCopy = event;
      _os_log_impl(&dword_2656EA000, v11, OS_LOG_TYPE_DEFAULT, "#sa ServiceMgr scheduleSATimeEvent:%{public}#lf", buf, 0xCu);
    }

    analytics = [(SAServiceManager *)self analytics];
    [analytics addWakeTimerRequest];

    allObjects = [(NSHashTable *)self->_clients allObjects];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = [allObjects countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        v17 = 0;
        do
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(allObjects);
          }

          v18 = *(*(&v20 + 1) + 8 * v17);
          if (objc_opt_respondsToSelector())
          {
            [v18 separationAlertsServiceManager:self scheduleSATimeEvent:alarmCopy forAlarm:event];
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [allObjects countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v15);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)separationAlertsService:(id)service cancelSATimeEventForAlarm:(id)alarm
{
  v27 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  alarmCopy = alarm;
  service = [(SAServiceManager *)self service];

  if (service == serviceCopy)
  {
    v9 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289282;
      v23 = 2082;
      v24 = "";
      v25 = 2114;
      v26 = alarmCopy;
      _os_log_impl(&dword_2656EA000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa ServiceMgr cancelSATimeEventForAlarm, uuid:%{public}@}", &buf, 0x1Cu);
    }

    allObjects = [(NSHashTable *)self->_clients allObjects];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = [allObjects countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(allObjects);
          }

          v15 = *(*(&v17 + 1) + 8 * v14);
          if (objc_opt_respondsToSelector())
          {
            [v15 separationAlertsServiceManager:self cancelSATimeEventForAlarm:alarmCopy];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [allObjects countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)separationAlertsServiceStartBackgroundScanning:(id)scanning
{
  v22 = *MEMORY[0x277D85DE8];
  scanningCopy = scanning;
  service = [(SAServiceManager *)self service];

  if (service == scanningCopy)
  {
    v6 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289026;
      v20 = 2082;
      v21 = "";
      _os_log_impl(&dword_2656EA000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa ServiceMgr startBackgroundScanning}", &buf, 0x12u);
    }

    allObjects = [(NSHashTable *)self->_clients allObjects];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [allObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(allObjects);
          }

          v12 = *(*(&v14 + 1) + 8 * v11);
          if (objc_opt_respondsToSelector())
          {
            [v12 separationAlertsServiceManagerStartBackgroundScanning:self];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [allObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)separationAlertsServiceStopBackgroundScanning:(id)scanning
{
  v22 = *MEMORY[0x277D85DE8];
  scanningCopy = scanning;
  service = [(SAServiceManager *)self service];

  if (service == scanningCopy)
  {
    v6 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289026;
      v20 = 2082;
      v21 = "";
      _os_log_impl(&dword_2656EA000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa ServiceMgr stopBackgroundScanning}", &buf, 0x12u);
    }

    allObjects = [(NSHashTable *)self->_clients allObjects];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [allObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(allObjects);
          }

          v12 = *(*(&v14 + 1) + 8 * v11);
          if (objc_opt_respondsToSelector())
          {
            [v12 separationAlertsServiceManagerStopBackgroundScanning:self];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [allObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)separationAlertsServiceStopLongAggressiveScan:(id)scan
{
  v22 = *MEMORY[0x277D85DE8];
  scanCopy = scan;
  service = [(SAServiceManager *)self service];

  if (service == scanCopy)
  {
    v6 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289026;
      v20 = 2082;
      v21 = "";
      _os_log_impl(&dword_2656EA000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa ServiceMgr stopLongAggressiveScan}", &buf, 0x12u);
    }

    allObjects = [(NSHashTable *)self->_clients allObjects];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [allObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(allObjects);
          }

          v12 = *(*(&v14 + 1) + 8 * v11);
          if (objc_opt_respondsToSelector())
          {
            [v12 separationAlertsServiceManagerStopLongAggressiveScan:self];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [allObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)separationAlertsServiceFetchLastVisit:(id)visit
{
  v11 = *MEMORY[0x277D85DE8];
  visitCopy = visit;
  service = [(SAServiceManager *)self service];

  if (service == visitCopy)
  {
    v6 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 68289026;
      v8[1] = 0;
      v9 = 2082;
      v10 = "";
      _os_log_impl(&dword_2656EA000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa ServiceMgr fetchLastVisit}", v8, 0x12u);
    }

    [(SAServiceManager *)self _fetchAndIngestLastVisit];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)ingestTAEvent:(id)event
{
  eventCopy = event;
  service = self->_service;
  v18 = eventCopy;
  if (service)
  {
    [(SAService *)service ingestTAEvent:eventCopy];
    hasAttemptedToIngestLastVisitAtStartup = [(SAServiceManager *)self hasAttemptedToIngestLastVisitAtStartup];
    eventCopy = v18;
    if (!hasAttemptedToIngestLastVisitAtStartup)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      eventCopy = v18;
      if (isKindOfClass)
      {
        v8 = v18;
        if ([v8 systemStateType] == 11 && objc_msgSend(v8, "isOn"))
        {
          [(SAServiceManager *)self _fetchAndIngestLastVisit];
          [(SAServiceManager *)self setHasAttemptedToIngestLastVisitAtStartup:1];
        }

        eventCopy = v18;
      }
    }
  }

  getDate = [eventCopy getDate];
  nextAnalyticsSubmission = [(SAServiceManager *)self nextAnalyticsSubmission];
  [getDate timeIntervalSinceDate:nextAnalyticsSubmission];
  v12 = v11;

  if (v12 >= 0.0)
  {
    analytics = [(SAServiceManager *)self analytics];
    [analytics submitDefaultAlertRateEvent];

    analytics2 = [(SAServiceManager *)self analytics];
    [analytics2 publishAndResetAggregation];

    v15 = objc_alloc(MEMORY[0x277CBEAA8]);
    analytics3 = [(SAServiceManager *)self analytics];
    [analytics3 publishingInterval];
    v17 = [v15 initWithTimeIntervalSinceNow:?];
    [(SAServiceManager *)self setNextAnalyticsSubmission:v17];
  }
}

+ (void)convertBeaconToDeviceType:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138477827;
  v4 = a1;
  _os_log_fault_impl(&dword_2656EA000, a2, OS_LOG_TYPE_FAULT, "#sa ServiceMgr received unknown device type, %{private}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end