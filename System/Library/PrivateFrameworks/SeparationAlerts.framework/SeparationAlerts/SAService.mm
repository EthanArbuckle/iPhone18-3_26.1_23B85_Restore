@interface SAService
- (void)addGeofence:(id)geofence;
- (void)cancelSATimeEventForAlarm:(id)alarm;
- (void)fetchLastVisit;
- (void)ingestTAEvent:(id)event;
- (void)notifySeparationsForDevices:(id)devices withLocation:(id)location withContext:(id)context;
- (void)removeGeofence:(id)geofence;
- (void)requestBluetoothScanForTypes:(unint64_t)types;
- (void)requestLocationForType:(unint64_t)type;
- (void)requestStateForRegion:(id)region;
- (void)scheduleSATimeEvent:(double)event forAlarm:(id)alarm;
- (void)startBackgroundScanning;
- (void)stopBackgroundScanning;
- (void)stopLongAggressiveScan;
- (void)updatedMonitoringState:(unint64_t)state forDeviceUUID:(id)d;
@end

@implementation SAService

- (void)notifySeparationsForDevices:(id)devices withLocation:(id)location withContext:(id)context
{
  v28 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  locationCopy = location;
  contextCopy = context;
  if (devicesCopy && [devicesCopy count])
  {
    v11 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      *buf = 134283521;
      v27 = [devicesCopy count];
      _os_log_impl(&dword_2656EA000, v12, OS_LOG_TYPE_DEFAULT, "#sa Service notifyAboutDevices:%{private}lu", buf, 0xCu);
    }

    powerLogger = [(SAService *)self powerLogger];
    [powerLogger increaseSeparationAlertsCount:{objc_msgSend(devicesCopy, "count")}];

    allObjects = [(NSHashTable *)self->_clients allObjects];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v15 = [allObjects countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        v18 = 0;
        do
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(allObjects);
          }

          v19 = *(*(&v21 + 1) + 8 * v18);
          if (objc_opt_respondsToSelector())
          {
            [v19 separationAlertsService:self notifySeparationsForDevices:devicesCopy withLocation:locationCopy withContext:contextCopy];
          }

          ++v18;
        }

        while (v16 != v18);
        v16 = [allObjects countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v16);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)requestBluetoothScanForTypes:(unint64_t)types
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134283521;
    typesCopy = types;
    _os_log_impl(&dword_2656EA000, v5, OS_LOG_TYPE_DEFAULT, "#sa Service requestBluetoothScan:%{private}#lx", buf, 0xCu);
  }

  powerLogger = [(SAService *)self powerLogger];
  [powerLogger increaseBTScanCount];

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
          [v12 separationAlertsService:self requestBluetoothScanForTypes:types];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [allObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)requestLocationForType:(unint64_t)type
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134283521;
    typeCopy = type;
    _os_log_impl(&dword_2656EA000, v5, OS_LOG_TYPE_DEFAULT, "#sa Service requestLocationForType:%{private}#lx", buf, 0xCu);
  }

  if (type == 1)
  {
    powerLogger = [(SAService *)self powerLogger];
    [powerLogger increaseWifiLocationRequestCount];
  }

  else
  {
    if (type)
    {
      goto LABEL_8;
    }

    powerLogger = [(SAService *)self powerLogger];
    [powerLogger increaseGpsLocationRequestCount];
  }

LABEL_8:
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
          [v12 separationAlertsService:self requestLocationForType:type];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [allObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)addGeofence:(id)geofence
{
  v21 = *MEMORY[0x277D85DE8];
  geofenceCopy = geofence;
  if (geofenceCopy)
  {
    v5 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2656EA000, v5, OS_LOG_TYPE_DEFAULT, "#sa Service addGeofence", buf, 2u);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = geofenceCopy;
      if ((objc_opt_respondsToSelector() & 1) != 0 && ([v6 isLowPower] & 1) == 0)
      {
        powerLogger = [(SAService *)self powerLogger];
        [powerLogger increaseGeofenceCount];
      }
    }

    allObjects = [(NSHashTable *)self->_clients allObjects];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [allObjects countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(allObjects);
          }

          v13 = *(*(&v15 + 1) + 8 * v12);
          if (objc_opt_respondsToSelector())
          {
            [v13 separationAlertsService:self addGeofence:geofenceCopy];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [allObjects countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v10);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)removeGeofence:(id)geofence
{
  v19 = *MEMORY[0x277D85DE8];
  geofenceCopy = geofence;
  if (geofenceCopy)
  {
    v5 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2656EA000, v5, OS_LOG_TYPE_DEFAULT, "#sa Service removeGeofence", buf, 2u);
    }

    allObjects = [(NSHashTable *)self->_clients allObjects];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [allObjects countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(allObjects);
          }

          v11 = *(*(&v13 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            [v11 separationAlertsService:self removeGeofence:geofenceCopy];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [allObjects countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v8);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)requestStateForRegion:(id)region
{
  v19 = *MEMORY[0x277D85DE8];
  regionCopy = region;
  if (regionCopy)
  {
    v5 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2656EA000, v5, OS_LOG_TYPE_DEFAULT, "#sa Service requestStateForRegion", buf, 2u);
    }

    allObjects = [(NSHashTable *)self->_clients allObjects];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [allObjects countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(allObjects);
          }

          v11 = *(*(&v13 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            [v11 separationAlertsService:self requestStateForRegion:regionCopy];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [allObjects countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v8);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)scheduleSATimeEvent:(double)event forAlarm:(id)alarm
{
  v22 = *MEMORY[0x277D85DE8];
  alarmCopy = alarm;
  v7 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    eventCopy = event;
    _os_log_impl(&dword_2656EA000, v7, OS_LOG_TYPE_DEFAULT, "#sa Service scheduleSATimeEvent:%{public}#lf", buf, 0xCu);
  }

  allObjects = [(NSHashTable *)self->_clients allObjects];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [allObjects countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(allObjects);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 separationAlertsService:self scheduleSATimeEvent:alarmCopy forAlarm:event];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [allObjects countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)cancelSATimeEventForAlarm:(id)alarm
{
  v23 = *MEMORY[0x277D85DE8];
  alarmCopy = alarm;
  v5 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v19 = 2082;
    v20 = "";
    v21 = 2114;
    v22 = alarmCopy;
    _os_log_impl(&dword_2656EA000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa Service cancelSATimeEventForAlarm, uuid:%{public}@}", buf, 0x1Cu);
  }

  allObjects = [(NSHashTable *)self->_clients allObjects];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(allObjects);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 separationAlertsService:self cancelSATimeEventForAlarm:alarmCopy];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)startBackgroundScanning
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289026;
    v17 = 2082;
    v18 = "";
    _os_log_impl(&dword_2656EA000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa Service startBackgroundScanning}", &buf, 0x12u);
  }

  allObjects = [(NSHashTable *)self->_clients allObjects];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allObjects);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 separationAlertsServiceStartBackgroundScanning:self];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)stopBackgroundScanning
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289026;
    v17 = 2082;
    v18 = "";
    _os_log_impl(&dword_2656EA000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa Service stopBackgroundScanning}", &buf, 0x12u);
  }

  allObjects = [(NSHashTable *)self->_clients allObjects];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allObjects);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 separationAlertsServiceStopBackgroundScanning:self];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)stopLongAggressiveScan
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289026;
    v17 = 2082;
    v18 = "";
    _os_log_impl(&dword_2656EA000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa Service stopLongAggressiveScan}", &buf, 0x12u);
  }

  allObjects = [(NSHashTable *)self->_clients allObjects];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allObjects);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 separationAlertsServiceStopLongAggressiveScan:self];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)fetchLastVisit
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289026;
    v17 = 2082;
    v18 = "";
    _os_log_impl(&dword_2656EA000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa Service fetchLastVisit}", &buf, 0x12u);
  }

  allObjects = [(NSHashTable *)self->_clients allObjects];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allObjects);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 separationAlertsServiceFetchLastVisit:self];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)ingestTAEvent:(id)event
{
  v20 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v17 = TASALog;
                  if (!os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_12;
                  }

                  v6 = v17;
                  v7 = [eventCopy description];
                  v18 = 68289283;
                  *v19 = 2082;
                  *&v19[2] = "";
                  *&v19[10] = 2113;
                  *&v19[12] = v7;
                  v8 = "{msg%{public}.0s:Ingesting event, Event:%{private}@}";
                  goto LABEL_11;
                }
              }
            }
          }
        }
      }
    }
  }

  v5 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [eventCopy description];
    v18 = 68289283;
    *v19 = 2082;
    *&v19[2] = "";
    *&v19[10] = 2117;
    *&v19[12] = v7;
    v8 = "{msg%{public}.0s:Ingesting event, Event:%{sensitive}@}";
LABEL_11:
    _os_log_impl(&dword_2656EA000, v6, OS_LOG_TYPE_DEFAULT, v8, &v18, 0x1Cu);
  }

LABEL_12:
  [SALoggingUtilities logTAEvent:eventCopy, v18, *v19, *&v19[16]];
  clock = [(SAService *)self clock];
  [clock ingestTAEvent:eventCopy];

  deviceRecord = [(SAService *)self deviceRecord];
  [deviceRecord ingestTAEvent:eventCopy];

  withYouDetector = [(SAService *)self withYouDetector];
  [withYouDetector ingestTAEvent:eventCopy];

  monitoringSessionManager = [(SAService *)self monitoringSessionManager];
  [monitoringSessionManager ingestTAEvent:eventCopy];

  fenceManager = [(SAService *)self fenceManager];
  [fenceManager ingestTAEvent:eventCopy];

  travelTypeClassifier = [(SAService *)self travelTypeClassifier];
  [travelTypeClassifier ingestTAEvent:eventCopy];

  powerLogger = [(SAService *)self powerLogger];
  [powerLogger ingestTAEvent:eventCopy];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)updatedMonitoringState:(unint64_t)state forDeviceUUID:(id)d
{
  if ((state & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    dCopy = d;
    powerLogger = [(SAService *)self powerLogger];
    [powerLogger addMonitoredDevice:dCopy];
  }
}

@end