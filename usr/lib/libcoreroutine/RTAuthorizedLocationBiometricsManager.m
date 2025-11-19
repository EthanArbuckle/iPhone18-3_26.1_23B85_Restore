@interface RTAuthorizedLocationBiometricsManager
- (BOOL)_getTimeSinceLastSuccessfulBiometricAuthentication:(double *)a3;
- (BOOL)defaultOverrideTimeSinceLastSuccessfulBiometricAuthentication:(double *)a3;
- (RTAuthorizedLocationBiometricsManager)initWithTrustedTimeCache:(id)a3 defaultsManager:(id)a4;
- (id)updateDateOfLastSuccessfulBiometricAuthentication;
@end

@implementation RTAuthorizedLocationBiometricsManager

- (RTAuthorizedLocationBiometricsManager)initWithTrustedTimeCache:(id)a3 defaultsManager:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v21 = "[RTAuthorizedLocationBiometricsManager initWithTrustedTimeCache:defaultsManager:]";
    v22 = 1024;
    v23 = 33;
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: trustedTimeCache (in %s:%d)", buf, 0x12u);
  }

  if (!v9)
  {
LABEL_7:
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[RTAuthorizedLocationBiometricsManager initWithTrustedTimeCache:defaultsManager:]";
      v22 = 1024;
      v23 = 34;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  v19.receiver = self;
  v19.super_class = RTAuthorizedLocationBiometricsManager;
  v12 = [(RTAuthorizedLocationBiometricsManager *)&v19 init];
  if (v12)
  {
    v13 = [MEMORY[0x277CBEAA8] distantPast];
    dateOfLastUpdate = v12->_dateOfLastUpdate;
    v12->_dateOfLastUpdate = v13;

    dateOfMostRecentBiometricAuthentication = v12->_dateOfMostRecentBiometricAuthentication;
    v12->_dateOfMostRecentBiometricAuthentication = 0;

    objc_storeStrong(&v12->_trustedTimeCache, a3);
    objc_storeStrong(&v12->_defaultsManager, a4);
    v16 = objc_opt_new();
    platform = v12->_platform;
    v12->_platform = v16;
  }

  return v12;
}

- (id)updateDateOfLastSuccessfulBiometricAuthentication
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = [(RTTrustedTimeCache *)self->_trustedTimeCache getApproximateTrustedDateNowWithUnsecureFallback];
  v5 = v4;
  if (!v4)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v16 = objc_opt_class();
    v12 = NSStringFromClass(v16);
    v13 = NSStringFromSelector(a2);
    *buf = 138412546;
    v26 = v12;
    v27 = 2112;
    v28 = v13;
    v15 = "%@:%@ BKDevice, BKDeviceDescriptor, unable to fetch trustedNow, not updating dateOfMostRecentBiometricAuthentication.";
    goto LABEL_13;
  }

  [v4 timeIntervalSinceDate:self->_dateOfLastUpdate];
  v7 = v6;
  if (v6 > 900.0)
  {
    v24 = 0.0;
    if ([(RTAuthorizedLocationBiometricsManager *)self _getTimeSinceLastSuccessfulBiometricAuthentication:&v24])
    {
      v8 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v5 sinceDate:-v24];
      dateOfMostRecentBiometricAuthentication = self->_dateOfMostRecentBiometricAuthentication;
      self->_dateOfMostRecentBiometricAuthentication = v8;

      objc_storeStrong(&self->_dateOfLastUpdate, v5);
      v10 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = NSStringFromSelector(a2);
        v14 = self->_dateOfMostRecentBiometricAuthentication;
        *buf = 138412802;
        v26 = v12;
        v27 = 2112;
        v28 = v13;
        v29 = 2112;
        v30 = v14;
        v15 = "%@:%@, updated dateOfMostRecentBiometricAuthentication to %@.";
LABEL_10:
        v18 = v10;
        v19 = 32;
LABEL_14:
        _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_DEFAULT, v15, buf, v19);

        goto LABEL_15;
      }

      goto LABEL_15;
    }

    v10 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v20 = objc_opt_class();
    v12 = NSStringFromClass(v20);
    v13 = NSStringFromSelector(a2);
    *buf = 138412546;
    v26 = v12;
    v27 = 2112;
    v28 = v13;
    v15 = "%@:%@, unable to get time since last successful biometric authentication (possibly none since last boot), not updating dateOfMostRecentBiometricAuthentication.";
LABEL_13:
    v18 = v10;
    v19 = 22;
    goto LABEL_14;
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    v12 = NSStringFromClass(v17);
    v13 = NSStringFromSelector(a2);
    *buf = 138412802;
    v26 = v12;
    v27 = 2112;
    v28 = v13;
    v29 = 2048;
    v30 = *&v7;
    v15 = "%@:%@, updated dateOfMostRecentBiometricAuthentication %f seconds ago, not updating now.";
    goto LABEL_10;
  }

LABEL_15:

  v21 = self->_dateOfMostRecentBiometricAuthentication;
  v22 = v21;

  return v21;
}

- (BOOL)defaultOverrideTimeSinceLastSuccessfulBiometricAuthentication:(double *)a3
{
  v4 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTDefaultsAuthorizedLocationSecondsSinceLastBiometricAuthentication"];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v4 floatValue];
    *a3 = v5;
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_getTimeSinceLastSuccessfulBiometricAuthentication:(double *)a3
{
  v34 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v23 = NSStringFromSelector(a2);
      *buf = 138412546;
      v27 = v22;
      v28 = 2112;
      v29 = v23;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ invalid parameter", buf, 0x16u);
    }

    goto LABEL_15;
  }

  if ([(RTPlatform *)self->_platform internalInstall]&& [(RTAuthorizedLocationBiometricsManager *)self defaultOverrideTimeSinceLastSuccessfulBiometricAuthentication:a3])
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      v10 = *a3;
      *buf = 138412802;
      v27 = v8;
      v28 = 2112;
      v29 = v9;
      v30 = 2048;
      v31 = v10;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ Using defaults override for timeSinceLastSuccessfulBiometricAuthentication_s, %.3f", buf, 0x20u);
    }

    v11 = 1;
    goto LABEL_16;
  }

  v12 = [MEMORY[0x277CD47B8] secureDomainStorage];
  v6 = v12;
  if (!v12)
  {
LABEL_15:
    v11 = 0;
    goto LABEL_16;
  }

  v25 = 0;
  v13 = [v12 numberForKey:14 error:&v25];
  v14 = v25;
  v11 = v13 != 0;
  if (v13)
  {
    [v13 doubleValue];
    *a3 = v15 * 0.001;
    v16 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = NSStringFromSelector(a2);
      v20 = *a3;
      *buf = 138413058;
      v27 = v18;
      v28 = 2112;
      v29 = v19;
      v30 = 2050;
      v31 = v20;
      v32 = 2112;
      v33 = v14;
      _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_DEFAULT, "%@:%@ timeSinceLastSuccessfulBiometricAuthentication,%{public}.1f,%@", buf, 0x2Au);
    }
  }

LABEL_16:
  return v11;
}

@end