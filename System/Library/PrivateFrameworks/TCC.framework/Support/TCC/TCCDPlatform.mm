@interface TCCDPlatform
+ (id)allPlatformNames;
+ (id)allTCCEntitlements;
+ (id)currentPlatform;
+ (id)iosFamilyPlatformNames;
+ (id)macOSPlatformNames;
- (NSUUID)bootUUID;
- (TCCDPlatform)initWithName:(id)name;
- (TCCDServer)server;
- (id)appBundleURLContainingExecutableURL:(id)l;
- (id)bundleURLContainingExecutableURL:(id)l;
- (id)serviceByName:(id)name;
- (id)stringForAnalyticsAction:(int64_t)action;
- (void)loadConfigurationDictionary;
- (void)sendAnalyticsAsyncWithEventName:(id)name fields:(id)fields;
- (void)sendAnalyticsForAction:(int64_t)action service:(id)service subjectIdentity:(id)identity indirectObjectIdentity:(id)objectIdentity authValue:(unint64_t)value includeV1AuthValue:(BOOL)authValue v1AuthValue:(unint64_t)v1AuthValue desiredAuth:(unint64_t)self0 domainReason:(id)self1 promptType:(int64_t)self2 macBuddyStatus:(int64_t)self3;
- (void)sendAnalyticsForEntitlement:(id)entitlement withIdentifier:(id)identifier service:(id)service function:(id)function;
- (void)sendAnalyticsForExternal:(id)external withMacBuddyStatus:(int64_t)status function:(id)function;
- (void)sendAnalyticsForPlugin:(id)plugin service:(id)service API:(id)i;
- (void)sendAnalyticsWithEventName:(id)name fields:(id)fields;
- (void)updateAnalyticsEvent:(id)event fromIdentity:(id)identity keyPrefix:(id)prefix;
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

- (TCCDPlatform)initWithName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = TCCDPlatform;
  v5 = [(TCCDPlatform *)&v9 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    name = v5->_name;
    v5->_name = v6;
  }

  return v5;
}

- (void)loadConfigurationDictionary
{
  server = [(TCCDPlatform *)self server];
  allowsInternalSecurityPolicies = [server allowsInternalSecurityPolicies];

  if (allowsInternalSecurityPolicies)
  {
    server2 = [(TCCDPlatform *)self server];
    stateDirectory = [server2 stateDirectory];
    v7 = [stateDirectory stringByAppendingPathComponent:@"tccd-config.plist"];

    v8 = [NSData dataWithContentsOfFile:v7 options:0 error:0];
    if (v8)
    {
      v18 = 0;
      v9 = [NSPropertyListSerialization propertyListWithData:v8 options:0 format:0 error:&v18];
      v10 = v18;
      configurationDictionary = self->_configurationDictionary;
      self->_configurationDictionary = v9;

      v12 = self->_configurationDictionary;
      server3 = [(TCCDPlatform *)self server];
      logHandle = [server3 logHandle];

      if (v12)
      {
        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
        {
          v15 = self->_configurationDictionary;
          *buf = 138543618;
          v20 = v7;
          v21 = 2114;
          v22 = v15;
          _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_INFO, "Using config file at %{public}@: contents:\n%{public}@", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        sub_100055EB0(v7, v10, logHandle);
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

- (id)serviceByName:(id)name
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005426C;
  block[3] = &unk_1000A4F58;
  block[4] = self;
  v4 = qword_1000C1298;
  nameCopy = name;
  if (v4 != -1)
  {
    dispatch_once(&qword_1000C1298, block);
  }

  servicesByName = [(TCCDPlatform *)self servicesByName];
  v7 = [servicesByName objectForKeyedSubscript:nameCopy];

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

        server = [(TCCDPlatform *)self server];
        logHandle = [server logHandle];

        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
        {
          *v9 = 0;
          _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Successfully loaded bootUUID", v9, 2u);
        }
      }
    }

    bootUUID = self->_bootUUID;
  }

  return bootUUID;
}

- (id)bundleURLContainingExecutableURL:(id)l
{
  v3 = _CFBundleCopyBundleURLForExecutableURL();
  absoluteURL = [v3 absoluteURL];

  return absoluteURL;
}

- (id)appBundleURLContainingExecutableURL:(id)l
{
  lCopy = l;
  selfCopy = self;
  v5 = [(TCCDPlatform *)self bundleURLContainingExecutableURL:lCopy];
  v6 = v5;
  if (v5)
  {
    v30 = lCopy;
    pathComponents = [v5 pathComponents];
    v8 = [pathComponents objectAtIndexedSubscript:0];
    v9 = [NSURL fileURLWithPath:v8];

    if ([pathComponents count] >= 2)
    {
      v11 = 2;
      v12 = 1;
      *&v10 = 138412546;
      v29 = v10;
      do
      {
        v13 = v9;
        v14 = [pathComponents objectAtIndexedSubscript:{v12, v29}];
        v9 = [v9 URLByAppendingPathComponent:v14];

        if (!v9)
        {
          break;
        }

        pathExtension = [v9 pathExtension];
        v16 = [pathExtension caseInsensitiveCompare:@"app"];

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
              server = [(TCCDPlatform *)selfCopy server];
              logHandle = [server logHandle];

              v28 = os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG);
              lCopy = v30;
              if (v28)
              {
                sub_100055F90(v30, v9, logHandle);
              }

              v9 = v9;
              v24 = v9;
              goto LABEL_15;
            }
          }

          else
          {
            server2 = [(TCCDPlatform *)selfCopy server];
            logHandle2 = [server2 logHandle];

            if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_INFO))
            {
              path = [v9 path];
              *buf = v29;
              v35 = path;
              v36 = 2114;
              v37 = v19;
              _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_INFO, "Failed to get NSURLIsApplicationKey for %@: %{public}@", buf, 0x16u);
            }
          }
        }

        v12 = v11;
      }

      while ([pathComponents count] > v11++);
    }

    v24 = v6;
    lCopy = v30;
LABEL_15:
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)stringForAnalyticsAction:(int64_t)action
{
  if (action > 7)
  {
    return @"<Invalid Action>";
  }

  else
  {
    return off_1000A6B10[action];
  }
}

- (void)updateAnalyticsEvent:(id)event fromIdentity:(id)identity keyPrefix:(id)prefix
{
  eventCopy = event;
  identityCopy = identity;
  prefixCopy = prefix;
  v9 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [identityCopy client_type]);
  v10 = [prefixCopy stringByAppendingString:@"_ID_type"];
  [eventCopy setObject:v9 forKeyedSubscript:v10];

  if (![identityCopy client_type])
  {
    bundle = [identityCopy bundle];

    if (bundle)
    {
      bundle2 = [identityCopy bundle];
      bundleIdentifier = [bundle2 bundleIdentifier];
      v17 = [prefixCopy stringByAppendingString:@"_ID"];
      [eventCopy setObject:bundleIdentifier forKeyedSubscript:v17];

      bundle3 = [identityCopy bundle];
      bundleVersion = [bundle3 bundleVersion];
      v18 = [prefixCopy stringByAppendingString:@"_bundle_version"];
      [eventCopy setObject:bundleVersion forKeyedSubscript:v18];

      goto LABEL_7;
    }
  }

  if ([identityCopy client_type] == 1)
  {
    path = [identityCopy path];

    if (path)
    {
      bundle3 = [identityCopy path];
      bundleVersion = [prefixCopy stringByAppendingString:@"_ID"];
      [eventCopy setObject:bundle3 forKeyedSubscript:bundleVersion];
LABEL_7:
    }
  }
}

- (void)sendAnalyticsForPlugin:(id)plugin service:(id)service API:(id)i
{
  pluginCopy = plugin;
  serviceCopy = service;
  iCopy = i;
  if (&_AnalyticsSendEventLazy)
  {
    server = [(TCCDPlatform *)self server];
    logHandle = [server logHandle];

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
    {
      name = [serviceCopy name];
      *buf = 138544130;
      v21 = @"com.apple.TCC.management_action";
      v22 = 2114;
      v23 = pluginCopy;
      v24 = 2114;
      v25 = iCopy;
      v26 = 2114;
      v27 = name;
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_INFO, "Sending %{public}@ Analytics Event for plugin=%{public}@, API=%{public}@, service=%{public}@", buf, 0x2Au);
    }

    v16[1] = _NSConcreteStackBlock;
    v16[2] = 3221225472;
    v16[3] = sub_100054D8C;
    v16[4] = &unk_1000A6A78;
    v14 = &v17;
    v17 = serviceCopy;
    v18 = iCopy;
    v19 = pluginCopy;
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

- (void)sendAnalyticsForEntitlement:(id)entitlement withIdentifier:(id)identifier service:(id)service function:(id)function
{
  serviceCopy = service;
  functionCopy = function;
  identifierCopy = identifier;
  entitlementCopy = entitlement;
  v13 = objc_alloc_init(NSMutableDictionary);
  [v13 setObject:functionCopy forKeyedSubscript:@"function_name"];

  [v13 setObject:entitlementCopy forKeyedSubscript:@"entitlement"];
  [v13 setObject:identifierCopy forKeyedSubscript:@"subject_ID"];

  if (serviceCopy)
  {
    name = [serviceCopy name];
    [v13 setObject:name forKeyedSubscript:@"service"];
  }

  else
  {
    [v13 setObject:&stru_1000A7240 forKeyedSubscript:@"service"];
  }

  [(TCCDPlatform *)self sendAnalyticsAsyncWithEventName:@"com.apple.TCC.entitlement_usage" fields:v13];
}

- (void)sendAnalyticsForExternal:(id)external withMacBuddyStatus:(int64_t)status function:(id)function
{
  externalCopy = external;
  functionCopy = function;
  v9 = objc_alloc_init(NSMutableDictionary);
  v10 = [(TCCDPlatform *)self stringForAnalyticsAction:7];
  [v9 setObject:v10 forKeyedSubscript:@"action"];

  [v9 setObject:functionCopy forKeyedSubscript:@"function_name"];
  if (status <= 2)
  {
    [v9 setObject:(&off_1000A6B50)[status] forKeyedSubscript:@"macbuddy_on"];
  }

  [v9 setObject:externalCopy forKeyedSubscript:@"service"];
  [(TCCDPlatform *)self sendAnalyticsAsyncWithEventName:@"com.apple.TCC.authorization_action" fields:v9];
}

- (void)sendAnalyticsForAction:(int64_t)action service:(id)service subjectIdentity:(id)identity indirectObjectIdentity:(id)objectIdentity authValue:(unint64_t)value includeV1AuthValue:(BOOL)authValue v1AuthValue:(unint64_t)v1AuthValue desiredAuth:(unint64_t)self0 domainReason:(id)self1 promptType:(int64_t)self2 macBuddyStatus:(int64_t)self3
{
  serviceCopy = service;
  identityCopy = identity;
  objectIdentityCopy = objectIdentity;
  reasonCopy = reason;
  if (&_AnalyticsSendEventLazy)
  {
    v27 = identityCopy;
    v23 = serviceCopy;
    server = [(TCCDPlatform *)self server];
    logHandle = [server logHandle];

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v48 = @"com.apple.TCC.authorization_action";
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_INFO, "Analytics Event preparing: %{public}@", buf, 0xCu);
    }

    v30 = _NSConcreteStackBlock;
    v31 = 3221225472;
    v32 = sub_10005534C;
    v33 = &unk_1000A6AA0;
    selfCopy = self;
    actionCopy = action;
    serviceCopy = v23;
    v35 = v23;
    authValueCopy = authValue;
    valueCopy = value;
    typeCopy = type;
    v1AuthValueCopy = v1AuthValue;
    identityCopy = v27;
    v36 = v27;
    v37 = objectIdentityCopy;
    authCopy = auth;
    statusCopy = status;
    v38 = reasonCopy;
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

- (void)sendAnalyticsWithEventName:(id)name fields:(id)fields
{
  nameCopy = name;
  fieldsCopy = fields;
  if (&_AnalyticsSendEventLazy)
  {
    server = [(TCCDPlatform *)self server];
    logHandle = [server logHandle];

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v21 = nameCopy;
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_INFO, "Analytics Event preparing: %{public}@", buf, 0xCu);
    }

    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1000558A4;
    v16 = &unk_1000A6AC8;
    selfCopy = self;
    v18 = nameCopy;
    v19 = fieldsCopy;
    AnalyticsSendEventLazy();

    v10 = v18;
  }

  else
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10005598C;
    v11[3] = &unk_1000A4F58;
    v12 = nameCopy;
    if (qword_1000C12B0 != -1)
    {
      dispatch_once(&qword_1000C12B0, v11);
    }

    v10 = v12;
  }
}

- (void)sendAnalyticsAsyncWithEventName:(id)name fields:(id)fields
{
  nameCopy = name;
  fieldsCopy = fields;
  if (&_AnalyticsSendEventLazy)
  {
    server = [(TCCDPlatform *)self server];
    logHandle = [server logHandle];

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v21 = nameCopy;
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_INFO, "Analytics Event sync preparing: %{public}@", buf, 0xCu);
    }

    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_100055BBC;
    v16 = &unk_1000A6AC8;
    selfCopy = self;
    v18 = nameCopy;
    v19 = fieldsCopy;
    AnalyticsSendEventLazy();

    v10 = v18;
  }

  else
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100055CA4;
    v11[3] = &unk_1000A4F58;
    v12 = nameCopy;
    if (qword_1000C12B8 != -1)
    {
      dispatch_once(&qword_1000C12B8, v11);
    }

    v10 = v12;
  }
}

@end