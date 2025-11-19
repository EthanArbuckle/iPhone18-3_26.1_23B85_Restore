@interface SAService
- (void)addGeofence:(id)a3;
- (void)cancelSATimeEventForAlarm:(id)a3;
- (void)fetchLastVisit;
- (void)ingestTAEvent:(id)a3;
- (void)notifySeparationsForDevices:(id)a3 withLocation:(id)a4 withContext:(id)a5;
- (void)removeGeofence:(id)a3;
- (void)requestBluetoothScanForTypes:(unint64_t)a3;
- (void)requestLocationForType:(unint64_t)a3;
- (void)requestStateForRegion:(id)a3;
- (void)scheduleSATimeEvent:(double)a3 forAlarm:(id)a4;
- (void)startBackgroundScanning;
- (void)stopBackgroundScanning;
- (void)stopLongAggressiveScan;
- (void)updatedMonitoringState:(unint64_t)a3 forDeviceUUID:(id)a4;
@end

@implementation SAService

- (void)notifySeparationsForDevices:(id)a3 withLocation:(id)a4 withContext:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && [v8 count])
  {
    v11 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      *buf = 134283521;
      v27 = [v8 count];
      _os_log_impl(&dword_2656EA000, v12, OS_LOG_TYPE_DEFAULT, "#sa Service notifyAboutDevices:%{private}lu", buf, 0xCu);
    }

    v13 = [(SAService *)self powerLogger];
    [v13 increaseSeparationAlertsCount:{objc_msgSend(v8, "count")}];

    v14 = [(NSHashTable *)self->_clients allObjects];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v21 + 1) + 8 * v18);
          if (objc_opt_respondsToSelector())
          {
            [v19 separationAlertsService:self notifySeparationsForDevices:v8 withLocation:v9 withContext:v10];
          }

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v16);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)requestBluetoothScanForTypes:(unint64_t)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134283521;
    v20 = a3;
    _os_log_impl(&dword_2656EA000, v5, OS_LOG_TYPE_DEFAULT, "#sa Service requestBluetoothScan:%{private}#lx", buf, 0xCu);
  }

  v6 = [(SAService *)self powerLogger];
  [v6 increaseBTScanCount];

  v7 = [(NSHashTable *)self->_clients allObjects];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 separationAlertsService:self requestBluetoothScanForTypes:a3];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)requestLocationForType:(unint64_t)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134283521;
    v20 = a3;
    _os_log_impl(&dword_2656EA000, v5, OS_LOG_TYPE_DEFAULT, "#sa Service requestLocationForType:%{private}#lx", buf, 0xCu);
  }

  if (a3 == 1)
  {
    v6 = [(SAService *)self powerLogger];
    [v6 increaseWifiLocationRequestCount];
  }

  else
  {
    if (a3)
    {
      goto LABEL_8;
    }

    v6 = [(SAService *)self powerLogger];
    [v6 increaseGpsLocationRequestCount];
  }

LABEL_8:
  v7 = [(NSHashTable *)self->_clients allObjects];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 separationAlertsService:self requestLocationForType:a3];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)addGeofence:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
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
      v6 = v4;
      if ((objc_opt_respondsToSelector() & 1) != 0 && ([v6 isLowPower] & 1) == 0)
      {
        v7 = [(SAService *)self powerLogger];
        [v7 increaseGeofenceCount];
      }
    }

    v8 = [(NSHashTable *)self->_clients allObjects];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * v12);
          if (objc_opt_respondsToSelector())
          {
            [v13 separationAlertsService:self addGeofence:v4];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v10);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)removeGeofence:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2656EA000, v5, OS_LOG_TYPE_DEFAULT, "#sa Service removeGeofence", buf, 2u);
    }

    v6 = [(NSHashTable *)self->_clients allObjects];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            [v11 separationAlertsService:self removeGeofence:v4];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v8);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)requestStateForRegion:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2656EA000, v5, OS_LOG_TYPE_DEFAULT, "#sa Service requestStateForRegion", buf, 2u);
    }

    v6 = [(NSHashTable *)self->_clients allObjects];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            [v11 separationAlertsService:self requestStateForRegion:v4];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v8);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)scheduleSATimeEvent:(double)a3 forAlarm:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    v21 = a3;
    _os_log_impl(&dword_2656EA000, v7, OS_LOG_TYPE_DEFAULT, "#sa Service scheduleSATimeEvent:%{public}#lf", buf, 0xCu);
  }

  v8 = [(NSHashTable *)self->_clients allObjects];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 separationAlertsService:self scheduleSATimeEvent:v6 forAlarm:a3];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)cancelSATimeEventForAlarm:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v19 = 2082;
    v20 = "";
    v21 = 2114;
    v22 = v4;
    _os_log_impl(&dword_2656EA000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa Service cancelSATimeEventForAlarm, uuid:%{public}@}", buf, 0x1Cu);
  }

  v6 = [(NSHashTable *)self->_clients allObjects];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 separationAlertsService:self cancelSATimeEventForAlarm:v4];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

  v4 = [(NSHashTable *)self->_clients allObjects];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 separationAlertsServiceStartBackgroundScanning:self];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

  v4 = [(NSHashTable *)self->_clients allObjects];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 separationAlertsServiceStopBackgroundScanning:self];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

  v4 = [(NSHashTable *)self->_clients allObjects];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 separationAlertsServiceStopLongAggressiveScan:self];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

  v4 = [(NSHashTable *)self->_clients allObjects];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 separationAlertsServiceFetchLastVisit:self];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)ingestTAEvent:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
                  v7 = [v4 description];
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
    v7 = [v4 description];
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
  [SALoggingUtilities logTAEvent:v4, v18, *v19, *&v19[16]];
  v9 = [(SAService *)self clock];
  [v9 ingestTAEvent:v4];

  v10 = [(SAService *)self deviceRecord];
  [v10 ingestTAEvent:v4];

  v11 = [(SAService *)self withYouDetector];
  [v11 ingestTAEvent:v4];

  v12 = [(SAService *)self monitoringSessionManager];
  [v12 ingestTAEvent:v4];

  v13 = [(SAService *)self fenceManager];
  [v13 ingestTAEvent:v4];

  v14 = [(SAService *)self travelTypeClassifier];
  [v14 ingestTAEvent:v4];

  v15 = [(SAService *)self powerLogger];
  [v15 ingestTAEvent:v4];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)updatedMonitoringState:(unint64_t)a3 forDeviceUUID:(id)a4
{
  if ((a3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v6 = a4;
    v7 = [(SAService *)self powerLogger];
    [v7 addMonitoredDevice:v6];
  }
}

@end