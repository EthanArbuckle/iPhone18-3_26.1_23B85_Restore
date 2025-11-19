@interface SAWithYouDetector
+ (id)convertSAWithYouLongScanContextToString:(unint64_t)a3;
+ (id)convertSAWithYouStatusToString:(unint64_t)a3;
- (BOOL)_deviceIsWatch:(id)a3;
- (BOOL)_enoughTimeHasPassedSinceInitializationToMarkNotWithYouForDeviceUUID:(id)a3;
- (BOOL)_isOnlyMonitoringLeashOnlyDevices;
- (BOOL)_isRecentEnoughAdvertisement:(id)a3 forCurrentDate:(id)a4;
- (BOOL)_isStatusBitSetForRelatedDeviceWithShiftIndex:(unint64_t)a3 fromAdvertisement:(id)a4;
- (BOOL)allRelevantDevicesToFindAreFound;
- (BOOL)allSAEnabledDevicesAreFound;
- (BOOL)isExtraDeviceFound:(id)a3 onDate:(id)a4;
- (BOOL)isPeriodicScansAllowed;
- (SABluetoothScanRequestProtocol)bluetoothScanner;
- (SALocationRequestProtocol)locationRequester;
- (SAWithYouDetector)initWithBluetoothScanner:(id)a3 locationRequester:(id)a4 deviceRecord:(id)a5 clock:(id)a6 analytics:(id)a7;
- (double)_maxAgeOfWithYouAdvertisementForDeviceUUID:(id)a3;
- (unint64_t)_finalizeToBeVerifiedStatus:(unint64_t)a3;
- (void)_deviceWithUUID:(id)a3 isWithYouDuringLongScanOnAdvertisement:(id)a4;
- (void)_notifyAllClientsOfWithYouStatusUpdate:(unint64_t)a3 forDeviceWithUUID:(id)a4;
- (void)_scheduleNextAlarmForScanAfterDate:(id)a3;
- (void)_updateAllWithYouStatusOnScanEndedEvent:(id)a3;
- (void)_updateLastWithYouDateAndLocation:(id)a3 forCurrentDate:(id)a4;
- (void)_updateWithYouStatusIfNecessaryOnAdvertisement:(id)a3;
- (void)_updateWithYouStatusIfNecessaryOnConnectionEvent:(id)a3;
- (void)_updateWithYouStatusOfRelatedDevices:(id)a3;
- (void)_updateWithYouStatusOnAdvBufferEmptyEvent:(id)a3;
- (void)didChangeTravelTypeFrom:(unint64_t)a3 to:(unint64_t)a4 hints:(unint64_t)a5;
- (void)forceUpdateWithYouStatus;
- (void)forceUpdateWithYouStatusToFindDevices:(id)a3 withContext:(unint64_t)a4;
- (void)ingestTAEvent:(id)a3;
- (void)requestScanIfNeeded;
- (void)resetAllWithYouStatusAndScanStates;
- (void)resumePeriodicScan;
- (void)updateExtraDeviceInformation:(id)a3;
@end

@implementation SAWithYouDetector

- (SAWithYouDetector)initWithBluetoothScanner:(id)a3 locationRequester:(id)a4 deviceRecord:(id)a5 clock:(id)a6 analytics:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v39.receiver = self;
  v39.super_class = SAWithYouDetector;
  v17 = [(SAWithYouDetector *)&v39 init];
  v18 = v17;
  if (!v17)
  {
    goto LABEL_6;
  }

  v19 = 0;
  if (v14 && v12 && v15)
  {
    [(SAWithYouDetector *)v17 setClock:v15];
    [(SAWithYouDetector *)v18 setBluetoothScanner:v12];
    [(SAWithYouDetector *)v18 setLocationRequester:v13];
    v20 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    [(SAWithYouDetector *)v18 setClients:v20];

    [(SAWithYouDetector *)v18 setDeviceRecord:v14];
    [(SAWithYouDetector *)v18 setLongScanIsOngoing:0];
    [(SAWithYouDetector *)v18 setRequestedShortScan:0];
    [(SAWithYouDetector *)v18 setLastStartOfScan:0];
    [(SAWithYouDetector *)v18 setLastEndOfScan:0];
    v21 = objc_alloc(MEMORY[0x277CBEAA8]);
    v22 = [(SAWithYouDetector *)v18 clock];
    v23 = [v22 getCurrentTime];
    v24 = [v21 initWithTimeInterval:v23 sinceDate:30.0];
    [v15 setupAlarmFireAt:v24 forClient:v18];
    v25 = v38 = v16;
    [(SAWithYouDetector *)v18 setNextScheduledAlarm:v25];

    [(SAWithYouDetector *)v18 setLastLongScanRequest:0];
    [(SAWithYouDetector *)v18 setIsNotifyWhileTravelingEnabled:1];
    [(SAWithYouDetector *)v18 setPreviousBufferEmptyTime:0];
    *&v18->_isPeriodicScansNeeded = 0;
    nextOpportunisticScanDate = v18->_nextOpportunisticScanDate;
    v18->_nextOpportunisticScanDate = 0;

    v27 = [(SAWithYouDetector *)v18 clock];
    v28 = [v27 getCurrentTime];
    initializationTime = v18->_initializationTime;
    v18->_initializationTime = v28;

    v16 = v38;
    v30 = objc_alloc_init(MEMORY[0x277CBEB58]);
    relevantDevicesToFindDuringLongScan = v18->_relevantDevicesToFindDuringLongScan;
    v18->_relevantDevicesToFindDuringLongScan = v30;

    v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
    foundDevicesDuringCurrentScan = v18->_foundDevicesDuringCurrentScan;
    v18->_foundDevicesDuringCurrentScan = v32;

    [(SAWithYouDetector *)v18 setIsFindingRelevantDevices:0];
    lastRelevantDeviceFoundTime = v18->_lastRelevantDeviceFoundTime;
    v18->_lastRelevantDeviceFoundTime = 0;

    v18->_lastLongScanContext = 0;
    objc_storeStrong(&v18->_analytics, a7);
    v18->_extraFoundHELECount = 0;
    v18->_extraFoundNonHELECount = 0;
    lastExtraHELEFoundTime = v18->_lastExtraHELEFoundTime;
    v18->_lastExtraHELEFoundTime = 0;

    lastExtraNonHELEFoundTime = v18->_lastExtraNonHELEFoundTime;
    v18->_lastExtraNonHELEFoundTime = 0;

LABEL_6:
    v19 = v18;
  }

  return v19;
}

- (BOOL)allRelevantDevicesToFindAreFound
{
  v27 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [(SAWithYouDetector *)self relevantDevicesToFindDuringLongScan];
  v4 = [v3 allObjects];

  v5 = [v4 countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        v10 = [(SAWithYouDetector *)self foundDevicesDuringCurrentScan];
        v11 = [v10 objectForKeyedSubscript:v9];

        if (!v11)
        {
          v14 = TASALog;
          if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
          {
            *buf = 68289283;
            v21 = 0;
            v22 = 2082;
            v23 = "";
            v24 = 2113;
            v25 = v9;
            _os_log_impl(&dword_2656EA000, v14, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#sa #withyou at least one device not found yet, uuid:%{private}@}", buf, 0x1Cu);
          }

          result = 0;
          goto LABEL_15;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v16 objects:v26 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    _os_log_impl(&dword_2656EA000, v12, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#sa #withyou all devices found}", buf, 0x12u);
  }

  result = 1;
LABEL_15:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)allSAEnabledDevicesAreFound
{
  v31 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = [(SAWithYouDetector *)self deviceRecord];
  v4 = [v3 getAllUUIDs];

  v5 = [v4 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * v8);
        v10 = [(SAWithYouDetector *)self deviceRecord];
        v11 = [v10 getSADevice:v9];
        if (v11)
        {
          v12 = v11;
          v13 = [(SAWithYouDetector *)self foundDevicesDuringCurrentScan];
          v14 = [v13 objectForKeyedSubscript:v9];

          if (!v14)
          {
            v17 = TASALog;
            if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
            {
              *buf = 68289283;
              v25 = 0;
              v26 = 2082;
              v27 = "";
              v28 = 2113;
              v29 = v9;
              _os_log_impl(&dword_2656EA000, v17, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#sa #withyou at least one sa enabled device not found yet, uuid:%{private}@}", buf, 0x1Cu);
            }

            result = 0;
            goto LABEL_18;
          }
        }

        else
        {
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v20 objects:v30 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v15 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    _os_log_impl(&dword_2656EA000, v15, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#sa #withyou all sa enabled devices found}", buf, 0x12u);
  }

  result = 1;
LABEL_18:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)forceUpdateWithYouStatus
{
  v15 = *MEMORY[0x277D85DE8];
  if (![(SAWithYouDetector *)self longScanIsOngoing])
  {
    [(SAWithYouDetector *)self setLongScanIsOngoing:1];
    [(SAWithYouDetector *)self setRequestedShortScan:1];
    v3 = [(SAWithYouDetector *)self _isOnlyMonitoringLeashOnlyDevices];
    v4 = TASALog;
    v5 = os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        v11 = 68289026;
        v12 = 0;
        v13 = 2082;
        v14 = "";
        _os_log_impl(&dword_2656EA000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa #withyou skip requesting scan - leash-only}", &v11, 0x12u);
      }

      v6 = objc_alloc(MEMORY[0x277D73428]);
      v7 = [(SAWithYouDetector *)self clock];
      v8 = [v7 getCurrentTime];
      WeakRetained = [v6 initWithState:1 date:v8];

      [(SAWithYouDetector *)self _updateAllWithYouStatusOnScanEndedEvent:WeakRetained];
    }

    else
    {
      if (v5)
      {
        v11 = 68289026;
        v12 = 0;
        v13 = 2082;
        v14 = "";
        _os_log_impl(&dword_2656EA000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa #withyou requesting scan to force update withyou status}", &v11, 0x12u);
      }

      WeakRetained = objc_loadWeakRetained(&self->_bluetoothScanner);
      [WeakRetained requestBluetoothScanForTypes:2];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)forceUpdateWithYouStatusToFindDevices:(id)a3 withContext:(unint64_t)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
  {
    v8 = v7;
    v9 = [SAWithYouDetector convertSAWithYouLongScanContextToString:a4];
    buf = 68289539;
    v39 = 2082;
    v40 = "";
    v41 = 2113;
    v42 = v6;
    v43 = 2081;
    v44 = [v9 UTF8String];
    _os_log_impl(&dword_2656EA000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#sa #withyou force update to find devices, device list:%{private}@, context:%{private}s}", &buf, 0x26u);
  }

  [(SAWithYouDetector *)self setLastLongScanContext:a4];
  if ([(SAWithYouDetector *)self _isOnlyMonitoringLeashOnlyDevices])
  {
    goto LABEL_4;
  }

  [(SAWithYouDetector *)self forceUpdateWithYouStatusWithShortScan:1];
  v11 = [(SAWithYouDetector *)self relevantDevicesToFindDuringLongScan];
  [v11 addObjectsFromArray:v6];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v12 = v6;
  v13 = [v12 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v34;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v34 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v33 + 1) + 8 * i);
        if (([(SADeviceRecord *)self->_deviceRecord getConnectionState:v17, v33]& 0xFFFFFFFFFFFFFFFELL) == 2)
        {
          v18 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
          [(SAWithYouDetector *)self _updateLastWithYouDateAndLocation:v17 forCurrentDate:v18];

          v19 = [(SAWithYouDetector *)self foundDevicesDuringCurrentScan];
          v20 = [v19 objectForKeyedSubscript:v17];

          if (!v20)
          {
            v21 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
            v22 = [(SAWithYouDetector *)self foundDevicesDuringCurrentScan];
            [v22 setObject:v21 forKeyedSubscript:v17];

            v23 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
            [(SAWithYouDetector *)self setLastRelevantDeviceFoundTime:v23];
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v14);
  }

  v24 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
  {
    v25 = v24;
    v26 = [(SAWithYouDetector *)self relevantDevicesToFindDuringLongScan];
    v27 = [(SAWithYouDetector *)self foundDevicesDuringCurrentScan];
    buf = 68289539;
    v39 = 2082;
    v40 = "";
    v41 = 2113;
    v42 = v26;
    v43 = 2113;
    v44 = v27;
    _os_log_impl(&dword_2656EA000, v25, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#sa #withyou devices to find, devices to find:%{private}@, devices found:%{private}@}", &buf, 0x26u);
  }

  if (![(SAWithYouDetector *)self allRelevantDevicesToFindAreFound])
  {
    [(SAWithYouDetector *)self setIsFindingRelevantDevices:1];
    v32 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
    {
      buf = 68289026;
      v39 = 2082;
      v40 = "";
      _os_log_impl(&dword_2656EA000, v32, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#sa #withyou some remaining devices to find, requesting long aggressive scan if not already ongoing}", &buf, 0x12u);
    }

LABEL_4:
    [(SAWithYouDetector *)self forceUpdateWithYouStatus];
    goto LABEL_5;
  }

  if ([(SAWithYouDetector *)self isFindingRelevantDevices]&& [(SAWithYouDetector *)self longScanIsOngoing])
  {
    v28 = [(SAWithYouDetector *)self relevantDevicesToFindDuringLongScan];
    [v28 removeAllObjects];

    v29 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289026;
      v39 = 2082;
      v40 = "";
      _os_log_impl(&dword_2656EA000, v29, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa #withyou no more tracked devices to find while long scan is ongoing, requesting to stop long aggressive scan}", &buf, 0x12u);
    }

    v30 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
    [(SAWithYouDetector *)self setLastRelevantDeviceFoundTime:v30];

    [(SAWithYouDetector *)self setIsFindingRelevantDevices:0];
    [(SAWithYouDetector *)self setLongScanIsOngoing:0];
    v31 = [(SAWithYouDetector *)self bluetoothScanner];
    [v31 stopLongAggressiveScan];
  }

LABEL_5:

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isOnlyMonitoringLeashOnlyDevices
{
  v18 = *MEMORY[0x277D85DE8];
  [(SADeviceRecord *)self->_deviceRecord getAllUUIDs];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [(SADeviceRecord *)self->_deviceRecord getSADevice:v8, v13];

        if (v9 && ![(SAWithYouDetector *)self _deviceIsWatch:v8])
        {
          v10 = 0;
          goto LABEL_12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_12:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)resetAllWithYouStatusAndScanStates
{
  [(SADeviceRecord *)self->_deviceRecord resetAllWithYouStatus];
  [(SAWithYouDetector *)self setLongScanIsOngoing:0];
  [(SAWithYouDetector *)self setRequestedShortScan:0];
  [(SAWithYouDetector *)self setLastStartOfScan:0];
  [(SAWithYouDetector *)self setLastEndOfScan:0];
  [(SAWithYouDetector *)self setPreviousBufferEmptyTime:0];
  [(SAWithYouDetector *)self setIsFindingRelevantDevices:0];
  [(SAWithYouDetector *)self setLastRelevantDeviceFoundTime:0];
  [(SAWithYouDetector *)self setLastLongScanContext:0];
  [(SAWithYouDetector *)self setExtraFoundHELECount:0];
  [(SAWithYouDetector *)self setExtraFoundNonHELECount:0];
  [(SAWithYouDetector *)self setLastExtraHELEFoundTime:0];

  [(SAWithYouDetector *)self setLastExtraNonHELEFoundTime:0];
}

- (BOOL)isPeriodicScansAllowed
{
  v3 = [(SAWithYouDetector *)self isNotifyWhileTravelingEnabled];
  if (v3)
  {

    LOBYTE(v3) = [(SAWithYouDetector *)self isPeriodicScansNeeded];
  }

  return v3;
}

- (void)resumePeriodicScan
{
  [(SAWithYouDetector *)self setIsPeriodicScansNeeded:1];

  [(SAWithYouDetector *)self requestScanIfNeeded];
}

- (void)_notifyAllClientsOfWithYouStatusUpdate:(unint64_t)a3 forDeviceWithUUID:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(SAWithYouDetector *)self statusForDeviceWithUUID:v6];
  [(SADeviceRecord *)self->_deviceRecord updatedWithYouStatusFrom:v7 to:a3 forDeviceWithUUID:v6];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = self->_clients;
  v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v14 + 1) + 8 * v12++) updatedWithYouStatusFrom:v7 to:a3 forDeviceWithUUID:{v6, v14}];
      }

      while (v10 != v12);
      v10 = [(NSHashTable *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_updateWithYouStatusIfNecessaryOnConnectionEvent:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  deviceRecord = self->_deviceRecord;
  v6 = [v4 identifier];
  v7 = [(SADeviceRecord *)deviceRecord getSADevice:v6];

  if (v7)
  {
    v8 = [v4 identifier];
    v9 = [(SAWithYouDetector *)self statusForDeviceWithUUID:v8];

    v10 = [v4 state];
    if ((v10 - 2) >= 2)
    {
      if (v10 != 1)
      {
        goto LABEL_12;
      }

      v14 = [v4 identifier];
      v15 = [(SAWithYouDetector *)self _deviceIsWatch:v14];

      if (v15)
      {
        v13 = 2;
      }

      else
      {
        v13 = 4;
      }
    }

    else
    {
      v11 = [v4 identifier];
      v12 = [v4 date];
      [(SAWithYouDetector *)self _updateLastWithYouDateAndLocation:v11 forCurrentDate:v12];

      v13 = 1;
    }

    if (v9 != v13)
    {
      v16 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
        v18 = [v4 identifier];
        v19 = [SAWithYouDetector convertSAWithYouStatusToString:v9];
        v20 = [SAWithYouDetector convertSAWithYouStatusToString:v13];
        v23[0] = 68289795;
        v23[1] = 0;
        v24 = 2082;
        v25 = "";
        v26 = 2113;
        v27 = v18;
        v28 = 2113;
        v29 = v19;
        v30 = 2113;
        v31 = v20;
        _os_log_impl(&dword_2656EA000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa #withyou status updated connection state changed, uuid:%{private}@, oldStatus:%{private}@, newStatus:%{private}@}", v23, 0x30u);
      }

      v21 = [v4 identifier];
      [(SAWithYouDetector *)self _notifyAllClientsOfWithYouStatusUpdate:v13 forDeviceWithUUID:v21];
    }
  }

LABEL_12:

  v22 = *MEMORY[0x277D85DE8];
}

- (double)_maxAgeOfWithYouAdvertisementForDeviceUUID:(id)a3
{
  deviceRecord = self->_deviceRecord;
  v5 = a3;
  v6 = [(SADeviceRecord *)deviceRecord getSADevice:v5];
  v7 = [v6 deviceType];
  v8 = [(SADeviceRecord *)self->_deviceRecord getMonitoringSessionState:v5];

  if (![v6 isAppleAudioAccessory])
  {
    goto LABEL_9;
  }

  if (v8 > 4 || ((1 << v8) & 0x1A) == 0)
  {
    if (v7 == 16)
    {
      v10 = 120.0;
      goto LABEL_10;
    }

LABEL_9:
    v10 = 30.0;
    goto LABEL_10;
  }

  v10 = 360.0;
LABEL_10:

  return v10;
}

- (void)_updateLastWithYouDateAndLocation:(id)a3 forCurrentDate:(id)a4
{
  deviceRecord = self->_deviceRecord;
  v7 = a3;
  [(SADeviceRecord *)deviceRecord updateLastWithYouDate:a4 forDeviceWithUUID:v7];
  [(SADeviceRecord *)self->_deviceRecord updateLastWithYouLocation:0 forDeviceWithUUID:v7];
}

- (BOOL)_isRecentEnoughAdvertisement:(id)a3 forCurrentDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 scanDate];
  [v6 timeIntervalSinceDate:v8];
  v10 = v9;

  v11 = [v7 uuid];

  [(SAWithYouDetector *)self _maxAgeOfWithYouAdvertisementForDeviceUUID:v11];
  LOBYTE(v7) = v10 <= v12;

  return v7;
}

- (BOOL)isExtraDeviceFound:(id)a3 onDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (-[SAWithYouDetector isFindingRelevantDevices](self, "isFindingRelevantDevices") || (-[SAWithYouDetector relevantDevicesToFindDuringLongScan](self, "relevantDevicesToFindDuringLongScan"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 containsObject:v6], v8, (v9 & 1) != 0))
  {
    v10 = 0;
  }

  else
  {
    v11 = [(SAWithYouDetector *)self lastStartOfScan];
    v12 = [v11 dateByAddingTimeInterval:7.0];

    v13 = [(SAWithYouDetector *)self lastRelevantDeviceFoundTime];

    if (v13)
    {
      v14 = [(SAWithYouDetector *)self lastRelevantDeviceFoundTime];
      v15 = [v12 laterDate:v14];

      v12 = v15;
    }

    if ([v12 compare:v7] == -1)
    {
      v16 = [(SAWithYouDetector *)self deviceRecord];
      v17 = [v16 getMonitoringSessionState:v6];

      v18 = [(SAWithYouDetector *)self deviceRecord];
      v19 = [v18 getScenarioClass:v6];

      v10 = v17 == 2 && (v19 & 0xFFFFFFFFFFFFFFFELL) == 2;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)updateExtraDeviceInformation:(id)a3
{
  v11 = a3;
  v4 = [(SAWithYouDetector *)self deviceRecord];
  v5 = [v4 getSADevice:v11];
  v6 = [v5 deviceType];

  if (v6 == 16)
  {
    [(SAWithYouDetector *)self setExtraFoundHELECount:[(SAWithYouDetector *)self extraFoundHELECount]+ 1];
    v7 = [(SAWithYouDetector *)self lastExtraHELEFoundTime];
    v8 = [(SAWithYouDetector *)self foundDevicesDuringCurrentScan];
    v9 = [v8 objectForKeyedSubscript:v11];
    v10 = [v7 laterDate:v9];
    [(SAWithYouDetector *)self setLastExtraHELEFoundTime:v10];
  }

  else
  {
    [(SAWithYouDetector *)self setExtraFoundNonHELECount:[(SAWithYouDetector *)self extraFoundNonHELECount]+ 1];
    v7 = [(SAWithYouDetector *)self lastExtraNonHELEFoundTime];
    v8 = [(SAWithYouDetector *)self foundDevicesDuringCurrentScan];
    v9 = [v8 objectForKeyedSubscript:v11];
    v10 = [v7 laterDate:v9];
    [(SAWithYouDetector *)self setLastExtraNonHELEFoundTime:v10];
  }
}

- (void)_deviceWithUUID:(id)a3 isWithYouDuringLongScanOnAdvertisement:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SAWithYouDetector *)self foundDevicesDuringCurrentScan];
  v9 = [v8 objectForKeyedSubscript:v6];

  if (!v9)
  {
    v10 = [(SAWithYouDetector *)self lastStartOfScan];
    if (!v10)
    {
      goto LABEL_4;
    }

    v11 = v10;
    v12 = [v7 getDate];
    v13 = [(SAWithYouDetector *)self lastStartOfScan];
    [v12 timeIntervalSinceDate:v13];
    v15 = v14;

    if (v15 >= 0.0)
    {
LABEL_4:
      v16 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
      {
        v34 = 68289283;
        v35 = 0;
        v36 = 2082;
        v37 = "";
        v38 = 2113;
        v39 = v6;
        _os_log_impl(&dword_2656EA000, v16, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#sa #withyou found new device, uuid:%{private}@}", &v34, 0x1Cu);
      }

      v17 = [v7 getDate];
      v18 = [(SAWithYouDetector *)self foundDevicesDuringCurrentScan];
      [v18 setObject:v17 forKeyedSubscript:v6];

      v19 = [v7 uuid];
      v20 = [v7 getDate];
      v21 = [(SAWithYouDetector *)self isExtraDeviceFound:v19 onDate:v20];

      if (v21)
      {
        v22 = [v7 uuid];
        [(SAWithYouDetector *)self updateExtraDeviceInformation:v22];
      }
    }

    v23 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
    {
      v24 = v23;
      v25 = [(SAWithYouDetector *)self relevantDevicesToFindDuringLongScan];
      v26 = [(SAWithYouDetector *)self foundDevicesDuringCurrentScan];
      v34 = 68289539;
      v35 = 0;
      v36 = 2082;
      v37 = "";
      v38 = 2113;
      v39 = v25;
      v40 = 2113;
      v41 = v26;
      _os_log_impl(&dword_2656EA000, v24, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#sa #withyou devices to find, devices to find:%{private}@, devices found:%{private}@}", &v34, 0x26u);
    }

    v27 = [(SAWithYouDetector *)self allSAEnabledDevicesAreFound];
    if ([(SAWithYouDetector *)self isFindingRelevantDevices]&& [(SAWithYouDetector *)self allRelevantDevicesToFindAreFound])
    {
      v28 = [(SAWithYouDetector *)self relevantDevicesToFindDuringLongScan];
      [v28 removeAllObjects];

      v29 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
      {
        v34 = 68289026;
        v35 = 0;
        v36 = 2082;
        v37 = "";
        _os_log_impl(&dword_2656EA000, v29, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa #withyou no more devices to find while long scan is ongoing, recording time of last device found for metrics}", &v34, 0x12u);
      }

      v30 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
      [(SAWithYouDetector *)self setLastRelevantDeviceFoundTime:v30];

      [(SAWithYouDetector *)self setIsFindingRelevantDevices:0];
      [(SAWithYouDetector *)self setLongScanIsOngoing:0];
    }

    else if (!v27)
    {
      goto LABEL_19;
    }

    v31 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 68289026;
      v35 = 0;
      v36 = 2082;
      v37 = "";
      _os_log_impl(&dword_2656EA000, v31, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa #withyou no more tracked devices to find while long scan is ongoing, requesting to stop long aggressive scan}", &v34, 0x12u);
    }

    [(SAWithYouDetector *)self setLongScanIsOngoing:0];
    v32 = [(SAWithYouDetector *)self bluetoothScanner];
    [v32 stopLongAggressiveScan];
  }

LABEL_19:

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_updateWithYouStatusIfNecessaryOnAdvertisement:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 uuid];
  if (v5)
  {
    v6 = v5;
    deviceRecord = self->_deviceRecord;
    v8 = [v4 uuid];
    v9 = [(SADeviceRecord *)deviceRecord getSADevice:v8];

    if (v9)
    {
      v10 = [v4 uuid];
      v11 = [v4 scanDate];
      [(SAWithYouDetector *)self _updateLastWithYouDateAndLocation:v10 forCurrentDate:v11];

      v12 = [v4 uuid];
      LOBYTE(v11) = [(SAWithYouDetector *)self _deviceIsWatch:v12];

      if ((v11 & 1) == 0)
      {
        v13 = [v4 uuid];
        v14 = [(SAWithYouDetector *)self statusForDeviceWithUUID:v13];

        v15 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
        v16 = [(SAWithYouDetector *)self _isRecentEnoughAdvertisement:v4 forCurrentDate:v15];

        v17 = v16;
        if ([(SAWithYouDetector *)self longScanIsOngoing]&& v16)
        {
          v18 = [v4 uuid];
          [(SAWithYouDetector *)self _deviceWithUUID:v18 isWithYouDuringLongScanOnAdvertisement:v4];
        }

        if (v17 && v14 != v17)
        {
          v19 = TASALog;
          if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
          {
            v20 = v19;
            v21 = [v4 uuid];
            v22 = [SAWithYouDetector convertSAWithYouStatusToString:v14];
            v23 = [SAWithYouDetector convertSAWithYouStatusToString:1];
            v26[0] = 68289795;
            v26[1] = 0;
            v27 = 2082;
            v28 = "";
            v29 = 2113;
            v30 = v21;
            v31 = 2113;
            v32 = v22;
            v33 = 2113;
            v34 = v23;
            _os_log_impl(&dword_2656EA000, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa #withyou status updated observed advertisement, uuid:%{private}@, oldStatus:%{private}@, newStatus:%{private}@}", v26, 0x30u);
          }

          v24 = [v4 uuid];
          [(SAWithYouDetector *)self _notifyAllClientsOfWithYouStatusUpdate:1 forDeviceWithUUID:v24];
        }

        [(SAWithYouDetector *)self _updateWithYouStatusOfRelatedDevices:v4];
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_updateWithYouStatusOfRelatedDevices:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  deviceRecord = self->_deviceRecord;
  v6 = [v4 uuid];
  v7 = [(SADeviceRecord *)deviceRecord getRelatedDevices:v6];

  if (v7)
  {
    v8 = [v7 count];
    v10 = v8;
    if (v8 > 3)
    {
      v29 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_FAULT))
      {
        v30 = v29;
        v31 = [v4 uuid];
        *buf = 68289539;
        v35 = 0;
        v36 = 2082;
        v37 = "";
        v38 = 2113;
        v39 = v31;
        v40 = 2049;
        v41 = v10;
        _os_log_impl(&dword_2656EA000, v30, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#sa #withyou detected a device with more than maximum allowable related beacons, uuid:%{private}@, count:%{private}ld}", buf, 0x26u);
      }
    }

    else if (v8)
    {
      v11 = 0;
      *&v9 = 68289795;
      v33 = v9;
      do
      {
        v12 = [v7 objectAtIndexedSubscript:{v11, v33}];
        v13 = [(SAWithYouDetector *)self deviceRecord];
        v14 = [v4 uuid];
        v15 = [v13 getSADevice:v14];
        v16 = [v15 partIdentifier];

        v17 = [(SAWithYouDetector *)self deviceRecord];
        v18 = [v17 getSADevice:v12];
        v19 = [v18 partIdentifier];

        if ([(SAWithYouDetector *)self _isValidPartID:v16]&& [(SAWithYouDetector *)self _isValidPartID:v19]&& v19 != v16)
        {
          v20 = v19 <= v16 ? v19 - v16 + 3 : v19 + ~v16;
          if ([(SAWithYouDetector *)self _isStatusBitSetForRelatedDeviceWithShiftIndex:v20 fromAdvertisement:v4])
          {
            v21 = [v4 scanDate];
            [(SAWithYouDetector *)self _updateLastWithYouDateAndLocation:v12 forCurrentDate:v21];

            v22 = [(SAWithYouDetector *)self statusForDeviceWithUUID:v12];
            v23 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
            v24 = [(SAWithYouDetector *)self _isRecentEnoughAdvertisement:v4 forCurrentDate:v23];

            [(SADeviceRecord *)self->_deviceRecord updateLatestAdvertisement:v4 forDeviceWithUUID:v12];
            if ([(SAWithYouDetector *)self longScanIsOngoing]&& v24)
            {
              [(SAWithYouDetector *)self _deviceWithUUID:v12 isWithYouDuringLongScanOnAdvertisement:v4];
            }

            if (v24 && v22 != v24)
            {
              v25 = TASALog;
              if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
              {
                v26 = v25;
                v27 = [SAWithYouDetector convertSAWithYouStatusToString:v22];
                v28 = [SAWithYouDetector convertSAWithYouStatusToString:1];
                *buf = v33;
                v35 = 0;
                v36 = 2082;
                v37 = "";
                v38 = 2113;
                v39 = v12;
                v40 = 2113;
                v41 = v27;
                v42 = 2113;
                v43 = v28;
                _os_log_impl(&dword_2656EA000, v26, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa #withyou status updated observed advertisement from related device, uuid:%{private}@, oldStatus:%{private}@, newStatus:%{private}@}", buf, 0x30u);
              }

              [(SAWithYouDetector *)self _notifyAllClientsOfWithYouStatusUpdate:1 forDeviceWithUUID:v12];
            }
          }
        }

        ++v11;
      }

      while (v10 != v11);
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isStatusBitSetForRelatedDeviceWithShiftIndex:(unint64_t)a3 fromAdvertisement:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = v5;
  if (a3 < 3)
  {
    v9 = dword_26571E588[a3];
    v8 = ([v5 status] >> v9) & 1;
  }

  else
  {
    v7 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_FAULT))
    {
      v12[0] = 68289026;
      v12[1] = 0;
      v13 = 2082;
      v14 = "";
      _os_log_impl(&dword_2656EA000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#sa #withyou trying to get status bit of related device at out of bound index}", v12, 0x12u);
    }

    LOBYTE(v8) = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

- (unint64_t)_finalizeToBeVerifiedStatus:(unint64_t)a3
{
  v3 = 1;
  if (a3 != 3)
  {
    v3 = a3;
  }

  if (a3 == 4)
  {
    return 2;
  }

  else
  {
    return v3;
  }
}

- (BOOL)_enoughTimeHasPassedSinceInitializationToMarkNotWithYouForDeviceUUID:(id)a3
{
  deviceRecord = self->_deviceRecord;
  v5 = a3;
  v6 = [(SADeviceRecord *)deviceRecord getSADevice:v5];
  v7 = [(SADeviceRecord *)self->_deviceRecord getMonitoringSessionState:v5];

  if (![v6 isAppleAudioAccessory])
  {
    goto LABEL_10;
  }

  if (v7 > 4 || ((1 << v7) & 0x1A) == 0)
  {
    if ([v6 deviceType] == 16)
    {
      v9 = 120.0;
      goto LABEL_7;
    }

LABEL_10:
    v14 = 1;
    goto LABEL_11;
  }

  v9 = 360.0;
LABEL_7:
  v10 = [(SAWithYouDetector *)self clock];
  v11 = [v10 getCurrentTime];
  v12 = [(SAWithYouDetector *)self initializationTime];
  [v11 timeIntervalSinceDate:v12];
  v14 = v13 >= v9;

LABEL_11:
  return v14;
}

- (void)_updateAllWithYouStatusOnScanEndedEvent:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v43 = a3;
  v4 = [v43 date];
  [(SAWithYouDetector *)self setLastEndOfScan:v4];

  v5 = [(SADeviceRecord *)self->_deviceRecord getAllUUIDs];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v48 objects:v63 count:16];
  v42 = v5;
  if (v6)
  {
    v7 = v6;
    v8 = *v49;
    do
    {
      v9 = 0;
      do
      {
        if (*v49 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v48 + 1) + 8 * v9);
        v11 = [(SADeviceRecord *)self->_deviceRecord getSADevice:v10];

        if (v11)
        {
          v12 = [(SADeviceRecord *)self->_deviceRecord getConnectionState:v10];
          v13 = [(SAWithYouDetector *)self statusForDeviceWithUUID:v10];
          if ([(SAWithYouDetector *)self _deviceIsWatch:v10])
          {
            if ((v12 & 0xFFFFFFFFFFFFFFFELL) == 2)
            {
              v14 = [v43 date];
              [(SAWithYouDetector *)self _updateLastWithYouDateAndLocation:v10 forCurrentDate:v14];

              v17 = 1;
            }

            else
            {
              v17 = 2;
            }

            goto LABEL_24;
          }

          if ((v12 & 0xFFFFFFFFFFFFFFFELL) != 2)
          {
            v18 = [(SADeviceRecord *)self->_deviceRecord getLatestAdvertisement:v10];

            if (!v18)
            {
              if ([(SAWithYouDetector *)self _enoughTimeHasPassedSinceInitializationToMarkNotWithYouForDeviceUUID:v10])
              {
                v16 = 2;
              }

              else
              {
                v16 = v13;
              }

              goto LABEL_23;
            }

            v19 = [(SAWithYouDetector *)self lastStartOfScan];

            v16 = v13;
            if (v19)
            {
              v20 = [(SADeviceRecord *)self->_deviceRecord getLatestAdvertisement:v10];
              v21 = [v20 scanDate];
              v22 = [(SAWithYouDetector *)self lastStartOfScan];
              [v21 timeIntervalSinceDate:v22];
              if (v23 >= 0.0)
              {
              }

              else
              {
                v24 = [(SADeviceRecord *)self->_deviceRecord getLatestAdvertisement:v10];
                [v43 date];
                v25 = v41 = v20;
                v40 = [(SAWithYouDetector *)self _isRecentEnoughAdvertisement:v24 forCurrentDate:v25];

                v5 = v42;
                if (!v40)
                {
                  v16 = 2;
                  goto LABEL_23;
                }
              }

LABEL_14:
              v16 = 1;
            }

LABEL_23:
            v17 = [(SAWithYouDetector *)self _finalizeToBeVerifiedStatus:v16];
LABEL_24:
            if (v13 != v17 && v17 != 0)
            {
              v27 = TASALog;
              if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
              {
                v28 = v27;
                v29 = [SAWithYouDetector convertSAWithYouStatusToString:v13];
                v30 = [SAWithYouDetector convertSAWithYouStatusToString:v17];
                *buf = 68289795;
                v54 = 0;
                v55 = 2082;
                v56 = "";
                v57 = 2113;
                v58 = v10;
                v59 = 2113;
                v60 = v29;
                v61 = 2113;
                v62 = v30;
                _os_log_impl(&dword_2656EA000, v28, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa #withyou status updated end of scan, uuid:%{private}@, oldStatus:%{private}@, newStatus:%{private}@}", buf, 0x30u);

                v5 = v42;
              }

              [(SAWithYouDetector *)self _notifyAllClientsOfWithYouStatusUpdate:v17 forDeviceWithUUID:v10];
            }

            goto LABEL_31;
          }

          v15 = [v43 date];
          [(SAWithYouDetector *)self _updateLastWithYouDateAndLocation:v10 forCurrentDate:v15];

          goto LABEL_14;
        }

LABEL_31:
        ++v9;
      }

      while (v7 != v9);
      v31 = [v5 countByEnumeratingWithState:&v48 objects:v63 count:16];
      v7 = v31;
    }

    while (v31);
  }

  v32 = [(SAWithYouDetector *)self foundDevicesDuringCurrentScan];
  [v32 removeAllObjects];

  v33 = [(SAWithYouDetector *)self relevantDevicesToFindDuringLongScan];
  [v33 removeAllObjects];

  [(SAWithYouDetector *)self setIsFindingRelevantDevices:0];
  if ([(SAWithYouDetector *)self longScanIsOngoing]|| [(SAWithYouDetector *)self requestedShortScan])
  {
    [(SAWithYouDetector *)self setLongScanIsOngoing:0];
    [(SAWithYouDetector *)self setRequestedShortScan:0];
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v34 = self->_clients;
    v35 = [(NSHashTable *)v34 countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v45;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v45 != v37)
          {
            objc_enumerationMutation(v34);
          }

          [*(*(&v44 + 1) + 8 * i) didForceUpdateWithYouStatus];
        }

        v36 = [(NSHashTable *)v34 countByEnumeratingWithState:&v44 objects:v52 count:16];
      }

      while (v36);
    }

    v5 = v42;
  }

  [(SAWithYouDetector *)self requestScanIfNeeded];

  v39 = *MEMORY[0x277D85DE8];
}

- (void)_updateWithYouStatusOnAdvBufferEmptyEvent:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SAWithYouDetector *)self previousBufferEmptyTime];

  if (!v5)
  {
    v30 = [v4 date];
    [(SAWithYouDetector *)self setPreviousBufferEmptyTime:v30];

    goto LABEL_28;
  }

  v32 = v4;
  [(SADeviceRecord *)self->_deviceRecord getAllUUIDs];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v37 = 0u;
  v6 = [obj countByEnumeratingWithState:&v34 objects:v48 count:16];
  if (!v6)
  {
    goto LABEL_26;
  }

  v7 = v6;
  v8 = *v35;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v35 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v34 + 1) + 8 * i);
      v11 = [(SADeviceRecord *)self->_deviceRecord getSADevice:v10];

      if (v11)
      {
        v12 = [(SADeviceRecord *)self->_deviceRecord getSADevice:v10];
        v13 = [v12 deviceType];

        if (v13 == 16)
        {
          v14 = [(SAWithYouDetector *)self statusForDeviceWithUUID:v10];
          v15 = [(SAWithYouDetector *)self previousBufferEmptyTime];
          v16 = [(SAWithYouDetector *)self lastEndOfScan];

          if (v16)
          {
            v17 = [(SAWithYouDetector *)self previousBufferEmptyTime];
            v18 = [(SAWithYouDetector *)self lastEndOfScan];
            v19 = [v17 laterDate:v18];

            v15 = v19;
          }

          v20 = [(SADeviceRecord *)self->_deviceRecord getLatestAdvertisement:v10];
          if (v20 && (v21 = v20, [(SADeviceRecord *)self->_deviceRecord getLatestAdvertisement:v10], v22 = objc_claimAutoreleasedReturnValue(), v23 = [(SAWithYouDetector *)self _isRecentEnoughAdvertisement:v22 forCurrentDate:v15], v22, v21, v23))
          {
            v24 = 1;
LABEL_18:
            if (v14 != v24 && v24)
            {
              v25 = TASALog;
              if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
              {
                v26 = v25;
                v27 = [SAWithYouDetector convertSAWithYouStatusToString:v14];
                v28 = [SAWithYouDetector convertSAWithYouStatusToString:v24];
                *buf = 68289795;
                v39 = 0;
                v40 = 2082;
                v41 = "";
                v42 = 2113;
                v43 = v10;
                v44 = 2113;
                v45 = v27;
                v46 = 2113;
                v47 = v28;
                _os_log_impl(&dword_2656EA000, v26, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa #withyou status updated on adv buffer empty event, uuid:%{private}@, oldStatus:%{private}@, newStatus:%{private}@}", buf, 0x30u);
              }

              [(SAWithYouDetector *)self _notifyAllClientsOfWithYouStatusUpdate:v24 forDeviceWithUUID:v10];
            }
          }

          else if (v14 != 2)
          {
            if ([(SAWithYouDetector *)self _enoughTimeHasPassedSinceInitializationToMarkNotWithYouForDeviceUUID:v10])
            {
              v24 = 4;
            }

            else
            {
              v24 = v14;
            }

            goto LABEL_18;
          }

          continue;
        }
      }
    }

    v7 = [obj countByEnumeratingWithState:&v34 objects:v48 count:16];
  }

  while (v7);
LABEL_26:
  v4 = v32;
  v29 = [v32 date];
  [(SAWithYouDetector *)self setPreviousBufferEmptyTime:v29];

LABEL_28:
  v31 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleNextAlarmForScanAfterDate:(id)a3
{
  v12 = a3;
  if ([(SAWithYouDetector *)self isPeriodicScansAllowed])
  {
    v4 = [(SAWithYouDetector *)self nextScheduledAlarm];

    if (v4)
    {
      v5 = [(SAWithYouDetector *)self clock];
      v6 = [(SAWithYouDetector *)self nextScheduledAlarm];
      [v5 cancelAlarmWithUUID:v6];

      [(SAWithYouDetector *)self setNextScheduledAlarm:0];
    }

    v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeInterval:v12 sinceDate:300.0];
    v8 = [(SAWithYouDetector *)self isInVehicularTravel];
    v9 = v7;
    if (!v8)
    {
      v10 = [(SAWithYouDetector *)self clock];
      v11 = [v10 setupAlarmFireAt:v7 forClient:self];
      [(SAWithYouDetector *)self setNextScheduledAlarm:v11];

      v9 = 0;
    }

    [(SAWithYouDetector *)self setNextOpportunisticScanDate:v9];
  }

  else
  {
    [(SAWithYouDetector *)self setNextOpportunisticScanDate:0];
  }
}

- (void)ingestTAEvent:(id)a3
{
  v43 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SAWithYouDetector *)self _updateWithYouStatusIfNecessaryOnAdvertisement:v43];
      goto LABEL_27;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v43;
      if ([v4 state] == 1)
      {
        v5 = [(SAWithYouDetector *)self lastLongScanRequest];

        if (v5)
        {
          v6 = v4;
          if ([(SAWithYouDetector *)self isFindingRelevantDevices])
          {
            v7 = [v6 date];
            [(SAWithYouDetector *)self setLastRelevantDeviceFoundTime:v7];

            v8 = [(SAWithYouDetector *)self relevantDevicesToFindDuringLongScan];
            [v8 removeAllObjects];

            [(SAWithYouDetector *)self setIsFindingRelevantDevices:0];
          }

          v9 = [v6 date];
          v10 = [(SAWithYouDetector *)self lastLongScanRequest];
          [v9 timeIntervalSinceDate:v10];
          v12 = v11;

          v13 = [(SAWithYouDetector *)self lastRelevantDeviceFoundTime];
          if (v13)
          {
            v14 = [(SAWithYouDetector *)self lastRelevantDeviceFoundTime];
            v15 = [(SAWithYouDetector *)self lastLongScanRequest];
            [v14 timeIntervalSinceDate:v15];
            v17 = v16;
          }

          else
          {
            v17 = 0.0;
          }

          v25 = [(SAWithYouDetector *)self lastExtraHELEFoundTime];
          v26 = [(SAWithYouDetector *)self lastLongScanRequest];
          [v25 timeIntervalSinceDate:v26];
          v28 = v27;

          v29 = [(SAWithYouDetector *)self lastExtraNonHELEFoundTime];
          v30 = [(SAWithYouDetector *)self lastLongScanRequest];
          [v29 timeIntervalSinceDate:v30];
          v32 = v31;

          [(SAWithYouDetector *)self sendScanContextToCoreAnalytics:2 isPartOfLongScan:1 scanDuration:[(SAWithYouDetector *)self extraFoundHELECount] relevantOnlyScanDuration:[(SAWithYouDetector *)self extraFoundNonHELECount] foundExtraHELECount:[(SAWithYouDetector *)self lastLongScanContext] extraHELEScanDuration:v12 foundExtraNonHELECount:v17 extraNonHELEScanDuration:v28 longScanContext:v32];
          v33 = [(SAWithYouDetector *)self analytics];
          [v33 addScanDuration:v12];

          v34 = [(SAWithYouDetector *)self analytics];
          v35 = v34;
          v36 = 6.0;
          if (v17 >= 6.0)
          {
            v36 = v17;
          }

          [v34 addScanDurationForFindingRelevantItemsOnly:v36];

          [(SAWithYouDetector *)self setLastLongScanRequest:0];
          [(SAWithYouDetector *)self setLastRelevantDeviceFoundTime:0];
          [(SAWithYouDetector *)self setExtraFoundHELECount:0];
          [(SAWithYouDetector *)self setExtraFoundNonHELECount:0];
          [(SAWithYouDetector *)self setLastExtraHELEFoundTime:0];
          [(SAWithYouDetector *)self setLastExtraNonHELEFoundTime:0];
        }

        [(SAWithYouDetector *)self _updateAllWithYouStatusOnScanEndedEvent:v4];
        goto LABEL_26;
      }

      if ([v4 state] == 2)
      {
        v18 = [v4 date];
        v19 = [v18 dateByAddingTimeInterval:-1.0];
        [(SAWithYouDetector *)self setLastStartOfScan:v19];

LABEL_17:
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_27;
      }

      v4 = v43;
      if ([v4 systemStateType] != 15)
      {
        if ([v4 systemStateType] != 11 || !objc_msgSend(v4, "isOn"))
        {
          goto LABEL_26;
        }

        v18 = [(SAWithYouDetector *)self clock];
        v20 = objc_alloc(MEMORY[0x277CBEAA8]);
        v21 = [(SAWithYouDetector *)self clock];
        v22 = [v21 getCurrentTime];
        v23 = [v20 initWithTimeInterval:v22 sinceDate:30.0];
        v24 = [v18 setupAlarmFireAt:v23 forClient:self];
        [(SAWithYouDetector *)self setNextScheduledAlarm:v24];

        goto LABEL_17;
      }

      [(SAWithYouDetector *)self _updateWithYouStatusOnAdvBufferEmptyEvent:v4];
    }

LABEL_26:

    goto LABEL_27;
  }

  [(SAWithYouDetector *)self _updateWithYouStatusIfNecessaryOnConnectionEvent:v43];
LABEL_27:
  if ([(SAWithYouDetector *)self isInVehicularTravel])
  {
    v37 = [(SAWithYouDetector *)self nextOpportunisticScanDate];
    if (v37)
    {
      v38 = v37;
      v39 = [v43 getDate];
      v40 = [(SAWithYouDetector *)self nextOpportunisticScanDate];
      [v39 timeIntervalSinceDate:v40];
      v42 = v41;

      if (v42 >= 0.0)
      {
        [(SAWithYouDetector *)self requestScanIfNeeded];
      }
    }
  }
}

- (void)requestScanIfNeeded
{
  v3 = [(SAWithYouDetector *)self deviceRecord];
  v4 = [v3 getAllUUIDs];
  v5 = [v4 count];

  if (v5)
  {
    v14 = [(SAWithYouDetector *)self lastEndOfScan];
    if (!v14)
    {
      goto LABEL_5;
    }

    v6 = [(SAWithYouDetector *)self clock];
    v7 = [v6 getCurrentTime];
    [v7 timeIntervalSinceDate:v14];
    v9 = v8;

    if (v9 < 300.0)
    {
      v10 = 0;
    }

    else
    {
LABEL_5:
      v11 = [(SAWithYouDetector *)self clock];
      v12 = [v11 getCurrentTime];

      v10 = 1;
      v14 = v12;
    }

    if ([(SAWithYouDetector *)self isPeriodicScansAllowed])
    {
      [(SAWithYouDetector *)self _scheduleNextAlarmForScanAfterDate:v14];
      if (!v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      [(SAWithYouDetector *)self setNextOpportunisticScanDate:0];
      if (!v10)
      {
LABEL_15:

        return;
      }
    }

    [(SAWithYouDetector *)self forceUpdateWithYouStatusWithShortScan:0];
    if (![(SAWithYouDetector *)self isInVehicularTravel])
    {
      v13 = [(SAWithYouDetector *)self locationRequester];
      [v13 requestLocationForType:0];
    }

    goto LABEL_15;
  }

  [(SAWithYouDetector *)self setNextOpportunisticScanDate:0];
}

- (BOOL)_deviceIsWatch:(id)a3
{
  v3 = [(SADeviceRecord *)self->_deviceRecord getSADevice:a3];
  v4 = [v3 deviceType] == 8;

  return v4;
}

+ (id)convertSAWithYouStatusToString:(unint64_t)a3
{
  if (a3 - 1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_279B9C710[a3 - 1];
  }
}

+ (id)convertSAWithYouLongScanContextToString:(unint64_t)a3
{
  if (a3 - 1 > 9)
  {
    return @"Unknown";
  }

  else
  {
    return off_279B9C730[a3 - 1];
  }
}

- (void)didChangeTravelTypeFrom:(unint64_t)a3 to:(unint64_t)a4 hints:(unint64_t)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [SATravelTypeClassifier convertSATravelTypeToString:a3];
    v11 = [SATravelTypeClassifier convertSATravelTypeToString:a4];
    v13[0] = 68289539;
    v13[1] = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2113;
    v17 = v10;
    v18 = 2113;
    v19 = v11;
    _os_log_impl(&dword_2656EA000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa #withyou travel type change, from:%{private}@, to:%{private}@}", v13, 0x26u);
  }

  if (a4 == 2)
  {
    [(SAWithYouDetector *)self setIsInVehicularTravel:0];
    if ([(SAWithYouDetector *)self isPeriodicScansAllowed])
    {
      [(SAWithYouDetector *)self requestScanIfNeeded];
    }
  }

  else if (a4 == 1)
  {
    [(SAWithYouDetector *)self setIsInVehicularTravel:1];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (SABluetoothScanRequestProtocol)bluetoothScanner
{
  WeakRetained = objc_loadWeakRetained(&self->_bluetoothScanner);

  return WeakRetained;
}

- (SALocationRequestProtocol)locationRequester
{
  WeakRetained = objc_loadWeakRetained(&self->_locationRequester);

  return WeakRetained;
}

@end