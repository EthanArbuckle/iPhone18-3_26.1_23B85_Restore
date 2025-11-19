@interface SOSStatus
- (BOOL)isFlowActive;
- (BOOL)isFlowActiveAndNotResting;
- (BOOL)isPreCall;
- (BOOL)isValid;
- (BOOL)shouldBlockNonEmergencyCalls;
- (BOOL)shouldRejectNewSOSTriggers;
- (BOOL)shouldRetriggerSOS;
- (SOSStatus)initWithCoder:(id)a3;
- (SOSStatus)initWithUUID:(id)a3 trigger:(int64_t)a4 timeOfDetection:(id)a5;
- (SOSStatus)initWithUUID:(id)a3 trigger:(int64_t)a4 timeOfDetection:(id)a5 timeOfResolution:(id)a6 resolution:(int64_t)a7;
- (SOSStatus)initWithUUID:(id)a3 trigger:(int64_t)a4 timeOfDetection:(id)a5 timeOfResolution:(id)a6 resolution:(int64_t)a7 flowState:(int64_t)a8 isPairedDeviceStatus:(BOOL)a9;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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
  v3 = [(SOSStatus *)self uuid];

  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = [(SOSStatus *)self trigger];
  if (v4)
  {
    v5 = [(SOSStatus *)self timeOfDetection];
    if (!v5)
    {
      goto LABEL_5;
    }

    v6 = v5;
    v7 = [(SOSStatus *)self timeOfDetection];
    [v7 timeIntervalSince1970];
    v9 = v8;
    v10 = [MEMORY[0x277CBEAA8] now];
    [v10 timeIntervalSince1970];
    v12 = v11 + 60.0;

    if (v9 > v12)
    {
LABEL_5:
      LOBYTE(v4) = 0;
      return v4;
    }

    LOBYTE(v4) = 1;
  }

  return v4;
}

- (BOOL)shouldBlockNonEmergencyCalls
{
  if (![(SOSStatus *)self isValid])
  {
    goto LABEL_9;
  }

  v3 = [(SOSStatus *)self trigger];
  if (v3 >= 0xA)
  {
    v13 = sos_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(SOSStatus *)self shouldBlockNonEmergencyCalls];
    }

    goto LABEL_8;
  }

  v4 = dbl_264360708[v3];
  v5 = [(SOSStatus *)self timeOfDetection];
  [v5 timeIntervalSince1970];
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

  v11 = [(SOSStatus *)self flowState];
  if (v11 >= 0xF)
  {
    v13 = sos_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(SOSStatus *)self shouldBlockNonEmergencyCalls];
    }

LABEL_8:

    goto LABEL_9;
  }

  v12 = 0x4006u >> v11;
  return v12 & 1;
}

- (SOSStatus)initWithUUID:(id)a3 trigger:(int64_t)a4 timeOfDetection:(id)a5 timeOfResolution:(id)a6 resolution:(int64_t)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v19.receiver = self;
  v19.super_class = SOSStatus;
  v16 = [(SOSStatus *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_uuid, a3);
    v17->_trigger = a4;
    objc_storeStrong(&v17->_timeOfDetection, a5);
    objc_storeStrong(&v17->_timeOfResolution, a6);
    v17->_resolution = a7;
    v17->_flowState = 0;
    v17->_isPairedDeviceStatus = 0;
  }

  return v17;
}

- (SOSStatus)initWithUUID:(id)a3 trigger:(int64_t)a4 timeOfDetection:(id)a5
{
  v9 = a3;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = SOSStatus;
  v11 = [(SOSStatus *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_uuid, a3);
    v12->_trigger = a4;
    objc_storeStrong(&v12->_timeOfDetection, a5);
    timeOfResolution = v12->_timeOfResolution;
    v12->_timeOfResolution = 0;

    v12->_isPairedDeviceStatus = 0;
    v12->_resolution = 0;
    v12->_flowState = 0;
  }

  return v12;
}

- (SOSStatus)initWithUUID:(id)a3 trigger:(int64_t)a4 timeOfDetection:(id)a5 timeOfResolution:(id)a6 resolution:(int64_t)a7 flowState:(int64_t)a8 isPairedDeviceStatus:(BOOL)a9
{
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v22.receiver = self;
  v22.super_class = SOSStatus;
  v19 = [(SOSStatus *)&v22 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_uuid, a3);
    v20->_trigger = a4;
    objc_storeStrong(&v20->_timeOfDetection, a5);
    objc_storeStrong(&v20->_timeOfResolution, a6);
    v20->_resolution = a7;
    v20->_flowState = a8;
    v20->_isPairedDeviceStatus = a9;
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

  v3 = [(SOSStatus *)self flowState];
  if (v3 >= 0xF)
  {
    v5 = sos_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(SOSStatus *)self isFlowActive];
    }

    goto LABEL_7;
  }

  v4 = 0x6ABEu >> v3;
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

  v3 = [(SOSStatus *)self flowState];
  if (v3 >= 0xF)
  {
    v5 = sos_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(SOSStatus *)self isFlowActiveAndNotResting];
    }

    goto LABEL_7;
  }

  v4 = 0x40BEu >> v3;
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

  v3 = [(SOSStatus *)self flowState];
  if (v3 >= 0xF)
  {
    v5 = sos_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(SOSStatus *)self isPreCall];
    }

    goto LABEL_7;
  }

  v4 = 0x4006u >> v3;
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

  v3 = [(SOSStatus *)self flowState];
  if (v3 >= 0xF)
  {
    v5 = sos_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(SOSStatus *)self shouldRejectNewSOSTriggers];
    }

    goto LABEL_8;
  }

  v4 = 0x401Eu >> v3;
  return v4 & 1;
}

- (BOOL)shouldRetriggerSOS
{
  if (![(SOSStatus *)self isValid]|| +[SOSUtilities shouldAllowSOSStatusReset]|| [(SOSStatus *)self trigger]!= 5 && [(SOSStatus *)self trigger]!= 7)
  {
    goto LABEL_11;
  }

  v3 = [(SOSStatus *)self timeOfDetection];
  [v3 timeIntervalSince1970];
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

  v9 = [(SOSStatus *)self flowState];
  if (v9 >= 0xF)
  {
    v11 = sos_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(SOSStatus *)self shouldRetriggerSOS];
    }

    goto LABEL_11;
  }

  v10 = 0x4006u >> v9;
  return v10 & 1;
}

- (void)encodeWithCoder:(id)a3
{
  uuid = self->_uuid;
  v5 = a3;
  [v5 encodeObject:uuid forKey:@"kSOSStatusUUID"];
  [v5 encodeInteger:self->_trigger forKey:@"kSOSStatusTrigger"];
  [(NSDate *)self->_timeOfDetection timeIntervalSinceReferenceDate];
  [v5 encodeDouble:@"kSOSStatusDetectionDate" forKey:?];
  [(NSDate *)self->_timeOfResolution timeIntervalSinceReferenceDate];
  [v5 encodeDouble:@"kSOSStatusResolutionDate" forKey:?];
  [v5 encodeInteger:self->_resolution forKey:@"kSOSStatusResolution"];
  [v5 encodeInteger:self->_flowState forKey:@"kSOSStatusFlowState"];
  [v5 encodeBool:self->_isPairedDeviceStatus forKey:@"kSOSStatusIsPairedDeviceStatus"];
}

- (SOSStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SOSStatus;
  v5 = [(SOSStatus *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"kSOSStatusUUID"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v5->_trigger = [v4 decodeIntegerForKey:@"kSOSStatusTrigger"];
    v8 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v4 decodeDoubleForKey:@"kSOSStatusDetectionDate"];
    v9 = [v8 initWithTimeIntervalSinceReferenceDate:?];
    timeOfDetection = v5->_timeOfDetection;
    v5->_timeOfDetection = v9;

    v11 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v4 decodeDoubleForKey:@"kSOSStatusResolutionDate"];
    v12 = [v11 initWithTimeIntervalSinceReferenceDate:?];
    timeOfResolution = v5->_timeOfResolution;
    v5->_timeOfResolution = v12;

    v5->_resolution = [v4 decodeIntegerForKey:@"kSOSStatusResolution"];
    v5->_flowState = [v4 decodeIntegerForKey:@"kSOSStatusFlowState"];
    v5->_isPairedDeviceStatus = [v4 decodeBoolForKey:@"kSOSStatusIsPairedDeviceStatus"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  LOBYTE(v6) = self->_isPairedDeviceStatus;
  return [v4 initWithUUID:self->_uuid trigger:self->_trigger timeOfDetection:self->_timeOfDetection timeOfResolution:self->_timeOfResolution resolution:self->_resolution flowState:self->_flowState isPairedDeviceStatus:v6];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SOSStatus *)self uuid];
  v5 = [(SOSStatus *)self trigger];
  v6 = [(SOSStatus *)self timeOfDetection];
  v7 = [(SOSStatus *)self timeOfResolution];
  v8 = [(SOSStatus *)self resolution];
  v9 = sosFlowStateDescription([(SOSStatus *)self flowState]);
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[SOSStatus isPairedDeviceStatus](self, "isPairedDeviceStatus")}];
  v11 = [v3 stringWithFormat:@"SOSStatus - uuid: %@ trigger: %d, detectedAt: %@, resolvedAt: %@, resolution: %d, sosFlowState: %@, isPairedDeviceStatus: %@", v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (void)isFlowActive
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 flowState];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_5(&dword_264323000, v1, v2, "SOSStatus,isFlowActive,unexpected SOSFlowState %d", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)isFlowActiveAndNotResting
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 flowState];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_5(&dword_264323000, v1, v2, "SOSStatus,isFlowActiveAndNotResting,unexpected SOSFlowState %d", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)isPreCall
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 flowState];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_5(&dword_264323000, v1, v2, "SOSStatus,isPreCall,unexpected SOSFlowState %d", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)shouldBlockNonEmergencyCalls
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 flowState];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_5(&dword_264323000, v1, v2, "SOSStatus,shouldBlockNonEmergencyCalls,unexpected SOSFlowState %d", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)shouldRejectNewSOSTriggers
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 flowState];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_5(&dword_264323000, v1, v2, "SOSStatus,shouldRejectNewSOSTriggers,unexpected SOSFlowState %d", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)shouldRetriggerSOS
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 flowState];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_5(&dword_264323000, v1, v2, "SOSStatus,shouldRetriggerSOS,unexpected SOSFlowState %d", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

@end