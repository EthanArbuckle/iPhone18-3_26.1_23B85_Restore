@interface SAWithYouDetector
+ (id)convertSAWithYouLongScanContextToString:(unint64_t)string;
+ (id)convertSAWithYouStatusToString:(unint64_t)string;
- (BOOL)_deviceIsWatch:(id)watch;
- (BOOL)_enoughTimeHasPassedSinceInitializationToMarkNotWithYouForDeviceUUID:(id)d;
- (BOOL)_isOnlyMonitoringLeashOnlyDevices;
- (BOOL)_isRecentEnoughAdvertisement:(id)advertisement forCurrentDate:(id)date;
- (BOOL)_isStatusBitSetForRelatedDeviceWithShiftIndex:(unint64_t)index fromAdvertisement:(id)advertisement;
- (BOOL)allRelevantDevicesToFindAreFound;
- (BOOL)allSAEnabledDevicesAreFound;
- (BOOL)isExtraDeviceFound:(id)found onDate:(id)date;
- (BOOL)isPeriodicScansAllowed;
- (SABluetoothScanRequestProtocol)bluetoothScanner;
- (SALocationRequestProtocol)locationRequester;
- (SAWithYouDetector)initWithBluetoothScanner:(id)scanner locationRequester:(id)requester deviceRecord:(id)record clock:(id)clock analytics:(id)analytics;
- (double)_maxAgeOfWithYouAdvertisementForDeviceUUID:(id)d;
- (unint64_t)_finalizeToBeVerifiedStatus:(unint64_t)status;
- (void)_deviceWithUUID:(id)d isWithYouDuringLongScanOnAdvertisement:(id)advertisement;
- (void)_notifyAllClientsOfWithYouStatusUpdate:(unint64_t)update forDeviceWithUUID:(id)d;
- (void)_scheduleNextAlarmForScanAfterDate:(id)date;
- (void)_updateAllWithYouStatusOnScanEndedEvent:(id)event;
- (void)_updateLastWithYouDateAndLocation:(id)location forCurrentDate:(id)date;
- (void)_updateWithYouStatusIfNecessaryOnAdvertisement:(id)advertisement;
- (void)_updateWithYouStatusIfNecessaryOnConnectionEvent:(id)event;
- (void)_updateWithYouStatusOfRelatedDevices:(id)devices;
- (void)_updateWithYouStatusOnAdvBufferEmptyEvent:(id)event;
- (void)didChangeTravelTypeFrom:(unint64_t)from to:(unint64_t)to hints:(unint64_t)hints;
- (void)forceUpdateWithYouStatus;
- (void)forceUpdateWithYouStatusToFindDevices:(id)devices withContext:(unint64_t)context;
- (void)ingestTAEvent:(id)event;
- (void)requestScanIfNeeded;
- (void)resetAllWithYouStatusAndScanStates;
- (void)resumePeriodicScan;
- (void)updateExtraDeviceInformation:(id)information;
@end

@implementation SAWithYouDetector

- (SAWithYouDetector)initWithBluetoothScanner:(id)scanner locationRequester:(id)requester deviceRecord:(id)record clock:(id)clock analytics:(id)analytics
{
  scannerCopy = scanner;
  requesterCopy = requester;
  recordCopy = record;
  clockCopy = clock;
  analyticsCopy = analytics;
  v39.receiver = self;
  v39.super_class = SAWithYouDetector;
  v17 = [(SAWithYouDetector *)&v39 init];
  v18 = v17;
  if (!v17)
  {
    goto LABEL_6;
  }

  v19 = 0;
  if (recordCopy && scannerCopy && clockCopy)
  {
    [(SAWithYouDetector *)v17 setClock:clockCopy];
    [(SAWithYouDetector *)v18 setBluetoothScanner:scannerCopy];
    [(SAWithYouDetector *)v18 setLocationRequester:requesterCopy];
    v20 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    [(SAWithYouDetector *)v18 setClients:v20];

    [(SAWithYouDetector *)v18 setDeviceRecord:recordCopy];
    [(SAWithYouDetector *)v18 setLongScanIsOngoing:0];
    [(SAWithYouDetector *)v18 setRequestedShortScan:0];
    [(SAWithYouDetector *)v18 setLastStartOfScan:0];
    [(SAWithYouDetector *)v18 setLastEndOfScan:0];
    v21 = objc_alloc(MEMORY[0x277CBEAA8]);
    clock = [(SAWithYouDetector *)v18 clock];
    getCurrentTime = [clock getCurrentTime];
    v24 = [v21 initWithTimeInterval:getCurrentTime sinceDate:30.0];
    [clockCopy setupAlarmFireAt:v24 forClient:v18];
    v25 = v38 = analyticsCopy;
    [(SAWithYouDetector *)v18 setNextScheduledAlarm:v25];

    [(SAWithYouDetector *)v18 setLastLongScanRequest:0];
    [(SAWithYouDetector *)v18 setIsNotifyWhileTravelingEnabled:1];
    [(SAWithYouDetector *)v18 setPreviousBufferEmptyTime:0];
    *&v18->_isPeriodicScansNeeded = 0;
    nextOpportunisticScanDate = v18->_nextOpportunisticScanDate;
    v18->_nextOpportunisticScanDate = 0;

    clock2 = [(SAWithYouDetector *)v18 clock];
    getCurrentTime2 = [clock2 getCurrentTime];
    initializationTime = v18->_initializationTime;
    v18->_initializationTime = getCurrentTime2;

    analyticsCopy = v38;
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
    objc_storeStrong(&v18->_analytics, analytics);
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
  relevantDevicesToFindDuringLongScan = [(SAWithYouDetector *)self relevantDevicesToFindDuringLongScan];
  allObjects = [relevantDevicesToFindDuringLongScan allObjects];

  v5 = [allObjects countByEnumeratingWithState:&v16 objects:v26 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        foundDevicesDuringCurrentScan = [(SAWithYouDetector *)self foundDevicesDuringCurrentScan];
        v11 = [foundDevicesDuringCurrentScan objectForKeyedSubscript:v9];

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
      v6 = [allObjects countByEnumeratingWithState:&v16 objects:v26 count:16];
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
  deviceRecord = [(SAWithYouDetector *)self deviceRecord];
  getAllUUIDs = [deviceRecord getAllUUIDs];

  v5 = [getAllUUIDs countByEnumeratingWithState:&v20 objects:v30 count:16];
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
          objc_enumerationMutation(getAllUUIDs);
        }

        v9 = *(*(&v20 + 1) + 8 * v8);
        deviceRecord2 = [(SAWithYouDetector *)self deviceRecord];
        v11 = [deviceRecord2 getSADevice:v9];
        if (v11)
        {
          v12 = v11;
          foundDevicesDuringCurrentScan = [(SAWithYouDetector *)self foundDevicesDuringCurrentScan];
          v14 = [foundDevicesDuringCurrentScan objectForKeyedSubscript:v9];

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
      v6 = [getAllUUIDs countByEnumeratingWithState:&v20 objects:v30 count:16];
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
    _isOnlyMonitoringLeashOnlyDevices = [(SAWithYouDetector *)self _isOnlyMonitoringLeashOnlyDevices];
    v4 = TASALog;
    v5 = os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT);
    if (_isOnlyMonitoringLeashOnlyDevices)
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
      clock = [(SAWithYouDetector *)self clock];
      getCurrentTime = [clock getCurrentTime];
      WeakRetained = [v6 initWithState:1 date:getCurrentTime];

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

- (void)forceUpdateWithYouStatusToFindDevices:(id)devices withContext:(unint64_t)context
{
  v45 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  v7 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
  {
    v8 = v7;
    v9 = [SAWithYouDetector convertSAWithYouLongScanContextToString:context];
    buf = 68289539;
    v39 = 2082;
    v40 = "";
    v41 = 2113;
    v42 = devicesCopy;
    v43 = 2081;
    uTF8String = [v9 UTF8String];
    _os_log_impl(&dword_2656EA000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#sa #withyou force update to find devices, device list:%{private}@, context:%{private}s}", &buf, 0x26u);
  }

  [(SAWithYouDetector *)self setLastLongScanContext:context];
  if ([(SAWithYouDetector *)self _isOnlyMonitoringLeashOnlyDevices])
  {
    goto LABEL_4;
  }

  [(SAWithYouDetector *)self forceUpdateWithYouStatusWithShortScan:1];
  relevantDevicesToFindDuringLongScan = [(SAWithYouDetector *)self relevantDevicesToFindDuringLongScan];
  [relevantDevicesToFindDuringLongScan addObjectsFromArray:devicesCopy];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v12 = devicesCopy;
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
          getCurrentTime = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
          [(SAWithYouDetector *)self _updateLastWithYouDateAndLocation:v17 forCurrentDate:getCurrentTime];

          foundDevicesDuringCurrentScan = [(SAWithYouDetector *)self foundDevicesDuringCurrentScan];
          v20 = [foundDevicesDuringCurrentScan objectForKeyedSubscript:v17];

          if (!v20)
          {
            getCurrentTime2 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
            foundDevicesDuringCurrentScan2 = [(SAWithYouDetector *)self foundDevicesDuringCurrentScan];
            [foundDevicesDuringCurrentScan2 setObject:getCurrentTime2 forKeyedSubscript:v17];

            getCurrentTime3 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
            [(SAWithYouDetector *)self setLastRelevantDeviceFoundTime:getCurrentTime3];
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
    relevantDevicesToFindDuringLongScan2 = [(SAWithYouDetector *)self relevantDevicesToFindDuringLongScan];
    foundDevicesDuringCurrentScan3 = [(SAWithYouDetector *)self foundDevicesDuringCurrentScan];
    buf = 68289539;
    v39 = 2082;
    v40 = "";
    v41 = 2113;
    v42 = relevantDevicesToFindDuringLongScan2;
    v43 = 2113;
    uTF8String = foundDevicesDuringCurrentScan3;
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
    relevantDevicesToFindDuringLongScan3 = [(SAWithYouDetector *)self relevantDevicesToFindDuringLongScan];
    [relevantDevicesToFindDuringLongScan3 removeAllObjects];

    v29 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289026;
      v39 = 2082;
      v40 = "";
      _os_log_impl(&dword_2656EA000, v29, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa #withyou no more tracked devices to find while long scan is ongoing, requesting to stop long aggressive scan}", &buf, 0x12u);
    }

    getCurrentTime4 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
    [(SAWithYouDetector *)self setLastRelevantDeviceFoundTime:getCurrentTime4];

    [(SAWithYouDetector *)self setIsFindingRelevantDevices:0];
    [(SAWithYouDetector *)self setLongScanIsOngoing:0];
    bluetoothScanner = [(SAWithYouDetector *)self bluetoothScanner];
    [bluetoothScanner stopLongAggressiveScan];
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
  isNotifyWhileTravelingEnabled = [(SAWithYouDetector *)self isNotifyWhileTravelingEnabled];
  if (isNotifyWhileTravelingEnabled)
  {

    LOBYTE(isNotifyWhileTravelingEnabled) = [(SAWithYouDetector *)self isPeriodicScansNeeded];
  }

  return isNotifyWhileTravelingEnabled;
}

- (void)resumePeriodicScan
{
  [(SAWithYouDetector *)self setIsPeriodicScansNeeded:1];

  [(SAWithYouDetector *)self requestScanIfNeeded];
}

- (void)_notifyAllClientsOfWithYouStatusUpdate:(unint64_t)update forDeviceWithUUID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = [(SAWithYouDetector *)self statusForDeviceWithUUID:dCopy];
  [(SADeviceRecord *)self->_deviceRecord updatedWithYouStatusFrom:v7 to:update forDeviceWithUUID:dCopy];
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

        [*(*(&v14 + 1) + 8 * v12++) updatedWithYouStatusFrom:v7 to:update forDeviceWithUUID:{dCopy, v14}];
      }

      while (v10 != v12);
      v10 = [(NSHashTable *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_updateWithYouStatusIfNecessaryOnConnectionEvent:(id)event
{
  v32 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  deviceRecord = self->_deviceRecord;
  identifier = [eventCopy identifier];
  v7 = [(SADeviceRecord *)deviceRecord getSADevice:identifier];

  if (v7)
  {
    identifier2 = [eventCopy identifier];
    v9 = [(SAWithYouDetector *)self statusForDeviceWithUUID:identifier2];

    state = [eventCopy state];
    if ((state - 2) >= 2)
    {
      if (state != 1)
      {
        goto LABEL_12;
      }

      identifier3 = [eventCopy identifier];
      v15 = [(SAWithYouDetector *)self _deviceIsWatch:identifier3];

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
      identifier4 = [eventCopy identifier];
      date = [eventCopy date];
      [(SAWithYouDetector *)self _updateLastWithYouDateAndLocation:identifier4 forCurrentDate:date];

      v13 = 1;
    }

    if (v9 != v13)
    {
      v16 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
        identifier5 = [eventCopy identifier];
        v19 = [SAWithYouDetector convertSAWithYouStatusToString:v9];
        v20 = [SAWithYouDetector convertSAWithYouStatusToString:v13];
        v23[0] = 68289795;
        v23[1] = 0;
        v24 = 2082;
        v25 = "";
        v26 = 2113;
        v27 = identifier5;
        v28 = 2113;
        v29 = v19;
        v30 = 2113;
        v31 = v20;
        _os_log_impl(&dword_2656EA000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa #withyou status updated connection state changed, uuid:%{private}@, oldStatus:%{private}@, newStatus:%{private}@}", v23, 0x30u);
      }

      identifier6 = [eventCopy identifier];
      [(SAWithYouDetector *)self _notifyAllClientsOfWithYouStatusUpdate:v13 forDeviceWithUUID:identifier6];
    }
  }

LABEL_12:

  v22 = *MEMORY[0x277D85DE8];
}

- (double)_maxAgeOfWithYouAdvertisementForDeviceUUID:(id)d
{
  deviceRecord = self->_deviceRecord;
  dCopy = d;
  v6 = [(SADeviceRecord *)deviceRecord getSADevice:dCopy];
  deviceType = [v6 deviceType];
  v8 = [(SADeviceRecord *)self->_deviceRecord getMonitoringSessionState:dCopy];

  if (![v6 isAppleAudioAccessory])
  {
    goto LABEL_9;
  }

  if (v8 > 4 || ((1 << v8) & 0x1A) == 0)
  {
    if (deviceType == 16)
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

- (void)_updateLastWithYouDateAndLocation:(id)location forCurrentDate:(id)date
{
  deviceRecord = self->_deviceRecord;
  locationCopy = location;
  [(SADeviceRecord *)deviceRecord updateLastWithYouDate:date forDeviceWithUUID:locationCopy];
  [(SADeviceRecord *)self->_deviceRecord updateLastWithYouLocation:0 forDeviceWithUUID:locationCopy];
}

- (BOOL)_isRecentEnoughAdvertisement:(id)advertisement forCurrentDate:(id)date
{
  dateCopy = date;
  advertisementCopy = advertisement;
  scanDate = [advertisementCopy scanDate];
  [dateCopy timeIntervalSinceDate:scanDate];
  v10 = v9;

  uuid = [advertisementCopy uuid];

  [(SAWithYouDetector *)self _maxAgeOfWithYouAdvertisementForDeviceUUID:uuid];
  LOBYTE(advertisementCopy) = v10 <= v12;

  return advertisementCopy;
}

- (BOOL)isExtraDeviceFound:(id)found onDate:(id)date
{
  foundCopy = found;
  dateCopy = date;
  if (-[SAWithYouDetector isFindingRelevantDevices](self, "isFindingRelevantDevices") || (-[SAWithYouDetector relevantDevicesToFindDuringLongScan](self, "relevantDevicesToFindDuringLongScan"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 containsObject:foundCopy], v8, (v9 & 1) != 0))
  {
    v10 = 0;
  }

  else
  {
    lastStartOfScan = [(SAWithYouDetector *)self lastStartOfScan];
    v12 = [lastStartOfScan dateByAddingTimeInterval:7.0];

    lastRelevantDeviceFoundTime = [(SAWithYouDetector *)self lastRelevantDeviceFoundTime];

    if (lastRelevantDeviceFoundTime)
    {
      lastRelevantDeviceFoundTime2 = [(SAWithYouDetector *)self lastRelevantDeviceFoundTime];
      v15 = [v12 laterDate:lastRelevantDeviceFoundTime2];

      v12 = v15;
    }

    if ([v12 compare:dateCopy] == -1)
    {
      deviceRecord = [(SAWithYouDetector *)self deviceRecord];
      v17 = [deviceRecord getMonitoringSessionState:foundCopy];

      deviceRecord2 = [(SAWithYouDetector *)self deviceRecord];
      v19 = [deviceRecord2 getScenarioClass:foundCopy];

      v10 = v17 == 2 && (v19 & 0xFFFFFFFFFFFFFFFELL) == 2;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)updateExtraDeviceInformation:(id)information
{
  informationCopy = information;
  deviceRecord = [(SAWithYouDetector *)self deviceRecord];
  v5 = [deviceRecord getSADevice:informationCopy];
  deviceType = [v5 deviceType];

  if (deviceType == 16)
  {
    [(SAWithYouDetector *)self setExtraFoundHELECount:[(SAWithYouDetector *)self extraFoundHELECount]+ 1];
    lastExtraHELEFoundTime = [(SAWithYouDetector *)self lastExtraHELEFoundTime];
    foundDevicesDuringCurrentScan = [(SAWithYouDetector *)self foundDevicesDuringCurrentScan];
    v9 = [foundDevicesDuringCurrentScan objectForKeyedSubscript:informationCopy];
    v10 = [lastExtraHELEFoundTime laterDate:v9];
    [(SAWithYouDetector *)self setLastExtraHELEFoundTime:v10];
  }

  else
  {
    [(SAWithYouDetector *)self setExtraFoundNonHELECount:[(SAWithYouDetector *)self extraFoundNonHELECount]+ 1];
    lastExtraHELEFoundTime = [(SAWithYouDetector *)self lastExtraNonHELEFoundTime];
    foundDevicesDuringCurrentScan = [(SAWithYouDetector *)self foundDevicesDuringCurrentScan];
    v9 = [foundDevicesDuringCurrentScan objectForKeyedSubscript:informationCopy];
    v10 = [lastExtraHELEFoundTime laterDate:v9];
    [(SAWithYouDetector *)self setLastExtraNonHELEFoundTime:v10];
  }
}

- (void)_deviceWithUUID:(id)d isWithYouDuringLongScanOnAdvertisement:(id)advertisement
{
  v42 = *MEMORY[0x277D85DE8];
  dCopy = d;
  advertisementCopy = advertisement;
  foundDevicesDuringCurrentScan = [(SAWithYouDetector *)self foundDevicesDuringCurrentScan];
  v9 = [foundDevicesDuringCurrentScan objectForKeyedSubscript:dCopy];

  if (!v9)
  {
    lastStartOfScan = [(SAWithYouDetector *)self lastStartOfScan];
    if (!lastStartOfScan)
    {
      goto LABEL_4;
    }

    v11 = lastStartOfScan;
    getDate = [advertisementCopy getDate];
    lastStartOfScan2 = [(SAWithYouDetector *)self lastStartOfScan];
    [getDate timeIntervalSinceDate:lastStartOfScan2];
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
        v39 = dCopy;
        _os_log_impl(&dword_2656EA000, v16, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#sa #withyou found new device, uuid:%{private}@}", &v34, 0x1Cu);
      }

      getDate2 = [advertisementCopy getDate];
      foundDevicesDuringCurrentScan2 = [(SAWithYouDetector *)self foundDevicesDuringCurrentScan];
      [foundDevicesDuringCurrentScan2 setObject:getDate2 forKeyedSubscript:dCopy];

      uuid = [advertisementCopy uuid];
      getDate3 = [advertisementCopy getDate];
      v21 = [(SAWithYouDetector *)self isExtraDeviceFound:uuid onDate:getDate3];

      if (v21)
      {
        uuid2 = [advertisementCopy uuid];
        [(SAWithYouDetector *)self updateExtraDeviceInformation:uuid2];
      }
    }

    v23 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
    {
      v24 = v23;
      relevantDevicesToFindDuringLongScan = [(SAWithYouDetector *)self relevantDevicesToFindDuringLongScan];
      foundDevicesDuringCurrentScan3 = [(SAWithYouDetector *)self foundDevicesDuringCurrentScan];
      v34 = 68289539;
      v35 = 0;
      v36 = 2082;
      v37 = "";
      v38 = 2113;
      v39 = relevantDevicesToFindDuringLongScan;
      v40 = 2113;
      v41 = foundDevicesDuringCurrentScan3;
      _os_log_impl(&dword_2656EA000, v24, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#sa #withyou devices to find, devices to find:%{private}@, devices found:%{private}@}", &v34, 0x26u);
    }

    allSAEnabledDevicesAreFound = [(SAWithYouDetector *)self allSAEnabledDevicesAreFound];
    if ([(SAWithYouDetector *)self isFindingRelevantDevices]&& [(SAWithYouDetector *)self allRelevantDevicesToFindAreFound])
    {
      relevantDevicesToFindDuringLongScan2 = [(SAWithYouDetector *)self relevantDevicesToFindDuringLongScan];
      [relevantDevicesToFindDuringLongScan2 removeAllObjects];

      v29 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
      {
        v34 = 68289026;
        v35 = 0;
        v36 = 2082;
        v37 = "";
        _os_log_impl(&dword_2656EA000, v29, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa #withyou no more devices to find while long scan is ongoing, recording time of last device found for metrics}", &v34, 0x12u);
      }

      getCurrentTime = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
      [(SAWithYouDetector *)self setLastRelevantDeviceFoundTime:getCurrentTime];

      [(SAWithYouDetector *)self setIsFindingRelevantDevices:0];
      [(SAWithYouDetector *)self setLongScanIsOngoing:0];
    }

    else if (!allSAEnabledDevicesAreFound)
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
    bluetoothScanner = [(SAWithYouDetector *)self bluetoothScanner];
    [bluetoothScanner stopLongAggressiveScan];
  }

LABEL_19:

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_updateWithYouStatusIfNecessaryOnAdvertisement:(id)advertisement
{
  v35 = *MEMORY[0x277D85DE8];
  advertisementCopy = advertisement;
  uuid = [advertisementCopy uuid];
  if (uuid)
  {
    v6 = uuid;
    deviceRecord = self->_deviceRecord;
    uuid2 = [advertisementCopy uuid];
    v9 = [(SADeviceRecord *)deviceRecord getSADevice:uuid2];

    if (v9)
    {
      uuid3 = [advertisementCopy uuid];
      scanDate = [advertisementCopy scanDate];
      [(SAWithYouDetector *)self _updateLastWithYouDateAndLocation:uuid3 forCurrentDate:scanDate];

      uuid4 = [advertisementCopy uuid];
      LOBYTE(scanDate) = [(SAWithYouDetector *)self _deviceIsWatch:uuid4];

      if ((scanDate & 1) == 0)
      {
        uuid5 = [advertisementCopy uuid];
        v14 = [(SAWithYouDetector *)self statusForDeviceWithUUID:uuid5];

        getCurrentTime = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
        v16 = [(SAWithYouDetector *)self _isRecentEnoughAdvertisement:advertisementCopy forCurrentDate:getCurrentTime];

        v17 = v16;
        if ([(SAWithYouDetector *)self longScanIsOngoing]&& v16)
        {
          uuid6 = [advertisementCopy uuid];
          [(SAWithYouDetector *)self _deviceWithUUID:uuid6 isWithYouDuringLongScanOnAdvertisement:advertisementCopy];
        }

        if (v17 && v14 != v17)
        {
          v19 = TASALog;
          if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
          {
            v20 = v19;
            uuid7 = [advertisementCopy uuid];
            v22 = [SAWithYouDetector convertSAWithYouStatusToString:v14];
            v23 = [SAWithYouDetector convertSAWithYouStatusToString:1];
            v26[0] = 68289795;
            v26[1] = 0;
            v27 = 2082;
            v28 = "";
            v29 = 2113;
            v30 = uuid7;
            v31 = 2113;
            v32 = v22;
            v33 = 2113;
            v34 = v23;
            _os_log_impl(&dword_2656EA000, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa #withyou status updated observed advertisement, uuid:%{private}@, oldStatus:%{private}@, newStatus:%{private}@}", v26, 0x30u);
          }

          uuid8 = [advertisementCopy uuid];
          [(SAWithYouDetector *)self _notifyAllClientsOfWithYouStatusUpdate:1 forDeviceWithUUID:uuid8];
        }

        [(SAWithYouDetector *)self _updateWithYouStatusOfRelatedDevices:advertisementCopy];
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_updateWithYouStatusOfRelatedDevices:(id)devices
{
  v44 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  deviceRecord = self->_deviceRecord;
  uuid = [devicesCopy uuid];
  v7 = [(SADeviceRecord *)deviceRecord getRelatedDevices:uuid];

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
        uuid2 = [devicesCopy uuid];
        *buf = 68289539;
        v35 = 0;
        v36 = 2082;
        v37 = "";
        v38 = 2113;
        v39 = uuid2;
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
        deviceRecord = [(SAWithYouDetector *)self deviceRecord];
        uuid3 = [devicesCopy uuid];
        v15 = [deviceRecord getSADevice:uuid3];
        partIdentifier = [v15 partIdentifier];

        deviceRecord2 = [(SAWithYouDetector *)self deviceRecord];
        v18 = [deviceRecord2 getSADevice:v12];
        partIdentifier2 = [v18 partIdentifier];

        if ([(SAWithYouDetector *)self _isValidPartID:partIdentifier]&& [(SAWithYouDetector *)self _isValidPartID:partIdentifier2]&& partIdentifier2 != partIdentifier)
        {
          v20 = partIdentifier2 <= partIdentifier ? partIdentifier2 - partIdentifier + 3 : partIdentifier2 + ~partIdentifier;
          if ([(SAWithYouDetector *)self _isStatusBitSetForRelatedDeviceWithShiftIndex:v20 fromAdvertisement:devicesCopy])
          {
            scanDate = [devicesCopy scanDate];
            [(SAWithYouDetector *)self _updateLastWithYouDateAndLocation:v12 forCurrentDate:scanDate];

            v22 = [(SAWithYouDetector *)self statusForDeviceWithUUID:v12];
            getCurrentTime = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
            v24 = [(SAWithYouDetector *)self _isRecentEnoughAdvertisement:devicesCopy forCurrentDate:getCurrentTime];

            [(SADeviceRecord *)self->_deviceRecord updateLatestAdvertisement:devicesCopy forDeviceWithUUID:v12];
            if ([(SAWithYouDetector *)self longScanIsOngoing]&& v24)
            {
              [(SAWithYouDetector *)self _deviceWithUUID:v12 isWithYouDuringLongScanOnAdvertisement:devicesCopy];
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

- (BOOL)_isStatusBitSetForRelatedDeviceWithShiftIndex:(unint64_t)index fromAdvertisement:(id)advertisement
{
  v15 = *MEMORY[0x277D85DE8];
  advertisementCopy = advertisement;
  v6 = advertisementCopy;
  if (index < 3)
  {
    v9 = dword_26571E588[index];
    v8 = ([advertisementCopy status] >> v9) & 1;
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

- (unint64_t)_finalizeToBeVerifiedStatus:(unint64_t)status
{
  statusCopy = 1;
  if (status != 3)
  {
    statusCopy = status;
  }

  if (status == 4)
  {
    return 2;
  }

  else
  {
    return statusCopy;
  }
}

- (BOOL)_enoughTimeHasPassedSinceInitializationToMarkNotWithYouForDeviceUUID:(id)d
{
  deviceRecord = self->_deviceRecord;
  dCopy = d;
  v6 = [(SADeviceRecord *)deviceRecord getSADevice:dCopy];
  v7 = [(SADeviceRecord *)self->_deviceRecord getMonitoringSessionState:dCopy];

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
  clock = [(SAWithYouDetector *)self clock];
  getCurrentTime = [clock getCurrentTime];
  initializationTime = [(SAWithYouDetector *)self initializationTime];
  [getCurrentTime timeIntervalSinceDate:initializationTime];
  v14 = v13 >= v9;

LABEL_11:
  return v14;
}

- (void)_updateAllWithYouStatusOnScanEndedEvent:(id)event
{
  v64 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  date = [eventCopy date];
  [(SAWithYouDetector *)self setLastEndOfScan:date];

  getAllUUIDs = [(SADeviceRecord *)self->_deviceRecord getAllUUIDs];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v6 = [getAllUUIDs countByEnumeratingWithState:&v48 objects:v63 count:16];
  v42 = getAllUUIDs;
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
          objc_enumerationMutation(getAllUUIDs);
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
              date2 = [eventCopy date];
              [(SAWithYouDetector *)self _updateLastWithYouDateAndLocation:v10 forCurrentDate:date2];

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

            lastStartOfScan = [(SAWithYouDetector *)self lastStartOfScan];

            v16 = v13;
            if (lastStartOfScan)
            {
              v20 = [(SADeviceRecord *)self->_deviceRecord getLatestAdvertisement:v10];
              scanDate = [v20 scanDate];
              lastStartOfScan2 = [(SAWithYouDetector *)self lastStartOfScan];
              [scanDate timeIntervalSinceDate:lastStartOfScan2];
              if (v23 >= 0.0)
              {
              }

              else
              {
                v24 = [(SADeviceRecord *)self->_deviceRecord getLatestAdvertisement:v10];
                [eventCopy date];
                v25 = v41 = v20;
                v40 = [(SAWithYouDetector *)self _isRecentEnoughAdvertisement:v24 forCurrentDate:v25];

                getAllUUIDs = v42;
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

                getAllUUIDs = v42;
              }

              [(SAWithYouDetector *)self _notifyAllClientsOfWithYouStatusUpdate:v17 forDeviceWithUUID:v10];
            }

            goto LABEL_31;
          }

          date3 = [eventCopy date];
          [(SAWithYouDetector *)self _updateLastWithYouDateAndLocation:v10 forCurrentDate:date3];

          goto LABEL_14;
        }

LABEL_31:
        ++v9;
      }

      while (v7 != v9);
      v31 = [getAllUUIDs countByEnumeratingWithState:&v48 objects:v63 count:16];
      v7 = v31;
    }

    while (v31);
  }

  foundDevicesDuringCurrentScan = [(SAWithYouDetector *)self foundDevicesDuringCurrentScan];
  [foundDevicesDuringCurrentScan removeAllObjects];

  relevantDevicesToFindDuringLongScan = [(SAWithYouDetector *)self relevantDevicesToFindDuringLongScan];
  [relevantDevicesToFindDuringLongScan removeAllObjects];

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

    getAllUUIDs = v42;
  }

  [(SAWithYouDetector *)self requestScanIfNeeded];

  v39 = *MEMORY[0x277D85DE8];
}

- (void)_updateWithYouStatusOnAdvBufferEmptyEvent:(id)event
{
  v49 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  previousBufferEmptyTime = [(SAWithYouDetector *)self previousBufferEmptyTime];

  if (!previousBufferEmptyTime)
  {
    date = [eventCopy date];
    [(SAWithYouDetector *)self setPreviousBufferEmptyTime:date];

    goto LABEL_28;
  }

  v32 = eventCopy;
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
        deviceType = [v12 deviceType];

        if (deviceType == 16)
        {
          v14 = [(SAWithYouDetector *)self statusForDeviceWithUUID:v10];
          previousBufferEmptyTime2 = [(SAWithYouDetector *)self previousBufferEmptyTime];
          lastEndOfScan = [(SAWithYouDetector *)self lastEndOfScan];

          if (lastEndOfScan)
          {
            previousBufferEmptyTime3 = [(SAWithYouDetector *)self previousBufferEmptyTime];
            lastEndOfScan2 = [(SAWithYouDetector *)self lastEndOfScan];
            v19 = [previousBufferEmptyTime3 laterDate:lastEndOfScan2];

            previousBufferEmptyTime2 = v19;
          }

          v20 = [(SADeviceRecord *)self->_deviceRecord getLatestAdvertisement:v10];
          if (v20 && (v21 = v20, [(SADeviceRecord *)self->_deviceRecord getLatestAdvertisement:v10], v22 = objc_claimAutoreleasedReturnValue(), v23 = [(SAWithYouDetector *)self _isRecentEnoughAdvertisement:v22 forCurrentDate:previousBufferEmptyTime2], v22, v21, v23))
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
  eventCopy = v32;
  date2 = [v32 date];
  [(SAWithYouDetector *)self setPreviousBufferEmptyTime:date2];

LABEL_28:
  v31 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleNextAlarmForScanAfterDate:(id)date
{
  dateCopy = date;
  if ([(SAWithYouDetector *)self isPeriodicScansAllowed])
  {
    nextScheduledAlarm = [(SAWithYouDetector *)self nextScheduledAlarm];

    if (nextScheduledAlarm)
    {
      clock = [(SAWithYouDetector *)self clock];
      nextScheduledAlarm2 = [(SAWithYouDetector *)self nextScheduledAlarm];
      [clock cancelAlarmWithUUID:nextScheduledAlarm2];

      [(SAWithYouDetector *)self setNextScheduledAlarm:0];
    }

    v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeInterval:dateCopy sinceDate:300.0];
    isInVehicularTravel = [(SAWithYouDetector *)self isInVehicularTravel];
    v9 = v7;
    if (!isInVehicularTravel)
    {
      clock2 = [(SAWithYouDetector *)self clock];
      v11 = [clock2 setupAlarmFireAt:v7 forClient:self];
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

- (void)ingestTAEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SAWithYouDetector *)self _updateWithYouStatusIfNecessaryOnAdvertisement:eventCopy];
      goto LABEL_27;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = eventCopy;
      if ([v4 state] == 1)
      {
        lastLongScanRequest = [(SAWithYouDetector *)self lastLongScanRequest];

        if (lastLongScanRequest)
        {
          v6 = v4;
          if ([(SAWithYouDetector *)self isFindingRelevantDevices])
          {
            date = [v6 date];
            [(SAWithYouDetector *)self setLastRelevantDeviceFoundTime:date];

            relevantDevicesToFindDuringLongScan = [(SAWithYouDetector *)self relevantDevicesToFindDuringLongScan];
            [relevantDevicesToFindDuringLongScan removeAllObjects];

            [(SAWithYouDetector *)self setIsFindingRelevantDevices:0];
          }

          date2 = [v6 date];
          lastLongScanRequest2 = [(SAWithYouDetector *)self lastLongScanRequest];
          [date2 timeIntervalSinceDate:lastLongScanRequest2];
          v12 = v11;

          lastRelevantDeviceFoundTime = [(SAWithYouDetector *)self lastRelevantDeviceFoundTime];
          if (lastRelevantDeviceFoundTime)
          {
            lastRelevantDeviceFoundTime2 = [(SAWithYouDetector *)self lastRelevantDeviceFoundTime];
            lastLongScanRequest3 = [(SAWithYouDetector *)self lastLongScanRequest];
            [lastRelevantDeviceFoundTime2 timeIntervalSinceDate:lastLongScanRequest3];
            v17 = v16;
          }

          else
          {
            v17 = 0.0;
          }

          lastExtraHELEFoundTime = [(SAWithYouDetector *)self lastExtraHELEFoundTime];
          lastLongScanRequest4 = [(SAWithYouDetector *)self lastLongScanRequest];
          [lastExtraHELEFoundTime timeIntervalSinceDate:lastLongScanRequest4];
          v28 = v27;

          lastExtraNonHELEFoundTime = [(SAWithYouDetector *)self lastExtraNonHELEFoundTime];
          lastLongScanRequest5 = [(SAWithYouDetector *)self lastLongScanRequest];
          [lastExtraNonHELEFoundTime timeIntervalSinceDate:lastLongScanRequest5];
          v32 = v31;

          [(SAWithYouDetector *)self sendScanContextToCoreAnalytics:2 isPartOfLongScan:1 scanDuration:[(SAWithYouDetector *)self extraFoundHELECount] relevantOnlyScanDuration:[(SAWithYouDetector *)self extraFoundNonHELECount] foundExtraHELECount:[(SAWithYouDetector *)self lastLongScanContext] extraHELEScanDuration:v12 foundExtraNonHELECount:v17 extraNonHELEScanDuration:v28 longScanContext:v32];
          analytics = [(SAWithYouDetector *)self analytics];
          [analytics addScanDuration:v12];

          analytics2 = [(SAWithYouDetector *)self analytics];
          v35 = analytics2;
          v36 = 6.0;
          if (v17 >= 6.0)
          {
            v36 = v17;
          }

          [analytics2 addScanDurationForFindingRelevantItemsOnly:v36];

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
        date3 = [v4 date];
        v19 = [date3 dateByAddingTimeInterval:-1.0];
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

      v4 = eventCopy;
      if ([v4 systemStateType] != 15)
      {
        if ([v4 systemStateType] != 11 || !objc_msgSend(v4, "isOn"))
        {
          goto LABEL_26;
        }

        date3 = [(SAWithYouDetector *)self clock];
        v20 = objc_alloc(MEMORY[0x277CBEAA8]);
        clock = [(SAWithYouDetector *)self clock];
        getCurrentTime = [clock getCurrentTime];
        v23 = [v20 initWithTimeInterval:getCurrentTime sinceDate:30.0];
        v24 = [date3 setupAlarmFireAt:v23 forClient:self];
        [(SAWithYouDetector *)self setNextScheduledAlarm:v24];

        goto LABEL_17;
      }

      [(SAWithYouDetector *)self _updateWithYouStatusOnAdvBufferEmptyEvent:v4];
    }

LABEL_26:

    goto LABEL_27;
  }

  [(SAWithYouDetector *)self _updateWithYouStatusIfNecessaryOnConnectionEvent:eventCopy];
LABEL_27:
  if ([(SAWithYouDetector *)self isInVehicularTravel])
  {
    nextOpportunisticScanDate = [(SAWithYouDetector *)self nextOpportunisticScanDate];
    if (nextOpportunisticScanDate)
    {
      v38 = nextOpportunisticScanDate;
      getDate = [eventCopy getDate];
      nextOpportunisticScanDate2 = [(SAWithYouDetector *)self nextOpportunisticScanDate];
      [getDate timeIntervalSinceDate:nextOpportunisticScanDate2];
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
  deviceRecord = [(SAWithYouDetector *)self deviceRecord];
  getAllUUIDs = [deviceRecord getAllUUIDs];
  v5 = [getAllUUIDs count];

  if (v5)
  {
    lastEndOfScan = [(SAWithYouDetector *)self lastEndOfScan];
    if (!lastEndOfScan)
    {
      goto LABEL_5;
    }

    clock = [(SAWithYouDetector *)self clock];
    getCurrentTime = [clock getCurrentTime];
    [getCurrentTime timeIntervalSinceDate:lastEndOfScan];
    v9 = v8;

    if (v9 < 300.0)
    {
      v10 = 0;
    }

    else
    {
LABEL_5:
      clock2 = [(SAWithYouDetector *)self clock];
      getCurrentTime2 = [clock2 getCurrentTime];

      v10 = 1;
      lastEndOfScan = getCurrentTime2;
    }

    if ([(SAWithYouDetector *)self isPeriodicScansAllowed])
    {
      [(SAWithYouDetector *)self _scheduleNextAlarmForScanAfterDate:lastEndOfScan];
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
      locationRequester = [(SAWithYouDetector *)self locationRequester];
      [locationRequester requestLocationForType:0];
    }

    goto LABEL_15;
  }

  [(SAWithYouDetector *)self setNextOpportunisticScanDate:0];
}

- (BOOL)_deviceIsWatch:(id)watch
{
  v3 = [(SADeviceRecord *)self->_deviceRecord getSADevice:watch];
  v4 = [v3 deviceType] == 8;

  return v4;
}

+ (id)convertSAWithYouStatusToString:(unint64_t)string
{
  if (string - 1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_279B9C710[string - 1];
  }
}

+ (id)convertSAWithYouLongScanContextToString:(unint64_t)string
{
  if (string - 1 > 9)
  {
    return @"Unknown";
  }

  else
  {
    return off_279B9C730[string - 1];
  }
}

- (void)didChangeTravelTypeFrom:(unint64_t)from to:(unint64_t)to hints:(unint64_t)hints
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [SATravelTypeClassifier convertSATravelTypeToString:from];
    v11 = [SATravelTypeClassifier convertSATravelTypeToString:to];
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

  if (to == 2)
  {
    [(SAWithYouDetector *)self setIsInVehicularTravel:0];
    if ([(SAWithYouDetector *)self isPeriodicScansAllowed])
    {
      [(SAWithYouDetector *)self requestScanIfNeeded];
    }
  }

  else if (to == 1)
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