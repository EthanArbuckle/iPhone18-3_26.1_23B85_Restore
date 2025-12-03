@interface AXAutoForwardingLocalNotificationHandler
- (AXAutoForwardingLocalNotificationHandler)initWithNotificationName:(id)name target:(id)target dispatcher:(id)dispatcher possibleHandlers:(SEL)handlers;
- (AXAutoForwardingLocalNotificationHandler)initWithNotificationName:(id)name target:(id)target dispatcher:(id)dispatcher startObserving:(BOOL)observing;
- (AXAutoForwardingLocalNotificationHandler)initWithNotificationName:(id)name target:(id)target handler:(SEL)handler;
- (BOOL)_handleForwardDistributedNotificationWithName:(id)name object:(const void *)object userInfo:(id)info;
- (id)_forwardDistributedNotificationNameForHandler:(SEL)handler;
- (id)_notificationTypeDescription;
- (id)_prefixForForwardDistributedNotificationName;
- (void)_startObserving;
- (void)_stopObserving;
- (void)dealloc;
- (void)processHandler:(SEL)handler;
@end

@implementation AXAutoForwardingLocalNotificationHandler

- (AXAutoForwardingLocalNotificationHandler)initWithNotificationName:(id)name target:(id)target handler:(SEL)handler
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __84__AXAutoForwardingLocalNotificationHandler_initWithNotificationName_target_handler___block_invoke;
  v6[3] = &__block_descriptor_40_e40__32__0__NSString_8r_v16__NSDictionary_24l;
  v6[4] = handler;
  return [(AXAutoForwardingLocalNotificationHandler *)self initWithNotificationName:name target:target dispatcher:v6 possibleHandlers:handler, 0];
}

- (AXAutoForwardingLocalNotificationHandler)initWithNotificationName:(id)name target:(id)target dispatcher:(id)dispatcher startObserving:(BOOL)observing
{
  v7 = MEMORY[0x277CBEAD8];
  v8 = *MEMORY[0x277CBE648];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = NSStringFromSelector(a2);
  v12 = NSStringFromSelector(sel_initWithNotificationName_target_dispatcher_possibleHandlers_);
  [v7 raise:v8 format:{@"Can't initialize an instance of %@ with initializer %@. If you need to provide a complex dispatcher (i.e. if you have more than 1 possible handler), you need to use %@ and provide a list of all the handler selectors that might be returned by your dispatcher.", v10, v11, v12}];

  return 0;
}

- (AXAutoForwardingLocalNotificationHandler)initWithNotificationName:(id)name target:(id)target dispatcher:(id)dispatcher possibleHandlers:(SEL)handlers
{
  v32 = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = AXAutoForwardingLocalNotificationHandler;
  v7 = [(VISAXNotificationHandler *)&v29 initWithNotificationName:name target:target dispatcher:dispatcher startObserving:0];
  if (v7)
  {
    v28 = 0;
    if (handlers)
    {
      v8 = 0;
      v9 = 0;
      v28 = &v33;
      do
      {
        v10 = v28++;
        ++v9;
        v8 += 8;
      }

      while (*v10);
      if (v9)
      {
        v11 = malloc_type_malloc(v8, 0x80040B8603338uLL);
        v7->_possibleHandlers = v11;
        if (v11)
        {
          *v11 = handlers;
          v28 = &v33;
          if (v9 != 1)
          {
            v12 = v9 - 1;
            v13 = 1;
            do
            {
              v14 = v28++;
              v7->_possibleHandlers[v13++] = *v14;
              --v12;
            }

            while (v12);
          }

          v7->_possibleHandlersCount = v9;
        }
      }
    }

    mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
    ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

    if ((ignoreLogging & 1) == 0)
    {
      identifier = [MEMORY[0x277CE6998] identifier];
      v18 = AXLoggerForFacility();

      v19 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = AXColorizeFormatLog();
        _notificationTypeDescription = [(AXAutoForwardingLocalNotificationHandler *)v7 _notificationTypeDescription];
        [(VISAXNotificationHandler *)v7 _notificationName];
        v27 = v26 = _notificationTypeDescription;
        v25 = v7;
        v22 = _AXStringForArgs();

        if (os_log_type_enabled(v18, v19))
        {
          *buf = 138543362;
          v31 = v22;
          _os_log_impl(&dword_27102A000, v18, v19, "%{public}@", buf, 0xCu);
        }
      }
    }

    [(AXAutoForwardingLocalNotificationHandler *)v7 _startObserving:v25];
    v7->super.super._valid = 1;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)dealloc
{
  [(VISAXNotificationHandler *)self invalidate];
  possibleHandlers = self->_possibleHandlers;
  if (possibleHandlers)
  {
    free(possibleHandlers);
  }

  v4.receiver = self;
  v4.super_class = AXAutoForwardingLocalNotificationHandler;
  [(VISAXNotificationHandler *)&v4 dealloc];
}

- (void)processHandler:(SEL)handler
{
  v18 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = AXAutoForwardingLocalNotificationHandler;
  [(VISAXNotificationHandler *)&v15 processHandler:?];
  if (AXProcessIsSpringBoard())
  {
    v5 = [(AXAutoForwardingLocalNotificationHandler *)self _forwardDistributedNotificationNameForHandler:handler];
    mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
    ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

    if ((ignoreLogging & 1) == 0)
    {
      identifier = [MEMORY[0x277CE6998] identifier];
      v9 = AXLoggerForFacility();

      v10 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = AXColorizeFormatLog();
        v12 = _AXStringForArgs();
        if (os_log_type_enabled(v9, v10))
        {
          *buf = 138543362;
          v17 = v12;
          _os_log_impl(&dword_27102A000, v9, v10, "%{public}@", buf, 0xCu);
        }
      }
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, v5, 0, 0, 1u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_prefixForForwardDistributedNotificationName
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  _notificationName = [(VISAXNotificationHandler *)self _notificationName];
  _target = [(VISAXNotificationHandler *)self _target];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v3 stringWithFormat:@"%@__%@__%@__", v5, _notificationName, v9];

  return v10;
}

- (id)_forwardDistributedNotificationNameForHandler:(SEL)handler
{
  v4 = MEMORY[0x277CCACA8];
  _prefixForForwardDistributedNotificationName = [(AXAutoForwardingLocalNotificationHandler *)self _prefixForForwardDistributedNotificationName];
  v6 = NSStringFromSelector(handler);
  v7 = [v4 stringWithFormat:@"%@%@", _prefixForForwardDistributedNotificationName, v6];

  return v7;
}

- (BOOL)_handleForwardDistributedNotificationWithName:(id)name object:(const void *)object userInfo:(id)info
{
  nameCopy = name;
  _prefixForForwardDistributedNotificationName = [(AXAutoForwardingLocalNotificationHandler *)self _prefixForForwardDistributedNotificationName];
  if (![nameCopy hasPrefix:_prefixForForwardDistributedNotificationName])
  {
    goto LABEL_5;
  }

  v8 = [nameCopy substringFromIndex:{objc_msgSend(_prefixForForwardDistributedNotificationName, "length")}];
  v9 = NSSelectorFromString(v8);
  if (!v9)
  {

LABEL_5:
    _AXAssert();
    v10 = 0;
    goto LABEL_6;
  }

  [(AXAutoForwardingLocalNotificationHandler *)self processHandler:v9];

  v10 = 1;
LABEL_6:

  return v10;
}

- (void)_startObserving
{
  v19 = *MEMORY[0x277D85DE8];
  if (AXProcessIsSpringBoard())
  {
    v16.receiver = self;
    v16.super_class = AXAutoForwardingLocalNotificationHandler;
    [(AXLocalNotificationHandler *)&v16 _startObserving];
  }

  else if (self->_possibleHandlers && self->_possibleHandlersCount)
  {
    v3 = 0;
    do
    {
      v4 = [(AXAutoForwardingLocalNotificationHandler *)self _forwardDistributedNotificationNameForHandler:self->_possibleHandlers[v3], selfCopy, v15];
      mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
      ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

      if ((ignoreLogging & 1) == 0)
      {
        identifier = [MEMORY[0x277CE6998] identifier];
        v8 = AXLoggerForFacility();

        v9 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = AXColorizeFormatLog();
          selfCopy = self;
          v15 = v4;
          v11 = _AXStringForArgs();
          if (os_log_type_enabled(v8, v9))
          {
            *buf = 138543362;
            v18 = v11;
            _os_log_impl(&dword_27102A000, v8, v9, "%{public}@", buf, 0xCu);
          }
        }
      }

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, self->super.super._observerIdentifier, _HandleDistributedNotification, v4, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

      ++v3;
    }

    while (v3 < self->_possibleHandlersCount);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_stopObserving
{
  v19 = *MEMORY[0x277D85DE8];
  if (AXProcessIsSpringBoard())
  {
    v16.receiver = self;
    v16.super_class = AXAutoForwardingLocalNotificationHandler;
    [(AXLocalNotificationHandler *)&v16 _stopObserving];
  }

  else if (self->_possibleHandlersCount)
  {
    v3 = 0;
    do
    {
      v4 = [(AXAutoForwardingLocalNotificationHandler *)self _forwardDistributedNotificationNameForHandler:self->_possibleHandlers[v3], selfCopy, v15];
      mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
      ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

      if ((ignoreLogging & 1) == 0)
      {
        identifier = [MEMORY[0x277CE6998] identifier];
        v8 = AXLoggerForFacility();

        v9 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = AXColorizeFormatLog();
          selfCopy = self;
          v15 = v4;
          v11 = _AXStringForArgs();
          if (os_log_type_enabled(v8, v9))
          {
            *buf = 138543362;
            v18 = v11;
            _os_log_impl(&dword_27102A000, v8, v9, "%{public}@", buf, 0xCu);
          }
        }
      }

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self->super.super._observerIdentifier, v4, 0);

      ++v3;
    }

    while (v3 < self->_possibleHandlersCount);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_notificationTypeDescription
{
  v2 = MEMORY[0x277CCACA8];
  v6.receiver = self;
  v6.super_class = AXAutoForwardingLocalNotificationHandler;
  _notificationTypeDescription = [(AXLocalNotificationHandler *)&v6 _notificationTypeDescription];
  v4 = [v2 stringWithFormat:@"auto-forwarding %@", _notificationTypeDescription];

  return v4;
}

@end