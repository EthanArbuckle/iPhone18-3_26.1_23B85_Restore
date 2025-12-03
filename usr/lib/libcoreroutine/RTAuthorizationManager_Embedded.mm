@interface RTAuthorizationManager_Embedded
- (BOOL)isLocationServicesEnabled;
- (RTAuthorizationManager_Embedded)initWithMetricManager:(id)manager platform:(id)platform userSessionMonitor:(id)monitor;
@end

@implementation RTAuthorizationManager_Embedded

- (BOOL)isLocationServicesEnabled
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBFC10] locationServicesEnabled:1];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityAuthorization);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = @"NO";
      if (v2)
      {
        v4 = @"YES";
      }

      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "Location services enabled, %@", &v6, 0xCu);
    }
  }

  return v2;
}

- (RTAuthorizationManager_Embedded)initWithMetricManager:(id)manager platform:(id)platform userSessionMonitor:(id)monitor
{
  v17 = *MEMORY[0x277D85DE8];
  platformCopy = platform;
  v14.receiver = self;
  v14.super_class = RTAuthorizationManager_Embedded;
  v8 = [(RTAuthorizationManager *)&v14 initWithPlatform:platformCopy userSessionMonitor:monitor];
  if (v8)
  {
    v9 = [platformCopy supportsCoreRoutineCapability] ? objc_msgSend(platformCopy, "supportsMultiUser") ^ 1 : 0;
    [(RTAuthorizationManager *)v8 setSupported:v9];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityAuthorization);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        isSupported = [(RTAuthorizationManager *)v8 isSupported];
        v12 = @"NO";
        if (isSupported)
        {
          v12 = @"YES";
        }

        *buf = 138412290;
        v16 = v12;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "CoreRoutine's services supported, %@", buf, 0xCu);
      }
    }
  }

  return v8;
}

@end