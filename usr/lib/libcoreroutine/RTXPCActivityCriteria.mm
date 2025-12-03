@interface RTXPCActivityCriteria
+ (const)convertNetworkTransferDirection:(unint64_t)direction;
+ (const)convertPriority:(unint64_t)priority;
- (BOOL)isEqual:(id)equal;
- (RTXPCActivityCriteria)initWithInterval:(double)interval gracePeriod:(double)period priority:(unint64_t)priority requireNetworkConnectivity:(BOOL)connectivity requireInexpensiveNetworkConnectivity:(BOOL)networkConnectivity networkTransferDirection:(unint64_t)direction allowBattery:(BOOL)battery powerNap:(BOOL)self0 delay:(double)self1;
- (RTXPCActivityCriteria)initWithInterval:(double)interval gracePeriod:(double)period priority:(unint64_t)priority requireNetworkConnectivity:(BOOL)connectivity requireInexpensiveNetworkConnectivity:(BOOL)networkConnectivity networkTransferDirection:(unint64_t)direction allowBattery:(BOOL)battery powerNap:(BOOL)self0 delay:(double)self1 requiresClassA:(BOOL)self2;
- (RTXPCActivityCriteria)initWithInterval:(double)interval gracePeriod:(double)period priority:(unint64_t)priority requireNetworkConnectivity:(BOOL)connectivity requireInexpensiveNetworkConnectivity:(BOOL)networkConnectivity networkTransferDirection:(unint64_t)direction allowBattery:(BOOL)battery powerNap:(BOOL)self0 delay:(double)self1 requiresClassB:(BOOL)self2;
- (RTXPCActivityCriteria)initWithInterval:(double)interval gracePeriod:(double)period priority:(unint64_t)priority requireNetworkConnectivity:(BOOL)connectivity requireInexpensiveNetworkConnectivity:(BOOL)networkConnectivity networkTransferUploadSize:(unint64_t)size networkTransferDownloadSize:(unint64_t)downloadSize allowBattery:(BOOL)self0 powerNap:(BOOL)self1 delay:(double)self2 requireBatteryLevel:(id)self3;
- (RTXPCActivityCriteria)initWithInterval:(double)interval gracePeriod:(double)period priority:(unint64_t)priority requireNetworkConnectivity:(BOOL)connectivity requireInexpensiveNetworkConnectivity:(BOOL)networkConnectivity networkTransferUploadSize:(unint64_t)size networkTransferDownloadSize:(unint64_t)downloadSize allowBattery:(BOOL)self0 powerNap:(BOOL)self1 delay:(double)self2 requireBatteryLevel:(id)self3 requiresClassB:(BOOL)self4 requiresClassA:(BOOL)self5;
- (id)description;
@end

@implementation RTXPCActivityCriteria

+ (const)convertPriority:(unint64_t)priority
{
  v13 = *MEMORY[0x277D85DE8];
  if (priority)
  {
    if (priority == 2)
    {
      v4 = MEMORY[0x277D86350];
      return *v4;
    }

    if (priority == 1)
    {
      v4 = MEMORY[0x277D86348];
      return *v4;
    }

    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 134218498;
      priorityCopy = priority;
      v9 = 2080;
      v10 = "+[RTXPCActivityCriteria convertPriority:]";
      v11 = 1024;
      v12 = 81;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "unsupported priority, %lu (in %s:%d)", &v7, 0x1Cu);
    }
  }

  return 0;
}

+ (const)convertNetworkTransferDirection:(unint64_t)direction
{
  v13 = *MEMORY[0x277D85DE8];
  if (direction > 1)
  {
    if (direction == 3)
    {
      v4 = MEMORY[0x277D862F0];
      return *v4;
    }

    if (direction == 2)
    {
      v4 = MEMORY[0x277D862E8];
      return *v4;
    }

    goto LABEL_8;
  }

  if (!direction)
  {
    return 0;
  }

  if (direction != 1)
  {
LABEL_8:
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 134218498;
      directionCopy = direction;
      v9 = 2080;
      v10 = "+[RTXPCActivityCriteria convertNetworkTransferDirection:]";
      v11 = 1024;
      v12 = 101;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "unsupported network transfer direction, %lu (in %s:%d)", &v7, 0x1Cu);
    }

    return 0;
  }

  v4 = MEMORY[0x277D86320];
  return *v4;
}

- (RTXPCActivityCriteria)initWithInterval:(double)interval gracePeriod:(double)period priority:(unint64_t)priority requireNetworkConnectivity:(BOOL)connectivity requireInexpensiveNetworkConnectivity:(BOOL)networkConnectivity networkTransferDirection:(unint64_t)direction allowBattery:(BOOL)battery powerNap:(BOOL)self0 delay:(double)self1
{
  batteryCopy = battery;
  directionCopy = direction;
  networkConnectivityCopy = networkConnectivity;
  connectivityCopy = connectivity;
  v29 = *MEMORY[0x277D85DE8];
  if (direction >= 4)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityXPCActivity);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      v28 = directionCopy;
      _os_log_fault_impl(&dword_2304B3000, v23, OS_LOG_TYPE_FAULT, "receive unexpected network transfer direction when initializing criteria, %d", buf, 8u);
    }

    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = qword_230AFE4C0[direction];
    v22 = qword_230AFE4E0[direction];
  }

  LOWORD(v26) = 0;
  LOBYTE(v25) = nap;
  return [(RTXPCActivityCriteria *)self initWithInterval:priority gracePeriod:connectivityCopy priority:networkConnectivityCopy requireNetworkConnectivity:v22 requireInexpensiveNetworkConnectivity:v21 networkTransferUploadSize:batteryCopy networkTransferDownloadSize:interval allowBattery:period powerNap:delay delay:v25 requireBatteryLevel:0 requiresClassB:v26 requiresClassA:?];
}

- (RTXPCActivityCriteria)initWithInterval:(double)interval gracePeriod:(double)period priority:(unint64_t)priority requireNetworkConnectivity:(BOOL)connectivity requireInexpensiveNetworkConnectivity:(BOOL)networkConnectivity networkTransferDirection:(unint64_t)direction allowBattery:(BOOL)battery powerNap:(BOOL)self0 delay:(double)self1 requiresClassA:(BOOL)self2
{
  batteryCopy = battery;
  directionCopy = direction;
  networkConnectivityCopy = networkConnectivity;
  connectivityCopy = connectivity;
  v30 = *MEMORY[0x277D85DE8];
  if (direction >= 4)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityXPCActivity);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      v29 = directionCopy;
      _os_log_fault_impl(&dword_2304B3000, v24, OS_LOG_TYPE_FAULT, "receive unexpected network transfer direction when initializing criteria, %d", buf, 8u);
    }

    v22 = 0;
    v23 = 0;
  }

  else
  {
    v22 = qword_230AFE4C0[direction];
    v23 = qword_230AFE4E0[direction];
  }

  BYTE1(v27) = a;
  LOBYTE(v27) = 0;
  LOBYTE(v26) = nap;
  return [(RTXPCActivityCriteria *)self initWithInterval:priority gracePeriod:connectivityCopy priority:networkConnectivityCopy requireNetworkConnectivity:v23 requireInexpensiveNetworkConnectivity:v22 networkTransferUploadSize:batteryCopy networkTransferDownloadSize:interval allowBattery:period powerNap:delay delay:v26 requireBatteryLevel:0 requiresClassB:v27 requiresClassA:?];
}

- (RTXPCActivityCriteria)initWithInterval:(double)interval gracePeriod:(double)period priority:(unint64_t)priority requireNetworkConnectivity:(BOOL)connectivity requireInexpensiveNetworkConnectivity:(BOOL)networkConnectivity networkTransferDirection:(unint64_t)direction allowBattery:(BOOL)battery powerNap:(BOOL)self0 delay:(double)self1 requiresClassB:(BOOL)self2
{
  batteryCopy = battery;
  directionCopy = direction;
  networkConnectivityCopy = networkConnectivity;
  connectivityCopy = connectivity;
  v30 = *MEMORY[0x277D85DE8];
  if (direction >= 4)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityXPCActivity);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      v29 = directionCopy;
      _os_log_fault_impl(&dword_2304B3000, v24, OS_LOG_TYPE_FAULT, "receive unexpected network transfer direction when initializing criteria, %d", buf, 8u);
    }

    v22 = 0;
    v23 = 0;
  }

  else
  {
    v22 = qword_230AFE4C0[direction];
    v23 = qword_230AFE4E0[direction];
  }

  LOWORD(v27) = b;
  LOBYTE(v26) = nap;
  return [(RTXPCActivityCriteria *)self initWithInterval:priority gracePeriod:connectivityCopy priority:networkConnectivityCopy requireNetworkConnectivity:v23 requireInexpensiveNetworkConnectivity:v22 networkTransferUploadSize:batteryCopy networkTransferDownloadSize:interval allowBattery:period powerNap:delay delay:v26 requireBatteryLevel:0 requiresClassB:v27 requiresClassA:?];
}

- (RTXPCActivityCriteria)initWithInterval:(double)interval gracePeriod:(double)period priority:(unint64_t)priority requireNetworkConnectivity:(BOOL)connectivity requireInexpensiveNetworkConnectivity:(BOOL)networkConnectivity networkTransferUploadSize:(unint64_t)size networkTransferDownloadSize:(unint64_t)downloadSize allowBattery:(BOOL)self0 powerNap:(BOOL)self1 delay:(double)self2 requireBatteryLevel:(id)self3
{
  LOWORD(v15) = 0;
  LOBYTE(v14) = nap;
  return [(RTXPCActivityCriteria *)self initWithInterval:priority gracePeriod:connectivity priority:networkConnectivity requireNetworkConnectivity:size requireInexpensiveNetworkConnectivity:downloadSize networkTransferUploadSize:battery networkTransferDownloadSize:interval allowBattery:period powerNap:delay delay:v14 requireBatteryLevel:level requiresClassB:v15 requiresClassA:?];
}

- (RTXPCActivityCriteria)initWithInterval:(double)interval gracePeriod:(double)period priority:(unint64_t)priority requireNetworkConnectivity:(BOOL)connectivity requireInexpensiveNetworkConnectivity:(BOOL)networkConnectivity networkTransferUploadSize:(unint64_t)size networkTransferDownloadSize:(unint64_t)downloadSize allowBattery:(BOOL)self0 powerNap:(BOOL)self1 delay:(double)self2 requireBatteryLevel:(id)self3 requiresClassB:(BOOL)self4 requiresClassA:(BOOL)self5
{
  levelCopy = level;
  if (interval < 0.0)
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v27 = "Invalid parameter not satisfying: interval >= 0";
LABEL_10:
      _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, v27, buf, 2u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (period < 0.0)
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v27 = "Invalid parameter not satisfying: gracePeriod >= 0";
      goto LABEL_10;
    }

LABEL_11:

    selfCopy = 0;
    goto LABEL_12;
  }

  if (delay < 0.0)
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v27 = "Invalid parameter not satisfying: delay >= 0";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v32.receiver = self;
  v32.super_class = RTXPCActivityCriteria;
  v30 = [(RTXPCActivityCriteria *)&v32 init];
  v31 = v30;
  if (v30)
  {
    *(v30 + 3) = interval;
    *(v30 + 4) = delay;
    *(v30 + 5) = period;
    *(v30 + 6) = priority;
    v30[8] = connectivity;
    v30[9] = networkConnectivity;
    *(v30 + 8) = size;
    *(v30 + 9) = downloadSize;
    v30[10] = battery;
    v30[11] = nap;
    *(v30 + 11) = 0x7FF8000000000000;
    *(v30 + 14) = 0;
    objc_storeStrong(v30 + 10, level);
    v31[12] = b;
    v31[13] = a;
  }

  self = v31;
  selfCopy = self;
LABEL_12:

  return selfCopy;
}

- (id)description
{
  v33 = MEMORY[0x277CCACA8];
  [(RTXPCActivityCriteria *)self interval];
  v4 = v3;
  [(RTXPCActivityCriteria *)self delay];
  v6 = v5;
  [(RTXPCActivityCriteria *)self gracePeriod];
  v8 = v7;
  v32 = [objc_opt_class() convertPriority:{-[RTXPCActivityCriteria priority](self, "priority")}];
  if ([(RTXPCActivityCriteria *)self requireNetworkConnectivity])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v31 = v9;
  if ([(RTXPCActivityCriteria *)self requireInexpensiveNetworkConnectivity])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v30 = v10;
  v29 = [objc_opt_class() convertNetworkTransferDirection:{-[RTXPCActivityCriteria networkTransferDirection](self, "networkTransferDirection")}];
  if ([(RTXPCActivityCriteria *)self allowBattery])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v28 = v11;
  if ([(RTXPCActivityCriteria *)self powerNap])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v27 = v12;
  [(RTXPCActivityCriteria *)self expectedDuration];
  v14 = v13;
  if ([(RTXPCActivityCriteria *)self cpuIntensive])
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  v26 = v15;
  if ([(RTXPCActivityCriteria *)self userRequestedBackgroundTask])
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  if ([(RTXPCActivityCriteria *)self postInstall])
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  if ([(RTXPCActivityCriteria *)self requiresBuddyComplete])
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  networkTransferUploadSize = [(RTXPCActivityCriteria *)self networkTransferUploadSize];
  networkTransferDownloadSize = [(RTXPCActivityCriteria *)self networkTransferDownloadSize];
  requireBatteryLevel = [(RTXPCActivityCriteria *)self requireBatteryLevel];
  if ([(RTXPCActivityCriteria *)self requiresClassB])
  {
    v22 = @"YES";
  }

  else
  {
    v22 = @"NO";
  }

  if ([(RTXPCActivityCriteria *)self requiresClassA])
  {
    v23 = @"YES";
  }

  else
  {
    v23 = @"NO";
  }

  v24 = [v33 stringWithFormat:@"interval, %.2f, delay, %.2f, gracePeriod, %.2f, priority, %s, requireNetworkConnectivity, %@, requireInexpensiveNetworkConnectivity, %@, networkTransferDirection, %s, allowBattery, %@, powerNap, %@, expectedDuration, %.2f, cpuIntensive, %@, userRequestedBackgroundTask, %@, postInstall, %@, requiresBuddyComplete, %@, uploadSize, %d, downloadSize, %d, requireBatteryLevel, %@, requiresClassB, %@, requiresClassA, %@", v4, v6, v8, v32, v31, v30, v29, v28, v27, v14, v26, v16, v17, v18, networkTransferUploadSize, networkTransferDownloadSize, requireBatteryLevel, v22, v23];

  return v24;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  [(RTXPCActivityCriteria *)self interval];
  v6 = v5;
  [equalCopy interval];
  if (v6 == v7 && (-[RTXPCActivityCriteria delay](self, "delay"), v9 = v8, [equalCopy delay], v9 == v10) && (-[RTXPCActivityCriteria gracePeriod](self, "gracePeriod"), v12 = v11, objc_msgSend(equalCopy, "gracePeriod"), v12 == v13) && (v14 = -[RTXPCActivityCriteria priority](self, "priority"), v14 == objc_msgSend(equalCopy, "priority")) && (v15 = -[RTXPCActivityCriteria requireNetworkConnectivity](self, "requireNetworkConnectivity"), v15 == objc_msgSend(equalCopy, "requireNetworkConnectivity")) && (v16 = -[RTXPCActivityCriteria requireInexpensiveNetworkConnectivity](self, "requireInexpensiveNetworkConnectivity"), v16 == objc_msgSend(equalCopy, "requireInexpensiveNetworkConnectivity")) && (v17 = -[RTXPCActivityCriteria networkTransferDirection](self, "networkTransferDirection"), v17 == objc_msgSend(equalCopy, "networkTransferDirection")) && (v18 = -[RTXPCActivityCriteria allowBattery](self, "allowBattery"), v18 == objc_msgSend(equalCopy, "allowBattery")) && (v19 = -[RTXPCActivityCriteria powerNap](self, "powerNap"), v19 == objc_msgSend(equalCopy, "powerNap")) && (-[RTXPCActivityCriteria expectedDuration](self, "expectedDuration"), v21 = v20, objc_msgSend(equalCopy, "expectedDuration"), v21 == v22) && (v23 = -[RTXPCActivityCriteria cpuIntensive](self, "cpuIntensive"), v23 == objc_msgSend(equalCopy, "cpuIntensive")) && (v24 = -[RTXPCActivityCriteria userRequestedBackgroundTask](self, "userRequestedBackgroundTask"), v24 == objc_msgSend(equalCopy, "userRequestedBackgroundTask")) && (v25 = -[RTXPCActivityCriteria postInstall](self, "postInstall"), v25 == objc_msgSend(equalCopy, "postInstall")) && (v26 = -[RTXPCActivityCriteria requiresBuddyComplete](self, "requiresBuddyComplete"), v26 == objc_msgSend(equalCopy, "requiresBuddyComplete")) && (v27 = -[RTXPCActivityCriteria networkTransferUploadSize](self, "networkTransferUploadSize"), v27 == objc_msgSend(equalCopy, "networkTransferUploadSize")) && (v28 = -[RTXPCActivityCriteria networkTransferDownloadSize](self, "networkTransferDownloadSize"), v28 == objc_msgSend(equalCopy, "networkTransferDownloadSize")))
  {
    requireBatteryLevel = [(RTXPCActivityCriteria *)self requireBatteryLevel];
    requireBatteryLevel2 = [equalCopy requireBatteryLevel];
    v31 = requireBatteryLevel == requireBatteryLevel2;
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

@end