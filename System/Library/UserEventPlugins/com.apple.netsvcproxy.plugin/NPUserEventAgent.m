@interface NPUserEventAgent
+ (id)sharedAgent;
- (void)handleProviderAction:(int64_t)a3 token:(unint64_t)a4 event:(id)a5;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)registerForCaptivePluginListChangedNotification;
- (void)registerForDynamicStoreChanges;
- (void)registerForUserActivityNotifications;
- (void)setConfigurationFetchInterval:(int64_t)a3;
- (void)setDirectPathProbeInterval:(int64_t)a3;
- (void)setLocationMonitorInterval:(double)a3;
- (void)setODoHAuthOutageRestoreInterval:(int64_t)a3;
- (void)setODoHRestoreInterval:(int64_t)a3;
- (void)setProxyPathProbeInterval:(int64_t)a3;
- (void)setProxyRestoreInterval:(int64_t)a3;
- (void)setResurrectionInterval:(int64_t)a3;
- (void)setSubscriptionCheckInterval:(int64_t)a3;
- (void)setTokenFetchInterval:(int64_t)a3;
- (void)setTokenIssuanceRestrictedUntilInterval:(int64_t)a3;
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

- (void)setResurrectionInterval:(int64_t)a3
{
  v5 = [(NPUserEventAgent *)self resurrectionTimer];

  if (v5)
  {
    v6 = [(NPUserEventAgent *)self resurrectionTimer];
    [v6 invalidate];

    [(NPUserEventAgent *)self setResurrectionTimer:0];
  }

  if (a3 < 1)
  {

    [(NPUserEventAgent *)self setResurrectionDate:0];
  }

  else
  {
    v7 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:a3];
    [(NPUserEventAgent *)self setResurrectionDate:v7];

    v8 = [(NPUserEventAgent *)self resurrectionDate];
    [v8 timeIntervalSinceNow];
    v10 = v9;

    if (v10 > 0.0)
    {
      v11 = [NSTimer alloc];
      v12 = [(NPUserEventAgent *)self resurrectionDate];
      v13 = [v11 initWithFireDate:v12 interval:0 repeats:&stru_14A50 block:0.0];
      [(NPUserEventAgent *)self setResurrectionTimer:v13];

      v14 = [(NPUserEventAgent *)self resurrectionTimer];

      if (v14)
      {
        v17 = +[NSRunLoop mainRunLoop];
        v15 = [(NPUserEventAgent *)self resurrectionTimer];
        [v17 addTimer:v15 forMode:NSDefaultRunLoopMode];
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

- (void)setConfigurationFetchInterval:(int64_t)a3
{
  v5 = [(NPUserEventAgent *)self configurationFetchTimer];

  if (v5)
  {
    v6 = [(NPUserEventAgent *)self configurationFetchTimer];
    [v6 invalidate];

    [(NPUserEventAgent *)self setConfigurationFetchTimer:0];
  }

  if (a3 < 1)
  {

    [(NPUserEventAgent *)self setConfigurationFetchDate:0];
  }

  else
  {
    v7 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:a3];
    [(NPUserEventAgent *)self setConfigurationFetchDate:v7];

    v8 = [(NPUserEventAgent *)self configurationFetchDate];
    [v8 timeIntervalSinceNow];
    v10 = v9;

    if (v10 > 0.0)
    {
      v11 = [NSTimer alloc];
      v12 = [(NPUserEventAgent *)self configurationFetchDate];
      v13 = [v11 initWithFireDate:v12 interval:0 repeats:&stru_14A70 block:0.0];
      [(NPUserEventAgent *)self setConfigurationFetchTimer:v13];

      v14 = [(NPUserEventAgent *)self configurationFetchTimer];

      if (v14)
      {
        v17 = +[NSRunLoop mainRunLoop];
        v15 = [(NPUserEventAgent *)self configurationFetchTimer];
        [v17 addTimer:v15 forMode:NSDefaultRunLoopMode];
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

- (void)setTokenFetchInterval:(int64_t)a3
{
  v5 = [(NPUserEventAgent *)self tokenFetchTimer];

  if (v5)
  {
    v6 = [(NPUserEventAgent *)self tokenFetchTimer];
    [v6 invalidate];

    [(NPUserEventAgent *)self setTokenFetchTimer:0];
  }

  if (a3 < 1)
  {

    [(NPUserEventAgent *)self setTokenFetchDate:0];
  }

  else
  {
    v7 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:a3];
    [(NPUserEventAgent *)self setTokenFetchDate:v7];

    v8 = [(NPUserEventAgent *)self tokenFetchDate];
    [v8 timeIntervalSinceNow];
    v10 = v9;

    if (v10 > 0.0)
    {
      v11 = [NSTimer alloc];
      v12 = [(NPUserEventAgent *)self tokenFetchDate];
      v13 = [v11 initWithFireDate:v12 interval:0 repeats:&stru_14A90 block:0.0];
      [(NPUserEventAgent *)self setTokenFetchTimer:v13];

      v14 = [(NPUserEventAgent *)self tokenFetchTimer];

      if (v14)
      {
        v17 = +[NSRunLoop mainRunLoop];
        v15 = [(NPUserEventAgent *)self tokenFetchTimer];
        [v17 addTimer:v15 forMode:NSDefaultRunLoopMode];
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

- (void)setTokenIssuanceRestrictedUntilInterval:(int64_t)a3
{
  v5 = [(NPUserEventAgent *)self tokenIssuanceRestrictedUntilTimer];

  if (v5)
  {
    v6 = [(NPUserEventAgent *)self tokenIssuanceRestrictedUntilTimer];
    [v6 invalidate];

    [(NPUserEventAgent *)self setTokenIssuanceRestrictedUntilTimer:0];
  }

  if (a3 < 1)
  {

    [(NPUserEventAgent *)self setTokenIssuanceRestrictedUntilDate:0];
  }

  else
  {
    v7 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:a3];
    [(NPUserEventAgent *)self setTokenIssuanceRestrictedUntilDate:v7];

    v8 = [(NPUserEventAgent *)self tokenIssuanceRestrictedUntilDate];
    [v8 timeIntervalSinceNow];
    v10 = v9;

    if (v10 > 0.0)
    {
      v11 = [NSTimer alloc];
      v12 = [(NPUserEventAgent *)self tokenIssuanceRestrictedUntilDate];
      v13 = [v11 initWithFireDate:v12 interval:0 repeats:&stru_14AB0 block:0.0];
      [(NPUserEventAgent *)self setTokenIssuanceRestrictedUntilTimer:v13];

      v14 = [(NPUserEventAgent *)self tokenIssuanceRestrictedUntilTimer];

      if (v14)
      {
        v17 = +[NSRunLoop mainRunLoop];
        v15 = [(NPUserEventAgent *)self tokenIssuanceRestrictedUntilTimer];
        [v17 addTimer:v15 forMode:NSDefaultRunLoopMode];
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

- (void)setSubscriptionCheckInterval:(int64_t)a3
{
  v5 = [(NPUserEventAgent *)self subscriptionCheckTimer];

  if (v5)
  {
    v6 = [(NPUserEventAgent *)self subscriptionCheckTimer];
    [v6 invalidate];

    [(NPUserEventAgent *)self setSubscriptionCheckTimer:0];
  }

  if (a3 < 1)
  {

    [(NPUserEventAgent *)self setSubscriptionCheckDate:0];
  }

  else
  {
    v7 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:a3];
    [(NPUserEventAgent *)self setSubscriptionCheckDate:v7];

    v8 = [(NPUserEventAgent *)self subscriptionCheckDate];
    [v8 timeIntervalSinceNow];
    v10 = v9;

    if (v10 > 0.0)
    {
      v11 = [NSTimer alloc];
      v12 = [(NPUserEventAgent *)self subscriptionCheckDate];
      v13 = [v11 initWithFireDate:v12 interval:0 repeats:&stru_14AD0 block:0.0];
      [(NPUserEventAgent *)self setSubscriptionCheckTimer:v13];

      v14 = [(NPUserEventAgent *)self subscriptionCheckTimer];

      if (v14)
      {
        v17 = +[NSRunLoop mainRunLoop];
        v15 = [(NPUserEventAgent *)self subscriptionCheckTimer];
        [v17 addTimer:v15 forMode:NSDefaultRunLoopMode];
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

- (void)setProxyRestoreInterval:(int64_t)a3
{
  v5 = [(NPUserEventAgent *)self proxyRestoreTimer];

  if (v5)
  {
    v6 = [(NPUserEventAgent *)self proxyRestoreTimer];
    [v6 invalidate];

    [(NPUserEventAgent *)self setProxyRestoreTimer:0];
  }

  if (a3 < 1)
  {

    [(NPUserEventAgent *)self setProxyRestoreDate:0];
  }

  else
  {
    v7 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:a3];
    [(NPUserEventAgent *)self setProxyRestoreDate:v7];

    v8 = [(NPUserEventAgent *)self proxyRestoreDate];
    [v8 timeIntervalSinceNow];
    v10 = v9;

    if (v10 > 0.0)
    {
      v11 = [NSTimer alloc];
      v12 = [(NPUserEventAgent *)self proxyRestoreDate];
      v13 = [v11 initWithFireDate:v12 interval:0 repeats:&stru_14AF0 block:0.0];
      [(NPUserEventAgent *)self setProxyRestoreTimer:v13];

      v14 = [(NPUserEventAgent *)self proxyRestoreTimer];

      if (v14)
      {
        v17 = +[NSRunLoop mainRunLoop];
        v15 = [(NPUserEventAgent *)self proxyRestoreTimer];
        [v17 addTimer:v15 forMode:NSDefaultRunLoopMode];
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

- (void)setODoHRestoreInterval:(int64_t)a3
{
  v5 = [(NPUserEventAgent *)self odohRestoreTimer];

  if (v5)
  {
    v6 = [(NPUserEventAgent *)self odohRestoreTimer];
    [v6 invalidate];

    [(NPUserEventAgent *)self setOdohRestoreTimer:0];
  }

  if (a3 < 1)
  {

    [(NPUserEventAgent *)self setOdohRestoreDate:0];
  }

  else
  {
    v7 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:a3];
    [(NPUserEventAgent *)self setOdohRestoreDate:v7];

    v8 = [(NPUserEventAgent *)self odohRestoreDate];
    [v8 timeIntervalSinceNow];
    v10 = v9;

    if (v10 > 0.0)
    {
      v11 = [NSTimer alloc];
      v12 = [(NPUserEventAgent *)self odohRestoreDate];
      v13 = [v11 initWithFireDate:v12 interval:0 repeats:&stru_14B10 block:0.0];
      [(NPUserEventAgent *)self setOdohRestoreTimer:v13];

      v14 = [(NPUserEventAgent *)self odohRestoreTimer];

      if (v14)
      {
        v17 = +[NSRunLoop mainRunLoop];
        v15 = [(NPUserEventAgent *)self odohRestoreTimer];
        [v17 addTimer:v15 forMode:NSDefaultRunLoopMode];
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

- (void)setODoHAuthOutageRestoreInterval:(int64_t)a3
{
  v5 = [(NPUserEventAgent *)self odohAuthOutageRestoreTimer];

  if (v5)
  {
    v6 = [(NPUserEventAgent *)self odohAuthOutageRestoreTimer];
    [v6 invalidate];

    [(NPUserEventAgent *)self setOdohAuthOutageRestoreTimer:0];
  }

  if (a3 < 1)
  {

    [(NPUserEventAgent *)self setOdohAuthOutageRestoreDate:0];
  }

  else
  {
    v7 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:a3];
    [(NPUserEventAgent *)self setOdohAuthOutageRestoreDate:v7];

    v8 = [(NPUserEventAgent *)self odohAuthOutageRestoreDate];
    [v8 timeIntervalSinceNow];
    v10 = v9;

    if (v10 > 0.0)
    {
      v11 = [NSTimer alloc];
      v12 = [(NPUserEventAgent *)self odohAuthOutageRestoreDate];
      v13 = [v11 initWithFireDate:v12 interval:0 repeats:&stru_14B30 block:0.0];
      [(NPUserEventAgent *)self setOdohAuthOutageRestoreTimer:v13];

      v14 = [(NPUserEventAgent *)self odohAuthOutageRestoreTimer];

      if (v14)
      {
        v17 = +[NSRunLoop mainRunLoop];
        v15 = [(NPUserEventAgent *)self odohAuthOutageRestoreTimer];
        [v17 addTimer:v15 forMode:NSDefaultRunLoopMode];
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

- (void)setProxyPathProbeInterval:(int64_t)a3
{
  v5 = [(NPUserEventAgent *)self proxyPathProbeTimer];

  if (v5)
  {
    v6 = [(NPUserEventAgent *)self proxyPathProbeTimer];
    [v6 invalidate];

    [(NPUserEventAgent *)self setProxyPathProbeTimer:0];
  }

  if (a3 < 1)
  {

    [(NPUserEventAgent *)self setProxyPathProbeTimer:0];
  }

  else
  {
    v7 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:a3];
    [(NPUserEventAgent *)self setProxyPathProbeDate:v7];

    v8 = [(NPUserEventAgent *)self proxyPathProbeDate];
    [v8 timeIntervalSinceNow];
    v10 = v9;

    if (v10 > 0.0)
    {
      v11 = [NSTimer alloc];
      v12 = [(NPUserEventAgent *)self proxyPathProbeDate];
      v13 = [v11 initWithFireDate:v12 interval:0 repeats:&stru_14B50 block:0.0];
      [(NPUserEventAgent *)self setProxyPathProbeTimer:v13];

      v14 = [(NPUserEventAgent *)self proxyPathProbeTimer];

      if (v14)
      {
        v17 = +[NSRunLoop mainRunLoop];
        v15 = [(NPUserEventAgent *)self proxyPathProbeTimer];
        [v17 addTimer:v15 forMode:NSDefaultRunLoopMode];
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

- (void)setDirectPathProbeInterval:(int64_t)a3
{
  v5 = [(NPUserEventAgent *)self directPathProbeTimer];

  if (v5)
  {
    v6 = [(NPUserEventAgent *)self directPathProbeTimer];
    [v6 invalidate];

    [(NPUserEventAgent *)self setDirectPathProbeTimer:0];
  }

  if (a3 < 1)
  {

    [(NPUserEventAgent *)self setDirectPathProbeTimer:0];
  }

  else
  {
    v7 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:a3];
    [(NPUserEventAgent *)self setDirectPathProbeDate:v7];

    v8 = [(NPUserEventAgent *)self directPathProbeDate];
    [v8 timeIntervalSinceNow];
    v10 = v9;

    if (v10 > 0.0)
    {
      v11 = [NSTimer alloc];
      v12 = [(NPUserEventAgent *)self directPathProbeDate];
      v13 = [v11 initWithFireDate:v12 interval:0 repeats:&stru_14B70 block:0.0];
      [(NPUserEventAgent *)self setDirectPathProbeTimer:v13];

      v14 = [(NPUserEventAgent *)self directPathProbeTimer];

      if (v14)
      {
        v17 = +[NSRunLoop mainRunLoop];
        v15 = [(NPUserEventAgent *)self directPathProbeTimer];
        [v17 addTimer:v15 forMode:NSDefaultRunLoopMode];
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

- (void)setLocationMonitorInterval:(double)a3
{
  v5 = [(NPUserEventAgent *)self locationMonitorTimer];

  if (v5)
  {
    v6 = [(NPUserEventAgent *)self locationMonitorTimer];
    [v6 invalidate];

    [(NPUserEventAgent *)self setLocationMonitorTimer:0];
  }

  if (a3 >= 300.0)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_8C0C;
    v11[3] = &unk_14B98;
    v11[4] = self;
    v7 = [NSTimer timerWithTimeInterval:0 repeats:v11 block:a3];
    [(NPUserEventAgent *)self setLocationMonitorTimer:v7];

    v8 = [(NPUserEventAgent *)self locationMonitorTimer];

    if (v8)
    {
      v9 = +[NSRunLoop mainRunLoop];
      v10 = [(NPUserEventAgent *)self locationMonitorTimer];
      [v9 addTimer:v10 forMode:NSDefaultRunLoopMode];
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
    v3 = [(NPUserEventAgent *)self userActivityNotificationHandle];

    _IOPMUnregisterNotification(v3);
  }
}

- (void)registerForDynamicStoreChanges
{
  if (![(NPUserEventAgent *)self dynamicStore])
  {
    [(NPUserEventAgent *)self setDynamicStore:SCDynamicStoreCreate(kCFAllocatorDefault, @"networkserviceproxy event agent", sub_929C, 0)];
    if ([(NPUserEventAgent *)self dynamicStore])
    {
      v3 = [(NPUserEventAgent *)self dynamicStore];
      v4 = dispatch_get_global_queue(0, 0);
      LODWORD(v3) = SCDynamicStoreSetDispatchQueue(v3, v4);

      if (v3)
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

- (void)handleProviderAction:(int64_t)a3 token:(unint64_t)a4 event:(id)a5
{
  v8 = a5;
  v9 = self;
  objc_sync_enter(v9);
  if (a3 == 1 && v8)
  {
    [(NPUserEventAgent *)v9 setEventToken:a4];
    int64 = xpc_dictionary_get_int64(v8, "PID");
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

    if (xpc_dictionary_get_int64(v8, "ResurrectionDate"))
    {
      [(NPUserEventAgent *)v9 setResurrectionInterval:xpc_dictionary_get_int64(v8, "ResurrectionDate")];
    }

    if (xpc_dictionary_get_int64(v8, "ConfigFetchDate"))
    {
      [(NPUserEventAgent *)v9 setConfigurationFetchInterval:xpc_dictionary_get_int64(v8, "ConfigFetchDate")];
    }

    if (!xpc_dictionary_get_int64(v8, "ConfigFetchOnNetworkChange"))
    {
LABEL_19:
      if (xpc_dictionary_get_double(v8, "LocationMonitorTimeInterval") != 0.0)
      {
        [(NPUserEventAgent *)v9 setLocationMonitorInterval:xpc_dictionary_get_double(v8, "LocationMonitorTimeInterval")];
      }

      if (xpc_dictionary_get_int64(v8, "TokenFetchDate"))
      {
        [(NPUserEventAgent *)v9 setTokenFetchInterval:xpc_dictionary_get_int64(v8, "TokenFetchDate")];
      }

      if (!xpc_dictionary_get_int64(v8, "TokenFetchOnNetworkChange"))
      {
LABEL_31:
        if (xpc_dictionary_get_int64(v8, "TokenIssuanceRestrictedUntilDate"))
        {
          [(NPUserEventAgent *)v9 setTokenIssuanceRestrictedUntilInterval:xpc_dictionary_get_int64(v8, "TokenIssuanceRestrictedUntilDate")];
        }

        if (!xpc_dictionary_get_int64(v8, "SubscriptionCheckOnNetworkChange"))
        {
LABEL_41:
          if (xpc_dictionary_get_int64(v8, "SubscriptionCheckDate"))
          {
            [(NPUserEventAgent *)v9 setSubscriptionCheckInterval:xpc_dictionary_get_int64(v8, "SubscriptionCheckDate")];
          }

          if (xpc_dictionary_get_int64(v8, "ProxyRestoreDate"))
          {
            [(NPUserEventAgent *)v9 setProxyRestoreInterval:xpc_dictionary_get_int64(v8, "ProxyRestoreDate")];
          }

          if (xpc_dictionary_get_int64(v8, "ODoHRestoreDate"))
          {
            [(NPUserEventAgent *)v9 setODoHRestoreInterval:xpc_dictionary_get_int64(v8, "ODoHRestoreDate")];
          }

          if (xpc_dictionary_get_int64(v8, "odohAuthRestoreDate"))
          {
            [(NPUserEventAgent *)v9 setODoHAuthOutageRestoreInterval:xpc_dictionary_get_int64(v8, "odohAuthRestoreDate")];
          }

          if (xpc_dictionary_get_int64(v8, "ProxyPathProber"))
          {
            [(NPUserEventAgent *)v9 setProxyPathProbeInterval:xpc_dictionary_get_int64(v8, "ProxyPathProber")];
          }

          if (!xpc_dictionary_get_int64(v8, "ProxyPathProbeOnNetworkChange"))
          {
LABEL_59:
            if (xpc_dictionary_get_int64(v8, "DirectPathProber"))
            {
              [(NPUserEventAgent *)v9 setDirectPathProbeInterval:xpc_dictionary_get_int64(v8, "DirectPathProber")];
            }

            if (!xpc_dictionary_get_int64(v8, "DirectPathProbeOnNetworkChange"))
            {
LABEL_69:
              if (!xpc_dictionary_get_int64(v8, "CaptiveOutage"))
              {
                goto LABEL_77;
              }

              v28 = xpc_dictionary_get_int64(v8, "CaptiveOutage");
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

              [(NPUserEventAgent *)v9 setCaptiveOutage:v28 == 1];
LABEL_77:
              if (!xpc_dictionary_get_int64(v8, "CaptiveOutageWaitingForUserActivity"))
              {
LABEL_85:
                [(NPUserEventAgent *)v9 registerForCaptivePluginListChangedNotification];
                [(NPUserEventAgent *)v9 registerForDynamicStoreChanges];
                [(NPUserEventAgent *)v9 registerForUserActivityNotifications];
                v34 = +[NSPUserEventAgentFileHandleMaintainer sharedEventAgentMaintainer];
                [v34 setReceivedEventToken:1];

                goto LABEL_86;
              }

              v31 = xpc_dictionary_get_int64(v8, "CaptiveOutageWaitingForUserActivity");
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

              [(NPUserEventAgent *)v9 setCaptiveOutageWaitingForUserActivity:v31 == 1];
              goto LABEL_85;
            }

            v25 = xpc_dictionary_get_int64(v8, "DirectPathProbeOnNetworkChange");
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

            [(NPUserEventAgent *)v9 setDirectPathProbeOnNetworkChange:v25 == 1];
            goto LABEL_69;
          }

          v22 = xpc_dictionary_get_int64(v8, "ProxyPathProbeOnNetworkChange");
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

          [(NPUserEventAgent *)v9 setProxyPathProbeOnNetworkChange:v22 == 1];
          goto LABEL_59;
        }

        v19 = xpc_dictionary_get_int64(v8, "SubscriptionCheckOnNetworkChange");
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

        [(NPUserEventAgent *)v9 setSubscriptionCheckOnNetworkChange:v19 == 1];
        goto LABEL_41;
      }

      v16 = xpc_dictionary_get_int64(v8, "TokenFetchOnNetworkChange");
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

      [(NPUserEventAgent *)v9 setTokenFetchOnNetworkChange:v16 == 1];
      goto LABEL_31;
    }

    v13 = xpc_dictionary_get_int64(v8, "ConfigFetchOnNetworkChange");
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

    [(NPUserEventAgent *)v9 setConfigFetchOnNetworkChange:v13 == 1];
    goto LABEL_19;
  }

LABEL_86:
  objc_sync_exit(v9);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v56 = v11;
  if ([v10 isEqualToString:@"path"])
  {
    v13 = self;
    objc_sync_enter(v13);
    v14 = +[NWPathEvaluator sharedDefaultEvaluator];
    v15 = [v14 path];
    v16 = [v15 status];

    if (v16 != &dword_0 + 1)
    {
      [(NPUserEventAgent *)v13 setWifiNetworkSignature:0];
LABEL_47:
      objc_sync_exit(v13);

      goto LABEL_48;
    }

    if ([(NPUserEventAgent *)v13 configFetchOnNetworkChange])
    {
      v17 = nplog_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Triggering configuration fetch on network change", buf, 2u);
      }

      [(NPUserEventAgent *)v13 setConfigFetchOnNetworkChange:0];
      v18 = +[NSPUserEventAgentFileHandleMaintainer sharedEventAgentMaintainer];
      [v18 launchOwner];
    }

    if ([(NPUserEventAgent *)v13 tokenFetchOnNetworkChange])
    {
      v19 = nplog_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Triggering token fetch on network change", buf, 2u);
      }

      [(NPUserEventAgent *)v13 setTokenFetchOnNetworkChange:0];
      v20 = +[NSPUserEventAgentFileHandleMaintainer sharedEventAgentMaintainer];
      [v20 launchOwner];
    }

    if ([(NPUserEventAgent *)v13 subscriptionCheckOnNetworkChange])
    {
      v21 = nplog_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "Triggering subscription check on network change", buf, 2u);
      }

      [(NPUserEventAgent *)v13 setSubscriptionCheckOnNetworkChange:0];
      v22 = +[NSPUserEventAgentFileHandleMaintainer sharedEventAgentMaintainer];
      [v22 launchOwner];
    }

    v23 = +[NWPathEvaluator sharedDefaultEvaluator];
    v24 = [v23 path];
    v25 = [v24 interface];
    v26 = [v25 type] == &dword_0 + 1;

    if (v26)
    {
      v27 = +[NWPathEvaluator sharedDefaultEvaluator];
      v28 = [v27 path];
      v29 = [NPUtilities copyCurrentNetworkCharacteristicsForPath:v28];

      v30 = [v29 objectForKeyedSubscript:@"Signature"];
      v31 = [(NPUserEventAgent *)v13 wifiNetworkSignature];
      v32 = v30;
      v33 = v32;
      if (!(v32 | v31) || v32 && v31 && [v31 isEqual:v32])
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

        [(NPUserEventAgent *)v13 setWifiNetworkSignature:v33];
        v31 = +[NSPUserEventAgentFileHandleMaintainer sharedEventAgentMaintainer];
        [v31 launchOwner];
      }
    }

    else
    {
      [(NPUserEventAgent *)v13 setWifiNetworkSignature:0];
    }

    v35 = +[NWPathEvaluator sharedDefaultEvaluator];
    v36 = [v35 path];
    v37 = [v36 interface];
    if ([v37 type] == &dword_0 + 2)
    {
    }

    else
    {
      v38 = +[NWPathEvaluator sharedDefaultEvaluator];
      v39 = [v38 path];
      v40 = [v39 interface];
      v41 = [v40 type] == &dword_0 + 3;

      if (!v41)
      {
        [(NPUserEventAgent *)v13 setNonwifiNetworkSignature:0];
        goto LABEL_47;
      }
    }

    v42 = +[NWPathEvaluator sharedDefaultEvaluator];
    v43 = [v42 path];
    v44 = [NPUtilities copyCurrentNetworkCharacteristicsForPath:v43];

    v45 = [v44 objectForKeyedSubscript:@"Signature"];
    v46 = [(NPUserEventAgent *)v13 nonwifiNetworkSignature];
    v47 = v45;
    v48 = v47;
    if (!(v47 | v46) || v47 && v46 && [v46 isEqual:v47])
    {
    }

    else
    {

      v49 = +[NWPathEvaluator sharedDefaultEvaluator];
      v50 = [v49 path];
      v51 = [v50 interface];
      v52 = [v51 type];

      v53 = nplog_obj();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v54 = "Ethernet";
        if (v52 == &dword_0 + 2)
        {
          v54 = "Cellular";
        }

        *buf = 136315138;
        v59 = v54;
        _os_log_impl(&dword_0, v53, OS_LOG_TYPE_DEFAULT, "%s signature changed", buf, 0xCu);
      }

      [(NPUserEventAgent *)v13 setNonwifiNetworkSignature:v48];
      if (![(NPUserEventAgent *)v13 captiveOutage])
      {
        goto LABEL_45;
      }

      v55 = nplog_obj();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v55, OS_LOG_TYPE_DEFAULT, "captive outage is true, launching NSP", buf, 2u);
      }

      v46 = +[NSPUserEventAgentFileHandleMaintainer sharedEventAgentMaintainer];
      [v46 launchOwner];
    }

LABEL_45:
    goto LABEL_47;
  }

  v57.receiver = self;
  v57.super_class = NPUserEventAgent;
  [(NPUserEventAgent *)&v57 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
LABEL_48:
}

@end