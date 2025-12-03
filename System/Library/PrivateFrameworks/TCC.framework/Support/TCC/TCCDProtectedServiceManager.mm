@interface TCCDProtectedServiceManager
- (BOOL)authenticateForAccessToService:(id)service;
- (BOOL)authenticateForBundle:(id)bundle;
- (TCCDProtectedServiceManager)init;
- (id)bundleIdForService:(id)service;
@end

@implementation TCCDProtectedServiceManager

- (TCCDProtectedServiceManager)init
{
  v8.receiver = self;
  v8.super_class = TCCDProtectedServiceManager;
  v2 = [(TCCDProtectedServiceManager *)&v8 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.TCC", "access");
    logHandle = v2->_logHandle;
    v2->_logHandle = v3;

    v9[0] = kTCCServicePhotos;
    v9[1] = kTCCServicePhotosAdd;
    v10[0] = @"com.apple.mobileslideshow";
    v10[1] = @"com.apple.mobileslideshow";
    v9[2] = kTCCServiceCalendar;
    v9[3] = kTCCServiceReminders;
    v10[2] = @"com.apple.mobilecal";
    v10[3] = @"com.apple.reminders";
    v9[4] = kTCCServiceWillow;
    v9[5] = kTCCServiceMediaLibrary;
    v10[4] = @"com.apple.Home";
    v10[5] = @"com.apple.Music";
    v9[6] = kTCCServiceFinancialData;
    v10[6] = @"com.apple.Passbook";
    v5 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:7];
    serviceBundleMap = v2->_serviceBundleMap;
    v2->_serviceBundleMap = v5;
  }

  return v2;
}

- (BOOL)authenticateForBundle:(id)bundle
{
  bundleCopy = bundle;
  v5 = [APApplication applicationWithBundleIdentifier:bundleCopy];
  if (!v5)
  {
    v8 = 0;
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v6 = +[APGuard sharedGuard];
  v11 = 0;
  v7 = [v6 authenticateSyncForSubject:v5 error:&v11];
  v8 = v11;

  if ((v7 & 1) == 0 && v8)
  {
    logHandle = [(TCCDProtectedServiceManager *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v13 = bundleCopy;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Error during authenticating for client %@: %@", buf, 0x16u);
    }

    goto LABEL_8;
  }

LABEL_9:

  return v7;
}

- (BOOL)authenticateForAccessToService:(id)service
{
  serviceCopy = service;
  v5 = [(TCCDProtectedServiceManager *)self bundleIdForService:serviceCopy];
  logHandle = [(TCCDProtectedServiceManager *)self logHandle];
  v7 = os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Authenticating for client: %@", &v10, 0xCu);
    }

    v8 = [(TCCDProtectedServiceManager *)self authenticateForBundle:v5];
  }

  else
  {
    if (v7)
    {
      v10 = 138412290;
      v11 = serviceCopy;
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "service not protected: %@", &v10, 0xCu);
    }

    v8 = 1;
  }

  return v8;
}

- (id)bundleIdForService:(id)service
{
  serviceCopy = service;
  serviceBundleMap = [(TCCDProtectedServiceManager *)self serviceBundleMap];
  v6 = [serviceBundleMap objectForKeyedSubscript:serviceCopy];

  return v6;
}

@end