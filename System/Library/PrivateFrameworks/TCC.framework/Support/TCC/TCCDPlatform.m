@interface TCCDPlatform
+ (id)allPlatformNames;
+ (id)allTCCEntitlements;
+ (id)currentPlatform;
+ (id)iosFamilyPlatformNames;
+ (id)macOSPlatformNames;
- (NSUUID)bootUUID;
- (TCCDPlatform)initWithName:(id)a3;
- (TCCDServer)server;
- (id)appBundleURLContainingExecutableURL:(id)a3;
- (id)bundleURLContainingExecutableURL:(id)a3;
- (id)serviceByName:(id)a3;
- (id)stringForAnalyticsAction:(int64_t)a3;
- (void)loadConfigurationDictionary;
- (void)sendAnalyticsAsyncWithEventName:(id)a3 fields:(id)a4;
- (void)sendAnalyticsForAction:(int64_t)a3 service:(id)a4 subjectIdentity:(id)a5 indirectObjectIdentity:(id)a6 authValue:(unint64_t)a7 includeV1AuthValue:(BOOL)a8 v1AuthValue:(unint64_t)a9 desiredAuth:(unint64_t)a10 domainReason:(id)a11 promptType:(int64_t)a12 macBuddyStatus:(int64_t)a13;
- (void)sendAnalyticsForEntitlement:(id)a3 withIdentifier:(id)a4 service:(id)a5 function:(id)a6;
- (void)sendAnalyticsForExternal:(id)a3 withMacBuddyStatus:(int64_t)a4 function:(id)a5;
- (void)sendAnalyticsForPlugin:(id)a3 service:(id)a4 API:(id)a5;
- (void)sendAnalyticsWithEventName:(id)a3 fields:(id)a4;
- (void)updateAnalyticsEvent:(id)a3 fromIdentity:(id)a4 keyPrefix:(id)a5;
@end

@implementation TCCDPlatform

- (TCCDServer)server
{
  WeakRetained = objc_loadWeakRetained(&self->_server);

  return WeakRetained;
}

+ (id)allTCCEntitlements
{
  if (qword_1000C1288 != -1)
  {
    sub_100055E9C();
  }

  v3 = qword_1000C1290;

  return v3;
}

+ (id)currentPlatform
{
  if (qword_1000C1280 != -1)
  {
    sub_100009194();
  }

  v3 = qword_1000C1278;

  return v3;
}

+ (id)allPlatformNames
{
  if (qword_1000C1250 != -1)
  {
    sub_100055E60();
  }

  v3 = qword_1000C1248;

  return v3;
}

+ (id)iosFamilyPlatformNames
{
  if (qword_1000C1260 != -1)
  {
    sub_100055E74();
  }

  v3 = qword_1000C1258;

  return v3;
}

+ (id)macOSPlatformNames
{
  if (qword_1000C1270 != -1)
  {
    sub_100055E88();
  }

  v3 = qword_1000C1268;

  return v3;
}

- (TCCDPlatform)initWithName:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TCCDPlatform;
  v5 = [(TCCDPlatform *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    name = v5->_name;
    v5->_name = v6;
  }

  return v5;
}

- (void)loadConfigurationDictionary
{
  v3 = [(TCCDPlatform *)self server];
  v4 = [v3 allowsInternalSecurityPolicies];

  if (v4)
  {
    v5 = [(TCCDPlatform *)self server];
    v6 = [v5 stateDirectory];
    v7 = [v6 stringByAppendingPathComponent:@"tccd-config.plist"];

    v8 = [NSData dataWithContentsOfFile:v7 options:0 error:0];
    if (v8)
    {
      v18 = 0;
      v9 = [NSPropertyListSerialization propertyListWithData:v8 options:0 format:0 error:&v18];
      v10 = v18;
      configurationDictionary = self->_configurationDictionary;
      self->_configurationDictionary = v9;

      v12 = self->_configurationDictionary;
      v13 = [(TCCDPlatform *)self server];
      v14 = [v13 logHandle];

      if (v12)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = self->_configurationDictionary;
          *buf = 138543618;
          v20 = v7;
          v21 = 2114;
          v22 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Using config file at %{public}@: contents:\n%{public}@", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100055EB0(v7, v10, v14);
      }
    }
  }

  if (!self->_configurationDictionary)
  {
    v16 = objc_opt_new();
    v17 = self->_configurationDictionary;
    self->_configurationDictionary = v16;
  }
}

- (id)serviceByName:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005426C;
  block[3] = &unk_1000A4F58;
  block[4] = self;
  v4 = qword_1000C1298;
  v5 = a3;
  if (v4 != -1)
  {
    dispatch_once(&qword_1000C1298, block);
  }

  v6 = [(TCCDPlatform *)self servicesByName];
  v7 = [v6 objectForKeyedSubscript:v5];

  return v7;
}

- (NSUUID)bootUUID
{
  bootUUID = self->_bootUUID;
  if (!bootUUID)
  {
    *in = 0u;
    memset(v13, 0, sizeof(v13));
    v10 = 37;
    if (!sysctlbyname("kern.bootsessionuuid", in, &v10, 0, 0))
    {
      if (v10 != 37)
      {
        sub_100055F64();
      }

      memset(uu, 0, sizeof(uu));
      if (!uuid_parse(in, uu))
      {
        v4 = [[NSUUID alloc] initWithUUIDBytes:uu];
        v5 = self->_bootUUID;
        self->_bootUUID = v4;

        v6 = [(TCCDPlatform *)self server];
        v7 = [v6 logHandle];

        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *v9 = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Successfully loaded bootUUID", v9, 2u);
        }
      }
    }

    bootUUID = self->_bootUUID;
  }

  return bootUUID;
}

- (id)bundleURLContainingExecutableURL:(id)a3
{
  v3 = _CFBundleCopyBundleURLForExecutableURL();
  v4 = [v3 absoluteURL];

  return v4;
}

- (id)appBundleURLContainingExecutableURL:(id)a3
{
  v4 = a3;
  v31 = self;
  v5 = [(TCCDPlatform *)self bundleURLContainingExecutableURL:v4];
  v6 = v5;
  if (v5)
  {
    v30 = v4;
    v7 = [v5 pathComponents];
    v8 = [v7 objectAtIndexedSubscript:0];
    v9 = [NSURL fileURLWithPath:v8];

    if ([v7 count] >= 2)
    {
      v11 = 2;
      v12 = 1;
      *&v10 = 138412546;
      v29 = v10;
      do
      {
        v13 = v9;
        v14 = [v7 objectAtIndexedSubscript:{v12, v29}];
        v9 = [v9 URLByAppendingPathComponent:v14];

        if (!v9)
        {
          break;
        }

        v15 = [v9 pathExtension];
        v16 = [v15 caseInsensitiveCompare:@"app"];

        if (!v16)
        {
          v32 = 0;
          v33 = 0;
          v17 = [v9 getResourceValue:&v33 forKey:NSURLIsApplicationKey error:&v32];
          v18 = v33;
          v19 = v32;
          if (v17)
          {
            if ([v18 BOOLValue])
            {
              v26 = [(TCCDPlatform *)v31 server];
              v27 = [v26 logHandle];

              v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG);
              v4 = v30;
              if (v28)
              {
                sub_100055F90(v30, v9, v27);
              }

              v9 = v9;
              v24 = v9;
              goto LABEL_15;
            }
          }

          else
          {
            v20 = [(TCCDPlatform *)v31 server];
            v21 = [v20 logHandle];

            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              v22 = [v9 path];
              *buf = v29;
              v35 = v22;
              v36 = 2114;
              v37 = v19;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Failed to get NSURLIsApplicationKey for %@: %{public}@", buf, 0x16u);
            }
          }
        }

        v12 = v11;
      }

      while ([v7 count] > v11++);
    }

    v24 = v6;
    v4 = v30;
LABEL_15:
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)stringForAnalyticsAction:(int64_t)a3
{
  if (a3 > 7)
  {
    return @"<Invalid Action>";
  }

  else
  {
    return off_1000A6B10[a3];
  }
}

- (void)updateAnalyticsEvent:(id)a3 fromIdentity:(id)a4 keyPrefix:(id)a5
{
  v19 = a3;
  v7 = a4;
  v8 = a5;
  v9 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 client_type]);
  v10 = [v8 stringByAppendingString:@"_ID_type"];
  [v19 setObject:v9 forKeyedSubscript:v10];

  if (![v7 client_type])
  {
    v14 = [v7 bundle];

    if (v14)
    {
      v15 = [v7 bundle];
      v16 = [v15 bundleIdentifier];
      v17 = [v8 stringByAppendingString:@"_ID"];
      [v19 setObject:v16 forKeyedSubscript:v17];

      v12 = [v7 bundle];
      v13 = [v12 bundleVersion];
      v18 = [v8 stringByAppendingString:@"_bundle_version"];
      [v19 setObject:v13 forKeyedSubscript:v18];

      goto LABEL_7;
    }
  }

  if ([v7 client_type] == 1)
  {
    v11 = [v7 path];

    if (v11)
    {
      v12 = [v7 path];
      v13 = [v8 stringByAppendingString:@"_ID"];
      [v19 setObject:v12 forKeyedSubscript:v13];
LABEL_7:
    }
  }
}

- (void)sendAnalyticsForPlugin:(id)a3 service:(id)a4 API:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (&_AnalyticsSendEventLazy)
  {
    v11 = [(TCCDPlatform *)self server];
    v12 = [v11 logHandle];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v9 name];
      *buf = 138544130;
      v21 = @"com.apple.TCC.management_action";
      v22 = 2114;
      v23 = v8;
      v24 = 2114;
      v25 = v10;
      v26 = 2114;
      v27 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Sending %{public}@ Analytics Event for plugin=%{public}@, API=%{public}@, service=%{public}@", buf, 0x2Au);
    }

    v16[1] = _NSConcreteStackBlock;
    v16[2] = 3221225472;
    v16[3] = sub_100054D8C;
    v16[4] = &unk_1000A6A78;
    v14 = &v17;
    v17 = v9;
    v18 = v10;
    v19 = v8;
    AnalyticsSendEventLazy();
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100054E28;
    v15[3] = &unk_1000A4F58;
    v14 = v16;
    v16[0] = @"com.apple.TCC.management_action";
    if (qword_1000C12A0 != -1)
    {
      dispatch_once(&qword_1000C12A0, v15);
    }
  }
}

- (void)sendAnalyticsForEntitlement:(id)a3 withIdentifier:(id)a4 service:(id)a5 function:(id)a6
{
  v15 = a5;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init(NSMutableDictionary);
  [v13 setObject:v10 forKeyedSubscript:@"function_name"];

  [v13 setObject:v12 forKeyedSubscript:@"entitlement"];
  [v13 setObject:v11 forKeyedSubscript:@"subject_ID"];

  if (v15)
  {
    v14 = [v15 name];
    [v13 setObject:v14 forKeyedSubscript:@"service"];
  }

  else
  {
    [v13 setObject:&stru_1000A7240 forKeyedSubscript:@"service"];
  }

  [(TCCDPlatform *)self sendAnalyticsAsyncWithEventName:@"com.apple.TCC.entitlement_usage" fields:v13];
}

- (void)sendAnalyticsForExternal:(id)a3 withMacBuddyStatus:(int64_t)a4 function:(id)a5
{
  v11 = a3;
  v8 = a5;
  v9 = objc_alloc_init(NSMutableDictionary);
  v10 = [(TCCDPlatform *)self stringForAnalyticsAction:7];
  [v9 setObject:v10 forKeyedSubscript:@"action"];

  [v9 setObject:v8 forKeyedSubscript:@"function_name"];
  if (a4 <= 2)
  {
    [v9 setObject:(&off_1000A6B50)[a4] forKeyedSubscript:@"macbuddy_on"];
  }

  [v9 setObject:v11 forKeyedSubscript:@"service"];
  [(TCCDPlatform *)self sendAnalyticsAsyncWithEventName:@"com.apple.TCC.authorization_action" fields:v9];
}

- (void)sendAnalyticsForAction:(int64_t)a3 service:(id)a4 subjectIdentity:(id)a5 indirectObjectIdentity:(id)a6 authValue:(unint64_t)a7 includeV1AuthValue:(BOOL)a8 v1AuthValue:(unint64_t)a9 desiredAuth:(unint64_t)a10 domainReason:(id)a11 promptType:(int64_t)a12 macBuddyStatus:(int64_t)a13
{
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a11;
  if (&_AnalyticsSendEventLazy)
  {
    v27 = v20;
    v23 = v19;
    v24 = [(TCCDPlatform *)self server];
    v25 = [v24 logHandle];

    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v48 = @"com.apple.TCC.authorization_action";
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Analytics Event preparing: %{public}@", buf, 0xCu);
    }

    v30 = _NSConcreteStackBlock;
    v31 = 3221225472;
    v32 = sub_10005534C;
    v33 = &unk_1000A6AA0;
    v34 = self;
    v40 = a3;
    v19 = v23;
    v35 = v23;
    v46 = a8;
    v41 = a7;
    v42 = a12;
    v43 = a9;
    v20 = v27;
    v36 = v27;
    v37 = v21;
    v44 = a10;
    v45 = a13;
    v38 = v22;
    v39 = @"com.apple.TCC.authorization_action";
    AnalyticsSendEventLazy();

    v26 = v35;
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100055674;
    block[3] = &unk_1000A4F58;
    v29 = @"com.apple.TCC.authorization_action";
    if (qword_1000C12A8 != -1)
    {
      dispatch_once(&qword_1000C12A8, block);
    }

    v26 = v29;
  }
}

- (void)sendAnalyticsWithEventName:(id)a3 fields:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (&_AnalyticsSendEventLazy)
  {
    v8 = [(TCCDPlatform *)self server];
    v9 = [v8 logHandle];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Analytics Event preparing: %{public}@", buf, 0xCu);
    }

    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1000558A4;
    v16 = &unk_1000A6AC8;
    v17 = self;
    v18 = v6;
    v19 = v7;
    AnalyticsSendEventLazy();

    v10 = v18;
  }

  else
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10005598C;
    v11[3] = &unk_1000A4F58;
    v12 = v6;
    if (qword_1000C12B0 != -1)
    {
      dispatch_once(&qword_1000C12B0, v11);
    }

    v10 = v12;
  }
}

- (void)sendAnalyticsAsyncWithEventName:(id)a3 fields:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (&_AnalyticsSendEventLazy)
  {
    v8 = [(TCCDPlatform *)self server];
    v9 = [v8 logHandle];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Analytics Event sync preparing: %{public}@", buf, 0xCu);
    }

    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_100055BBC;
    v16 = &unk_1000A6AC8;
    v17 = self;
    v18 = v6;
    v19 = v7;
    AnalyticsSendEventLazy();

    v10 = v18;
  }

  else
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100055CA4;
    v11[3] = &unk_1000A4F58;
    v12 = v6;
    if (qword_1000C12B8 != -1)
    {
      dispatch_once(&qword_1000C12B8, v11);
    }

    v10 = v12;
  }
}

@end