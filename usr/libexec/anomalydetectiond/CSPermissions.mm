@interface CSPermissions
+ (id)sharedInstance;
- (BOOL)firstOrThirdPartyEnabled;
- (BOOL)isAuthorizedForIS;
- (BOOL)isAuthorizedToCollectData;
- (BOOL)isAuthorizedToCollectDataIgneous;
@end

@implementation CSPermissions

+ (id)sharedInstance
{
  if (qword_1004589A0 != -1)
  {
    sub_100356668();
  }

  v3 = qword_100458998;

  return v3;
}

- (BOOL)isAuthorizedForIS
{
  if (!objc_opt_class())
  {
    return 0;
  }

  v2 = +[MCProfileConnection sharedConnection];
  isSafetyDataSubmissionAllowed = [v2 isSafetyDataSubmissionAllowed];

  return isSafetyDataSubmissionAllowed;
}

- (BOOL)firstOrThirdPartyEnabled
{
  v2 = +[SOSUtilities kappaTriggersEmergencySOS];
  v3 = +[SOSUtilities getKappaThirdPartyDisplayNameForApp];

  if (qword_100456848 != -1)
  {
    sub_10035667C();
  }

  v4 = qword_100456850;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = +[SOSUtilities kappaTriggersEmergencySOS];
    v6 = +[SOSUtilities getKappaThirdPartyDisplayNameForApp];
    v8[0] = 67109376;
    v8[1] = v5;
    v9 = 1024;
    v10 = v6 != 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "1P %d 3P %d", v8, 0xEu);
  }

  if (v3)
  {
    v2 = 1;
  }

  return v2;
}

- (BOOL)isAuthorizedToCollectData
{
  if (objc_opt_class())
  {
    v2 = +[SOSUtilities kappaTriggersEmergencySOS];
  }

  else
  {
    v2 = 0;
  }

  v3 = +[CSPersistentConfiguration sharedConfiguration];
  v4 = [v3 objectForKey:@"ForceCollectionAuthorized"];

  if (v4)
  {
    v5 = +[CSPersistentConfiguration sharedConfiguration];
    v6 = [v5 BOOLForKey:@"ForceCollectionAuthorized"];

    if (qword_100456848 != -1)
    {
      sub_10035667C();
    }

    v7 = qword_100456850;
    if (os_log_type_enabled(qword_100456850, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 67109120;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "forcing collect authorized %d", &v12, 8u);
    }
  }

  else
  {
    if (qword_100456848 != -1)
    {
      sub_10035667C();
    }

    v8 = qword_100456850;
    if (os_log_type_enabled(qword_100456850, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 67240192;
      v13 = v2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "logging enabled %{public}d", &v12, 8u);
    }

    v9 = +[CSPermissions sharedInstance];
    isAuthorizedForIS = [v9 isAuthorizedForIS];
    if (v2)
    {
      LOBYTE(v6) = isAuthorizedForIS;
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (BOOL)isAuthorizedToCollectDataIgneous
{
  v2 = +[CSPermissions sharedInstance];
  isAuthorizedForIS = [v2 isAuthorizedForIS];

  return isAuthorizedForIS;
}

@end