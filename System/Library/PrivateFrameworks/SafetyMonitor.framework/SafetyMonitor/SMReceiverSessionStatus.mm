@interface SMReceiverSessionStatus
+ (id)convertSessionStateToString:(int64_t)string;
- (SMReceiverSessionStatus)initWithCoder:(id)coder;
- (SMReceiverSessionStatus)initWithIdentifier:(id)identifier sessionID:(id)d initiatorHandle:(id)handle;
- (id)description;
- (id)outputToDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMReceiverSessionStatus

- (SMReceiverSessionStatus)initWithIdentifier:(id)identifier sessionID:(id)d initiatorHandle:(id)handle
{
  identifierCopy = identifier;
  dCopy = d;
  handleCopy = handle;
  v11 = handleCopy;
  if (!dCopy)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      selfCopy = 0;
      goto LABEL_13;
    }

    *buf = 0;
    v15 = "Invalid parameter not satisfying: sessionID";
LABEL_15:
    _os_log_error_impl(&dword_26455D000, v14, OS_LOG_TYPE_ERROR, v15, buf, 2u);
    goto LABEL_9;
  }

  if (!handleCopy)
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
    if (identifierCopy)
    {
      uUID = identifierCopy;
    }

    else
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
    }

    identifier = v12->_identifier;
    v12->_identifier = uUID;

    v18 = [MEMORY[0x277CBEAA8] now];
    lastUpdateDate = v12->_lastUpdateDate;
    v12->_lastUpdateDate = v18;

    objc_storeStrong(&v12->_sessionID, d);
    objc_storeStrong(&v12->_initiatorHandle, handle);
    *&v12->_zoneShareAccepted = 0;
    v12->_destinationType = 0;
    v12->_triggerType = 0;
    v12->_sessionState = 0;
    v12->_sessionType = 0;
    v12->_lowPowerModeWarningState = 0;
    v12->_cacheDownloadError = 0;
  }

  self = v12;
  selfCopy = self;
LABEL_13:

  return selfCopy;
}

+ (id)convertSessionStateToString:(int64_t)string
{
  if ((string - 1) > 8)
  {
    return @"Unknown";
  }

  else
  {
    return off_279B651F8[string - 1];
  }
}

- (id)outputToDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  identifier = [(SMReceiverSessionStatus *)self identifier];
  [v3 setObject:identifier forKey:@"identifier"];

  v5 = MEMORY[0x277CCABB0];
  lastUpdateDate = [(SMReceiverSessionStatus *)self lastUpdateDate];
  [lastUpdateDate timeIntervalSince1970];
  v7 = [v5 numberWithDouble:?];
  [v3 setObject:v7 forKey:@"lastUpdateDate"];

  sessionID = [(SMReceiverSessionStatus *)self sessionID];
  [v3 setObject:sessionID forKey:@"sessionID"];

  initiatorHandle = [(SMReceiverSessionStatus *)self initiatorHandle];
  primaryHandle = [initiatorHandle primaryHandle];
  [v3 setObject:primaryHandle forKey:@"initiatorHandle"];

  receiverHandle = [(SMReceiverSessionStatus *)self receiverHandle];

  if (receiverHandle)
  {
    receiverHandle2 = [(SMReceiverSessionStatus *)self receiverHandle];
    [v3 setObject:receiverHandle2 forKey:@"receiverHandle"];
  }

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SMReceiverSessionStatus sessionState](self, "sessionState")}];
  [v3 setObject:v13 forKey:@"sessionState"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[SMReceiverSessionStatus zoneShareAccepted](self, "zoneShareAccepted")}];
  [v3 setObject:v14 forKey:@"zoneShareAccepted"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMReceiverSessionStatus sessionType](self, "sessionType")}];
  [v3 setObject:v15 forKey:@"sessionType"];

  sessionStartDate = [(SMReceiverSessionStatus *)self sessionStartDate];

  if (sessionStartDate)
  {
    sessionStartDate2 = [(SMReceiverSessionStatus *)self sessionStartDate];
    [v3 setObject:sessionStartDate2 forKey:@"sessionStartDate"];
  }

  estimatedEndDate = [(SMReceiverSessionStatus *)self estimatedEndDate];

  if (estimatedEndDate)
  {
    estimatedEndDate2 = [(SMReceiverSessionStatus *)self estimatedEndDate];
    [v3 setObject:estimatedEndDate2 forKey:@"estimatedEndDate"];
  }

  coarseEstimatedEndDate = [(SMReceiverSessionStatus *)self coarseEstimatedEndDate];

  if (coarseEstimatedEndDate)
  {
    coarseEstimatedEndDate2 = [(SMReceiverSessionStatus *)self coarseEstimatedEndDate];
    [v3 setObject:coarseEstimatedEndDate2 forKey:@"coarseEstimatedEndDate"];
  }

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMReceiverSessionStatus destinationType](self, "destinationType")}];
  [v3 setObject:v22 forKey:@"destinationType"];

  destinationMapItem = [(SMReceiverSessionStatus *)self destinationMapItem];

  if (destinationMapItem)
  {
    destinationMapItem2 = [(SMReceiverSessionStatus *)self destinationMapItem];
    v25 = [destinationMapItem2 base64EncodedStringWithOptions:0];
    [v3 setObject:v25 forKey:@"destinationMapItem"];
  }

  triggerDate = [(SMReceiverSessionStatus *)self triggerDate];

  if (triggerDate)
  {
    triggerDate2 = [(SMReceiverSessionStatus *)self triggerDate];
    [v3 setObject:triggerDate2 forKey:@"triggerDate"];
  }

  locationOfTrigger = [(SMReceiverSessionStatus *)self locationOfTrigger];

  if (locationOfTrigger)
  {
    locationOfTrigger2 = [(SMReceiverSessionStatus *)self locationOfTrigger];
    [v3 setObject:locationOfTrigger2 forKey:@"locationOfTrigger"];
  }

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMReceiverSessionStatus triggerType](self, "triggerType")}];
  [v3 setObject:v30 forKey:@"triggerType"];

  cacheRequestDate = [(SMReceiverSessionStatus *)self cacheRequestDate];

  if (cacheRequestDate)
  {
    cacheRequestDate2 = [(SMReceiverSessionStatus *)self cacheRequestDate];
    [v3 setObject:cacheRequestDate2 forKey:@"cacheRequestDate"];
  }

  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMReceiverSessionStatus sessionEndReason](self, "sessionEndReason")}];
  [v3 setObject:v33 forKey:@"sessionEndReason"];

  cacheExpiryDate = [(SMReceiverSessionStatus *)self cacheExpiryDate];

  if (cacheExpiryDate)
  {
    cacheExpiryDate2 = [(SMReceiverSessionStatus *)self cacheExpiryDate];
    [v3 setObject:cacheExpiryDate2 forKey:@"cacheExpiryDate"];
  }

  v36 = [MEMORY[0x277CCABB0] numberWithBool:{-[SMReceiverSessionStatus isSOSTrigger](self, "isSOSTrigger")}];
  [v3 setObject:v36 forKey:@"isSOSTrigger"];

  v37 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SMReceiverSessionStatus lowPowerModeWarningState](self, "lowPowerModeWarningState")}];
  [v3 setObject:v37 forKey:@"lowPowerModeWarningState"];

  v38 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SMReceiverSessionStatus cacheDownloadError](self, "cacheDownloadError")}];
  [v3 setObject:v38 forKey:@"cacheDownloadError"];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  v24 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  if (!coderCopy)
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

  identifier = [(SMReceiverSessionStatus *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  lastUpdateDate = [(SMReceiverSessionStatus *)self lastUpdateDate];
  [coderCopy encodeObject:lastUpdateDate forKey:@"lastUpdateDate"];

  sessionID = [(SMReceiverSessionStatus *)self sessionID];
  [coderCopy encodeObject:sessionID forKey:@"sessionID"];

  initiatorHandle = [(SMReceiverSessionStatus *)self initiatorHandle];
  [coderCopy encodeObject:initiatorHandle forKey:@"initiatorHandle"];

  receiverHandle = [(SMReceiverSessionStatus *)self receiverHandle];
  [coderCopy encodeObject:receiverHandle forKey:@"receiverHandle"];

  [coderCopy encodeInteger:-[SMReceiverSessionStatus sessionState](self forKey:{"sessionState"), @"sessionState"}];
  [coderCopy encodeBool:-[SMReceiverSessionStatus zoneShareAccepted](self forKey:{"zoneShareAccepted"), @"zoneShareAccepted"}];
  [coderCopy encodeInteger:-[SMReceiverSessionStatus sessionType](self forKey:{"sessionType"), @"sessionType"}];
  sessionStartDate = [(SMReceiverSessionStatus *)self sessionStartDate];
  [coderCopy encodeObject:sessionStartDate forKey:@"sessionStartDate"];

  estimatedEndDate = [(SMReceiverSessionStatus *)self estimatedEndDate];
  [coderCopy encodeObject:estimatedEndDate forKey:@"estimatedEndDate"];

  coarseEstimatedEndDate = [(SMReceiverSessionStatus *)self coarseEstimatedEndDate];
  [coderCopy encodeObject:coarseEstimatedEndDate forKey:@"coarseEstimatedEndDate"];

  [coderCopy encodeInteger:-[SMReceiverSessionStatus destinationType](self forKey:{"destinationType"), @"destinationType"}];
  destinationMapItem = [(SMReceiverSessionStatus *)self destinationMapItem];
  [coderCopy encodeObject:destinationMapItem forKey:@"destinationMapItem"];

  triggerDate = [(SMReceiverSessionStatus *)self triggerDate];
  [coderCopy encodeObject:triggerDate forKey:@"triggerDate"];

  locationOfTrigger = [(SMReceiverSessionStatus *)self locationOfTrigger];
  [coderCopy encodeObject:locationOfTrigger forKey:@"locationOfTrigger"];

  [coderCopy encodeInteger:-[SMReceiverSessionStatus triggerType](self forKey:{"triggerType"), @"triggerType"}];
  cacheRequestDate = [(SMReceiverSessionStatus *)self cacheRequestDate];
  [coderCopy encodeObject:cacheRequestDate forKey:@"cacheRequestDate"];

  [coderCopy encodeInteger:-[SMReceiverSessionStatus sessionEndReason](self forKey:{"sessionEndReason"), @"sessionEndReason"}];
  cacheExpiryDate = [(SMReceiverSessionStatus *)self cacheExpiryDate];
  [coderCopy encodeObject:cacheExpiryDate forKey:@"cacheExpiryDate"];

  [coderCopy encodeBool:-[SMReceiverSessionStatus isSOSTrigger](self forKey:{"isSOSTrigger"), @"isSOSTrigger"}];
  [coderCopy encodeInteger:-[SMReceiverSessionStatus lowPowerModeWarningState](self forKey:{"lowPowerModeWarningState"), @"lowPowerModeWarningState"}];
  [coderCopy encodeInteger:-[SMReceiverSessionStatus cacheDownloadError](self forKey:{"cacheDownloadError"), @"cacheDownloadError"}];

  v19 = *MEMORY[0x277D85DE8];
}

- (SMReceiverSessionStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (coderCopy)
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionID"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"initiatorHandle"];
    v8 = [(SMReceiverSessionStatus *)self initWithIdentifier:v5 sessionID:v6 initiatorHandle:v7];
    if (v8)
    {
      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"receiverHandle"];
      [(SMReceiverSessionStatus *)v8 setReceiverHandle:v9];

      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdateDate"];
      [(SMReceiverSessionStatus *)v8 setLastUpdateDate:v10];

      -[SMReceiverSessionStatus setSessionState:](v8, "setSessionState:", [coderCopy decodeIntegerForKey:@"sessionState"]);
      -[SMReceiverSessionStatus setZoneShareAccepted:](v8, "setZoneShareAccepted:", [coderCopy decodeBoolForKey:@"zoneShareAccepted"]);
      -[SMReceiverSessionStatus setSessionType:](v8, "setSessionType:", [coderCopy decodeIntegerForKey:@"sessionType"]);
      v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionStartDate"];
      [(SMReceiverSessionStatus *)v8 setSessionStartDate:v11];

      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"estimatedEndDate"];
      [(SMReceiverSessionStatus *)v8 setEstimatedEndDate:v12];

      v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"coarseEstimatedEndDate"];
      [(SMReceiverSessionStatus *)v8 setCoarseEstimatedEndDate:v13];

      -[SMReceiverSessionStatus setDestinationType:](v8, "setDestinationType:", [coderCopy decodeIntegerForKey:@"destinationType"]);
      v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"destinationMapItem"];
      [(SMReceiverSessionStatus *)v8 setDestinationMapItem:v14];

      v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"triggerDate"];
      [(SMReceiverSessionStatus *)v8 setTriggerDate:v15];

      v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locationOfTrigger"];
      [(SMReceiverSessionStatus *)v8 setLocationOfTrigger:v16];

      -[SMReceiverSessionStatus setTriggerType:](v8, "setTriggerType:", [coderCopy decodeIntegerForKey:@"triggerType"]);
      v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cacheRequestDate"];
      [(SMReceiverSessionStatus *)v8 setCacheRequestDate:v17];

      -[SMReceiverSessionStatus setSessionEndReason:](v8, "setSessionEndReason:", [coderCopy decodeIntegerForKey:@"sessionEndReason"]);
      v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cacheExpiryDate"];
      [(SMReceiverSessionStatus *)v8 setCacheExpiryDate:v18];

      -[SMReceiverSessionStatus setIsSOSTrigger:](v8, "setIsSOSTrigger:", [coderCopy decodeBoolForKey:@"isSOSTrigger"]);
      -[SMReceiverSessionStatus setLowPowerModeWarningState:](v8, "setLowPowerModeWarningState:", [coderCopy decodeIntegerForKey:@"lowPowerModeWarningState"]);
      -[SMReceiverSessionStatus setCacheDownloadError:](v8, "setCacheDownloadError:", [coderCopy decodeIntegerForKey:@"cacheDownloadError"]);
    }

    self = v8;

    selfCopy = self;
  }

  else
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *v22 = 0;
      _os_log_error_impl(&dword_26455D000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: decoder", v22, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v27 = MEMORY[0x277CCACA8];
  identifier = [(SMReceiverSessionStatus *)self identifier];
  lastUpdateDate = [(SMReceiverSessionStatus *)self lastUpdateDate];
  stringFromDate = [lastUpdateDate stringFromDate];
  sessionID = [(SMReceiverSessionStatus *)self sessionID];
  uUIDString = [sessionID UUIDString];
  initiatorHandle = [(SMReceiverSessionStatus *)self initiatorHandle];
  receiverHandle = [(SMReceiverSessionStatus *)self receiverHandle];
  sessionState = [(SMReceiverSessionStatus *)self sessionState];
  zoneShareAccepted = [(SMReceiverSessionStatus *)self zoneShareAccepted];
  sessionType = [(SMReceiverSessionStatus *)self sessionType];
  sessionStartDate = [(SMReceiverSessionStatus *)self sessionStartDate];
  stringFromDate2 = [sessionStartDate stringFromDate];
  estimatedEndDate = [(SMReceiverSessionStatus *)self estimatedEndDate];
  stringFromDate3 = [estimatedEndDate stringFromDate];
  coarseEstimatedEndDate = [(SMReceiverSessionStatus *)self coarseEstimatedEndDate];
  stringFromDate4 = [coarseEstimatedEndDate stringFromDate];
  destinationType = [(SMReceiverSessionStatus *)self destinationType];
  destinationMapItem = [(SMReceiverSessionStatus *)self destinationMapItem];
  v12 = [destinationMapItem base64EncodedStringWithOptions:0];
  triggerDate = [(SMReceiverSessionStatus *)self triggerDate];
  stringFromDate5 = [triggerDate stringFromDate];
  locationOfTrigger = [(SMReceiverSessionStatus *)self locationOfTrigger];
  triggerType = [(SMReceiverSessionStatus *)self triggerType];
  cacheRequestDate = [(SMReceiverSessionStatus *)self cacheRequestDate];
  stringFromDate6 = [cacheRequestDate stringFromDate];
  sessionEndReason = [(SMReceiverSessionStatus *)self sessionEndReason];
  cacheExpiryDate = [(SMReceiverSessionStatus *)self cacheExpiryDate];
  stringFromDate7 = [cacheExpiryDate stringFromDate];
  isSOSTrigger = [(SMReceiverSessionStatus *)self isSOSTrigger];
  v10 = [SMDeviceConfigurationChecker convertLowPowerModeWarningStateToString:[(SMReceiverSessionStatus *)self lowPowerModeWarningState]];
  v28 = [v27 stringWithFormat:@"SMReceiverSessionStatus:identifier, %@, lastUpdateDate, %@, sessionID, %@, initiatorHandle, %@, receiverHandle, %@, sessionState, %d, zoneShareAccepted, %d, sessionType, %d, sessionStartDate, %@, estimatedEndDate, %@, coarseEstimatedEndDate, %@, destinationType, %d, destinationMapItem, %@, triggerDate, %@, locationOfTrigger, %@, triggerType, %d, cacheRequestDate, %@, sessionEndReason, %d, cacheExpiryDate, %@, isSOSTrigger, %d, lowPowerModeStateWarning, %@, cacheDownloadError, %d", identifier, stringFromDate, uUIDString, initiatorHandle, receiverHandle, sessionState, zoneShareAccepted, sessionType, stringFromDate2, stringFromDate3, stringFromDate4, destinationType, v12, stringFromDate5, locationOfTrigger, triggerType, stringFromDate6, sessionEndReason, stringFromDate7, isSOSTrigger, v10, -[SMReceiverSessionStatus cacheDownloadError](self, "cacheDownloadError")];

  return v28;
}

@end