@interface SADeviceRecord
- (BOOL)hasDisconnectedDevices;
- (BOOL)hasSurfacedNotificationFor:(id)for;
- (SADeviceRecord)initWithClock:(id)clock analytics:(id)analytics;
- (SADeviceRecord)initWithCoder:(id)coder;
- (id)getAdvertisingStartDateForHELE:(id)e;
- (id)getLastCompanionDisconnectionDate:(id)date;
- (id)getLastWithYouDate:(id)date;
- (id)getLastWithYouLocation:(id)location;
- (id)getLatestAdvertisement:(id)advertisement;
- (id)getLatestCaseAdvertisementDate:(id)date;
- (id)getLatestNOAdvertisement:(id)advertisement;
- (id)getLatestWildAdvertisement:(id)advertisement;
- (id)getRelatedDevices:(id)devices;
- (id)getSADevice:(id)device;
- (int64_t)getConnectionState:(id)state;
- (int64_t)getMaintenanceStatus:(id)status;
- (int64_t)getRelationStatus:(id)status;
- (unint64_t)getMonitoringSessionState:(id)state;
- (unint64_t)getScenarioClass:(id)class;
- (unint64_t)getWithYouStatus:(id)status;
- (void)_updateAdvertisingStartDateForHELE:(id)e;
- (void)_updateAllRelatedDevices;
- (void)_updateConnectionStateOnConnectionEvent:(id)event;
- (void)_updateDeviceRecordOnDeviceUpdateEvent:(id)event;
- (void)_updateLatestAdvertisement:(id)advertisement;
- (void)_updateLatestCaseAdvertisementDate:(id)date;
- (void)_updateSingleDeviceRecordForDevice:(id)device;
- (void)ingestTAEvent:(id)event;
- (void)resetAllWithYouStatus;
- (void)updateLastWithYouDate:(id)date forDeviceWithUUID:(id)d;
- (void)updateLastWithYouLocation:(id)location forDeviceWithUUID:(id)d;
- (void)updateLatestAdvertisement:(id)advertisement forDeviceWithUUID:(id)d;
- (void)updateLocation:(id)location;
- (void)updateMonitoringSessionState:(unint64_t)state forDeviceWithUUID:(id)d;
- (void)updateScenario:(unint64_t)scenario forDeviceWithUUID:(id)d;
- (void)updatedWithYouStatusFrom:(unint64_t)from to:(unint64_t)to forDeviceWithUUID:(id)d;
@end

@implementation SADeviceRecord

- (SADeviceRecord)initWithClock:(id)clock analytics:(id)analytics
{
  clockCopy = clock;
  analyticsCopy = analytics;
  v15.receiver = self;
  v15.super_class = SADeviceRecord;
  v9 = [(SADeviceRecord *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clock, clock);
    objc_storeStrong(&v10->_analytics, analytics);
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    deviceRecord = v10->_deviceRecord;
    v10->_deviceRecord = v11;

    lastLocation = v10->_lastLocation;
    v10->_lastLocation = 0;
  }

  return v10;
}

- (id)getSADevice:(id)device
{
  v3 = [(NSMutableDictionary *)self->_deviceRecord objectForKey:device];
  device = [v3 device];

  return device;
}

- (int64_t)getConnectionState:(id)state
{
  stateCopy = state;
  if (stateCopy && ([(NSMutableDictionary *)self->_deviceRecord objectForKey:stateCopy], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:stateCopy];
    connectionState = [v6 connectionState];
  }

  else
  {
    connectionState = 0;
  }

  return connectionState;
}

- (unint64_t)getWithYouStatus:(id)status
{
  statusCopy = status;
  if (statusCopy && ([(NSMutableDictionary *)self->_deviceRecord objectForKey:statusCopy], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:statusCopy];
    withYouStatus = [v6 withYouStatus];
  }

  else
  {
    withYouStatus = 0;
  }

  return withYouStatus;
}

- (id)getLatestAdvertisement:(id)advertisement
{
  advertisementCopy = advertisement;
  if (advertisementCopy && ([(NSMutableDictionary *)self->_deviceRecord objectForKey:advertisementCopy], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:advertisementCopy];
    latestAdvertisement = [v6 latestAdvertisement];
  }

  else
  {
    latestAdvertisement = 0;
  }

  return latestAdvertisement;
}

- (id)getLatestNOAdvertisement:(id)advertisement
{
  advertisementCopy = advertisement;
  if (advertisementCopy && ([(NSMutableDictionary *)self->_deviceRecord objectForKey:advertisementCopy], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:advertisementCopy];
    latestNOAdvertisement = [v6 latestNOAdvertisement];
  }

  else
  {
    latestNOAdvertisement = 0;
  }

  return latestNOAdvertisement;
}

- (id)getLatestWildAdvertisement:(id)advertisement
{
  advertisementCopy = advertisement;
  if (advertisementCopy && ([(NSMutableDictionary *)self->_deviceRecord objectForKey:advertisementCopy], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:advertisementCopy];
    latestWildAdvertisement = [v6 latestWildAdvertisement];
  }

  else
  {
    latestWildAdvertisement = 0;
  }

  return latestWildAdvertisement;
}

- (id)getLatestCaseAdvertisementDate:(id)date
{
  dateCopy = date;
  if (dateCopy && ([(NSMutableDictionary *)self->_deviceRecord objectForKey:dateCopy], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:dateCopy];
    latestCaseAdvertisementDate = [v6 latestCaseAdvertisementDate];
  }

  else
  {
    latestCaseAdvertisementDate = 0;
  }

  return latestCaseAdvertisementDate;
}

- (id)getLastWithYouDate:(id)date
{
  dateCopy = date;
  if (dateCopy && ([(NSMutableDictionary *)self->_deviceRecord objectForKey:dateCopy], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:dateCopy];
    lastWithYouDate = [v6 lastWithYouDate];
  }

  else
  {
    lastWithYouDate = 0;
  }

  return lastWithYouDate;
}

- (id)getLastCompanionDisconnectionDate:(id)date
{
  dateCopy = date;
  if (dateCopy && ([(NSMutableDictionary *)self->_deviceRecord objectForKey:dateCopy], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:dateCopy];
    lastCompanionDisconnectionDate = [v6 lastCompanionDisconnectionDate];
  }

  else
  {
    lastCompanionDisconnectionDate = 0;
  }

  return lastCompanionDisconnectionDate;
}

- (unint64_t)getScenarioClass:(id)class
{
  classCopy = class;
  if (classCopy && ([(NSMutableDictionary *)self->_deviceRecord objectForKey:classCopy], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:classCopy];
    currentScenarioClass = [v6 currentScenarioClass];
  }

  else
  {
    currentScenarioClass = 0;
  }

  return currentScenarioClass;
}

- (unint64_t)getMonitoringSessionState:(id)state
{
  stateCopy = state;
  if (stateCopy && ([(NSMutableDictionary *)self->_deviceRecord objectForKey:stateCopy], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:stateCopy];
    currentMonitoringSessionState = [v6 currentMonitoringSessionState];
  }

  else
  {
    currentMonitoringSessionState = 0;
  }

  return currentMonitoringSessionState;
}

- (id)getRelatedDevices:(id)devices
{
  devicesCopy = devices;
  if (devicesCopy && ([(NSMutableDictionary *)self->_deviceRecord objectForKey:devicesCopy], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:devicesCopy];
    uuidsOfRelatedDevices = [v6 uuidsOfRelatedDevices];
  }

  else
  {
    uuidsOfRelatedDevices = 0;
  }

  return uuidsOfRelatedDevices;
}

- (id)getLastWithYouLocation:(id)location
{
  locationCopy = location;
  if (locationCopy && ([(NSMutableDictionary *)self->_deviceRecord objectForKey:locationCopy], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:locationCopy];
    lastWithYouLocation = [v6 lastWithYouLocation];
  }

  else
  {
    lastWithYouLocation = 0;
  }

  return lastWithYouLocation;
}

- (id)getAdvertisingStartDateForHELE:(id)e
{
  eCopy = e;
  if (eCopy && ([(NSMutableDictionary *)self->_deviceRecord objectForKey:eCopy], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:eCopy];
    advertisingStartDateForHELE = [v6 advertisingStartDateForHELE];
  }

  else
  {
    advertisingStartDateForHELE = 0;
  }

  return advertisingStartDateForHELE;
}

- (int64_t)getRelationStatus:(id)status
{
  statusCopy = status;
  if (statusCopy && ([(NSMutableDictionary *)self->_deviceRecord objectForKey:statusCopy], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:statusCopy];
    relationStatus = [v6 relationStatus];
  }

  else
  {
    relationStatus = -1;
  }

  return relationStatus;
}

- (int64_t)getMaintenanceStatus:(id)status
{
  statusCopy = status;
  if (statusCopy && ([(NSMutableDictionary *)self->_deviceRecord objectForKey:statusCopy], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:statusCopy];
    maintenanceStatus = [v6 maintenanceStatus];
  }

  else
  {
    maintenanceStatus = -1;
  }

  return maintenanceStatus;
}

- (void)updateLatestAdvertisement:(id)advertisement forDeviceWithUUID:(id)d
{
  deviceRecord = self->_deviceRecord;
  advertisementCopy = advertisement;
  v7 = [(NSMutableDictionary *)deviceRecord objectForKey:d];
  [v7 updateLatestAdvertisement:advertisementCopy];
}

- (void)_updateSingleDeviceRecordForDevice:(id)device
{
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  v5 = [(NSMutableDictionary *)self->_deviceRecord objectForKey:?];

  deviceRecord = self->_deviceRecord;
  if (v5)
  {
    v7 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:identifier];
    [(SASingleDeviceRecord *)v7 setDevice:deviceCopy];
  }

  else
  {
    v7 = [[SASingleDeviceRecord alloc] initWithDevice:deviceCopy clock:self->_clock analytics:self->_analytics];

    [(NSMutableDictionary *)deviceRecord setObject:v7 forKey:identifier];
  }
}

- (void)_updateDeviceRecordOnDeviceUpdateEvent:(id)event
{
  eventCopy = event;
  device = [eventCopy device];

  if (!device)
  {
    goto LABEL_13;
  }

  if (![eventCopy eventType])
  {
    device2 = [eventCopy device];
    [(SADeviceRecord *)self _updateSingleDeviceRecordForDevice:device2];
LABEL_10:

    v6 = eventCopy;
    goto LABEL_11;
  }

  v5 = [eventCopy eventType] == 1;
  v6 = eventCopy;
  if (v5)
  {
    device3 = [eventCopy device];
    device2 = [device3 identifier];

    v9 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:device2];
    isConnected = [v9 isConnected];

    deviceRecord = self->_deviceRecord;
    if (isConnected)
    {
      device4 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:device2];
      [device4 setDevice:0];
    }

    else
    {
      device4 = [eventCopy device];
      identifier = [device4 identifier];
      [(NSMutableDictionary *)deviceRecord removeObjectForKey:identifier];
    }

    goto LABEL_10;
  }

LABEL_11:
  if ([v6 lastEvent])
  {
    [(SADeviceRecord *)self _updateAllRelatedDevices];
  }

LABEL_13:
}

- (void)_updateAllRelatedDevices
{
  v49 = *MEMORY[0x277D85DE8];
  [(NSMutableDictionary *)self->_deviceRecord allKeys];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v36 = 0u;
  v25 = [obj countByEnumeratingWithState:&v33 objects:v48 count:16];
  if (v25)
  {
    v24 = *v34;
    *&v2 = 68289795;
    v23 = v2;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v34 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v33 + 1) + 8 * i);
        v5 = [(SADeviceRecord *)self getSADevice:v4, v23];
        groupIdentifier = [v5 groupIdentifier];

        v7 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v4];
        [v7 resetRelatedDevices];

        v8 = groupIdentifier;
        if (groupIdentifier)
        {
          v27 = i;
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v9 = obj;
          v10 = [v9 countByEnumeratingWithState:&v29 objects:v47 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v30;
            do
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v30 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v29 + 1) + 8 * j);
                if (([v14 isEqual:v4] & 1) == 0)
                {
                  v15 = [(SADeviceRecord *)self getSADevice:v14];
                  groupIdentifier2 = [v15 groupIdentifier];
                  v17 = [groupIdentifier2 isEqual:v8];

                  if (v17)
                  {
                    v18 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v4];
                    [v18 insertRelatedDevice:v14];
                  }
                }
              }

              v11 = [v9 countByEnumeratingWithState:&v29 objects:v47 count:16];
            }

            while (v11);
          }

          i = v27;
        }

        v19 = TASALog;
        if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v19;
          v21 = [(SADeviceRecord *)self getRelatedDevices:v4];
          *buf = v23;
          v38 = 0;
          v39 = 2082;
          v40 = "";
          v41 = 2113;
          v42 = v4;
          v43 = 2113;
          v44 = v8;
          v45 = 2113;
          v46 = v21;
          _os_log_impl(&dword_2656EA000, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa related devices update for device, uuid:%{private}@, groupID:%{private}@, related devices:%{private}@}", buf, 0x30u);
        }
      }

      v25 = [obj countByEnumeratingWithState:&v33 objects:v48 count:16];
    }

    while (v25);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_updateConnectionStateOnConnectionEvent:(id)event
{
  eventCopy = event;
  deviceRecord = self->_deviceRecord;
  identifier = [eventCopy identifier];
  v6 = [(NSMutableDictionary *)deviceRecord objectForKey:identifier];
  if (v6)
  {

    goto LABEL_3;
  }

  if ([eventCopy state] == 2)
  {

LABEL_14:
    v21 = self->_deviceRecord;
    identifier4 = [[SASingleDeviceRecord alloc] initWithConnectionEvent:eventCopy clock:self->_clock analytics:self->_analytics];
    identifier2 = [eventCopy identifier];
    [(NSMutableDictionary *)v21 setObject:identifier4 forKey:identifier2];

    goto LABEL_17;
  }

  state = [eventCopy state];

  if (state == 3)
  {
    goto LABEL_14;
  }

LABEL_3:
  identifier3 = [eventCopy identifier];
  v8 = [(SADeviceRecord *)self getSADevice:identifier3];
  if (!v8)
  {
    if ([eventCopy state])
    {
      state2 = [eventCopy state];

      if (state2 != 1)
      {
        goto LABEL_5;
      }
    }

    else
    {
    }

    v23 = self->_deviceRecord;
    identifier4 = [eventCopy identifier];
    [(NSMutableDictionary *)v23 removeObjectForKey:identifier4];
    goto LABEL_17;
  }

LABEL_5:
  v9 = self->_deviceRecord;
  identifier5 = [eventCopy identifier];
  v11 = [(NSMutableDictionary *)v9 objectForKey:identifier5];
  [v11 setConnectionState:{objc_msgSend(eventCopy, "state")}];

  state3 = [eventCopy state];
  v13 = eventCopy;
  if (!state3 || (v14 = [eventCopy state], v13 = eventCopy, v14 == 1))
  {
    v15 = self->_deviceRecord;
    identifier4 = [v13 identifier];
    v17 = [(NSMutableDictionary *)v15 objectForKey:identifier4];
    getCurrentTime = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
    [v17 updateLastCompanionDisconnectionDate:getCurrentTime];

LABEL_17:
    v13 = eventCopy;
  }

  MEMORY[0x2821F96F8](v14, v13);
}

- (void)_updateLatestAdvertisement:(id)advertisement
{
  deviceRecord = self->_deviceRecord;
  advertisementCopy = advertisement;
  uuid = [advertisementCopy uuid];
  v5 = [(NSMutableDictionary *)deviceRecord objectForKey:uuid];
  [v5 updateLatestAdvertisement:advertisementCopy];
}

- (void)_updateLatestCaseAdvertisementDate:(id)date
{
  v24 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  deviceRecord = self->_deviceRecord;
  uuid = [dateCopy uuid];
  v7 = [(NSMutableDictionary *)deviceRecord objectForKey:uuid];

  device = [v7 device];
  isAirPodsCase = [device isAirPodsCase];

  if (isAirPodsCase)
  {
    scanDate = [dateCopy scanDate];
    [v7 updateLatestCaseAdvertisementDate:scanDate];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    uuidsOfRelatedDevices = [v7 uuidsOfRelatedDevices];
    v12 = [uuidsOfRelatedDevices countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        v15 = 0;
        do
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(uuidsOfRelatedDevices);
          }

          v16 = [(NSMutableDictionary *)self->_deviceRecord objectForKey:*(*(&v19 + 1) + 8 * v15)];
          scanDate2 = [dateCopy scanDate];
          [v16 updateLatestCaseAdvertisementDate:scanDate2];

          ++v15;
        }

        while (v13 != v15);
        v13 = [uuidsOfRelatedDevices countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_updateAdvertisingStartDateForHELE:(id)e
{
  v45 = *MEMORY[0x277D85DE8];
  eCopy = e;
  deviceRecord = self->_deviceRecord;
  uuid = [eCopy uuid];
  v7 = [(NSMutableDictionary *)deviceRecord objectForKey:uuid];

  device = [v7 device];
  if ([device deviceType] == 16 && (objc_msgSend(device, "productId") == 8206 || objc_msgSend(device, "productId") == 8211))
  {
    currentBudPosition = [v7 currentBudPosition];
    v10 = [eCopy getAirPodsBudPosition:{objc_msgSend(device, "partIdentifier")}];
    v11 = v10;
    if (currentBudPosition != v10)
    {
      v26 = currentBudPosition;
      v27 = v10;
      scanDate = [eCopy scanDate];
      [v7 updateAdvertisingStartDateForHELE:scanDate];

      uuid2 = [eCopy uuid];
      v14 = [(SADeviceRecord *)self getRelatedDevices:uuid2];

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v28 objects:v44 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v29;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v29 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = [(NSMutableDictionary *)self->_deviceRecord objectForKey:*(*(&v28 + 1) + 8 * i)];
            scanDate2 = [eCopy scanDate];
            [v20 updateAdvertisingStartDateForHELE:scanDate2];
          }

          v17 = [v15 countByEnumeratingWithState:&v28 objects:v44 count:16];
        }

        while (v17);
      }

      v22 = TASALog;
      v11 = v27;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v22;
        uuid3 = [eCopy uuid];
        *buf = 68290051;
        v34 = 2082;
        v33 = 0;
        v35 = "";
        v36 = 2113;
        v37 = uuid3;
        v38 = 2113;
        v39 = v15;
        v40 = 2049;
        v41 = v26;
        v42 = 2049;
        v43 = v27;
        _os_log_impl(&dword_2656EA000, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa updated start time for AirPods advertising timer, uuid:%{private}@, related devices:%{private}@, currentPosition:%{private}lu, newPosition:%{private}lu}", buf, 0x3Au);
      }
    }

    [v7 setCurrentBudPosition:v11];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)updateLastWithYouDate:(id)date forDeviceWithUUID:(id)d
{
  deviceRecord = self->_deviceRecord;
  dateCopy = date;
  v7 = [(NSMutableDictionary *)deviceRecord objectForKey:d];
  [v7 updateLastWithYouDate:dateCopy];
}

- (void)updateScenario:(unint64_t)scenario forDeviceWithUUID:(id)d
{
  v5 = [(NSMutableDictionary *)self->_deviceRecord objectForKey:d];
  [v5 updateCurrentScenarioClass:scenario];
}

- (void)updateMonitoringSessionState:(unint64_t)state forDeviceWithUUID:(id)d
{
  v5 = [(NSMutableDictionary *)self->_deviceRecord objectForKey:d];
  [v5 setCurrentMonitoringSessionState:state];
}

- (void)updateLastWithYouLocation:(id)location forDeviceWithUUID:(id)d
{
  locationCopy = location;
  dCopy = d;
  if (dCopy)
  {
    v7 = [(NSMutableDictionary *)self->_deviceRecord objectForKey:dCopy];

    if (v7)
    {
      v8 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:dCopy];
      currentScenarioClass = [v8 currentScenarioClass];

      if (currentScenarioClass == 3)
      {
        lastLocation = self->_lastLocation;
        if (!lastLocation)
        {
          goto LABEL_13;
        }

        [(TALocationLite *)lastLocation latitude];
        v12 = v11;
        [(TALocationLite *)self->_lastLocation longitude];
        v14 = v13;
        v15 = objc_alloc(MEMORY[0x277CBFBC8]);
        [(TALocationLite *)self->_lastLocation horizontalAccuracy];
        v17 = v16;
        uUIDString = [dCopy UUIDString];
        v19 = [v15 initWithCenter:uUIDString radius:v12 identifier:{v14, v17}];

        v20 = [(NSMutableDictionary *)self->_deviceRecord objectForKey:dCopy];
        v21 = v20;
        v22 = v19;
        goto LABEL_12;
      }

      v23 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:dCopy];
      currentScenarioClass2 = [v23 currentScenarioClass];

      if (locationCopy && currentScenarioClass2 == 2)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = locationCopy;
        }

        else
        {
          v25 = 0;
        }

        deviceRecord = self->_deviceRecord;
        v21 = v25;
        v20 = [(NSMutableDictionary *)deviceRecord objectForKey:dCopy];
        v19 = v20;
        v22 = v21;
LABEL_12:
        [v20 setLastWithYouLocation:v22];
      }
    }
  }

LABEL_13:
}

- (void)resetAllWithYouStatus
{
  v15 = *MEMORY[0x277D85DE8];
  allKeys = [(NSMutableDictionary *)self->_deviceRecord allKeys];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v8 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:*(*(&v10 + 1) + 8 * v7)];
        [v8 updateWithYouStatus:0];

        ++v7;
      }

      while (v5 != v7);
      v5 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasSurfacedNotificationFor:(id)for
{
  forCopy = for;
  if (forCopy && ([(NSMutableDictionary *)self->_deviceRecord objectForKey:forCopy], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:forCopy];
    hasSurfacedNotification = [v6 hasSurfacedNotification];
  }

  else
  {
    hasSurfacedNotification = 0;
  }

  return hasSurfacedNotification;
}

- (BOOL)hasDisconnectedDevices
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_deviceRecord;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:*(*(&v13 + 1) + 8 * i), v13];
        connectionState = [v8 connectionState];

        if (connectionState < 2)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)updateLocation:(id)location
{
  v32 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  lastLocation = self->_lastLocation;
  p_lastLocation = &self->_lastLocation;
  v6 = lastLocation;
  if (lastLocation)
  {
    getDate = [(TALocationLite *)v6 getDate];
    getDate2 = [locationCopy getDate];
    v11 = [getDate compare:getDate2] == 0;

    if (!locationCopy)
    {
LABEL_9:
      v14 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
      {
        v15 = *p_lastLocation;
        v16 = v14;
        v17 = [v15 description];
        v18 = [locationCopy description];
        v24 = 68289539;
        v25 = 0;
        v26 = 2082;
        v27 = "";
        v28 = 2117;
        v29 = v17;
        v30 = 2117;
        v31 = v18;
        _os_log_impl(&dword_2656EA000, v16, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:SADeviceRecord updateLocation update criteria not satisfied, lastLocation:%{sensitive}@, newLocation:%{sensitive}@}", &v24, 0x26u);
      }

      goto LABEL_13;
    }
  }

  else
  {
    v11 = 0;
    if (!locationCopy)
    {
      goto LABEL_9;
    }
  }

  [locationCopy horizontalAccuracy];
  v13 = v12 >= 70.0 || v11;
  if (v13 == 1)
  {
    goto LABEL_9;
  }

  objc_storeStrong(p_lastLocation, location);
  v19 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
  {
    v20 = *p_lastLocation;
    v21 = v19;
    v22 = [v20 description];
    v24 = 68289283;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    v28 = 2117;
    v29 = v22;
    _os_log_impl(&dword_2656EA000, v21, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SADeviceRecord updateLocation updated, lastLocation:%{sensitive}@}", &v24, 0x1Cu);
  }

LABEL_13:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)ingestTAEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SADeviceRecord *)self _updateSingleDeviceRecordForDevice:eventCopy];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SADeviceRecord *)self _updateDeviceRecordOnDeviceUpdateEvent:eventCopy];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SADeviceRecord *)self _updateConnectionStateOnConnectionEvent:eventCopy];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SADeviceRecord *)self _updateLatestCaseAdvertisementDate:eventCopy];
    [(SADeviceRecord *)self _updateAdvertisingStartDateForHELE:eventCopy];
    [(SADeviceRecord *)self _updateLatestAdvertisement:eventCopy];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SADeviceRecord *)self updateLocation:eventCopy];
  }
}

- (SADeviceRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SADeviceRecord;
  v5 = [(SADeviceRecord *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DeviceRecord"];
    deviceRecord = v5->_deviceRecord;
    v5->_deviceRecord = v6;
  }

  return v5;
}

- (void)updatedWithYouStatusFrom:(unint64_t)from to:(unint64_t)to forDeviceWithUUID:(id)d
{
  v6 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:d];
  [v6 updateWithYouStatus:to];
}

@end