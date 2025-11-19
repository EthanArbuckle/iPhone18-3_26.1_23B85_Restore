@interface SADeviceRecord
- (BOOL)hasDisconnectedDevices;
- (BOOL)hasSurfacedNotificationFor:(id)a3;
- (SADeviceRecord)initWithClock:(id)a3 analytics:(id)a4;
- (SADeviceRecord)initWithCoder:(id)a3;
- (id)getAdvertisingStartDateForHELE:(id)a3;
- (id)getLastCompanionDisconnectionDate:(id)a3;
- (id)getLastWithYouDate:(id)a3;
- (id)getLastWithYouLocation:(id)a3;
- (id)getLatestAdvertisement:(id)a3;
- (id)getLatestCaseAdvertisementDate:(id)a3;
- (id)getLatestNOAdvertisement:(id)a3;
- (id)getLatestWildAdvertisement:(id)a3;
- (id)getRelatedDevices:(id)a3;
- (id)getSADevice:(id)a3;
- (int64_t)getConnectionState:(id)a3;
- (int64_t)getMaintenanceStatus:(id)a3;
- (int64_t)getRelationStatus:(id)a3;
- (unint64_t)getMonitoringSessionState:(id)a3;
- (unint64_t)getScenarioClass:(id)a3;
- (unint64_t)getWithYouStatus:(id)a3;
- (void)_updateAdvertisingStartDateForHELE:(id)a3;
- (void)_updateAllRelatedDevices;
- (void)_updateConnectionStateOnConnectionEvent:(id)a3;
- (void)_updateDeviceRecordOnDeviceUpdateEvent:(id)a3;
- (void)_updateLatestAdvertisement:(id)a3;
- (void)_updateLatestCaseAdvertisementDate:(id)a3;
- (void)_updateSingleDeviceRecordForDevice:(id)a3;
- (void)ingestTAEvent:(id)a3;
- (void)resetAllWithYouStatus;
- (void)updateLastWithYouDate:(id)a3 forDeviceWithUUID:(id)a4;
- (void)updateLastWithYouLocation:(id)a3 forDeviceWithUUID:(id)a4;
- (void)updateLatestAdvertisement:(id)a3 forDeviceWithUUID:(id)a4;
- (void)updateLocation:(id)a3;
- (void)updateMonitoringSessionState:(unint64_t)a3 forDeviceWithUUID:(id)a4;
- (void)updateScenario:(unint64_t)a3 forDeviceWithUUID:(id)a4;
- (void)updatedWithYouStatusFrom:(unint64_t)a3 to:(unint64_t)a4 forDeviceWithUUID:(id)a5;
@end

@implementation SADeviceRecord

- (SADeviceRecord)initWithClock:(id)a3 analytics:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = SADeviceRecord;
  v9 = [(SADeviceRecord *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clock, a3);
    objc_storeStrong(&v10->_analytics, a4);
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    deviceRecord = v10->_deviceRecord;
    v10->_deviceRecord = v11;

    lastLocation = v10->_lastLocation;
    v10->_lastLocation = 0;
  }

  return v10;
}

- (id)getSADevice:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_deviceRecord objectForKey:a3];
  v4 = [v3 device];

  return v4;
}

- (int64_t)getConnectionState:(id)a3
{
  v4 = a3;
  if (v4 && ([(NSMutableDictionary *)self->_deviceRecord objectForKey:v4], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v4];
    v7 = [v6 connectionState];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)getWithYouStatus:(id)a3
{
  v4 = a3;
  if (v4 && ([(NSMutableDictionary *)self->_deviceRecord objectForKey:v4], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v4];
    v7 = [v6 withYouStatus];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)getLatestAdvertisement:(id)a3
{
  v4 = a3;
  if (v4 && ([(NSMutableDictionary *)self->_deviceRecord objectForKey:v4], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v4];
    v7 = [v6 latestAdvertisement];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)getLatestNOAdvertisement:(id)a3
{
  v4 = a3;
  if (v4 && ([(NSMutableDictionary *)self->_deviceRecord objectForKey:v4], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v4];
    v7 = [v6 latestNOAdvertisement];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)getLatestWildAdvertisement:(id)a3
{
  v4 = a3;
  if (v4 && ([(NSMutableDictionary *)self->_deviceRecord objectForKey:v4], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v4];
    v7 = [v6 latestWildAdvertisement];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)getLatestCaseAdvertisementDate:(id)a3
{
  v4 = a3;
  if (v4 && ([(NSMutableDictionary *)self->_deviceRecord objectForKey:v4], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v4];
    v7 = [v6 latestCaseAdvertisementDate];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)getLastWithYouDate:(id)a3
{
  v4 = a3;
  if (v4 && ([(NSMutableDictionary *)self->_deviceRecord objectForKey:v4], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v4];
    v7 = [v6 lastWithYouDate];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)getLastCompanionDisconnectionDate:(id)a3
{
  v4 = a3;
  if (v4 && ([(NSMutableDictionary *)self->_deviceRecord objectForKey:v4], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v4];
    v7 = [v6 lastCompanionDisconnectionDate];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)getScenarioClass:(id)a3
{
  v4 = a3;
  if (v4 && ([(NSMutableDictionary *)self->_deviceRecord objectForKey:v4], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v4];
    v7 = [v6 currentScenarioClass];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)getMonitoringSessionState:(id)a3
{
  v4 = a3;
  if (v4 && ([(NSMutableDictionary *)self->_deviceRecord objectForKey:v4], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v4];
    v7 = [v6 currentMonitoringSessionState];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)getRelatedDevices:(id)a3
{
  v4 = a3;
  if (v4 && ([(NSMutableDictionary *)self->_deviceRecord objectForKey:v4], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v4];
    v7 = [v6 uuidsOfRelatedDevices];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)getLastWithYouLocation:(id)a3
{
  v4 = a3;
  if (v4 && ([(NSMutableDictionary *)self->_deviceRecord objectForKey:v4], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v4];
    v7 = [v6 lastWithYouLocation];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)getAdvertisingStartDateForHELE:(id)a3
{
  v4 = a3;
  if (v4 && ([(NSMutableDictionary *)self->_deviceRecord objectForKey:v4], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v4];
    v7 = [v6 advertisingStartDateForHELE];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)getRelationStatus:(id)a3
{
  v4 = a3;
  if (v4 && ([(NSMutableDictionary *)self->_deviceRecord objectForKey:v4], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v4];
    v7 = [v6 relationStatus];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (int64_t)getMaintenanceStatus:(id)a3
{
  v4 = a3;
  if (v4 && ([(NSMutableDictionary *)self->_deviceRecord objectForKey:v4], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v4];
    v7 = [v6 maintenanceStatus];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (void)updateLatestAdvertisement:(id)a3 forDeviceWithUUID:(id)a4
{
  deviceRecord = self->_deviceRecord;
  v6 = a3;
  v7 = [(NSMutableDictionary *)deviceRecord objectForKey:a4];
  [v7 updateLatestAdvertisement:v6];
}

- (void)_updateSingleDeviceRecordForDevice:(id)a3
{
  v4 = a3;
  v8 = [v4 identifier];
  v5 = [(NSMutableDictionary *)self->_deviceRecord objectForKey:?];

  deviceRecord = self->_deviceRecord;
  if (v5)
  {
    v7 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v8];
    [(SASingleDeviceRecord *)v7 setDevice:v4];
  }

  else
  {
    v7 = [[SASingleDeviceRecord alloc] initWithDevice:v4 clock:self->_clock analytics:self->_analytics];

    [(NSMutableDictionary *)deviceRecord setObject:v7 forKey:v8];
  }
}

- (void)_updateDeviceRecordOnDeviceUpdateEvent:(id)a3
{
  v14 = a3;
  v4 = [v14 device];

  if (!v4)
  {
    goto LABEL_13;
  }

  if (![v14 eventType])
  {
    v8 = [v14 device];
    [(SADeviceRecord *)self _updateSingleDeviceRecordForDevice:v8];
LABEL_10:

    v6 = v14;
    goto LABEL_11;
  }

  v5 = [v14 eventType] == 1;
  v6 = v14;
  if (v5)
  {
    v7 = [v14 device];
    v8 = [v7 identifier];

    v9 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v8];
    v10 = [v9 isConnected];

    deviceRecord = self->_deviceRecord;
    if (v10)
    {
      v12 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v8];
      [v12 setDevice:0];
    }

    else
    {
      v12 = [v14 device];
      v13 = [v12 identifier];
      [(NSMutableDictionary *)deviceRecord removeObjectForKey:v13];
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
        v6 = [v5 groupIdentifier];

        v7 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v4];
        [v7 resetRelatedDevices];

        v8 = v6;
        if (v6)
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
                  v16 = [v15 groupIdentifier];
                  v17 = [v16 isEqual:v8];

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

- (void)_updateConnectionStateOnConnectionEvent:(id)a3
{
  v24 = a3;
  deviceRecord = self->_deviceRecord;
  v5 = [v24 identifier];
  v6 = [(NSMutableDictionary *)deviceRecord objectForKey:v5];
  if (v6)
  {

    goto LABEL_3;
  }

  if ([v24 state] == 2)
  {

LABEL_14:
    v21 = self->_deviceRecord;
    v16 = [[SASingleDeviceRecord alloc] initWithConnectionEvent:v24 clock:self->_clock analytics:self->_analytics];
    v22 = [v24 identifier];
    [(NSMutableDictionary *)v21 setObject:v16 forKey:v22];

    goto LABEL_17;
  }

  v20 = [v24 state];

  if (v20 == 3)
  {
    goto LABEL_14;
  }

LABEL_3:
  v7 = [v24 identifier];
  v8 = [(SADeviceRecord *)self getSADevice:v7];
  if (!v8)
  {
    if ([v24 state])
    {
      v19 = [v24 state];

      if (v19 != 1)
      {
        goto LABEL_5;
      }
    }

    else
    {
    }

    v23 = self->_deviceRecord;
    v16 = [v24 identifier];
    [(NSMutableDictionary *)v23 removeObjectForKey:v16];
    goto LABEL_17;
  }

LABEL_5:
  v9 = self->_deviceRecord;
  v10 = [v24 identifier];
  v11 = [(NSMutableDictionary *)v9 objectForKey:v10];
  [v11 setConnectionState:{objc_msgSend(v24, "state")}];

  v12 = [v24 state];
  v13 = v24;
  if (!v12 || (v14 = [v24 state], v13 = v24, v14 == 1))
  {
    v15 = self->_deviceRecord;
    v16 = [v13 identifier];
    v17 = [(NSMutableDictionary *)v15 objectForKey:v16];
    v18 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
    [v17 updateLastCompanionDisconnectionDate:v18];

LABEL_17:
    v13 = v24;
  }

  MEMORY[0x2821F96F8](v14, v13);
}

- (void)_updateLatestAdvertisement:(id)a3
{
  deviceRecord = self->_deviceRecord;
  v4 = a3;
  v6 = [v4 uuid];
  v5 = [(NSMutableDictionary *)deviceRecord objectForKey:v6];
  [v5 updateLatestAdvertisement:v4];
}

- (void)_updateLatestCaseAdvertisementDate:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  deviceRecord = self->_deviceRecord;
  v6 = [v4 uuid];
  v7 = [(NSMutableDictionary *)deviceRecord objectForKey:v6];

  v8 = [v7 device];
  v9 = [v8 isAirPodsCase];

  if (v9)
  {
    v10 = [v4 scanDate];
    [v7 updateLatestCaseAdvertisementDate:v10];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = [v7 uuidsOfRelatedDevices];
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(v11);
          }

          v16 = [(NSMutableDictionary *)self->_deviceRecord objectForKey:*(*(&v19 + 1) + 8 * v15)];
          v17 = [v4 scanDate];
          [v16 updateLatestCaseAdvertisementDate:v17];

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_updateAdvertisingStartDateForHELE:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  deviceRecord = self->_deviceRecord;
  v6 = [v4 uuid];
  v7 = [(NSMutableDictionary *)deviceRecord objectForKey:v6];

  v8 = [v7 device];
  if ([v8 deviceType] == 16 && (objc_msgSend(v8, "productId") == 8206 || objc_msgSend(v8, "productId") == 8211))
  {
    v9 = [v7 currentBudPosition];
    v10 = [v4 getAirPodsBudPosition:{objc_msgSend(v8, "partIdentifier")}];
    v11 = v10;
    if (v9 != v10)
    {
      v26 = v9;
      v27 = v10;
      v12 = [v4 scanDate];
      [v7 updateAdvertisingStartDateForHELE:v12];

      v13 = [v4 uuid];
      v14 = [(SADeviceRecord *)self getRelatedDevices:v13];

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
            v21 = [v4 scanDate];
            [v20 updateAdvertisingStartDateForHELE:v21];
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
        v24 = [v4 uuid];
        *buf = 68290051;
        v34 = 2082;
        v33 = 0;
        v35 = "";
        v36 = 2113;
        v37 = v24;
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

- (void)updateLastWithYouDate:(id)a3 forDeviceWithUUID:(id)a4
{
  deviceRecord = self->_deviceRecord;
  v6 = a3;
  v7 = [(NSMutableDictionary *)deviceRecord objectForKey:a4];
  [v7 updateLastWithYouDate:v6];
}

- (void)updateScenario:(unint64_t)a3 forDeviceWithUUID:(id)a4
{
  v5 = [(NSMutableDictionary *)self->_deviceRecord objectForKey:a4];
  [v5 updateCurrentScenarioClass:a3];
}

- (void)updateMonitoringSessionState:(unint64_t)a3 forDeviceWithUUID:(id)a4
{
  v5 = [(NSMutableDictionary *)self->_deviceRecord objectForKey:a4];
  [v5 setCurrentMonitoringSessionState:a3];
}

- (void)updateLastWithYouLocation:(id)a3 forDeviceWithUUID:(id)a4
{
  v27 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_deviceRecord objectForKey:v6];

    if (v7)
    {
      v8 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v6];
      v9 = [v8 currentScenarioClass];

      if (v9 == 3)
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
        v18 = [v6 UUIDString];
        v19 = [v15 initWithCenter:v18 radius:v12 identifier:{v14, v17}];

        v20 = [(NSMutableDictionary *)self->_deviceRecord objectForKey:v6];
        v21 = v20;
        v22 = v19;
        goto LABEL_12;
      }

      v23 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v6];
      v24 = [v23 currentScenarioClass];

      if (v27 && v24 == 2)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = v27;
        }

        else
        {
          v25 = 0;
        }

        deviceRecord = self->_deviceRecord;
        v21 = v25;
        v20 = [(NSMutableDictionary *)deviceRecord objectForKey:v6];
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
  v3 = [(NSMutableDictionary *)self->_deviceRecord allKeys];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:*(*(&v10 + 1) + 8 * v7)];
        [v8 updateWithYouStatus:0];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasSurfacedNotificationFor:(id)a3
{
  v4 = a3;
  if (v4 && ([(NSMutableDictionary *)self->_deviceRecord objectForKey:v4], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v4];
    v7 = [v6 hasSurfacedNotification];
  }

  else
  {
    v7 = 0;
  }

  return v7;
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
        v9 = [v8 connectionState];

        if (v9 < 2)
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

- (void)updateLocation:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  lastLocation = self->_lastLocation;
  p_lastLocation = &self->_lastLocation;
  v6 = lastLocation;
  if (lastLocation)
  {
    v9 = [(TALocationLite *)v6 getDate];
    v10 = [v5 getDate];
    v11 = [v9 compare:v10] == 0;

    if (!v5)
    {
LABEL_9:
      v14 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
      {
        v15 = *p_lastLocation;
        v16 = v14;
        v17 = [v15 description];
        v18 = [v5 description];
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
    if (!v5)
    {
      goto LABEL_9;
    }
  }

  [v5 horizontalAccuracy];
  v13 = v12 >= 70.0 || v11;
  if (v13 == 1)
  {
    goto LABEL_9;
  }

  objc_storeStrong(p_lastLocation, a3);
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

- (void)ingestTAEvent:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SADeviceRecord *)self _updateSingleDeviceRecordForDevice:v4];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SADeviceRecord *)self _updateDeviceRecordOnDeviceUpdateEvent:v4];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SADeviceRecord *)self _updateConnectionStateOnConnectionEvent:v4];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SADeviceRecord *)self _updateLatestCaseAdvertisementDate:v4];
    [(SADeviceRecord *)self _updateAdvertisingStartDateForHELE:v4];
    [(SADeviceRecord *)self _updateLatestAdvertisement:v4];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SADeviceRecord *)self updateLocation:v4];
  }
}

- (SADeviceRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SADeviceRecord;
  v5 = [(SADeviceRecord *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DeviceRecord"];
    deviceRecord = v5->_deviceRecord;
    v5->_deviceRecord = v6;
  }

  return v5;
}

- (void)updatedWithYouStatusFrom:(unint64_t)a3 to:(unint64_t)a4 forDeviceWithUUID:(id)a5
{
  v6 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:a5];
  [v6 updateWithYouStatus:a4];
}

@end