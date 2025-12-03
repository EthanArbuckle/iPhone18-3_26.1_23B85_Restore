@interface TADeviceRecord
+ (id)notificationInternalStateToString:(unint64_t)string;
+ (unint64_t)_convertTANotificationStateToTANotificationInternalState:(unint64_t)state;
- (BOOL)hasStagedImmediateDetections:(id)detections;
- (BOOL)hasSurfacedNotificationFor:(id)for;
- (BOOL)isAISFetchSuccessful:(id)successful;
- (BOOL)isEqual:(id)equal;
- (BOOL)isKnownDevice:(id)device;
- (TADeviceRecord)init;
- (TADeviceRecord)initWithCoder:(id)coder;
- (TADeviceRecord)initWithSettings:(id)settings;
- (TAStoreRequestProtocol)delegate;
- (id)_determineFirstObservationDateWithTASuspiciousDevice:(id)device;
- (id)_determineHELEKeepInStagingUntil:(id)until;
- (id)_determineKeepInStagingUntil:(id)until;
- (id)_getDeviceRecord:(id)record;
- (id)_getDeviceRecordWithUUID:(id)d;
- (id)createTAOutgoingRequestForUnstagingUpdateFor:(id)for withCurrentDate:(id)date;
- (id)createTAOutgoingRequestWithExpiringTASingleDeviceRecord:(id)record withCurrentDate:(id)date;
- (id)description;
- (id)descriptionDictionary;
- (id)getAccessoryInfo:(id)info;
- (id)getDetectionResultsToPush;
- (id)getDeviceUUID:(id)d;
- (id)getFirstStagedDetectionDate:(id)date;
- (id)getLatestAdvertisement:(id)advertisement;
- (id)getLatestBeepOnMoveDate:(id)date;
- (id)getUnknownBeacon:(id)beacon;
- (id)limitSuspiciousDevicesSentToObservers:(id)observers forDailyMaximum:(unint64_t)maximum;
- (unint64_t)getAISFetchState:(id)state;
- (unint64_t)getDeviceNotificationState:(id)state;
- (unint64_t)getDeviceOwnershipType:(id)type;
- (unint64_t)getDeviceType:(id)type;
- (unint64_t)getNumOfAISFetch:(id)fetch;
- (unint64_t)getNumStagedDetections:(id)detections;
- (unint64_t)getNumSurfacedAlerts:(id)alerts;
- (void)_beepOnMoveForceAlertIfEligableForDeviceRecord:(id)record andAdvertisment:(id)advertisment;
- (void)_clearStagedDetectionsForDevice:(id)device;
- (void)_createRecordIfNecessaryWithAdvertisement:(id)advertisement withDate:(id)date;
- (void)_didSurfaceNotificationFor:(id)for;
- (void)_performNotificationStateTransitionActionsForDevice:(id)device from:(unint64_t)from to:(unint64_t)to;
- (void)_processAISFetchSuccess:(id)success andAppendOutgoingRequestsTo:(id)to;
- (void)_processPlaySoundSuccess:(id)success andAppendOutgoingRequestsTo:(id)to;
- (void)_setDevice:(id)device withExternalState:(unint64_t)state withDate:(id)date;
- (void)_setDevice:(id)device withInternalState:(unint64_t)state withDate:(id)date;
- (void)_setDevice:(id)device withType:(unint64_t)type withDate:(id)date;
- (void)_updateAISStateOnNotificationStateChange:(id)change from:(unint64_t)from to:(unint64_t)to;
- (void)_updateAdvertisement:(id)advertisement andAppendOutgoingRequestsTo:(id)to;
- (void)_updateKeepInStagingUntil:(id)until;
- (void)checkForScanRequestsWithClock:(id)clock andAppendOutgoingRequestsTo:(id)to;
- (void)encodeWithCoder:(id)coder;
- (void)forceStagedDetectionsToSurfaceImmediatelyWithAdvertisement:(id)advertisement withReason:(unint64_t)reason;
- (void)forceUpdateAISFetchState:(id)state state:(unint64_t)a4;
- (void)ingestTAEvent:(id)event andAppendOutgoingRequestsTo:(id)to;
- (void)logDeviceRecord;
- (void)mergeWithAnotherDeviceRecord:(id)record;
- (void)processBackgroundDetection:(id)detection;
- (void)processSurfacedAlerts:(id)alerts;
- (void)purgeWithClock:(id)clock andAppendOutgoingRequestsTo:(id)to;
- (void)removeDevice:(id)device;
- (void)requestAISFetchIfNeeded:(id)needed;
- (void)stageDetectionResults:(id)results;
- (void)updateDeviceRecordOnSessionChange:(id)change WithCurrentDate:(id)date;
@end

@implementation TADeviceRecord

- (id)getDetectionResultsToPush
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_deviceRecord;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v9, v14];
        getDetectionsReadyToPushAndCheckForAISFetch = [v10 getDetectionsReadyToPushAndCheckForAISFetch];
        [v3 addObjectsFromArray:getDetectionsReadyToPushAndCheckForAISFetch];

        [(TADeviceRecord *)self requestAISFetchIfNeeded:v9];
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (TADeviceRecord)init
{
  v3 = objc_alloc_init(TADeviceRecordSettings);
  v4 = [(TADeviceRecord *)self initWithSettings:v3];

  return v4;
}

- (TADeviceRecord)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v16.receiver = self;
  v16.super_class = TADeviceRecord;
  v6 = [(TADeviceRecord *)&v16 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    deviceRecord = v6->_deviceRecord;
    v6->_deviceRecord = v7;

    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    lastPurgeDate = v6->_lastPurgeDate;
    v6->_lastPurgeDate = distantPast;

    distantPast2 = [MEMORY[0x277CBEAA8] distantPast];
    lastScanAttemptDate = v6->_lastScanAttemptDate;
    v6->_lastScanAttemptDate = distantPast2;

    objc_storeStrong(&v6->_settings, settings);
    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    deviceUUIDToAddress = v6->_deviceUUIDToAddress;
    v6->_deviceUUIDToAddress = v13;
  }

  return v6;
}

+ (id)notificationInternalStateToString:(unint64_t)string
{
  if (string > 4)
  {
    return @"Invalid";
  }

  else
  {
    return off_279DD1ED0[string];
  }
}

- (id)_getDeviceRecord:(id)record
{
  recordCopy = record;
  v5 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:recordCopy];

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:recordCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_getDeviceRecordWithUUID:(id)d
{
  dCopy = d;
  v5 = [(NSMutableDictionary *)self->_deviceUUIDToAddress objectForKeyedSubscript:dCopy];

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_deviceUUIDToAddress objectForKeyedSubscript:dCopy];
    v7 = [(TADeviceRecord *)self _getDeviceRecord:v6];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)getDeviceOwnershipType:(id)type
{
  v3 = [(TADeviceRecord *)self _getDeviceRecord:type];
  v4 = v3;
  if (v3)
  {
    type = [v3 type];
  }

  else
  {
    type = 0;
  }

  return type;
}

- (unint64_t)getDeviceNotificationState:(id)state
{
  v3 = [(TADeviceRecord *)self _getDeviceRecord:state];
  v4 = v3;
  if (v3)
  {
    state = [v3 state];
  }

  else
  {
    state = 0;
  }

  return state;
}

- (unint64_t)getNumSurfacedAlerts:(id)alerts
{
  alertsCopy = alerts;
  latestAdvertisement = [alertsCopy latestAdvertisement];
  date = [alertsCopy date];
  [(TADeviceRecord *)self _createRecordIfNecessaryWithAdvertisement:latestAdvertisement withDate:date];

  address = [alertsCopy address];

  v8 = [(TADeviceRecord *)self _getDeviceRecord:address];

  numSurfacedAlerts = [v8 numSurfacedAlerts];
  return numSurfacedAlerts;
}

- (id)getLatestAdvertisement:(id)advertisement
{
  v3 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:advertisement];
  v4 = v3;
  if (v3)
  {
    latestAdvertisement = [v3 latestAdvertisement];
  }

  else
  {
    latestAdvertisement = 0;
  }

  return latestAdvertisement;
}

- (unint64_t)getAISFetchState:(id)state
{
  v3 = [(TADeviceRecord *)self _getDeviceRecord:state];
  v4 = v3;
  if (v3)
  {
    aISFetchState = [v3 AISFetchState];
  }

  else
  {
    aISFetchState = 0;
  }

  return aISFetchState;
}

- (void)forceUpdateAISFetchState:(id)state state:(unint64_t)a4
{
  v5 = [(TADeviceRecord *)self _getDeviceRecord:state];
  if (v5)
  {
    v6 = v5;
    [v5 setAISFetchState:a4];
    v5 = v6;
  }
}

- (id)getDeviceUUID:(id)d
{
  v3 = [(TADeviceRecord *)self _getDeviceRecord:d];
  v4 = v3;
  if (v3)
  {
    uuid = [v3 uuid];
  }

  else
  {
    uuid = 0;
  }

  return uuid;
}

- (id)getUnknownBeacon:(id)beacon
{
  v24 = *MEMORY[0x277D85DE8];
  beaconCopy = beacon;
  if (beaconCopy)
  {
    v5 = [(TADeviceRecord *)self _getDeviceRecordWithUUID:beaconCopy];
    if (v5)
    {
      v6 = [TAUnknownBeacon instancesRespondToSelector:NSSelectorFromString(&cfstr_Initwithbeacon.isa)];
      v7 = [TAUnknownBeacon alloc];
      uuid = [v5 uuid];
      address = [v5 address];
      getDeviceType = [v5 getDeviceType];
      accessoryInfo = [v5 accessoryInfo];
      if (v6)
      {
        latestAdvertisement = [v5 latestAdvertisement];
        isPosh = [latestAdvertisement isPosh];
        latestAdvertisement2 = [v5 latestAdvertisement];
        v15 = -[TAUnknownBeacon initWithBeaconUUID:address:deviceType:withAccessoryInfo:isPoshAccessory:isFindMyNetwork:](v7, "initWithBeaconUUID:address:deviceType:withAccessoryInfo:isPoshAccessory:isFindMyNetwork:", uuid, address, getDeviceType, accessoryInfo, isPosh, [latestAdvertisement2 isApple]);
      }

      else
      {
        v15 = [(TAUnknownBeacon *)v7 initWithBeaconUUID:uuid address:address deviceType:getDeviceType withAccessoryInfo:accessoryInfo];
      }
    }

    else
    {
      v17 = TAStatusLog;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
      {
        v20 = 68289026;
        v21 = 0;
        v22 = 2082;
        v23 = "";
        _os_log_impl(&dword_26F2E2000, v17, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#TADeviceRecord fetch TAUnknownBeacon receive invalid record}", &v20, 0x12u);
      }

      v15 = 0;
    }
  }

  else
  {
    v16 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      v20 = 68289026;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      _os_log_impl(&dword_26F2E2000, v16, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#TADeviceRecord fetch TAUnknownBeacon receive nil uuid}", &v20, 0x12u);
    }

    v15 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (unint64_t)_convertTANotificationStateToTANotificationInternalState:(unint64_t)state
{
  if (state == 2)
  {
    return 2;
  }

  else
  {
    return state == 1;
  }
}

- (void)_createRecordIfNecessaryWithAdvertisement:(id)advertisement withDate:(id)date
{
  advertisementCopy = advertisement;
  dateCopy = date;
  if (advertisementCopy)
  {
    deviceRecord = self->_deviceRecord;
    address = [advertisementCopy address];
    v10 = [(NSMutableDictionary *)deviceRecord objectForKeyedSubscript:address];

    if (dateCopy)
    {
      if (!v10)
      {
        v11 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
        {
          [TADeviceRecord _createRecordIfNecessaryWithAdvertisement:v11 withDate:advertisementCopy];
        }

        v12 = [TASingleDeviceRecord alloc];
        [(TADeviceRecordSettings *)self->_settings keepAliveInterval];
        v13 = [(TASingleDeviceRecord *)v12 initWithDeviceAdvertisement:advertisementCopy state:0 type:0 date:dateCopy keepAliveInterval:?];
        if (v13)
        {
          v14 = self->_deviceRecord;
          address2 = [advertisementCopy address];
          [(NSMutableDictionary *)v14 setObject:v13 forKey:address2];

          deviceUUIDToAddress = self->_deviceUUIDToAddress;
          address3 = [advertisementCopy address];
          uuid = [(TASingleDeviceRecord *)v13 uuid];
          [(NSMutableDictionary *)deviceUUIDToAddress setObject:address3 forKey:uuid];
        }

        else
        {
          v19 = TAStatusLog;
          if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
          {
            [TADeviceRecord _createRecordIfNecessaryWithAdvertisement:v19 withDate:?];
          }
        }
      }
    }
  }
}

- (void)_setDevice:(id)device withType:(unint64_t)type withDate:(id)date
{
  if (type && device && date)
  {
    deviceCopy = device;
    [(TADeviceRecord *)self _createRecordIfNecessaryWithAdvertisement:deviceCopy withDate:date];
    deviceRecord = self->_deviceRecord;
    address = [deviceCopy address];

    v10 = [(NSMutableDictionary *)deviceRecord objectForKeyedSubscript:address];
    [v10 setType:type];
  }
}

- (void)_setDevice:(id)device withExternalState:(unint64_t)state withDate:(id)date
{
  dateCopy = date;
  deviceCopy = device;
  [(TADeviceRecord *)self _setDevice:deviceCopy withInternalState:[TADeviceRecord withDate:"_convertTANotificationStateToTANotificationInternalState:" _convertTANotificationStateToTANotificationInternalState:state], dateCopy];
}

- (void)_setDevice:(id)device withInternalState:(unint64_t)state withDate:(id)date
{
  v42 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  dateCopy = date;
  v10 = dateCopy;
  if (!state || !deviceCopy || !dateCopy)
  {
    goto LABEL_39;
  }

  [(TADeviceRecord *)self _createRecordIfNecessaryWithAdvertisement:deviceCopy withDate:dateCopy];
  address = [deviceCopy address];
  v12 = [(TADeviceRecord *)self getDeviceNotificationState:address];

  if (v12 > 1)
  {
    switch(v12)
    {
      case 2:
        if (state - 1 >= 4)
        {
          if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
          {
            [TADeviceRecord _setDevice:withInternalState:withDate:];
          }

          goto LABEL_31;
        }

        v15 = (state - 1) & 0xF;
        v16 = 8;
        goto LABEL_22;
      case 3:
        if (state - 1 >= 4)
        {
          if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
          {
            [TADeviceRecord _setDevice:withInternalState:withDate:];
          }

          goto LABEL_31;
        }

        v15 = (state - 1) & 0xF;
        v16 = 11;
        goto LABEL_22;
      case 4:
        v13 = state - 1;
        if (state - 1 >= 4)
        {
          if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
          {
            [TADeviceRecord _setDevice:withInternalState:withDate:];
          }

LABEL_31:
          LOBYTE(v14) = 0;
          goto LABEL_32;
        }

        goto LABEL_21;
    }

    goto LABEL_23;
  }

  if (!v12)
  {
    v13 = state - 1;
    if (state - 1 >= 4)
    {
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
      {
        [TADeviceRecord _setDevice:withInternalState:withDate:];
      }

      goto LABEL_31;
    }

LABEL_21:
    v15 = v13 & 0xF;
    v16 = 7;
LABEL_22:
    v14 = v16 >> v15;
    goto LABEL_32;
  }

  if (v12 != 1)
  {
LABEL_23:
    v17 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
    {
      [TADeviceRecord _setDevice:v12 withInternalState:v17 withDate:?];
    }

    goto LABEL_31;
  }

  LOBYTE(v14) = state - 1;
  if (state - 1 >= 4)
  {
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
    {
      [TADeviceRecord _setDevice:withInternalState:withDate:];
    }

    goto LABEL_31;
  }

LABEL_32:
  v18 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
  {
    selfCopy = self;
    v19 = v10;
    if (v14)
    {
      v20 = "is";
    }

    else
    {
      v20 = "not";
    }

    v21 = v18;
    address2 = [deviceCopy address];
    hexString = [address2 hexString];
    [TADeviceRecord notificationInternalStateToString:v12];
    v24 = v33 = v12;
    v25 = [TADeviceRecord notificationInternalStateToString:state];
    *buf = 136315907;
    v35 = v20;
    v10 = v19;
    self = selfCopy;
    v36 = 2113;
    v37 = hexString;
    v38 = 2114;
    v39 = v24;
    v40 = 2114;
    v41 = v25;
    _os_log_impl(&dword_26F2E2000, v21, OS_LOG_TYPE_DEFAULT, "#TADeviceRecord %s updating state for %{private}@ from %{public}@ to %{public}@", buf, 0x2Au);

    v12 = v33;
  }

  if (v14)
  {
    address3 = [deviceCopy address];
    [(TADeviceRecord *)self _performNotificationStateTransitionActionsForDevice:address3 from:v12 to:state];

    address4 = [deviceCopy address];
    [(TADeviceRecord *)self _updateAISStateOnNotificationStateChange:address4 from:v12 to:state];

    deviceRecord = self->_deviceRecord;
    address5 = [deviceCopy address];
    v30 = [(NSMutableDictionary *)deviceRecord objectForKeyedSubscript:address5];
    [v30 setState:state];
  }

LABEL_39:

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_updateAISStateOnNotificationStateChange:(id)change from:(unint64_t)from to:(unint64_t)to
{
  changeCopy = change;
  if (from - 1 < 2)
  {
    if (to == 4)
    {
      v17 = changeCopy;
      v12 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:changeCopy];
      aISFetchState = [v12 AISFetchState];

      if (aISFetchState == 8 || aISFetchState == 4)
      {
        v15 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v17];
        [v15 setAISFetchState:0];
      }
    }
  }

  else if ((!from || from == 4) && to == 3)
  {
    v16 = changeCopy;
    v9 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:changeCopy];
    aISFetchState2 = [v9 AISFetchState];

    if ((aISFetchState2 & 0xFFFFFFFFFFFFFFFBLL) == 0)
    {
      v11 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v16];
      [v11 setAISFetchState:1];
    }

    [(TADeviceRecord *)self requestAISFetchIfNeeded:v16];
  }

  MEMORY[0x2821F96F8]();
}

- (void)_performNotificationStateTransitionActionsForDevice:(id)device from:(unint64_t)from to:(unint64_t)to
{
  deviceCopy = device;
  v8 = deviceCopy;
  if (to == 2)
  {
    v9 = deviceCopy;
    [(TADeviceRecord *)self _clearStagedDetectionsForDevice:deviceCopy];
    deviceCopy = [(TADeviceRecord *)self _didSurfaceNotificationFor:v9];
  }

  else
  {
    if (to != 1)
    {
      goto LABEL_6;
    }

    v9 = deviceCopy;
    deviceCopy = [(TADeviceRecord *)self _clearStagedDetectionsForDevice:deviceCopy];
  }

  v8 = v9;
LABEL_6:

  MEMORY[0x2821F96F8](deviceCopy, v8);
}

- (void)_updateAdvertisement:(id)advertisement andAppendOutgoingRequestsTo:(id)to
{
  advertisementCopy = advertisement;
  toCopy = to;
  if ([advertisementCopy beepOnMoveHigh])
  {
    scanDate = [advertisementCopy scanDate];
    [(TADeviceRecord *)self _createRecordIfNecessaryWithAdvertisement:advertisementCopy withDate:scanDate];
  }

  deviceRecord = self->_deviceRecord;
  address = [advertisementCopy address];
  v10 = [(NSMutableDictionary *)deviceRecord objectForKeyedSubscript:address];

  if (v10)
  {
    [v10 updateAdvertisement:advertisementCopy andAppendOutgoingRequestsTo:toCopy];
    [(TADeviceRecord *)self _beepOnMoveForceAlertIfEligableForDeviceRecord:v10 andAdvertisment:advertisementCopy];
  }
}

- (void)_beepOnMoveForceAlertIfEligableForDeviceRecord:(id)record andAdvertisment:(id)advertisment
{
  recordCopy = record;
  advertismentCopy = advertisment;
  if ([recordCopy getDeviceType] == 1)
  {
    v7 = [advertismentCopy isPosh] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  accessoryInfo = [recordCopy accessoryInfo];
  isApple = 0;
  if ([advertismentCopy isPosh] && accessoryInfo)
  {
    if ([accessoryInfo isCapableOfBOM])
    {
      isApple = [advertismentCopy isApple];
    }

    else
    {
      isApple = 0;
    }
  }

  if (-[TADeviceRecordSettings surfaceImmediatelyBeepOnMove](self->_settings, "surfaceImmediatelyBeepOnMove") && [advertismentCopy beepOnMoveHigh] && ((v7 | isApple) & 1) != 0 && objc_msgSend(recordCopy, "numStagedDetections"))
  {
    [(TADeviceRecord *)self forceStagedDetectionsToSurfaceImmediatelyWithAdvertisement:advertismentCopy withReason:2];
  }
}

- (void)_processPlaySoundSuccess:(id)success andAppendOutgoingRequestsTo:(id)to
{
  v22 = *MEMORY[0x277D85DE8];
  successCopy = success;
  toCopy = to;
  if (successCopy)
  {
    address = [successCopy address];

    if (address)
    {
      address2 = [successCopy address];
      v10 = [(TADeviceRecord *)self _getDeviceRecord:address2];

      if (v10)
      {
        [v10 processPlaySoundSuccess:successCopy andAppendOutgoingRequestsTo:toCopy];
LABEL_8:

        goto LABEL_9;
      }

      v14 = TAStatusLog;
      if (!os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }

      v12 = v14;
      v15 = [successCopy description];
      v16 = 68289283;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2113;
      v21 = v15;
      _os_log_impl(&dword_26F2E2000, v12, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#TADeviceRecord no records exist for address, playsound:%{private}@}", &v16, 0x1Cu);

LABEL_7:
      goto LABEL_8;
    }
  }

  v11 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
  {
    v10 = v11;
    v12 = [successCopy description];
    v16 = 68289283;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2113;
    v21 = v12;
    _os_log_impl(&dword_26F2E2000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#TADeviceRecord playsound success empty, playsound:%{private}@}", &v16, 0x1Cu);
    goto LABEL_7;
  }

LABEL_9:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)requestAISFetchIfNeeded:(id)needed
{
  v43 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  v5 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:neededCopy];
  v6 = v5;
  if (!v5)
  {
    v15 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      delegate = v15;
      hexString = [neededCopy hexString];
      v35 = 68289283;
      v36 = 0;
      v37 = 2082;
      v38 = "";
      v39 = 2113;
      v40 = hexString;
      v14 = "{msg%{public}.0s:#TADeviceRecord no records exist for AIS fetch, address:%{private}@}";
      v16 = delegate;
      v17 = OS_LOG_TYPE_ERROR;
LABEL_23:
      _os_log_impl(&dword_26F2E2000, v16, v17, v14, &v35, 0x1Cu);
LABEL_24:

      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if ([v5 getDeviceType] == 1)
  {
    latestAdvertisement = [v6 latestAdvertisement];
    isPosh = [latestAdvertisement isPosh];

    if ((isPosh & 1) == 0)
    {
      v26 = TAStatusLog;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
      {
        delegate = v26;
        hexString = [neededCopy hexString];
        v35 = 68289283;
        v36 = 0;
        v37 = 2082;
        v38 = "";
        v39 = 2113;
        v40 = hexString;
        v14 = "{msg%{public}.0s:#TADeviceRecord skip request AIS fetch - non-posh durian type, address:%{private}@}";
        goto LABEL_22;
      }

      goto LABEL_26;
    }
  }

  latestAdvertisement2 = [v6 latestAdvertisement];
  if ([latestAdvertisement2 isPosh])
  {
    v10 = _os_feature_enabled_impl();

    if ((v10 & 1) == 0)
    {
      v11 = TAStatusLog;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
      {
        delegate = v11;
        hexString = [neededCopy hexString];
        v35 = 68289283;
        v36 = 0;
        v37 = 2082;
        v38 = "";
        v39 = 2113;
        v40 = hexString;
        v14 = "{msg%{public}.0s:#TADeviceRecord skip request AIS fetch for posh type - feature isn't enabled, address:%{private}@}";
LABEL_22:
        v16 = delegate;
        v17 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_23;
      }

      goto LABEL_26;
    }
  }

  else
  {
  }

  if ([v6 AISFetchCount] < 0xA)
  {
    aISFetchState = [v6 AISFetchState];
    delegate = [(TADeviceRecord *)self delegate];
    if (aISFetchState == 5)
    {
      v28 = TAStatusLog;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
      {
        v29 = v28;
        hexString2 = [neededCopy hexString];
        v35 = 68289539;
        v36 = 0;
        v37 = 2082;
        v38 = "";
        v39 = 2113;
        v40 = hexString2;
        v41 = 2050;
        aISFetchCount = [v6 AISFetchCount];
        _os_log_impl(&dword_26F2E2000, v29, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TADeviceRecord request AIS fetch, address:%{private}@, requestedCount:%{public}lu}", &v35, 0x26u);
      }

      uuid = [v6 uuid];
      hexString = [(TADeviceRecord *)self getUnknownBeacon:uuid];

      if (hexString)
      {
        v24 = v6;
        v25 = 6;
        goto LABEL_31;
      }

      v32 = TAStatusLog;
      if (!os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (aISFetchState != 1)
      {
LABEL_25:

        goto LABEL_26;
      }

      v20 = TAStatusLog;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v20;
        hexString3 = [neededCopy hexString];
        v35 = 68289539;
        v36 = 0;
        v37 = 2082;
        v38 = "";
        v39 = 2113;
        v40 = hexString3;
        v41 = 2050;
        aISFetchCount = [v6 AISFetchCount];
        _os_log_impl(&dword_26F2E2000, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TADeviceRecord request AIS fetch, address:%{private}@, requestedCount:%{public}lu}", &v35, 0x26u);
      }

      uuid2 = [v6 uuid];
      hexString = [(TADeviceRecord *)self getUnknownBeacon:uuid2];

      if (hexString)
      {
        v24 = v6;
        v25 = 2;
LABEL_31:
        [v24 setAISFetchState:v25];
        [v6 setAISFetchCount:{objc_msgSend(v6, "AISFetchCount") + 1}];
        [delegate requestAIS:hexString];
        goto LABEL_24;
      }

      v32 = TAStatusLog;
      if (!os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_24;
      }
    }

    v33 = v32;
    hexString4 = [neededCopy hexString];
    v35 = 68289283;
    v36 = 0;
    v37 = 2082;
    v38 = "";
    v39 = 2113;
    v40 = hexString4;
    _os_log_impl(&dword_26F2E2000, v33, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#TADeviceRecord can't construct TAUnknownBeacon for AIS fetch, address:%{private}@}", &v35, 0x1Cu);

    goto LABEL_24;
  }

  v18 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
  {
    delegate = v18;
    hexString = [neededCopy hexString];
    v35 = 68289283;
    v36 = 0;
    v37 = 2082;
    v38 = "";
    v39 = 2113;
    v40 = hexString;
    v14 = "{msg%{public}.0s:#TADeviceRecord skip request AIS fetch - reach maximum attemps, address:%{private}@}";
    goto LABEL_22;
  }

LABEL_26:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_updateKeepInStagingUntil:(id)until
{
  v29 = *MEMORY[0x277D85DE8];
  [(TADeviceRecord *)self _getDeviceRecord:until];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v14 = v19 = 0u;
  obj = [v14 getStagedDetections];
  v4 = [obj countByEnumeratingWithState:&v16 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        keepInStagingUntil = [v8 keepInStagingUntil];
        detection = [v8 detection];
        v11 = [(TADeviceRecord *)self _determineHELEKeepInStagingUntil:detection];

        [v8 setKeepInStagingUntil:v11];
        v12 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
        {
          *buf = 68289539;
          v21 = 0;
          v22 = 2082;
          v23 = "";
          v24 = 2113;
          v25 = keepInStagingUntil;
          v26 = 2113;
          v27 = v11;
          _os_log_impl(&dword_26F2E2000, v12, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#TADeviceRecord update KeepInStagingUntil for new AirPods, before:%{private}@, after:%{private}@}", buf, 0x26u);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v16 objects:v28 count:16];
    }

    while (v5);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_processAISFetchSuccess:(id)success andAppendOutgoingRequestsTo:(id)to
{
  v29 = *MEMORY[0x277D85DE8];
  successCopy = success;
  toCopy = to;
  if (successCopy)
  {
    uuid = [successCopy uuid];

    if (uuid)
    {
      uuid2 = [successCopy uuid];
      v10 = [(TADeviceRecord *)self _getDeviceRecordWithUUID:uuid2];

      v11 = TAStatusLog;
      if (v10)
      {
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
        {
          v12 = v11;
          v13 = [successCopy description];
          v23 = 68289283;
          v24 = 0;
          v25 = 2082;
          v26 = "";
          v27 = 2113;
          v28 = v13;
          _os_log_impl(&dword_26F2E2000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TADeviceRecord received AIS fetch info for uuid, AISFetch:%{private}@}", &v23, 0x1Cu);
        }

        [v10 processAISFetchEvent:successCopy andAppendOutgoingRequestsTo:toCopy];
        info = [successCopy info];
        if (info)
        {
          v15 = info;
          info2 = [successCopy info];
          isHawkeyeAudioAccessory = [info2 isHawkeyeAudioAccessory];

          if (isHawkeyeAudioAccessory)
          {
            address = [v10 address];
            [(TADeviceRecord *)self _updateKeepInStagingUntil:address];
          }
        }

        goto LABEL_12;
      }

      if (!os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
      {
LABEL_12:

        goto LABEL_13;
      }

      v20 = v11;
      v22 = [successCopy description];
      v23 = 68289283;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2113;
      v28 = v22;
      _os_log_impl(&dword_26F2E2000, v20, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#TADeviceRecord AIS fetch no records exist for uuid, AISFetch:%{private}@}", &v23, 0x1Cu);

LABEL_11:
      goto LABEL_12;
    }
  }

  v19 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
  {
    v10 = v19;
    v20 = [successCopy description];
    v23 = 68289283;
    v24 = 0;
    v25 = 2082;
    v26 = "";
    v27 = 2113;
    v28 = v20;
    _os_log_impl(&dword_26F2E2000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#TADeviceRecord AIS fetch success empty, AISFetch:%{private}@}", &v23, 0x1Cu);
    goto LABEL_11;
  }

LABEL_13:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)ingestTAEvent:(id)event andAppendOutgoingRequestsTo:(id)to
{
  v25 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  toCopy = to;
  if ([eventCopy isMemberOfClass:objc_opt_class()])
  {
    v8 = eventCopy;
    advertisement = [v8 advertisement];
    notificationState = [v8 notificationState];
    getDate = [v8 getDate];
    [(TADeviceRecord *)self _setDevice:advertisement withExternalState:notificationState withDate:getDate];

    advertisement2 = [v8 advertisement];
    deviceType = [v8 deviceType];
    getDate2 = [v8 getDate];
    [(TADeviceRecord *)self _setDevice:advertisement2 withType:deviceType withDate:getDate2];

    advertisement3 = [v8 advertisement];

    [(TADeviceRecord *)self _updateAdvertisement:advertisement3 andAppendOutgoingRequestsTo:toCopy];
  }

  else if ([eventCopy isMemberOfClass:objc_opt_class()])
  {
    [(TADeviceRecord *)self _updateAdvertisement:eventCopy andAppendOutgoingRequestsTo:toCopy];
  }

  else if ([eventCopy isMemberOfClass:objc_opt_class()])
  {
    v16 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      v18 = [eventCopy description];
      v20[0] = 68289283;
      v20[1] = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2113;
      v24 = v18;
      _os_log_impl(&dword_26F2E2000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TADeviceRecord adding playsound, playsound:%{private}@}", v20, 0x1Cu);
    }

    [(TADeviceRecord *)self _processPlaySoundSuccess:eventCopy andAppendOutgoingRequestsTo:toCopy];
  }

  else if ([eventCopy isMemberOfClass:objc_opt_class()])
  {
    [(TADeviceRecord *)self _processAISFetchSuccess:eventCopy andAppendOutgoingRequestsTo:toCopy];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)checkForScanRequestsWithClock:(id)clock andAppendOutgoingRequestsTo:(id)to
{
  v52 = *MEMORY[0x277D85DE8];
  clockCopy = clock;
  toCopy = to;
  [clockCopy timeIntervalSinceDate:self->_lastScanAttemptDate];
  v10 = v9;
  [(TADeviceRecordSettings *)self->_settings scanInterval];
  if (v10 < v11)
  {
    goto LABEL_22;
  }

  v33 = toCopy;
  v34 = clockCopy;
  objc_storeStrong(&self->_lastScanAttemptDate, clock);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v12 = self->_deviceRecord;
  v13 = [(NSMutableDictionary *)v12 countByEnumeratingWithState:&v35 objects:v51 count:16];
  if (!v13)
  {
    v15 = 0;
    v16 = 0;
    goto LABEL_16;
  }

  v14 = v13;
  v15 = 0;
  v16 = 0;
  v17 = *v36;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v36 != v17)
      {
        objc_enumerationMutation(v12);
      }

      v19 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:*(*(&v35 + 1) + 8 * i), v33];
      latestAdvertisement = [v19 latestAdvertisement];
      hasHawkeyeAdvertisementPolicy = [latestAdvertisement hasHawkeyeAdvertisementPolicy];

      if (hasHawkeyeAdvertisementPolicy)
      {
        getStagedDetections = [v19 getStagedDetections];
        v16 |= [getStagedDetections count] != 0;
      }

      else
      {
        latestAdvertisement2 = [v19 latestAdvertisement];
        hasHawkeyeLowEnergyAdvertisementPolicy = [latestAdvertisement2 hasHawkeyeLowEnergyAdvertisementPolicy];

        if (!hasHawkeyeLowEnergyAdvertisementPolicy)
        {
          goto LABEL_12;
        }

        getStagedDetections = [v19 getStagedDetections];
        v15 |= [getStagedDetections count] != 0;
      }

LABEL_12:
    }

    v14 = [(NSMutableDictionary *)v12 countByEnumeratingWithState:&v35 objects:v51 count:16];
  }

  while (v14);
LABEL_16:

  v25 = TAStatusLog;
  toCopy = v33;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289538;
    v44 = 0;
    v45 = 2082;
    v46 = "";
    v47 = 1026;
    v48 = v16 & 1;
    v49 = 1026;
    v50 = v15 & 1;
    _os_log_impl(&dword_26F2E2000, v25, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#TADeviceRecord device record scan request, shouldScanHawkeye:%{public}hhd, shouldScanHawkeyeLowEnergy:%{public}hhd}", buf, 0x1Eu);
  }

  clockCopy = v34;
  if (v16)
  {
    v26 = [TAOutgoingRequests alloc];
    v41 = @"ScanRequestReason";
    v42 = @"Updating device record";
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v28 = [(TAOutgoingRequests *)v26 initWithRequestKey:@"RequestingAdditionalScans" additionalInformation:v27 date:v34];

    [v33 addObject:v28];
  }

  if (v15)
  {
    v29 = [TAOutgoingRequests alloc];
    v39 = @"ScanRequestReason";
    v40 = @"Updating device record";
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v31 = [(TAOutgoingRequests *)v29 initWithRequestKey:@"RequestingAdditionalHawkeyeLowEnergyScans" additionalInformation:v30 date:v34];

    [v33 addObject:v31];
  }

LABEL_22:

  v32 = *MEMORY[0x277D85DE8];
}

- (id)createTAOutgoingRequestWithExpiringTASingleDeviceRecord:(id)record withCurrentDate:(id)date
{
  v14[1] = *MEMORY[0x277D85DE8];
  recordCopy = record;
  dateCopy = date;
  if (recordCopy)
  {
    address = [recordCopy address];

    if (address)
    {
      v8 = [TAOutgoingRequests alloc];
      address2 = [recordCopy address];
      v13 = address2;
      v14[0] = recordCopy;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      address = [(TAOutgoingRequests *)v8 initWithRequestKey:@"ExpiringRecordMetrics" additionalInformation:v10 date:dateCopy];
    }
  }

  else
  {
    address = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return address;
}

- (id)createTAOutgoingRequestForUnstagingUpdateFor:(id)for withCurrentDate:(id)date
{
  v26 = *MEMORY[0x277D85DE8];
  forCopy = for;
  dateCopy = date;
  array = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = forCopy;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        detection = [*(*(&v19 + 1) + 8 * i) detection];
        [array addObject:detection];
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v10);
  }

  v14 = [TAOutgoingRequests alloc];
  v23 = @"UnstagingUpdate";
  v24 = array;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v16 = [(TAOutgoingRequests *)v14 initWithRequestKey:@"UnstagingUpdate" additionalInformation:v15 date:dateCopy];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)purgeWithClock:(id)clock andAppendOutgoingRequestsTo:(id)to
{
  v40 = *MEMORY[0x277D85DE8];
  clockCopy = clock;
  toCopy = to;
  [clockCopy timeIntervalSinceDate:self->_lastPurgeDate];
  if (v9 < 0.0 || (v10 = v9, [(TADeviceRecordSettings *)self->_settings purgeTimeInterval], v10 >= v11))
  {
    clockCopy2 = clock;
    v12 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_26F2E2000, v12, OS_LOG_TYPE_DEFAULT, "#TADeviceRecord purging records", &buf, 2u);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = [(NSMutableDictionary *)self->_deviceRecord allKeys];
    v13 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
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
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v33 + 1) + 8 * i);
          v18 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v17];
          creationDate = [v18 creationDate];
          [clockCopy timeIntervalSinceDate:creationDate];
          v21 = v20;

          [(TADeviceRecordSettings *)self->_settings futureExpiryTimeInterval];
          if (v21 < -v22 || ([(TADeviceRecordSettings *)self->_settings expiryTimeInterval], v21 > v23))
          {
            v24 = TAStatusLog;
            if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
            {
              [(TADeviceRecord *)&buf purgeWithClock:v24 andAppendOutgoingRequestsTo:v17, &v38];
            }

            v25 = [(TADeviceRecord *)self createTAOutgoingRequestWithExpiringTASingleDeviceRecord:v18 withCurrentDate:clockCopy];
            [toCopy addObject:v25];
            [(NSMutableDictionary *)self->_deviceRecord removeObjectForKey:v17];
            deviceUUIDToAddress = self->_deviceUUIDToAddress;
            uuid = [v18 uuid];
            [(NSMutableDictionary *)deviceUUIDToAddress removeObjectForKey:uuid];
          }

          v28 = [v18 purgeStagedDetectionsWithClock:clockCopy];
          if ([v28 count])
          {
            v29 = [(TADeviceRecord *)self createTAOutgoingRequestForUnstagingUpdateFor:v28 withCurrentDate:clockCopy];
            [toCopy addObject:v29];
          }
        }

        v14 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v14);
    }

    objc_storeStrong(&self->_lastPurgeDate, clockCopy2);
    [(TADeviceRecord *)self logDeviceRecord];
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (BOOL)isKnownDevice:(id)device
{
  v3 = [(TADeviceRecord *)self getDeviceOwnershipType:device];

  return [TADeviceRecord _isKnownDevice:v3];
}

- (void)updateDeviceRecordOnSessionChange:(id)change WithCurrentDate:(id)date
{
  v63 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  dateCopy = date;
  v8 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F2E2000, v8, OS_LOG_TYPE_DEFAULT, "#TADeviceRecord updateDeviceRecordOnSessionChange called", buf, 2u);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = [(NSMutableDictionary *)self->_deviceRecord allKeys];
  v49 = [obj countByEnumeratingWithState:&v50 objects:v62 count:16];
  if (v49)
  {
    v10 = *v51;
    v11 = 0x279DD1000;
    *&v9 = 68289283;
    v40 = v9;
    selfCopy = self;
    v46 = dateCopy;
    v47 = *v51;
    do
    {
      v12 = 0;
      do
      {
        if (*v51 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v50 + 1) + 8 * v12);
        v14 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v13, v40];
        [v14 updateSingleDeviceRecordOnSessionChangeWithCurrentDate:dateCopy];
        if (!changeCopy)
        {
          goto LABEL_21;
        }

        if ([changeCopy lastStateTransition] != 3)
        {
          goto LABEL_15;
        }

        getLatestValidVisit = [changeCopy getLatestValidVisit];
        if (!getLatestValidVisit)
        {
          goto LABEL_15;
        }

        v16 = getLatestValidVisit;
        getLatestValidVisit2 = [changeCopy getLatestValidVisit];
        arrivalDate = [getLatestValidVisit2 arrivalDate];
        distantPast = [MEMORY[0x277CBEAA8] distantPast];
        if (arrivalDate == distantPast)
        {
          goto LABEL_14;
        }

        v44 = getLatestValidVisit2;
        getLatestValidVisit3 = [changeCopy getLatestValidVisit];
        arrivalDate2 = [getLatestValidVisit3 arrivalDate];
        lastSurfacedAlertDate = [v14 lastSurfacedAlertDate];
        if ([arrivalDate2 compare:lastSurfacedAlertDate] != -1)
        {

          self = selfCopy;
          getLatestValidVisit2 = v44;
          dateCopy = v46;
LABEL_14:

          v10 = v47;
          v11 = 0x279DD1000;
          goto LABEL_15;
        }

        if ([v14 state] == 2)
        {

          self = selfCopy;
          dateCopy = v46;
          v10 = v47;
          v11 = 0x279DD1000;
LABEL_36:
          v33 = TAStatusLog;
          if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
          {
            latestAdvertisement = v33;
            hexString = [v13 hexString];
            *buf = v40;
            v57 = 0;
            v58 = 2082;
            v59 = "";
            v60 = 2113;
            v61 = hexString;
            v35 = latestAdvertisement;
            v36 = "{msg%{public}.0s:#TADeviceRecord skip reprompting since we have issued an alert upon arrival, address:%{private}@}";
LABEL_41:
            _os_log_impl(&dword_26F2E2000, v35, OS_LOG_TYPE_DEBUG, v36, buf, 0x1Cu);

            dateCopy = v46;
LABEL_28:

            goto LABEL_29;
          }

          goto LABEL_29;
        }

        state = [v14 state];

        self = selfCopy;
        dateCopy = v46;
        v10 = v47;
        v11 = 0x279DD1000;
        if (state == 1)
        {
          goto LABEL_36;
        }

LABEL_15:
        if ([changeCopy lastStateTransition] != 4)
        {
          goto LABEL_21;
        }

        getLatestValidVisit4 = [changeCopy getLatestValidVisit];
        if (!getLatestValidVisit4)
        {
          goto LABEL_21;
        }

        v24 = getLatestValidVisit4;
        getLatestValidVisit5 = [changeCopy getLatestValidVisit];
        departureDate = [getLatestValidVisit5 departureDate];
        distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
        if (departureDate == distantFuture)
        {
          goto LABEL_20;
        }

        v45 = getLatestValidVisit5;
        getLatestValidVisit6 = [changeCopy getLatestValidVisit];
        departureDate2 = [getLatestValidVisit6 departureDate];
        lastSurfacedAlertDate2 = [v14 lastSurfacedAlertDate];
        if ([departureDate2 compare:lastSurfacedAlertDate2] != -1)
        {

          self = selfCopy;
          getLatestValidVisit5 = v45;
          dateCopy = v46;
LABEL_20:

          v10 = v47;
          v11 = 0x279DD1000uLL;
LABEL_21:
          if (([v14 state] == 2 || objc_msgSend(v14, "state") == 1 || objc_msgSend(v14, "state") == 3) && (objc_msgSend(*(v11 + 1208), "_isKnownDevice:", objc_msgSend(v14, "type")) & 1) == 0)
          {
            v31 = TAStatusLog;
            if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
            {
              [(TADeviceRecord *)&v54 updateDeviceRecordOnSessionChange:v31 WithCurrentDate:v13, &v55];
            }

            latestAdvertisement = [v14 latestAdvertisement];
            [(TADeviceRecord *)self _setDevice:latestAdvertisement withInternalState:4 withDate:dateCopy];
            goto LABEL_28;
          }

          goto LABEL_29;
        }

        if ([v14 state] == 2)
        {

          self = selfCopy;
          dateCopy = v46;
          v10 = v47;
          v11 = 0x279DD1000;
        }

        else
        {
          state2 = [v14 state];

          self = selfCopy;
          dateCopy = v46;
          v10 = v47;
          v11 = 0x279DD1000;
          if (state2 != 1)
          {
            goto LABEL_21;
          }
        }

        v37 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
        {
          latestAdvertisement = v37;
          hexString = [v13 hexString];
          *buf = v40;
          v57 = 0;
          v58 = 2082;
          v59 = "";
          v60 = 2113;
          v61 = hexString;
          v35 = latestAdvertisement;
          v36 = "{msg%{public}.0s:#TADeviceRecord skip reprompting since we have issued an alert upon departure, address:%{private}@}";
          goto LABEL_41;
        }

LABEL_29:

        ++v12;
      }

      while (v49 != v12);
      v38 = [obj countByEnumeratingWithState:&v50 objects:v62 count:16];
      v49 = v38;
    }

    while (v38);
  }

  [(TADeviceRecord *)self logDeviceRecord];
  v39 = *MEMORY[0x277D85DE8];
}

- (void)logDeviceRecord
{
  v24 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allKeys = [(NSMutableDictionary *)self->_deviceRecord allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v8 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(*(&v15 + 1) + 8 * i);
          v10 = v8;
          hexString = [v9 hexString];
          v12 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v9];
          v13 = [v12 description];
          *buf = 138478083;
          v20 = hexString;
          v21 = 2113;
          v22 = v13;
          _os_log_impl(&dword_26F2E2000, v10, OS_LOG_TYPE_DEFAULT, "#TADeviceRecord status for %{private}@:%{private}@", buf, 0x16u);
        }
      }

      v5 = [allKeys countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v5);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_clearStagedDetectionsForDevice:(id)device
{
  v3 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:device];
  v4 = v3;
  if (v3)
  {
    [v3 clearAllStagedDetections];
  }

  else
  {
    v5 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [(TADeviceRecord *)v5 _clearStagedDetectionsForDevice:v6, v7];
    }
  }
}

- (id)_determineFirstObservationDateWithTASuspiciousDevice:(id)device
{
  v25 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  date = [deviceCopy date];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  locationHistory = [deviceCopy locationHistory];
  v7 = [locationHistory countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      v10 = 0;
      v11 = date;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(locationHistory);
        }

        getDate = [*(*(&v20 + 1) + 8 * v10) getDate];
        date = [v11 earlierDate:getDate];

        ++v10;
        v11 = date;
      }

      while (v8 != v10);
      v8 = [locationHistory countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  deviceRecord = self->_deviceRecord;
  address = [deviceCopy address];
  v15 = [(NSMutableDictionary *)deviceRecord objectForKeyedSubscript:address];

  earliestObservationDate = [v15 earliestObservationDate];
  v17 = [date earlierDate:earliestObservationDate];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_determineHELEKeepInStagingUntil:(id)until
{
  untilCopy = until;
  v5 = [(TADeviceRecord *)self _determineFirstObservationDateWithTASuspiciousDevice:untilCopy];
  v6 = MEMORY[0x277CBEAA8];
  settings = [(TADeviceRecord *)self settings];
  [settings maxExpectedHELEWildInterval];
  v8 = [v6 dateWithTimeInterval:v5 sinceDate:?];

  settings2 = [(TADeviceRecord *)self settings];
  if ([settings2 shouldAlertHELEImmediatelyForImmediateTypes])
  {
    immediacyType = [untilCopy immediacyType];

    if (immediacyType == 2)
    {
      date = [untilCopy date];
      v12 = [v8 laterDate:date];
      goto LABEL_15;
    }
  }

  else
  {
  }

  date = [untilCopy date];
  v13 = MEMORY[0x277CBEAA8];
  [(TADeviceRecordSettings *)self->_settings minimumHELEStagingInterval];
  v14 = [v13 dateWithTimeInterval:v5 sinceDate:?];
  v15 = [v14 laterDate:date];

  settings3 = [(TADeviceRecord *)self settings];
  stagingHELEBackstopHour = [settings3 stagingHELEBackstopHour];

  if (stagingHELEBackstopHour < 25)
  {
    v18 = [date getNextDateAtHour:{-[TADeviceRecordSettings assumedKeyRollHour](self->_settings, "assumedKeyRollHour")}];
    v19 = [date getNextDateAtHour:{-[TADeviceRecordSettings stagingHELEBackstopHour](self->_settings, "stagingHELEBackstopHour")}];
    if ([v19 compare:v18] == -1)
    {
      v23 = [v15 earlierDate:v19];
    }

    else
    {
      if ([(TADeviceRecordSettings *)self->_settings surfaceHELEAfterHyperStagingIntervalBetweenBackstopAndKeyroll])
      {
        v20 = MEMORY[0x277CBEAA8];
        settings4 = [(TADeviceRecord *)self settings];
        [settings4 hyperHELEStagingInterval];
        v22 = [v20 dateWithTimeInterval:v5 sinceDate:?];

LABEL_13:
        v12 = [v8 laterDate:v22];

        goto LABEL_14;
      }

      v23 = v15;
    }

    v22 = v23;
    goto LABEL_13;
  }

  v12 = v15;
LABEL_14:

LABEL_15:

  return v12;
}

- (id)_determineKeepInStagingUntil:(id)until
{
  untilCopy = until;
  latestAdvertisement = [untilCopy latestAdvertisement];
  if ([latestAdvertisement getDeviceType] == 3)
  {

LABEL_5:
    v10 = [(TADeviceRecord *)self _determineHELEKeepInStagingUntil:untilCopy];
    goto LABEL_17;
  }

  accessoryInfo = [untilCopy accessoryInfo];
  if (accessoryInfo)
  {
    v7 = accessoryInfo;
    accessoryInfo2 = [untilCopy accessoryInfo];
    isHawkeyeAudioAccessory = [accessoryInfo2 isHawkeyeAudioAccessory];

    if (isHawkeyeAudioAccessory)
    {
      goto LABEL_5;
    }
  }

  else
  {
  }

  v11 = [(TADeviceRecord *)self _determineFirstObservationDateWithTASuspiciousDevice:untilCopy];
  v12 = MEMORY[0x277CBEAA8];
  settings = [(TADeviceRecord *)self settings];
  [settings maxExpectedDurianWildInterval];
  v14 = [v12 dateWithTimeInterval:v11 sinceDate:?];

  immediacyType = [untilCopy immediacyType];
  date = [untilCopy date];
  if (immediacyType != 2)
  {
    v17 = [date getNextDateAtHour:{-[TADeviceRecordSettings assumedKeyRollHour](self->_settings, "assumedKeyRollHour")}];
    v18 = MEMORY[0x277CBEAA8];
    [(TADeviceRecordSettings *)self->_settings minimumStagingInterval];
    v19 = [v18 dateWithTimeInterval:v11 sinceDate:?];
    v20 = [v19 laterDate:date];

    v21 = [date getNextDateAtHour:{-[TADeviceRecordSettings stagingBackstopHour](self->_settings, "stagingBackstopHour")}];
    if ([v21 compare:v17] == -1)
    {
      v25 = [v20 earlierDate:v21];
    }

    else
    {
      if ([(TADeviceRecordSettings *)self->_settings surfaceAfterHyperStagingIntervalBetweenBackstopAndKeyroll])
      {
        v22 = MEMORY[0x277CBEAA8];
        settings2 = [(TADeviceRecord *)self settings];
        [settings2 hyperStagingInterval];
        v24 = [v22 dateWithTimeInterval:v11 sinceDate:?];

LABEL_15:
        v10 = [v14 laterDate:v24];

        goto LABEL_16;
      }

      v25 = v20;
    }

    v24 = v25;
    goto LABEL_15;
  }

  v10 = [v14 laterDate:date];
LABEL_16:

LABEL_17:

  return v10;
}

- (void)stageDetectionResults:(id)results
{
  v27 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [resultsCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(resultsCopy);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        deviceRecord = self->_deviceRecord;
        address = [v9 address];
        v12 = [(NSMutableDictionary *)deviceRecord objectForKeyedSubscript:address];

        if (v12)
        {
          if ([v12 state] == 3)
          {
            v13 = [(TADeviceRecord *)self _determineKeepInStagingUntil:v9];
            v14 = [[TAStagedSuspiciousDevice alloc] initWithDetection:v9 keepInStagingUntil:v13];
            [v12 stageDetection:v14];
          }

          else
          {
            v16 = TAStatusLog;
            if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
            {
              [(TADeviceRecord *)&v18 stageDetectionResults:v19, v16];
            }
          }
        }

        else
        {
          v15 = TAStatusLog;
          if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
          {
            [(TADeviceRecord *)&v20 stageDetectionResults:v21, v15];
          }
        }
      }

      v6 = [resultsCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)limitSuspiciousDevicesSentToObservers:(id)observers forDailyMaximum:(unint64_t)maximum
{
  v51 = *MEMORY[0x277D85DE8];
  observersCopy = observers;
  v7 = observersCopy;
  if (!observersCopy || ![observersCopy count])
  {
    array = MEMORY[0x277CBEBF8];
    goto LABEL_25;
  }

  array = [MEMORY[0x277CBEB18] array];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v33 = v7;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v36 objects:v50 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v37;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v36 + 1) + 8 * i);
        v13 = [(TADeviceRecord *)self getNumSurfacedAlerts:v12];
        address = [v12 address];
        v15 = [(TADeviceRecord *)self _getDeviceRecord:address];

        [v15 setNumPotentialSurfacedAlerts:{objc_msgSend(v15, "numPotentialSurfacedAlerts") + 1}];
        if (v13 < maximum)
        {
          [array addObject:v12];
        }

        v16 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
        {
          v17 = v16;
          v18 = [v15 description];
          numPotentialSurfacedAlerts = [v15 numPotentialSurfacedAlerts];
          *buf = 68289795;
          v41 = 0;
          v42 = 2082;
          v43 = "";
          v44 = 2113;
          v45 = v18;
          v46 = 2049;
          v47 = v13;
          v48 = 2049;
          v49 = numPotentialSurfacedAlerts;
          _os_log_impl(&dword_26F2E2000, v17, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#TADeviceRecord number of staged and potential alerts for device record, singleDeviceRecord:%{private}@, numSurfacedAlerts:%{private}lu, numPotentialSurfacedAlerts:%{private}lu}", buf, 0x30u);
        }
      }

      v9 = [obj countByEnumeratingWithState:&v36 objects:v50 count:16];
    }

    while (v9);
  }

  v20 = [obj count];
  v21 = [array count];
  v22 = v20 - v21;
  if ([array count])
  {
    v23 = TAStatusLog;
    v24 = os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT);
    if (v20 == v21)
    {
      if (v24)
      {
        v25 = v23;
        v26 = [obj count];
        *buf = 68289538;
        v41 = 0;
        v42 = 2082;
        v43 = "";
        v44 = 2050;
        v45 = 0;
        v46 = 2050;
        v47 = v26;
        v27 = "{msg%{public}.0s:#TADeviceRecord no detections have reached daily surfacing limit; not throttling, numThrottledSuspiciousDevices:%{public}lu, numSuspiciousDevices:%{public}lu}";
LABEL_23:
        _os_log_impl(&dword_26F2E2000, v25, OS_LOG_TYPE_DEFAULT, v27, buf, 0x26u);
      }
    }

    else if (v24)
    {
      v25 = v23;
      v30 = [obj count];
      *buf = 68289538;
      v41 = 0;
      v42 = 2082;
      v43 = "";
      v44 = 2050;
      v45 = v22;
      v46 = 2050;
      v47 = v30;
      v27 = "{msg%{public}.0s:#TADeviceRecord suppressed alerting for some detections due to daily alert limit, numThrottledSuspiciousDevices:%{public}lu, numSuspiciousDevices:%{public}lu}";
      goto LABEL_23;
    }
  }

  else
  {
    v28 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v28;
      v29 = [obj count];
      *buf = 68289538;
      v41 = 0;
      v42 = 2082;
      v43 = "";
      v44 = 2050;
      v45 = v22;
      v46 = 2050;
      v47 = v29;
      v27 = "{msg%{public}.0s:#TADeviceRecord all detections have reached daily surfacing limit; not surfacing any new alerts, numThrottledSuspiciousDevices:%{public}lu, numSuspiciousDevices:%{public}lu}";
      goto LABEL_23;
    }
  }

  v7 = v33;
LABEL_25:

  v31 = *MEMORY[0x277D85DE8];

  return array;
}

- (void)mergeWithAnotherDeviceRecord:(id)record
{
  v93 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v5 = TAStatusLog;
  if (recordCopy)
  {
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
    {
      settings = self->_settings;
      log = v5;
      v64 = [(TADeviceRecordSettings *)settings description];
      uTF8String = [v64 UTF8String];
      getDateString = [(NSDate *)self->_lastPurgeDate getDateString];
      uTF8String2 = [getDateString UTF8String];
      getDateString2 = [(NSDate *)self->_lastScanAttemptDate getDateString];
      uTF8String3 = [getDateString2 UTF8String];
      v55 = [(NSMutableDictionary *)self->_deviceRecord count];
      v54 = [(NSMutableDictionary *)self->_deviceUUIDToAddress count];
      settings = [recordCopy settings];
      v7 = [settings description];
      uTF8String4 = [v7 UTF8String];
      lastPurgeDate = [recordCopy lastPurgeDate];
      getDateString3 = [lastPurgeDate getDateString];
      uTF8String5 = [getDateString3 UTF8String];
      lastScanAttemptDate = [recordCopy lastScanAttemptDate];
      getDateString4 = [lastScanAttemptDate getDateString];
      uTF8String6 = [getDateString4 UTF8String];
      deviceRecord = [recordCopy deviceRecord];
      v13 = [deviceRecord count];
      deviceUUIDToAddress = [recordCopy deviceUUIDToAddress];
      buf = 68291586;
      v71 = 2082;
      v72 = "";
      v73 = 2082;
      v74 = uTF8String;
      v75 = 2082;
      v76 = uTF8String2;
      v77 = 2082;
      v78 = uTF8String3;
      v79 = 2050;
      v80 = v55;
      v81 = 2050;
      v82 = v54;
      v83 = 2082;
      v84 = uTF8String4;
      v85 = 2082;
      v86 = uTF8String5;
      v87 = 2082;
      v88 = uTF8String6;
      v89 = 2050;
      v90 = v13;
      v91 = 2050;
      v92 = [deviceUUIDToAddress count];
      _os_log_impl(&dword_26F2E2000, log, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#TADeviceRecord merging with other record, self.settings:%{public}s, self.lastPurgeDate:%{public}s, self.lastScanAttemptDate:%{public}s, self.deviceRecord.count:%{public}lu, self.deviceUUIDToAddress.count:%{public}lu, other.settings:%{public}s, other.lastPurgeDate:%{public}s, other.lastScanAttemptDate:%{public}s, other.deviceRecord.count:%{public}lu, other.deviceUUIDToAddress.count:%{public}lu}", &buf, 0x76u);
    }

    lastPurgeDate = self->_lastPurgeDate;
    lastPurgeDate2 = [recordCopy lastPurgeDate];
    v17 = [(NSDate *)lastPurgeDate laterDate:lastPurgeDate2];
    v18 = self->_lastPurgeDate;
    self->_lastPurgeDate = v17;

    lastScanAttemptDate = self->_lastScanAttemptDate;
    lastScanAttemptDate2 = [recordCopy lastScanAttemptDate];
    v21 = [(NSDate *)lastScanAttemptDate laterDate:lastScanAttemptDate2];
    v22 = self->_lastScanAttemptDate;
    self->_lastScanAttemptDate = v21;

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    deviceRecord2 = [recordCopy deviceRecord];
    v24 = [deviceRecord2 countByEnumeratingWithState:&v65 objects:v69 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v66;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v66 != v26)
          {
            objc_enumerationMutation(deviceRecord2);
          }

          v28 = *(*(&v65 + 1) + 8 * i);
          v29 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v28];

          if (v29)
          {
            deviceRecord4 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v28];
            deviceRecord3 = [recordCopy deviceRecord];
            v32 = [deviceRecord3 objectForKeyedSubscript:v28];

            [deviceRecord4 mergeWithAnotherSingleDeviceRecord:v32];
          }

          else
          {
            deviceRecord4 = [recordCopy deviceRecord];
            v32 = [deviceRecord4 objectForKeyedSubscript:v28];
            [(NSMutableDictionary *)self->_deviceRecord setObject:v32 forKeyedSubscript:v28];
          }

          v33 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v28];
          uuid = [v33 uuid];

          if (uuid)
          {
            deviceUUIDToAddress = self->_deviceUUIDToAddress;
            v36 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v28];
            uuid2 = [v36 uuid];
            [(NSMutableDictionary *)deviceUUIDToAddress setObject:v28 forKeyedSubscript:uuid2];
          }
        }

        v25 = [deviceRecord2 countByEnumeratingWithState:&v65 objects:v69 count:16];
      }

      while (v25);
    }

    v38 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
    {
      v39 = self->_settings;
      v40 = v38;
      v41 = [(TADeviceRecordSettings *)v39 description];
      uTF8String7 = [v41 UTF8String];
      getDateString5 = [(NSDate *)self->_lastPurgeDate getDateString];
      uTF8String8 = [getDateString5 UTF8String];
      getDateString6 = [(NSDate *)self->_lastScanAttemptDate getDateString];
      uTF8String9 = [getDateString6 UTF8String];
      v47 = [(NSMutableDictionary *)self->_deviceRecord count];
      v48 = [(NSMutableDictionary *)self->_deviceUUIDToAddress count];
      buf = 68290306;
      v71 = 2082;
      v72 = "";
      v73 = 2082;
      v74 = uTF8String7;
      v75 = 2082;
      v76 = uTF8String8;
      v77 = 2082;
      v78 = uTF8String9;
      v79 = 2050;
      v80 = v47;
      v81 = 2050;
      v82 = v48;
      _os_log_impl(&dword_26F2E2000, v40, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#TADeviceRecord new record stats, self.settings:%{public}s, self.lastPurgeDate:%{public}s, self.lastScanAttemptDate:%{public}s, self.deviceRecord.count:%{public}lu, self.deviceUUIDToAddress.count:%{public}lu}", &buf, 0x44u);
    }
  }

  else if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
  {
    [(TADeviceRecord *)v5 mergeWithAnotherDeviceRecord:v49, v50];
  }

  v51 = *MEMORY[0x277D85DE8];
}

- (void)forceStagedDetectionsToSurfaceImmediatelyWithAdvertisement:(id)advertisement withReason:(unint64_t)reason
{
  v50 = *MEMORY[0x277D85DE8];
  advertisementCopy = advertisement;
  deviceRecord = self->_deviceRecord;
  address = [advertisementCopy address];
  v8 = [(NSMutableDictionary *)deviceRecord objectForKeyedSubscript:address];

  if (v8)
  {
    getStagedDetections = [v8 getStagedDetections];
    v10 = [getStagedDetections count];

    if (v10)
    {
      if ([advertisementCopy getDeviceType] != 3 || -[TADeviceRecordSettings shouldAlertHELEImmediatelyForImmediateTypes](self->_settings, "shouldAlertHELEImmediatelyForImmediateTypes"))
      {
        v11 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
        {
          v12 = v11;
          v13 = [advertisementCopy description];
          v14 = [v8 description];
          buf = 68289539;
          v44 = 2082;
          v45 = "";
          v46 = 2113;
          v47 = v13;
          v48 = 2113;
          v49 = v14;
          _os_log_impl(&dword_26F2E2000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TADeviceRecord forcing staged detections to surface immediately, advertisement:%{private}@, singleDeviceRecord:%{private}@}", &buf, 0x26u);
        }

        v33 = advertisementCopy;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v35 = v8;
        obj = [v8 getStagedDetections];
        v15 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
        reasonCopy2 = reason;
        if (v15)
        {
          v17 = v15;
          v37 = *v39;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v39 != v37)
              {
                objc_enumerationMutation(obj);
              }

              v19 = *(*(&v38 + 1) + 8 * i);
              detection = [v19 detection];
              v21 = [(TADeviceRecord *)self _determineFirstObservationDateWithTASuspiciousDevice:detection];

              detection2 = [v19 detection];
              [detection2 updateForceReasonWith:reasonCopy2];

              detection3 = [v19 detection];
              latestAdvertisement = [detection3 latestAdvertisement];
              if ([latestAdvertisement getDeviceType] == 3)
              {

LABEL_16:
                v29 = MEMORY[0x277CBEAA8];
                settings = [(TADeviceRecord *)self settings];
                [settings maxExpectedHELEWildInterval];
                goto LABEL_19;
              }

              accessoryInfo = [v35 accessoryInfo];
              if (accessoryInfo)
              {
                v26 = accessoryInfo;
                accessoryInfo2 = [v35 accessoryInfo];
                isHawkeyeAudioAccessory = [accessoryInfo2 isHawkeyeAudioAccessory];

                reasonCopy2 = reason;
                if (isHawkeyeAudioAccessory)
                {
                  goto LABEL_16;
                }
              }

              else
              {
              }

              v29 = MEMORY[0x277CBEAA8];
              settings = [(TADeviceRecord *)self settings];
              [settings maxExpectedDurianWildInterval];
LABEL_19:
              v31 = [v29 dateWithTimeInterval:v21 sinceDate:?];

              [v19 setKeepInStagingUntil:v31];
            }

            v17 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
          }

          while (v17);
        }

        advertisementCopy = v33;
        v8 = v35;
      }
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_didSurfaceNotificationFor:(id)for
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(TADeviceRecord *)self _getDeviceRecord:for];
  v4 = v3;
  if (v3)
  {
    [v3 setHasSurfacedNotification:1];
    v5 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
    {
      v12 = 68289283;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2113;
      v17 = v4;
      v6 = "{msg%{public}.0s:#TADeviceRecord didSurfaceNotificationFor called and record updated, singleDeviceRecord:%{private}@}";
      v7 = v5;
      v8 = OS_LOG_TYPE_DEBUG;
      v9 = 28;
LABEL_6:
      _os_log_impl(&dword_26F2E2000, v7, v8, v6, &v12, v9);
    }
  }

  else
  {
    v10 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
    {
      v12 = 68289026;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v6 = "{msg%{public}.0s:#TADeviceRecord didSurfaceNotificationFor called with non-existant record}";
      v7 = v10;
      v8 = OS_LOG_TYPE_FAULT;
      v9 = 18;
      goto LABEL_6;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasSurfacedNotificationFor:(id)for
{
  v3 = [(TADeviceRecord *)self _getDeviceRecord:for];
  v4 = v3;
  if (v3)
  {
    hasSurfacedNotification = [v3 hasSurfacedNotification];
  }

  else
  {
    hasSurfacedNotification = 0;
  }

  return hasSurfacedNotification;
}

- (BOOL)hasStagedImmediateDetections:(id)detections
{
  v3 = [(TADeviceRecord *)self _getDeviceRecord:detections];
  v4 = v3;
  if (v3)
  {
    hasStagedImmediateDetections = [v3 hasStagedImmediateDetections];
  }

  else
  {
    hasStagedImmediateDetections = 0;
  }

  return hasStagedImmediateDetections;
}

- (unint64_t)getNumStagedDetections:(id)detections
{
  v3 = [(TADeviceRecord *)self _getDeviceRecord:detections];
  v4 = v3;
  if (v3)
  {
    numStagedDetections = [v3 numStagedDetections];
  }

  else
  {
    numStagedDetections = 0;
  }

  return numStagedDetections;
}

- (id)getFirstStagedDetectionDate:(id)date
{
  v3 = [(TADeviceRecord *)self _getDeviceRecord:date];
  v4 = v3;
  if (v3)
  {
    [v3 firstStagedDetectionDate];
  }

  else
  {
    [MEMORY[0x277CBEAA8] distantFuture];
  }
  v5 = ;

  return v5;
}

- (unint64_t)getNumOfAISFetch:(id)fetch
{
  v3 = [(TADeviceRecord *)self _getDeviceRecord:fetch];
  v4 = v3;
  if (v3)
  {
    aISFetchCount = [v3 AISFetchCount];
  }

  else
  {
    aISFetchCount = 0;
  }

  return aISFetchCount;
}

- (BOOL)isAISFetchSuccessful:(id)successful
{
  v3 = [(TADeviceRecord *)self _getDeviceRecord:successful];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 AISFetchState] == 3 || objc_msgSend(v4, "AISFetchState") == 7;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)processBackgroundDetection:(id)detection
{
  if (detection)
  {
    detectionCopy = detection;
    latestAdvertisement = [detectionCopy latestAdvertisement];
    date = [detectionCopy date];
    [(TADeviceRecord *)self _createRecordIfNecessaryWithAdvertisement:latestAdvertisement withDate:date];

    address = [detectionCopy address];
    v8 = [(TADeviceRecord *)self _getDeviceRecord:address];

    [v8 processBackgroundDetection:detectionCopy];
  }
}

- (void)processSurfacedAlerts:(id)alerts
{
  v21 = *MEMORY[0x277D85DE8];
  alertsCopy = alerts;
  v5 = alertsCopy;
  if (alertsCopy)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [alertsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          latestAdvertisement = [v10 latestAdvertisement];
          date = [v10 date];
          [(TADeviceRecord *)self _createRecordIfNecessaryWithAdvertisement:latestAdvertisement withDate:date];

          address = [v10 address];
          v14 = [(TADeviceRecord *)self _getDeviceRecord:address];

          [v14 processSurfacedAlert:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)getLatestBeepOnMoveDate:(id)date
{
  v3 = [(TADeviceRecord *)self _getDeviceRecord:date];
  v4 = v3;
  if (v3)
  {
    latestBeepOnMoveDate = [v3 latestBeepOnMoveDate];
  }

  else
  {
    latestBeepOnMoveDate = 0;
  }

  return latestBeepOnMoveDate;
}

- (unint64_t)getDeviceType:(id)type
{
  v3 = [(TADeviceRecord *)self _getDeviceRecord:type];
  v4 = v3;
  if (v3)
  {
    getDeviceType = [v3 getDeviceType];
  }

  else
  {
    getDeviceType = 0;
  }

  return getDeviceType;
}

- (id)getAccessoryInfo:(id)info
{
  v3 = [(TADeviceRecord *)self _getDeviceRecord:info];
  v4 = v3;
  if (v3)
  {
    accessoryInfo = [v3 accessoryInfo];
  }

  else
  {
    accessoryInfo = 0;
  }

  return accessoryInfo;
}

- (void)removeDevice:(id)device
{
  deviceCopy = device;
  [(TADeviceRecord *)self _clearStagedDetectionsForDevice:deviceCopy];
  [(NSMutableDictionary *)self->_deviceRecord removeObjectForKey:deviceCopy];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      deviceRecord = [(TADeviceRecord *)self deviceRecord];
      deviceRecord2 = [(TADeviceRecord *)v6 deviceRecord];
      if (deviceRecord != deviceRecord2)
      {
        deviceRecord3 = [(TADeviceRecord *)self deviceRecord];
        [(TADeviceRecord *)v6 deviceRecord];
        v33 = v32 = deviceRecord3;
        if (![deviceRecord3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_24;
        }
      }

      lastPurgeDate = [(TADeviceRecord *)self lastPurgeDate];
      lastPurgeDate2 = [(TADeviceRecord *)v6 lastPurgeDate];
      if (lastPurgeDate != lastPurgeDate2)
      {
        lastPurgeDate3 = [(TADeviceRecord *)self lastPurgeDate];
        lastPurgeDate4 = [(TADeviceRecord *)v6 lastPurgeDate];
        if (![lastPurgeDate3 isEqual:?])
        {
          v10 = 0;
LABEL_22:

LABEL_23:
          if (deviceRecord == deviceRecord2)
          {
LABEL_25:

            goto LABEL_26;
          }

LABEL_24:

          goto LABEL_25;
        }
      }

      lastScanAttemptDate = [(TADeviceRecord *)self lastScanAttemptDate];
      lastScanAttemptDate2 = [(TADeviceRecord *)v6 lastScanAttemptDate];
      v31 = lastScanAttemptDate;
      v15 = lastScanAttemptDate == lastScanAttemptDate2;
      v16 = lastScanAttemptDate2;
      if (v15)
      {
        v28 = lastPurgeDate3;
        v29 = lastPurgeDate2;
      }

      else
      {
        lastScanAttemptDate3 = [(TADeviceRecord *)self lastScanAttemptDate];
        lastScanAttemptDate4 = [(TADeviceRecord *)v6 lastScanAttemptDate];
        v26 = lastScanAttemptDate3;
        if (![lastScanAttemptDate3 isEqual:?])
        {
          v10 = 0;
          v23 = v31;
          goto LABEL_20;
        }

        v28 = lastPurgeDate3;
        v29 = lastPurgeDate2;
      }

      v27 = v16;
      settings = [(TADeviceRecord *)self settings];
      settings2 = [(TADeviceRecord *)v6 settings];
      v20 = settings2;
      if (settings == settings2)
      {

        v10 = 1;
      }

      else
      {
        settings3 = [(TADeviceRecord *)self settings];
        settings4 = [(TADeviceRecord *)v6 settings];
        v10 = [settings3 isEqual:settings4];
      }

      v23 = v31;
      v16 = v27;
      lastPurgeDate3 = v28;
      lastPurgeDate2 = v29;
      if (v31 == v27)
      {
LABEL_21:

        if (lastPurgeDate == lastPurgeDate2)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

LABEL_20:

      goto LABEL_21;
    }

    v10 = 0;
  }

LABEL_26:

  return v10;
}

- (id)descriptionDictionary
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allKeys = [(NSMutableDictionary *)self->_deviceRecord allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v8];
        descriptionDictionary = [v9 descriptionDictionary];
        hexString = [v8 hexString];
        [0 setObject:descriptionDictionary forKey:hexString];
      }

      v5 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v12 = [0 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)description
{
  descriptionDictionary = [(TADeviceRecord *)self descriptionDictionary];
  v10 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:descriptionDictionary error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [(TAOutgoingRequests *)v6 description];
    }

    string = [MEMORY[0x277CCACA8] string];
  }

  else
  {
    string = v4;
  }

  v8 = string;

  return v8;
}

- (TADeviceRecord)initWithCoder:(id)coder
{
  v56 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v48.receiver = self;
  v48.super_class = TADeviceRecord;
  v5 = [(TADeviceRecord *)&v48 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"DeviceRecord"];
    deviceRecord = v5->_deviceRecord;
    v5->_deviceRecord = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LastPurgeDate"];
    lastPurgeDate = v5->_lastPurgeDate;
    v5->_lastPurgeDate = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LastScanAttemptDate"];
    if (v14)
    {
      [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LastScanAttemptDate"];
    }

    else
    {
      [MEMORY[0x277CBEAA8] distantPast];
    }
    v15 = ;
    lastScanAttemptDate = v5->_lastScanAttemptDate;
    v5->_lastScanAttemptDate = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Settings"];
    settings = v5->_settings;
    v5->_settings = v17;

    v19 = MEMORY[0x277CBEB98];
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = [v19 setWithObjects:{v20, v21, objc_opt_class(), 0}];
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"UUIDToAddress"];
    deviceUUIDToAddress = v5->_deviceUUIDToAddress;
    v5->_deviceUUIDToAddress = v23;

    if (!v5->_deviceUUIDToAddress)
    {
      v25 = TAStatusLog;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        v50 = 0;
        v51 = 2082;
        v52 = "";
        _os_log_impl(&dword_26F2E2000, v25, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TADeviceRecord initWithCoder doesn't have deviceUUIDToAddress key due to old version}", buf, 0x12u);
      }

      v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v27 = v5->_deviceUUIDToAddress;
      v5->_deviceUUIDToAddress = v26;
    }

    v43 = coderCopy;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    allKeys = [(NSMutableDictionary *)v5->_deviceRecord allKeys];
    v29 = [allKeys countByEnumeratingWithState:&v44 objects:v55 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v45;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v45 != v31)
          {
            objc_enumerationMutation(allKeys);
          }

          v33 = *(*(&v44 + 1) + 8 * i);
          v34 = [(NSMutableDictionary *)v5->_deviceRecord objectForKeyedSubscript:v33];
          uuid = [v34 uuid];

          if (uuid)
          {
            v36 = v5->_deviceUUIDToAddress;
            uuid2 = [v34 uuid];
            [(NSMutableDictionary *)v36 setObject:v33 forKey:uuid2];
          }

          else
          {
            v38 = TAStatusLog;
            if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
            {
              v39 = v38;
              hexString = [v33 hexString];
              *buf = 68289283;
              v50 = 0;
              v51 = 2082;
              v52 = "";
              v53 = 2113;
              v54 = hexString;
              _os_log_impl(&dword_26F2E2000, v39, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#TADeviceRecord found a record with address but no uuid, address:%{private}@}", buf, 0x1Cu);
            }
          }
        }

        v30 = [allKeys countByEnumeratingWithState:&v44 objects:v55 count:16];
      }

      while (v30);
    }

    coderCopy = v43;
  }

  v41 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  deviceRecord = self->_deviceRecord;
  coderCopy = coder;
  [coderCopy encodeObject:deviceRecord forKey:@"DeviceRecord"];
  [coderCopy encodeObject:self->_lastPurgeDate forKey:@"LastPurgeDate"];
  [coderCopy encodeObject:self->_lastScanAttemptDate forKey:@"LastScanAttemptDate"];
  [coderCopy encodeObject:self->_settings forKey:@"Settings"];
  [coderCopy encodeObject:self->_deviceUUIDToAddress forKey:@"UUIDToAddress"];
}

- (TAStoreRequestProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_createRecordIfNecessaryWithAdvertisement:(void *)a1 withDate:(void *)a2 .cold.1(void *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 address];
  v5 = [v4 hexString];
  v7 = 138477827;
  v8 = v5;
  _os_log_debug_impl(&dword_26F2E2000, v3, OS_LOG_TYPE_DEBUG, "#TADeviceRecord creating new record for %{private}@", &v7, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_setDevice:withInternalState:withDate:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_4(&dword_26F2E2000, v0, v1, "#TADeviceRecord unknown new state %lu while transitioning from old state %lu", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_setDevice:withInternalState:withDate:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_4(&dword_26F2E2000, v0, v1, "#TADeviceRecord unknown new state %lu while transitioning from old state %lu", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_setDevice:withInternalState:withDate:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_4(&dword_26F2E2000, v0, v1, "#TADeviceRecord unknown new state %lu while transitioning from old state %lu", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_setDevice:withInternalState:withDate:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_4(&dword_26F2E2000, v0, v1, "#TADeviceRecord unknown new state %lu while transitioning from old state %lu", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_setDevice:withInternalState:withDate:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_4(&dword_26F2E2000, v0, v1, "#TADeviceRecord unknown new state %lu while transitioning from old state %lu", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_setDevice:(uint64_t)a1 withInternalState:(NSObject *)a2 withDate:.cold.6(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_fault_impl(&dword_26F2E2000, a2, OS_LOG_TYPE_FAULT, "#TADeviceRecord unknown old state %lu", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)purgeWithClock:(void *)a3 andAppendOutgoingRequestsTo:(void *)a4 .cold.1(_DWORD *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 hexString];
  *a1 = 138412290;
  *a4 = v8;
  OUTLINED_FUNCTION_0(&dword_26F2E2000, v9, v10, "#TADeviceRecord expiring %@ from record");
}

- (void)updateDeviceRecordOnSessionChange:(void *)a3 WithCurrentDate:(void *)a4 .cold.1(_DWORD *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 hexString];
  *a1 = 138412290;
  *a4 = v8;
  OUTLINED_FUNCTION_0(&dword_26F2E2000, v9, v10, "#TADeviceRecord resetting %@ status to reprompt");
}

- (void)stageDetectionResults:(NSObject *)a3 .cold.1(uint8_t *a1, _BYTE *a2, NSObject *a3)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_3_1(&dword_26F2E2000, a3, a3, "#TADeviceRecord device not in staged state for stageDetectionResults", a1);
}

- (void)stageDetectionResults:(NSObject *)a3 .cold.2(uint8_t *a1, _BYTE *a2, NSObject *a3)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_3_1(&dword_26F2E2000, a3, a3, "#TADeviceRecord no record for stageDetectionResults", a1);
}

@end