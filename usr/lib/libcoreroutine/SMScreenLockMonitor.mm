@interface SMScreenLockMonitor
- (SMScreenLockMonitor)initWithQueue:(id)queue handler:(id)handler;
- (void)_registerForLockNotifications;
- (void)_unregisterForLockNotification;
@end

@implementation SMScreenLockMonitor

- (SMScreenLockMonitor)initWithQueue:(id)queue handler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (queueCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v22 = "[SMScreenLockMonitor initWithQueue:handler:]";
    v23 = 1024;
    v24 = 43;
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: queue (in %s:%d)", buf, 0x12u);
  }

  if (!v9)
  {
LABEL_7:
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[SMScreenLockMonitor initWithQueue:handler:]";
      v23 = 1024;
      v24 = 44;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  v20.receiver = self;
  v20.super_class = SMScreenLockMonitor;
  v12 = [(SMScreenLockMonitor *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, queue);
    v14 = [v9 copy];
    handler = v13->_handler;
    v13->_handler = v14;

    queue = v13->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__SMScreenLockMonitor_initWithQueue_handler___block_invoke;
    block[3] = &unk_2788C4EA0;
    v19 = v13;
    dispatch_async(queue, block);
  }

  return v13;
}

- (void)_registerForLockNotifications
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v15 = "[SMScreenLockMonitor _registerForLockNotifications]";
      _os_log_debug_impl(&dword_2304B3000, v3, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
    }
  }

  out_token = 0;
  objc_initWeak(&location, self);
  queue = [(SMScreenLockMonitor *)self queue];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __52__SMScreenLockMonitor__registerForLockNotifications__block_invoke;
  handler[3] = &unk_2788CA130;
  objc_copyWeak(&v11, &location);
  v5 = notify_register_dispatch(*MEMORY[0x277D67770], &out_token, queue, handler);

  [(SMScreenLockMonitor *)self setScreenLockNotificationToken:out_token];
  if (v5)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v15 = "[SMScreenLockMonitor _registerForLockNotifications]";
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "%s, unable to register for screen lock notifications", buf, 0xCu);
    }
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v15 = "[SMScreenLockMonitor _registerForLockNotifications]";
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "%s, registered for screen lock notifications", buf, 0xCu);
    }
  }

  v7 = +[SMScreenLockMonitor isDeviceLocked];
  handler = [(SMScreenLockMonitor *)self handler];

  if (handler)
  {
    handler2 = [(SMScreenLockMonitor *)self handler];
    handler2[2](handler2, v7);
  }

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __52__SMScreenLockMonitor__registerForLockNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained handler];

    WeakRetained = v5;
    if (v2)
    {
      v3 = +[SMScreenLockMonitor isDeviceLocked];
      v4 = [v5 handler];
      v4[2](v4, v3);

      WeakRetained = v5;
    }
  }
}

- (void)_unregisterForLockNotification
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = 136315138;
      v5 = "[SMScreenLockMonitor _unregisterForLockNotification]";
      _os_log_debug_impl(&dword_2304B3000, v3, OS_LOG_TYPE_DEBUG, "%s", &v4, 0xCu);
    }
  }

  notify_cancel([(SMScreenLockMonitor *)self screenLockNotificationToken]);
  [(SMScreenLockMonitor *)self setHandler:0];
}

@end