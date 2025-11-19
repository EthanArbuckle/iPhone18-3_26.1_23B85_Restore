@interface URLBagTimer
+ (id)subscriptionRenewTimer;
- (URLBagTimer)initWithIdentifier:(id)a3;
- (double)_readTimeIntervalFromUserDefaultsKey:(id)a3;
- (double)_timerInterval;
- (double)_timerIntervalWithBagKey:(id)a3 userDefaultsKey:(id)a4;
- (double)_windowWithUserDefaultsKey:(id)a3;
- (id)_nextFireDateWithInterval:(double)a3;
- (void)_addJobWithDate:(id)a3 window:(double)a4 allowsCellular:(BOOL)a5;
- (void)_attemptFireForJob:(id)a3 withName:(id)a4;
- (void)_fireTimer;
- (void)_resetBackgroundTaskJobs;
- (void)_setLastFireDate:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)reset;
- (void)start;
@end

@implementation URLBagTimer

- (URLBagTimer)initWithIdentifier:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = URLBagTimer;
  v5 = [(URLBagTimer *)&v16 init];
  if (v5)
  {
    v6 = [v4 copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    objc_initWeak(&location, v5);
    v8 = +[Daemon daemon];
    v9 = [v4 copy];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100169E14;
    v13[3] = &unk_100328418;
    objc_copyWeak(&v14, &location);
    v10 = [v8 addObserverForBackgroundTaskWithIdentifierPrefix:v9 withBlock:v13];
    taskObserver = v5->_taskObserver;
    v5->_taskObserver = v10;

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)dealloc
{
  if (self->_taskObserver)
  {
    v3 = +[Daemon daemon];
    [v3 removeBackgroundTaskObserver:self->_taskObserver];
  }

  v4.receiver = self;
  v4.super_class = URLBagTimer;
  [(URLBagTimer *)&v4 dealloc];
}

+ (id)subscriptionRenewTimer
{
  v2 = [[a1 alloc] initWithIdentifier:@"com.apple.itunesstored.subscription-poll"];
  [v2 setBagKey:@"subscription-status-refresh-interval-in-seconds"];
  [v2 setDefaultInterval:86400.0];
  [v2 setDefaultWindow:43200.0];

  return v2;
}

- (void)invalidate
{
  if (self->_taskObserver)
  {
    v3 = +[Daemon daemon];
    [v3 removeBackgroundTaskObserver:self->_taskObserver];

    taskObserver = self->_taskObserver;
    self->_taskObserver = 0;
  }

  if (self->_started)
  {
    self->_started = 0;
    if ([(NSString *)self->_identifier length])
    {
      v5 = [(NSString *)self->_identifier stringByAppendingString:@".cell"];
      xpc_activity_unregister([v5 UTF8String]);
      v16 = [(NSString *)self->_identifier stringByAppendingString:@".wifi"];

      v6 = v16;
      xpc_activity_unregister([v16 UTF8String]);

      return;
    }

    v7 = +[SSLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v7 OSLogObject];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v11 = objc_opt_class();
      identifier = self->_identifier;
      v17 = 138412546;
      v18 = v11;
      v19 = 2112;
      v20 = identifier;
      v13 = v11;
      LODWORD(v15) = 22;
      v14 = _os_log_send_and_compose_impl();

      if (!v14)
      {
LABEL_19:

        return;
      }

      v10 = [NSString stringWithCString:v14 encoding:4, &v17, v15];
      free(v14);
      SSFileLog();
    }

    goto LABEL_19;
  }
}

- (void)reset
{
  v3 = +[NSDate date];
  [(URLBagTimer *)self _setLastFireDate:v3];

  [(URLBagTimer *)self _resetBackgroundTaskJobs];
}

- (void)start
{
  if (!self->_started)
  {
    self->_started = 1;
    v3 = [(URLBagTimer *)self _userDefaultsKeyLastTimeCheck];
    v4 = CFPreferencesCopyAppValue(v3, kSSUserDefaultsIdentifier);
    v5 = v4;
    if (v4 && (v6 = CFGetTypeID(v4), v6 == CFDateGetTypeID()) && (([v5 timeIntervalSinceNow], v8 = v7, -[URLBagTimer _timerInterval](self, "_timerInterval"), v9 <= 0.0) || v8 >= -v9) || (preconditionsBlock = self->_preconditionsBlock) != 0 && !preconditionsBlock[2]())
    {
      [(URLBagTimer *)self _resetBackgroundTaskJobs];
      if (!v5)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    v11 = +[SSLogConfig sharedDaemonConfig];
    if (!v11)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    v12 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v13 = v12 | 2;
    }

    else
    {
      v13 = v12;
    }

    v14 = [v11 OSLogObject];
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v13 &= 2u;
    }

    if (v13)
    {
      v15 = objc_opt_class();
      identifier = self->_identifier;
      *v20 = 138412546;
      *&v20[4] = v15;
      *&v20[12] = 2112;
      *&v20[14] = identifier;
      v17 = v15;
      LODWORD(v19) = 22;
      v18 = _os_log_send_and_compose_impl();

      if (!v18)
      {
        goto LABEL_19;
      }

      v14 = [NSString stringWithCString:v18 encoding:4, v20, v19, *v20, *&v20[16]];
      free(v18);
      SSFileLog();
    }

LABEL_19:
    [(URLBagTimer *)self _fireTimer];
    if (!v5)
    {
LABEL_21:
      CFRelease(v3);
      return;
    }

LABEL_20:
    CFRelease(v5);
    goto LABEL_21;
  }
}

- (void)_addJobWithDate:(id)a3 window:(double)a4 allowsCellular:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  [v7 timeIntervalSinceNow];
  v9 = v8;
  v10 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v10, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, !v5);
  xpc_dictionary_set_int64(v10, XPC_ACTIVITY_DELAY, v9);
  xpc_dictionary_set_BOOL(v10, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
  v11 = [[BackgroundTaskRequest alloc] initWithBackgroundTaskAgentJob:v10];
  if (v5)
  {
    v12 = @".cell";
  }

  else
  {
    v12 = @".wifi";
  }

  v13 = [(NSString *)self->_identifier stringByAppendingString:v12];
  [(BackgroundTaskRequest *)v11 setRequestIdentifier:v13];
  v14 = +[SSLogConfig sharedDaemonConfig];
  if (!v14)
  {
    v14 = +[SSLogConfig sharedConfig];
  }

  v15 = [v14 shouldLog];
  if ([v14 shouldLogToDisk])
  {
    v16 = v15 | 2;
  }

  else
  {
    v16 = v15;
  }

  v17 = [v14 OSLogObject];
  if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v16 &= 2u;
  }

  if (!v16)
  {
    goto LABEL_14;
  }

  *v22 = 138412802;
  *&v22[4] = objc_opt_class();
  *&v22[12] = 2112;
  *&v22[14] = v13;
  *&v22[22] = 2112;
  v23 = v7;
  v18 = *&v22[4];
  LODWORD(v21) = 32;
  v19 = _os_log_send_and_compose_impl();

  if (v19)
  {
    v17 = [NSString stringWithCString:v19 encoding:4, v22, v21, *v22, *&v22[16], v23];
    free(v19);
    SSFileLog();
LABEL_14:
  }

  v20 = +[Daemon daemon];
  [v20 addBackgroundTaskWithRequest:v11];
}

- (void)_attemptFireForJob:(id)a3 withName:(id)a4
{
  v5 = a4;
  if (self->_started)
  {
    v6 = +[ISNetworkObserver sharedInstance];
    v7 = [v6 networkType];

    if ([v5 hasSuffix:@"cell"])
    {
      if ((SSNetworkTypeIsCellularType() & 1) == 0)
      {
LABEL_21:
        [(URLBagTimer *)self _resetBackgroundTaskJobs];
        goto LABEL_22;
      }
    }

    else if (![v5 hasSuffix:@"wifi"] || v7 != 1000)
    {
      goto LABEL_21;
    }

    preconditionsBlock = self->_preconditionsBlock;
    if (preconditionsBlock && !preconditionsBlock[2]())
    {
      goto LABEL_21;
    }

    v9 = +[SSLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    v10 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = v10 | 2;
    }

    else
    {
      v11 = v10;
    }

    v12 = [v9 OSLogObject];
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v11 &= 2u;
    }

    if (v11)
    {
      *v16 = 138412546;
      *&v16[4] = objc_opt_class();
      *&v16[12] = 2112;
      *&v16[14] = v5;
      v13 = *&v16[4];
      LODWORD(v15) = 22;
      v14 = _os_log_send_and_compose_impl();

      if (!v14)
      {
LABEL_20:

        [(URLBagTimer *)self _fireTimer];
        goto LABEL_22;
      }

      v12 = [NSString stringWithCString:v14 encoding:4, v16, v15, *v16, *&v16[16]];
      free(v14);
      SSFileLog();
    }

    goto LABEL_20;
  }

LABEL_22:
}

- (void)_fireTimer
{
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016AA10;
  block[3] = &unk_100327110;
  block[4] = self;
  dispatch_async(v3, block);

  v4 = +[NSDate date];
  [(URLBagTimer *)self _setLastFireDate:v4];

  [(URLBagTimer *)self _resetBackgroundTaskJobs];
}

- (id)_nextFireDateWithInterval:(double)a3
{
  v5 = [(URLBagTimer *)self _userDefaultsKeyLastTimeCheck];
  v6 = CFPreferencesCopyAppValue(v5, kSSUserDefaultsIdentifier);
  v7 = +[NSDate date];
  v8 = v7;
  if (v6)
  {
    v9 = CFGetTypeID(v6);
    if (v9 != CFDateGetTypeID() || ([v6 timeIntervalSinceNow], v10 > 2.22044605e-16))
    {
      v11 = v8;
      [(URLBagTimer *)self _setLastFireDate:v11];
      goto LABEL_8;
    }

    v12 = v6;
  }

  else
  {
    v12 = v7;
  }

  v11 = v12;
LABEL_8:
  v13 = [[NSDate alloc] initWithTimeInterval:v11 sinceDate:a3];
  v14 = [v13 earlierDate:v8];

  if (v14 == v13)
  {
    v15 = [[NSDate alloc] initWithTimeInterval:v8 sinceDate:a3];

    v13 = v15;
  }

  if (v6)
  {
    CFRelease(v6);
  }

  CFRelease(v5);

  return v13;
}

- (double)_readTimeIntervalFromUserDefaultsKey:(id)a3
{
  valuePtr = 0.0;
  v3 = a3;
  v4 = CFPreferencesCopyAppValue(v3, kSSUserDefaultsIdentifier);
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v5, kCFNumberDoubleType, &valuePtr);
    }

    else
    {
      v7 = CFGetTypeID(v5);
      if (v7 == CFStringGetTypeID())
      {
        [(__CFNumber *)v5 doubleValue];
        valuePtr = v8;
      }
    }

    CFRelease(v5);
  }

  CFRelease(v3);
  v9 = valuePtr;

  return v9;
}

- (void)_resetBackgroundTaskJobs
{
  if (self->_started)
  {
    v3 = [(URLBagTimer *)self _userDefaultsKeyWindowOverride];
    [(URLBagTimer *)self _windowWithUserDefaultsKey:v3];
    v5 = v4;

    bagKey = self->_bagKey;
    v7 = [(URLBagTimer *)self _userDefaultsKeyWiFiOverride];
    [(URLBagTimer *)self _timerIntervalWithBagKey:bagKey userDefaultsKey:v7];
    defaultInterval = v8;

    if (defaultInterval < 2.22044605e-16)
    {
      defaultInterval = self->_defaultInterval;
    }

    if (defaultInterval > 2.22044605e-16)
    {
      v10 = [(URLBagTimer *)self _nextFireDateWithInterval:defaultInterval];
      [(URLBagTimer *)self _addJobWithDate:v10 window:0 allowsCellular:v5];
    }

    cellularBagKey = self->_cellularBagKey;
    v12 = [(URLBagTimer *)self _userDefaultsKeyCellularOverride];
    [(URLBagTimer *)self _timerIntervalWithBagKey:cellularBagKey userDefaultsKey:v12];
    v14 = v13;

    if (v14 < 2.22044605e-16 && !self->_cellularBagKey)
    {
      v14 = defaultInterval;
    }

    if (v14 > 2.22044605e-16)
    {
      v15 = [(URLBagTimer *)self _nextFireDateWithInterval:v14];
      [(URLBagTimer *)self _addJobWithDate:v15 window:1 allowsCellular:v5];
    }
  }
}

- (void)_setLastFireDate:(id)a3
{
  v4 = a3;
  v5 = [(URLBagTimer *)self _userDefaultsKeyLastTimeCheck];
  v6 = kITunesStoreDaemonDefaultsID;
  CFPreferencesSetAppValue(v5, v4, kITunesStoreDaemonDefaultsID);

  CFPreferencesAppSynchronize(v6);

  CFRelease(v5);
}

- (double)_timerInterval
{
  v3 = +[ISNetworkObserver sharedInstance];
  v4 = [v3 networkType];

  if (v4 == 1000)
  {
    bagKey = self->_bagKey;
    v6 = [(URLBagTimer *)self _userDefaultsKeyWiFiOverride];
  }

  else
  {
    if (!SSNetworkTypeIsCellularType())
    {
      return self->_defaultInterval;
    }

    bagKey = self->_cellularBagKey;
    if (!bagKey)
    {
      bagKey = self->_bagKey;
    }

    v6 = [(URLBagTimer *)self _userDefaultsKeyCellularOverride];
  }

  v7 = v6;
  [(URLBagTimer *)self _timerIntervalWithBagKey:bagKey userDefaultsKey:v6];
  v9 = v8;

  if (v9 < 2.22044605e-16)
  {
    return self->_defaultInterval;
  }

  return v9;
}

- (double)_timerIntervalWithBagKey:(id)a3 userDefaultsKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    [(URLBagTimer *)self _readTimeIntervalFromUserDefaultsKey:v7];
    v9 = v8;
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v9 = 0.0;
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  if (v9 < 2.22044605e-16)
  {
    v10 = +[ISURLBagCache sharedCache];
    v11 = [SSURLBagContext contextWithBagType:0];
    v12 = [v10 URLBagForContext:v11];

    v13 = [v12 valueForKey:v6];
    [v13 doubleValue];
    v9 = v14;
  }

LABEL_7:

  return v9;
}

- (double)_windowWithUserDefaultsKey:(id)a3
{
  v4 = a3;
  if (!v4 || ([(URLBagTimer *)self _readTimeIntervalFromUserDefaultsKey:v4], defaultWindow < 2.22044605e-16))
  {
    defaultWindow = self->_defaultWindow;
  }

  if (defaultWindow >= 2.22044605e-16)
  {
    v6 = defaultWindow;
  }

  else
  {
    v6 = 604800.0;
  }

  return v6;
}

@end