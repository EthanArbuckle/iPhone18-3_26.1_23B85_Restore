@interface RTPlatform_MobileGestalt
- (BOOL)iPhoneDevice;
- (BOOL)iPhonePlatform;
- (BOOL)internalInstall;
- (BOOL)lowEndHardware;
- (BOOL)realityDevice;
- (BOOL)simulatorPlatform;
- (BOOL)supportsCoreRoutineCapability;
- (BOOL)supportsMultiUser;
- (BOOL)watchPlatform;
- (RTPlatform_MobileGestalt)init;
- (RTPlatform_MobileGestalt)initWithNanoRegistry:(id)registry userDefaults:(id)defaults;
- (id)deviceClass;
- (id)productType;
- (id)systemModel;
- (id)systemVersion;
- (id)userAssignedDeviceName;
@end

@implementation RTPlatform_MobileGestalt

- (BOOL)internalInstall
{
  v2 = MGCopyAnswer();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  v5 = v4 == CFBooleanGetTypeID() && CFBooleanGetValue(v3) == 1;
  CFRelease(v3);
  return v5;
}

- (BOOL)iPhoneDevice
{
  deviceClass = [(RTPlatform_MobileGestalt *)self deviceClass];
  v3 = deviceClass;
  if (deviceClass)
  {
    v4 = [deviceClass isEqualToString:@"iPhone"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)deviceClass
{
  v2 = MGCopyAnswer();

  return v2;
}

- (RTPlatform_MobileGestalt)init
{
  v3 = objc_alloc_init(RTNanoRegistry);
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [(RTPlatform_MobileGestalt *)self initWithNanoRegistry:v3 userDefaults:standardUserDefaults];

  return v5;
}

- (RTPlatform_MobileGestalt)initWithNanoRegistry:(id)registry userDefaults:(id)defaults
{
  v19 = *MEMORY[0x277D85DE8];
  registryCopy = registry;
  defaultsCopy = defaults;
  if (defaultsCopy)
  {
    v14.receiver = self;
    v14.super_class = RTPlatform_MobileGestalt;
    v9 = [(RTPlatform_MobileGestalt *)&v14 init];
    p_isa = &v9->super.super.isa;
    if (v9)
    {
      objc_storeStrong(&v9->_userDefaults, defaults);
      objc_storeStrong(p_isa + 2, registry);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[RTPlatform_MobileGestalt initWithNanoRegistry:userDefaults:]";
      v17 = 1024;
      v18 = 41;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: userDefaults (in %s:%d)", buf, 0x12u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)userAssignedDeviceName
{
  v2 = MGCopyAnswer();
  if (!v2)
  {
    currentHost = [MEMORY[0x277CCAA58] currentHost];
    name = [currentHost name];

    if (name)
    {
      [currentHost name];
    }

    else
    {
      [RTSystemControl valueForKey:@"kern.hostname"];
    }
    v2 = ;
  }

  return v2;
}

- (id)productType
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)systemVersion
{
  v2 = MGCopyAnswer();

  return v2;
}

- (BOOL)lowEndHardware
{
  v2 = MGCopyAnswer();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  v5 = v4 == CFBooleanGetTypeID() && CFBooleanGetValue(v3) == 1;
  CFRelease(v3);
  return v5;
}

- (BOOL)supportsCoreRoutineCapability
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"OverrideCoreRoutineSupported"];
  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v3 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = v2;
        _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "CoreRoutine capabiltiy overridden, %@", &v11, 0xCu);
      }
    }

    bOOLValue = [(__CFString *)v2 BOOLValue];
  }

  else
  {
    v5 = MGCopyAnswer();
    if (v5)
    {
      v6 = v5;
      v7 = CFGetTypeID(v5);
      bOOLValue = v7 == CFBooleanGetTypeID() && CFBooleanGetValue(v6) != 0;
      CFRelease(v6);
    }

    else
    {
      bOOLValue = 0;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = @"NO";
      if (bOOLValue)
      {
        v9 = @"YES";
      }

      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "supports CoreRoutine capabiltiy, %@", &v11, 0xCu);
    }
  }

  return bOOLValue;
}

- (BOOL)supportsMultiUser
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"ForceMultiUser"];
  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v3 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v11 = @"YES";
        _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "multi user overridden, %@", buf, 0xCu);
      }
    }

    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    v5 = MKBUserTypeDeviceMode();
    v6 = [v5 objectForKey:*MEMORY[0x277D28AD0]];
    bOOLValue = [v6 isEqualToString:*MEMORY[0x277D28AD8]];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = @"NO";
      if (bOOLValue)
      {
        v8 = @"YES";
      }

      *buf = 138412290;
      v11 = v8;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "supports multi user, %@", buf, 0xCu);
    }
  }

  return bOOLValue;
}

- (id)systemModel
{
  v2 = MGCopyAnswer();

  return v2;
}

- (BOOL)simulatorPlatform
{
  v2 = MGCopyAnswer();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  v5 = v4 == CFBooleanGetTypeID() && CFBooleanGetValue(v3) == 1;
  CFRelease(v3);
  return v5;
}

- (BOOL)iPhonePlatform
{
  deviceClass = [(RTPlatform_MobileGestalt *)self deviceClass];
  v3 = deviceClass;
  v4 = deviceClass && (([deviceClass isEqualToString:@"iPhone"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"iPad") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"iPod"));

  return v4;
}

- (BOOL)watchPlatform
{
  deviceClass = [(RTPlatform_MobileGestalt *)self deviceClass];
  v3 = deviceClass;
  if (deviceClass)
  {
    v4 = [deviceClass isEqualToString:@"Watch"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)realityDevice
{
  deviceClass = [(RTPlatform_MobileGestalt *)self deviceClass];
  v3 = deviceClass;
  if (deviceClass)
  {
    v4 = [deviceClass isEqualToString:@"RealityDevice"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end