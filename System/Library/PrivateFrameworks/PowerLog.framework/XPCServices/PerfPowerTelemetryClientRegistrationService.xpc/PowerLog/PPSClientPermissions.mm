@interface PPSClientPermissions
+ (BOOL)checkWritePermissionForSubsystem:(id)a3 category:(id)a4;
+ (BOOL)hasWriteEntitlements;
+ (BOOL)overridePermissionForSubsystem:(id)a3 category:(id)a4;
+ (id)getClientPermissions;
+ (id)getPrivacyClientPermissions;
+ (id)getTestClientPermissions;
+ (id)userDefaults;
@end

@implementation PPSClientPermissions

+ (BOOL)checkWritePermissionForSubsystem:(id)a3 category:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    if (+[PPSClientPermissions hasWriteEntitlements])
    {
      if ([PPSClientPermissions overridePermissionForSubsystem:v5 category:v7])
      {
        v9 = sub_10000117C();
        v8 = 1;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v15 = 138412546;
          v16 = v5;
          v17 = 2112;
          v18 = v7;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "overridePermissionForSubsystem %@ category %@", &v15, 0x16u);
        }

        goto LABEL_17;
      }

      v9 = +[PPSClientPermissions getClientPermissions];
      v10 = [v9 objectForKeyedSubscript:v5];

      if (v10)
      {
        v11 = [PPSClientInterface getMetadataForSubsystem:v5 category:v7];
        v12 = [v11 count];
        v8 = v12 != 0;
        if (v12)
        {
LABEL_16:

LABEL_17:
          goto LABEL_18;
        }

        v13 = sub_10000117C();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v15 = 138412546;
          v16 = v5;
          v17 = 2112;
          v18 = v7;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Missing metric definition for subsystem: %@ category: %@", &v15, 0x16u);
        }
      }

      else
      {
        v11 = sub_10000117C();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v15 = 138412546;
          v16 = v5;
          v17 = 2112;
          v18 = v7;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Subsystem/Category: %@::%@ is not registered", &v15, 0x16u);
        }
      }

      v8 = 0;
      goto LABEL_16;
    }

    v8 = 0;
  }

LABEL_18:

  return v8;
}

+ (BOOL)hasWriteEntitlements
{
  v2 = +[NSXPCConnection currentConnection];
  v3 = [v2 valueForEntitlement:@"com.apple.PerfPowerServices.data-donation"];
  v4 = [v2 valueForEntitlement:@"com.apple.PerfPowerTelemetry.data-donation"];
  if (objc_opt_respondsToSelector() & 1) != 0 && ([v3 BOOLValue] & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend(v4, "BOOLValue"))
  {
    v5 = 1;
  }

  else
  {
    v6 = sub_10000117C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10000180C(v2, v6);
    }

    v5 = 0;
  }

  return v5;
}

+ (id)userDefaults
{
  if (qword_100008618 != -1)
  {
    sub_100001898();
  }

  v3 = qword_100008620;

  return v3;
}

+ (BOOL)overridePermissionForSubsystem:(id)a3 category:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_diagnostics())
  {
    v8 = [a1 userDefaults];
    v9 = [v8 stringForKey:@"OverridePermissions"];

    if (v9)
    {
      v10 = [NSString stringWithFormat:@"%@::%@", v6, v7];
      v11 = sub_10000117C();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_1000018AC(v10, v9, v11);
      }

      v12 = [v9 isEqualToString:v10];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)getClientPermissions
{
  if (os_variant_has_internal_diagnostics())
  {
    v3 = +[NSMutableDictionary dictionary];
    v4 = [a1 getPrivacyClientPermissions];
    [v3 addEntriesFromDictionary:v4];

    v5 = [a1 getTestClientPermissions];
    [v3 addEntriesFromDictionary:v5];
  }

  else
  {
    v3 = [a1 getPrivacyClientPermissions];
  }

  return v3;
}

+ (id)getPrivacyClientPermissions
{
  if (qword_100008628 != -1)
  {
    sub_100001934();
  }

  v3 = qword_100008630;

  return v3;
}

+ (id)getTestClientPermissions
{
  v2 = +[NSFileManager defaultManager];
  v3 = +[PPSFileUtilities containerPath];
  v4 = [v3 stringByAppendingString:@"/Library/PerfPowerTelemetry/"];
  v5 = [v4 stringByAppendingString:@"Test/"];
  v6 = [v5 stringByAppendingString:@"testAllowlist.plist"];
  v7 = [v2 fileExistsAtPath:v6];

  if (v7)
  {
    v8 = +[PPSFileUtilities containerPath];
    v9 = [v8 stringByAppendingString:@"/Library/PerfPowerTelemetry/"];
    v10 = [v9 stringByAppendingString:@"Test/"];
    v11 = [v10 stringByAppendingString:@"testAllowlist.plist"];
    v12 = [NSURL fileURLWithPath:v11 isDirectory:0];

    v19 = 0;
    v13 = [[NSDictionary alloc] initWithContentsOfURL:v12 error:&v19];
    v14 = v19;
    v15 = sub_10000117C();
    v16 = v15;
    if (v14)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100001948(v14, v16);
      }

      v17 = &__NSDictionary0__struct;
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v13;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Test allowlist: %@", buf, 0xCu);
      }

      v17 = v13;
    }
  }

  else
  {
    v17 = &__NSDictionary0__struct;
  }

  return v17;
}

@end