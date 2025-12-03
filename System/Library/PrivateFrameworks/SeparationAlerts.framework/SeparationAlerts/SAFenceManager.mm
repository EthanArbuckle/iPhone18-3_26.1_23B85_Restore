@interface SAFenceManager
- (BOOL)isSafeLocation:(id)location;
- (BOOL)startMonitorSafeLocation:(id)location forDevice:(id)device;
- (BOOL)startMonitorUnsafeLocationExit:(id)exit forDevice:(id)device;
- (BOOL)stopMonitorSafeLocation:(id)location forDevice:(id)device;
- (BOOL)stopMonitorUnsafeLocationExit:(id)exit forDevice:(id)device;
- (SAFenceManager)init;
- (id)getRegionForSafeLocation:(id)location;
- (unint64_t)getSafeLocationCount;
- (unint64_t)getUnsafeLocationCount;
- (void)addClient:(id)client;
- (void)handleFenceEvent:(unint64_t)event forRegion:(id)region;
- (void)ingestTAEvent:(id)event;
- (void)notifyState:(unint64_t)state forSafeLocationRegion:(id)region;
- (void)notifyState:(unint64_t)state forUnsafeLocationRegion:(id)region;
- (void)removeClient:(id)client;
- (void)removeLocationsForDeviceUuid:(id)uuid;
@end

@implementation SAFenceManager

- (SAFenceManager)init
{
  v16.receiver = self;
  v16.super_class = SAFenceManager;
  v2 = [(SAFenceManager *)&v16 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    clients = v2->_clients;
    v2->_clients = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    deviceUUIDsByUnsafeRegionIdentifier = v2->_deviceUUIDsByUnsafeRegionIdentifier;
    v2->_deviceUUIDsByUnsafeRegionIdentifier = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    deviceUUIDsBySafeLocation = v2->_deviceUUIDsBySafeLocation;
    v2->_deviceUUIDsBySafeLocation = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    safeLocationsByRegionIdentifier = v2->_safeLocationsByRegionIdentifier;
    v2->_safeLocationsByRegionIdentifier = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    statesByRegionIdentifier = v2->_statesByRegionIdentifier;
    v2->_statesByRegionIdentifier = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    regionsByRegionIdentifier = v2->_regionsByRegionIdentifier;
    v2->_regionsByRegionIdentifier = v13;
  }

  return v2;
}

- (unint64_t)getSafeLocationCount
{
  deviceUUIDsBySafeLocation = [(SAFenceManager *)self deviceUUIDsBySafeLocation];
  v3 = [deviceUUIDsBySafeLocation count];

  return v3;
}

- (unint64_t)getUnsafeLocationCount
{
  deviceUUIDsByUnsafeRegionIdentifier = [(SAFenceManager *)self deviceUUIDsByUnsafeRegionIdentifier];
  v3 = [deviceUUIDsByUnsafeRegionIdentifier count];

  return v3;
}

- (id)getRegionForSafeLocation:(id)location
{
  v28 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  safeLocationsByRegionIdentifier = [(SAFenceManager *)self safeLocationsByRegionIdentifier];
  v6 = [safeLocationsByRegionIdentifier countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(safeLocationsByRegionIdentifier);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        safeLocationsByRegionIdentifier2 = [(SAFenceManager *)self safeLocationsByRegionIdentifier];
        v12 = [safeLocationsByRegionIdentifier2 objectForKey:v10];
        v13 = [v12 isEqual:locationCopy];

        if (v13)
        {
          regionsByRegionIdentifier = [(SAFenceManager *)self regionsByRegionIdentifier];
          v15 = [regionsByRegionIdentifier objectForKey:v10];

          goto LABEL_13;
        }
      }

      v7 = [safeLocationsByRegionIdentifier countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289026;
    v24 = 0;
    v25 = 2082;
    v26 = "";
    _os_log_impl(&dword_2656EA000, v14, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#sa #fencemgr, Could not find region for safe location}", buf, 0x12u);
  }

  v15 = 0;
LABEL_13:

  v17 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)startMonitorSafeLocation:(id)location forDevice:(id)device
{
  v78 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  deviceCopy = device;
  deviceUUIDsBySafeLocation = [(SAFenceManager *)self deviceUUIDsBySafeLocation];
  v9 = [deviceUUIDsBySafeLocation objectForKey:locationCopy];

  if (!v9)
  {
    v61 = 0;
    identifier = [locationCopy identifier];
    uUIDString = [identifier UUIDString];

    [locationCopy latitude];
    v16 = v15;
    [locationCopy longitude];
    v18 = v17;
    [locationCopy radius];
    if (v19 >= 100.0)
    {
      v20 = v19;
    }

    else
    {
      v20 = 100.0;
    }

    v60 = uUIDString;
    v21 = [objc_alloc(MEMORY[0x277CBFBC8]) initForLowPowerWithCenter:uUIDString radius:v16 identifier:{v18, v20}];
    [v21 setGeoReferenceFrame:{objc_msgSend(locationCopy, "referenceFrame")}];
    v22 = v21;
    v64 = deviceCopy;
    v23 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:{deviceCopy, 0}];
    regionsByRegionIdentifier = [(SAFenceManager *)self regionsByRegionIdentifier];
    identifier2 = [v22 identifier];
    [regionsByRegionIdentifier setObject:v22 forKey:identifier2];

    deviceUUIDsBySafeLocation2 = [(SAFenceManager *)self deviceUUIDsBySafeLocation];
    [deviceUUIDsBySafeLocation2 setObject:v23 forKey:locationCopy];

    safeLocationsByRegionIdentifier = [(SAFenceManager *)self safeLocationsByRegionIdentifier];
    identifier3 = [v22 identifier];
    v29 = locationCopy;
    [safeLocationsByRegionIdentifier setObject:locationCopy forKey:identifier3];

    statesByRegionIdentifier = [(SAFenceManager *)self statesByRegionIdentifier];
    identifier4 = [v22 identifier];
    [statesByRegionIdentifier setObject:&unk_287710090 forKey:identifier4];

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    clients = [(SAFenceManager *)self clients];
    v33 = [clients countByEnumeratingWithState:&v65 objects:v73 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v66;
      do
      {
        v36 = 0;
        do
        {
          if (*v66 != v35)
          {
            objc_enumerationMutation(clients);
          }

          v37 = *(*(&v65 + 1) + 8 * v36);
          if (objc_opt_respondsToSelector())
          {
            [v37 addGeofence:v22];
          }

          ++v36;
        }

        while (v34 != v36);
        v34 = [clients countByEnumeratingWithState:&v65 objects:v73 count:16];
      }

      while (v34);
    }

    locationCopy = v29;
    goto LABEL_33;
  }

  deviceUUIDsBySafeLocation3 = [(SAFenceManager *)self deviceUUIDsBySafeLocation];
  v11 = [deviceUUIDsBySafeLocation3 objectForKey:locationCopy];

  if (![v11 containsObject:deviceCopy])
  {
    v60 = v11;
    v61 = v9;
    deviceUUIDsBySafeLocation4 = [(SAFenceManager *)self deviceUUIDsBySafeLocation];
    v39 = [deviceUUIDsBySafeLocation4 objectForKey:locationCopy];
    v64 = deviceCopy;
    [v39 addObject:deviceCopy];

    v40 = [(SAFenceManager *)self getRegionForSafeLocation:locationCopy];
    statesByRegionIdentifier2 = [(SAFenceManager *)self statesByRegionIdentifier];
    identifier5 = [v40 identifier];
    v43 = [statesByRegionIdentifier2 objectForKey:identifier5];

    if (v43)
    {
      statesByRegionIdentifier3 = [(SAFenceManager *)self statesByRegionIdentifier];
      identifier6 = [v40 identifier];
      v46 = [statesByRegionIdentifier3 objectForKey:identifier6];
      v47 = [v46 isEqual:&unk_287710090];

      if ((v47 & 1) == 0)
      {
        selfCopy = self;
        v63 = locationCopy;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        clients2 = [(SAFenceManager *)self clients];
        v49 = [clients2 countByEnumeratingWithState:&v69 objects:v74 count:16];
        if (v49)
        {
          v50 = v49;
          v51 = *v70;
          do
          {
            v52 = 0;
            do
            {
              if (*v70 != v51)
              {
                objc_enumerationMutation(clients2);
              }

              v53 = *(*(&v69 + 1) + 8 * v52);
              if (objc_opt_respondsToSelector())
              {
                statesByRegionIdentifier4 = [(SAFenceManager *)selfCopy statesByRegionIdentifier];
                identifier7 = [v40 identifier];
                v56 = [statesByRegionIdentifier4 objectForKey:identifier7];
                [v53 didDetermineState:objc_msgSend(v56 forSafeLocation:"unsignedIntegerValue") forDevice:{v63, v64}];
              }

              ++v52;
            }

            while (v50 != v52);
            v50 = [clients2 countByEnumeratingWithState:&v69 objects:v74 count:16];
          }

          while (v50);
        }

        locationCopy = v63;
      }
    }

    else
    {
      v57 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
      {
        buf = 68289026;
        v76 = 2082;
        v77 = "";
        _os_log_impl(&dword_2656EA000, v57, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#sa #fencemgr, Safe location state should have been set to unknown at least}", &buf, 0x12u);
      }
    }

LABEL_33:
    deviceCopy = v64;
    v11 = v60;
    v9 = v61;
    goto LABEL_34;
  }

  v12 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
  {
    buf = 68289026;
    v76 = 2082;
    v77 = "";
    _os_log_impl(&dword_2656EA000, v12, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#sa #fencemgr, Safe location already used for this device}", &buf, 0x12u);
  }

LABEL_34:

  v58 = *MEMORY[0x277D85DE8];
  return v9 == 0;
}

- (BOOL)stopMonitorSafeLocation:(id)location forDevice:(id)device
{
  v42 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  deviceCopy = device;
  deviceUUIDsBySafeLocation = [(SAFenceManager *)self deviceUUIDsBySafeLocation];
  v9 = [deviceUUIDsBySafeLocation objectForKey:locationCopy];

  if (!v9)
  {
    v30 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      buf = 68289026;
      v40 = 2082;
      v41 = "";
      _os_log_impl(&dword_2656EA000, v30, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#sa #fencemgr, Can't remove a non-existent safe location}", &buf, 0x12u);
    }

    goto LABEL_15;
  }

  deviceUUIDsBySafeLocation2 = [(SAFenceManager *)self deviceUUIDsBySafeLocation];
  v11 = [deviceUUIDsBySafeLocation2 objectForKey:locationCopy];
  [v11 removeObject:deviceCopy];

  deviceUUIDsBySafeLocation3 = [(SAFenceManager *)self deviceUUIDsBySafeLocation];
  v13 = [deviceUUIDsBySafeLocation3 objectForKey:locationCopy];
  v14 = [v13 count];

  if (v14)
  {
LABEL_15:
    v29 = 0;
    goto LABEL_16;
  }

  v33 = deviceCopy;
  v15 = [(SAFenceManager *)self getRegionForSafeLocation:locationCopy];
  statesByRegionIdentifier = [(SAFenceManager *)self statesByRegionIdentifier];
  identifier = [v15 identifier];
  [statesByRegionIdentifier removeObjectForKey:identifier];

  safeLocationsByRegionIdentifier = [(SAFenceManager *)self safeLocationsByRegionIdentifier];
  identifier2 = [v15 identifier];
  [safeLocationsByRegionIdentifier removeObjectForKey:identifier2];

  deviceUUIDsBySafeLocation4 = [(SAFenceManager *)self deviceUUIDsBySafeLocation];
  [deviceUUIDsBySafeLocation4 removeObjectForKey:locationCopy];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  clients = [(SAFenceManager *)self clients];
  v22 = [clients countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v35;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v35 != v24)
        {
          objc_enumerationMutation(clients);
        }

        v26 = *(*(&v34 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v26 removeGeofence:v15];
        }
      }

      v23 = [clients countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v23);
  }

  regionsByRegionIdentifier = [(SAFenceManager *)self regionsByRegionIdentifier];
  identifier3 = [v15 identifier];
  [regionsByRegionIdentifier removeObjectForKey:identifier3];

  v29 = 1;
  deviceCopy = v33;
LABEL_16:

  v31 = *MEMORY[0x277D85DE8];
  return v29;
}

- (BOOL)startMonitorUnsafeLocationExit:(id)exit forDevice:(id)device
{
  v68 = *MEMORY[0x277D85DE8];
  exitCopy = exit;
  deviceCopy = device;
  deviceUUIDsByUnsafeRegionIdentifier = [(SAFenceManager *)self deviceUUIDsByUnsafeRegionIdentifier];
  identifier = [exitCopy identifier];
  v10 = [deviceUUIDsByUnsafeRegionIdentifier objectForKey:identifier];

  if (!v10)
  {
    goto LABEL_9;
  }

  if (![v10 containsObject:deviceCopy])
  {
    goto LABEL_6;
  }

  v11 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
  {
    buf = 68289026;
    v66 = 2082;
    v67 = "";
    _os_log_impl(&dword_2656EA000, v11, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#sa #fencemgr, Unsafe location already used for this device}", &buf, 0x12u);
  }

  [(SAFenceManager *)self stopMonitorUnsafeLocationExit:exitCopy forDevice:deviceCopy];
  deviceUUIDsByUnsafeRegionIdentifier2 = [(SAFenceManager *)self deviceUUIDsByUnsafeRegionIdentifier];
  identifier2 = [exitCopy identifier];
  v14 = [deviceUUIDsByUnsafeRegionIdentifier2 objectForKey:identifier2];

  v10 = v14;
  if (v14)
  {
LABEL_6:
    deviceUUIDsByUnsafeRegionIdentifier3 = [(SAFenceManager *)self deviceUUIDsByUnsafeRegionIdentifier];
    identifier3 = [exitCopy identifier];
    v17 = [deviceUUIDsByUnsafeRegionIdentifier3 objectForKey:identifier3];
    [v17 addObject:deviceCopy];

    statesByRegionIdentifier = [(SAFenceManager *)self statesByRegionIdentifier];
    identifier4 = [exitCopy identifier];
    v20 = [statesByRegionIdentifier objectForKey:identifier4];

    if (v20)
    {
      v52 = v10;
      statesByRegionIdentifier2 = [(SAFenceManager *)self statesByRegionIdentifier];
      identifier5 = [exitCopy identifier];
      v23 = [statesByRegionIdentifier2 objectForKey:identifier5];
      v24 = [v23 isEqual:&unk_287710090];

      if (v24)
      {
        v25 = 0;
        v10 = v52;
      }

      else
      {
        v53 = deviceCopy;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        obj = [(SAFenceManager *)self clients];
        v41 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
        if (v41)
        {
          v42 = v41;
          v43 = *v60;
          do
          {
            for (i = 0; i != v42; ++i)
            {
              if (*v60 != v43)
              {
                objc_enumerationMutation(obj);
              }

              v45 = *(*(&v59 + 1) + 8 * i);
              if (objc_opt_respondsToSelector())
              {
                [(SAFenceManager *)self statesByRegionIdentifier];
                v47 = v46 = self;
                identifier6 = [exitCopy identifier];
                v49 = [v47 objectForKey:identifier6];
                [v45 didDetermineState:objc_msgSend(v49 forUnsafeLocation:"unsignedIntegerValue") forDevice:{exitCopy, v53}];

                self = v46;
              }
            }

            v42 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
          }

          while (v42);
        }

        v25 = 0;
        v10 = v52;
        deviceCopy = v53;
      }
    }

    else
    {
      v40 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
      {
        buf = 68289026;
        v66 = 2082;
        v67 = "";
        _os_log_impl(&dword_2656EA000, v40, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#sa #fencemgr, Unsafe location state should have been set to unknown at least}", &buf, 0x12u);
      }

      v25 = 0;
    }
  }

  else
  {
LABEL_9:
    v26 = deviceCopy;
    v27 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:{deviceCopy, 0}];
    regionsByRegionIdentifier = [(SAFenceManager *)self regionsByRegionIdentifier];
    identifier7 = [exitCopy identifier];
    [regionsByRegionIdentifier setObject:exitCopy forKey:identifier7];

    deviceUUIDsByUnsafeRegionIdentifier4 = [(SAFenceManager *)self deviceUUIDsByUnsafeRegionIdentifier];
    identifier8 = [exitCopy identifier];
    [deviceUUIDsByUnsafeRegionIdentifier4 setObject:v27 forKey:identifier8];

    statesByRegionIdentifier3 = [(SAFenceManager *)self statesByRegionIdentifier];
    identifier9 = [exitCopy identifier];
    [statesByRegionIdentifier3 setObject:&unk_287710090 forKey:identifier9];

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    clients = [(SAFenceManager *)self clients];
    v35 = [clients countByEnumeratingWithState:&v55 objects:v63 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v56;
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v56 != v37)
          {
            objc_enumerationMutation(clients);
          }

          v39 = *(*(&v55 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            [v39 addGeofence:exitCopy];
          }
        }

        v36 = [clients countByEnumeratingWithState:&v55 objects:v63 count:16];
      }

      while (v36);
    }

    v10 = 0;
    v25 = 1;
    deviceCopy = v26;
  }

  v50 = *MEMORY[0x277D85DE8];
  return v25;
}

- (BOOL)stopMonitorUnsafeLocationExit:(id)exit forDevice:(id)device
{
  v42 = *MEMORY[0x277D85DE8];
  exitCopy = exit;
  deviceCopy = device;
  deviceUUIDsByUnsafeRegionIdentifier = [(SAFenceManager *)self deviceUUIDsByUnsafeRegionIdentifier];
  identifier = [exitCopy identifier];
  v10 = [deviceUUIDsByUnsafeRegionIdentifier objectForKey:identifier];

  if (!v10)
  {
    v31 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      buf = 68289026;
      v40 = 2082;
      v41 = "";
      _os_log_impl(&dword_2656EA000, v31, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#sa #fencemgr, Can't remove a non-existent unsafe location}", &buf, 0x12u);
    }

    goto LABEL_15;
  }

  deviceUUIDsByUnsafeRegionIdentifier2 = [(SAFenceManager *)self deviceUUIDsByUnsafeRegionIdentifier];
  identifier2 = [exitCopy identifier];
  v13 = [deviceUUIDsByUnsafeRegionIdentifier2 objectForKey:identifier2];
  [v13 removeObject:deviceCopy];

  deviceUUIDsByUnsafeRegionIdentifier3 = [(SAFenceManager *)self deviceUUIDsByUnsafeRegionIdentifier];
  identifier3 = [exitCopy identifier];
  v16 = [deviceUUIDsByUnsafeRegionIdentifier3 objectForKey:identifier3];
  v17 = [v16 count];

  if (v17)
  {
LABEL_15:
    v30 = 0;
    goto LABEL_16;
  }

  statesByRegionIdentifier = [(SAFenceManager *)self statesByRegionIdentifier];
  identifier4 = [exitCopy identifier];
  [statesByRegionIdentifier removeObjectForKey:identifier4];

  deviceUUIDsByUnsafeRegionIdentifier4 = [(SAFenceManager *)self deviceUUIDsByUnsafeRegionIdentifier];
  identifier5 = [exitCopy identifier];
  [deviceUUIDsByUnsafeRegionIdentifier4 removeObjectForKey:identifier5];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  clients = [(SAFenceManager *)self clients];
  v23 = [clients countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v35;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v35 != v25)
        {
          objc_enumerationMutation(clients);
        }

        v27 = *(*(&v34 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v27 removeGeofence:exitCopy];
        }
      }

      v24 = [clients countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v24);
  }

  regionsByRegionIdentifier = [(SAFenceManager *)self regionsByRegionIdentifier];
  identifier6 = [exitCopy identifier];
  [regionsByRegionIdentifier removeObjectForKey:identifier6];

  v30 = 1;
LABEL_16:

  v32 = *MEMORY[0x277D85DE8];
  return v30;
}

- (void)removeLocationsForDeviceUuid:(id)uuid
{
  v58 = *MEMORY[0x277D85DE8];
  uuidCopy = uuid;
  v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  deviceUUIDsByUnsafeRegionIdentifier = [(SAFenceManager *)self deviceUUIDsByUnsafeRegionIdentifier];
  v6 = [deviceUUIDsByUnsafeRegionIdentifier countByEnumeratingWithState:&v50 objects:v57 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v51;
    do
    {
      v9 = 0;
      do
      {
        if (*v51 != v8)
        {
          objc_enumerationMutation(deviceUUIDsByUnsafeRegionIdentifier);
        }

        v10 = *(*(&v50 + 1) + 8 * v9);
        deviceUUIDsByUnsafeRegionIdentifier2 = [(SAFenceManager *)self deviceUUIDsByUnsafeRegionIdentifier];
        v12 = [deviceUUIDsByUnsafeRegionIdentifier2 objectForKey:v10];
        v13 = [v12 containsObject:uuidCopy];

        if (v13)
        {
          regionsByRegionIdentifier = [(SAFenceManager *)self regionsByRegionIdentifier];
          v15 = [regionsByRegionIdentifier objectForKey:v10];
          [v37 addObject:v15];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [deviceUUIDsByUnsafeRegionIdentifier countByEnumeratingWithState:&v50 objects:v57 count:16];
    }

    while (v7);
  }

  v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  deviceUUIDsBySafeLocation = [(SAFenceManager *)self deviceUUIDsBySafeLocation];
  v17 = [deviceUUIDsBySafeLocation countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v47;
    do
    {
      v20 = 0;
      do
      {
        if (*v47 != v19)
        {
          objc_enumerationMutation(deviceUUIDsBySafeLocation);
        }

        v21 = *(*(&v46 + 1) + 8 * v20);
        deviceUUIDsBySafeLocation2 = [(SAFenceManager *)self deviceUUIDsBySafeLocation];
        v23 = [deviceUUIDsBySafeLocation2 objectForKey:v21];
        v24 = [v23 containsObject:uuidCopy];

        if (v24)
        {
          [v36 addObject:v21];
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [deviceUUIDsBySafeLocation countByEnumeratingWithState:&v46 objects:v56 count:16];
    }

    while (v18);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v25 = v37;
  v26 = [v25 countByEnumeratingWithState:&v42 objects:v55 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v43;
    do
    {
      v29 = 0;
      do
      {
        if (*v43 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [(SAFenceManager *)self stopMonitorUnsafeLocationExit:*(*(&v42 + 1) + 8 * v29++) forDevice:uuidCopy];
      }

      while (v27 != v29);
      v27 = [v25 countByEnumeratingWithState:&v42 objects:v55 count:16];
    }

    while (v27);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v30 = v36;
  v31 = [v30 countByEnumeratingWithState:&v38 objects:v54 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v39;
    do
    {
      v34 = 0;
      do
      {
        if (*v39 != v33)
        {
          objc_enumerationMutation(v30);
        }

        [(SAFenceManager *)self stopMonitorSafeLocation:*(*(&v38 + 1) + 8 * v34++) forDevice:uuidCopy];
      }

      while (v32 != v34);
      v32 = [v30 countByEnumeratingWithState:&v38 objects:v54 count:16];
    }

    while (v32);
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)ingestTAEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = eventCopy;
    eventType = [v4 eventType];
    region = [v4 region];

    [(SAFenceManager *)self handleFenceEvent:eventType forRegion:region];
  }
}

- (void)handleFenceEvent:(unint64_t)event forRegion:(id)region
{
  v33 = *MEMORY[0x277D85DE8];
  regionCopy = region;
  identifier = [regionCopy identifier];
  v8 = identifier;
  if (event <= 2)
  {
    if (event)
    {
      if (event != 1)
      {
        if (event != 2)
        {
          goto LABEL_31;
        }

        goto LABEL_22;
      }

LABEL_15:
      if ([identifier hasPrefix:@"unsafe_"])
      {
        v12 = [(NSMutableDictionary *)self->_deviceUUIDsByUnsafeRegionIdentifier objectForKey:v8];

        if (!v12)
        {
          v13 = objc_alloc(MEMORY[0x277CCAD78]);
          v14 = [v8 substringFromIndex:{objc_msgSend(@"unsafe_", "length")}];
          v15 = [v13 initWithUUIDString:v14];

          v16 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:{v15, 0}];
          regionsByRegionIdentifier = [(SAFenceManager *)self regionsByRegionIdentifier];
          identifier2 = [regionCopy identifier];
          [regionsByRegionIdentifier setObject:regionCopy forKey:identifier2];

          deviceUUIDsByUnsafeRegionIdentifier = [(SAFenceManager *)self deviceUUIDsByUnsafeRegionIdentifier];
          identifier3 = [regionCopy identifier];
          [deviceUUIDsByUnsafeRegionIdentifier setObject:v16 forKey:identifier3];

          v21 = TASALog;
          if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289283;
            v28 = 0;
            v29 = 2082;
            v30 = "";
            v31 = 2113;
            v32 = v15;
            _os_log_impl(&dword_2656EA000, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa #fencemgr handleFenceEvent for unsafe location not in dictionary, deviceUUID:%{private}@}", buf, 0x1Cu);
          }
        }
      }

      if (event <= 2)
      {
        goto LABEL_26;
      }

LABEL_22:
      if ([(SAFenceManager *)self isSafeLocation:regionCopy])
      {
        selfCopy3 = self;
        v23 = 2;
LABEL_28:
        [(SAFenceManager *)selfCopy3 notifyState:v23 forSafeLocationRegion:regionCopy];
        goto LABEL_31;
      }

      selfCopy4 = self;
      v25 = 2;
LABEL_30:
      [(SAFenceManager *)selfCopy4 notifyState:v25 forUnsafeLocationRegion:regionCopy];
      goto LABEL_31;
    }

    goto LABEL_13;
  }

  if (event <= 4)
  {
    if (event == 3)
    {
LABEL_26:
      if ([(SAFenceManager *)self isSafeLocation:regionCopy])
      {
        selfCopy3 = self;
        v23 = 1;
        goto LABEL_28;
      }

      selfCopy4 = self;
      v25 = 1;
      goto LABEL_30;
    }

    goto LABEL_15;
  }

  if (event == 5)
  {
LABEL_13:
    statesByRegionIdentifier = [(SAFenceManager *)self statesByRegionIdentifier];
    identifier4 = [regionCopy identifier];
    [statesByRegionIdentifier setObject:&unk_287710090 forKey:identifier4];
    goto LABEL_14;
  }

  if (event == 6)
  {
    v9 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      statesByRegionIdentifier = v9;
      identifier4 = [regionCopy identifier];
      *buf = 68289283;
      v28 = 0;
      v29 = 2082;
      v30 = "";
      v31 = 2113;
      v32 = identifier4;
      _os_log_impl(&dword_2656EA000, statesByRegionIdentifier, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#sa #fencemgr, region monitoring error, regionUUID:%{private}@}", buf, 0x1Cu);
LABEL_14:
    }
  }

LABEL_31:

  v26 = *MEMORY[0x277D85DE8];
}

- (BOOL)isSafeLocation:(id)location
{
  locationCopy = location;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = locationCopy;
    if (objc_opt_respondsToSelector())
    {
      isLowPower = [v4 isLowPower];
    }

    else
    {
      isLowPower = 0;
    }
  }

  else
  {
    isLowPower = 0;
  }

  return isLowPower;
}

- (void)notifyState:(unint64_t)state forSafeLocationRegion:(id)region
{
  v55 = *MEMORY[0x277D85DE8];
  regionCopy = region;
  statesByRegionIdentifier = [(SAFenceManager *)self statesByRegionIdentifier];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:state];
  identifier = [regionCopy identifier];
  [statesByRegionIdentifier setObject:v8 forKey:identifier];

  safeLocationsByRegionIdentifier = [(SAFenceManager *)self safeLocationsByRegionIdentifier];
  identifier2 = [regionCopy identifier];
  v12 = [safeLocationsByRegionIdentifier objectForKey:identifier2];

  v13 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    identifier3 = [regionCopy identifier];
    uTF8String = [identifier3 UTF8String];
    clients = [(SAFenceManager *)self clients];
    v18 = [clients count];
    v47 = 2082;
    v48 = "";
    v19 = "Yes";
    buf = 68289795;
    if (!v12)
    {
      v19 = "No";
    }

    v49 = 2081;
    v50 = uTF8String;
    v51 = 2049;
    v52 = v18;
    v53 = 2081;
    v54 = v19;
    _os_log_impl(&dword_2656EA000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa #fencemgr, notify state for safe, regionUUID:%{private}s, Clients:%{private}ld, Found:%{private}s}", &buf, 0x30u);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [(SAFenceManager *)self clients];
  v34 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v34)
  {
    v32 = *v41;
    selfCopy = self;
    do
    {
      v20 = 0;
      do
      {
        if (*v41 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v35 = v20;
        v21 = *(*(&v40 + 1) + 8 * v20);
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        deviceUUIDsBySafeLocation = [(SAFenceManager *)self deviceUUIDsBySafeLocation];
        v23 = [deviceUUIDsBySafeLocation objectForKey:v12];

        v24 = [v23 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v37;
          do
          {
            v27 = 0;
            do
            {
              if (*v37 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v28 = *(*(&v36 + 1) + 8 * v27);
              if (objc_opt_respondsToSelector())
              {
                [v21 didDetermineState:state forSafeLocation:v12 forDevice:v28];
              }

              ++v27;
            }

            while (v25 != v27);
            v25 = [v23 countByEnumeratingWithState:&v36 objects:v44 count:16];
          }

          while (v25);
        }

        v20 = v35 + 1;
        self = selfCopy;
      }

      while (v35 + 1 != v34);
      v34 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v34);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)notifyState:(unint64_t)state forUnsafeLocationRegion:(id)region
{
  v48 = *MEMORY[0x277D85DE8];
  regionCopy = region;
  statesByRegionIdentifier = [(SAFenceManager *)self statesByRegionIdentifier];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:state];
  identifier = [regionCopy identifier];
  [statesByRegionIdentifier setObject:v8 forKey:identifier];

  v10 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    identifier2 = [regionCopy identifier];
    uTF8String = [identifier2 UTF8String];
    clients = [(SAFenceManager *)self clients];
    buf = 68289539;
    v42 = 2082;
    v43 = "";
    v44 = 2081;
    v45 = uTF8String;
    v46 = 2049;
    v47 = [clients count];
    _os_log_impl(&dword_2656EA000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa #fencemgr, notify state for unsafe, regionUUID:%{private}s, Clients:%{private}ld}", &buf, 0x26u);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [(SAFenceManager *)self clients];
  v29 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v29)
  {
    v27 = *v36;
    selfCopy = self;
    do
    {
      v15 = 0;
      do
      {
        if (*v36 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v30 = v15;
        v16 = *(*(&v35 + 1) + 8 * v15);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        deviceUUIDsByUnsafeRegionIdentifier = [(SAFenceManager *)self deviceUUIDsByUnsafeRegionIdentifier];
        identifier3 = [regionCopy identifier];
        v19 = [deviceUUIDsByUnsafeRegionIdentifier objectForKey:identifier3];

        v20 = [v19 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v32;
          do
          {
            v23 = 0;
            do
            {
              if (*v32 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v31 + 1) + 8 * v23);
              if (objc_opt_respondsToSelector())
              {
                [v16 didDetermineState:state forUnsafeLocation:regionCopy forDevice:v24];
              }

              ++v23;
            }

            while (v21 != v23);
            v21 = [v19 countByEnumeratingWithState:&v31 objects:v39 count:16];
          }

          while (v21);
        }

        v15 = v30 + 1;
        self = selfCopy;
      }

      while (v30 + 1 != v29);
      v29 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v29);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)addClient:(id)client
{
  clientCopy = client;
  clients = [(SAFenceManager *)self clients];
  [clients addObject:clientCopy];
}

- (void)removeClient:(id)client
{
  clientCopy = client;
  clients = [(SAFenceManager *)self clients];
  [clients removeObject:clientCopy];
}

@end