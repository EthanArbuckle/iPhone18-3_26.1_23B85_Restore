@interface SMTriggerDestinationState
+ (id)convertSMDirectionTransportTypeToString:(unint64_t)a3;
+ (id)modeOfTransportToString:(unint64_t)a3;
+ (id)statusToString:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (SMTriggerDestinationState)initWithCoder:(id)a3;
- (SMTriggerDestinationState)initWithSessionIdentifier:(id)a3;
- (SMTriggerDestinationState)initWithSessionIdentifier:(id)a3 currentStatus:(unint64_t)a4 currentStatusDate:(id)a5 lastLockDate:(id)a6 lastUnlockDate:(id)a7 predominantModeOfTransport:(unint64_t)a8 numberOfETARetries:(unsigned __int16)a9 shouldRetryETAQuery:(BOOL)a10 roundTripReminderDate:(id)a11 timeToUpdateStatus:(id)a12 upperBoundEta:(id)a13 mapsExpectedTravelTime:(double)a14 remainingDistance:(double)a15 date:(id)a16;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)markDirty;
- (void)setCurrentStatus:(unint64_t)a3;
- (void)setCurrentStatusDate:(id)a3;
- (void)setLastLockDate:(id)a3;
- (void)setLastUnlockDate:(id)a3;
- (void)setMapsExpectedTravelTime:(double)a3;
- (void)setPredominantModeOfTransport:(unint64_t)a3;
- (void)setRemainingDistance:(double)a3;
- (void)setRoundTripReminderDate:(id)a3;
- (void)setTimeToUpdateStatus:(id)a3;
- (void)setUpperBoundEta:(id)a3;
@end

@implementation SMTriggerDestinationState

- (SMTriggerDestinationState)initWithSessionIdentifier:(id)a3
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 date];
  v7 = [MEMORY[0x277CBEAA8] date];
  BYTE2(v10) = 1;
  LOWORD(v10) = 0;
  v8 = [(SMTriggerDestinationState *)self initWithSessionIdentifier:v5 currentStatus:1 currentStatusDate:v6 lastLockDate:0 lastUnlockDate:0 predominantModeOfTransport:0xFFFFFFFLL numberOfETARetries:-1.0 shouldRetryETAQuery:-1.0 roundTripReminderDate:v10 timeToUpdateStatus:0 upperBoundEta:0 mapsExpectedTravelTime:0 remainingDistance:v7 date:?];

  return v8;
}

- (SMTriggerDestinationState)initWithSessionIdentifier:(id)a3 currentStatus:(unint64_t)a4 currentStatusDate:(id)a5 lastLockDate:(id)a6 lastUnlockDate:(id)a7 predominantModeOfTransport:(unint64_t)a8 numberOfETARetries:(unsigned __int16)a9 shouldRetryETAQuery:(BOOL)a10 roundTripReminderDate:(id)a11 timeToUpdateStatus:(id)a12 upperBoundEta:(id)a13 mapsExpectedTravelTime:(double)a14 remainingDistance:(double)a15 date:(id)a16
{
  v23 = a3;
  v37 = a5;
  v36 = a6;
  v35 = a7;
  v34 = a11;
  v33 = a12;
  v32 = a13;
  v31 = a16;
  if (v23)
  {
    v38.receiver = self;
    v38.super_class = SMTriggerDestinationState;
    v24 = [(SMTriggerDestinationState *)&v38 init];
    v25 = v24;
    if (v24)
    {
      objc_storeStrong(&v24->_sessionIdentifier, a3);
      v25->_currentStatus = a4;
      objc_storeStrong(&v25->_currentStatusDate, a5);
      objc_storeStrong(&v25->_lastLockDate, a6);
      objc_storeStrong(&v25->_lastUnlockDate, a7);
      v25->_predominantModeOfTransport = a8;
      v25->_numberOfETARetries = a9;
      v25->_shouldRetryETAQuery = a10;
      objc_storeStrong(&v25->_roundTripReminderDate, a11);
      objc_storeStrong(&v25->_timeToUpdateStatus, a12);
      objc_storeStrong(&v25->_upperBoundEta, a13);
      v25->_mapsExpectedTravelTime = a14;
      v25->_remainingDistance = a15;
      objc_storeStrong(&v25->_date, a16);
      v25->_dirty = 1;
    }

    self = v25;
    v26 = self;
  }

  else
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v27, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: sessionIdentifier", buf, 2u);
    }

    v26 = 0;
  }

  return v26;
}

- (void)markDirty
{
  v3 = [MEMORY[0x277CBEAA8] date];
  date = self->_date;
  self->_date = v3;

  self->_dirty = 1;
}

- (void)setTimeToUpdateStatus:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (![(NSDate *)self->_timeToUpdateStatus isEqualToDate:v5])
  {
    objc_storeStrong(&self->_timeToUpdateStatus, a3);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [(NSDate *)self->_timeToUpdateStatus stringFromDate];
        v9 = 136315394;
        v10 = "[SMTriggerDestinationState setTimeToUpdateStatus:]";
        v11 = 2112;
        v12 = v7;
        _os_log_impl(&dword_26455D000, v6, OS_LOG_TYPE_INFO, "%s, timeToUpdateStatus, %@", &v9, 0x16u);
      }
    }

    [(SMTriggerDestinationState *)self markDirty];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setLastLockDate:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (![(NSDate *)self->_lastLockDate isEqualToDate:v5])
  {
    objc_storeStrong(&self->_lastLockDate, a3);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [(NSDate *)self->_lastLockDate stringFromDate];
        v9 = 136315394;
        v10 = "[SMTriggerDestinationState setLastLockDate:]";
        v11 = 2112;
        v12 = v7;
        _os_log_impl(&dword_26455D000, v6, OS_LOG_TYPE_INFO, "%s, lastLockDate, %@", &v9, 0x16u);
      }
    }

    [(SMTriggerDestinationState *)self markDirty];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setLastUnlockDate:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (![(NSDate *)self->_lastUnlockDate isEqualToDate:v5])
  {
    objc_storeStrong(&self->_lastUnlockDate, a3);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [(NSDate *)self->_lastUnlockDate stringFromDate];
        v9 = 136315394;
        v10 = "[SMTriggerDestinationState setLastUnlockDate:]";
        v11 = 2112;
        v12 = v7;
        _os_log_impl(&dword_26455D000, v6, OS_LOG_TYPE_INFO, "%s, lastUnlockDate, %@", &v9, 0x16u);
      }
    }

    [(SMTriggerDestinationState *)self markDirty];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setCurrentStatus:(unint64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_currentStatus != a3)
  {
    self->_currentStatus = a3;
    v4 = [MEMORY[0x277CBEAA8] date];
    currentStatusDate = self->_currentStatusDate;
    self->_currentStatusDate = v4;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [SMTriggerDestinationState statusToString:self->_currentStatus];
        v8 = [(NSDate *)self->_currentStatusDate stringFromDate];
        v10 = 136315650;
        v11 = "[SMTriggerDestinationState setCurrentStatus:]";
        v12 = 2112;
        v13 = v7;
        v14 = 2112;
        v15 = v8;
        _os_log_impl(&dword_26455D000, v6, OS_LOG_TYPE_INFO, "%s, currentStatus, %@, currentStatusDate, %@", &v10, 0x20u);
      }
    }

    [(SMTriggerDestinationState *)self markDirty];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setCurrentStatusDate:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_currentStatusDate != v5)
  {
    objc_storeStrong(&self->_currentStatusDate, a3);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [(NSDate *)self->_currentStatusDate stringFromDate];
        v9 = 136315394;
        v10 = "[SMTriggerDestinationState setCurrentStatusDate:]";
        v11 = 2112;
        v12 = v7;
        _os_log_impl(&dword_26455D000, v6, OS_LOG_TYPE_INFO, "%s, currentStatusDate, %@", &v9, 0x16u);
      }
    }

    [(SMTriggerDestinationState *)self markDirty];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setRoundTripReminderDate:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (![(NSDate *)self->_roundTripReminderDate isEqualToDate:v5])
  {
    objc_storeStrong(&self->_roundTripReminderDate, a3);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [(NSDate *)self->_roundTripReminderDate stringFromDate];
        v9 = 136315394;
        v10 = "[SMTriggerDestinationState setRoundTripReminderDate:]";
        v11 = 2112;
        v12 = v7;
        _os_log_impl(&dword_26455D000, v6, OS_LOG_TYPE_INFO, "%s, roundTripReminderDate, %@", &v9, 0x16u);
      }
    }

    [(SMTriggerDestinationState *)self markDirty];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setUpperBoundEta:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (![(SMUpperBoundEta *)self->_upperBoundEta isEqual:v5])
  {
    objc_storeStrong(&self->_upperBoundEta, a3);
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

- (void)setPredominantModeOfTransport:(unint64_t)a3
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_predominantModeOfTransport != a3)
  {
    self->_predominantModeOfTransport = a3;
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

- (void)setMapsExpectedTravelTime:(double)a3
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_mapsExpectedTravelTime != a3)
  {
    self->_mapsExpectedTravelTime = a3;
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

- (void)setRemainingDistance:(double)a3
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_remainingDistance != a3)
  {
    self->_remainingDistance = a3;
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

+ (id)statusToString:(unint64_t)a3
{
  if (a3 > 3)
  {
    return @"Invalid";
  }

  else
  {
    return off_279B654E8[a3];
  }
}

+ (id)modeOfTransportToString:(unint64_t)a3
{
  if (a3 > 3)
  {
    if (a3 != 4)
    {
      if (a3 == 0xFFFFFFF)
      {
        return @"Any";
      }

      return @"Invalid";
    }

    return @"Transit";
  }

  else
  {
    if (a3 != 1)
    {
      if (a3 == 2)
      {
        return @"Walking";
      }

      return @"Invalid";
    }

    return @"Automobile";
  }
}

+ (id)convertSMDirectionTransportTypeToString:(unint64_t)a3
{
  if (a3 > 3)
  {
    if (a3 != 4)
    {
      if (a3 == 0xFFFFFFF)
      {
        return @"SMDirectionsTransportTypeAny";
      }

      return @"UKNOWN";
    }

    return @"SMDirectionsTransportTypeTransit";
  }

  else
  {
    if (a3 != 1)
    {
      if (a3 == 2)
      {
        return @"SMDirectionsTransportTypeWalking";
      }

      return @"UKNOWN";
    }

    return @"SMDirectionsTransportTypeAutomobile";
  }
}

- (SMTriggerDestinationState)initWithCoder:(id)a3
{
  v3 = a3;
  v21 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMTriggerDestinationStateSessionIdentifierKey"];
  v22 = [v3 decodeIntegerForKey:@"__kSMTriggerDestinationStateCurrentStatusKey"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMTriggerDestinationStateCurrentStatusDateKey"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMTriggerDestinationStateLastLockDateKey"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMTriggerDestinationStateLastUnlockDateKey"];
  v20 = [v3 decodeIntegerForKey:@"__kSMTriggerDestinationStatePredominantModeOfTransportKey"];
  v7 = [v3 decodeIntegerForKey:@"__kSMTriggerDestinationStateNumberOfETARetriesKey"];
  v8 = [v3 decodeIntegerForKey:@"__kSMTriggerDestinationStateShouldRetryETAQueryKey"] != 0;
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMTriggerDestinationStateRoundTripReminderDateKey"];
  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMTriggerDestinationStateTimeToUpdateStatusKey"];
  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMTriggerDestinationStateUpperBoundEtaKey"];
  [v3 decodeDoubleForKey:@"__kSMTriggerDestinationStateMapsExpectedTravelTimeKey"];
  v13 = v12;
  [v3 decodeDoubleForKey:@"__kSMTriggerDestinationStateRemainingDistanceKey"];
  v15 = v14;
  v16 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMTriggerDestinationStateDateKey"];

  BYTE2(v19) = v8;
  LOWORD(v19) = v7;
  v17 = [(SMTriggerDestinationState *)self initWithSessionIdentifier:v21 currentStatus:v22 currentStatusDate:v4 lastLockDate:v5 lastUnlockDate:v6 predominantModeOfTransport:v20 numberOfETARetries:v13 shouldRetryETAQuery:v15 roundTripReminderDate:v19 timeToUpdateStatus:v9 upperBoundEta:v10 mapsExpectedTravelTime:v11 remainingDistance:v16 date:?];

  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  sessionIdentifier = self->_sessionIdentifier;
  v5 = a3;
  [v5 encodeObject:sessionIdentifier forKey:@"__kSMTriggerDestinationStateSessionIdentifierKey"];
  [v5 encodeInteger:self->_currentStatus forKey:@"__kSMTriggerDestinationStateCurrentStatusKey"];
  [v5 encodeObject:self->_currentStatusDate forKey:@"__kSMTriggerDestinationStateCurrentStatusDateKey"];
  [v5 encodeObject:self->_lastLockDate forKey:@"__kSMTriggerDestinationStateLastLockDateKey"];
  [v5 encodeObject:self->_lastUnlockDate forKey:@"__kSMTriggerDestinationStateLastUnlockDateKey"];
  [v5 encodeInteger:self->_predominantModeOfTransport forKey:@"__kSMTriggerDestinationStatePredominantModeOfTransportKey"];
  [v5 encodeInteger:self->_numberOfETARetries forKey:@"__kSMTriggerDestinationStateNumberOfETARetriesKey"];
  [v5 encodeInteger:self->_shouldRetryETAQuery forKey:@"__kSMTriggerDestinationStateShouldRetryETAQueryKey"];
  [v5 encodeObject:self->_roundTripReminderDate forKey:@"__kSMTriggerDestinationStateRoundTripReminderDateKey"];
  [v5 encodeObject:self->_timeToUpdateStatus forKey:@"__kSMTriggerDestinationStateTimeToUpdateStatusKey"];
  [v5 encodeObject:self->_upperBoundEta forKey:@"__kSMTriggerDestinationStateUpperBoundEtaKey"];
  [v5 encodeDouble:@"__kSMTriggerDestinationStateMapsExpectedTravelTimeKey" forKey:self->_mapsExpectedTravelTime];
  [v5 encodeDouble:@"__kSMTriggerDestinationStateRemainingDistanceKey" forKey:self->_remainingDistance];
  [v5 encodeObject:self->_date forKey:@"__kSMTriggerDestinationStateDateKey"];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v23 = [SMTriggerDestinationState allocWithZone:a3];
  v21 = [(SMTriggerDestinationState *)self sessionIdentifier];
  v22 = [(SMTriggerDestinationState *)self currentStatus];
  v4 = [(SMTriggerDestinationState *)self currentStatusDate];
  v5 = [(SMTriggerDestinationState *)self lastLockDate];
  v6 = [(SMTriggerDestinationState *)self lastUnlockDate];
  v7 = [(SMTriggerDestinationState *)self predominantModeOfTransport];
  v8 = [(SMTriggerDestinationState *)self numberOfETARetries];
  v9 = [(SMTriggerDestinationState *)self shouldRetryETAQuery];
  v10 = [(SMTriggerDestinationState *)self roundTripReminderDate];
  v11 = [(SMTriggerDestinationState *)self timeToUpdateStatus];
  v12 = [(SMTriggerDestinationState *)self upperBoundEta];
  [(SMTriggerDestinationState *)self mapsExpectedTravelTime];
  v14 = v13;
  [(SMTriggerDestinationState *)self remainingDistance];
  v16 = v15;
  v17 = [(SMTriggerDestinationState *)self date];
  BYTE2(v20) = v9;
  LOWORD(v20) = v8;
  v18 = [(SMTriggerDestinationState *)v23 initWithSessionIdentifier:v21 currentStatus:v22 currentStatusDate:v4 lastLockDate:v5 lastUnlockDate:v6 predominantModeOfTransport:v7 numberOfETARetries:v14 shouldRetryETAQuery:v16 roundTripReminderDate:v20 timeToUpdateStatus:v10 upperBoundEta:v11 mapsExpectedTravelTime:v12 remainingDistance:v17 date:?];

  return v18;
}

- (unint64_t)hash
{
  v29 = [(SMTriggerDestinationState *)self sessionIdentifier];
  v3 = [v29 hash];
  v4 = [(SMTriggerDestinationState *)self currentStatus]^ v3;
  v28 = [(SMTriggerDestinationState *)self currentStatusDate];
  v5 = [v28 hash];
  v6 = [(SMTriggerDestinationState *)self lastLockDate];
  v7 = v4 ^ v5 ^ [v6 hash];
  v8 = [(SMTriggerDestinationState *)self lastUnlockDate];
  v9 = [v8 hash];
  v10 = v9 ^ [(SMTriggerDestinationState *)self predominantModeOfTransport];
  v11 = v7 ^ v10 ^ [(SMTriggerDestinationState *)self numberOfETARetries];
  v12 = [(SMTriggerDestinationState *)self shouldRetryETAQuery];
  v13 = [(SMTriggerDestinationState *)self roundTripReminderDate];
  v14 = v12 ^ [v13 hash];
  v15 = [(SMTriggerDestinationState *)self timeToUpdateStatus];
  v16 = v11 ^ v14 ^ [v15 hash];
  v17 = [(SMTriggerDestinationState *)self upperBoundEta];
  v18 = v16 ^ [v17 hash];
  v19 = MEMORY[0x277CCABB0];
  [(SMTriggerDestinationState *)self mapsExpectedTravelTime];
  v20 = [v19 numberWithDouble:?];
  v21 = v18 ^ [v20 hash];
  v22 = MEMORY[0x277CCABB0];
  [(SMTriggerDestinationState *)self remainingDistance];
  v23 = [v22 numberWithDouble:?];
  v24 = [v23 hash];
  v25 = [(SMTriggerDestinationState *)self date];
  v26 = v24 ^ [v25 hash];

  return v21 ^ v26;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SMTriggerDestinationState *)self sessionIdentifier];
      v7 = [(SMTriggerDestinationState *)v5 sessionIdentifier];
      if (v6 == v7)
      {
        v74 = 0;
      }

      else
      {
        v8 = [(SMTriggerDestinationState *)self sessionIdentifier];
        v9 = [(SMTriggerDestinationState *)v5 sessionIdentifier];
        v10 = [v8 isEqual:v9];

        v74 = v10 ^ 1;
      }

      v73 = [(SMTriggerDestinationState *)self currentStatus];
      v72 = [(SMTriggerDestinationState *)v5 currentStatus];
      v12 = [(SMTriggerDestinationState *)self currentStatusDate];
      v13 = [(SMTriggerDestinationState *)v5 currentStatusDate];
      if (v12 == v13)
      {
        v71 = 0;
      }

      else
      {
        v14 = [(SMTriggerDestinationState *)self currentStatusDate];
        v15 = [(SMTriggerDestinationState *)v5 currentStatusDate];
        v16 = [v14 isEqual:v15];

        v71 = v16 ^ 1;
      }

      v17 = [(SMTriggerDestinationState *)self lastLockDate];
      v18 = [(SMTriggerDestinationState *)v5 lastLockDate];
      if (v17 == v18)
      {
        v70 = 0;
      }

      else
      {
        v19 = [(SMTriggerDestinationState *)self lastLockDate];
        v20 = [(SMTriggerDestinationState *)v5 lastLockDate];
        v21 = [v19 isEqual:v20];

        v70 = v21 ^ 1;
      }

      v22 = [(SMTriggerDestinationState *)self lastUnlockDate];
      v23 = [(SMTriggerDestinationState *)v5 lastUnlockDate];
      if (v22 == v23)
      {
        v69 = 0;
      }

      else
      {
        v24 = [(SMTriggerDestinationState *)self lastUnlockDate];
        v25 = [(SMTriggerDestinationState *)v5 lastUnlockDate];
        v26 = [v24 isEqual:v25];

        v69 = v26 ^ 1;
      }

      v27 = [(SMTriggerDestinationState *)self predominantModeOfTransport];
      v68 = [(SMTriggerDestinationState *)v5 predominantModeOfTransport];
      v67 = [(SMTriggerDestinationState *)self numberOfETARetries];
      v66 = [(SMTriggerDestinationState *)v5 numberOfETARetries];
      v64 = [(SMTriggerDestinationState *)self shouldRetryETAQuery];
      v28 = [(SMTriggerDestinationState *)v5 shouldRetryETAQuery];
      v29 = [(SMTriggerDestinationState *)self roundTripReminderDate];
      v30 = [(SMTriggerDestinationState *)v5 roundTripReminderDate];
      if (v29 == v30)
      {
        v65 = 0;
      }

      else
      {
        v31 = [(SMTriggerDestinationState *)self roundTripReminderDate];
        v32 = [(SMTriggerDestinationState *)v5 roundTripReminderDate];
        v33 = [v31 isEqual:v32];

        v65 = v33 ^ 1;
      }

      v34 = [(SMTriggerDestinationState *)self timeToUpdateStatus];
      v35 = [(SMTriggerDestinationState *)v5 timeToUpdateStatus];
      if (v34 == v35)
      {
        v63 = 0;
      }

      else
      {
        v36 = [(SMTriggerDestinationState *)self timeToUpdateStatus];
        v37 = [(SMTriggerDestinationState *)v5 timeToUpdateStatus];
        v38 = [v36 isEqual:v37];

        v63 = v38 ^ 1;
      }

      v39 = [(SMTriggerDestinationState *)self upperBoundEta];
      v40 = [(SMTriggerDestinationState *)v5 upperBoundEta];
      if (v39 == v40)
      {
        v44 = 0;
      }

      else
      {
        v41 = [(SMTriggerDestinationState *)self upperBoundEta];
        v42 = [(SMTriggerDestinationState *)v5 upperBoundEta];
        v43 = [v41 isEqual:v42];

        v44 = v43 ^ 1;
      }

      v45 = v64 ^ v28;

      [(SMTriggerDestinationState *)self mapsExpectedTravelTime];
      v47 = v46;
      [(SMTriggerDestinationState *)v5 mapsExpectedTravelTime];
      v49 = v48;
      [(SMTriggerDestinationState *)self remainingDistance];
      v51 = v50;
      [(SMTriggerDestinationState *)v5 remainingDistance];
      v53 = v52;
      v54 = [(SMTriggerDestinationState *)self date];
      v55 = [(SMTriggerDestinationState *)v5 date];
      if (v54 == v55)
      {
        v58 = 1;
      }

      else
      {
        v56 = [(SMTriggerDestinationState *)self date];
        v57 = [(SMTriggerDestinationState *)v5 date];
        v58 = [v56 isEqual:v57];
      }

      v59 = v27 != v68;

      v60 = v74;
      if (v73 != v72)
      {
        v60 = 1;
      }

      v61 = (v47 == v49) & ~(v60 | v71 | v70 | v69 | (v59 || v67 != v66) | v45 | v65 | v63 | v44);
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
  v21 = [(SMTriggerDestinationState *)self sessionIdentifier];
  v26 = [(SMTriggerDestinationState *)self date];
  v20 = [v26 stringFromDate];
  v18 = [objc_opt_class() statusToString:{-[SMTriggerDestinationState currentStatus](self, "currentStatus")}];
  v25 = [(SMTriggerDestinationState *)self currentStatusDate];
  v3 = [v25 stringFromDate];
  v22 = [(SMTriggerDestinationState *)self lastLockDate];
  v17 = [v22 stringFromDate];
  v19 = [(SMTriggerDestinationState *)self lastUnlockDate];
  v16 = [v19 stringFromDate];
  v4 = [objc_opt_class() modeOfTransportToString:{-[SMTriggerDestinationState predominantModeOfTransport](self, "predominantModeOfTransport")}];
  v5 = [(SMTriggerDestinationState *)self numberOfETARetries];
  if ([(SMTriggerDestinationState *)self shouldRetryETAQuery])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v15 = [(SMTriggerDestinationState *)self roundTripReminderDate];
  v7 = [v15 stringFromDate];
  v8 = [(SMTriggerDestinationState *)self timeToUpdateStatus];
  v9 = [v8 stringFromDate];
  v10 = [(SMTriggerDestinationState *)self upperBoundEta];
  [(SMTriggerDestinationState *)self mapsExpectedTravelTime];
  v12 = v11;
  [(SMTriggerDestinationState *)self remainingDistance];
  v24 = [v23 stringWithFormat:@"sessionIdentifier, %@, date, %@, currentStatus, %@, currentStatusDate, %@, lastLockDate, %@, lastUnLockDate, %@, predominantModeOfTransport, %@, numberOfETARetries, %hu, shouldRetryETAQuery, %@, roundTripReminderDate, %@, timeToUpdateStatus, %@, upperBoundEta, %@, mapsExpectedTravelTime, %.1f, remainingDistance, %.1f", v21, v20, v18, v3, v17, v16, v4, v5, v6, v7, v9, v10, v12, v13];

  return v24;
}

@end