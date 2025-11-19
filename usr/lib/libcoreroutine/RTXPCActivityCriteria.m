@interface RTXPCActivityCriteria
+ (const)convertNetworkTransferDirection:(unint64_t)a3;
+ (const)convertPriority:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (RTXPCActivityCriteria)initWithInterval:(double)a3 gracePeriod:(double)a4 priority:(unint64_t)a5 requireNetworkConnectivity:(BOOL)a6 requireInexpensiveNetworkConnectivity:(BOOL)a7 networkTransferDirection:(unint64_t)a8 allowBattery:(BOOL)a9 powerNap:(BOOL)a10 delay:(double)a11;
- (RTXPCActivityCriteria)initWithInterval:(double)a3 gracePeriod:(double)a4 priority:(unint64_t)a5 requireNetworkConnectivity:(BOOL)a6 requireInexpensiveNetworkConnectivity:(BOOL)a7 networkTransferDirection:(unint64_t)a8 allowBattery:(BOOL)a9 powerNap:(BOOL)a10 delay:(double)a11 requiresClassA:(BOOL)a12;
- (RTXPCActivityCriteria)initWithInterval:(double)a3 gracePeriod:(double)a4 priority:(unint64_t)a5 requireNetworkConnectivity:(BOOL)a6 requireInexpensiveNetworkConnectivity:(BOOL)a7 networkTransferDirection:(unint64_t)a8 allowBattery:(BOOL)a9 powerNap:(BOOL)a10 delay:(double)a11 requiresClassB:(BOOL)a12;
- (RTXPCActivityCriteria)initWithInterval:(double)a3 gracePeriod:(double)a4 priority:(unint64_t)a5 requireNetworkConnectivity:(BOOL)a6 requireInexpensiveNetworkConnectivity:(BOOL)a7 networkTransferUploadSize:(unint64_t)a8 networkTransferDownloadSize:(unint64_t)a9 allowBattery:(BOOL)a10 powerNap:(BOOL)a11 delay:(double)a12 requireBatteryLevel:(id)a13;
- (RTXPCActivityCriteria)initWithInterval:(double)a3 gracePeriod:(double)a4 priority:(unint64_t)a5 requireNetworkConnectivity:(BOOL)a6 requireInexpensiveNetworkConnectivity:(BOOL)a7 networkTransferUploadSize:(unint64_t)a8 networkTransferDownloadSize:(unint64_t)a9 allowBattery:(BOOL)a10 powerNap:(BOOL)a11 delay:(double)a12 requireBatteryLevel:(id)a13 requiresClassB:(BOOL)a14 requiresClassA:(BOOL)a15;
- (id)description;
@end

@implementation RTXPCActivityCriteria

+ (const)convertPriority:(unint64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if (a3 == 2)
    {
      v4 = MEMORY[0x277D86350];
      return *v4;
    }

    if (a3 == 1)
    {
      v4 = MEMORY[0x277D86348];
      return *v4;
    }

    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 134218498;
      v8 = a3;
      v9 = 2080;
      v10 = "+[RTXPCActivityCriteria convertPriority:]";
      v11 = 1024;
      v12 = 81;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "unsupported priority, %lu (in %s:%d)", &v7, 0x1Cu);
    }
  }

  return 0;
}

+ (const)convertNetworkTransferDirection:(unint64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3 > 1)
  {
    if (a3 == 3)
    {
      v4 = MEMORY[0x277D862F0];
      return *v4;
    }

    if (a3 == 2)
    {
      v4 = MEMORY[0x277D862E8];
      return *v4;
    }

    goto LABEL_8;
  }

  if (!a3)
  {
    return 0;
  }

  if (a3 != 1)
  {
LABEL_8:
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 134218498;
      v8 = a3;
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

- (RTXPCActivityCriteria)initWithInterval:(double)a3 gracePeriod:(double)a4 priority:(unint64_t)a5 requireNetworkConnectivity:(BOOL)a6 requireInexpensiveNetworkConnectivity:(BOOL)a7 networkTransferDirection:(unint64_t)a8 allowBattery:(BOOL)a9 powerNap:(BOOL)a10 delay:(double)a11
{
  v13 = a9;
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v29 = *MEMORY[0x277D85DE8];
  if (a8 >= 4)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityXPCActivity);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      v28 = v14;
      _os_log_fault_impl(&dword_2304B3000, v23, OS_LOG_TYPE_FAULT, "receive unexpected network transfer direction when initializing criteria, %d", buf, 8u);
    }

    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = qword_230AFE4C0[a8];
    v22 = qword_230AFE4E0[a8];
  }

  LOWORD(v26) = 0;
  LOBYTE(v25) = a10;
  return [(RTXPCActivityCriteria *)self initWithInterval:a5 gracePeriod:v16 priority:v15 requireNetworkConnectivity:v22 requireInexpensiveNetworkConnectivity:v21 networkTransferUploadSize:v13 networkTransferDownloadSize:a3 allowBattery:a4 powerNap:a11 delay:v25 requireBatteryLevel:0 requiresClassB:v26 requiresClassA:?];
}

- (RTXPCActivityCriteria)initWithInterval:(double)a3 gracePeriod:(double)a4 priority:(unint64_t)a5 requireNetworkConnectivity:(BOOL)a6 requireInexpensiveNetworkConnectivity:(BOOL)a7 networkTransferDirection:(unint64_t)a8 allowBattery:(BOOL)a9 powerNap:(BOOL)a10 delay:(double)a11 requiresClassA:(BOOL)a12
{
  v14 = a9;
  v15 = a8;
  v16 = a7;
  v17 = a6;
  v30 = *MEMORY[0x277D85DE8];
  if (a8 >= 4)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityXPCActivity);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      v29 = v15;
      _os_log_fault_impl(&dword_2304B3000, v24, OS_LOG_TYPE_FAULT, "receive unexpected network transfer direction when initializing criteria, %d", buf, 8u);
    }

    v22 = 0;
    v23 = 0;
  }

  else
  {
    v22 = qword_230AFE4C0[a8];
    v23 = qword_230AFE4E0[a8];
  }

  BYTE1(v27) = a12;
  LOBYTE(v27) = 0;
  LOBYTE(v26) = a10;
  return [(RTXPCActivityCriteria *)self initWithInterval:a5 gracePeriod:v17 priority:v16 requireNetworkConnectivity:v23 requireInexpensiveNetworkConnectivity:v22 networkTransferUploadSize:v14 networkTransferDownloadSize:a3 allowBattery:a4 powerNap:a11 delay:v26 requireBatteryLevel:0 requiresClassB:v27 requiresClassA:?];
}

- (RTXPCActivityCriteria)initWithInterval:(double)a3 gracePeriod:(double)a4 priority:(unint64_t)a5 requireNetworkConnectivity:(BOOL)a6 requireInexpensiveNetworkConnectivity:(BOOL)a7 networkTransferDirection:(unint64_t)a8 allowBattery:(BOOL)a9 powerNap:(BOOL)a10 delay:(double)a11 requiresClassB:(BOOL)a12
{
  v14 = a9;
  v15 = a8;
  v16 = a7;
  v17 = a6;
  v30 = *MEMORY[0x277D85DE8];
  if (a8 >= 4)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityXPCActivity);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      v29 = v15;
      _os_log_fault_impl(&dword_2304B3000, v24, OS_LOG_TYPE_FAULT, "receive unexpected network transfer direction when initializing criteria, %d", buf, 8u);
    }

    v22 = 0;
    v23 = 0;
  }

  else
  {
    v22 = qword_230AFE4C0[a8];
    v23 = qword_230AFE4E0[a8];
  }

  LOWORD(v27) = a12;
  LOBYTE(v26) = a10;
  return [(RTXPCActivityCriteria *)self initWithInterval:a5 gracePeriod:v17 priority:v16 requireNetworkConnectivity:v23 requireInexpensiveNetworkConnectivity:v22 networkTransferUploadSize:v14 networkTransferDownloadSize:a3 allowBattery:a4 powerNap:a11 delay:v26 requireBatteryLevel:0 requiresClassB:v27 requiresClassA:?];
}

- (RTXPCActivityCriteria)initWithInterval:(double)a3 gracePeriod:(double)a4 priority:(unint64_t)a5 requireNetworkConnectivity:(BOOL)a6 requireInexpensiveNetworkConnectivity:(BOOL)a7 networkTransferUploadSize:(unint64_t)a8 networkTransferDownloadSize:(unint64_t)a9 allowBattery:(BOOL)a10 powerNap:(BOOL)a11 delay:(double)a12 requireBatteryLevel:(id)a13
{
  LOWORD(v15) = 0;
  LOBYTE(v14) = a11;
  return [(RTXPCActivityCriteria *)self initWithInterval:a5 gracePeriod:a6 priority:a7 requireNetworkConnectivity:a8 requireInexpensiveNetworkConnectivity:a9 networkTransferUploadSize:a10 networkTransferDownloadSize:a3 allowBattery:a4 powerNap:a12 delay:v14 requireBatteryLevel:a13 requiresClassB:v15 requiresClassA:?];
}

- (RTXPCActivityCriteria)initWithInterval:(double)a3 gracePeriod:(double)a4 priority:(unint64_t)a5 requireNetworkConnectivity:(BOOL)a6 requireInexpensiveNetworkConnectivity:(BOOL)a7 networkTransferUploadSize:(unint64_t)a8 networkTransferDownloadSize:(unint64_t)a9 allowBattery:(BOOL)a10 powerNap:(BOOL)a11 delay:(double)a12 requireBatteryLevel:(id)a13 requiresClassB:(BOOL)a14 requiresClassA:(BOOL)a15
{
  v25 = a13;
  if (a3 < 0.0)
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

  if (a4 < 0.0)
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v27 = "Invalid parameter not satisfying: gracePeriod >= 0";
      goto LABEL_10;
    }

LABEL_11:

    v28 = 0;
    goto LABEL_12;
  }

  if (a12 < 0.0)
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
    *(v30 + 3) = a3;
    *(v30 + 4) = a12;
    *(v30 + 5) = a4;
    *(v30 + 6) = a5;
    v30[8] = a6;
    v30[9] = a7;
    *(v30 + 8) = a8;
    *(v30 + 9) = a9;
    v30[10] = a10;
    v30[11] = a11;
    *(v30 + 11) = 0x7FF8000000000000;
    *(v30 + 14) = 0;
    objc_storeStrong(v30 + 10, a13);
    v31[12] = a14;
    v31[13] = a15;
  }

  self = v31;
  v28 = self;
LABEL_12:

  return v28;
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

  v19 = [(RTXPCActivityCriteria *)self networkTransferUploadSize];
  v20 = [(RTXPCActivityCriteria *)self networkTransferDownloadSize];
  v21 = [(RTXPCActivityCriteria *)self requireBatteryLevel];
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

  v24 = [v33 stringWithFormat:@"interval, %.2f, delay, %.2f, gracePeriod, %.2f, priority, %s, requireNetworkConnectivity, %@, requireInexpensiveNetworkConnectivity, %@, networkTransferDirection, %s, allowBattery, %@, powerNap, %@, expectedDuration, %.2f, cpuIntensive, %@, userRequestedBackgroundTask, %@, postInstall, %@, requiresBuddyComplete, %@, uploadSize, %d, downloadSize, %d, requireBatteryLevel, %@, requiresClassB, %@, requiresClassA, %@", v4, v6, v8, v32, v31, v30, v29, v28, v27, v14, v26, v16, v17, v18, v19, v20, v21, v22, v23];

  return v24;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  [(RTXPCActivityCriteria *)self interval];
  v6 = v5;
  [v4 interval];
  if (v6 == v7 && (-[RTXPCActivityCriteria delay](self, "delay"), v9 = v8, [v4 delay], v9 == v10) && (-[RTXPCActivityCriteria gracePeriod](self, "gracePeriod"), v12 = v11, objc_msgSend(v4, "gracePeriod"), v12 == v13) && (v14 = -[RTXPCActivityCriteria priority](self, "priority"), v14 == objc_msgSend(v4, "priority")) && (v15 = -[RTXPCActivityCriteria requireNetworkConnectivity](self, "requireNetworkConnectivity"), v15 == objc_msgSend(v4, "requireNetworkConnectivity")) && (v16 = -[RTXPCActivityCriteria requireInexpensiveNetworkConnectivity](self, "requireInexpensiveNetworkConnectivity"), v16 == objc_msgSend(v4, "requireInexpensiveNetworkConnectivity")) && (v17 = -[RTXPCActivityCriteria networkTransferDirection](self, "networkTransferDirection"), v17 == objc_msgSend(v4, "networkTransferDirection")) && (v18 = -[RTXPCActivityCriteria allowBattery](self, "allowBattery"), v18 == objc_msgSend(v4, "allowBattery")) && (v19 = -[RTXPCActivityCriteria powerNap](self, "powerNap"), v19 == objc_msgSend(v4, "powerNap")) && (-[RTXPCActivityCriteria expectedDuration](self, "expectedDuration"), v21 = v20, objc_msgSend(v4, "expectedDuration"), v21 == v22) && (v23 = -[RTXPCActivityCriteria cpuIntensive](self, "cpuIntensive"), v23 == objc_msgSend(v4, "cpuIntensive")) && (v24 = -[RTXPCActivityCriteria userRequestedBackgroundTask](self, "userRequestedBackgroundTask"), v24 == objc_msgSend(v4, "userRequestedBackgroundTask")) && (v25 = -[RTXPCActivityCriteria postInstall](self, "postInstall"), v25 == objc_msgSend(v4, "postInstall")) && (v26 = -[RTXPCActivityCriteria requiresBuddyComplete](self, "requiresBuddyComplete"), v26 == objc_msgSend(v4, "requiresBuddyComplete")) && (v27 = -[RTXPCActivityCriteria networkTransferUploadSize](self, "networkTransferUploadSize"), v27 == objc_msgSend(v4, "networkTransferUploadSize")) && (v28 = -[RTXPCActivityCriteria networkTransferDownloadSize](self, "networkTransferDownloadSize"), v28 == objc_msgSend(v4, "networkTransferDownloadSize")))
  {
    v29 = [(RTXPCActivityCriteria *)self requireBatteryLevel];
    v30 = [v4 requireBatteryLevel];
    v31 = v29 == v30;
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

@end