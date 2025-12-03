@interface SMTriggerDestinationState
+ (id)convertSMDirectionTransportTypeToString:(unint64_t)string;
+ (id)modeOfTransportToString:(unint64_t)string;
+ (id)statusToString:(unint64_t)string;
- (BOOL)isEqual:(id)equal;
- (SMTriggerDestinationState)initWithCoder:(id)coder;
- (SMTriggerDestinationState)initWithSessionIdentifier:(id)identifier;
- (SMTriggerDestinationState)initWithSessionIdentifier:(id)identifier currentStatus:(unint64_t)status currentStatusDate:(id)date lastLockDate:(id)lockDate lastUnlockDate:(id)unlockDate predominantModeOfTransport:(unint64_t)transport numberOfETARetries:(unsigned __int16)retries shouldRetryETAQuery:(BOOL)self0 roundTripReminderDate:(id)self1 timeToUpdateStatus:(id)self2 upperBoundEta:(id)self3 mapsExpectedTravelTime:(double)self4 remainingDistance:(double)self5 date:(id)self6;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)markDirty;
- (void)setCurrentStatus:(unint64_t)status;
- (void)setCurrentStatusDate:(id)date;
- (void)setLastLockDate:(id)date;
- (void)setLastUnlockDate:(id)date;
- (void)setMapsExpectedTravelTime:(double)time;
- (void)setPredominantModeOfTransport:(unint64_t)transport;
- (void)setRemainingDistance:(double)distance;
- (void)setRoundTripReminderDate:(id)date;
- (void)setTimeToUpdateStatus:(id)status;
- (void)setUpperBoundEta:(id)eta;
@end

@implementation SMTriggerDestinationState

- (SMTriggerDestinationState)initWithSessionIdentifier:(id)identifier
{
  v4 = MEMORY[0x277CBEAA8];
  identifierCopy = identifier;
  date = [v4 date];
  date2 = [MEMORY[0x277CBEAA8] date];
  BYTE2(v10) = 1;
  LOWORD(v10) = 0;
  v8 = [(SMTriggerDestinationState *)self initWithSessionIdentifier:identifierCopy currentStatus:1 currentStatusDate:date lastLockDate:0 lastUnlockDate:0 predominantModeOfTransport:0xFFFFFFFLL numberOfETARetries:-1.0 shouldRetryETAQuery:-1.0 roundTripReminderDate:v10 timeToUpdateStatus:0 upperBoundEta:0 mapsExpectedTravelTime:0 remainingDistance:date2 date:?];

  return v8;
}

- (SMTriggerDestinationState)initWithSessionIdentifier:(id)identifier currentStatus:(unint64_t)status currentStatusDate:(id)date lastLockDate:(id)lockDate lastUnlockDate:(id)unlockDate predominantModeOfTransport:(unint64_t)transport numberOfETARetries:(unsigned __int16)retries shouldRetryETAQuery:(BOOL)self0 roundTripReminderDate:(id)self1 timeToUpdateStatus:(id)self2 upperBoundEta:(id)self3 mapsExpectedTravelTime:(double)self4 remainingDistance:(double)self5 date:(id)self6
{
  identifierCopy = identifier;
  dateCopy = date;
  lockDateCopy = lockDate;
  unlockDateCopy = unlockDate;
  reminderDateCopy = reminderDate;
  updateStatusCopy = updateStatus;
  etaCopy = eta;
  v31 = a16;
  if (identifierCopy)
  {
    v38.receiver = self;
    v38.super_class = SMTriggerDestinationState;
    v24 = [(SMTriggerDestinationState *)&v38 init];
    v25 = v24;
    if (v24)
    {
      objc_storeStrong(&v24->_sessionIdentifier, identifier);
      v25->_currentStatus = status;
      objc_storeStrong(&v25->_currentStatusDate, date);
      objc_storeStrong(&v25->_lastLockDate, lockDate);
      objc_storeStrong(&v25->_lastUnlockDate, unlockDate);
      v25->_predominantModeOfTransport = transport;
      v25->_numberOfETARetries = retries;
      v25->_shouldRetryETAQuery = query;
      objc_storeStrong(&v25->_roundTripReminderDate, reminderDate);
      objc_storeStrong(&v25->_timeToUpdateStatus, updateStatus);
      objc_storeStrong(&v25->_upperBoundEta, eta);
      v25->_mapsExpectedTravelTime = time;
      v25->_remainingDistance = distance;
      objc_storeStrong(&v25->_date, a16);
      v25->_dirty = 1;
    }

    self = v25;
    selfCopy = self;
  }

  else
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v27, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: sessionIdentifier", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)markDirty
{
  date = [MEMORY[0x277CBEAA8] date];
  date = self->_date;
  self->_date = date;

  self->_dirty = 1;
}

- (void)setTimeToUpdateStatus:(id)status
{
  v13 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  if (![(NSDate *)self->_timeToUpdateStatus isEqualToDate:statusCopy])
  {
    objc_storeStrong(&self->_timeToUpdateStatus, status);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        stringFromDate = [(NSDate *)self->_timeToUpdateStatus stringFromDate];
        v9 = 136315394;
        v10 = "[SMTriggerDestinationState setTimeToUpdateStatus:]";
        v11 = 2112;
        v12 = stringFromDate;
        _os_log_impl(&dword_26455D000, v6, OS_LOG_TYPE_INFO, "%s, timeToUpdateStatus, %@", &v9, 0x16u);
      }
    }

    [(SMTriggerDestinationState *)self markDirty];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setLastLockDate:(id)date
{
  v13 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  if (![(NSDate *)self->_lastLockDate isEqualToDate:dateCopy])
  {
    objc_storeStrong(&self->_lastLockDate, date);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        stringFromDate = [(NSDate *)self->_lastLockDate stringFromDate];
        v9 = 136315394;
        v10 = "[SMTriggerDestinationState setLastLockDate:]";
        v11 = 2112;
        v12 = stringFromDate;
        _os_log_impl(&dword_26455D000, v6, OS_LOG_TYPE_INFO, "%s, lastLockDate, %@", &v9, 0x16u);
      }
    }

    [(SMTriggerDestinationState *)self markDirty];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setLastUnlockDate:(id)date
{
  v13 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  if (![(NSDate *)self->_lastUnlockDate isEqualToDate:dateCopy])
  {
    objc_storeStrong(&self->_lastUnlockDate, date);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        stringFromDate = [(NSDate *)self->_lastUnlockDate stringFromDate];
        v9 = 136315394;
        v10 = "[SMTriggerDestinationState setLastUnlockDate:]";
        v11 = 2112;
        v12 = stringFromDate;
        _os_log_impl(&dword_26455D000, v6, OS_LOG_TYPE_INFO, "%s, lastUnlockDate, %@", &v9, 0x16u);
      }
    }

    [(SMTriggerDestinationState *)self markDirty];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setCurrentStatus:(unint64_t)status
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_currentStatus != status)
  {
    self->_currentStatus = status;
    date = [MEMORY[0x277CBEAA8] date];
    currentStatusDate = self->_currentStatusDate;
    self->_currentStatusDate = date;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [SMTriggerDestinationState statusToString:self->_currentStatus];
        stringFromDate = [(NSDate *)self->_currentStatusDate stringFromDate];
        v10 = 136315650;
        v11 = "[SMTriggerDestinationState setCurrentStatus:]";
        v12 = 2112;
        v13 = v7;
        v14 = 2112;
        v15 = stringFromDate;
        _os_log_impl(&dword_26455D000, v6, OS_LOG_TYPE_INFO, "%s, currentStatus, %@, currentStatusDate, %@", &v10, 0x20u);
      }
    }

    [(SMTriggerDestinationState *)self markDirty];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setCurrentStatusDate:(id)date
{
  v13 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  if (self->_currentStatusDate != dateCopy)
  {
    objc_storeStrong(&self->_currentStatusDate, date);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        stringFromDate = [(NSDate *)self->_currentStatusDate stringFromDate];
        v9 = 136315394;
        v10 = "[SMTriggerDestinationState setCurrentStatusDate:]";
        v11 = 2112;
        v12 = stringFromDate;
        _os_log_impl(&dword_26455D000, v6, OS_LOG_TYPE_INFO, "%s, currentStatusDate, %@", &v9, 0x16u);
      }
    }

    [(SMTriggerDestinationState *)self markDirty];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setRoundTripReminderDate:(id)date
{
  v13 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  if (![(NSDate *)self->_roundTripReminderDate isEqualToDate:dateCopy])
  {
    objc_storeStrong(&self->_roundTripReminderDate, date);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        stringFromDate = [(NSDate *)self->_roundTripReminderDate stringFromDate];
        v9 = 136315394;
        v10 = "[SMTriggerDestinationState setRoundTripReminderDate:]";
        v11 = 2112;
        v12 = stringFromDate;
        _os_log_impl(&dword_26455D000, v6, OS_LOG_TYPE_INFO, "%s, roundTripReminderDate, %@", &v9, 0x16u);
      }
    }

    [(SMTriggerDestinationState *)self markDirty];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setUpperBoundEta:(id)eta
{
  v13 = *MEMORY[0x277D85DE8];
  etaCopy = eta;
  if (![(SMUpperBoundEta *)self->_upperBoundEta isEqual:etaCopy])
  {
    objc_storeStrong(&self->_upperBoundEta, eta);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        upperBoundEta = self->_upperBoundEta;
        v9 = 136315394;
        v10 = "[SMTriggerDestinationState setUpperBoundEta:]";
        v11 = 2112;
        v12 = upperBoundEta;
        _os_log_impl(&dword_26455D000, v6, OS_LOG_TYPE_INFO, "%s, upperBoundEta, %@", &v9, 0x16u);
      }
    }

    [(SMTriggerDestinationState *)self markDirty];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setPredominantModeOfTransport:(unint64_t)transport
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_predominantModeOfTransport != transport)
  {
    self->_predominantModeOfTransport = transport;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = [SMTriggerDestinationState convertSMDirectionTransportTypeToString:self->_predominantModeOfTransport];
        v7 = 136315394;
        v8 = "[SMTriggerDestinationState setPredominantModeOfTransport:]";
        v9 = 2112;
        v10 = v5;
        _os_log_impl(&dword_26455D000, v4, OS_LOG_TYPE_INFO, "%s, predominantModeOfTransport, %@", &v7, 0x16u);
      }
    }

    [(SMTriggerDestinationState *)self markDirty];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setMapsExpectedTravelTime:(double)time
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_mapsExpectedTravelTime != time)
  {
    self->_mapsExpectedTravelTime = time;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        mapsExpectedTravelTime = self->_mapsExpectedTravelTime;
        v7 = 136315394;
        v8 = "[SMTriggerDestinationState setMapsExpectedTravelTime:]";
        v9 = 2048;
        v10 = mapsExpectedTravelTime;
        _os_log_impl(&dword_26455D000, v4, OS_LOG_TYPE_INFO, "%s, mapsExpectedTravelTime, %.1f", &v7, 0x16u);
      }
    }

    [(SMTriggerDestinationState *)self markDirty];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setRemainingDistance:(double)distance
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_remainingDistance != distance)
  {
    self->_remainingDistance = distance;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        remainingDistance = self->_remainingDistance;
        v7 = 136315394;
        v8 = "[SMTriggerDestinationState setRemainingDistance:]";
        v9 = 2048;
        v10 = remainingDistance;
        _os_log_impl(&dword_26455D000, v4, OS_LOG_TYPE_INFO, "%s, remainingDistance, %.1f", &v7, 0x16u);
      }
    }

    [(SMTriggerDestinationState *)self markDirty];
  }

  v6 = *MEMORY[0x277D85DE8];
}

+ (id)statusToString:(unint64_t)string
{
  if (string > 3)
  {
    return @"Invalid";
  }

  else
  {
    return off_279B654E8[string];
  }
}

+ (id)modeOfTransportToString:(unint64_t)string
{
  if (string > 3)
  {
    if (string != 4)
    {
      if (string == 0xFFFFFFF)
      {
        return @"Any";
      }

      return @"Invalid";
    }

    return @"Transit";
  }

  else
  {
    if (string != 1)
    {
      if (string == 2)
      {
        return @"Walking";
      }

      return @"Invalid";
    }

    return @"Automobile";
  }
}

+ (id)convertSMDirectionTransportTypeToString:(unint64_t)string
{
  if (string > 3)
  {
    if (string != 4)
    {
      if (string == 0xFFFFFFF)
      {
        return @"SMDirectionsTransportTypeAny";
      }

      return @"UKNOWN";
    }

    return @"SMDirectionsTransportTypeTransit";
  }

  else
  {
    if (string != 1)
    {
      if (string == 2)
      {
        return @"SMDirectionsTransportTypeWalking";
      }

      return @"UKNOWN";
    }

    return @"SMDirectionsTransportTypeAutomobile";
  }
}

- (SMTriggerDestinationState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMTriggerDestinationStateSessionIdentifierKey"];
  v22 = [coderCopy decodeIntegerForKey:@"__kSMTriggerDestinationStateCurrentStatusKey"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMTriggerDestinationStateCurrentStatusDateKey"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMTriggerDestinationStateLastLockDateKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMTriggerDestinationStateLastUnlockDateKey"];
  v20 = [coderCopy decodeIntegerForKey:@"__kSMTriggerDestinationStatePredominantModeOfTransportKey"];
  v7 = [coderCopy decodeIntegerForKey:@"__kSMTriggerDestinationStateNumberOfETARetriesKey"];
  v8 = [coderCopy decodeIntegerForKey:@"__kSMTriggerDestinationStateShouldRetryETAQueryKey"] != 0;
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMTriggerDestinationStateRoundTripReminderDateKey"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMTriggerDestinationStateTimeToUpdateStatusKey"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMTriggerDestinationStateUpperBoundEtaKey"];
  [coderCopy decodeDoubleForKey:@"__kSMTriggerDestinationStateMapsExpectedTravelTimeKey"];
  v13 = v12;
  [coderCopy decodeDoubleForKey:@"__kSMTriggerDestinationStateRemainingDistanceKey"];
  v15 = v14;
  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMTriggerDestinationStateDateKey"];

  BYTE2(v19) = v8;
  LOWORD(v19) = v7;
  v17 = [(SMTriggerDestinationState *)self initWithSessionIdentifier:v21 currentStatus:v22 currentStatusDate:v4 lastLockDate:v5 lastUnlockDate:v6 predominantModeOfTransport:v20 numberOfETARetries:v13 shouldRetryETAQuery:v15 roundTripReminderDate:v19 timeToUpdateStatus:v9 upperBoundEta:v10 mapsExpectedTravelTime:v11 remainingDistance:v16 date:?];

  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  sessionIdentifier = self->_sessionIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:sessionIdentifier forKey:@"__kSMTriggerDestinationStateSessionIdentifierKey"];
  [coderCopy encodeInteger:self->_currentStatus forKey:@"__kSMTriggerDestinationStateCurrentStatusKey"];
  [coderCopy encodeObject:self->_currentStatusDate forKey:@"__kSMTriggerDestinationStateCurrentStatusDateKey"];
  [coderCopy encodeObject:self->_lastLockDate forKey:@"__kSMTriggerDestinationStateLastLockDateKey"];
  [coderCopy encodeObject:self->_lastUnlockDate forKey:@"__kSMTriggerDestinationStateLastUnlockDateKey"];
  [coderCopy encodeInteger:self->_predominantModeOfTransport forKey:@"__kSMTriggerDestinationStatePredominantModeOfTransportKey"];
  [coderCopy encodeInteger:self->_numberOfETARetries forKey:@"__kSMTriggerDestinationStateNumberOfETARetriesKey"];
  [coderCopy encodeInteger:self->_shouldRetryETAQuery forKey:@"__kSMTriggerDestinationStateShouldRetryETAQueryKey"];
  [coderCopy encodeObject:self->_roundTripReminderDate forKey:@"__kSMTriggerDestinationStateRoundTripReminderDateKey"];
  [coderCopy encodeObject:self->_timeToUpdateStatus forKey:@"__kSMTriggerDestinationStateTimeToUpdateStatusKey"];
  [coderCopy encodeObject:self->_upperBoundEta forKey:@"__kSMTriggerDestinationStateUpperBoundEtaKey"];
  [coderCopy encodeDouble:@"__kSMTriggerDestinationStateMapsExpectedTravelTimeKey" forKey:self->_mapsExpectedTravelTime];
  [coderCopy encodeDouble:@"__kSMTriggerDestinationStateRemainingDistanceKey" forKey:self->_remainingDistance];
  [coderCopy encodeObject:self->_date forKey:@"__kSMTriggerDestinationStateDateKey"];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v23 = [SMTriggerDestinationState allocWithZone:zone];
  sessionIdentifier = [(SMTriggerDestinationState *)self sessionIdentifier];
  currentStatus = [(SMTriggerDestinationState *)self currentStatus];
  currentStatusDate = [(SMTriggerDestinationState *)self currentStatusDate];
  lastLockDate = [(SMTriggerDestinationState *)self lastLockDate];
  lastUnlockDate = [(SMTriggerDestinationState *)self lastUnlockDate];
  predominantModeOfTransport = [(SMTriggerDestinationState *)self predominantModeOfTransport];
  numberOfETARetries = [(SMTriggerDestinationState *)self numberOfETARetries];
  shouldRetryETAQuery = [(SMTriggerDestinationState *)self shouldRetryETAQuery];
  roundTripReminderDate = [(SMTriggerDestinationState *)self roundTripReminderDate];
  timeToUpdateStatus = [(SMTriggerDestinationState *)self timeToUpdateStatus];
  upperBoundEta = [(SMTriggerDestinationState *)self upperBoundEta];
  [(SMTriggerDestinationState *)self mapsExpectedTravelTime];
  v14 = v13;
  [(SMTriggerDestinationState *)self remainingDistance];
  v16 = v15;
  date = [(SMTriggerDestinationState *)self date];
  BYTE2(v20) = shouldRetryETAQuery;
  LOWORD(v20) = numberOfETARetries;
  v18 = [(SMTriggerDestinationState *)v23 initWithSessionIdentifier:sessionIdentifier currentStatus:currentStatus currentStatusDate:currentStatusDate lastLockDate:lastLockDate lastUnlockDate:lastUnlockDate predominantModeOfTransport:predominantModeOfTransport numberOfETARetries:v14 shouldRetryETAQuery:v16 roundTripReminderDate:v20 timeToUpdateStatus:roundTripReminderDate upperBoundEta:timeToUpdateStatus mapsExpectedTravelTime:upperBoundEta remainingDistance:date date:?];

  return v18;
}

- (unint64_t)hash
{
  sessionIdentifier = [(SMTriggerDestinationState *)self sessionIdentifier];
  v3 = [sessionIdentifier hash];
  v4 = [(SMTriggerDestinationState *)self currentStatus]^ v3;
  currentStatusDate = [(SMTriggerDestinationState *)self currentStatusDate];
  v5 = [currentStatusDate hash];
  lastLockDate = [(SMTriggerDestinationState *)self lastLockDate];
  v7 = v4 ^ v5 ^ [lastLockDate hash];
  lastUnlockDate = [(SMTriggerDestinationState *)self lastUnlockDate];
  v9 = [lastUnlockDate hash];
  v10 = v9 ^ [(SMTriggerDestinationState *)self predominantModeOfTransport];
  v11 = v7 ^ v10 ^ [(SMTriggerDestinationState *)self numberOfETARetries];
  shouldRetryETAQuery = [(SMTriggerDestinationState *)self shouldRetryETAQuery];
  roundTripReminderDate = [(SMTriggerDestinationState *)self roundTripReminderDate];
  v14 = shouldRetryETAQuery ^ [roundTripReminderDate hash];
  timeToUpdateStatus = [(SMTriggerDestinationState *)self timeToUpdateStatus];
  v16 = v11 ^ v14 ^ [timeToUpdateStatus hash];
  upperBoundEta = [(SMTriggerDestinationState *)self upperBoundEta];
  v18 = v16 ^ [upperBoundEta hash];
  v19 = MEMORY[0x277CCABB0];
  [(SMTriggerDestinationState *)self mapsExpectedTravelTime];
  v20 = [v19 numberWithDouble:?];
  v21 = v18 ^ [v20 hash];
  v22 = MEMORY[0x277CCABB0];
  [(SMTriggerDestinationState *)self remainingDistance];
  v23 = [v22 numberWithDouble:?];
  v24 = [v23 hash];
  date = [(SMTriggerDestinationState *)self date];
  v26 = v24 ^ [date hash];

  return v21 ^ v26;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      sessionIdentifier = [(SMTriggerDestinationState *)self sessionIdentifier];
      sessionIdentifier2 = [(SMTriggerDestinationState *)v5 sessionIdentifier];
      if (sessionIdentifier == sessionIdentifier2)
      {
        v74 = 0;
      }

      else
      {
        sessionIdentifier3 = [(SMTriggerDestinationState *)self sessionIdentifier];
        sessionIdentifier4 = [(SMTriggerDestinationState *)v5 sessionIdentifier];
        v10 = [sessionIdentifier3 isEqual:sessionIdentifier4];

        v74 = v10 ^ 1;
      }

      currentStatus = [(SMTriggerDestinationState *)self currentStatus];
      currentStatus2 = [(SMTriggerDestinationState *)v5 currentStatus];
      currentStatusDate = [(SMTriggerDestinationState *)self currentStatusDate];
      currentStatusDate2 = [(SMTriggerDestinationState *)v5 currentStatusDate];
      if (currentStatusDate == currentStatusDate2)
      {
        v71 = 0;
      }

      else
      {
        currentStatusDate3 = [(SMTriggerDestinationState *)self currentStatusDate];
        currentStatusDate4 = [(SMTriggerDestinationState *)v5 currentStatusDate];
        v16 = [currentStatusDate3 isEqual:currentStatusDate4];

        v71 = v16 ^ 1;
      }

      lastLockDate = [(SMTriggerDestinationState *)self lastLockDate];
      lastLockDate2 = [(SMTriggerDestinationState *)v5 lastLockDate];
      if (lastLockDate == lastLockDate2)
      {
        v70 = 0;
      }

      else
      {
        lastLockDate3 = [(SMTriggerDestinationState *)self lastLockDate];
        lastLockDate4 = [(SMTriggerDestinationState *)v5 lastLockDate];
        v21 = [lastLockDate3 isEqual:lastLockDate4];

        v70 = v21 ^ 1;
      }

      lastUnlockDate = [(SMTriggerDestinationState *)self lastUnlockDate];
      lastUnlockDate2 = [(SMTriggerDestinationState *)v5 lastUnlockDate];
      if (lastUnlockDate == lastUnlockDate2)
      {
        v69 = 0;
      }

      else
      {
        lastUnlockDate3 = [(SMTriggerDestinationState *)self lastUnlockDate];
        lastUnlockDate4 = [(SMTriggerDestinationState *)v5 lastUnlockDate];
        v26 = [lastUnlockDate3 isEqual:lastUnlockDate4];

        v69 = v26 ^ 1;
      }

      predominantModeOfTransport = [(SMTriggerDestinationState *)self predominantModeOfTransport];
      predominantModeOfTransport2 = [(SMTriggerDestinationState *)v5 predominantModeOfTransport];
      numberOfETARetries = [(SMTriggerDestinationState *)self numberOfETARetries];
      numberOfETARetries2 = [(SMTriggerDestinationState *)v5 numberOfETARetries];
      shouldRetryETAQuery = [(SMTriggerDestinationState *)self shouldRetryETAQuery];
      shouldRetryETAQuery2 = [(SMTriggerDestinationState *)v5 shouldRetryETAQuery];
      roundTripReminderDate = [(SMTriggerDestinationState *)self roundTripReminderDate];
      roundTripReminderDate2 = [(SMTriggerDestinationState *)v5 roundTripReminderDate];
      if (roundTripReminderDate == roundTripReminderDate2)
      {
        v65 = 0;
      }

      else
      {
        roundTripReminderDate3 = [(SMTriggerDestinationState *)self roundTripReminderDate];
        roundTripReminderDate4 = [(SMTriggerDestinationState *)v5 roundTripReminderDate];
        v33 = [roundTripReminderDate3 isEqual:roundTripReminderDate4];

        v65 = v33 ^ 1;
      }

      timeToUpdateStatus = [(SMTriggerDestinationState *)self timeToUpdateStatus];
      timeToUpdateStatus2 = [(SMTriggerDestinationState *)v5 timeToUpdateStatus];
      if (timeToUpdateStatus == timeToUpdateStatus2)
      {
        v63 = 0;
      }

      else
      {
        timeToUpdateStatus3 = [(SMTriggerDestinationState *)self timeToUpdateStatus];
        timeToUpdateStatus4 = [(SMTriggerDestinationState *)v5 timeToUpdateStatus];
        v38 = [timeToUpdateStatus3 isEqual:timeToUpdateStatus4];

        v63 = v38 ^ 1;
      }

      upperBoundEta = [(SMTriggerDestinationState *)self upperBoundEta];
      upperBoundEta2 = [(SMTriggerDestinationState *)v5 upperBoundEta];
      if (upperBoundEta == upperBoundEta2)
      {
        v44 = 0;
      }

      else
      {
        upperBoundEta3 = [(SMTriggerDestinationState *)self upperBoundEta];
        upperBoundEta4 = [(SMTriggerDestinationState *)v5 upperBoundEta];
        v43 = [upperBoundEta3 isEqual:upperBoundEta4];

        v44 = v43 ^ 1;
      }

      v45 = shouldRetryETAQuery ^ shouldRetryETAQuery2;

      [(SMTriggerDestinationState *)self mapsExpectedTravelTime];
      v47 = v46;
      [(SMTriggerDestinationState *)v5 mapsExpectedTravelTime];
      v49 = v48;
      [(SMTriggerDestinationState *)self remainingDistance];
      v51 = v50;
      [(SMTriggerDestinationState *)v5 remainingDistance];
      v53 = v52;
      date = [(SMTriggerDestinationState *)self date];
      date2 = [(SMTriggerDestinationState *)v5 date];
      if (date == date2)
      {
        v58 = 1;
      }

      else
      {
        date3 = [(SMTriggerDestinationState *)self date];
        date4 = [(SMTriggerDestinationState *)v5 date];
        v58 = [date3 isEqual:date4];
      }

      v59 = predominantModeOfTransport != predominantModeOfTransport2;

      v60 = v74;
      if (currentStatus != currentStatus2)
      {
        v60 = 1;
      }

      v61 = (v47 == v49) & ~(v60 | v71 | v70 | v69 | (v59 || numberOfETARetries != numberOfETARetries2) | v45 | v65 | v63 | v44);
      if (v51 != v53)
      {
        v61 = 0;
      }

      v11 = v61 & v58;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)description
{
  v23 = MEMORY[0x277CCACA8];
  sessionIdentifier = [(SMTriggerDestinationState *)self sessionIdentifier];
  date = [(SMTriggerDestinationState *)self date];
  stringFromDate = [date stringFromDate];
  v18 = [objc_opt_class() statusToString:{-[SMTriggerDestinationState currentStatus](self, "currentStatus")}];
  currentStatusDate = [(SMTriggerDestinationState *)self currentStatusDate];
  stringFromDate2 = [currentStatusDate stringFromDate];
  lastLockDate = [(SMTriggerDestinationState *)self lastLockDate];
  stringFromDate3 = [lastLockDate stringFromDate];
  lastUnlockDate = [(SMTriggerDestinationState *)self lastUnlockDate];
  stringFromDate4 = [lastUnlockDate stringFromDate];
  v4 = [objc_opt_class() modeOfTransportToString:{-[SMTriggerDestinationState predominantModeOfTransport](self, "predominantModeOfTransport")}];
  numberOfETARetries = [(SMTriggerDestinationState *)self numberOfETARetries];
  if ([(SMTriggerDestinationState *)self shouldRetryETAQuery])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  roundTripReminderDate = [(SMTriggerDestinationState *)self roundTripReminderDate];
  stringFromDate5 = [roundTripReminderDate stringFromDate];
  timeToUpdateStatus = [(SMTriggerDestinationState *)self timeToUpdateStatus];
  stringFromDate6 = [timeToUpdateStatus stringFromDate];
  upperBoundEta = [(SMTriggerDestinationState *)self upperBoundEta];
  [(SMTriggerDestinationState *)self mapsExpectedTravelTime];
  v12 = v11;
  [(SMTriggerDestinationState *)self remainingDistance];
  v24 = [v23 stringWithFormat:@"sessionIdentifier, %@, date, %@, currentStatus, %@, currentStatusDate, %@, lastLockDate, %@, lastUnLockDate, %@, predominantModeOfTransport, %@, numberOfETARetries, %hu, shouldRetryETAQuery, %@, roundTripReminderDate, %@, timeToUpdateStatus, %@, upperBoundEta, %@, mapsExpectedTravelTime, %.1f, remainingDistance, %.1f", sessionIdentifier, stringFromDate, v18, stringFromDate2, stringFromDate3, stringFromDate4, v4, numberOfETARetries, v6, stringFromDate5, stringFromDate6, upperBoundEta, v12, v13];

  return v24;
}

@end