@interface RMCloudConfigController
+ (id)_enrollmentURLFromCloudConfig:(id)config;
+ (id)_enrollmentURLFromUpdatedCloudConfig;
+ (id)_updatedCloudConfig;
+ (id)cloudConfigEnrollmentURLWithUpdateFromServer;
@end

@implementation RMCloudConfigController

+ (id)cloudConfigEnrollmentURLWithUpdateFromServer
{
  v3 = +[RMManagementSettings sharedSettings];
  [v3 removeValueForKey:@"HasCloudConfigBeenChecked"];
  [v3 removeValueForKey:@"CloudConfigEnrollmentURL"];
  _enrollmentURLFromUpdatedCloudConfig = [self _enrollmentURLFromUpdatedCloudConfig];

  return _enrollmentURLFromUpdatedCloudConfig;
}

+ (id)_enrollmentURLFromUpdatedCloudConfig
{
  _updatedCloudConfig = [self _updatedCloudConfig];
  v4 = [self _enrollmentURLFromCloudConfig:_updatedCloudConfig];

  return v4;
}

+ (id)_enrollmentURLFromCloudConfig:(id)config
{
  configCopy = config;
  if (configCopy)
  {
    v4 = +[RMManagementSettings sharedSettings];
    [v4 setValue:&__kCFBooleanTrue forKey:@"HasCloudConfigBeenChecked"];
    v5 = [configCopy objectForKeyedSubscript:@"MDMProtocolVersion"];
    v6 = v5;
    if (v5 && [v5 intValue] == 2)
    {
      v7 = [configCopy objectForKeyedSubscript:@"ConfigurationURL"];
      if ([v7 length])
      {
        v8 = [NSURL URLWithString:v7];
        v9 = v8;
        if (v8)
        {
          absoluteString = [v8 absoluteString];
          [v4 setValue:absoluteString forKey:@"CloudConfigEnrollmentURL"];

          v11 = +[RMLog cloudConfigController];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            sub_10001BDD0();
          }

          v9 = v9;
          v12 = v9;
        }

        else
        {
          v13 = +[RMLog cloudConfigController];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            sub_10001BE40();
          }

          v12 = 0;
        }
      }

      else
      {
        v9 = +[RMLog cloudConfigController];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          sub_10001BEA8();
        }

        v12 = 0;
      }
    }

    else
    {
      v7 = +[RMLog cloudConfigController];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_10001BEE8();
      }

      v12 = 0;
    }
  }

  else
  {
    v4 = +[RMLog cloudConfigController];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_10001BF58();
    }

    v12 = 0;
  }

  return v12;
}

+ (id)_updatedCloudConfig
{
  if (+[RMFeatureOverrides overrideCloudConfig])
  {
    v2 = +[RMLog cloudConfigController];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Using OverrideCloudConfig", buf, 2u);
    }

    v3 = [RMLocations baseDirectoryURLCreateIfNeeded:1];
    v4 = [v3 URLByAppendingPathComponent:@"DEP.plist"];

    cloudConfigurationDetails = [NSDictionary dictionaryWithContentsOfURL:v4];
  }

  else
  {
    *buf = 0;
    v15 = buf;
    v16 = 0x3032000000;
    v17 = sub_10001BB50;
    v18 = sub_10001BB60;
    v19 = 0;
    v6 = +[MCProfileConnection sharedConnection];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10001BB68;
    v10[3] = &unk_1000D1750;
    v13 = buf;
    v7 = [[NSConditionLock alloc] initWithCondition:0];
    v11 = v7;
    v8 = v6;
    v12 = v8;
    [v8 retrieveCloudConfigurationDetailsCompletionBlock:v10];
    [v7 lockWhenCondition:1];
    [v7 unlock];
    if (*(v15 + 5))
    {
      cloudConfigurationDetails = 0;
    }

    else
    {
      cloudConfigurationDetails = [v8 cloudConfigurationDetails];
    }

    _Block_object_dispose(buf, 8);
  }

  return cloudConfigurationDetails;
}

@end