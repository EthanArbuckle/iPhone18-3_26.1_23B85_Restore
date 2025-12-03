@interface SOSStatus
- (BOOL)isFlowActive;
- (BOOL)isFlowActiveAndNotResting;
- (BOOL)isPreCall;
- (BOOL)isValid;
- (BOOL)shouldBlockNonEmergencyCalls;
- (BOOL)shouldRejectNewSOSTriggers;
- (BOOL)shouldRetriggerSOS;
- (SOSStatus)initWithCoder:(id)coder;
- (SOSStatus)initWithUUID:(id)d trigger:(int64_t)trigger timeOfDetection:(id)detection;
- (SOSStatus)initWithUUID:(id)d trigger:(int64_t)trigger timeOfDetection:(id)detection timeOfResolution:(id)resolution resolution:(int64_t)a7;
- (SOSStatus)initWithUUID:(id)d trigger:(int64_t)trigger timeOfDetection:(id)detection timeOfResolution:(id)resolution resolution:(int64_t)a7 flowState:(int64_t)state isPairedDeviceStatus:(BOOL)status;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)isFlowActive;
- (void)isFlowActiveAndNotResting;
- (void)isPreCall;
- (void)shouldBlockNonEmergencyCalls;
- (void)shouldRejectNewSOSTriggers;
- (void)shouldRetriggerSOS;
@end

@implementation SOSStatus

- (BOOL)isValid
{
  uuid = [(SOSStatus *)self uuid];

  if (!uuid)
  {
    goto LABEL_5;
  }

  trigger = [(SOSStatus *)self trigger];
  if (trigger)
  {
    timeOfDetection = [(SOSStatus *)self timeOfDetection];
    if (!timeOfDetection)
    {
      goto LABEL_5;
    }

    v6 = timeOfDetection;
    timeOfDetection2 = [(SOSStatus *)self timeOfDetection];
    [timeOfDetection2 timeIntervalSince1970];
    v9 = v8;
    v10 = [MEMORY[0x277CBEAA8] now];
    [v10 timeIntervalSince1970];
    v12 = v11 + 60.0;

    if (v9 > v12)
    {
LABEL_5:
      LOBYTE(trigger) = 0;
      return trigger;
    }

    LOBYTE(trigger) = 1;
  }

  return trigger;
}

- (BOOL)shouldBlockNonEmergencyCalls
{
  if (![(SOSStatus *)self isValid])
  {
    goto LABEL_9;
  }

  trigger = [(SOSStatus *)self trigger];
  if (trigger >= 0xA)
  {
    v13 = sos_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(SOSStatus *)self shouldBlockNonEmergencyCalls];
    }

    goto LABEL_8;
  }

  v4 = dbl_264360708[trigger];
  timeOfDetection = [(SOSStatus *)self timeOfDetection];
  [timeOfDetection timeIntervalSince1970];
  v7 = v4 + v6;
  v8 = [MEMORY[0x277CBEAA8] now];
  [v8 timeIntervalSince1970];
  v10 = v9;

  if (v7 < v10)
  {
LABEL_9:
    LOBYTE(v12) = 0;
    return v12 & 1;
  }

  flowState = [(SOSStatus *)self flowState];
  if (flowState >= 0xF)
  {
    v13 = sos_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(SOSStatus *)self shouldBlockNonEmergencyCalls];
    }

LABEL_8:

    goto LABEL_9;
  }

  v12 = 0x4006u >> flowState;
  return v12 & 1;
}

- (SOSStatus)initWithUUID:(id)d trigger:(int64_t)trigger timeOfDetection:(id)detection timeOfResolution:(id)resolution resolution:(int64_t)a7
{
  dCopy = d;
  detectionCopy = detection;
  resolutionCopy = resolution;
  v19.receiver = self;
  v19.super_class = SOSStatus;
  v16 = [(SOSStatus *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_uuid, d);
    v17->_trigger = trigger;
    objc_storeStrong(&v17->_timeOfDetection, detection);
    objc_storeStrong(&v17->_timeOfResolution, resolution);
    v17->_resolution = a7;
    v17->_flowState = 0;
    v17->_isPairedDeviceStatus = 0;
  }

  return v17;
}

- (SOSStatus)initWithUUID:(id)d trigger:(int64_t)trigger timeOfDetection:(id)detection
{
  dCopy = d;
  detectionCopy = detection;
  v15.receiver = self;
  v15.super_class = SOSStatus;
  v11 = [(SOSStatus *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_uuid, d);
    v12->_trigger = trigger;
    objc_storeStrong(&v12->_timeOfDetection, detection);
    timeOfResolution = v12->_timeOfResolution;
    v12->_timeOfResolution = 0;

    v12->_isPairedDeviceStatus = 0;
    v12->_resolution = 0;
    v12->_flowState = 0;
  }

  return v12;
}

- (SOSStatus)initWithUUID:(id)d trigger:(int64_t)trigger timeOfDetection:(id)detection timeOfResolution:(id)resolution resolution:(int64_t)a7 flowState:(int64_t)state isPairedDeviceStatus:(BOOL)status
{
  dCopy = d;
  detectionCopy = detection;
  resolutionCopy = resolution;
  v22.receiver = self;
  v22.super_class = SOSStatus;
  v19 = [(SOSStatus *)&v22 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_uuid, d);
    v20->_trigger = trigger;
    objc_storeStrong(&v20->_timeOfDetection, detection);
    objc_storeStrong(&v20->_timeOfResolution, resolution);
    v20->_resolution = a7;
    v20->_flowState = state;
    v20->_isPairedDeviceStatus = status;
  }

  return v20;
}

- (BOOL)isFlowActive
{
  if (![(SOSStatus *)self isValid])
  {
LABEL_7:
    LOBYTE(v4) = 0;
    return v4 & 1;
  }

  flowState = [(SOSStatus *)self flowState];
  if (flowState >= 0xF)
  {
    v5 = sos_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(SOSStatus *)self isFlowActive];
    }

    goto LABEL_7;
  }

  v4 = 0x6ABEu >> flowState;
  return v4 & 1;
}

- (BOOL)isFlowActiveAndNotResting
{
  if (![(SOSStatus *)self isValid])
  {
LABEL_7:
    LOBYTE(v4) = 0;
    return v4 & 1;
  }

  flowState = [(SOSStatus *)self flowState];
  if (flowState >= 0xF)
  {
    v5 = sos_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(SOSStatus *)self isFlowActiveAndNotResting];
    }

    goto LABEL_7;
  }

  v4 = 0x40BEu >> flowState;
  return v4 & 1;
}

- (BOOL)isPreCall
{
  if (![(SOSStatus *)self isValid])
  {
LABEL_7:
    LOBYTE(v4) = 0;
    return v4 & 1;
  }

  flowState = [(SOSStatus *)self flowState];
  if (flowState >= 0xF)
  {
    v5 = sos_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(SOSStatus *)self isPreCall];
    }

    goto LABEL_7;
  }

  v4 = 0x4006u >> flowState;
  return v4 & 1;
}

- (BOOL)shouldRejectNewSOSTriggers
{
  if (![(SOSStatus *)self isValid]|| +[SOSUtilities shouldAllowSOSStatusReset])
  {
LABEL_8:
    LOBYTE(v4) = 0;
    return v4 & 1;
  }

  flowState = [(SOSStatus *)self flowState];
  if (flowState >= 0xF)
  {
    v5 = sos_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(SOSStatus *)self shouldRejectNewSOSTriggers];
    }

    goto LABEL_8;
  }

  v4 = 0x401Eu >> flowState;
  return v4 & 1;
}

- (BOOL)shouldRetriggerSOS
{
  if (![(SOSStatus *)self isValid]|| +[SOSUtilities shouldAllowSOSStatusReset]|| [(SOSStatus *)self trigger]!= 5 && [(SOSStatus *)self trigger]!= 7)
  {
    goto LABEL_11;
  }

  timeOfDetection = [(SOSStatus *)self timeOfDetection];
  [timeOfDetection timeIntervalSince1970];
  v5 = v4 + 60.0;
  v6 = [MEMORY[0x277CBEAA8] now];
  [v6 timeIntervalSince1970];
  v8 = v7;

  if (v5 < v8)
  {
LABEL_11:
    LOBYTE(v10) = 0;
    return v10 & 1;
  }

  flowState = [(SOSStatus *)self flowState];
  if (flowState >= 0xF)
  {
    v11 = sos_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(SOSStatus *)self shouldRetriggerSOS];
    }

    goto LABEL_11;
  }

  v10 = 0x4006u >> flowState;
  return v10 & 1;
}

- (void)encodeWithCoder:(id)coder
{
  uuid = self->_uuid;
  coderCopy = coder;
  [coderCopy encodeObject:uuid forKey:@"kSOSStatusUUID"];
  [coderCopy encodeInteger:self->_trigger forKey:@"kSOSStatusTrigger"];
  [(NSDate *)self->_timeOfDetection timeIntervalSinceReferenceDate];
  [coderCopy encodeDouble:@"kSOSStatusDetectionDate" forKey:?];
  [(NSDate *)self->_timeOfResolution timeIntervalSinceReferenceDate];
  [coderCopy encodeDouble:@"kSOSStatusResolutionDate" forKey:?];
  [coderCopy encodeInteger:self->_resolution forKey:@"kSOSStatusResolution"];
  [coderCopy encodeInteger:self->_flowState forKey:@"kSOSStatusFlowState"];
  [coderCopy encodeBool:self->_isPairedDeviceStatus forKey:@"kSOSStatusIsPairedDeviceStatus"];
}

- (SOSStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = SOSStatus;
  v5 = [(SOSStatus *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"kSOSStatusUUID"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v5->_trigger = [coderCopy decodeIntegerForKey:@"kSOSStatusTrigger"];
    v8 = objc_alloc(MEMORY[0x277CBEAA8]);
    [coderCopy decodeDoubleForKey:@"kSOSStatusDetectionDate"];
    v9 = [v8 initWithTimeIntervalSinceReferenceDate:?];
    timeOfDetection = v5->_timeOfDetection;
    v5->_timeOfDetection = v9;

    v11 = objc_alloc(MEMORY[0x277CBEAA8]);
    [coderCopy decodeDoubleForKey:@"kSOSStatusResolutionDate"];
    v12 = [v11 initWithTimeIntervalSinceReferenceDate:?];
    timeOfResolution = v5->_timeOfResolution;
    v5->_timeOfResolution = v12;

    v5->_resolution = [coderCopy decodeIntegerForKey:@"kSOSStatusResolution"];
    v5->_flowState = [coderCopy decodeIntegerForKey:@"kSOSStatusFlowState"];
    v5->_isPairedDeviceStatus = [coderCopy decodeBoolForKey:@"kSOSStatusIsPairedDeviceStatus"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  LOBYTE(v6) = self->_isPairedDeviceStatus;
  return [v4 initWithUUID:self->_uuid trigger:self->_trigger timeOfDetection:self->_timeOfDetection timeOfResolution:self->_timeOfResolution resolution:self->_resolution flowState:self->_flowState isPairedDeviceStatus:v6];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  uuid = [(SOSStatus *)self uuid];
  trigger = [(SOSStatus *)self trigger];
  timeOfDetection = [(SOSStatus *)self timeOfDetection];
  timeOfResolution = [(SOSStatus *)self timeOfResolution];
  resolution = [(SOSStatus *)self resolution];
  v9 = sosFlowStateDescription([(SOSStatus *)self flowState]);
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[SOSStatus isPairedDeviceStatus](self, "isPairedDeviceStatus")}];
  v11 = [v3 stringWithFormat:@"SOSStatus - uuid: %@ trigger: %d, detectedAt: %@, resolvedAt: %@, resolution: %d, sosFlowState: %@, isPairedDeviceStatus: %@", uuid, trigger, timeOfDetection, timeOfResolution, resolution, v9, v10];

  return v11;
}

- (void)isFlowActive
{
  v9 = *MEMORY[0x277D85DE8];
  [self flowState];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_5(&dword_264323000, v1, v2, "SOSStatus,isFlowActive,unexpected SOSFlowState %d", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)isFlowActiveAndNotResting
{
  v9 = *MEMORY[0x277D85DE8];
  [self flowState];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_5(&dword_264323000, v1, v2, "SOSStatus,isFlowActiveAndNotResting,unexpected SOSFlowState %d", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)isPreCall
{
  v9 = *MEMORY[0x277D85DE8];
  [self flowState];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_5(&dword_264323000, v1, v2, "SOSStatus,isPreCall,unexpected SOSFlowState %d", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)shouldBlockNonEmergencyCalls
{
  v9 = *MEMORY[0x277D85DE8];
  [self flowState];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_5(&dword_264323000, v1, v2, "SOSStatus,shouldBlockNonEmergencyCalls,unexpected SOSFlowState %d", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)shouldRejectNewSOSTriggers
{
  v9 = *MEMORY[0x277D85DE8];
  [self flowState];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_5(&dword_264323000, v1, v2, "SOSStatus,shouldRejectNewSOSTriggers,unexpected SOSFlowState %d", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)shouldRetriggerSOS
{
  v9 = *MEMORY[0x277D85DE8];
  [self flowState];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_5(&dword_264323000, v1, v2, "SOSStatus,shouldRetriggerSOS,unexpected SOSFlowState %d", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

@end