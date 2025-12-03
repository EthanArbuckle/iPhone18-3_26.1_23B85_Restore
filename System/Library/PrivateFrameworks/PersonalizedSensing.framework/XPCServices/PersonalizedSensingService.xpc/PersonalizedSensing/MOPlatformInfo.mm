@interface MOPlatformInfo
+ (BOOL)isDNUEnabled;
+ (BOOL)isIHAEnabled;
+ (BOOL)isInternalBuild;
+ (BOOL)isIpad;
+ (BOOL)isSeedBuild;
+ (BOOL)wasBuildVersionUpdated;
+ (id)_createDefaultsManagerDaemon;
+ (id)_getMainBundleIdentifier;
+ (id)extractHardwareAndSoftwareMetadata;
+ (id)getBuildVersion;
+ (id)getDeviceClass;
+ (id)getHWModel;
+ (id)getProductType;
+ (id)getProductVersion;
+ (unint64_t)generativeModelsAvailabilityStatus;
+ (void)getDeviceClass;
+ (void)persistBuildVersion;
@end

@implementation MOPlatformInfo

+ (id)extractHardwareAndSoftwareMetadata
{
  v2 = objc_opt_new();
  v3 = +[MOPlatformInfo getHWModel];
  v4 = +[MOPlatformInfo getProductType];
  v5 = +[MOPlatformInfo getBuildVersion];
  v6 = +[MOPlatformInfo getProductVersion];
  v7 = +[MOPlatformInfo getDeviceClass];
  v8 = +[MOPlatformInfo isInternalBuild];
  v9 = +[MOPlatformInfo isSeedBuild];
  v16 = +[MOPlatformInfo isDNUEnabled];
  v17 = +[MOPlatformInfo isIHAEnabled];
  if (v3)
  {
    [v2 setObject:v3 forKey:@"kMOHardwareModel"];
  }

  if (v4)
  {
    [v2 setObject:v4 forKey:@"kMOProductType"];
  }

  if (v7)
  {
    [v2 setObject:v7 forKey:@"kMODeviceClass"];
  }

  if (v5)
  {
    [v2 setObject:v5 forKey:@"kMOBuildVersion"];
  }

  if (v6)
  {
    [v2 setObject:v6 forKey:@"kMOProductVersion"];
  }

  if (v8)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  [v2 setObject:v10 forKey:@"kMOIsInternalBuild"];
  if (v9)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  [v2 setObject:v11 forKey:@"kMOIsSeedBuild"];
  if (v16)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  [v2 setObject:v12 forKey:@"kMOIsDNUEnabled"];
  if (v17)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  [v2 setObject:v13 forKey:@"kMOIsIHAEnabled"];
  v14 = [v2 copy];

  return v14;
}

+ (id)_getMainBundleIdentifier
{
  if (_getMainBundleIdentifier_onceToken != -1)
  {
    +[MOPlatformInfo _getMainBundleIdentifier];
  }

  v3 = _getMainBundleIdentifier_bundleIdentifier[0];

  return v3;
}

void __42__MOPlatformInfo__getMainBundleIdentifier__block_invoke(id a1)
{
  v3 = +[NSBundle mainBundle];
  v1 = [v3 bundleIdentifier];
  v2 = _getMainBundleIdentifier_bundleIdentifier[0];
  _getMainBundleIdentifier_bundleIdentifier[0] = v1;
}

+ (id)_createDefaultsManagerDaemon
{
  if (_createDefaultsManagerDaemon_onceToken != -1)
  {
    +[MOPlatformInfo _createDefaultsManagerDaemon];
  }

  if (_createDefaultsManagerDaemon_isMomentsDaemon == 1)
  {
    v2 = objc_opt_new();
  }

  else
  {
    v2 = [[MODefaultsManager alloc] initWithSuiteName:@"com.apple.momentsd"];
  }

  return v2;
}

void __46__MOPlatformInfo__createDefaultsManagerDaemon__block_invoke(id a1)
{
  v1 = +[MOPlatformInfo _getMainBundleIdentifier];
  _createDefaultsManagerDaemon_isMomentsDaemon = [v1 isEqualToString:@"com.apple.momentsd"];
}

+ (id)getHWModel
{
  v2 = MGCopyAnswerWithError();
  if (!v2)
  {
    v3 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      +[MOPlatformInfo getHWModel];
    }
  }

  return v2;
}

+ (id)getProductType
{
  v2 = MGCopyAnswerWithError();
  if (!v2)
  {
    v3 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      +[MOPlatformInfo getProductType];
    }
  }

  return v2;
}

+ (id)getDeviceClass
{
  v5 = 0;
  v2 = MGCopyAnswerWithError();
  if (!v2)
  {
    v3 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      +[(MOPlatformInfo *)&v5];
    }
  }

  return v2;
}

+ (id)getBuildVersion
{
  v2 = MGCopyAnswerWithError();
  if (!v2)
  {
    v3 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      +[MOPlatformInfo getBuildVersion];
    }
  }

  return v2;
}

+ (id)getProductVersion
{
  v2 = MGCopyAnswerWithError();
  if (!v2)
  {
    v3 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      +[MOPlatformInfo getProductVersion];
    }
  }

  return v2;
}

+ (BOOL)isInternalBuild
{
  if (!os_variant_has_internal_diagnostics())
  {
    return 0;
  }

  v2 = +[MOPlatformInfo _createDefaultsManagerDaemon];
  v3 = [v2 objectForKey:@"PlatformInfoOverrideIsInternalBuild"];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

+ (BOOL)isSeedBuild
{
  v2 = +[MOPlatformInfo _createDefaultsManagerDaemon];
  v3 = [v2 objectForKey:@"PlatformInfoOverrideIsSeedBuild"];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (BOOL)isDNUEnabled
{
  v2 = +[MCProfileConnection sharedConnection];
  isDiagnosticSubmissionAllowed = [v2 isDiagnosticSubmissionAllowed];

  v4 = +[MOPlatformInfo _createDefaultsManagerDaemon];
  v5 = [v4 objectForKey:@"PlatformInfoOverrideIsDNUEnabled"];
  v6 = v5;
  if (v5)
  {
    isDiagnosticSubmissionAllowed = [v5 BOOLValue];
  }

  return isDiagnosticSubmissionAllowed;
}

+ (BOOL)isIHAEnabled
{
  v2 = +[MCProfileConnection sharedConnection];
  isHealthDataSubmissionAllowed = [v2 isHealthDataSubmissionAllowed];

  v4 = +[MOPlatformInfo _createDefaultsManagerDaemon];
  v5 = [v4 objectForKey:@"PlatformInfoOverrideIsIHAEnabled"];
  v6 = v5;
  if (v5)
  {
    isHealthDataSubmissionAllowed = [v5 BOOLValue];
  }

  return isHealthDataSubmissionAllowed;
}

+ (BOOL)wasBuildVersionUpdated
{
  v2 = objc_opt_new();
  v3 = +[MOPlatformInfo extractHardwareAndSoftwareMetadata];
  v4 = [v2 objectForKey:@"LastBuildVersion"];
  if (v4)
  {
    v5 = [v3 objectForKey:@"kMOBuildVersion"];
    v6 = [v4 isEqualToString:v5] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

+ (void)persistBuildVersion
{
  v4 = objc_opt_new();
  v2 = +[MOPlatformInfo extractHardwareAndSoftwareMetadata];
  v3 = [v2 objectForKey:@"kMOBuildVersion"];
  [v4 setObject:v3 forKey:@"LastBuildVersion"];
}

+ (BOOL)isIpad
{
  if (isIpad_onceToken != -1)
  {
    +[MOPlatformInfo isIpad];
  }

  return isIpad_result;
}

void __24__MOPlatformInfo_isIpad__block_invoke(id a1)
{
  v1 = MGCopyAnswer();
  if (v1 && [v1 isEqualToString:@"iPad"])
  {
    isIpad_result = 1;
  }

  _objc_release_x1();
}

+ (unint64_t)generativeModelsAvailabilityStatus
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = +[MOMomentsIntelligenceServiceManager sharedInstance];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __52__MOPlatformInfo_generativeModelsAvailabilityStatus__block_invoke;
  v5[3] = &unk_1000B58E8;
  v5[4] = &v6;
  [v2 fetchGenerativeModelsAvailabilityWithReply:v5];
  v3 = v7[3];

  _Block_object_dispose(&v6, 8);
  return v3;
}

void __52__MOPlatformInfo_generativeModelsAvailabilityStatus__block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  if (a3)
  {
    v3 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __52__MOPlatformInfo_generativeModelsAvailabilityStatus__block_invoke_cold_1();
    }
  }

  else
  {
    if (a2)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    *(*(*(a1 + 32) + 8) + 24) = v4;
  }
}

+ (void)getDeviceClass
{
  v2 = *self;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not get device class (MGError=%d)", v3, 8u);
}

@end