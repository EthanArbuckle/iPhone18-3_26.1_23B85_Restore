@interface SMReceiverSessionStatus
+ (id)convertSessionStateToString:(int64_t)a3;
- (SMReceiverSessionStatus)initWithCoder:(id)a3;
- (SMReceiverSessionStatus)initWithIdentifier:(id)a3 sessionID:(id)a4 initiatorHandle:(id)a5;
- (id)description;
- (id)outputToDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SMReceiverSessionStatus

- (SMReceiverSessionStatus)initWithIdentifier:(id)a3 sessionID:(id)a4 initiatorHandle:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v9)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      v16 = 0;
      goto LABEL_13;
    }

    *buf = 0;
    v15 = "Invalid parameter not satisfying: sessionID";
LABEL_15:
    _os_log_error_impl(&dword_26455D000, v14, OS_LOG_TYPE_ERROR, v15, buf, 2u);
    goto LABEL_9;
  }

  if (!v10)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v15 = "Invalid parameter not satisfying: initiatorHandle";
    goto LABEL_15;
  }

  v21.receiver = self;
  v21.super_class = SMReceiverSessionStatus;
  v12 = [(SMReceiverSessionStatus *)&v21 init];
  if (v12)
  {
    if (v8)
    {
      v13 = v8;
    }

    else
    {
      v13 = [MEMORY[0x277CCAD78] UUID];
    }

    identifier = v12->_identifier;
    v12->_identifier = v13;

    v18 = [MEMORY[0x277CBEAA8] now];
    lastUpdateDate = v12->_lastUpdateDate;
    v12->_lastUpdateDate = v18;

    objc_storeStrong(&v12->_sessionID, a4);
    objc_storeStrong(&v12->_initiatorHandle, a5);
    *&v12->_zoneShareAccepted = 0;
    v12->_destinationType = 0;
    v12->_triggerType = 0;
    v12->_sessionState = 0;
    v12->_sessionType = 0;
    v12->_lowPowerModeWarningState = 0;
    v12->_cacheDownloadError = 0;
  }

  self = v12;
  v16 = self;
LABEL_13:

  return v16;
}

+ (id)convertSessionStateToString:(int64_t)a3
{
  if ((a3 - 1) > 8)
  {
    return @"Unknown";
  }

  else
  {
    return off_279B651F8[a3 - 1];
  }
}

- (id)outputToDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(SMReceiverSessionStatus *)self identifier];
  [v3 setObject:v4 forKey:@"identifier"];

  v5 = MEMORY[0x277CCABB0];
  v6 = [(SMReceiverSessionStatus *)self lastUpdateDate];
  [v6 timeIntervalSince1970];
  v7 = [v5 numberWithDouble:?];
  [v3 setObject:v7 forKey:@"lastUpdateDate"];

  v8 = [(SMReceiverSessionStatus *)self sessionID];
  [v3 setObject:v8 forKey:@"sessionID"];

  v9 = [(SMReceiverSessionStatus *)self initiatorHandle];
  v10 = [v9 primaryHandle];
  [v3 setObject:v10 forKey:@"initiatorHandle"];

  v11 = [(SMReceiverSessionStatus *)self receiverHandle];

  if (v11)
  {
    v12 = [(SMReceiverSessionStatus *)self receiverHandle];
    [v3 setObject:v12 forKey:@"receiverHandle"];
  }

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SMReceiverSessionStatus sessionState](self, "sessionState")}];
  [v3 setObject:v13 forKey:@"sessionState"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[SMReceiverSessionStatus zoneShareAccepted](self, "zoneShareAccepted")}];
  [v3 setObject:v14 forKey:@"zoneShareAccepted"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMReceiverSessionStatus sessionType](self, "sessionType")}];
  [v3 setObject:v15 forKey:@"sessionType"];

  v16 = [(SMReceiverSessionStatus *)self sessionStartDate];

  if (v16)
  {
    v17 = [(SMReceiverSessionStatus *)self sessionStartDate];
    [v3 setObject:v17 forKey:@"sessionStartDate"];
  }

  v18 = [(SMReceiverSessionStatus *)self estimatedEndDate];

  if (v18)
  {
    v19 = [(SMReceiverSessionStatus *)self estimatedEndDate];
    [v3 setObject:v19 forKey:@"estimatedEndDate"];
  }

  v20 = [(SMReceiverSessionStatus *)self coarseEstimatedEndDate];

  if (v20)
  {
    v21 = [(SMReceiverSessionStatus *)self coarseEstimatedEndDate];
    [v3 setObject:v21 forKey:@"coarseEstimatedEndDate"];
  }

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMReceiverSessionStatus destinationType](self, "destinationType")}];
  [v3 setObject:v22 forKey:@"destinationType"];

  v23 = [(SMReceiverSessionStatus *)self destinationMapItem];

  if (v23)
  {
    v24 = [(SMReceiverSessionStatus *)self destinationMapItem];
    v25 = [v24 base64EncodedStringWithOptions:0];
    [v3 setObject:v25 forKey:@"destinationMapItem"];
  }

  v26 = [(SMReceiverSessionStatus *)self triggerDate];

  if (v26)
  {
    v27 = [(SMReceiverSessionStatus *)self triggerDate];
    [v3 setObject:v27 forKey:@"triggerDate"];
  }

  v28 = [(SMReceiverSessionStatus *)self locationOfTrigger];

  if (v28)
  {
    v29 = [(SMReceiverSessionStatus *)self locationOfTrigger];
    [v3 setObject:v29 forKey:@"locationOfTrigger"];
  }

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMReceiverSessionStatus triggerType](self, "triggerType")}];
  [v3 setObject:v30 forKey:@"triggerType"];

  v31 = [(SMReceiverSessionStatus *)self cacheRequestDate];

  if (v31)
  {
    v32 = [(SMReceiverSessionStatus *)self cacheRequestDate];
    [v3 setObject:v32 forKey:@"cacheRequestDate"];
  }

  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMReceiverSessionStatus sessionEndReason](self, "sessionEndReason")}];
  [v3 setObject:v33 forKey:@"sessionEndReason"];

  v34 = [(SMReceiverSessionStatus *)self cacheExpiryDate];

  if (v34)
  {
    v35 = [(SMReceiverSessionStatus *)self cacheExpiryDate];
    [v3 setObject:v35 forKey:@"cacheExpiryDate"];
  }

  v36 = [MEMORY[0x277CCABB0] numberWithBool:{-[SMReceiverSessionStatus isSOSTrigger](self, "isSOSTrigger")}];
  [v3 setObject:v36 forKey:@"isSOSTrigger"];

  v37 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SMReceiverSessionStatus lowPowerModeWarningState](self, "lowPowerModeWarningState")}];
  [v3 setObject:v37 forKey:@"lowPowerModeWarningState"];

  v38 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SMReceiverSessionStatus cacheDownloadError](self, "cacheDownloadError")}];
  [v3 setObject:v38 forKey:@"cacheDownloadError"];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315394;
      v21 = "[SMReceiverSessionStatus encodeWithCoder:]";
      v22 = 1024;
      v23 = 192;
      _os_log_error_impl(&dword_26455D000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: encoder (in %s:%d)", &v20, 0x12u);
    }
  }

  v6 = [(SMReceiverSessionStatus *)self identifier];
  [v4 encodeObject:v6 forKey:@"identifier"];

  v7 = [(SMReceiverSessionStatus *)self lastUpdateDate];
  [v4 encodeObject:v7 forKey:@"lastUpdateDate"];

  v8 = [(SMReceiverSessionStatus *)self sessionID];
  [v4 encodeObject:v8 forKey:@"sessionID"];

  v9 = [(SMReceiverSessionStatus *)self initiatorHandle];
  [v4 encodeObject:v9 forKey:@"initiatorHandle"];

  v10 = [(SMReceiverSessionStatus *)self receiverHandle];
  [v4 encodeObject:v10 forKey:@"receiverHandle"];

  [v4 encodeInteger:-[SMReceiverSessionStatus sessionState](self forKey:{"sessionState"), @"sessionState"}];
  [v4 encodeBool:-[SMReceiverSessionStatus zoneShareAccepted](self forKey:{"zoneShareAccepted"), @"zoneShareAccepted"}];
  [v4 encodeInteger:-[SMReceiverSessionStatus sessionType](self forKey:{"sessionType"), @"sessionType"}];
  v11 = [(SMReceiverSessionStatus *)self sessionStartDate];
  [v4 encodeObject:v11 forKey:@"sessionStartDate"];

  v12 = [(SMReceiverSessionStatus *)self estimatedEndDate];
  [v4 encodeObject:v12 forKey:@"estimatedEndDate"];

  v13 = [(SMReceiverSessionStatus *)self coarseEstimatedEndDate];
  [v4 encodeObject:v13 forKey:@"coarseEstimatedEndDate"];

  [v4 encodeInteger:-[SMReceiverSessionStatus destinationType](self forKey:{"destinationType"), @"destinationType"}];
  v14 = [(SMReceiverSessionStatus *)self destinationMapItem];
  [v4 encodeObject:v14 forKey:@"destinationMapItem"];

  v15 = [(SMReceiverSessionStatus *)self triggerDate];
  [v4 encodeObject:v15 forKey:@"triggerDate"];

  v16 = [(SMReceiverSessionStatus *)self locationOfTrigger];
  [v4 encodeObject:v16 forKey:@"locationOfTrigger"];

  [v4 encodeInteger:-[SMReceiverSessionStatus triggerType](self forKey:{"triggerType"), @"triggerType"}];
  v17 = [(SMReceiverSessionStatus *)self cacheRequestDate];
  [v4 encodeObject:v17 forKey:@"cacheRequestDate"];

  [v4 encodeInteger:-[SMReceiverSessionStatus sessionEndReason](self forKey:{"sessionEndReason"), @"sessionEndReason"}];
  v18 = [(SMReceiverSessionStatus *)self cacheExpiryDate];
  [v4 encodeObject:v18 forKey:@"cacheExpiryDate"];

  [v4 encodeBool:-[SMReceiverSessionStatus isSOSTrigger](self forKey:{"isSOSTrigger"), @"isSOSTrigger"}];
  [v4 encodeInteger:-[SMReceiverSessionStatus lowPowerModeWarningState](self forKey:{"lowPowerModeWarningState"), @"lowPowerModeWarningState"}];
  [v4 encodeInteger:-[SMReceiverSessionStatus cacheDownloadError](self forKey:{"cacheDownloadError"), @"cacheDownloadError"}];

  v19 = *MEMORY[0x277D85DE8];
}

- (SMReceiverSessionStatus)initWithCoder:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionID"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"initiatorHandle"];
    v8 = [(SMReceiverSessionStatus *)self initWithIdentifier:v5 sessionID:v6 initiatorHandle:v7];
    if (v8)
    {
      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"receiverHandle"];
      [(SMReceiverSessionStatus *)v8 setReceiverHandle:v9];

      v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdateDate"];
      [(SMReceiverSessionStatus *)v8 setLastUpdateDate:v10];

      -[SMReceiverSessionStatus setSessionState:](v8, "setSessionState:", [v4 decodeIntegerForKey:@"sessionState"]);
      -[SMReceiverSessionStatus setZoneShareAccepted:](v8, "setZoneShareAccepted:", [v4 decodeBoolForKey:@"zoneShareAccepted"]);
      -[SMReceiverSessionStatus setSessionType:](v8, "setSessionType:", [v4 decodeIntegerForKey:@"sessionType"]);
      v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionStartDate"];
      [(SMReceiverSessionStatus *)v8 setSessionStartDate:v11];

      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"estimatedEndDate"];
      [(SMReceiverSessionStatus *)v8 setEstimatedEndDate:v12];

      v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"coarseEstimatedEndDate"];
      [(SMReceiverSessionStatus *)v8 setCoarseEstimatedEndDate:v13];

      -[SMReceiverSessionStatus setDestinationType:](v8, "setDestinationType:", [v4 decodeIntegerForKey:@"destinationType"]);
      v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"destinationMapItem"];
      [(SMReceiverSessionStatus *)v8 setDestinationMapItem:v14];

      v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"triggerDate"];
      [(SMReceiverSessionStatus *)v8 setTriggerDate:v15];

      v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locationOfTrigger"];
      [(SMReceiverSessionStatus *)v8 setLocationOfTrigger:v16];

      -[SMReceiverSessionStatus setTriggerType:](v8, "setTriggerType:", [v4 decodeIntegerForKey:@"triggerType"]);
      v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cacheRequestDate"];
      [(SMReceiverSessionStatus *)v8 setCacheRequestDate:v17];

      -[SMReceiverSessionStatus setSessionEndReason:](v8, "setSessionEndReason:", [v4 decodeIntegerForKey:@"sessionEndReason"]);
      v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cacheExpiryDate"];
      [(SMReceiverSessionStatus *)v8 setCacheExpiryDate:v18];

      -[SMReceiverSessionStatus setIsSOSTrigger:](v8, "setIsSOSTrigger:", [v4 decodeBoolForKey:@"isSOSTrigger"]);
      -[SMReceiverSessionStatus setLowPowerModeWarningState:](v8, "setLowPowerModeWarningState:", [v4 decodeIntegerForKey:@"lowPowerModeWarningState"]);
      -[SMReceiverSessionStatus setCacheDownloadError:](v8, "setCacheDownloadError:", [v4 decodeIntegerForKey:@"cacheDownloadError"]);
    }

    self = v8;

    v19 = self;
  }

  else
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *v22 = 0;
      _os_log_error_impl(&dword_26455D000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: decoder", v22, 2u);
    }

    v19 = 0;
  }

  return v19;
}

- (id)description
{
  v27 = MEMORY[0x277CCACA8];
  v35 = [(SMReceiverSessionStatus *)self identifier];
  v31 = [(SMReceiverSessionStatus *)self lastUpdateDate];
  v34 = [v31 stringFromDate];
  v30 = [(SMReceiverSessionStatus *)self sessionID];
  v33 = [v30 UUIDString];
  v24 = [(SMReceiverSessionStatus *)self initiatorHandle];
  v23 = [(SMReceiverSessionStatus *)self receiverHandle];
  v22 = [(SMReceiverSessionStatus *)self sessionState];
  v20 = [(SMReceiverSessionStatus *)self zoneShareAccepted];
  v19 = [(SMReceiverSessionStatus *)self sessionType];
  v29 = [(SMReceiverSessionStatus *)self sessionStartDate];
  v32 = [v29 stringFromDate];
  v26 = [(SMReceiverSessionStatus *)self estimatedEndDate];
  v17 = [v26 stringFromDate];
  v25 = [(SMReceiverSessionStatus *)self coarseEstimatedEndDate];
  v16 = [v25 stringFromDate];
  v15 = [(SMReceiverSessionStatus *)self destinationType];
  v21 = [(SMReceiverSessionStatus *)self destinationMapItem];
  v12 = [v21 base64EncodedStringWithOptions:0];
  v18 = [(SMReceiverSessionStatus *)self triggerDate];
  v13 = [v18 stringFromDate];
  v3 = [(SMReceiverSessionStatus *)self locationOfTrigger];
  v4 = [(SMReceiverSessionStatus *)self triggerType];
  v14 = [(SMReceiverSessionStatus *)self cacheRequestDate];
  v5 = [v14 stringFromDate];
  v6 = [(SMReceiverSessionStatus *)self sessionEndReason];
  v7 = [(SMReceiverSessionStatus *)self cacheExpiryDate];
  v8 = [v7 stringFromDate];
  v9 = [(SMReceiverSessionStatus *)self isSOSTrigger];
  v10 = [SMDeviceConfigurationChecker convertLowPowerModeWarningStateToString:[(SMReceiverSessionStatus *)self lowPowerModeWarningState]];
  v28 = [v27 stringWithFormat:@"SMReceiverSessionStatus:identifier, %@, lastUpdateDate, %@, sessionID, %@, initiatorHandle, %@, receiverHandle, %@, sessionState, %d, zoneShareAccepted, %d, sessionType, %d, sessionStartDate, %@, estimatedEndDate, %@, coarseEstimatedEndDate, %@, destinationType, %d, destinationMapItem, %@, triggerDate, %@, locationOfTrigger, %@, triggerType, %d, cacheRequestDate, %@, sessionEndReason, %d, cacheExpiryDate, %@, isSOSTrigger, %d, lowPowerModeStateWarning, %@, cacheDownloadError, %d", v35, v34, v33, v24, v23, v22, v20, v19, v32, v17, v16, v15, v12, v13, v3, v4, v5, v6, v8, v9, v10, -[SMReceiverSessionStatus cacheDownloadError](self, "cacheDownloadError")];

  return v28;
}

@end