@interface SAFenceManager
- (BOOL)isSafeLocation:(id)a3;
- (BOOL)startMonitorSafeLocation:(id)a3 forDevice:(id)a4;
- (BOOL)startMonitorUnsafeLocationExit:(id)a3 forDevice:(id)a4;
- (BOOL)stopMonitorSafeLocation:(id)a3 forDevice:(id)a4;
- (BOOL)stopMonitorUnsafeLocationExit:(id)a3 forDevice:(id)a4;
- (SAFenceManager)init;
- (id)getRegionForSafeLocation:(id)a3;
- (unint64_t)getSafeLocationCount;
- (unint64_t)getUnsafeLocationCount;
- (void)addClient:(id)a3;
- (void)handleFenceEvent:(unint64_t)a3 forRegion:(id)a4;
- (void)ingestTAEvent:(id)a3;
- (void)notifyState:(unint64_t)a3 forSafeLocationRegion:(id)a4;
- (void)notifyState:(unint64_t)a3 forUnsafeLocationRegion:(id)a4;
- (void)removeClient:(id)a3;
- (void)removeLocationsForDeviceUuid:(id)a3;
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
  v2 = [(SAFenceManager *)self deviceUUIDsBySafeLocation];
  v3 = [v2 count];

  return v3;
}

- (unint64_t)getUnsafeLocationCount
{
  v2 = [(SAFenceManager *)self deviceUUIDsByUnsafeRegionIdentifier];
  v3 = [v2 count];

  return v3;
}

- (id)getRegionForSafeLocation:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [(SAFenceManager *)self safeLocationsByRegionIdentifier];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [(SAFenceManager *)self safeLocationsByRegionIdentifier];
        v12 = [v11 objectForKey:v10];
        v13 = [v12 isEqual:v4];

        if (v13)
        {
          v16 = [(SAFenceManager *)self regionsByRegionIdentifier];
          v15 = [v16 objectForKey:v10];

          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
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

- (BOOL)startMonitorSafeLocation:(id)a3 forDevice:(id)a4
{
  v78 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SAFenceManager *)self deviceUUIDsBySafeLocation];
  v9 = [v8 objectForKey:v6];

  if (!v9)
  {
    v61 = 0;
    v13 = [v6 identifier];
    v14 = [v13 UUIDString];

    [v6 latitude];
    v16 = v15;
    [v6 longitude];
    v18 = v17;
    [v6 radius];
    if (v19 >= 100.0)
    {
      v20 = v19;
    }

    else
    {
      v20 = 100.0;
    }

    v60 = v14;
    v21 = [objc_alloc(MEMORY[0x277CBFBC8]) initForLowPowerWithCenter:v14 radius:v16 identifier:{v18, v20}];
    [v21 setGeoReferenceFrame:{objc_msgSend(v6, "referenceFrame")}];
    v22 = v21;
    v64 = v7;
    v23 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:{v7, 0}];
    v24 = [(SAFenceManager *)self regionsByRegionIdentifier];
    v25 = [v22 identifier];
    [v24 setObject:v22 forKey:v25];

    v26 = [(SAFenceManager *)self deviceUUIDsBySafeLocation];
    [v26 setObject:v23 forKey:v6];

    v27 = [(SAFenceManager *)self safeLocationsByRegionIdentifier];
    v28 = [v22 identifier];
    v29 = v6;
    [v27 setObject:v6 forKey:v28];

    v30 = [(SAFenceManager *)self statesByRegionIdentifier];
    v31 = [v22 identifier];
    [v30 setObject:&unk_287710090 forKey:v31];

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v32 = [(SAFenceManager *)self clients];
    v33 = [v32 countByEnumeratingWithState:&v65 objects:v73 count:16];
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
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v65 + 1) + 8 * v36);
          if (objc_opt_respondsToSelector())
          {
            [v37 addGeofence:v22];
          }

          ++v36;
        }

        while (v34 != v36);
        v34 = [v32 countByEnumeratingWithState:&v65 objects:v73 count:16];
      }

      while (v34);
    }

    v6 = v29;
    goto LABEL_33;
  }

  v10 = [(SAFenceManager *)self deviceUUIDsBySafeLocation];
  v11 = [v10 objectForKey:v6];

  if (![v11 containsObject:v7])
  {
    v60 = v11;
    v61 = v9;
    v38 = [(SAFenceManager *)self deviceUUIDsBySafeLocation];
    v39 = [v38 objectForKey:v6];
    v64 = v7;
    [v39 addObject:v7];

    v40 = [(SAFenceManager *)self getRegionForSafeLocation:v6];
    v41 = [(SAFenceManager *)self statesByRegionIdentifier];
    v42 = [v40 identifier];
    v43 = [v41 objectForKey:v42];

    if (v43)
    {
      v44 = [(SAFenceManager *)self statesByRegionIdentifier];
      v45 = [v40 identifier];
      v46 = [v44 objectForKey:v45];
      v47 = [v46 isEqual:&unk_287710090];

      if ((v47 & 1) == 0)
      {
        v62 = self;
        v63 = v6;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v48 = [(SAFenceManager *)self clients];
        v49 = [v48 countByEnumeratingWithState:&v69 objects:v74 count:16];
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
                objc_enumerationMutation(v48);
              }

              v53 = *(*(&v69 + 1) + 8 * v52);
              if (objc_opt_respondsToSelector())
              {
                v54 = [(SAFenceManager *)v62 statesByRegionIdentifier];
                v55 = [v40 identifier];
                v56 = [v54 objectForKey:v55];
                [v53 didDetermineState:objc_msgSend(v56 forSafeLocation:"unsignedIntegerValue") forDevice:{v63, v64}];
              }

              ++v52;
            }

            while (v50 != v52);
            v50 = [v48 countByEnumeratingWithState:&v69 objects:v74 count:16];
          }

          while (v50);
        }

        v6 = v63;
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
    v7 = v64;
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

- (BOOL)stopMonitorSafeLocation:(id)a3 forDevice:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SAFenceManager *)self deviceUUIDsBySafeLocation];
  v9 = [v8 objectForKey:v6];

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

  v10 = [(SAFenceManager *)self deviceUUIDsBySafeLocation];
  v11 = [v10 objectForKey:v6];
  [v11 removeObject:v7];

  v12 = [(SAFenceManager *)self deviceUUIDsBySafeLocation];
  v13 = [v12 objectForKey:v6];
  v14 = [v13 count];

  if (v14)
  {
LABEL_15:
    v29 = 0;
    goto LABEL_16;
  }

  v33 = v7;
  v15 = [(SAFenceManager *)self getRegionForSafeLocation:v6];
  v16 = [(SAFenceManager *)self statesByRegionIdentifier];
  v17 = [v15 identifier];
  [v16 removeObjectForKey:v17];

  v18 = [(SAFenceManager *)self safeLocationsByRegionIdentifier];
  v19 = [v15 identifier];
  [v18 removeObjectForKey:v19];

  v20 = [(SAFenceManager *)self deviceUUIDsBySafeLocation];
  [v20 removeObjectForKey:v6];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v21 = [(SAFenceManager *)self clients];
  v22 = [v21 countByEnumeratingWithState:&v34 objects:v38 count:16];
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
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v34 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v26 removeGeofence:v15];
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v23);
  }

  v27 = [(SAFenceManager *)self regionsByRegionIdentifier];
  v28 = [v15 identifier];
  [v27 removeObjectForKey:v28];

  v29 = 1;
  v7 = v33;
LABEL_16:

  v31 = *MEMORY[0x277D85DE8];
  return v29;
}

- (BOOL)startMonitorUnsafeLocationExit:(id)a3 forDevice:(id)a4
{
  v68 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SAFenceManager *)self deviceUUIDsByUnsafeRegionIdentifier];
  v9 = [v6 identifier];
  v10 = [v8 objectForKey:v9];

  if (!v10)
  {
    goto LABEL_9;
  }

  if (![v10 containsObject:v7])
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

  [(SAFenceManager *)self stopMonitorUnsafeLocationExit:v6 forDevice:v7];
  v12 = [(SAFenceManager *)self deviceUUIDsByUnsafeRegionIdentifier];
  v13 = [v6 identifier];
  v14 = [v12 objectForKey:v13];

  v10 = v14;
  if (v14)
  {
LABEL_6:
    v15 = [(SAFenceManager *)self deviceUUIDsByUnsafeRegionIdentifier];
    v16 = [v6 identifier];
    v17 = [v15 objectForKey:v16];
    [v17 addObject:v7];

    v18 = [(SAFenceManager *)self statesByRegionIdentifier];
    v19 = [v6 identifier];
    v20 = [v18 objectForKey:v19];

    if (v20)
    {
      v52 = v10;
      v21 = [(SAFenceManager *)self statesByRegionIdentifier];
      v22 = [v6 identifier];
      v23 = [v21 objectForKey:v22];
      v24 = [v23 isEqual:&unk_287710090];

      if (v24)
      {
        v25 = 0;
        v10 = v52;
      }

      else
      {
        v53 = v7;
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
                v48 = [v6 identifier];
                v49 = [v47 objectForKey:v48];
                [v45 didDetermineState:objc_msgSend(v49 forUnsafeLocation:"unsignedIntegerValue") forDevice:{v6, v53}];

                self = v46;
              }
            }

            v42 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
          }

          while (v42);
        }

        v25 = 0;
        v10 = v52;
        v7 = v53;
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
    v26 = v7;
    v27 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:{v7, 0}];
    v28 = [(SAFenceManager *)self regionsByRegionIdentifier];
    v29 = [v6 identifier];
    [v28 setObject:v6 forKey:v29];

    v30 = [(SAFenceManager *)self deviceUUIDsByUnsafeRegionIdentifier];
    v31 = [v6 identifier];
    [v30 setObject:v27 forKey:v31];

    v32 = [(SAFenceManager *)self statesByRegionIdentifier];
    v33 = [v6 identifier];
    [v32 setObject:&unk_287710090 forKey:v33];

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v34 = [(SAFenceManager *)self clients];
    v35 = [v34 countByEnumeratingWithState:&v55 objects:v63 count:16];
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
            objc_enumerationMutation(v34);
          }

          v39 = *(*(&v55 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            [v39 addGeofence:v6];
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v55 objects:v63 count:16];
      }

      while (v36);
    }

    v10 = 0;
    v25 = 1;
    v7 = v26;
  }

  v50 = *MEMORY[0x277D85DE8];
  return v25;
}

- (BOOL)stopMonitorUnsafeLocationExit:(id)a3 forDevice:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SAFenceManager *)self deviceUUIDsByUnsafeRegionIdentifier];
  v9 = [v6 identifier];
  v10 = [v8 objectForKey:v9];

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

  v11 = [(SAFenceManager *)self deviceUUIDsByUnsafeRegionIdentifier];
  v12 = [v6 identifier];
  v13 = [v11 objectForKey:v12];
  [v13 removeObject:v7];

  v14 = [(SAFenceManager *)self deviceUUIDsByUnsafeRegionIdentifier];
  v15 = [v6 identifier];
  v16 = [v14 objectForKey:v15];
  v17 = [v16 count];

  if (v17)
  {
LABEL_15:
    v30 = 0;
    goto LABEL_16;
  }

  v18 = [(SAFenceManager *)self statesByRegionIdentifier];
  v19 = [v6 identifier];
  [v18 removeObjectForKey:v19];

  v20 = [(SAFenceManager *)self deviceUUIDsByUnsafeRegionIdentifier];
  v21 = [v6 identifier];
  [v20 removeObjectForKey:v21];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v22 = [(SAFenceManager *)self clients];
  v23 = [v22 countByEnumeratingWithState:&v34 objects:v38 count:16];
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
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v34 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v27 removeGeofence:v6];
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v24);
  }

  v28 = [(SAFenceManager *)self regionsByRegionIdentifier];
  v29 = [v6 identifier];
  [v28 removeObjectForKey:v29];

  v30 = 1;
LABEL_16:

  v32 = *MEMORY[0x277D85DE8];
  return v30;
}

- (void)removeLocationsForDeviceUuid:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v5 = [(SAFenceManager *)self deviceUUIDsByUnsafeRegionIdentifier];
  v6 = [v5 countByEnumeratingWithState:&v50 objects:v57 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v50 + 1) + 8 * v9);
        v11 = [(SAFenceManager *)self deviceUUIDsByUnsafeRegionIdentifier];
        v12 = [v11 objectForKey:v10];
        v13 = [v12 containsObject:v4];

        if (v13)
        {
          v14 = [(SAFenceManager *)self regionsByRegionIdentifier];
          v15 = [v14 objectForKey:v10];
          [v37 addObject:v15];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v50 objects:v57 count:16];
    }

    while (v7);
  }

  v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v16 = [(SAFenceManager *)self deviceUUIDsBySafeLocation];
  v17 = [v16 countByEnumeratingWithState:&v46 objects:v56 count:16];
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
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v46 + 1) + 8 * v20);
        v22 = [(SAFenceManager *)self deviceUUIDsBySafeLocation];
        v23 = [v22 objectForKey:v21];
        v24 = [v23 containsObject:v4];

        if (v24)
        {
          [v36 addObject:v21];
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v46 objects:v56 count:16];
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

        [(SAFenceManager *)self stopMonitorUnsafeLocationExit:*(*(&v42 + 1) + 8 * v29++) forDevice:v4];
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

        [(SAFenceManager *)self stopMonitorSafeLocation:*(*(&v38 + 1) + 8 * v34++) forDevice:v4];
      }

      while (v32 != v34);
      v32 = [v30 countByEnumeratingWithState:&v38 objects:v54 count:16];
    }

    while (v32);
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)ingestTAEvent:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v7;
    v5 = [v4 eventType];
    v6 = [v4 region];

    [(SAFenceManager *)self handleFenceEvent:v5 forRegion:v6];
  }
}

- (void)handleFenceEvent:(unint64_t)a3 forRegion:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [v6 identifier];
  v8 = v7;
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        if (a3 != 2)
        {
          goto LABEL_31;
        }

        goto LABEL_22;
      }

LABEL_15:
      if ([v7 hasPrefix:@"unsafe_"])
      {
        v12 = [(NSMutableDictionary *)self->_deviceUUIDsByUnsafeRegionIdentifier objectForKey:v8];

        if (!v12)
        {
          v13 = objc_alloc(MEMORY[0x277CCAD78]);
          v14 = [v8 substringFromIndex:{objc_msgSend(@"unsafe_", "length")}];
          v15 = [v13 initWithUUIDString:v14];

          v16 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:{v15, 0}];
          v17 = [(SAFenceManager *)self regionsByRegionIdentifier];
          v18 = [v6 identifier];
          [v17 setObject:v6 forKey:v18];

          v19 = [(SAFenceManager *)self deviceUUIDsByUnsafeRegionIdentifier];
          v20 = [v6 identifier];
          [v19 setObject:v16 forKey:v20];

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

      if (a3 <= 2)
      {
        goto LABEL_26;
      }

LABEL_22:
      if ([(SAFenceManager *)self isSafeLocation:v6])
      {
        v22 = self;
        v23 = 2;
LABEL_28:
        [(SAFenceManager *)v22 notifyState:v23 forSafeLocationRegion:v6];
        goto LABEL_31;
      }

      v24 = self;
      v25 = 2;
LABEL_30:
      [(SAFenceManager *)v24 notifyState:v25 forUnsafeLocationRegion:v6];
      goto LABEL_31;
    }

    goto LABEL_13;
  }

  if (a3 <= 4)
  {
    if (a3 == 3)
    {
LABEL_26:
      if ([(SAFenceManager *)self isSafeLocation:v6])
      {
        v22 = self;
        v23 = 1;
        goto LABEL_28;
      }

      v24 = self;
      v25 = 1;
      goto LABEL_30;
    }

    goto LABEL_15;
  }

  if (a3 == 5)
  {
LABEL_13:
    v10 = [(SAFenceManager *)self statesByRegionIdentifier];
    v11 = [v6 identifier];
    [v10 setObject:&unk_287710090 forKey:v11];
    goto LABEL_14;
  }

  if (a3 == 6)
  {
    v9 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      v10 = v9;
      v11 = [v6 identifier];
      *buf = 68289283;
      v28 = 0;
      v29 = 2082;
      v30 = "";
      v31 = 2113;
      v32 = v11;
      _os_log_impl(&dword_2656EA000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#sa #fencemgr, region monitoring error, regionUUID:%{private}@}", buf, 0x1Cu);
LABEL_14:
    }
  }

LABEL_31:

  v26 = *MEMORY[0x277D85DE8];
}

- (BOOL)isSafeLocation:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    if (objc_opt_respondsToSelector())
    {
      v5 = [v4 isLowPower];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)notifyState:(unint64_t)a3 forSafeLocationRegion:(id)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(SAFenceManager *)self statesByRegionIdentifier];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v9 = [v6 identifier];
  [v7 setObject:v8 forKey:v9];

  v10 = [(SAFenceManager *)self safeLocationsByRegionIdentifier];
  v11 = [v6 identifier];
  v12 = [v10 objectForKey:v11];

  v13 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = [v6 identifier];
    v16 = [v15 UTF8String];
    v17 = [(SAFenceManager *)self clients];
    v18 = [v17 count];
    v47 = 2082;
    v48 = "";
    v19 = "Yes";
    buf = 68289795;
    if (!v12)
    {
      v19 = "No";
    }

    v49 = 2081;
    v50 = v16;
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
    v33 = self;
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
        v22 = [(SAFenceManager *)self deviceUUIDsBySafeLocation];
        v23 = [v22 objectForKey:v12];

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
                [v21 didDetermineState:a3 forSafeLocation:v12 forDevice:v28];
              }

              ++v27;
            }

            while (v25 != v27);
            v25 = [v23 countByEnumeratingWithState:&v36 objects:v44 count:16];
          }

          while (v25);
        }

        v20 = v35 + 1;
        self = v33;
      }

      while (v35 + 1 != v34);
      v34 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v34);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)notifyState:(unint64_t)a3 forUnsafeLocationRegion:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(SAFenceManager *)self statesByRegionIdentifier];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v9 = [v6 identifier];
  [v7 setObject:v8 forKey:v9];

  v10 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = [v6 identifier];
    v13 = [v12 UTF8String];
    v14 = [(SAFenceManager *)self clients];
    buf = 68289539;
    v42 = 2082;
    v43 = "";
    v44 = 2081;
    v45 = v13;
    v46 = 2049;
    v47 = [v14 count];
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
    v28 = self;
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
        v17 = [(SAFenceManager *)self deviceUUIDsByUnsafeRegionIdentifier];
        v18 = [v6 identifier];
        v19 = [v17 objectForKey:v18];

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
                [v16 didDetermineState:a3 forUnsafeLocation:v6 forDevice:v24];
              }

              ++v23;
            }

            while (v21 != v23);
            v21 = [v19 countByEnumeratingWithState:&v31 objects:v39 count:16];
          }

          while (v21);
        }

        v15 = v30 + 1;
        self = v28;
      }

      while (v30 + 1 != v29);
      v29 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v29);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)addClient:(id)a3
{
  v4 = a3;
  v5 = [(SAFenceManager *)self clients];
  [v5 addObject:v4];
}

- (void)removeClient:(id)a3
{
  v4 = a3;
  v5 = [(SAFenceManager *)self clients];
  [v5 removeObject:v4];
}

@end