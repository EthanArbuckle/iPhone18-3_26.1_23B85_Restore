@interface SMCache
+ (void)logNoCacheDataForSessionID:(id)a3 role:(id)a4 deviceType:(id)a5 transaction:(id)a6;
- (BOOL)shiftRequiredForLocation:(id)a3;
- (SMCache)init;
- (SMCache)initWithCoder:(id)a3;
- (SMCache)initWithDictionary:(id)a3;
- (SMCache)initWithIdentifier:(id)a3 deviceStatus:(id)a4 locationsDuringSession:(id)a5 unlockLocation:(id)a6 lockLocation:(id)a7 mostRecentLocation:(id)a8 startingLocation:(id)a9 offWristLocation:(id)a10 parkedCarLocation:(id)a11 destinationMapItem:(id)a12 workoutEvents:(id)a13;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)outputToDictionary;
- (unint64_t)identifierHash;
- (void)encodeWithCoder:(id)a3;
- (void)logCacheForSessionID:(id)a3 role:(id)a4 deviceType:(id)a5 transaction:(id)a6 hashString:(id)a7;
- (void)shiftLocation:(id)a3 queue:(id)a4 withHandler:(id)a5;
- (void)shiftLocationsOnQueue:(id)a3 handler:(id)a4;
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

- (SMCache)initWithIdentifier:(id)a3 deviceStatus:(id)a4 locationsDuringSession:(id)a5 unlockLocation:(id)a6 lockLocation:(id)a7 mostRecentLocation:(id)a8 startingLocation:(id)a9 offWristLocation:(id)a10 parkedCarLocation:(id)a11 destinationMapItem:(id)a12 workoutEvents:(id)a13
{
  v18 = a3;
  v39 = a4;
  v28 = a5;
  v38 = a5;
  v37 = a6;
  v36 = a7;
  v35 = a8;
  v34 = a9;
  v33 = a10;
  v32 = a11;
  v31 = a12;
  v30 = a13;
  if (v18)
  {
    v40.receiver = self;
    v40.super_class = SMCache;
    v19 = [(SMCache *)&v40 init];
    v20 = v19;
    if (v19)
    {
      objc_storeStrong(&v19->_identifier, a3);
      objc_storeStrong(&v20->_deviceStatus, a4);
      objc_storeStrong(&v20->_locationsDuringSession, v28);
      objc_storeStrong(&v20->_unlockLocation, a6);
      objc_storeStrong(&v20->_lockLocation, a7);
      objc_storeStrong(&v20->_mostRecentLocation, a8);
      objc_storeStrong(&v20->_startingLocation, a9);
      objc_storeStrong(&v20->_offWristLocation, a10);
      objc_storeStrong(&v20->_parkedCarLocation, a11);
      objc_storeStrong(&v20->_destinationMapItem, a12);
      objc_storeStrong(&v20->_workoutEvents, a13);
      v21 = objc_alloc_init(MEMORY[0x277D0EB88]);
      shifter = v20->_shifter;
      v20->_shifter = v21;
    }

    v23 = v20;
    v24 = v23;
  }

  else
  {
    v23 = self;
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

- (SMCache)initWithDictionary:(id)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAD78] UUID];
  v5 = [v3 valueForKey:@"identifier"];
  v48 = [v4 initWithUUIDString:v5];

  v6 = objc_opt_new();
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v7 = [v3 valueForKey:@"locationsDuringSession"];
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
  v14 = [v3 valueForKey:@"unlockLocation"];
  v45 = [(SMLocation *)v13 initWithDictionary:v14];

  v15 = [SMLocation alloc];
  v16 = [v3 valueForKey:@"lockLocation"];
  v44 = [(SMLocation *)v15 initWithDictionary:v16];

  v17 = [SMLocation alloc];
  v18 = [v3 valueForKey:@"mostRecentLocation"];
  v43 = [(SMLocation *)v17 initWithDictionary:v18];

  v19 = [SMDeviceStatus alloc];
  v20 = [v3 valueForKey:@"deviceStatus"];
  v42 = [(SMDeviceStatus *)v19 initWithDictionary:v20];

  v21 = [SMLocation alloc];
  v22 = [v3 valueForKey:@"startingLocation"];
  v41 = [(SMLocation *)v21 initWithDictionary:v22];

  v23 = [SMLocation alloc];
  v24 = [v3 valueForKey:@"offWristLocation"];
  v40 = [(SMLocation *)v23 initWithDictionary:v24];

  v25 = [SMLocation alloc];
  v26 = [v3 valueForKey:@"parkedCar"];
  v39 = [(SMLocation *)v25 initWithDictionary:v26];

  v27 = [v3 valueForKey:@"destinationMapItem"];

  if (v27)
  {
    v28 = objc_alloc(MEMORY[0x277CBEA90]);
    v29 = [v3 valueForKey:@"destinationMapItem"];
    v27 = [v28 initWithBase64EncodedString:v29 options:0];
  }

  v30 = objc_opt_new();
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v31 = [v3 valueForKey:@"workoutEvents"];
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
  v4 = [(SMCache *)self identifier];
  v5 = [v4 UUIDString];
  [v3 setObject:v5 forKey:@"identifier"];

  v6 = objc_opt_new();
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v7 = [(SMCache *)self locationsDuringSession];
  v8 = [v7 countByEnumeratingWithState:&v50 objects:v55 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v50 + 1) + 8 * i) outputToDictionary];
        [v6 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v9);
  }

  [v3 setObject:v6 forKey:@"locationsDuringSession"];
  v13 = [(SMCache *)self unlockLocation];

  if (v13)
  {
    v14 = [(SMCache *)self unlockLocation];
    v15 = [v14 outputToDictionary];
    [v3 setObject:v15 forKey:@"unlockLocation"];
  }

  v16 = [(SMCache *)self lockLocation];

  if (v16)
  {
    v17 = [(SMCache *)self lockLocation];
    v18 = [v17 outputToDictionary];
    [v3 setObject:v18 forKey:@"lockLocation"];
  }

  v19 = [(SMCache *)self mostRecentLocation];

  if (v19)
  {
    v20 = [(SMCache *)self mostRecentLocation];
    v21 = [v20 outputToDictionary];
    [v3 setObject:v21 forKey:@"mostRecentLocation"];
  }

  v22 = [(SMCache *)self startingLocation];

  if (v22)
  {
    v23 = [(SMCache *)self startingLocation];
    v24 = [v23 outputToDictionary];
    [v3 setObject:v24 forKey:@"startingLocation"];
  }

  v25 = [(SMCache *)self offWristLocation];

  if (v25)
  {
    v26 = [(SMCache *)self offWristLocation];
    v27 = [v26 outputToDictionary];
    [v3 setObject:v27 forKey:@"offWristLocation"];
  }

  v28 = [(SMCache *)self parkedCarLocation];

  if (v28)
  {
    v29 = [(SMCache *)self parkedCarLocation];
    v30 = [v29 outputToDictionary];
    [v3 setObject:v30 forKey:@"parkedCar"];
  }

  v31 = [(SMCache *)self destinationMapItem];

  if (v31)
  {
    v32 = [(SMCache *)self destinationMapItem];
    v33 = [v32 base64EncodedStringWithOptions:0];
    [v3 setObject:v33 forKey:@"destinationMapItem"];
  }

  v34 = [(SMCache *)self deviceStatus];

  if (v34)
  {
    v35 = [(SMCache *)self deviceStatus];
    v36 = [v35 outputToDictionary];
    [v3 setObject:v36 forKey:@"deviceStatus"];
  }

  v37 = objc_opt_new();
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v38 = [(SMCache *)self workoutEvents];
  v39 = [v38 countByEnumeratingWithState:&v46 objects:v54 count:16];
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
          objc_enumerationMutation(v38);
        }

        v43 = [*(*(&v46 + 1) + 8 * j) outputToDictionary];
        [v37 addObject:v43];
      }

      v40 = [v38 countByEnumeratingWithState:&v46 objects:v54 count:16];
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
  v3 = [(SMCache *)self identifier];
  v4 = [v3 hash];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = [(SMCache *)self locationsDuringSession];
  v6 = [v5 countByEnumeratingWithState:&v35 objects:v40 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v35 + 1) + 8 * v9) identifier];
        v4 ^= [v10 hash];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v7);
  }

  v11 = [(SMCache *)self unlockLocation];

  if (v11)
  {
    v12 = [(SMCache *)self unlockLocation];
    v13 = [v12 identifier];
    v4 ^= [v13 hash];
  }

  v14 = [(SMCache *)self lockLocation];

  if (v14)
  {
    v15 = [(SMCache *)self lockLocation];
    v16 = [v15 identifier];
    v4 ^= [v16 hash];
  }

  v17 = [(SMCache *)self mostRecentLocation];

  if (v17)
  {
    v18 = [(SMCache *)self mostRecentLocation];
    v19 = [v18 identifier];
    v4 ^= [v19 hash];
  }

  v20 = [(SMCache *)self deviceStatus];
  v21 = [v20 identifier];
  v22 = [v21 hash] ^ v4;

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v23 = [(SMCache *)self workoutEvents];
  v24 = [v23 countByEnumeratingWithState:&v31 objects:v39 count:16];
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
          objc_enumerationMutation(v23);
        }

        v28 = [*(*(&v31 + 1) + 8 * v27) location];
        v22 ^= [v28 hash];

        ++v27;
      }

      while (v25 != v27);
      v25 = [v23 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v25);
  }

  v29 = *MEMORY[0x277D85DE8];
  return v22;
}

- (void)logCacheForSessionID:(id)a3 role:(id)a4 deviceType:(id)a5 transaction:(id)a6 hashString:(id)a7
{
  v87 = *MEMORY[0x277D85DE8];
  v56 = a3;
  v55 = a4;
  v54 = a5;
  v53 = a6;
  v12 = a7;
  v52 = self;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [(SMCache *)self identifier];
      v15 = [(SMCache *)self locationsDuringSession];
      v16 = [v15 count];
      v17 = [(SMCache *)self destinationMapItem];
      v18 = [(SMCache *)self deviceStatus];
      v19 = [(SMCache *)self workoutEvents];
      *buf = 138414594;
      v68 = v55;
      v69 = 2112;
      v70 = v56;
      v71 = 2112;
      v72 = v53;
      v73 = 2112;
      v74 = v54;
      v75 = 2112;
      v76 = v12;
      v77 = 2112;
      v78 = v14;
      v79 = 2048;
      v80 = v16;
      v81 = 2112;
      v82 = v17;
      v83 = 2112;
      v84 = v18;
      v85 = 2048;
      v86 = [v19 count];
      _os_log_impl(&dword_26455D000, v13, OS_LOG_TYPE_INFO, "#SafetyCache,%@,sessionID:%@,logCache,transactionID:%@,%@,hash,%@,identifier,%@,locationsDuringSessionCount,%lu,destinationMapItem,%@,deviceStatus,%@,workoutEventsCount,%lu", buf, 0x66u);

      self = v52;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = [(SMCache *)self mostRecentLocation];
      *buf = 138413315;
      v68 = v55;
      v69 = 2112;
      v70 = v56;
      v71 = 2112;
      v72 = v53;
      v73 = 2112;
      v74 = v54;
      v75 = 2117;
      v76 = v21;
      _os_log_impl(&dword_26455D000, v20, OS_LOG_TYPE_INFO, "#SafetyCache,%@,sessionID:%@,logCache,transactionID:%@,%@,mostRecentLocation,%{sensitive}@", buf, 0x34u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = [(SMCache *)self startingLocation];
      *buf = 138413315;
      v68 = v55;
      v69 = 2112;
      v70 = v56;
      v71 = 2112;
      v72 = v53;
      v73 = 2112;
      v74 = v54;
      v75 = 2117;
      v76 = v23;
      _os_log_impl(&dword_26455D000, v22, OS_LOG_TYPE_INFO, "#SafetyCache,%@,sessionID:%@,logCache,transactionID:%@,%@,startingLocation,%{sensitive}@", buf, 0x34u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = [(SMCache *)self unlockLocation];
      *buf = 138413315;
      v68 = v55;
      v69 = 2112;
      v70 = v56;
      v71 = 2112;
      v72 = v53;
      v73 = 2112;
      v74 = v54;
      v75 = 2117;
      v76 = v25;
      _os_log_impl(&dword_26455D000, v24, OS_LOG_TYPE_INFO, "#SafetyCache,%@,sessionID:%@,logCache,transactionID:%@,%@,unlockLocation,%{sensitive}@", buf, 0x34u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = [(SMCache *)self lockLocation];
      *buf = 138413315;
      v68 = v55;
      v69 = 2112;
      v70 = v56;
      v71 = 2112;
      v72 = v53;
      v73 = 2112;
      v74 = v54;
      v75 = 2117;
      v76 = v27;
      _os_log_impl(&dword_26455D000, v26, OS_LOG_TYPE_INFO, "#SafetyCache,%@,sessionID:%@,logCache,transactionID:%@,%@,lockLocation,%{sensitive}@", buf, 0x34u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = [(SMCache *)self parkedCarLocation];
      *buf = 138413315;
      v68 = v55;
      v69 = 2112;
      v70 = v56;
      v71 = 2112;
      v72 = v53;
      v73 = 2112;
      v74 = v54;
      v75 = 2117;
      v76 = v29;
      _os_log_impl(&dword_26455D000, v28, OS_LOG_TYPE_INFO, "#SafetyCache,%@,sessionID:%@,logCache,transactionID:%@,%@,parkedCarLocation,%{sensitive}@", buf, 0x34u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = [(SMCache *)self offWristLocation];
      *buf = 138413315;
      v68 = v55;
      v69 = 2112;
      v70 = v56;
      v71 = 2112;
      v72 = v53;
      v73 = 2112;
      v74 = v54;
      v75 = 2117;
      v76 = v31;
      _os_log_impl(&dword_26455D000, v30, OS_LOG_TYPE_INFO, "#SafetyCache,%@,sessionID:%@,logCache,transactionID:%@,%@,offWristLocation,%{sensitive}@", buf, 0x34u);
    }
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v32 = [(SMCache *)self locationsDuringSession];
  v33 = [v32 countByEnumeratingWithState:&v61 objects:v66 count:16];
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
          objc_enumerationMutation(v32);
        }

        v39 = *(*(&v61 + 1) + 8 * i);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v40 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            *buf = 138413571;
            v68 = v55;
            v69 = 2112;
            v70 = v56;
            v71 = 2112;
            v72 = v53;
            v73 = 2112;
            v74 = v54;
            v75 = 2048;
            v76 = v35;
            v77 = 2117;
            v78 = v39;
            _os_log_impl(&dword_26455D000, v40, OS_LOG_TYPE_INFO, "#SafetyCache,%@,sessionID:%@,logCache,transactionID:%@,%@,locationsDuringSession,location,%lu,%{sensitive}@", buf, 0x3Eu);
          }
        }

        ++v35;
      }

      v34 = [v32 countByEnumeratingWithState:&v61 objects:v66 count:16];
    }

    while (v34);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v41 = [(SMCache *)v52 workoutEvents];
  v42 = [v41 countByEnumeratingWithState:&v57 objects:v65 count:16];
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
          objc_enumerationMutation(v41);
        }

        v48 = *(*(&v57 + 1) + 8 * j);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          v49 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            *buf = 138413570;
            v68 = v55;
            v69 = 2112;
            v70 = v56;
            v71 = 2112;
            v72 = v53;
            v73 = 2112;
            v74 = v54;
            v75 = 2048;
            v76 = v44;
            v77 = 2112;
            v78 = v48;
            _os_log_impl(&dword_26455D000, v49, OS_LOG_TYPE_INFO, "#SafetyCache,%@,sessionID:%@,logCache,transactionID:%@,%@,workoutEvents,workoutEvent,%lu,%@", buf, 0x3Eu);
          }
        }

        ++v44;
      }

      v43 = [v41 countByEnumeratingWithState:&v57 objects:v65 count:16];
    }

    while (v43);
  }

  v50 = *MEMORY[0x277D85DE8];
}

+ (void)logNoCacheDataForSessionID:(id)a3 role:(id)a4 deviceType:(id)a5 transaction:(id)a6
{
  v23 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v15 = 138413058;
      v16 = v10;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v12;
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&dword_26455D000, v13, OS_LOG_TYPE_INFO, "#SafetyCache,%@,sessionID:%@,logCache,transactionID:%@,%@,no cache data", &v15, 0x2Au);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)shiftRequiredForLocation:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 referenceFrame] != 2)
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

- (void)shiftLocation:(id)a3 queue:(id)a4 withHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v8 latitude];
  v12 = v11;
  [v8 longitude];
  v14 = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__SMCache_shiftLocation_queue_withHandler___block_invoke;
  aBlock[3] = &unk_279B65510;
  v15 = v8;
  v25 = v15;
  v16 = v10;
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
    [(GEOLocationShifter *)shifter shiftCoordinate:v17 accuracy:&__block_literal_global_2 withCompletionHandler:v21 mustGoToNetworkCallback:v9 errorHandler:v12 callbackQueue:v14, v20];
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

- (void)shiftLocationsOnQueue:(id)a3 handler:(id)a4
{
  v88 = *MEMORY[0x277D85DE8];
  queue = a3;
  v50 = a4;
  v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(SMCache *)self identifier];
    *buf = 138412290;
    v87 = v7;
    _os_log_impl(&dword_26455D000, v6, OS_LOG_TYPE_DEFAULT, "shifting locations for cache %@", buf, 0xCu);
  }

  group = dispatch_group_create();
  dispatch_group_enter(group);
  v8 = [(SMCache *)self unlockLocation];
  v9 = [(SMCache *)self shiftRequiredForLocation:v8];

  if (v9)
  {
    dispatch_group_enter(group);
    v10 = [(SMCache *)self unlockLocation];
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __41__SMCache_shiftLocationsOnQueue_handler___block_invoke;
    v82[3] = &unk_279B65560;
    v82[4] = self;
    v83 = group;
    [(SMCache *)self shiftLocation:v10 queue:queue withHandler:v82];
  }

  v11 = [(SMCache *)self lockLocation];
  v12 = [(SMCache *)self shiftRequiredForLocation:v11];

  if (v12)
  {
    dispatch_group_enter(group);
    v13 = [(SMCache *)self lockLocation];
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = __41__SMCache_shiftLocationsOnQueue_handler___block_invoke_61;
    v80[3] = &unk_279B65560;
    v80[4] = self;
    v81 = group;
    [(SMCache *)self shiftLocation:v13 queue:queue withHandler:v80];
  }

  v14 = [(SMCache *)self mostRecentLocation];
  v15 = [(SMCache *)self shiftRequiredForLocation:v14];

  if (v15)
  {
    dispatch_group_enter(group);
    v16 = [(SMCache *)self mostRecentLocation];
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __41__SMCache_shiftLocationsOnQueue_handler___block_invoke_62;
    v78[3] = &unk_279B65560;
    v78[4] = self;
    v79 = group;
    [(SMCache *)self shiftLocation:v16 queue:queue withHandler:v78];
  }

  v17 = [(SMCache *)self startingLocation];
  v18 = [(SMCache *)self shiftRequiredForLocation:v17];

  if (v18)
  {
    dispatch_group_enter(group);
    v19 = [(SMCache *)self startingLocation];
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v76[2] = __41__SMCache_shiftLocationsOnQueue_handler___block_invoke_63;
    v76[3] = &unk_279B65560;
    v76[4] = self;
    v77 = group;
    [(SMCache *)self shiftLocation:v19 queue:queue withHandler:v76];
  }

  v20 = [(SMCache *)self offWristLocation];
  v21 = [(SMCache *)self shiftRequiredForLocation:v20];

  if (v21)
  {
    dispatch_group_enter(group);
    v22 = [(SMCache *)self offWristLocation];
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __41__SMCache_shiftLocationsOnQueue_handler___block_invoke_64;
    v74[3] = &unk_279B65560;
    v74[4] = self;
    v75 = group;
    [(SMCache *)self shiftLocation:v22 queue:queue withHandler:v74];
  }

  v23 = [(SMCache *)self parkedCarLocation];
  v24 = [(SMCache *)self shiftRequiredForLocation:v23];

  if (v24)
  {
    dispatch_group_enter(group);
    v25 = [(SMCache *)self parkedCarLocation];
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __41__SMCache_shiftLocationsOnQueue_handler___block_invoke_65;
    v72[3] = &unk_279B65560;
    v72[4] = self;
    v73 = group;
    [(SMCache *)self shiftLocation:v25 queue:queue withHandler:v72];
  }

  v26 = objc_alloc(MEMORY[0x277CBEB58]);
  v27 = [(SMCache *)self locationsDuringSession];
  v51 = [v26 initWithCapacity:{objc_msgSend(v27, "count")}];

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v28 = [(SMCache *)self locationsDuringSession];
  v29 = [v28 countByEnumeratingWithState:&v68 objects:v85 count:16];
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
          objc_enumerationMutation(v28);
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

      v30 = [v28 countByEnumeratingWithState:&v68 objects:v85 count:16];
    }

    while (v30);
  }

  v34 = objc_alloc(MEMORY[0x277CBEB18]);
  v35 = [(SMCache *)self workoutEvents];
  v36 = [v34 initWithCapacity:{objc_msgSend(v35, "count")}];

  v63 = 0u;
  v64 = 0u;
  v62 = 0u;
  v61 = 0u;
  v37 = [(SMCache *)self workoutEvents];
  v38 = [v37 countByEnumeratingWithState:&v61 objects:v84 count:16];
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
          objc_enumerationMutation(v37);
        }

        v42 = *(*(&v61 + 1) + 8 * j);
        v43 = [v42 location];
        v44 = [(SMCache *)self shiftRequiredForLocation:v43];

        if (v44)
        {
          dispatch_group_enter(group);
          v45 = [v42 location];
          v58[0] = MEMORY[0x277D85DD0];
          v58[1] = 3221225472;
          v58[2] = __41__SMCache_shiftLocationsOnQueue_handler___block_invoke_67;
          v58[3] = &unk_279B65588;
          v58[4] = v42;
          v59 = v36;
          v60 = group;
          [(SMCache *)self shiftLocation:v45 queue:queue withHandler:v58];
        }

        else
        {
          [v36 addObject:v42];
        }
      }

      v39 = [v37 countByEnumeratingWithState:&v61 objects:v84 count:16];
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
  v57 = v50;
  v46 = v50;
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

- (SMCache)initWithCoder:(id)a3
{
  v3 = a3;
  v23 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"deviceStatus"];
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v22 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v7 = [v3 decodeObjectOfClasses:v22 forKey:@"locationsDuringSession"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"unlockLocation"];
  v21 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"lockLocation"];
  v18 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"mostRecentLocation"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"startingLocation"];
  v17 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"offWristLocation"];
  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"parkedCar"];
  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"destinationMapItem"];
  v12 = MEMORY[0x277CBEB98];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  v15 = [v3 decodeObjectOfClasses:v14 forKey:@"workoutEvents"];

  v20 = [(SMCache *)self initWithIdentifier:v23 deviceStatus:v4 locationsDuringSession:v7 unlockLocation:v8 lockLocation:v21 mostRecentLocation:v18 startingLocation:v9 offWristLocation:v17 parkedCarLocation:v10 destinationMapItem:v11 workoutEvents:v15];
  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SMCache *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(SMCache *)self deviceStatus];
  [v4 encodeObject:v6 forKey:@"deviceStatus"];

  v7 = [(SMCache *)self locationsDuringSession];
  [v4 encodeObject:v7 forKey:@"locationsDuringSession"];

  v8 = [(SMCache *)self unlockLocation];
  [v4 encodeObject:v8 forKey:@"unlockLocation"];

  v9 = [(SMCache *)self lockLocation];
  [v4 encodeObject:v9 forKey:@"lockLocation"];

  v10 = [(SMCache *)self mostRecentLocation];
  [v4 encodeObject:v10 forKey:@"mostRecentLocation"];

  v11 = [(SMCache *)self startingLocation];
  [v4 encodeObject:v11 forKey:@"startingLocation"];

  v12 = [(SMCache *)self offWristLocation];
  [v4 encodeObject:v12 forKey:@"offWristLocation"];

  v13 = [(SMCache *)self parkedCarLocation];
  [v4 encodeObject:v13 forKey:@"parkedCar"];

  v14 = [(SMCache *)self destinationMapItem];
  [v4 encodeObject:v14 forKey:@"destinationMapItem"];

  v15 = [(SMCache *)self workoutEvents];
  [v4 encodeObject:v15 forKey:@"workoutEvents"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v17 = [objc_opt_class() allocWithZone:a3];
  identifier = self->_identifier;
  v6 = [(SMDeviceStatus *)self->_deviceStatus copyWithZone:a3];
  locationsDuringSession = self->_locationsDuringSession;
  unlockLocation = self->_unlockLocation;
  lockLocation = self->_lockLocation;
  mostRecentLocation = self->_mostRecentLocation;
  v16 = *&self->_startingLocation;
  parkedCarLocation = self->_parkedCarLocation;
  destinationMapItem = self->_destinationMapItem;
  v13 = [(NSArray *)self->_workoutEvents copyWithZone:a3];
  v14 = [v17 initWithIdentifier:identifier deviceStatus:v6 locationsDuringSession:locationsDuringSession unlockLocation:unlockLocation lockLocation:lockLocation mostRecentLocation:mostRecentLocation startingLocation:v16 offWristLocation:parkedCarLocation parkedCarLocation:destinationMapItem destinationMapItem:v13 workoutEvents:?];

  return v14;
}

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  v14 = [(SMCache *)self identifier];
  v3 = [(SMCache *)self deviceStatus];
  v17 = [(SMCache *)self locationsDuringSession];
  v4 = [v17 count];
  v5 = [(SMCache *)self unlockLocation];
  v6 = [(SMCache *)self lockLocation];
  v7 = [(SMCache *)self mostRecentLocation];
  v8 = [(SMCache *)self startingLocation];
  v9 = [(SMCache *)self offWristLocation];
  v10 = [(SMCache *)self parkedCarLocation];
  v11 = [(SMCache *)self destinationMapItem];
  v12 = [(SMCache *)self workoutEvents];
  v16 = [v15 stringWithFormat:@"identifier, %@, deviceStatus, %@, locationsDuringSession, %lu, unlockLocation %@, lockLocation %@, mostRecentLocation %@, startingLocation %@, offWristLocation %@, parkedCarLocation, %@, destinationMapItem, %@, workoutEvents, %lu", v14, v3, v4, v5, v6, v7, v8, v9, v10, v11, objc_msgSend(v12, "count")];

  return v16;
}

@end