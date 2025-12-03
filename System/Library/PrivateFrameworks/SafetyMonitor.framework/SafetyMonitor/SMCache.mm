@interface SMCache
+ (void)logNoCacheDataForSessionID:(id)d role:(id)role deviceType:(id)type transaction:(id)transaction;
- (BOOL)shiftRequiredForLocation:(id)location;
- (SMCache)init;
- (SMCache)initWithCoder:(id)coder;
- (SMCache)initWithDictionary:(id)dictionary;
- (SMCache)initWithIdentifier:(id)identifier deviceStatus:(id)status locationsDuringSession:(id)session unlockLocation:(id)location lockLocation:(id)lockLocation mostRecentLocation:(id)recentLocation startingLocation:(id)startingLocation offWristLocation:(id)self0 parkedCarLocation:(id)self1 destinationMapItem:(id)self2 workoutEvents:(id)self3;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)outputToDictionary;
- (unint64_t)identifierHash;
- (void)encodeWithCoder:(id)coder;
- (void)logCacheForSessionID:(id)d role:(id)role deviceType:(id)type transaction:(id)transaction hashString:(id)string;
- (void)shiftLocation:(id)location queue:(id)queue withHandler:(id)handler;
- (void)shiftLocationsOnQueue:(id)queue handler:(id)handler;
@end

@implementation SMCache

- (SMCache)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = [(SMCache *)self initWithIdentifier:v3 deviceStatus:v4 locationsDuringSession:v5 unlockLocation:0 lockLocation:0 mostRecentLocation:0 startingLocation:0 offWristLocation:0 parkedCarLocation:0 destinationMapItem:0 workoutEvents:v6];

  return v7;
}

- (SMCache)initWithIdentifier:(id)identifier deviceStatus:(id)status locationsDuringSession:(id)session unlockLocation:(id)location lockLocation:(id)lockLocation mostRecentLocation:(id)recentLocation startingLocation:(id)startingLocation offWristLocation:(id)self0 parkedCarLocation:(id)self1 destinationMapItem:(id)self2 workoutEvents:(id)self3
{
  identifierCopy = identifier;
  statusCopy = status;
  sessionCopy = session;
  sessionCopy2 = session;
  locationCopy = location;
  lockLocationCopy = lockLocation;
  recentLocationCopy = recentLocation;
  startingLocationCopy = startingLocation;
  wristLocationCopy = wristLocation;
  carLocationCopy = carLocation;
  itemCopy = item;
  eventsCopy = events;
  if (identifierCopy)
  {
    v40.receiver = self;
    v40.super_class = SMCache;
    v19 = [(SMCache *)&v40 init];
    v20 = v19;
    if (v19)
    {
      objc_storeStrong(&v19->_identifier, identifier);
      objc_storeStrong(&v20->_deviceStatus, status);
      objc_storeStrong(&v20->_locationsDuringSession, sessionCopy);
      objc_storeStrong(&v20->_unlockLocation, location);
      objc_storeStrong(&v20->_lockLocation, lockLocation);
      objc_storeStrong(&v20->_mostRecentLocation, recentLocation);
      objc_storeStrong(&v20->_startingLocation, startingLocation);
      objc_storeStrong(&v20->_offWristLocation, wristLocation);
      objc_storeStrong(&v20->_parkedCarLocation, carLocation);
      objc_storeStrong(&v20->_destinationMapItem, item);
      objc_storeStrong(&v20->_workoutEvents, events);
      v21 = objc_alloc_init(MEMORY[0x277D0EB88]);
      shifter = v20->_shifter;
      v20->_shifter = v21;
    }

    selfCopy = v20;
    v24 = selfCopy;
  }

  else
  {
    selfCopy = self;
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v25, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier", buf, 2u);
    }

    v24 = 0;
  }

  return v24;
}

- (SMCache)initWithDictionary:(id)dictionary
{
  v59 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  uUID = [MEMORY[0x277CCAD78] UUID];
  v5 = [dictionaryCopy valueForKey:@"identifier"];
  v48 = [uUID initWithUUIDString:v5];

  v6 = objc_opt_new();
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v7 = [dictionaryCopy valueForKey:@"locationsDuringSession"];
  v8 = [v7 countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v54;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v54 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [[SMLocation alloc] initWithDictionary:*(*(&v53 + 1) + 8 * i)];
        [v6 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v9);
  }

  v13 = [SMLocation alloc];
  v14 = [dictionaryCopy valueForKey:@"unlockLocation"];
  v45 = [(SMLocation *)v13 initWithDictionary:v14];

  v15 = [SMLocation alloc];
  v16 = [dictionaryCopy valueForKey:@"lockLocation"];
  v44 = [(SMLocation *)v15 initWithDictionary:v16];

  v17 = [SMLocation alloc];
  v18 = [dictionaryCopy valueForKey:@"mostRecentLocation"];
  v43 = [(SMLocation *)v17 initWithDictionary:v18];

  v19 = [SMDeviceStatus alloc];
  v20 = [dictionaryCopy valueForKey:@"deviceStatus"];
  v42 = [(SMDeviceStatus *)v19 initWithDictionary:v20];

  v21 = [SMLocation alloc];
  v22 = [dictionaryCopy valueForKey:@"startingLocation"];
  v41 = [(SMLocation *)v21 initWithDictionary:v22];

  v23 = [SMLocation alloc];
  v24 = [dictionaryCopy valueForKey:@"offWristLocation"];
  v40 = [(SMLocation *)v23 initWithDictionary:v24];

  v25 = [SMLocation alloc];
  v26 = [dictionaryCopy valueForKey:@"parkedCar"];
  v39 = [(SMLocation *)v25 initWithDictionary:v26];

  v27 = [dictionaryCopy valueForKey:@"destinationMapItem"];

  if (v27)
  {
    v28 = objc_alloc(MEMORY[0x277CBEA90]);
    v29 = [dictionaryCopy valueForKey:@"destinationMapItem"];
    v27 = [v28 initWithBase64EncodedString:v29 options:0];
  }

  v30 = objc_opt_new();
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v31 = [dictionaryCopy valueForKey:@"workoutEvents"];
  v32 = [v31 countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v50;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v50 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = [[SMWorkoutEvent alloc] initWithDictionary:*(*(&v49 + 1) + 8 * j)];
        [v30 addObject:v36];
      }

      v33 = [v31 countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v33);
  }

  v47 = [(SMCache *)self initWithIdentifier:v48 deviceStatus:v42 locationsDuringSession:v6 unlockLocation:v45 lockLocation:v44 mostRecentLocation:v43 startingLocation:v41 offWristLocation:v40 parkedCarLocation:v39 destinationMapItem:v27 workoutEvents:v30];
  v37 = *MEMORY[0x277D85DE8];
  return v47;
}

- (id)outputToDictionary
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  identifier = [(SMCache *)self identifier];
  uUIDString = [identifier UUIDString];
  [v3 setObject:uUIDString forKey:@"identifier"];

  v6 = objc_opt_new();
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  locationsDuringSession = [(SMCache *)self locationsDuringSession];
  v8 = [locationsDuringSession countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v51;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v51 != v10)
        {
          objc_enumerationMutation(locationsDuringSession);
        }

        outputToDictionary = [*(*(&v50 + 1) + 8 * i) outputToDictionary];
        [v6 addObject:outputToDictionary];
      }

      v9 = [locationsDuringSession countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v9);
  }

  [v3 setObject:v6 forKey:@"locationsDuringSession"];
  unlockLocation = [(SMCache *)self unlockLocation];

  if (unlockLocation)
  {
    unlockLocation2 = [(SMCache *)self unlockLocation];
    outputToDictionary2 = [unlockLocation2 outputToDictionary];
    [v3 setObject:outputToDictionary2 forKey:@"unlockLocation"];
  }

  lockLocation = [(SMCache *)self lockLocation];

  if (lockLocation)
  {
    lockLocation2 = [(SMCache *)self lockLocation];
    outputToDictionary3 = [lockLocation2 outputToDictionary];
    [v3 setObject:outputToDictionary3 forKey:@"lockLocation"];
  }

  mostRecentLocation = [(SMCache *)self mostRecentLocation];

  if (mostRecentLocation)
  {
    mostRecentLocation2 = [(SMCache *)self mostRecentLocation];
    outputToDictionary4 = [mostRecentLocation2 outputToDictionary];
    [v3 setObject:outputToDictionary4 forKey:@"mostRecentLocation"];
  }

  startingLocation = [(SMCache *)self startingLocation];

  if (startingLocation)
  {
    startingLocation2 = [(SMCache *)self startingLocation];
    outputToDictionary5 = [startingLocation2 outputToDictionary];
    [v3 setObject:outputToDictionary5 forKey:@"startingLocation"];
  }

  offWristLocation = [(SMCache *)self offWristLocation];

  if (offWristLocation)
  {
    offWristLocation2 = [(SMCache *)self offWristLocation];
    outputToDictionary6 = [offWristLocation2 outputToDictionary];
    [v3 setObject:outputToDictionary6 forKey:@"offWristLocation"];
  }

  parkedCarLocation = [(SMCache *)self parkedCarLocation];

  if (parkedCarLocation)
  {
    parkedCarLocation2 = [(SMCache *)self parkedCarLocation];
    outputToDictionary7 = [parkedCarLocation2 outputToDictionary];
    [v3 setObject:outputToDictionary7 forKey:@"parkedCar"];
  }

  destinationMapItem = [(SMCache *)self destinationMapItem];

  if (destinationMapItem)
  {
    destinationMapItem2 = [(SMCache *)self destinationMapItem];
    v33 = [destinationMapItem2 base64EncodedStringWithOptions:0];
    [v3 setObject:v33 forKey:@"destinationMapItem"];
  }

  deviceStatus = [(SMCache *)self deviceStatus];

  if (deviceStatus)
  {
    deviceStatus2 = [(SMCache *)self deviceStatus];
    outputToDictionary8 = [deviceStatus2 outputToDictionary];
    [v3 setObject:outputToDictionary8 forKey:@"deviceStatus"];
  }

  v37 = objc_opt_new();
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  workoutEvents = [(SMCache *)self workoutEvents];
  v39 = [workoutEvents countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v47;
    do
    {
      for (j = 0; j != v40; ++j)
      {
        if (*v47 != v41)
        {
          objc_enumerationMutation(workoutEvents);
        }

        outputToDictionary9 = [*(*(&v46 + 1) + 8 * j) outputToDictionary];
        [v37 addObject:outputToDictionary9];
      }

      v40 = [workoutEvents countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v40);
  }

  [v3 setObject:v37 forKey:@"workoutEvents"];
  v44 = *MEMORY[0x277D85DE8];

  return v3;
}

- (unint64_t)identifierHash
{
  v41 = *MEMORY[0x277D85DE8];
  identifier = [(SMCache *)self identifier];
  v4 = [identifier hash];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  locationsDuringSession = [(SMCache *)self locationsDuringSession];
  v6 = [locationsDuringSession countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v36;
    do
    {
      v9 = 0;
      do
      {
        if (*v36 != v8)
        {
          objc_enumerationMutation(locationsDuringSession);
        }

        identifier2 = [*(*(&v35 + 1) + 8 * v9) identifier];
        v4 ^= [identifier2 hash];

        ++v9;
      }

      while (v7 != v9);
      v7 = [locationsDuringSession countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v7);
  }

  unlockLocation = [(SMCache *)self unlockLocation];

  if (unlockLocation)
  {
    unlockLocation2 = [(SMCache *)self unlockLocation];
    identifier3 = [unlockLocation2 identifier];
    v4 ^= [identifier3 hash];
  }

  lockLocation = [(SMCache *)self lockLocation];

  if (lockLocation)
  {
    lockLocation2 = [(SMCache *)self lockLocation];
    identifier4 = [lockLocation2 identifier];
    v4 ^= [identifier4 hash];
  }

  mostRecentLocation = [(SMCache *)self mostRecentLocation];

  if (mostRecentLocation)
  {
    mostRecentLocation2 = [(SMCache *)self mostRecentLocation];
    identifier5 = [mostRecentLocation2 identifier];
    v4 ^= [identifier5 hash];
  }

  deviceStatus = [(SMCache *)self deviceStatus];
  identifier6 = [deviceStatus identifier];
  v22 = [identifier6 hash] ^ v4;

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  workoutEvents = [(SMCache *)self workoutEvents];
  v24 = [workoutEvents countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v32;
    do
    {
      v27 = 0;
      do
      {
        if (*v32 != v26)
        {
          objc_enumerationMutation(workoutEvents);
        }

        location = [*(*(&v31 + 1) + 8 * v27) location];
        v22 ^= [location hash];

        ++v27;
      }

      while (v25 != v27);
      v25 = [workoutEvents countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v25);
  }

  v29 = *MEMORY[0x277D85DE8];
  return v22;
}

- (void)logCacheForSessionID:(id)d role:(id)role deviceType:(id)type transaction:(id)transaction hashString:(id)string
{
  v87 = *MEMORY[0x277D85DE8];
  dCopy = d;
  roleCopy = role;
  typeCopy = type;
  transactionCopy = transaction;
  stringCopy = string;
  selfCopy = self;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      identifier = [(SMCache *)self identifier];
      locationsDuringSession = [(SMCache *)self locationsDuringSession];
      v16 = [locationsDuringSession count];
      destinationMapItem = [(SMCache *)self destinationMapItem];
      deviceStatus = [(SMCache *)self deviceStatus];
      workoutEvents = [(SMCache *)self workoutEvents];
      *buf = 138414594;
      v68 = roleCopy;
      v69 = 2112;
      v70 = dCopy;
      v71 = 2112;
      v72 = transactionCopy;
      v73 = 2112;
      v74 = typeCopy;
      v75 = 2112;
      v76 = stringCopy;
      v77 = 2112;
      v78 = identifier;
      v79 = 2048;
      v80 = v16;
      v81 = 2112;
      v82 = destinationMapItem;
      v83 = 2112;
      v84 = deviceStatus;
      v85 = 2048;
      v86 = [workoutEvents count];
      _os_log_impl(&dword_26455D000, v13, OS_LOG_TYPE_INFO, "#SafetyCache,%@,sessionID:%@,logCache,transactionID:%@,%@,hash,%@,identifier,%@,locationsDuringSessionCount,%lu,destinationMapItem,%@,deviceStatus,%@,workoutEventsCount,%lu", buf, 0x66u);

      self = selfCopy;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      mostRecentLocation = [(SMCache *)self mostRecentLocation];
      *buf = 138413315;
      v68 = roleCopy;
      v69 = 2112;
      v70 = dCopy;
      v71 = 2112;
      v72 = transactionCopy;
      v73 = 2112;
      v74 = typeCopy;
      v75 = 2117;
      v76 = mostRecentLocation;
      _os_log_impl(&dword_26455D000, v20, OS_LOG_TYPE_INFO, "#SafetyCache,%@,sessionID:%@,logCache,transactionID:%@,%@,mostRecentLocation,%{sensitive}@", buf, 0x34u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      startingLocation = [(SMCache *)self startingLocation];
      *buf = 138413315;
      v68 = roleCopy;
      v69 = 2112;
      v70 = dCopy;
      v71 = 2112;
      v72 = transactionCopy;
      v73 = 2112;
      v74 = typeCopy;
      v75 = 2117;
      v76 = startingLocation;
      _os_log_impl(&dword_26455D000, v22, OS_LOG_TYPE_INFO, "#SafetyCache,%@,sessionID:%@,logCache,transactionID:%@,%@,startingLocation,%{sensitive}@", buf, 0x34u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      unlockLocation = [(SMCache *)self unlockLocation];
      *buf = 138413315;
      v68 = roleCopy;
      v69 = 2112;
      v70 = dCopy;
      v71 = 2112;
      v72 = transactionCopy;
      v73 = 2112;
      v74 = typeCopy;
      v75 = 2117;
      v76 = unlockLocation;
      _os_log_impl(&dword_26455D000, v24, OS_LOG_TYPE_INFO, "#SafetyCache,%@,sessionID:%@,logCache,transactionID:%@,%@,unlockLocation,%{sensitive}@", buf, 0x34u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      lockLocation = [(SMCache *)self lockLocation];
      *buf = 138413315;
      v68 = roleCopy;
      v69 = 2112;
      v70 = dCopy;
      v71 = 2112;
      v72 = transactionCopy;
      v73 = 2112;
      v74 = typeCopy;
      v75 = 2117;
      v76 = lockLocation;
      _os_log_impl(&dword_26455D000, v26, OS_LOG_TYPE_INFO, "#SafetyCache,%@,sessionID:%@,logCache,transactionID:%@,%@,lockLocation,%{sensitive}@", buf, 0x34u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      parkedCarLocation = [(SMCache *)self parkedCarLocation];
      *buf = 138413315;
      v68 = roleCopy;
      v69 = 2112;
      v70 = dCopy;
      v71 = 2112;
      v72 = transactionCopy;
      v73 = 2112;
      v74 = typeCopy;
      v75 = 2117;
      v76 = parkedCarLocation;
      _os_log_impl(&dword_26455D000, v28, OS_LOG_TYPE_INFO, "#SafetyCache,%@,sessionID:%@,logCache,transactionID:%@,%@,parkedCarLocation,%{sensitive}@", buf, 0x34u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      offWristLocation = [(SMCache *)self offWristLocation];
      *buf = 138413315;
      v68 = roleCopy;
      v69 = 2112;
      v70 = dCopy;
      v71 = 2112;
      v72 = transactionCopy;
      v73 = 2112;
      v74 = typeCopy;
      v75 = 2117;
      v76 = offWristLocation;
      _os_log_impl(&dword_26455D000, v30, OS_LOG_TYPE_INFO, "#SafetyCache,%@,sessionID:%@,logCache,transactionID:%@,%@,offWristLocation,%{sensitive}@", buf, 0x34u);
    }
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  locationsDuringSession2 = [(SMCache *)self locationsDuringSession];
  v33 = [locationsDuringSession2 countByEnumeratingWithState:&v61 objects:v66 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = 0;
    v36 = MEMORY[0x277D86220];
    v37 = *v62;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v62 != v37)
        {
          objc_enumerationMutation(locationsDuringSession2);
        }

        v39 = *(*(&v61 + 1) + 8 * i);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v40 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            *buf = 138413571;
            v68 = roleCopy;
            v69 = 2112;
            v70 = dCopy;
            v71 = 2112;
            v72 = transactionCopy;
            v73 = 2112;
            v74 = typeCopy;
            v75 = 2048;
            v76 = v35;
            v77 = 2117;
            v78 = v39;
            _os_log_impl(&dword_26455D000, v40, OS_LOG_TYPE_INFO, "#SafetyCache,%@,sessionID:%@,logCache,transactionID:%@,%@,locationsDuringSession,location,%lu,%{sensitive}@", buf, 0x3Eu);
          }
        }

        ++v35;
      }

      v34 = [locationsDuringSession2 countByEnumeratingWithState:&v61 objects:v66 count:16];
    }

    while (v34);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  workoutEvents2 = [(SMCache *)selfCopy workoutEvents];
  v42 = [workoutEvents2 countByEnumeratingWithState:&v57 objects:v65 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = 0;
    v45 = *v58;
    v46 = MEMORY[0x277D86220];
    do
    {
      for (j = 0; j != v43; ++j)
      {
        if (*v58 != v45)
        {
          objc_enumerationMutation(workoutEvents2);
        }

        v48 = *(*(&v57 + 1) + 8 * j);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          v49 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            *buf = 138413570;
            v68 = roleCopy;
            v69 = 2112;
            v70 = dCopy;
            v71 = 2112;
            v72 = transactionCopy;
            v73 = 2112;
            v74 = typeCopy;
            v75 = 2048;
            v76 = v44;
            v77 = 2112;
            v78 = v48;
            _os_log_impl(&dword_26455D000, v49, OS_LOG_TYPE_INFO, "#SafetyCache,%@,sessionID:%@,logCache,transactionID:%@,%@,workoutEvents,workoutEvent,%lu,%@", buf, 0x3Eu);
          }
        }

        ++v44;
      }

      v43 = [workoutEvents2 countByEnumeratingWithState:&v57 objects:v65 count:16];
    }

    while (v43);
  }

  v50 = *MEMORY[0x277D85DE8];
}

+ (void)logNoCacheDataForSessionID:(id)d role:(id)role deviceType:(id)type transaction:(id)transaction
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  roleCopy = role;
  typeCopy = type;
  transactionCopy = transaction;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v15 = 138413058;
      v16 = roleCopy;
      v17 = 2112;
      v18 = dCopy;
      v19 = 2112;
      v20 = transactionCopy;
      v21 = 2112;
      v22 = typeCopy;
      _os_log_impl(&dword_26455D000, v13, OS_LOG_TYPE_INFO, "#SafetyCache,%@,sessionID:%@,logCache,transactionID:%@,%@,no cache data", &v15, 0x2Au);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)shiftRequiredForLocation:(id)location
{
  locationCopy = location;
  v4 = locationCopy;
  if (locationCopy && [locationCopy referenceFrame] != 2)
  {
    [v4 latitude];
    v7 = v6;
    [v4 longitude];
    v5 = [MEMORY[0x277D0EB88] isLocationShiftRequiredForCoordinate:{v7, v8}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)shiftLocation:(id)location queue:(id)queue withHandler:(id)handler
{
  locationCopy = location;
  queueCopy = queue;
  handlerCopy = handler;
  [locationCopy latitude];
  v12 = v11;
  [locationCopy longitude];
  v14 = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__SMCache_shiftLocation_queue_withHandler___block_invoke;
  aBlock[3] = &unk_279B65510;
  v15 = locationCopy;
  v25 = v15;
  v16 = handlerCopy;
  v26 = v16;
  v17 = _Block_copy(aBlock);
  if ([(SMCache *)self shiftRequiredForLocation:v15])
  {
    shifter = self->_shifter;
    [v15 hunc];
    v20 = v19;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __43__SMCache_shiftLocation_queue_withHandler___block_invoke_58;
    v21[3] = &unk_279B65538;
    v23 = v16;
    v22 = v15;
    [(GEOLocationShifter *)shifter shiftCoordinate:v17 accuracy:&__block_literal_global_2 withCompletionHandler:v21 mustGoToNetworkCallback:queueCopy errorHandler:v12 callbackQueue:v14, v20];
  }

  else
  {
    (*(v16 + 2))(v16, v15);
  }
}

void __43__SMCache_shiftLocation_queue_withHandler___block_invoke(uint64_t a1, double a2, double a3, double a4)
{
  v8 = [SMLocation alloc];
  v9 = [*(a1 + 32) identifier];
  [*(a1 + 32) altitude];
  v11 = v10;
  [*(a1 + 32) vunc];
  v13 = v12;
  v14 = [*(a1 + 32) date];
  v15 = [(SMLocation *)v8 initWithIdentifier:v9 latitude:v14 longitude:a2 hunc:a3 altitude:a4 vunc:v11 date:v13];

  [(SMLocation *)v15 setReferenceFrame:2];
  (*(*(a1 + 40) + 16))();
}

void __43__SMCache_shiftLocation_queue_withHandler___block_invoke_2()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v0 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *v1 = 0;
      _os_log_impl(&dword_26455D000, v0, OS_LOG_TYPE_INFO, "Had to go to network for shift", v1, 2u);
    }
  }
}

void __43__SMCache_shiftLocation_queue_withHandler___block_invoke_58(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_error_impl(&dword_26455D000, v4, OS_LOG_TYPE_ERROR, "Error shifting coordinate: %@", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();

  v6 = *MEMORY[0x277D85DE8];
}

- (void)shiftLocationsOnQueue:(id)queue handler:(id)handler
{
  v88 = *MEMORY[0x277D85DE8];
  queue = queue;
  handlerCopy = handler;
  v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(SMCache *)self identifier];
    *buf = 138412290;
    v87 = identifier;
    _os_log_impl(&dword_26455D000, v6, OS_LOG_TYPE_DEFAULT, "shifting locations for cache %@", buf, 0xCu);
  }

  group = dispatch_group_create();
  dispatch_group_enter(group);
  unlockLocation = [(SMCache *)self unlockLocation];
  v9 = [(SMCache *)self shiftRequiredForLocation:unlockLocation];

  if (v9)
  {
    dispatch_group_enter(group);
    unlockLocation2 = [(SMCache *)self unlockLocation];
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __41__SMCache_shiftLocationsOnQueue_handler___block_invoke;
    v82[3] = &unk_279B65560;
    v82[4] = self;
    v83 = group;
    [(SMCache *)self shiftLocation:unlockLocation2 queue:queue withHandler:v82];
  }

  lockLocation = [(SMCache *)self lockLocation];
  v12 = [(SMCache *)self shiftRequiredForLocation:lockLocation];

  if (v12)
  {
    dispatch_group_enter(group);
    lockLocation2 = [(SMCache *)self lockLocation];
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = __41__SMCache_shiftLocationsOnQueue_handler___block_invoke_61;
    v80[3] = &unk_279B65560;
    v80[4] = self;
    v81 = group;
    [(SMCache *)self shiftLocation:lockLocation2 queue:queue withHandler:v80];
  }

  mostRecentLocation = [(SMCache *)self mostRecentLocation];
  v15 = [(SMCache *)self shiftRequiredForLocation:mostRecentLocation];

  if (v15)
  {
    dispatch_group_enter(group);
    mostRecentLocation2 = [(SMCache *)self mostRecentLocation];
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __41__SMCache_shiftLocationsOnQueue_handler___block_invoke_62;
    v78[3] = &unk_279B65560;
    v78[4] = self;
    v79 = group;
    [(SMCache *)self shiftLocation:mostRecentLocation2 queue:queue withHandler:v78];
  }

  startingLocation = [(SMCache *)self startingLocation];
  v18 = [(SMCache *)self shiftRequiredForLocation:startingLocation];

  if (v18)
  {
    dispatch_group_enter(group);
    startingLocation2 = [(SMCache *)self startingLocation];
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v76[2] = __41__SMCache_shiftLocationsOnQueue_handler___block_invoke_63;
    v76[3] = &unk_279B65560;
    v76[4] = self;
    v77 = group;
    [(SMCache *)self shiftLocation:startingLocation2 queue:queue withHandler:v76];
  }

  offWristLocation = [(SMCache *)self offWristLocation];
  v21 = [(SMCache *)self shiftRequiredForLocation:offWristLocation];

  if (v21)
  {
    dispatch_group_enter(group);
    offWristLocation2 = [(SMCache *)self offWristLocation];
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __41__SMCache_shiftLocationsOnQueue_handler___block_invoke_64;
    v74[3] = &unk_279B65560;
    v74[4] = self;
    v75 = group;
    [(SMCache *)self shiftLocation:offWristLocation2 queue:queue withHandler:v74];
  }

  parkedCarLocation = [(SMCache *)self parkedCarLocation];
  v24 = [(SMCache *)self shiftRequiredForLocation:parkedCarLocation];

  if (v24)
  {
    dispatch_group_enter(group);
    parkedCarLocation2 = [(SMCache *)self parkedCarLocation];
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __41__SMCache_shiftLocationsOnQueue_handler___block_invoke_65;
    v72[3] = &unk_279B65560;
    v72[4] = self;
    v73 = group;
    [(SMCache *)self shiftLocation:parkedCarLocation2 queue:queue withHandler:v72];
  }

  v26 = objc_alloc(MEMORY[0x277CBEB58]);
  locationsDuringSession = [(SMCache *)self locationsDuringSession];
  v51 = [v26 initWithCapacity:{objc_msgSend(locationsDuringSession, "count")}];

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  locationsDuringSession2 = [(SMCache *)self locationsDuringSession];
  v29 = [locationsDuringSession2 countByEnumeratingWithState:&v68 objects:v85 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v69;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v69 != v31)
        {
          objc_enumerationMutation(locationsDuringSession2);
        }

        v33 = *(*(&v68 + 1) + 8 * i);
        if ([(SMCache *)self shiftRequiredForLocation:v33])
        {
          dispatch_group_enter(group);
          v65[0] = MEMORY[0x277D85DD0];
          v65[1] = 3221225472;
          v65[2] = __41__SMCache_shiftLocationsOnQueue_handler___block_invoke_66;
          v65[3] = &unk_279B65560;
          v66 = v51;
          v67 = group;
          [(SMCache *)self shiftLocation:v33 queue:queue withHandler:v65];
        }

        else
        {
          [v51 addObject:v33];
        }
      }

      v30 = [locationsDuringSession2 countByEnumeratingWithState:&v68 objects:v85 count:16];
    }

    while (v30);
  }

  v34 = objc_alloc(MEMORY[0x277CBEB18]);
  workoutEvents = [(SMCache *)self workoutEvents];
  v36 = [v34 initWithCapacity:{objc_msgSend(workoutEvents, "count")}];

  v63 = 0u;
  v64 = 0u;
  v62 = 0u;
  v61 = 0u;
  workoutEvents2 = [(SMCache *)self workoutEvents];
  v38 = [workoutEvents2 countByEnumeratingWithState:&v61 objects:v84 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v62;
    do
    {
      for (j = 0; j != v39; ++j)
      {
        if (*v62 != v40)
        {
          objc_enumerationMutation(workoutEvents2);
        }

        v42 = *(*(&v61 + 1) + 8 * j);
        location = [v42 location];
        v44 = [(SMCache *)self shiftRequiredForLocation:location];

        if (v44)
        {
          dispatch_group_enter(group);
          location2 = [v42 location];
          v58[0] = MEMORY[0x277D85DD0];
          v58[1] = 3221225472;
          v58[2] = __41__SMCache_shiftLocationsOnQueue_handler___block_invoke_67;
          v58[3] = &unk_279B65588;
          v58[4] = v42;
          v59 = v36;
          v60 = group;
          [(SMCache *)self shiftLocation:location2 queue:queue withHandler:v58];
        }

        else
        {
          [v36 addObject:v42];
        }
      }

      v39 = [workoutEvents2 countByEnumeratingWithState:&v61 objects:v84 count:16];
    }

    while (v39);
  }

  dispatch_group_leave(group);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__SMCache_shiftLocationsOnQueue_handler___block_invoke_68;
  block[3] = &unk_279B655B0;
  block[4] = self;
  v55 = v51;
  v56 = v36;
  v57 = handlerCopy;
  v46 = handlerCopy;
  v47 = v36;
  v48 = v51;
  dispatch_group_notify(group, queue, block);

  v49 = *MEMORY[0x277D85DE8];
}

void __41__SMCache_shiftLocationsOnQueue_handler___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      [v3 latitude];
      v6 = v5;
      [v3 longitude];
      v9 = 134545921;
      v10 = v6;
      v11 = 2053;
      v12 = v7;
      _os_log_impl(&dword_26455D000, v4, OS_LOG_TYPE_INFO, "shifted unlockLocation to %{sensitive}f,%{sensitive}f", &v9, 0x16u);
    }
  }

  [*(a1 + 32) setUnlockLocation:v3];
  dispatch_group_leave(*(a1 + 40));

  v8 = *MEMORY[0x277D85DE8];
}

void __41__SMCache_shiftLocationsOnQueue_handler___block_invoke_61(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      [v3 latitude];
      v6 = v5;
      [v3 longitude];
      v9 = 134545921;
      v10 = v6;
      v11 = 2053;
      v12 = v7;
      _os_log_impl(&dword_26455D000, v4, OS_LOG_TYPE_INFO, "shifted lockLocation to %{sensitive}f,%{sensitive}f", &v9, 0x16u);
    }
  }

  [*(a1 + 32) setLockLocation:v3];
  dispatch_group_leave(*(a1 + 40));

  v8 = *MEMORY[0x277D85DE8];
}

void __41__SMCache_shiftLocationsOnQueue_handler___block_invoke_62(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      [v3 latitude];
      v6 = v5;
      [v3 longitude];
      v9 = 134545921;
      v10 = v6;
      v11 = 2053;
      v12 = v7;
      _os_log_impl(&dword_26455D000, v4, OS_LOG_TYPE_INFO, "shifted mostRecentLocation to %{sensitive}f,%{sensitive}f", &v9, 0x16u);
    }
  }

  [*(a1 + 32) setMostRecentLocation:v3];
  dispatch_group_leave(*(a1 + 40));

  v8 = *MEMORY[0x277D85DE8];
}

void __41__SMCache_shiftLocationsOnQueue_handler___block_invoke_63(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      [v3 latitude];
      v6 = v5;
      [v3 longitude];
      v9 = 134545921;
      v10 = v6;
      v11 = 2053;
      v12 = v7;
      _os_log_impl(&dword_26455D000, v4, OS_LOG_TYPE_INFO, "shifted startingLocation to %{sensitive}f,%{sensitive}f", &v9, 0x16u);
    }
  }

  [*(a1 + 32) setStartingLocation:v3];
  dispatch_group_leave(*(a1 + 40));

  v8 = *MEMORY[0x277D85DE8];
}

void __41__SMCache_shiftLocationsOnQueue_handler___block_invoke_64(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      [v3 latitude];
      v6 = v5;
      [v3 longitude];
      v9 = 134545921;
      v10 = v6;
      v11 = 2053;
      v12 = v7;
      _os_log_impl(&dword_26455D000, v4, OS_LOG_TYPE_INFO, "shifted offWristLocation to %{sensitive}f,%{sensitive}f", &v9, 0x16u);
    }
  }

  [*(a1 + 32) setOffWristLocation:v3];
  dispatch_group_leave(*(a1 + 40));

  v8 = *MEMORY[0x277D85DE8];
}

void __41__SMCache_shiftLocationsOnQueue_handler___block_invoke_65(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      [v3 latitude];
      v6 = v5;
      [v3 longitude];
      v9 = 134545921;
      v10 = v6;
      v11 = 2053;
      v12 = v7;
      _os_log_impl(&dword_26455D000, v4, OS_LOG_TYPE_INFO, "shifted parkedCarLocation to %{sensitive}f,%{sensitive}f", &v9, 0x16u);
    }
  }

  [*(a1 + 32) setParkedCarLocation:v3];
  dispatch_group_leave(*(a1 + 40));

  v8 = *MEMORY[0x277D85DE8];
}

void __41__SMCache_shiftLocationsOnQueue_handler___block_invoke_66(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      [v3 latitude];
      v6 = v5;
      [v3 longitude];
      v9 = 134545921;
      v10 = v6;
      v11 = 2053;
      v12 = v7;
      _os_log_impl(&dword_26455D000, v4, OS_LOG_TYPE_INFO, "shifted locationDuringSession to %{sensitive}f,%{sensitive}f", &v9, 0x16u);
    }
  }

  [*(a1 + 32) addObject:v3];
  dispatch_group_leave(*(a1 + 40));

  v8 = *MEMORY[0x277D85DE8];
}

void __41__SMCache_shiftLocationsOnQueue_handler___block_invoke_67(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      [v3 latitude];
      v6 = v5;
      [v3 longitude];
      *buf = 134545921;
      v21 = v6;
      v22 = 2053;
      v23 = v7;
      _os_log_impl(&dword_26455D000, v4, OS_LOG_TYPE_INFO, "shifted workoutEvent's location to %{sensitive}f,%{sensitive}f", buf, 0x16u);
    }
  }

  v19 = [SMWorkoutEvent alloc];
  v8 = [*(a1 + 32) identifier];
  v9 = [*(a1 + 32) sessionIdentifier];
  v10 = [*(a1 + 32) activityType];
  v11 = [*(a1 + 32) locationType];
  v12 = [*(a1 + 32) swimmingLocationType];
  v13 = [*(a1 + 32) sessionState];
  v14 = [*(a1 + 32) isResumedSessionState];
  v15 = [*(a1 + 32) date];
  LOBYTE(v18) = v14;
  v16 = [(SMWorkoutEvent *)v19 initWithIdentifier:v8 sessionIdentifier:v9 location:v3 activityType:v10 locationType:v11 swimmingLocationType:v12 sessionState:v13 isResumedSessionState:v18 date:v15];

  [*(a1 + 40) addObject:v16];
  dispatch_group_leave(*(a1 + 48));

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __41__SMCache_shiftLocationsOnQueue_handler___block_invoke_68(uint64_t a1)
{
  [*(a1 + 32) setLocationsDuringSession:*(a1 + 40)];
  v2 = [*(a1 + 48) copy];
  [*(a1 + 32) setWorkoutEvents:v2];

  v3 = *(*(a1 + 56) + 16);

  return v3();
}

- (SMCache)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceStatus"];
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v22 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v7 = [coderCopy decodeObjectOfClasses:v22 forKey:@"locationsDuringSession"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"unlockLocation"];
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lockLocation"];
  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mostRecentLocation"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startingLocation"];
  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"offWristLocation"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parkedCar"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"destinationMapItem"];
  v12 = MEMORY[0x277CBEB98];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"workoutEvents"];

  v20 = [(SMCache *)self initWithIdentifier:v23 deviceStatus:v4 locationsDuringSession:v7 unlockLocation:v8 lockLocation:v21 mostRecentLocation:v18 startingLocation:v9 offWristLocation:v17 parkedCarLocation:v10 destinationMapItem:v11 workoutEvents:v15];
  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(SMCache *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  deviceStatus = [(SMCache *)self deviceStatus];
  [coderCopy encodeObject:deviceStatus forKey:@"deviceStatus"];

  locationsDuringSession = [(SMCache *)self locationsDuringSession];
  [coderCopy encodeObject:locationsDuringSession forKey:@"locationsDuringSession"];

  unlockLocation = [(SMCache *)self unlockLocation];
  [coderCopy encodeObject:unlockLocation forKey:@"unlockLocation"];

  lockLocation = [(SMCache *)self lockLocation];
  [coderCopy encodeObject:lockLocation forKey:@"lockLocation"];

  mostRecentLocation = [(SMCache *)self mostRecentLocation];
  [coderCopy encodeObject:mostRecentLocation forKey:@"mostRecentLocation"];

  startingLocation = [(SMCache *)self startingLocation];
  [coderCopy encodeObject:startingLocation forKey:@"startingLocation"];

  offWristLocation = [(SMCache *)self offWristLocation];
  [coderCopy encodeObject:offWristLocation forKey:@"offWristLocation"];

  parkedCarLocation = [(SMCache *)self parkedCarLocation];
  [coderCopy encodeObject:parkedCarLocation forKey:@"parkedCar"];

  destinationMapItem = [(SMCache *)self destinationMapItem];
  [coderCopy encodeObject:destinationMapItem forKey:@"destinationMapItem"];

  workoutEvents = [(SMCache *)self workoutEvents];
  [coderCopy encodeObject:workoutEvents forKey:@"workoutEvents"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v17 = [objc_opt_class() allocWithZone:zone];
  identifier = self->_identifier;
  v6 = [(SMDeviceStatus *)self->_deviceStatus copyWithZone:zone];
  locationsDuringSession = self->_locationsDuringSession;
  unlockLocation = self->_unlockLocation;
  lockLocation = self->_lockLocation;
  mostRecentLocation = self->_mostRecentLocation;
  v16 = *&self->_startingLocation;
  parkedCarLocation = self->_parkedCarLocation;
  destinationMapItem = self->_destinationMapItem;
  v13 = [(NSArray *)self->_workoutEvents copyWithZone:zone];
  v14 = [v17 initWithIdentifier:identifier deviceStatus:v6 locationsDuringSession:locationsDuringSession unlockLocation:unlockLocation lockLocation:lockLocation mostRecentLocation:mostRecentLocation startingLocation:v16 offWristLocation:parkedCarLocation parkedCarLocation:destinationMapItem destinationMapItem:v13 workoutEvents:?];

  return v14;
}

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  identifier = [(SMCache *)self identifier];
  deviceStatus = [(SMCache *)self deviceStatus];
  locationsDuringSession = [(SMCache *)self locationsDuringSession];
  v4 = [locationsDuringSession count];
  unlockLocation = [(SMCache *)self unlockLocation];
  lockLocation = [(SMCache *)self lockLocation];
  mostRecentLocation = [(SMCache *)self mostRecentLocation];
  startingLocation = [(SMCache *)self startingLocation];
  offWristLocation = [(SMCache *)self offWristLocation];
  parkedCarLocation = [(SMCache *)self parkedCarLocation];
  destinationMapItem = [(SMCache *)self destinationMapItem];
  workoutEvents = [(SMCache *)self workoutEvents];
  v16 = [v15 stringWithFormat:@"identifier, %@, deviceStatus, %@, locationsDuringSession, %lu, unlockLocation %@, lockLocation %@, mostRecentLocation %@, startingLocation %@, offWristLocation %@, parkedCarLocation, %@, destinationMapItem, %@, workoutEvents, %lu", identifier, deviceStatus, v4, unlockLocation, lockLocation, mostRecentLocation, startingLocation, offWristLocation, parkedCarLocation, destinationMapItem, objc_msgSend(workoutEvents, "count")];

  return v16;
}

@end