@interface URLBagTimer
+ (id)subscriptionRenewTimer;
- (URLBagTimer)initWithIdentifier:(id)identifier;
- (double)_readTimeIntervalFromUserDefaultsKey:(id)key;
- (double)_timerInterval;
- (double)_timerIntervalWithBagKey:(id)key userDefaultsKey:(id)defaultsKey;
- (double)_windowWithUserDefaultsKey:(id)key;
- (id)_nextFireDateWithInterval:(double)interval;
- (void)_addJobWithDate:(id)date window:(double)window allowsCellular:(BOOL)cellular;
- (void)_attemptFireForJob:(id)job withName:(id)name;
- (void)_fireTimer;
- (void)_resetBackgroundTaskJobs;
- (void)_setLastFireDate:(id)date;
- (void)dealloc;
- (void)invalidate;
- (void)reset;
- (void)start;
@end

@implementation URLBagTimer

- (URLBagTimer)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = URLBagTimer;
  v5 = [(URLBagTimer *)&v16 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    objc_initWeak(&location, v5);
    v8 = +[Daemon daemon];
    v9 = [identifierCopy copy];
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
  v2 = [[self alloc] initWithIdentifier:@"com.apple.itunesstored.subscription-poll"];
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

    shouldLog = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = shouldLog | 2;
    }

    else
    {
      v9 = shouldLog;
    }

    oSLogObject = [v7 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
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

      oSLogObject = [NSString stringWithCString:v14 encoding:4, &v17, v15];
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
    _userDefaultsKeyLastTimeCheck = [(URLBagTimer *)self _userDefaultsKeyLastTimeCheck];
    v4 = CFPreferencesCopyAppValue(_userDefaultsKeyLastTimeCheck, kSSUserDefaultsIdentifier);
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

    shouldLog = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v13 = shouldLog | 2;
    }

    else
    {
      v13 = shouldLog;
    }

    oSLogObject = [v11 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
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

      oSLogObject = [NSString stringWithCString:v18 encoding:4, v20, v19, *v20, *&v20[16]];
      free(v18);
      SSFileLog();
    }

LABEL_19:
    [(URLBagTimer *)self _fireTimer];
    if (!v5)
    {
LABEL_21:
      CFRelease(_userDefaultsKeyLastTimeCheck);
      return;
    }

LABEL_20:
    CFRelease(v5);
    goto LABEL_21;
  }
}

- (void)_addJobWithDate:(id)date window:(double)window allowsCellular:(BOOL)cellular
{
  cellularCopy = cellular;
  dateCopy = date;
  [dateCopy timeIntervalSinceNow];
  v9 = v8;
  v10 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v10, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, !cellularCopy);
  xpc_dictionary_set_int64(v10, XPC_ACTIVITY_DELAY, v9);
  xpc_dictionary_set_BOOL(v10, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
  v11 = [[BackgroundTaskRequest alloc] initWithBackgroundTaskAgentJob:v10];
  if (cellularCopy)
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

  shouldLog = [v14 shouldLog];
  if ([v14 shouldLogToDisk])
  {
    v16 = shouldLog | 2;
  }

  else
  {
    v16 = shouldLog;
  }

  oSLogObject = [v14 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
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
  v23 = dateCopy;
  v18 = *&v22[4];
  LODWORD(v21) = 32;
  v19 = _os_log_send_and_compose_impl();

  if (v19)
  {
    oSLogObject = [NSString stringWithCString:v19 encoding:4, v22, v21, *v22, *&v22[16], v23];
    free(v19);
    SSFileLog();
LABEL_14:
  }

  v20 = +[Daemon daemon];
  [v20 addBackgroundTaskWithRequest:v11];
}

- (void)_attemptFireForJob:(id)job withName:(id)name
{
  nameCopy = name;
  if (self->_started)
  {
    v6 = +[ISNetworkObserver sharedInstance];
    networkType = [v6 networkType];

    if ([nameCopy hasSuffix:@"cell"])
    {
      if ((SSNetworkTypeIsCellularType() & 1) == 0)
      {
LABEL_21:
        [(URLBagTimer *)self _resetBackgroundTaskJobs];
        goto LABEL_22;
      }
    }

    else if (![nameCopy hasSuffix:@"wifi"] || networkType != 1000)
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

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = shouldLog | 2;
    }

    else
    {
      v11 = shouldLog;
    }

    oSLogObject = [v9 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v11 &= 2u;
    }

    if (v11)
    {
      *v16 = 138412546;
      *&v16[4] = objc_opt_class();
      *&v16[12] = 2112;
      *&v16[14] = nameCopy;
      v13 = *&v16[4];
      LODWORD(v15) = 22;
      v14 = _os_log_send_and_compose_impl();

      if (!v14)
      {
LABEL_20:

        [(URLBagTimer *)self _fireTimer];
        goto LABEL_22;
      }

      oSLogObject = [NSString stringWithCString:v14 encoding:4, v16, v15, *v16, *&v16[16]];
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

- (id)_nextFireDateWithInterval:(double)interval
{
  _userDefaultsKeyLastTimeCheck = [(URLBagTimer *)self _userDefaultsKeyLastTimeCheck];
  v6 = CFPreferencesCopyAppValue(_userDefaultsKeyLastTimeCheck, kSSUserDefaultsIdentifier);
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
  v13 = [[NSDate alloc] initWithTimeInterval:v11 sinceDate:interval];
  v14 = [v13 earlierDate:v8];

  if (v14 == v13)
  {
    v15 = [[NSDate alloc] initWithTimeInterval:v8 sinceDate:interval];

    v13 = v15;
  }

  if (v6)
  {
    CFRelease(v6);
  }

  CFRelease(_userDefaultsKeyLastTimeCheck);

  return v13;
}

- (double)_readTimeIntervalFromUserDefaultsKey:(id)key
{
  valuePtr = 0.0;
  keyCopy = key;
  v4 = CFPreferencesCopyAppValue(keyCopy, kSSUserDefaultsIdentifier);
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

  CFRelease(keyCopy);
  v9 = valuePtr;

  return v9;
}

- (void)_resetBackgroundTaskJobs
{
  if (self->_started)
  {
    _userDefaultsKeyWindowOverride = [(URLBagTimer *)self _userDefaultsKeyWindowOverride];
    [(URLBagTimer *)self _windowWithUserDefaultsKey:_userDefaultsKeyWindowOverride];
    v5 = v4;

    bagKey = self->_bagKey;
    _userDefaultsKeyWiFiOverride = [(URLBagTimer *)self _userDefaultsKeyWiFiOverride];
    [(URLBagTimer *)self _timerIntervalWithBagKey:bagKey userDefaultsKey:_userDefaultsKeyWiFiOverride];
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
    _userDefaultsKeyCellularOverride = [(URLBagTimer *)self _userDefaultsKeyCellularOverride];
    [(URLBagTimer *)self _timerIntervalWithBagKey:cellularBagKey userDefaultsKey:_userDefaultsKeyCellularOverride];
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

- (void)_setLastFireDate:(id)date
{
  dateCopy = date;
  _userDefaultsKeyLastTimeCheck = [(URLBagTimer *)self _userDefaultsKeyLastTimeCheck];
  v6 = kITunesStoreDaemonDefaultsID;
  CFPreferencesSetAppValue(_userDefaultsKeyLastTimeCheck, dateCopy, kITunesStoreDaemonDefaultsID);

  CFPreferencesAppSynchronize(v6);

  CFRelease(_userDefaultsKeyLastTimeCheck);
}

- (double)_timerInterval
{
  v3 = +[ISNetworkObserver sharedInstance];
  networkType = [v3 networkType];

  if (networkType == 1000)
  {
    bagKey = self->_bagKey;
    _userDefaultsKeyWiFiOverride = [(URLBagTimer *)self _userDefaultsKeyWiFiOverride];
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

    _userDefaultsKeyWiFiOverride = [(URLBagTimer *)self _userDefaultsKeyCellularOverride];
  }

  v7 = _userDefaultsKeyWiFiOverride;
  [(URLBagTimer *)self _timerIntervalWithBagKey:bagKey userDefaultsKey:_userDefaultsKeyWiFiOverride];
  v9 = v8;

  if (v9 < 2.22044605e-16)
  {
    return self->_defaultInterval;
  }

  return v9;
}

- (double)_timerIntervalWithBagKey:(id)key userDefaultsKey:(id)defaultsKey
{
  keyCopy = key;
  defaultsKeyCopy = defaultsKey;
  if (defaultsKeyCopy)
  {
    [(URLBagTimer *)self _readTimeIntervalFromUserDefaultsKey:defaultsKeyCopy];
    v9 = v8;
    if (!keyCopy)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v9 = 0.0;
    if (!keyCopy)
    {
      goto LABEL_7;
    }
  }

  if (v9 < 2.22044605e-16)
  {
    v10 = +[ISURLBagCache sharedCache];
    v11 = [SSURLBagContext contextWithBagType:0];
    v12 = [v10 URLBagForContext:v11];

    v13 = [v12 valueForKey:keyCopy];
    [v13 doubleValue];
    v9 = v14;
  }

LABEL_7:

  return v9;
}

- (double)_windowWithUserDefaultsKey:(id)key
{
  keyCopy = key;
  if (!keyCopy || ([(URLBagTimer *)self _readTimeIntervalFromUserDefaultsKey:keyCopy], defaultWindow < 2.22044605e-16))
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