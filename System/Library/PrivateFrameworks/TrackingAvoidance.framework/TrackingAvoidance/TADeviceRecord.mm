@interface TADeviceRecord
+ (id)notificationInternalStateToString:(unint64_t)a3;
+ (unint64_t)_convertTANotificationStateToTANotificationInternalState:(unint64_t)a3;
- (BOOL)hasStagedImmediateDetections:(id)a3;
- (BOOL)hasSurfacedNotificationFor:(id)a3;
- (BOOL)isAISFetchSuccessful:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isKnownDevice:(id)a3;
- (TADeviceRecord)init;
- (TADeviceRecord)initWithCoder:(id)a3;
- (TADeviceRecord)initWithSettings:(id)a3;
- (TAStoreRequestProtocol)delegate;
- (id)_determineFirstObservationDateWithTASuspiciousDevice:(id)a3;
- (id)_determineHELEKeepInStagingUntil:(id)a3;
- (id)_determineKeepInStagingUntil:(id)a3;
- (id)_getDeviceRecord:(id)a3;
- (id)_getDeviceRecordWithUUID:(id)a3;
- (id)createTAOutgoingRequestForUnstagingUpdateFor:(id)a3 withCurrentDate:(id)a4;
- (id)createTAOutgoingRequestWithExpiringTASingleDeviceRecord:(id)a3 withCurrentDate:(id)a4;
- (id)description;
- (id)descriptionDictionary;
- (id)getAccessoryInfo:(id)a3;
- (id)getDetectionResultsToPush;
- (id)getDeviceUUID:(id)a3;
- (id)getFirstStagedDetectionDate:(id)a3;
- (id)getLatestAdvertisement:(id)a3;
- (id)getLatestBeepOnMoveDate:(id)a3;
- (id)getUnknownBeacon:(id)a3;
- (id)limitSuspiciousDevicesSentToObservers:(id)a3 forDailyMaximum:(unint64_t)a4;
- (unint64_t)getAISFetchState:(id)a3;
- (unint64_t)getDeviceNotificationState:(id)a3;
- (unint64_t)getDeviceOwnershipType:(id)a3;
- (unint64_t)getDeviceType:(id)a3;
- (unint64_t)getNumOfAISFetch:(id)a3;
- (unint64_t)getNumStagedDetections:(id)a3;
- (unint64_t)getNumSurfacedAlerts:(id)a3;
- (void)_beepOnMoveForceAlertIfEligableForDeviceRecord:(id)a3 andAdvertisment:(id)a4;
- (void)_clearStagedDetectionsForDevice:(id)a3;
- (void)_createRecordIfNecessaryWithAdvertisement:(id)a3 withDate:(id)a4;
- (void)_didSurfaceNotificationFor:(id)a3;
- (void)_performNotificationStateTransitionActionsForDevice:(id)a3 from:(unint64_t)a4 to:(unint64_t)a5;
- (void)_processAISFetchSuccess:(id)a3 andAppendOutgoingRequestsTo:(id)a4;
- (void)_processPlaySoundSuccess:(id)a3 andAppendOutgoingRequestsTo:(id)a4;
- (void)_setDevice:(id)a3 withExternalState:(unint64_t)a4 withDate:(id)a5;
- (void)_setDevice:(id)a3 withInternalState:(unint64_t)a4 withDate:(id)a5;
- (void)_setDevice:(id)a3 withType:(unint64_t)a4 withDate:(id)a5;
- (void)_updateAISStateOnNotificationStateChange:(id)a3 from:(unint64_t)a4 to:(unint64_t)a5;
- (void)_updateAdvertisement:(id)a3 andAppendOutgoingRequestsTo:(id)a4;
- (void)_updateKeepInStagingUntil:(id)a3;
- (void)checkForScanRequestsWithClock:(id)a3 andAppendOutgoingRequestsTo:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)forceStagedDetectionsToSurfaceImmediatelyWithAdvertisement:(id)a3 withReason:(unint64_t)a4;
- (void)forceUpdateAISFetchState:(id)a3 state:(unint64_t)a4;
- (void)ingestTAEvent:(id)a3 andAppendOutgoingRequestsTo:(id)a4;
- (void)logDeviceRecord;
- (void)mergeWithAnotherDeviceRecord:(id)a3;
- (void)processBackgroundDetection:(id)a3;
- (void)processSurfacedAlerts:(id)a3;
- (void)purgeWithClock:(id)a3 andAppendOutgoingRequestsTo:(id)a4;
- (void)removeDevice:(id)a3;
- (void)requestAISFetchIfNeeded:(id)a3;
- (void)stageDetectionResults:(id)a3;
- (void)updateDeviceRecordOnSessionChange:(id)a3 WithCurrentDate:(id)a4;
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
        v11 = [v10 getDetectionsReadyToPushAndCheckForAISFetch];
        [v3 addObjectsFromArray:v11];

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

- (TADeviceRecord)initWithSettings:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = TADeviceRecord;
  v6 = [(TADeviceRecord *)&v16 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    deviceRecord = v6->_deviceRecord;
    v6->_deviceRecord = v7;

    v9 = [MEMORY[0x277CBEAA8] distantPast];
    lastPurgeDate = v6->_lastPurgeDate;
    v6->_lastPurgeDate = v9;

    v11 = [MEMORY[0x277CBEAA8] distantPast];
    lastScanAttemptDate = v6->_lastScanAttemptDate;
    v6->_lastScanAttemptDate = v11;

    objc_storeStrong(&v6->_settings, a3);
    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    deviceUUIDToAddress = v6->_deviceUUIDToAddress;
    v6->_deviceUUIDToAddress = v13;
  }

  return v6;
}

+ (id)notificationInternalStateToString:(unint64_t)a3
{
  if (a3 > 4)
  {
    return @"Invalid";
  }

  else
  {
    return off_279DD1ED0[a3];
  }
}

- (id)_getDeviceRecord:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_getDeviceRecordWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_deviceUUIDToAddress objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_deviceUUIDToAddress objectForKeyedSubscript:v4];
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

- (unint64_t)getDeviceOwnershipType:(id)a3
{
  v3 = [(TADeviceRecord *)self _getDeviceRecord:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 type];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)getDeviceNotificationState:(id)a3
{
  v3 = [(TADeviceRecord *)self _getDeviceRecord:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 state];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)getNumSurfacedAlerts:(id)a3
{
  v4 = a3;
  v5 = [v4 latestAdvertisement];
  v6 = [v4 date];
  [(TADeviceRecord *)self _createRecordIfNecessaryWithAdvertisement:v5 withDate:v6];

  v7 = [v4 address];

  v8 = [(TADeviceRecord *)self _getDeviceRecord:v7];

  v9 = [v8 numSurfacedAlerts];
  return v9;
}

- (id)getLatestAdvertisement:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 latestAdvertisement];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)getAISFetchState:(id)a3
{
  v3 = [(TADeviceRecord *)self _getDeviceRecord:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 AISFetchState];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)forceUpdateAISFetchState:(id)a3 state:(unint64_t)a4
{
  v5 = [(TADeviceRecord *)self _getDeviceRecord:a3];
  if (v5)
  {
    v6 = v5;
    [v5 setAISFetchState:a4];
    v5 = v6;
  }
}

- (id)getDeviceUUID:(id)a3
{
  v3 = [(TADeviceRecord *)self _getDeviceRecord:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 uuid];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)getUnknownBeacon:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(TADeviceRecord *)self _getDeviceRecordWithUUID:v4];
    if (v5)
    {
      v6 = [TAUnknownBeacon instancesRespondToSelector:NSSelectorFromString(&cfstr_Initwithbeacon.isa)];
      v7 = [TAUnknownBeacon alloc];
      v8 = [v5 uuid];
      v9 = [v5 address];
      v10 = [v5 getDeviceType];
      v11 = [v5 accessoryInfo];
      if (v6)
      {
        v12 = [v5 latestAdvertisement];
        v13 = [v12 isPosh];
        v14 = [v5 latestAdvertisement];
        v15 = -[TAUnknownBeacon initWithBeaconUUID:address:deviceType:withAccessoryInfo:isPoshAccessory:isFindMyNetwork:](v7, "initWithBeaconUUID:address:deviceType:withAccessoryInfo:isPoshAccessory:isFindMyNetwork:", v8, v9, v10, v11, v13, [v14 isApple]);
      }

      else
      {
        v15 = [(TAUnknownBeacon *)v7 initWithBeaconUUID:v8 address:v9 deviceType:v10 withAccessoryInfo:v11];
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

+ (unint64_t)_convertTANotificationStateToTANotificationInternalState:(unint64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

- (void)_createRecordIfNecessaryWithAdvertisement:(id)a3 withDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    deviceRecord = self->_deviceRecord;
    v9 = [v6 address];
    v10 = [(NSMutableDictionary *)deviceRecord objectForKeyedSubscript:v9];

    if (v7)
    {
      if (!v10)
      {
        v11 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
        {
          [TADeviceRecord _createRecordIfNecessaryWithAdvertisement:v11 withDate:v6];
        }

        v12 = [TASingleDeviceRecord alloc];
        [(TADeviceRecordSettings *)self->_settings keepAliveInterval];
        v13 = [(TASingleDeviceRecord *)v12 initWithDeviceAdvertisement:v6 state:0 type:0 date:v7 keepAliveInterval:?];
        if (v13)
        {
          v14 = self->_deviceRecord;
          v15 = [v6 address];
          [(NSMutableDictionary *)v14 setObject:v13 forKey:v15];

          deviceUUIDToAddress = self->_deviceUUIDToAddress;
          v17 = [v6 address];
          v18 = [(TASingleDeviceRecord *)v13 uuid];
          [(NSMutableDictionary *)deviceUUIDToAddress setObject:v17 forKey:v18];
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

- (void)_setDevice:(id)a3 withType:(unint64_t)a4 withDate:(id)a5
{
  if (a4 && a3 && a5)
  {
    v8 = a3;
    [(TADeviceRecord *)self _createRecordIfNecessaryWithAdvertisement:v8 withDate:a5];
    deviceRecord = self->_deviceRecord;
    v11 = [v8 address];

    v10 = [(NSMutableDictionary *)deviceRecord objectForKeyedSubscript:v11];
    [v10 setType:a4];
  }
}

- (void)_setDevice:(id)a3 withExternalState:(unint64_t)a4 withDate:(id)a5
{
  v8 = a5;
  v9 = a3;
  [(TADeviceRecord *)self _setDevice:v9 withInternalState:[TADeviceRecord withDate:"_convertTANotificationStateToTANotificationInternalState:" _convertTANotificationStateToTANotificationInternalState:a4], v8];
}

- (void)_setDevice:(id)a3 withInternalState:(unint64_t)a4 withDate:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (!a4 || !v8 || !v9)
  {
    goto LABEL_39;
  }

  [(TADeviceRecord *)self _createRecordIfNecessaryWithAdvertisement:v8 withDate:v9];
  v11 = [v8 address];
  v12 = [(TADeviceRecord *)self getDeviceNotificationState:v11];

  if (v12 > 1)
  {
    switch(v12)
    {
      case 2:
        if (a4 - 1 >= 4)
        {
          if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
          {
            [TADeviceRecord _setDevice:withInternalState:withDate:];
          }

          goto LABEL_31;
        }

        v15 = (a4 - 1) & 0xF;
        v16 = 8;
        goto LABEL_22;
      case 3:
        if (a4 - 1 >= 4)
        {
          if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
          {
            [TADeviceRecord _setDevice:withInternalState:withDate:];
          }

          goto LABEL_31;
        }

        v15 = (a4 - 1) & 0xF;
        v16 = 11;
        goto LABEL_22;
      case 4:
        v13 = a4 - 1;
        if (a4 - 1 >= 4)
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
    v13 = a4 - 1;
    if (a4 - 1 >= 4)
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

  LOBYTE(v14) = a4 - 1;
  if (a4 - 1 >= 4)
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
    v32 = self;
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
    v22 = [v8 address];
    v23 = [v22 hexString];
    [TADeviceRecord notificationInternalStateToString:v12];
    v24 = v33 = v12;
    v25 = [TADeviceRecord notificationInternalStateToString:a4];
    *buf = 136315907;
    v35 = v20;
    v10 = v19;
    self = v32;
    v36 = 2113;
    v37 = v23;
    v38 = 2114;
    v39 = v24;
    v40 = 2114;
    v41 = v25;
    _os_log_impl(&dword_26F2E2000, v21, OS_LOG_TYPE_DEFAULT, "#TADeviceRecord %s updating state for %{private}@ from %{public}@ to %{public}@", buf, 0x2Au);

    v12 = v33;
  }

  if (v14)
  {
    v26 = [v8 address];
    [(TADeviceRecord *)self _performNotificationStateTransitionActionsForDevice:v26 from:v12 to:a4];

    v27 = [v8 address];
    [(TADeviceRecord *)self _updateAISStateOnNotificationStateChange:v27 from:v12 to:a4];

    deviceRecord = self->_deviceRecord;
    v29 = [v8 address];
    v30 = [(NSMutableDictionary *)deviceRecord objectForKeyedSubscript:v29];
    [v30 setState:a4];
  }

LABEL_39:

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_updateAISStateOnNotificationStateChange:(id)a3 from:(unint64_t)a4 to:(unint64_t)a5
{
  v8 = a3;
  if (a4 - 1 < 2)
  {
    if (a5 == 4)
    {
      v17 = v8;
      v12 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v8];
      v13 = [v12 AISFetchState];

      if (v13 == 8 || v13 == 4)
      {
        v15 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v17];
        [v15 setAISFetchState:0];
      }
    }
  }

  else if ((!a4 || a4 == 4) && a5 == 3)
  {
    v16 = v8;
    v9 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v8];
    v10 = [v9 AISFetchState];

    if ((v10 & 0xFFFFFFFFFFFFFFFBLL) == 0)
    {
      v11 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v16];
      [v11 setAISFetchState:1];
    }

    [(TADeviceRecord *)self requestAISFetchIfNeeded:v16];
  }

  MEMORY[0x2821F96F8]();
}

- (void)_performNotificationStateTransitionActionsForDevice:(id)a3 from:(unint64_t)a4 to:(unint64_t)a5
{
  v7 = a3;
  v8 = v7;
  if (a5 == 2)
  {
    v9 = v7;
    [(TADeviceRecord *)self _clearStagedDetectionsForDevice:v7];
    v7 = [(TADeviceRecord *)self _didSurfaceNotificationFor:v9];
  }

  else
  {
    if (a5 != 1)
    {
      goto LABEL_6;
    }

    v9 = v7;
    v7 = [(TADeviceRecord *)self _clearStagedDetectionsForDevice:v7];
  }

  v8 = v9;
LABEL_6:

  MEMORY[0x2821F96F8](v7, v8);
}

- (void)_updateAdvertisement:(id)a3 andAppendOutgoingRequestsTo:(id)a4
{
  v11 = a3;
  v6 = a4;
  if ([v11 beepOnMoveHigh])
  {
    v7 = [v11 scanDate];
    [(TADeviceRecord *)self _createRecordIfNecessaryWithAdvertisement:v11 withDate:v7];
  }

  deviceRecord = self->_deviceRecord;
  v9 = [v11 address];
  v10 = [(NSMutableDictionary *)deviceRecord objectForKeyedSubscript:v9];

  if (v10)
  {
    [v10 updateAdvertisement:v11 andAppendOutgoingRequestsTo:v6];
    [(TADeviceRecord *)self _beepOnMoveForceAlertIfEligableForDeviceRecord:v10 andAdvertisment:v11];
  }
}

- (void)_beepOnMoveForceAlertIfEligableForDeviceRecord:(id)a3 andAdvertisment:(id)a4
{
  v10 = a3;
  v6 = a4;
  if ([v10 getDeviceType] == 1)
  {
    v7 = [v6 isPosh] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v10 accessoryInfo];
  v9 = 0;
  if ([v6 isPosh] && v8)
  {
    if ([v8 isCapableOfBOM])
    {
      v9 = [v6 isApple];
    }

    else
    {
      v9 = 0;
    }
  }

  if (-[TADeviceRecordSettings surfaceImmediatelyBeepOnMove](self->_settings, "surfaceImmediatelyBeepOnMove") && [v6 beepOnMoveHigh] && ((v7 | v9) & 1) != 0 && objc_msgSend(v10, "numStagedDetections"))
  {
    [(TADeviceRecord *)self forceStagedDetectionsToSurfaceImmediatelyWithAdvertisement:v6 withReason:2];
  }
}

- (void)_processPlaySoundSuccess:(id)a3 andAppendOutgoingRequestsTo:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 address];

    if (v8)
    {
      v9 = [v6 address];
      v10 = [(TADeviceRecord *)self _getDeviceRecord:v9];

      if (v10)
      {
        [v10 processPlaySoundSuccess:v6 andAppendOutgoingRequestsTo:v7];
LABEL_8:

        goto LABEL_9;
      }

      v14 = TAStatusLog;
      if (!os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }

      v12 = v14;
      v15 = [v6 description];
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
    v12 = [v6 description];
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

- (void)requestAISFetchIfNeeded:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v4];
  v6 = v5;
  if (!v5)
  {
    v15 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      v12 = v15;
      v13 = [v4 hexString];
      v35 = 68289283;
      v36 = 0;
      v37 = 2082;
      v38 = "";
      v39 = 2113;
      v40 = v13;
      v14 = "{msg%{public}.0s:#TADeviceRecord no records exist for AIS fetch, address:%{private}@}";
      v16 = v12;
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
    v7 = [v6 latestAdvertisement];
    v8 = [v7 isPosh];

    if ((v8 & 1) == 0)
    {
      v26 = TAStatusLog;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v26;
        v13 = [v4 hexString];
        v35 = 68289283;
        v36 = 0;
        v37 = 2082;
        v38 = "";
        v39 = 2113;
        v40 = v13;
        v14 = "{msg%{public}.0s:#TADeviceRecord skip request AIS fetch - non-posh durian type, address:%{private}@}";
        goto LABEL_22;
      }

      goto LABEL_26;
    }
  }

  v9 = [v6 latestAdvertisement];
  if ([v9 isPosh])
  {
    v10 = _os_feature_enabled_impl();

    if ((v10 & 1) == 0)
    {
      v11 = TAStatusLog;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
        v13 = [v4 hexString];
        v35 = 68289283;
        v36 = 0;
        v37 = 2082;
        v38 = "";
        v39 = 2113;
        v40 = v13;
        v14 = "{msg%{public}.0s:#TADeviceRecord skip request AIS fetch for posh type - feature isn't enabled, address:%{private}@}";
LABEL_22:
        v16 = v12;
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
    v19 = [v6 AISFetchState];
    v12 = [(TADeviceRecord *)self delegate];
    if (v19 == 5)
    {
      v28 = TAStatusLog;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
      {
        v29 = v28;
        v30 = [v4 hexString];
        v35 = 68289539;
        v36 = 0;
        v37 = 2082;
        v38 = "";
        v39 = 2113;
        v40 = v30;
        v41 = 2050;
        v42 = [v6 AISFetchCount];
        _os_log_impl(&dword_26F2E2000, v29, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TADeviceRecord request AIS fetch, address:%{private}@, requestedCount:%{public}lu}", &v35, 0x26u);
      }

      v31 = [v6 uuid];
      v13 = [(TADeviceRecord *)self getUnknownBeacon:v31];

      if (v13)
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
      if (v19 != 1)
      {
LABEL_25:

        goto LABEL_26;
      }

      v20 = TAStatusLog;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v20;
        v22 = [v4 hexString];
        v35 = 68289539;
        v36 = 0;
        v37 = 2082;
        v38 = "";
        v39 = 2113;
        v40 = v22;
        v41 = 2050;
        v42 = [v6 AISFetchCount];
        _os_log_impl(&dword_26F2E2000, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TADeviceRecord request AIS fetch, address:%{private}@, requestedCount:%{public}lu}", &v35, 0x26u);
      }

      v23 = [v6 uuid];
      v13 = [(TADeviceRecord *)self getUnknownBeacon:v23];

      if (v13)
      {
        v24 = v6;
        v25 = 2;
LABEL_31:
        [v24 setAISFetchState:v25];
        [v6 setAISFetchCount:{objc_msgSend(v6, "AISFetchCount") + 1}];
        [v12 requestAIS:v13];
        goto LABEL_24;
      }

      v32 = TAStatusLog;
      if (!os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_24;
      }
    }

    v33 = v32;
    v34 = [v4 hexString];
    v35 = 68289283;
    v36 = 0;
    v37 = 2082;
    v38 = "";
    v39 = 2113;
    v40 = v34;
    _os_log_impl(&dword_26F2E2000, v33, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#TADeviceRecord can't construct TAUnknownBeacon for AIS fetch, address:%{private}@}", &v35, 0x1Cu);

    goto LABEL_24;
  }

  v18 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v18;
    v13 = [v4 hexString];
    v35 = 68289283;
    v36 = 0;
    v37 = 2082;
    v38 = "";
    v39 = 2113;
    v40 = v13;
    v14 = "{msg%{public}.0s:#TADeviceRecord skip request AIS fetch - reach maximum attemps, address:%{private}@}";
    goto LABEL_22;
  }

LABEL_26:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_updateKeepInStagingUntil:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  [(TADeviceRecord *)self _getDeviceRecord:a3];
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
        v9 = [v8 keepInStagingUntil];
        v10 = [v8 detection];
        v11 = [(TADeviceRecord *)self _determineHELEKeepInStagingUntil:v10];

        [v8 setKeepInStagingUntil:v11];
        v12 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
        {
          *buf = 68289539;
          v21 = 0;
          v22 = 2082;
          v23 = "";
          v24 = 2113;
          v25 = v9;
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

- (void)_processAISFetchSuccess:(id)a3 andAppendOutgoingRequestsTo:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 uuid];

    if (v8)
    {
      v9 = [v6 uuid];
      v10 = [(TADeviceRecord *)self _getDeviceRecordWithUUID:v9];

      v11 = TAStatusLog;
      if (v10)
      {
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
        {
          v12 = v11;
          v13 = [v6 description];
          v23 = 68289283;
          v24 = 0;
          v25 = 2082;
          v26 = "";
          v27 = 2113;
          v28 = v13;
          _os_log_impl(&dword_26F2E2000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TADeviceRecord received AIS fetch info for uuid, AISFetch:%{private}@}", &v23, 0x1Cu);
        }

        [v10 processAISFetchEvent:v6 andAppendOutgoingRequestsTo:v7];
        v14 = [v6 info];
        if (v14)
        {
          v15 = v14;
          v16 = [v6 info];
          v17 = [v16 isHawkeyeAudioAccessory];

          if (v17)
          {
            v18 = [v10 address];
            [(TADeviceRecord *)self _updateKeepInStagingUntil:v18];
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
      v22 = [v6 description];
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
    v20 = [v6 description];
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

- (void)ingestTAEvent:(id)a3 andAppendOutgoingRequestsTo:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 isMemberOfClass:objc_opt_class()])
  {
    v8 = v6;
    v9 = [v8 advertisement];
    v10 = [v8 notificationState];
    v11 = [v8 getDate];
    [(TADeviceRecord *)self _setDevice:v9 withExternalState:v10 withDate:v11];

    v12 = [v8 advertisement];
    v13 = [v8 deviceType];
    v14 = [v8 getDate];
    [(TADeviceRecord *)self _setDevice:v12 withType:v13 withDate:v14];

    v15 = [v8 advertisement];

    [(TADeviceRecord *)self _updateAdvertisement:v15 andAppendOutgoingRequestsTo:v7];
  }

  else if ([v6 isMemberOfClass:objc_opt_class()])
  {
    [(TADeviceRecord *)self _updateAdvertisement:v6 andAppendOutgoingRequestsTo:v7];
  }

  else if ([v6 isMemberOfClass:objc_opt_class()])
  {
    v16 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      v18 = [v6 description];
      v20[0] = 68289283;
      v20[1] = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2113;
      v24 = v18;
      _os_log_impl(&dword_26F2E2000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TADeviceRecord adding playsound, playsound:%{private}@}", v20, 0x1Cu);
    }

    [(TADeviceRecord *)self _processPlaySoundSuccess:v6 andAppendOutgoingRequestsTo:v7];
  }

  else if ([v6 isMemberOfClass:objc_opt_class()])
  {
    [(TADeviceRecord *)self _processAISFetchSuccess:v6 andAppendOutgoingRequestsTo:v7];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)checkForScanRequestsWithClock:(id)a3 andAppendOutgoingRequestsTo:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  [v7 timeIntervalSinceDate:self->_lastScanAttemptDate];
  v10 = v9;
  [(TADeviceRecordSettings *)self->_settings scanInterval];
  if (v10 < v11)
  {
    goto LABEL_22;
  }

  v33 = v8;
  v34 = v7;
  objc_storeStrong(&self->_lastScanAttemptDate, a3);
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
      v20 = [v19 latestAdvertisement];
      v21 = [v20 hasHawkeyeAdvertisementPolicy];

      if (v21)
      {
        v22 = [v19 getStagedDetections];
        v16 |= [v22 count] != 0;
      }

      else
      {
        v23 = [v19 latestAdvertisement];
        v24 = [v23 hasHawkeyeLowEnergyAdvertisementPolicy];

        if (!v24)
        {
          goto LABEL_12;
        }

        v22 = [v19 getStagedDetections];
        v15 |= [v22 count] != 0;
      }

LABEL_12:
    }

    v14 = [(NSMutableDictionary *)v12 countByEnumeratingWithState:&v35 objects:v51 count:16];
  }

  while (v14);
LABEL_16:

  v25 = TAStatusLog;
  v8 = v33;
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

  v7 = v34;
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

- (id)createTAOutgoingRequestWithExpiringTASingleDeviceRecord:(id)a3 withCurrentDate:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [v5 address];

    if (v7)
    {
      v8 = [TAOutgoingRequests alloc];
      v9 = [v5 address];
      v13 = v9;
      v14[0] = v5;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      v7 = [(TAOutgoingRequests *)v8 initWithRequestKey:@"ExpiringRecordMetrics" additionalInformation:v10 date:v6];
    }
  }

  else
  {
    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)createTAOutgoingRequestForUnstagingUpdateFor:(id)a3 withCurrentDate:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v5;
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

        v13 = [*(*(&v19 + 1) + 8 * i) detection];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v10);
  }

  v14 = [TAOutgoingRequests alloc];
  v23 = @"UnstagingUpdate";
  v24 = v7;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v16 = [(TAOutgoingRequests *)v14 initWithRequestKey:@"UnstagingUpdate" additionalInformation:v15 date:v6];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)purgeWithClock:(id)a3 andAppendOutgoingRequestsTo:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  [v7 timeIntervalSinceDate:self->_lastPurgeDate];
  if (v9 < 0.0 || (v10 = v9, [(TADeviceRecordSettings *)self->_settings purgeTimeInterval], v10 >= v11))
  {
    v31 = a3;
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
          v19 = [v18 creationDate];
          [v7 timeIntervalSinceDate:v19];
          v21 = v20;

          [(TADeviceRecordSettings *)self->_settings futureExpiryTimeInterval];
          if (v21 < -v22 || ([(TADeviceRecordSettings *)self->_settings expiryTimeInterval], v21 > v23))
          {
            v24 = TAStatusLog;
            if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
            {
              [(TADeviceRecord *)&buf purgeWithClock:v24 andAppendOutgoingRequestsTo:v17, &v38];
            }

            v25 = [(TADeviceRecord *)self createTAOutgoingRequestWithExpiringTASingleDeviceRecord:v18 withCurrentDate:v7];
            [v8 addObject:v25];
            [(NSMutableDictionary *)self->_deviceRecord removeObjectForKey:v17];
            deviceUUIDToAddress = self->_deviceUUIDToAddress;
            v27 = [v18 uuid];
            [(NSMutableDictionary *)deviceUUIDToAddress removeObjectForKey:v27];
          }

          v28 = [v18 purgeStagedDetectionsWithClock:v7];
          if ([v28 count])
          {
            v29 = [(TADeviceRecord *)self createTAOutgoingRequestForUnstagingUpdateFor:v28 withCurrentDate:v7];
            [v8 addObject:v29];
          }
        }

        v14 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v14);
    }

    objc_storeStrong(&self->_lastPurgeDate, v31);
    [(TADeviceRecord *)self logDeviceRecord];
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (BOOL)isKnownDevice:(id)a3
{
  v3 = [(TADeviceRecord *)self getDeviceOwnershipType:a3];

  return [TADeviceRecord _isKnownDevice:v3];
}

- (void)updateDeviceRecordOnSessionChange:(id)a3 WithCurrentDate:(id)a4
{
  v63 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
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
    v43 = self;
    v46 = v7;
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
        [v14 updateSingleDeviceRecordOnSessionChangeWithCurrentDate:v7];
        if (!v6)
        {
          goto LABEL_21;
        }

        if ([v6 lastStateTransition] != 3)
        {
          goto LABEL_15;
        }

        v15 = [v6 getLatestValidVisit];
        if (!v15)
        {
          goto LABEL_15;
        }

        v16 = v15;
        v17 = [v6 getLatestValidVisit];
        v18 = [v17 arrivalDate];
        v19 = [MEMORY[0x277CBEAA8] distantPast];
        if (v18 == v19)
        {
          goto LABEL_14;
        }

        v44 = v17;
        v20 = [v6 getLatestValidVisit];
        v21 = [v20 arrivalDate];
        v22 = [v14 lastSurfacedAlertDate];
        if ([v21 compare:v22] != -1)
        {

          self = v43;
          v17 = v44;
          v7 = v46;
LABEL_14:

          v10 = v47;
          v11 = 0x279DD1000;
          goto LABEL_15;
        }

        if ([v14 state] == 2)
        {

          self = v43;
          v7 = v46;
          v10 = v47;
          v11 = 0x279DD1000;
LABEL_36:
          v33 = TAStatusLog;
          if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
          {
            v32 = v33;
            v34 = [v13 hexString];
            *buf = v40;
            v57 = 0;
            v58 = 2082;
            v59 = "";
            v60 = 2113;
            v61 = v34;
            v35 = v32;
            v36 = "{msg%{public}.0s:#TADeviceRecord skip reprompting since we have issued an alert upon arrival, address:%{private}@}";
LABEL_41:
            _os_log_impl(&dword_26F2E2000, v35, OS_LOG_TYPE_DEBUG, v36, buf, 0x1Cu);

            v7 = v46;
LABEL_28:

            goto LABEL_29;
          }

          goto LABEL_29;
        }

        v41 = [v14 state];

        self = v43;
        v7 = v46;
        v10 = v47;
        v11 = 0x279DD1000;
        if (v41 == 1)
        {
          goto LABEL_36;
        }

LABEL_15:
        if ([v6 lastStateTransition] != 4)
        {
          goto LABEL_21;
        }

        v23 = [v6 getLatestValidVisit];
        if (!v23)
        {
          goto LABEL_21;
        }

        v24 = v23;
        v25 = [v6 getLatestValidVisit];
        v26 = [v25 departureDate];
        v27 = [MEMORY[0x277CBEAA8] distantFuture];
        if (v26 == v27)
        {
          goto LABEL_20;
        }

        v45 = v25;
        v28 = [v6 getLatestValidVisit];
        v29 = [v28 departureDate];
        v30 = [v14 lastSurfacedAlertDate];
        if ([v29 compare:v30] != -1)
        {

          self = v43;
          v25 = v45;
          v7 = v46;
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

            v32 = [v14 latestAdvertisement];
            [(TADeviceRecord *)self _setDevice:v32 withInternalState:4 withDate:v7];
            goto LABEL_28;
          }

          goto LABEL_29;
        }

        if ([v14 state] == 2)
        {

          self = v43;
          v7 = v46;
          v10 = v47;
          v11 = 0x279DD1000;
        }

        else
        {
          v42 = [v14 state];

          self = v43;
          v7 = v46;
          v10 = v47;
          v11 = 0x279DD1000;
          if (v42 != 1)
          {
            goto LABEL_21;
          }
        }

        v37 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
        {
          v32 = v37;
          v34 = [v13 hexString];
          *buf = v40;
          v57 = 0;
          v58 = 2082;
          v59 = "";
          v60 = 2113;
          v61 = v34;
          v35 = v32;
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
  v3 = [(NSMutableDictionary *)self->_deviceRecord allKeys];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v23 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(*(&v15 + 1) + 8 * i);
          v10 = v8;
          v11 = [v9 hexString];
          v12 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v9];
          v13 = [v12 description];
          *buf = 138478083;
          v20 = v11;
          v21 = 2113;
          v22 = v13;
          _os_log_impl(&dword_26F2E2000, v10, OS_LOG_TYPE_DEFAULT, "#TADeviceRecord status for %{private}@:%{private}@", buf, 0x16u);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v5);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_clearStagedDetectionsForDevice:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:a3];
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

- (id)_determineFirstObservationDateWithTASuspiciousDevice:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 date];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [v4 locationHistory];
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      v10 = 0;
      v11 = v5;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v20 + 1) + 8 * v10) getDate];
        v5 = [v11 earlierDate:v12];

        ++v10;
        v11 = v5;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  deviceRecord = self->_deviceRecord;
  v14 = [v4 address];
  v15 = [(NSMutableDictionary *)deviceRecord objectForKeyedSubscript:v14];

  v16 = [v15 earliestObservationDate];
  v17 = [v5 earlierDate:v16];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_determineHELEKeepInStagingUntil:(id)a3
{
  v4 = a3;
  v5 = [(TADeviceRecord *)self _determineFirstObservationDateWithTASuspiciousDevice:v4];
  v6 = MEMORY[0x277CBEAA8];
  v7 = [(TADeviceRecord *)self settings];
  [v7 maxExpectedHELEWildInterval];
  v8 = [v6 dateWithTimeInterval:v5 sinceDate:?];

  v9 = [(TADeviceRecord *)self settings];
  if ([v9 shouldAlertHELEImmediatelyForImmediateTypes])
  {
    v10 = [v4 immediacyType];

    if (v10 == 2)
    {
      v11 = [v4 date];
      v12 = [v8 laterDate:v11];
      goto LABEL_15;
    }
  }

  else
  {
  }

  v11 = [v4 date];
  v13 = MEMORY[0x277CBEAA8];
  [(TADeviceRecordSettings *)self->_settings minimumHELEStagingInterval];
  v14 = [v13 dateWithTimeInterval:v5 sinceDate:?];
  v15 = [v14 laterDate:v11];

  v16 = [(TADeviceRecord *)self settings];
  v17 = [v16 stagingHELEBackstopHour];

  if (v17 < 25)
  {
    v18 = [v11 getNextDateAtHour:{-[TADeviceRecordSettings assumedKeyRollHour](self->_settings, "assumedKeyRollHour")}];
    v19 = [v11 getNextDateAtHour:{-[TADeviceRecordSettings stagingHELEBackstopHour](self->_settings, "stagingHELEBackstopHour")}];
    if ([v19 compare:v18] == -1)
    {
      v23 = [v15 earlierDate:v19];
    }

    else
    {
      if ([(TADeviceRecordSettings *)self->_settings surfaceHELEAfterHyperStagingIntervalBetweenBackstopAndKeyroll])
      {
        v20 = MEMORY[0x277CBEAA8];
        v21 = [(TADeviceRecord *)self settings];
        [v21 hyperHELEStagingInterval];
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

- (id)_determineKeepInStagingUntil:(id)a3
{
  v4 = a3;
  v5 = [v4 latestAdvertisement];
  if ([v5 getDeviceType] == 3)
  {

LABEL_5:
    v10 = [(TADeviceRecord *)self _determineHELEKeepInStagingUntil:v4];
    goto LABEL_17;
  }

  v6 = [v4 accessoryInfo];
  if (v6)
  {
    v7 = v6;
    v8 = [v4 accessoryInfo];
    v9 = [v8 isHawkeyeAudioAccessory];

    if (v9)
    {
      goto LABEL_5;
    }
  }

  else
  {
  }

  v11 = [(TADeviceRecord *)self _determineFirstObservationDateWithTASuspiciousDevice:v4];
  v12 = MEMORY[0x277CBEAA8];
  v13 = [(TADeviceRecord *)self settings];
  [v13 maxExpectedDurianWildInterval];
  v14 = [v12 dateWithTimeInterval:v11 sinceDate:?];

  v15 = [v4 immediacyType];
  v16 = [v4 date];
  if (v15 != 2)
  {
    v17 = [v16 getNextDateAtHour:{-[TADeviceRecordSettings assumedKeyRollHour](self->_settings, "assumedKeyRollHour")}];
    v18 = MEMORY[0x277CBEAA8];
    [(TADeviceRecordSettings *)self->_settings minimumStagingInterval];
    v19 = [v18 dateWithTimeInterval:v11 sinceDate:?];
    v20 = [v19 laterDate:v16];

    v21 = [v16 getNextDateAtHour:{-[TADeviceRecordSettings stagingBackstopHour](self->_settings, "stagingBackstopHour")}];
    if ([v21 compare:v17] == -1)
    {
      v25 = [v20 earlierDate:v21];
    }

    else
    {
      if ([(TADeviceRecordSettings *)self->_settings surfaceAfterHyperStagingIntervalBetweenBackstopAndKeyroll])
      {
        v22 = MEMORY[0x277CBEAA8];
        v23 = [(TADeviceRecord *)self settings];
        [v23 hyperStagingInterval];
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

  v10 = [v14 laterDate:v16];
LABEL_16:

LABEL_17:

  return v10;
}

- (void)stageDetectionResults:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        deviceRecord = self->_deviceRecord;
        v11 = [v9 address];
        v12 = [(NSMutableDictionary *)deviceRecord objectForKeyedSubscript:v11];

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

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)limitSuspiciousDevicesSentToObservers:(id)a3 forDailyMaximum:(unint64_t)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (!v6 || ![v6 count])
  {
    v34 = MEMORY[0x277CBEBF8];
    goto LABEL_25;
  }

  v34 = [MEMORY[0x277CBEB18] array];
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
        v14 = [v12 address];
        v15 = [(TADeviceRecord *)self _getDeviceRecord:v14];

        [v15 setNumPotentialSurfacedAlerts:{objc_msgSend(v15, "numPotentialSurfacedAlerts") + 1}];
        if (v13 < a4)
        {
          [v34 addObject:v12];
        }

        v16 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
        {
          v17 = v16;
          v18 = [v15 description];
          v19 = [v15 numPotentialSurfacedAlerts];
          *buf = 68289795;
          v41 = 0;
          v42 = 2082;
          v43 = "";
          v44 = 2113;
          v45 = v18;
          v46 = 2049;
          v47 = v13;
          v48 = 2049;
          v49 = v19;
          _os_log_impl(&dword_26F2E2000, v17, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#TADeviceRecord number of staged and potential alerts for device record, singleDeviceRecord:%{private}@, numSurfacedAlerts:%{private}lu, numPotentialSurfacedAlerts:%{private}lu}", buf, 0x30u);
        }
      }

      v9 = [obj countByEnumeratingWithState:&v36 objects:v50 count:16];
    }

    while (v9);
  }

  v20 = [obj count];
  v21 = [v34 count];
  v22 = v20 - v21;
  if ([v34 count])
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

  return v34;
}

- (void)mergeWithAnotherDeviceRecord:(id)a3
{
  v93 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = TAStatusLog;
  if (v4)
  {
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
    {
      settings = self->_settings;
      log = v5;
      v64 = [(TADeviceRecordSettings *)settings description];
      v59 = [v64 UTF8String];
      v63 = [(NSDate *)self->_lastPurgeDate getDateString];
      v57 = [v63 UTF8String];
      v62 = [(NSDate *)self->_lastScanAttemptDate getDateString];
      v56 = [v62 UTF8String];
      v55 = [(NSMutableDictionary *)self->_deviceRecord count];
      v54 = [(NSMutableDictionary *)self->_deviceUUIDToAddress count];
      v60 = [v4 settings];
      v7 = [v60 description];
      v53 = [v7 UTF8String];
      v58 = [v4 lastPurgeDate];
      v8 = [v58 getDateString];
      v52 = [v8 UTF8String];
      v9 = [v4 lastScanAttemptDate];
      v10 = [v9 getDateString];
      v11 = [v10 UTF8String];
      v12 = [v4 deviceRecord];
      v13 = [v12 count];
      v14 = [v4 deviceUUIDToAddress];
      buf = 68291586;
      v71 = 2082;
      v72 = "";
      v73 = 2082;
      v74 = v59;
      v75 = 2082;
      v76 = v57;
      v77 = 2082;
      v78 = v56;
      v79 = 2050;
      v80 = v55;
      v81 = 2050;
      v82 = v54;
      v83 = 2082;
      v84 = v53;
      v85 = 2082;
      v86 = v52;
      v87 = 2082;
      v88 = v11;
      v89 = 2050;
      v90 = v13;
      v91 = 2050;
      v92 = [v14 count];
      _os_log_impl(&dword_26F2E2000, log, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#TADeviceRecord merging with other record, self.settings:%{public}s, self.lastPurgeDate:%{public}s, self.lastScanAttemptDate:%{public}s, self.deviceRecord.count:%{public}lu, self.deviceUUIDToAddress.count:%{public}lu, other.settings:%{public}s, other.lastPurgeDate:%{public}s, other.lastScanAttemptDate:%{public}s, other.deviceRecord.count:%{public}lu, other.deviceUUIDToAddress.count:%{public}lu}", &buf, 0x76u);
    }

    lastPurgeDate = self->_lastPurgeDate;
    v16 = [v4 lastPurgeDate];
    v17 = [(NSDate *)lastPurgeDate laterDate:v16];
    v18 = self->_lastPurgeDate;
    self->_lastPurgeDate = v17;

    lastScanAttemptDate = self->_lastScanAttemptDate;
    v20 = [v4 lastScanAttemptDate];
    v21 = [(NSDate *)lastScanAttemptDate laterDate:v20];
    v22 = self->_lastScanAttemptDate;
    self->_lastScanAttemptDate = v21;

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v23 = [v4 deviceRecord];
    v24 = [v23 countByEnumeratingWithState:&v65 objects:v69 count:16];
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
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v65 + 1) + 8 * i);
          v29 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v28];

          if (v29)
          {
            v30 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v28];
            v31 = [v4 deviceRecord];
            v32 = [v31 objectForKeyedSubscript:v28];

            [v30 mergeWithAnotherSingleDeviceRecord:v32];
          }

          else
          {
            v30 = [v4 deviceRecord];
            v32 = [v30 objectForKeyedSubscript:v28];
            [(NSMutableDictionary *)self->_deviceRecord setObject:v32 forKeyedSubscript:v28];
          }

          v33 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v28];
          v34 = [v33 uuid];

          if (v34)
          {
            deviceUUIDToAddress = self->_deviceUUIDToAddress;
            v36 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v28];
            v37 = [v36 uuid];
            [(NSMutableDictionary *)deviceUUIDToAddress setObject:v28 forKeyedSubscript:v37];
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v65 objects:v69 count:16];
      }

      while (v25);
    }

    v38 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
    {
      v39 = self->_settings;
      v40 = v38;
      v41 = [(TADeviceRecordSettings *)v39 description];
      v42 = [v41 UTF8String];
      v43 = [(NSDate *)self->_lastPurgeDate getDateString];
      v44 = [v43 UTF8String];
      v45 = [(NSDate *)self->_lastScanAttemptDate getDateString];
      v46 = [v45 UTF8String];
      v47 = [(NSMutableDictionary *)self->_deviceRecord count];
      v48 = [(NSMutableDictionary *)self->_deviceUUIDToAddress count];
      buf = 68290306;
      v71 = 2082;
      v72 = "";
      v73 = 2082;
      v74 = v42;
      v75 = 2082;
      v76 = v44;
      v77 = 2082;
      v78 = v46;
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

- (void)forceStagedDetectionsToSurfaceImmediatelyWithAdvertisement:(id)a3 withReason:(unint64_t)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a3;
  deviceRecord = self->_deviceRecord;
  v7 = [v5 address];
  v8 = [(NSMutableDictionary *)deviceRecord objectForKeyedSubscript:v7];

  if (v8)
  {
    v9 = [v8 getStagedDetections];
    v10 = [v9 count];

    if (v10)
    {
      if ([v5 getDeviceType] != 3 || -[TADeviceRecordSettings shouldAlertHELEImmediatelyForImmediateTypes](self->_settings, "shouldAlertHELEImmediatelyForImmediateTypes"))
      {
        v11 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
        {
          v12 = v11;
          v13 = [v5 description];
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

        v33 = v5;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v35 = v8;
        obj = [v8 getStagedDetections];
        v15 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
        v16 = a4;
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
              v20 = [v19 detection];
              v21 = [(TADeviceRecord *)self _determineFirstObservationDateWithTASuspiciousDevice:v20];

              v22 = [v19 detection];
              [v22 updateForceReasonWith:v16];

              v23 = [v19 detection];
              v24 = [v23 latestAdvertisement];
              if ([v24 getDeviceType] == 3)
              {

LABEL_16:
                v29 = MEMORY[0x277CBEAA8];
                v30 = [(TADeviceRecord *)self settings];
                [v30 maxExpectedHELEWildInterval];
                goto LABEL_19;
              }

              v25 = [v35 accessoryInfo];
              if (v25)
              {
                v26 = v25;
                v27 = [v35 accessoryInfo];
                v28 = [v27 isHawkeyeAudioAccessory];

                v16 = a4;
                if (v28)
                {
                  goto LABEL_16;
                }
              }

              else
              {
              }

              v29 = MEMORY[0x277CBEAA8];
              v30 = [(TADeviceRecord *)self settings];
              [v30 maxExpectedDurianWildInterval];
LABEL_19:
              v31 = [v29 dateWithTimeInterval:v21 sinceDate:?];

              [v19 setKeepInStagingUntil:v31];
            }

            v17 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
          }

          while (v17);
        }

        v5 = v33;
        v8 = v35;
      }
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_didSurfaceNotificationFor:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(TADeviceRecord *)self _getDeviceRecord:a3];
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

- (BOOL)hasSurfacedNotificationFor:(id)a3
{
  v3 = [(TADeviceRecord *)self _getDeviceRecord:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 hasSurfacedNotification];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasStagedImmediateDetections:(id)a3
{
  v3 = [(TADeviceRecord *)self _getDeviceRecord:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 hasStagedImmediateDetections];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)getNumStagedDetections:(id)a3
{
  v3 = [(TADeviceRecord *)self _getDeviceRecord:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 numStagedDetections];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)getFirstStagedDetectionDate:(id)a3
{
  v3 = [(TADeviceRecord *)self _getDeviceRecord:a3];
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

- (unint64_t)getNumOfAISFetch:(id)a3
{
  v3 = [(TADeviceRecord *)self _getDeviceRecord:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 AISFetchCount];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isAISFetchSuccessful:(id)a3
{
  v3 = [(TADeviceRecord *)self _getDeviceRecord:a3];
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

- (void)processBackgroundDetection:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 latestAdvertisement];
    v6 = [v4 date];
    [(TADeviceRecord *)self _createRecordIfNecessaryWithAdvertisement:v5 withDate:v6];

    v7 = [v4 address];
    v8 = [(TADeviceRecord *)self _getDeviceRecord:v7];

    [v8 processBackgroundDetection:v4];
  }
}

- (void)processSurfacedAlerts:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          v11 = [v10 latestAdvertisement];
          v12 = [v10 date];
          [(TADeviceRecord *)self _createRecordIfNecessaryWithAdvertisement:v11 withDate:v12];

          v13 = [v10 address];
          v14 = [(TADeviceRecord *)self _getDeviceRecord:v13];

          [v14 processSurfacedAlert:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)getLatestBeepOnMoveDate:(id)a3
{
  v3 = [(TADeviceRecord *)self _getDeviceRecord:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 latestBeepOnMoveDate];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)getDeviceType:(id)a3
{
  v3 = [(TADeviceRecord *)self _getDeviceRecord:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 getDeviceType];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)getAccessoryInfo:(id)a3
{
  v3 = [(TADeviceRecord *)self _getDeviceRecord:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 accessoryInfo];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)removeDevice:(id)a3
{
  v4 = a3;
  [(TADeviceRecord *)self _clearStagedDetectionsForDevice:v4];
  [(NSMutableDictionary *)self->_deviceRecord removeObjectForKey:v4];
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(TADeviceRecord *)self deviceRecord];
      v8 = [(TADeviceRecord *)v6 deviceRecord];
      if (v7 != v8)
      {
        v9 = [(TADeviceRecord *)self deviceRecord];
        [(TADeviceRecord *)v6 deviceRecord];
        v33 = v32 = v9;
        if (![v9 isEqual:?])
        {
          v10 = 0;
          goto LABEL_24;
        }
      }

      v11 = [(TADeviceRecord *)self lastPurgeDate];
      v12 = [(TADeviceRecord *)v6 lastPurgeDate];
      if (v11 != v12)
      {
        v3 = [(TADeviceRecord *)self lastPurgeDate];
        v30 = [(TADeviceRecord *)v6 lastPurgeDate];
        if (![v3 isEqual:?])
        {
          v10 = 0;
LABEL_22:

LABEL_23:
          if (v7 == v8)
          {
LABEL_25:

            goto LABEL_26;
          }

LABEL_24:

          goto LABEL_25;
        }
      }

      v13 = [(TADeviceRecord *)self lastScanAttemptDate];
      v14 = [(TADeviceRecord *)v6 lastScanAttemptDate];
      v31 = v13;
      v15 = v13 == v14;
      v16 = v14;
      if (v15)
      {
        v28 = v3;
        v29 = v12;
      }

      else
      {
        v17 = [(TADeviceRecord *)self lastScanAttemptDate];
        v25 = [(TADeviceRecord *)v6 lastScanAttemptDate];
        v26 = v17;
        if (![v17 isEqual:?])
        {
          v10 = 0;
          v23 = v31;
          goto LABEL_20;
        }

        v28 = v3;
        v29 = v12;
      }

      v27 = v16;
      v18 = [(TADeviceRecord *)self settings];
      v19 = [(TADeviceRecord *)v6 settings];
      v20 = v19;
      if (v18 == v19)
      {

        v10 = 1;
      }

      else
      {
        v21 = [(TADeviceRecord *)self settings];
        v22 = [(TADeviceRecord *)v6 settings];
        v10 = [v21 isEqual:v22];
      }

      v23 = v31;
      v16 = v27;
      v3 = v28;
      v12 = v29;
      if (v31 == v27)
      {
LABEL_21:

        if (v11 == v12)
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
  v3 = [(NSMutableDictionary *)self->_deviceRecord allKeys];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_deviceRecord objectForKeyedSubscript:v8];
        v10 = [v9 descriptionDictionary];
        v11 = [v8 hexString];
        [0 setObject:v10 forKey:v11];
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v12 = [0 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)description
{
  v3 = [(TADeviceRecord *)self descriptionDictionary];
  v10 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:v3 error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [(TAOutgoingRequests *)v6 description];
    }

    v7 = [MEMORY[0x277CCACA8] string];
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v8;
}

- (TADeviceRecord)initWithCoder:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v48.receiver = self;
  v48.super_class = TADeviceRecord;
  v5 = [(TADeviceRecord *)&v48 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"DeviceRecord"];
    deviceRecord = v5->_deviceRecord;
    v5->_deviceRecord = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LastPurgeDate"];
    lastPurgeDate = v5->_lastPurgeDate;
    v5->_lastPurgeDate = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LastScanAttemptDate"];
    if (v14)
    {
      [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LastScanAttemptDate"];
    }

    else
    {
      [MEMORY[0x277CBEAA8] distantPast];
    }
    v15 = ;
    lastScanAttemptDate = v5->_lastScanAttemptDate;
    v5->_lastScanAttemptDate = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Settings"];
    settings = v5->_settings;
    v5->_settings = v17;

    v19 = MEMORY[0x277CBEB98];
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = [v19 setWithObjects:{v20, v21, objc_opt_class(), 0}];
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"UUIDToAddress"];
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

    v43 = v4;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v28 = [(NSMutableDictionary *)v5->_deviceRecord allKeys];
    v29 = [v28 countByEnumeratingWithState:&v44 objects:v55 count:16];
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
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v44 + 1) + 8 * i);
          v34 = [(NSMutableDictionary *)v5->_deviceRecord objectForKeyedSubscript:v33];
          v35 = [v34 uuid];

          if (v35)
          {
            v36 = v5->_deviceUUIDToAddress;
            v37 = [v34 uuid];
            [(NSMutableDictionary *)v36 setObject:v33 forKey:v37];
          }

          else
          {
            v38 = TAStatusLog;
            if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
            {
              v39 = v38;
              v40 = [v33 hexString];
              *buf = 68289283;
              v50 = 0;
              v51 = 2082;
              v52 = "";
              v53 = 2113;
              v54 = v40;
              _os_log_impl(&dword_26F2E2000, v39, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#TADeviceRecord found a record with address but no uuid, address:%{private}@}", buf, 0x1Cu);
            }
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v44 objects:v55 count:16];
      }

      while (v30);
    }

    v4 = v43;
  }

  v41 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  deviceRecord = self->_deviceRecord;
  v5 = a3;
  [v5 encodeObject:deviceRecord forKey:@"DeviceRecord"];
  [v5 encodeObject:self->_lastPurgeDate forKey:@"LastPurgeDate"];
  [v5 encodeObject:self->_lastScanAttemptDate forKey:@"LastScanAttemptDate"];
  [v5 encodeObject:self->_settings forKey:@"Settings"];
  [v5 encodeObject:self->_deviceUUIDToAddress forKey:@"UUIDToAddress"];
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