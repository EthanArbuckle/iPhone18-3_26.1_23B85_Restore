@interface VISAXNotificationHandler
+ (id)_safelyGetObserverForIdentifier:(unint64_t)a3;
+ (unint64_t)_safelyRegisterObserver:(id)a3;
- (VISAXNotificationHandler)initWithNotificationName:(id)a3 target:(id)a4 dispatcher:(id)a5 startObserving:(BOOL)a6;
- (VISAXNotificationHandler)initWithNotificationName:(id)a3 target:(id)a4 handler:(SEL)a5;
- (id)_dispatcher;
- (id)_notificationTypeDescription;
- (id)description;
- (void)_handleNotificationWithName:(id)a3 object:(const void *)a4 userInfo:(id)a5;
- (void)_setDispatcher:(id)a3;
- (void)_startObserving;
- (void)_stopObserving;
- (void)dealloc;
@end

@implementation VISAXNotificationHandler

- (VISAXNotificationHandler)initWithNotificationName:(id)a3 target:(id)a4 handler:(SEL)a5
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__VISAXNotificationHandler_initWithNotificationName_target_handler___block_invoke;
  v6[3] = &__block_descriptor_40_e40__32__0__NSString_8r_v16__NSDictionary_24l;
  v6[4] = a5;
  return [(VISAXNotificationHandler *)self initWithNotificationName:a3 target:a4 dispatcher:v6];
}

- (VISAXNotificationHandler)initWithNotificationName:(id)a3 target:(id)a4 dispatcher:(id)a5 startObserving:(BOOL)a6
{
  v6 = a6;
  v31 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v28.receiver = self;
  v28.super_class = VISAXNotificationHandler;
  v13 = [(VISAXNotificationHandler *)&v28 init];
  v14 = v13;
  if (v13)
  {
    [(VISAXNotificationHandler *)v13 _setNotificationName:v10];
    [(VISAXNotificationHandler *)v14 _setTarget:v11];
    [(VISAXNotificationHandler *)v14 _setDispatcher:v12];
    v14->_observerIdentifier = [objc_opt_class() _safelyRegisterObserver:v14];
    if (v6)
    {
      v15 = [MEMORY[0x277CE6998] sharedInstance];
      v16 = [v15 ignoreLogging];

      if ((v16 & 1) == 0)
      {
        v17 = [MEMORY[0x277CE6998] identifier];
        v18 = AXLoggerForFacility();

        v19 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = AXColorizeFormatLog();
          v21 = [(VISAXNotificationHandler *)v14 _notificationTypeDescription];
          [(VISAXNotificationHandler *)v14 _notificationName];
          v27 = v26 = v21;
          v25 = v14;
          v22 = _AXStringForArgs();

          if (os_log_type_enabled(v18, v19))
          {
            *buf = 138543362;
            v30 = v22;
            _os_log_impl(&dword_27102A000, v18, v19, "%{public}@", buf, 0xCu);
          }
        }
      }

      [(VISAXNotificationHandler *)v14 _startObserving:v25];
      v14->_valid = 1;
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)dealloc
{
  [(VISAXNotificationHandler *)self invalidate];
  v3.receiver = self;
  v3.super_class = VISAXNotificationHandler;
  [(VISAXNotificationHandler *)&v3 dealloc];
}

- (id)_dispatcher
{
  v2 = MEMORY[0x2743BB9E0](self->_dispatcher, a2);

  return v2;
}

- (void)_setDispatcher:(id)a3
{
  v4 = a3;
  dispatcher = self->_dispatcher;
  if (dispatcher != v4)
  {
    v6 = v4;
    if (v4)
    {
      v4 = [v4 copy];
      dispatcher = self->_dispatcher;
    }

    self->_dispatcher = v4;

    v4 = v6;
  }
}

- (id)description
{
  v3 = [(VISAXNotificationHandler *)self _target];
  v4 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = VISAXNotificationHandler;
  v5 = [(VISAXNotificationHandler *)&v10 description];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v4 stringWithFormat:@"%@ (target: <%@: %p>)", v5, v7, v3];

  return v8;
}

uint64_t __38__VISAXNotificationHandler_invalidate__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) isValid];
  if (result)
  {
    [*(a1 + 32) _stopObserving];
    v3 = [MEMORY[0x277CE6998] sharedInstance];
    v4 = [v3 ignoreLogging];

    if ((v4 & 1) == 0)
    {
      v5 = [MEMORY[0x277CE6998] identifier];
      v6 = AXLoggerForFacility();

      v7 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = AXColorizeFormatLog();
        v9 = [*(a1 + 32) _notificationTypeDescription];
        v13 = [*(a1 + 32) _notificationName];
        v10 = _AXStringForArgs();

        if (os_log_type_enabled(v6, v7))
        {
          *buf = 138543362;
          v15 = v10;
          _os_log_impl(&dword_27102A000, v6, v7, "%{public}@", buf, 0xCu);
        }
      }
    }

    v11 = *(a1 + 32);
    [objc_opt_class() _safelyRemoveObserverForIdentifier:*(v11 + 32)];
    *(*(a1 + 32) + 32) = 0;
    [*(a1 + 32) _setNotificationName:0];
    [*(a1 + 32) _setTarget:0];
    result = [*(a1 + 32) _setDispatcher:0];
    *(*(a1 + 32) + 40) = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void __43__VISAXNotificationHandler_processHandler___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CE6998] sharedInstance];
  v3 = [v2 ignoreLogging];

  if ((v3 & 1) == 0)
  {
    v4 = [MEMORY[0x277CE6998] identifier];
    v5 = AXLoggerForFacility();

    v6 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = AXColorizeFormatLog();
      v8 = *(a1 + 32);
      v13 = NSStringFromSelector(*(a1 + 40));
      v14 = *(*(a1 + 32) + 8);
      v12 = v8;
      v9 = _AXStringForArgs();

      if (os_log_type_enabled(v5, v6))
      {
        *buf = 138543362;
        v16 = v9;
        _os_log_impl(&dword_27102A000, v5, v6, "%{public}@", buf, 0xCu);
      }
    }
  }

  v10 = [*(a1 + 32) _target];
  [v10 performSelector:*(a1 + 40) withObject:0];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleNotificationWithName:(id)a3 object:(const void *)a4 userInfo:(id)a5
{
  v11 = a3;
  v8 = a5;
  dispatcher = self->_dispatcher;
  if (dispatcher)
  {
    v10 = dispatcher[2](dispatcher, v11, a4, v8);
    if (v10)
    {
      [(VISAXNotificationHandler *)self processHandler:v10];
    }
  }
}

+ (unint64_t)_safelyRegisterObserver:(id)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5 = a3;
  AXPerformBlockSynchronouslyOnMainThread();
  v3 = v7[3];

  _Block_object_dispose(&v6, 8);
  return v3;
}

void __52__VISAXNotificationHandler__safelyRegisterObserver___block_invoke(uint64_t a1)
{
  if (!_AXNotificationHandlerListenerIdentifiers)
  {
    v2 = objc_opt_new();
    v3 = _AXNotificationHandlerListenerIdentifiers;
    _AXNotificationHandlerListenerIdentifiers = v2;
  }

  *(*(*(a1 + 40) + 8) + 24) = ++_AXNotificationHandlerListenerNextIdentifier;
  v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:*(*(*(a1 + 40) + 8) + 24)];
  v4 = _AXNotificationHandlerListenerIdentifiers;
  v5 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:*(a1 + 32)];
  [v4 setObject:v5 forKey:v6];
}

void __63__VISAXNotificationHandler__safelyRemoveObserverForIdentifier___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:*(a1 + 32)];
  [_AXNotificationHandlerListenerIdentifiers removeObjectForKey:?];
  if (![_AXNotificationHandlerListenerIdentifiers count])
  {
    v1 = _AXNotificationHandlerListenerIdentifiers;
    _AXNotificationHandlerListenerIdentifiers = 0;
  }
}

+ (id)_safelyGetObserverForIdentifier:(unint64_t)a3
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__0;
  v9 = __Block_byref_object_dispose__0;
  v10 = 0;
  AXPerformBlockSynchronouslyOnMainThread();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __60__VISAXNotificationHandler__safelyGetObserverForIdentifier___block_invoke(uint64_t a1)
{
  v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:*(a1 + 40)];
  v2 = [_AXNotificationHandlerListenerIdentifiers objectForKey:v6];
  v3 = [v2 nonretainedObjectValue];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)_notificationTypeDescription
{
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)_startObserving
{
  objc_opt_class();
  OUTLINED_FUNCTION_0();

  NSRequestConcreteImplementation();
}

- (void)_stopObserving
{
  objc_opt_class();
  OUTLINED_FUNCTION_0();

  NSRequestConcreteImplementation();
}

@end