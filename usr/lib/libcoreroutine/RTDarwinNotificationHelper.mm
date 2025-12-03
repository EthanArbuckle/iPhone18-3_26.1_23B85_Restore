@interface RTDarwinNotificationHelper
- (RTDarwinNotificationHelper)init;
- (unint64_t)stateForNotificationName:(id)name;
- (void)_handleDarwinNotificationCallback:(id)callback;
- (void)addObserverForNotificationName:(id)name handler:(id)handler;
- (void)dealloc;
- (void)postNotification:(id)notification;
- (void)removeObserverForNotificationName:(id)name;
@end

@implementation RTDarwinNotificationHelper

- (RTDarwinNotificationHelper)init
{
  v6.receiver = self;
  v6.super_class = RTDarwinNotificationHelper;
  v2 = [(RTDarwinNotificationHelper *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    registrations = v2->_registrations;
    v2->_registrations = v3;
  }

  return v2;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allValues = [(NSMutableDictionary *)self->_registrations allValues];
  v4 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        notificationName = [*(*(&v10 + 1) + 8 * v7) notificationName];
        [(RTDarwinNotificationHelper *)self removeObserverForNotificationName:notificationName];

        ++v7;
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9.receiver = self;
  v9.super_class = RTDarwinNotificationHelper;
  [(RTDarwinNotificationHelper *)&v9 dealloc];
}

- (void)addObserverForNotificationName:(id)name handler:(id)handler
{
  v37 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!nameCopy)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: notificationName", buf, 2u);
    }

    goto LABEL_12;
  }

  if (!handlerCopy)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }

    goto LABEL_12;
  }

  v9 = [(NSMutableDictionary *)selfCopy->_registrations objectForKey:nameCopy];

  if (v9)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v33 = nameCopy;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "registration already exists for notification name %@, returning", buf, 0xCu);
    }

LABEL_12:

    goto LABEL_24;
  }

  objc_initWeak(&location, selfCopy);
  out_token = -1;
  v11 = nameCopy;
  uTF8String = [nameCopy UTF8String];
  v13 = MEMORY[0x277D85CD0];
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __69__RTDarwinNotificationHelper_addObserverForNotificationName_handler___block_invoke;
  v27 = &unk_2788C5F98;
  objc_copyWeak(&v29, &location);
  v14 = nameCopy;
  v28 = v14;
  v15 = notify_register_dispatch(uTF8String, &out_token, MEMORY[0x277D85CD0], &v24);

  if (v15 || out_token == -1)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v33 = v14;
      v34 = 1024;
      *v35 = v15;
      *&v35[4] = 1024;
      *&v35[6] = out_token;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "failed to register for darwin notification, %@, status, %d, registration token, %d", buf, 0x18u);
    }
  }

  else
  {
    v16 = [RTDarwinNotificationRecord alloc];
    v17 = [MEMORY[0x277CCABB0] numberWithInt:{out_token, v24, v25, v26, v27}];
    v18 = [(RTDarwinNotificationRecord *)v16 initWithNotificationName:v14 registrationToken:v17 handler:handlerCopy];

    if (v18)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          notificationName = [v18 notificationName];
          registrationToken = [v18 registrationToken];
          registrationToken2 = [v18 registrationToken];
          is_valid_token = notify_is_valid_token([registrationToken2 intValue]);
          *buf = 138412802;
          v33 = notificationName;
          v34 = 2112;
          *v35 = registrationToken;
          *&v35[8] = 1024;
          v36 = is_valid_token;
          _os_log_debug_impl(&dword_2304B3000, v19, OS_LOG_TYPE_DEBUG, "added registration for for notification name, %@, token, %@, valid, %d", buf, 0x1Cu);
        }
      }

      [(NSMutableDictionary *)selfCopy->_registrations setObject:v18 forKey:v14];
    }
  }

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
LABEL_24:
  objc_sync_exit(selfCopy);
}

void __69__RTDarwinNotificationHelper_addObserverForNotificationName_handler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _handleDarwinNotificationCallback:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)removeObserverForNotificationName:(id)name
{
  v19 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (nameCopy)
  {
    v6 = [(NSMutableDictionary *)selfCopy->_registrations objectForKey:nameCopy];
    v7 = v6;
    if (!v6)
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v15 = 138412290;
        v16 = nameCopy;
        _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "registration doesn't exist for notification %@, returning", &v15, 0xCu);
      }

      goto LABEL_10;
    }

    registrationToken = [v6 registrationToken];
    intValue = [registrationToken intValue];

    v10 = notify_cancel(intValue);
    if (v10)
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        notificationName = [v7 notificationName];
        v15 = 138412546;
        v16 = notificationName;
        v17 = 1024;
        v18 = v10;
        _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "failed to cancel registration for darwin notification, %@, status, %u", &v15, 0x12u);
      }

LABEL_10:

      goto LABEL_16;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        notificationName2 = [v7 notificationName];
        v15 = 138412290;
        v16 = notificationName2;
        _os_log_debug_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEBUG, "removing registration for for notification name, %@", &v15, 0xCu);
      }
    }

    [(NSMutableDictionary *)selfCopy->_registrations removeObjectForKey:nameCopy];
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15) = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: notificationName", &v15, 2u);
    }
  }

LABEL_16:

  objc_sync_exit(selfCopy);
}

- (void)postNotification:(id)notification
{
  if (notification)
  {
    uTF8String = [notification UTF8String];

    notify_post(uTF8String);
  }

  else
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: notificationName", v5, 2u);
    }
  }
}

- (unint64_t)stateForNotificationName:(id)name
{
  v15 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  state64 = 0;
  v5 = [(NSMutableDictionary *)self->_registrations objectForKey:nameCopy];

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_registrations objectForKey:nameCopy];
    registrationToken = [v6 registrationToken];
    intValue = [registrationToken intValue];

    if (notify_get_state(intValue, &state64))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v14 = nameCopy;
        _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Could not get state for %@", buf, 0xCu);
      }
    }
  }

  v10 = state64;

  return v10;
}

- (void)_handleDarwinNotificationCallback:(id)callback
{
  v13 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (callbackCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = callbackCopy;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "darwin notification received, %@", &v11, 0xCu);
      }
    }

    v7 = [(NSMutableDictionary *)selfCopy->_registrations objectForKey:callbackCopy];
    v8 = v7;
    if (v7)
    {
      handler = [v7 handler];
      v10 = handler;
      if (handler)
      {
        (*(handler + 16))(handler);
      }
    }

    else
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v11) = 0;
        _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "failed call darwin notification handler, record nil", &v11, 2u);
      }
    }
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11) = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: notificationName", &v11, 2u);
    }
  }

  objc_sync_exit(selfCopy);
}

@end