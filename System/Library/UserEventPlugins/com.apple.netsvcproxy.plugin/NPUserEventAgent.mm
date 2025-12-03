@interface NPUserEventAgent
+ (id)sharedAgent;
- (void)handleProviderAction:(int64_t)action token:(unint64_t)token event:(id)event;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)registerForCaptivePluginListChangedNotification;
- (void)registerForDynamicStoreChanges;
- (void)registerForUserActivityNotifications;
- (void)setConfigurationFetchInterval:(int64_t)interval;
- (void)setDirectPathProbeInterval:(int64_t)interval;
- (void)setLocationMonitorInterval:(double)interval;
- (void)setODoHAuthOutageRestoreInterval:(int64_t)interval;
- (void)setODoHRestoreInterval:(int64_t)interval;
- (void)setProxyPathProbeInterval:(int64_t)interval;
- (void)setProxyRestoreInterval:(int64_t)interval;
- (void)setResurrectionInterval:(int64_t)interval;
- (void)setSubscriptionCheckInterval:(int64_t)interval;
- (void)setTokenFetchInterval:(int64_t)interval;
- (void)setTokenIssuanceRestrictedUntilInterval:(int64_t)interval;
- (void)unregisterForUserActivityNotifications;
- (void)unwatchForPathChanges;
- (void)watchForPathChanges;
@end

@implementation NPUserEventAgent

+ (id)sharedAgent
{
  if (qword_17E50 != -1)
  {
    sub_AD7C();
  }

  v3 = qword_17E48;

  return v3;
}

- (void)setResurrectionInterval:(int64_t)interval
{
  resurrectionTimer = [(NPUserEventAgent *)self resurrectionTimer];

  if (resurrectionTimer)
  {
    resurrectionTimer2 = [(NPUserEventAgent *)self resurrectionTimer];
    [resurrectionTimer2 invalidate];

    [(NPUserEventAgent *)self setResurrectionTimer:0];
  }

  if (interval < 1)
  {

    [(NPUserEventAgent *)self setResurrectionDate:0];
  }

  else
  {
    v7 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:interval];
    [(NPUserEventAgent *)self setResurrectionDate:v7];

    resurrectionDate = [(NPUserEventAgent *)self resurrectionDate];
    [resurrectionDate timeIntervalSinceNow];
    v10 = v9;

    if (v10 > 0.0)
    {
      v11 = [NSTimer alloc];
      resurrectionDate2 = [(NPUserEventAgent *)self resurrectionDate];
      v13 = [v11 initWithFireDate:resurrectionDate2 interval:0 repeats:&stru_14A50 block:0.0];
      [(NPUserEventAgent *)self setResurrectionTimer:v13];

      resurrectionTimer3 = [(NPUserEventAgent *)self resurrectionTimer];

      if (resurrectionTimer3)
      {
        v17 = +[NSRunLoop mainRunLoop];
        resurrectionTimer4 = [(NPUserEventAgent *)self resurrectionTimer];
        [v17 addTimer:resurrectionTimer4 forMode:NSDefaultRunLoopMode];
      }

      else
      {
        v16 = nplog_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_AD90();
        }
      }
    }
  }
}

- (void)setConfigurationFetchInterval:(int64_t)interval
{
  configurationFetchTimer = [(NPUserEventAgent *)self configurationFetchTimer];

  if (configurationFetchTimer)
  {
    configurationFetchTimer2 = [(NPUserEventAgent *)self configurationFetchTimer];
    [configurationFetchTimer2 invalidate];

    [(NPUserEventAgent *)self setConfigurationFetchTimer:0];
  }

  if (interval < 1)
  {

    [(NPUserEventAgent *)self setConfigurationFetchDate:0];
  }

  else
  {
    v7 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:interval];
    [(NPUserEventAgent *)self setConfigurationFetchDate:v7];

    configurationFetchDate = [(NPUserEventAgent *)self configurationFetchDate];
    [configurationFetchDate timeIntervalSinceNow];
    v10 = v9;

    if (v10 > 0.0)
    {
      v11 = [NSTimer alloc];
      configurationFetchDate2 = [(NPUserEventAgent *)self configurationFetchDate];
      v13 = [v11 initWithFireDate:configurationFetchDate2 interval:0 repeats:&stru_14A70 block:0.0];
      [(NPUserEventAgent *)self setConfigurationFetchTimer:v13];

      configurationFetchTimer3 = [(NPUserEventAgent *)self configurationFetchTimer];

      if (configurationFetchTimer3)
      {
        v17 = +[NSRunLoop mainRunLoop];
        configurationFetchTimer4 = [(NPUserEventAgent *)self configurationFetchTimer];
        [v17 addTimer:configurationFetchTimer4 forMode:NSDefaultRunLoopMode];
      }

      else
      {
        v16 = nplog_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_ADC4();
        }
      }
    }
  }
}

- (void)setTokenFetchInterval:(int64_t)interval
{
  tokenFetchTimer = [(NPUserEventAgent *)self tokenFetchTimer];

  if (tokenFetchTimer)
  {
    tokenFetchTimer2 = [(NPUserEventAgent *)self tokenFetchTimer];
    [tokenFetchTimer2 invalidate];

    [(NPUserEventAgent *)self setTokenFetchTimer:0];
  }

  if (interval < 1)
  {

    [(NPUserEventAgent *)self setTokenFetchDate:0];
  }

  else
  {
    v7 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:interval];
    [(NPUserEventAgent *)self setTokenFetchDate:v7];

    tokenFetchDate = [(NPUserEventAgent *)self tokenFetchDate];
    [tokenFetchDate timeIntervalSinceNow];
    v10 = v9;

    if (v10 > 0.0)
    {
      v11 = [NSTimer alloc];
      tokenFetchDate2 = [(NPUserEventAgent *)self tokenFetchDate];
      v13 = [v11 initWithFireDate:tokenFetchDate2 interval:0 repeats:&stru_14A90 block:0.0];
      [(NPUserEventAgent *)self setTokenFetchTimer:v13];

      tokenFetchTimer3 = [(NPUserEventAgent *)self tokenFetchTimer];

      if (tokenFetchTimer3)
      {
        v17 = +[NSRunLoop mainRunLoop];
        tokenFetchTimer4 = [(NPUserEventAgent *)self tokenFetchTimer];
        [v17 addTimer:tokenFetchTimer4 forMode:NSDefaultRunLoopMode];
      }

      else
      {
        v16 = nplog_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_ADF8();
        }
      }
    }
  }
}

- (void)setTokenIssuanceRestrictedUntilInterval:(int64_t)interval
{
  tokenIssuanceRestrictedUntilTimer = [(NPUserEventAgent *)self tokenIssuanceRestrictedUntilTimer];

  if (tokenIssuanceRestrictedUntilTimer)
  {
    tokenIssuanceRestrictedUntilTimer2 = [(NPUserEventAgent *)self tokenIssuanceRestrictedUntilTimer];
    [tokenIssuanceRestrictedUntilTimer2 invalidate];

    [(NPUserEventAgent *)self setTokenIssuanceRestrictedUntilTimer:0];
  }

  if (interval < 1)
  {

    [(NPUserEventAgent *)self setTokenIssuanceRestrictedUntilDate:0];
  }

  else
  {
    v7 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:interval];
    [(NPUserEventAgent *)self setTokenIssuanceRestrictedUntilDate:v7];

    tokenIssuanceRestrictedUntilDate = [(NPUserEventAgent *)self tokenIssuanceRestrictedUntilDate];
    [tokenIssuanceRestrictedUntilDate timeIntervalSinceNow];
    v10 = v9;

    if (v10 > 0.0)
    {
      v11 = [NSTimer alloc];
      tokenIssuanceRestrictedUntilDate2 = [(NPUserEventAgent *)self tokenIssuanceRestrictedUntilDate];
      v13 = [v11 initWithFireDate:tokenIssuanceRestrictedUntilDate2 interval:0 repeats:&stru_14AB0 block:0.0];
      [(NPUserEventAgent *)self setTokenIssuanceRestrictedUntilTimer:v13];

      tokenIssuanceRestrictedUntilTimer3 = [(NPUserEventAgent *)self tokenIssuanceRestrictedUntilTimer];

      if (tokenIssuanceRestrictedUntilTimer3)
      {
        v17 = +[NSRunLoop mainRunLoop];
        tokenIssuanceRestrictedUntilTimer4 = [(NPUserEventAgent *)self tokenIssuanceRestrictedUntilTimer];
        [v17 addTimer:tokenIssuanceRestrictedUntilTimer4 forMode:NSDefaultRunLoopMode];
      }

      else
      {
        v16 = nplog_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_AE2C();
        }
      }
    }
  }
}

- (void)setSubscriptionCheckInterval:(int64_t)interval
{
  subscriptionCheckTimer = [(NPUserEventAgent *)self subscriptionCheckTimer];

  if (subscriptionCheckTimer)
  {
    subscriptionCheckTimer2 = [(NPUserEventAgent *)self subscriptionCheckTimer];
    [subscriptionCheckTimer2 invalidate];

    [(NPUserEventAgent *)self setSubscriptionCheckTimer:0];
  }

  if (interval < 1)
  {

    [(NPUserEventAgent *)self setSubscriptionCheckDate:0];
  }

  else
  {
    v7 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:interval];
    [(NPUserEventAgent *)self setSubscriptionCheckDate:v7];

    subscriptionCheckDate = [(NPUserEventAgent *)self subscriptionCheckDate];
    [subscriptionCheckDate timeIntervalSinceNow];
    v10 = v9;

    if (v10 > 0.0)
    {
      v11 = [NSTimer alloc];
      subscriptionCheckDate2 = [(NPUserEventAgent *)self subscriptionCheckDate];
      v13 = [v11 initWithFireDate:subscriptionCheckDate2 interval:0 repeats:&stru_14AD0 block:0.0];
      [(NPUserEventAgent *)self setSubscriptionCheckTimer:v13];

      subscriptionCheckTimer3 = [(NPUserEventAgent *)self subscriptionCheckTimer];

      if (subscriptionCheckTimer3)
      {
        v17 = +[NSRunLoop mainRunLoop];
        subscriptionCheckTimer4 = [(NPUserEventAgent *)self subscriptionCheckTimer];
        [v17 addTimer:subscriptionCheckTimer4 forMode:NSDefaultRunLoopMode];
      }

      else
      {
        v16 = nplog_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_AE60();
        }
      }
    }
  }
}

- (void)setProxyRestoreInterval:(int64_t)interval
{
  proxyRestoreTimer = [(NPUserEventAgent *)self proxyRestoreTimer];

  if (proxyRestoreTimer)
  {
    proxyRestoreTimer2 = [(NPUserEventAgent *)self proxyRestoreTimer];
    [proxyRestoreTimer2 invalidate];

    [(NPUserEventAgent *)self setProxyRestoreTimer:0];
  }

  if (interval < 1)
  {

    [(NPUserEventAgent *)self setProxyRestoreDate:0];
  }

  else
  {
    v7 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:interval];
    [(NPUserEventAgent *)self setProxyRestoreDate:v7];

    proxyRestoreDate = [(NPUserEventAgent *)self proxyRestoreDate];
    [proxyRestoreDate timeIntervalSinceNow];
    v10 = v9;

    if (v10 > 0.0)
    {
      v11 = [NSTimer alloc];
      proxyRestoreDate2 = [(NPUserEventAgent *)self proxyRestoreDate];
      v13 = [v11 initWithFireDate:proxyRestoreDate2 interval:0 repeats:&stru_14AF0 block:0.0];
      [(NPUserEventAgent *)self setProxyRestoreTimer:v13];

      proxyRestoreTimer3 = [(NPUserEventAgent *)self proxyRestoreTimer];

      if (proxyRestoreTimer3)
      {
        v17 = +[NSRunLoop mainRunLoop];
        proxyRestoreTimer4 = [(NPUserEventAgent *)self proxyRestoreTimer];
        [v17 addTimer:proxyRestoreTimer4 forMode:NSDefaultRunLoopMode];
      }

      else
      {
        v16 = nplog_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_AE94();
        }
      }
    }
  }
}

- (void)setODoHRestoreInterval:(int64_t)interval
{
  odohRestoreTimer = [(NPUserEventAgent *)self odohRestoreTimer];

  if (odohRestoreTimer)
  {
    odohRestoreTimer2 = [(NPUserEventAgent *)self odohRestoreTimer];
    [odohRestoreTimer2 invalidate];

    [(NPUserEventAgent *)self setOdohRestoreTimer:0];
  }

  if (interval < 1)
  {

    [(NPUserEventAgent *)self setOdohRestoreDate:0];
  }

  else
  {
    v7 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:interval];
    [(NPUserEventAgent *)self setOdohRestoreDate:v7];

    odohRestoreDate = [(NPUserEventAgent *)self odohRestoreDate];
    [odohRestoreDate timeIntervalSinceNow];
    v10 = v9;

    if (v10 > 0.0)
    {
      v11 = [NSTimer alloc];
      odohRestoreDate2 = [(NPUserEventAgent *)self odohRestoreDate];
      v13 = [v11 initWithFireDate:odohRestoreDate2 interval:0 repeats:&stru_14B10 block:0.0];
      [(NPUserEventAgent *)self setOdohRestoreTimer:v13];

      odohRestoreTimer3 = [(NPUserEventAgent *)self odohRestoreTimer];

      if (odohRestoreTimer3)
      {
        v17 = +[NSRunLoop mainRunLoop];
        odohRestoreTimer4 = [(NPUserEventAgent *)self odohRestoreTimer];
        [v17 addTimer:odohRestoreTimer4 forMode:NSDefaultRunLoopMode];
      }

      else
      {
        v16 = nplog_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_AEC8();
        }
      }
    }
  }
}

- (void)setODoHAuthOutageRestoreInterval:(int64_t)interval
{
  odohAuthOutageRestoreTimer = [(NPUserEventAgent *)self odohAuthOutageRestoreTimer];

  if (odohAuthOutageRestoreTimer)
  {
    odohAuthOutageRestoreTimer2 = [(NPUserEventAgent *)self odohAuthOutageRestoreTimer];
    [odohAuthOutageRestoreTimer2 invalidate];

    [(NPUserEventAgent *)self setOdohAuthOutageRestoreTimer:0];
  }

  if (interval < 1)
  {

    [(NPUserEventAgent *)self setOdohAuthOutageRestoreDate:0];
  }

  else
  {
    v7 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:interval];
    [(NPUserEventAgent *)self setOdohAuthOutageRestoreDate:v7];

    odohAuthOutageRestoreDate = [(NPUserEventAgent *)self odohAuthOutageRestoreDate];
    [odohAuthOutageRestoreDate timeIntervalSinceNow];
    v10 = v9;

    if (v10 > 0.0)
    {
      v11 = [NSTimer alloc];
      odohAuthOutageRestoreDate2 = [(NPUserEventAgent *)self odohAuthOutageRestoreDate];
      v13 = [v11 initWithFireDate:odohAuthOutageRestoreDate2 interval:0 repeats:&stru_14B30 block:0.0];
      [(NPUserEventAgent *)self setOdohAuthOutageRestoreTimer:v13];

      odohAuthOutageRestoreTimer3 = [(NPUserEventAgent *)self odohAuthOutageRestoreTimer];

      if (odohAuthOutageRestoreTimer3)
      {
        v17 = +[NSRunLoop mainRunLoop];
        odohAuthOutageRestoreTimer4 = [(NPUserEventAgent *)self odohAuthOutageRestoreTimer];
        [v17 addTimer:odohAuthOutageRestoreTimer4 forMode:NSDefaultRunLoopMode];
      }

      else
      {
        v16 = nplog_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_AEFC();
        }
      }
    }
  }
}

- (void)setProxyPathProbeInterval:(int64_t)interval
{
  proxyPathProbeTimer = [(NPUserEventAgent *)self proxyPathProbeTimer];

  if (proxyPathProbeTimer)
  {
    proxyPathProbeTimer2 = [(NPUserEventAgent *)self proxyPathProbeTimer];
    [proxyPathProbeTimer2 invalidate];

    [(NPUserEventAgent *)self setProxyPathProbeTimer:0];
  }

  if (interval < 1)
  {

    [(NPUserEventAgent *)self setProxyPathProbeTimer:0];
  }

  else
  {
    v7 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:interval];
    [(NPUserEventAgent *)self setProxyPathProbeDate:v7];

    proxyPathProbeDate = [(NPUserEventAgent *)self proxyPathProbeDate];
    [proxyPathProbeDate timeIntervalSinceNow];
    v10 = v9;

    if (v10 > 0.0)
    {
      v11 = [NSTimer alloc];
      proxyPathProbeDate2 = [(NPUserEventAgent *)self proxyPathProbeDate];
      v13 = [v11 initWithFireDate:proxyPathProbeDate2 interval:0 repeats:&stru_14B50 block:0.0];
      [(NPUserEventAgent *)self setProxyPathProbeTimer:v13];

      proxyPathProbeTimer3 = [(NPUserEventAgent *)self proxyPathProbeTimer];

      if (proxyPathProbeTimer3)
      {
        v17 = +[NSRunLoop mainRunLoop];
        proxyPathProbeTimer4 = [(NPUserEventAgent *)self proxyPathProbeTimer];
        [v17 addTimer:proxyPathProbeTimer4 forMode:NSDefaultRunLoopMode];
      }

      else
      {
        v16 = nplog_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_AF30();
        }
      }
    }
  }
}

- (void)setDirectPathProbeInterval:(int64_t)interval
{
  directPathProbeTimer = [(NPUserEventAgent *)self directPathProbeTimer];

  if (directPathProbeTimer)
  {
    directPathProbeTimer2 = [(NPUserEventAgent *)self directPathProbeTimer];
    [directPathProbeTimer2 invalidate];

    [(NPUserEventAgent *)self setDirectPathProbeTimer:0];
  }

  if (interval < 1)
  {

    [(NPUserEventAgent *)self setDirectPathProbeTimer:0];
  }

  else
  {
    v7 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:interval];
    [(NPUserEventAgent *)self setDirectPathProbeDate:v7];

    directPathProbeDate = [(NPUserEventAgent *)self directPathProbeDate];
    [directPathProbeDate timeIntervalSinceNow];
    v10 = v9;

    if (v10 > 0.0)
    {
      v11 = [NSTimer alloc];
      directPathProbeDate2 = [(NPUserEventAgent *)self directPathProbeDate];
      v13 = [v11 initWithFireDate:directPathProbeDate2 interval:0 repeats:&stru_14B70 block:0.0];
      [(NPUserEventAgent *)self setDirectPathProbeTimer:v13];

      directPathProbeTimer3 = [(NPUserEventAgent *)self directPathProbeTimer];

      if (directPathProbeTimer3)
      {
        v17 = +[NSRunLoop mainRunLoop];
        directPathProbeTimer4 = [(NPUserEventAgent *)self directPathProbeTimer];
        [v17 addTimer:directPathProbeTimer4 forMode:NSDefaultRunLoopMode];
      }

      else
      {
        v16 = nplog_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_AF64();
        }
      }
    }
  }
}

- (void)setLocationMonitorInterval:(double)interval
{
  locationMonitorTimer = [(NPUserEventAgent *)self locationMonitorTimer];

  if (locationMonitorTimer)
  {
    locationMonitorTimer2 = [(NPUserEventAgent *)self locationMonitorTimer];
    [locationMonitorTimer2 invalidate];

    [(NPUserEventAgent *)self setLocationMonitorTimer:0];
  }

  if (interval >= 300.0)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_8C0C;
    v11[3] = &unk_14B98;
    v11[4] = self;
    v7 = [NSTimer timerWithTimeInterval:0 repeats:v11 block:interval];
    [(NPUserEventAgent *)self setLocationMonitorTimer:v7];

    locationMonitorTimer3 = [(NPUserEventAgent *)self locationMonitorTimer];

    if (locationMonitorTimer3)
    {
      v9 = +[NSRunLoop mainRunLoop];
      locationMonitorTimer4 = [(NPUserEventAgent *)self locationMonitorTimer];
      [v9 addTimer:locationMonitorTimer4 forMode:NSDefaultRunLoopMode];
    }

    else
    {
      v9 = nplog_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_AF98();
      }
    }
  }
}

- (void)watchForPathChanges
{
  if (![(NPUserEventAgent *)self isObservingPath])
  {
    v3 = +[NWPathEvaluator sharedDefaultEvaluator];
    [v3 addObserver:self forKeyPath:@"path" options:0 context:0];

    [(NPUserEventAgent *)self setIsObservingPath:1];
  }
}

- (void)unwatchForPathChanges
{
  if ([(NPUserEventAgent *)self isObservingPath])
  {
    v3 = +[NWPathEvaluator sharedDefaultEvaluator];
    [v3 removeObserver:self forKeyPath:@"path"];

    [(NPUserEventAgent *)self setIsObservingPath:0];
  }
}

- (void)registerForCaptivePluginListChangedNotification
{
  if (qword_17E58 != -1)
  {
    sub_B00C();
  }
}

- (void)registerForUserActivityNotifications
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8F88;
  block[3] = &unk_14940;
  block[4] = self;
  if (qword_17E60 != -1)
  {
    dispatch_once(&qword_17E60, block);
  }
}

- (void)unregisterForUserActivityNotifications
{
  if ([(NPUserEventAgent *)self userActivityNotificationHandle])
  {
    userActivityNotificationHandle = [(NPUserEventAgent *)self userActivityNotificationHandle];

    _IOPMUnregisterNotification(userActivityNotificationHandle);
  }
}

- (void)registerForDynamicStoreChanges
{
  if (![(NPUserEventAgent *)self dynamicStore])
  {
    [(NPUserEventAgent *)self setDynamicStore:SCDynamicStoreCreate(kCFAllocatorDefault, @"networkserviceproxy event agent", sub_929C, 0)];
    if ([(NPUserEventAgent *)self dynamicStore])
    {
      dynamicStore = [(NPUserEventAgent *)self dynamicStore];
      v4 = dispatch_get_global_queue(0, 0);
      LODWORD(dynamicStore) = SCDynamicStoreSetDispatchQueue(dynamicStore, v4);

      if (dynamicStore)
      {
        v5 = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetPvD);
        v6 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainSetup, kSCCompAnyRegex, 0);
        v8[0] = v6;
        v8[1] = v5;
        if (!SCDynamicStoreSetNotificationKeys([(NPUserEventAgent *)self dynamicStore], 0, [NSArray arrayWithObjects:v8 count:2]))
        {
          v7 = nplog_obj();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            sub_B088();
          }
        }
      }

      else
      {
        v5 = nplog_obj();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          sub_B108();
        }
      }
    }

    else
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_B188();
      }
    }
  }
}

- (void)handleProviderAction:(int64_t)action token:(unint64_t)token event:(id)event
{
  eventCopy = event;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (action == 1 && eventCopy)
  {
    [(NPUserEventAgent *)selfCopy setEventToken:token];
    int64 = xpc_dictionary_get_int64(eventCopy, "PID");
    if (int64)
    {
      v11 = nplog_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v35) = 67109120;
        DWORD1(v35) = int64;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Got pid %d", &v35, 8u);
      }

      v12 = +[NSPUserEventAgentFileHandleMaintainer sharedEventAgentMaintainer];
      [v12 launchOwner];
    }

    if (xpc_dictionary_get_int64(eventCopy, "ResurrectionDate"))
    {
      [(NPUserEventAgent *)selfCopy setResurrectionInterval:xpc_dictionary_get_int64(eventCopy, "ResurrectionDate")];
    }

    if (xpc_dictionary_get_int64(eventCopy, "ConfigFetchDate"))
    {
      [(NPUserEventAgent *)selfCopy setConfigurationFetchInterval:xpc_dictionary_get_int64(eventCopy, "ConfigFetchDate")];
    }

    if (!xpc_dictionary_get_int64(eventCopy, "ConfigFetchOnNetworkChange"))
    {
LABEL_19:
      if (xpc_dictionary_get_double(eventCopy, "LocationMonitorTimeInterval") != 0.0)
      {
        [(NPUserEventAgent *)selfCopy setLocationMonitorInterval:xpc_dictionary_get_double(eventCopy, "LocationMonitorTimeInterval")];
      }

      if (xpc_dictionary_get_int64(eventCopy, "TokenFetchDate"))
      {
        [(NPUserEventAgent *)selfCopy setTokenFetchInterval:xpc_dictionary_get_int64(eventCopy, "TokenFetchDate")];
      }

      if (!xpc_dictionary_get_int64(eventCopy, "TokenFetchOnNetworkChange"))
      {
LABEL_31:
        if (xpc_dictionary_get_int64(eventCopy, "TokenIssuanceRestrictedUntilDate"))
        {
          [(NPUserEventAgent *)selfCopy setTokenIssuanceRestrictedUntilInterval:xpc_dictionary_get_int64(eventCopy, "TokenIssuanceRestrictedUntilDate")];
        }

        if (!xpc_dictionary_get_int64(eventCopy, "SubscriptionCheckOnNetworkChange"))
        {
LABEL_41:
          if (xpc_dictionary_get_int64(eventCopy, "SubscriptionCheckDate"))
          {
            [(NPUserEventAgent *)selfCopy setSubscriptionCheckInterval:xpc_dictionary_get_int64(eventCopy, "SubscriptionCheckDate")];
          }

          if (xpc_dictionary_get_int64(eventCopy, "ProxyRestoreDate"))
          {
            [(NPUserEventAgent *)selfCopy setProxyRestoreInterval:xpc_dictionary_get_int64(eventCopy, "ProxyRestoreDate")];
          }

          if (xpc_dictionary_get_int64(eventCopy, "ODoHRestoreDate"))
          {
            [(NPUserEventAgent *)selfCopy setODoHRestoreInterval:xpc_dictionary_get_int64(eventCopy, "ODoHRestoreDate")];
          }

          if (xpc_dictionary_get_int64(eventCopy, "odohAuthRestoreDate"))
          {
            [(NPUserEventAgent *)selfCopy setODoHAuthOutageRestoreInterval:xpc_dictionary_get_int64(eventCopy, "odohAuthRestoreDate")];
          }

          if (xpc_dictionary_get_int64(eventCopy, "ProxyPathProber"))
          {
            [(NPUserEventAgent *)selfCopy setProxyPathProbeInterval:xpc_dictionary_get_int64(eventCopy, "ProxyPathProber")];
          }

          if (!xpc_dictionary_get_int64(eventCopy, "ProxyPathProbeOnNetworkChange"))
          {
LABEL_59:
            if (xpc_dictionary_get_int64(eventCopy, "DirectPathProber"))
            {
              [(NPUserEventAgent *)selfCopy setDirectPathProbeInterval:xpc_dictionary_get_int64(eventCopy, "DirectPathProber")];
            }

            if (!xpc_dictionary_get_int64(eventCopy, "DirectPathProbeOnNetworkChange"))
            {
LABEL_69:
              if (!xpc_dictionary_get_int64(eventCopy, "CaptiveOutage"))
              {
                goto LABEL_77;
              }

              v28 = xpc_dictionary_get_int64(eventCopy, "CaptiveOutage");
              if (v28 == 1)
              {
                v29 = nplog_obj();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(v35) = 136315138;
                  *(&v35 + 4) = "CaptiveOutage";
                  v30 = "[%s] changed to true";
LABEL_75:
                  _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, v30, &v35, 0xCu);
                }
              }

              else
              {
                v29 = nplog_obj();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(v35) = 136315138;
                  *(&v35 + 4) = "CaptiveOutage";
                  v30 = "[%s] changed to false";
                  goto LABEL_75;
                }
              }

              [(NPUserEventAgent *)selfCopy setCaptiveOutage:v28 == 1];
LABEL_77:
              if (!xpc_dictionary_get_int64(eventCopy, "CaptiveOutageWaitingForUserActivity"))
              {
LABEL_85:
                [(NPUserEventAgent *)selfCopy registerForCaptivePluginListChangedNotification];
                [(NPUserEventAgent *)selfCopy registerForDynamicStoreChanges];
                [(NPUserEventAgent *)selfCopy registerForUserActivityNotifications];
                v34 = +[NSPUserEventAgentFileHandleMaintainer sharedEventAgentMaintainer];
                [v34 setReceivedEventToken:1];

                goto LABEL_86;
              }

              v31 = xpc_dictionary_get_int64(eventCopy, "CaptiveOutageWaitingForUserActivity");
              if (v31 == 1)
              {
                v32 = nplog_obj();
                if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(v35) = 136315138;
                  *(&v35 + 4) = "CaptiveOutageWaitingForUserActivity";
                  v33 = "[%s] changed to true";
LABEL_83:
                  _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, v33, &v35, 0xCu);
                }
              }

              else
              {
                v32 = nplog_obj();
                if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(v35) = 136315138;
                  *(&v35 + 4) = "CaptiveOutageWaitingForUserActivity";
                  v33 = "[%s] changed to false";
                  goto LABEL_83;
                }
              }

              [(NPUserEventAgent *)selfCopy setCaptiveOutageWaitingForUserActivity:v31 == 1];
              goto LABEL_85;
            }

            v25 = xpc_dictionary_get_int64(eventCopy, "DirectPathProbeOnNetworkChange");
            if (v25 == 1)
            {
              v26 = nplog_obj();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v35) = 0;
                v27 = "Got direct path probe on network change";
LABEL_67:
                _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, v27, &v35, 2u);
              }
            }

            else
            {
              v26 = nplog_obj();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v35) = 0;
                v27 = "Reset direct path on network change";
                goto LABEL_67;
              }
            }

            [(NPUserEventAgent *)selfCopy setDirectPathProbeOnNetworkChange:v25 == 1];
            goto LABEL_69;
          }

          v22 = xpc_dictionary_get_int64(eventCopy, "ProxyPathProbeOnNetworkChange");
          if (v22 == 1)
          {
            v23 = nplog_obj();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v35) = 0;
              v24 = "Got proxy path probe on network change";
LABEL_57:
              _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, v24, &v35, 2u);
            }
          }

          else
          {
            v23 = nplog_obj();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v35) = 0;
              v24 = "Reset proxy path probe on network change";
              goto LABEL_57;
            }
          }

          [(NPUserEventAgent *)selfCopy setProxyPathProbeOnNetworkChange:v22 == 1];
          goto LABEL_59;
        }

        v19 = xpc_dictionary_get_int64(eventCopy, "SubscriptionCheckOnNetworkChange");
        if (v19 == 1)
        {
          v20 = nplog_obj();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v35) = 0;
            v21 = "Got subscription check on network change";
LABEL_39:
            _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, v21, &v35, 2u);
          }
        }

        else
        {
          v20 = nplog_obj();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v35) = 0;
            v21 = "Reset token fetch on network change";
            goto LABEL_39;
          }
        }

        [(NPUserEventAgent *)selfCopy setSubscriptionCheckOnNetworkChange:v19 == 1];
        goto LABEL_41;
      }

      v16 = xpc_dictionary_get_int64(eventCopy, "TokenFetchOnNetworkChange");
      if (v16 == 1)
      {
        v17 = nplog_obj();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v35) = 0;
          v18 = "Got token fetch on network change";
LABEL_29:
          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, v18, &v35, 2u);
        }
      }

      else
      {
        v17 = nplog_obj();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v35) = 0;
          v18 = "Reset token fetch on network change";
          goto LABEL_29;
        }
      }

      [(NPUserEventAgent *)selfCopy setTokenFetchOnNetworkChange:v16 == 1];
      goto LABEL_31;
    }

    v13 = xpc_dictionary_get_int64(eventCopy, "ConfigFetchOnNetworkChange");
    if (v13 == 1)
    {
      v14 = nplog_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v35) = 0;
        v15 = "Got config fetch on network change";
LABEL_17:
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, v15, &v35, 2u);
      }
    }

    else
    {
      v14 = nplog_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v35) = 0;
        v15 = "Reset config fetch on network change";
        goto LABEL_17;
      }
    }

    [(NPUserEventAgent *)selfCopy setConfigFetchOnNetworkChange:v13 == 1];
    goto LABEL_19;
  }

LABEL_86:
  objc_sync_exit(selfCopy);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v56 = objectCopy;
  if ([pathCopy isEqualToString:@"path"])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v14 = +[NWPathEvaluator sharedDefaultEvaluator];
    path = [v14 path];
    status = [path status];

    if (status != &dword_0 + 1)
    {
      [(NPUserEventAgent *)selfCopy setWifiNetworkSignature:0];
LABEL_47:
      objc_sync_exit(selfCopy);

      goto LABEL_48;
    }

    if ([(NPUserEventAgent *)selfCopy configFetchOnNetworkChange])
    {
      v17 = nplog_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Triggering configuration fetch on network change", buf, 2u);
      }

      [(NPUserEventAgent *)selfCopy setConfigFetchOnNetworkChange:0];
      v18 = +[NSPUserEventAgentFileHandleMaintainer sharedEventAgentMaintainer];
      [v18 launchOwner];
    }

    if ([(NPUserEventAgent *)selfCopy tokenFetchOnNetworkChange])
    {
      v19 = nplog_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Triggering token fetch on network change", buf, 2u);
      }

      [(NPUserEventAgent *)selfCopy setTokenFetchOnNetworkChange:0];
      v20 = +[NSPUserEventAgentFileHandleMaintainer sharedEventAgentMaintainer];
      [v20 launchOwner];
    }

    if ([(NPUserEventAgent *)selfCopy subscriptionCheckOnNetworkChange])
    {
      v21 = nplog_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "Triggering subscription check on network change", buf, 2u);
      }

      [(NPUserEventAgent *)selfCopy setSubscriptionCheckOnNetworkChange:0];
      v22 = +[NSPUserEventAgentFileHandleMaintainer sharedEventAgentMaintainer];
      [v22 launchOwner];
    }

    v23 = +[NWPathEvaluator sharedDefaultEvaluator];
    path2 = [v23 path];
    interface = [path2 interface];
    v26 = [interface type] == &dword_0 + 1;

    if (v26)
    {
      v27 = +[NWPathEvaluator sharedDefaultEvaluator];
      path3 = [v27 path];
      v29 = [NPUtilities copyCurrentNetworkCharacteristicsForPath:path3];

      v30 = [v29 objectForKeyedSubscript:@"Signature"];
      wifiNetworkSignature = [(NPUserEventAgent *)selfCopy wifiNetworkSignature];
      v32 = v30;
      v33 = v32;
      if (!(v32 | wifiNetworkSignature) || v32 && wifiNetworkSignature && [wifiNetworkSignature isEqual:v32])
      {
      }

      else
      {

        v34 = nplog_obj();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "WiFi signature changed", buf, 2u);
        }

        [(NPUserEventAgent *)selfCopy setWifiNetworkSignature:v33];
        wifiNetworkSignature = +[NSPUserEventAgentFileHandleMaintainer sharedEventAgentMaintainer];
        [wifiNetworkSignature launchOwner];
      }
    }

    else
    {
      [(NPUserEventAgent *)selfCopy setWifiNetworkSignature:0];
    }

    v35 = +[NWPathEvaluator sharedDefaultEvaluator];
    path4 = [v35 path];
    interface2 = [path4 interface];
    if ([interface2 type] == &dword_0 + 2)
    {
    }

    else
    {
      v38 = +[NWPathEvaluator sharedDefaultEvaluator];
      path5 = [v38 path];
      interface3 = [path5 interface];
      v41 = [interface3 type] == &dword_0 + 3;

      if (!v41)
      {
        [(NPUserEventAgent *)selfCopy setNonwifiNetworkSignature:0];
        goto LABEL_47;
      }
    }

    v42 = +[NWPathEvaluator sharedDefaultEvaluator];
    path6 = [v42 path];
    v44 = [NPUtilities copyCurrentNetworkCharacteristicsForPath:path6];

    v45 = [v44 objectForKeyedSubscript:@"Signature"];
    nonwifiNetworkSignature = [(NPUserEventAgent *)selfCopy nonwifiNetworkSignature];
    v47 = v45;
    v48 = v47;
    if (!(v47 | nonwifiNetworkSignature) || v47 && nonwifiNetworkSignature && [nonwifiNetworkSignature isEqual:v47])
    {
    }

    else
    {

      v49 = +[NWPathEvaluator sharedDefaultEvaluator];
      path7 = [v49 path];
      interface4 = [path7 interface];
      type = [interface4 type];

      v53 = nplog_obj();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v54 = "Ethernet";
        if (type == &dword_0 + 2)
        {
          v54 = "Cellular";
        }

        *buf = 136315138;
        v59 = v54;
        _os_log_impl(&dword_0, v53, OS_LOG_TYPE_DEFAULT, "%s signature changed", buf, 0xCu);
      }

      [(NPUserEventAgent *)selfCopy setNonwifiNetworkSignature:v48];
      if (![(NPUserEventAgent *)selfCopy captiveOutage])
      {
        goto LABEL_45;
      }

      v55 = nplog_obj();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v55, OS_LOG_TYPE_DEFAULT, "captive outage is true, launching NSP", buf, 2u);
      }

      nonwifiNetworkSignature = +[NSPUserEventAgentFileHandleMaintainer sharedEventAgentMaintainer];
      [nonwifiNetworkSignature launchOwner];
    }

LABEL_45:
    goto LABEL_47;
  }

  v57.receiver = self;
  v57.super_class = NPUserEventAgent;
  [(NPUserEventAgent *)&v57 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
LABEL_48:
}

@end