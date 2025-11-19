@interface RTTripClusterDeviceHelper
+ (id)currentDevicePredicateWithPropertyName:(id)a3 inManagedObjectContext:(id)a4;
+ (id)getDeviceHelperInstance;
- (RTTripClusterDeviceHelper)init;
- (RTTripClusterDeviceHelper)initWithDefaultsManager:(id)a3 platform:(id)a4;
@end

@implementation RTTripClusterDeviceHelper

+ (id)getDeviceHelperInstance
{
  v2 = deviceHelperInstance;
  if (!deviceHelperInstance)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___RTTripClusterDeviceHelper;
    v3 = [objc_msgSendSuper2(&v6 alloc)];
    v4 = deviceHelperInstance;
    deviceHelperInstance = v3;

    v2 = deviceHelperInstance;
  }

  return v2;
}

- (RTTripClusterDeviceHelper)initWithDefaultsManager:(id)a3 platform:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (self)
  {
    if (v8)
    {
      self->_currentDeviceOnly = 0;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v10 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = objc_opt_class();
          v12 = NSStringFromClass(v11);
          v13 = NSStringFromSelector(a2);
          v14 = v13;
          currentDeviceOnly = self->_currentDeviceOnly;
          v27 = 138412802;
          v28 = v12;
          if (currentDeviceOnly)
          {
            v16 = @"YES";
          }

          else
          {
            v16 = @"NO";
          }

          v29 = 2112;
          v30 = v13;
          v31 = 2112;
          v32 = v16;
          _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@,%@currentDeviceOnly,%@", &v27, 0x20u);
        }
      }
    }
  }

  if (self && v7)
  {
    v17 = [v7 objectForKey:@"RTDefaultsTripClusterCurrentDeviceOverride"];
    v18 = v17;
    if (v17)
    {
      self->_currentDeviceOnly = [v17 BOOLValue];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v19 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = objc_opt_class();
          v21 = NSStringFromClass(v20);
          v22 = NSStringFromSelector(a2);
          v23 = v22;
          v24 = self->_currentDeviceOnly;
          v27 = 138412802;
          v28 = v21;
          if (v24)
          {
            v25 = @"YES";
          }

          else
          {
            v25 = @"NO";
          }

          v29 = 2112;
          v30 = v22;
          v31 = 2112;
          v32 = v25;
          _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "%@,%@override,currentDeviceOnly,%@", &v27, 0x20u);
        }
      }
    }
  }

  return result;
}

+ (id)currentDevicePredicateWithPropertyName:(id)a3 inManagedObjectContext:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    v10 = [a1 getDeviceHelperInstance];
    v11 = [v10 currentDeviceOnly];

    if (v11)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v12 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = objc_opt_class();
          v14 = NSStringFromClass(v13);
          *buf = 138412290;
          v20 = v14;
          _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%@,Added Current Device Predicate", buf, 0xCu);
        }
      }

      v15 = MEMORY[0x277CCAC30];
      v16 = [v8 currentDevice];
      v17 = [v16 identifier];
      v9 = [v15 predicateWithFormat:@"(%K.%K == %@)", v6, @"identifier", v17];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (RTTripClusterDeviceHelper)init
{
  v3.receiver = self;
  v3.super_class = RTTripClusterDeviceHelper;
  return [(RTTripClusterDeviceHelper *)&v3 init];
}

@end