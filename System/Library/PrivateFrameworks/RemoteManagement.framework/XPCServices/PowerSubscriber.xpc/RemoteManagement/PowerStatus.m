@interface PowerStatus
+ (id)supportedStatusKeys;
- (BOOL)isSupportedPlatform;
- (id)batteryHealthState;
- (int)rawBatteryHealthServiceState;
- (void)queryForStatusWithKeyPaths:(id)a3 store:(id)a4 completionHandler:(id)a5;
@end

@implementation PowerStatus

+ (id)supportedStatusKeys
{
  v5 = RMModelStatusItemDeviceBatteryHealth;
  v2 = [NSArray arrayWithObjects:&v5 count:1];
  v3 = [NSSet setWithArray:v2];

  return v3;
}

- (void)queryForStatusWithKeyPaths:(id)a3 store:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v20 = a5;
  v8 = +[RMLog batteryHealthLog];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100001374(v7, v8);
  }

  v9 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v7 count]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    v14 = RMModelStatusItemDeviceBatteryHealth;
    do
    {
      v15 = 0;
      do
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v21 + 1) + 8 * v15);
        v17 = +[RMLog batteryHealthLog];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v26 = v16;
          _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Fetching status for key path: %{public}@", buf, 0xCu);
        }

        if ([v16 isEqualToString:v14])
        {
          v18 = [(PowerStatus *)self batteryHealthState];
          [v9 setObject:v18 forKeyedSubscript:v16];
        }

        v15 = v15 + 1;
      }

      while (v12 != v15);
      v12 = [v10 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v12);
  }

  v19 = [v9 copy];
  v20[2](v20, v19, 0);
}

- (int)rawBatteryHealthServiceState
{
  v2 = IOPSGetBatteryHealthState();
  if (v2)
  {
    v3 = v2;
    v4 = +[RMLog batteryHealthLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000013EC(v3, v4);
    }

LABEL_9:
    v5 = -1;
    goto LABEL_10;
  }

  v4 = [0 objectForKeyedSubscript:@"IOPSBatteryHealthState"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = +[RMLog batteryHealthLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100001464(v6);
    }

    goto LABEL_9;
  }

  v5 = [v4 intValue];
LABEL_10:

  return [RMFeatureOverrides batteryHealthServiceStateWithDefaultValue:v5];
}

- (BOOL)isSupportedPlatform
{
  if (+[DMCMobileGestalt hasBattery])
  {
    if ((+[DMCMobileGestalt isPhone](DMCMobileGestalt, "isPhone") & 1) != 0 || (+[DMCMobileGestalt isAppleSiliconMac](DMCMobileGestalt, "isAppleSiliconMac") & 1) != 0 || (v2 = +[DMCMobileGestalt isPad](DMCMobileGestalt, "isPad")) != 0 && (v2 = +[DMCMobileGestalt hasBatteryInformationCapability]) != 0)
    {
      LOBYTE(v2) = 1;
    }
  }

  else
  {
    v3 = +[RMLog batteryHealthLog];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_1000014A8(v3);
    }

    LOBYTE(v2) = 0;
  }

  return v2;
}

- (id)batteryHealthState
{
  if ([(PowerStatus *)self isSupportedPlatform])
  {
    v3 = [(PowerStatus *)self rawBatteryHealthServiceState];
    if (v3 > 4)
    {
      v4 = &RMModelStatusDeviceBatteryHealth_DevicePowerBatteryHealth_unknown;
    }

    else
    {
      v4 = *(&off_100004160 + v3);
    }
  }

  else
  {
    v4 = &RMModelStatusDeviceBatteryHealth_DevicePowerBatteryHealth_unsupported;
  }

  v5 = *v4;

  return v5;
}

@end