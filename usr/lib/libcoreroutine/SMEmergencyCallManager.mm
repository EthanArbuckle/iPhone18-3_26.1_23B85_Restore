@interface SMEmergencyCallManager
- (BOOL)_isEmergencyCallOngoing;
- (SMEmergencyCallManager)init;
- (void)_addObserver:(id)observer;
- (void)_notifyObserversForEmergencyCallEnded;
- (void)_notifyObserversForEmergencyCallStarted;
- (void)_onTUCallCenterCallStatusChangedNotification:(id)notification;
- (void)_removeObserver:(id)observer;
- (void)_setup;
- (void)addObserver:(id)observer;
- (void)fetchIsEmergencyCallOngoingWithHandler:(id)handler;
- (void)onTUCallCenterCallStatusChangedNotification:(id)notification;
- (void)removeObserver:(id)observer;
- (void)setup;
@end

@implementation SMEmergencyCallManager

- (SMEmergencyCallManager)init
{
  v13.receiver = self;
  v13.super_class = SMEmergencyCallManager;
  v2 = [(SMEmergencyCallManager *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uTF8String = [(SMEmergencyCallManager *)v4 UTF8String];
    }

    else
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p", objc_opt_class(), v4];
      uTF8String = [v7 UTF8String];
    }

    v8 = dispatch_queue_create(uTF8String, v5);

    queue = v4->_queue;
    v4->_queue = v8;

    v10 = objc_alloc_init(MEMORY[0x277CCAA50]);
    observers = v4->_observers;
    v4->_observers = v10;

    [(SMEmergencyCallManager *)v4 setup];
  }

  return v3;
}

- (void)setup
{
  queue = [(SMEmergencyCallManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__SMEmergencyCallManager_setup__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_setup
{
  v3 = MEMORY[0x277D6EDF8];
  queue = [(SMEmergencyCallManager *)self queue];
  v5 = [v3 callCenterWithQueue:queue];
  callCenter = self->_callCenter;
  self->_callCenter = v5;

  [(TUCallCenter *)self->_callCenter registerWithCompletionHandler:&__block_literal_global_100];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_onTUCallCenterCallStatusChangedNotification_ name:*MEMORY[0x277D6EFF0] object:0];
}

- (void)fetchIsEmergencyCallOngoingWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(SMEmergencyCallManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__SMEmergencyCallManager_fetchIsEmergencyCallOngoingWithHandler___block_invoke;
  v7[3] = &unk_2788C4D38;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

uint64_t __65__SMEmergencyCallManager_fetchIsEmergencyCallOngoingWithHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _isEmergencyCallOngoing];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (BOOL)_isEmergencyCallOngoing
{
  v12 = *MEMORY[0x277D85DE8];
  [(TUCallCenter *)self->_callCenter currentCalls];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) isEmergency])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  queue = [(SMEmergencyCallManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__SMEmergencyCallManager_addObserver___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  queue = [(SMEmergencyCallManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__SMEmergencyCallManager_removeObserver___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

- (void)_addObserver:(id)observer
{
  v12 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = 136446466;
      v9 = "[SMEmergencyCallManager _addObserver:]";
      v10 = 2112;
      v11 = v7;
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "%{public}s, adding observer, %@", &v8, 0x16u);
    }
  }

  [(NSHashTable *)self->_observers addObject:observerCopy];
  if ([(SMEmergencyCallManager *)self _isEmergencyCallOngoing])
  {
    if (objc_opt_respondsToSelector())
    {
      [observerCopy onEmergencyCallStarted];
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    [observerCopy onEmergencyCallEnded];
  }
}

- (void)_removeObserver:(id)observer
{
  v12 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = 136446466;
      v9 = "[SMEmergencyCallManager _removeObserver:]";
      v10 = 2112;
      v11 = v7;
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "%{public}s, removing observer, %@", &v8, 0x16u);
    }
  }

  [(NSHashTable *)self->_observers removeObject:observerCopy];
}

- (void)_notifyObserversForEmergencyCallStarted
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  observers = [(SMEmergencyCallManager *)self observers];
  v3 = [observers countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(observers);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 onEmergencyCallStarted];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [observers countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)_notifyObserversForEmergencyCallEnded
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  observers = [(SMEmergencyCallManager *)self observers];
  v3 = [observers countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(observers);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 onEmergencyCallEnded];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [observers countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)onTUCallCenterCallStatusChangedNotification:(id)notification
{
  v12 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v11 = "[SMEmergencyCallManager onTUCallCenterCallStatusChangedNotification:]";
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%{public}s, received TUCallCenterCallStatusChangedNotification", buf, 0xCu);
    }
  }

  queue = [(SMEmergencyCallManager *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__SMEmergencyCallManager_onTUCallCenterCallStatusChangedNotification___block_invoke;
  v8[3] = &unk_2788C4A70;
  v8[4] = self;
  v9 = notificationCopy;
  v7 = notificationCopy;
  dispatch_async(queue, v8);
}

- (void)_onTUCallCenterCallStatusChangedNotification:(id)notification
{
  v24 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  name = [notificationCopy name];
  v6 = [name isEqualToString:*MEMORY[0x277D6EFF0]];

  if (v6)
  {
    object = [notificationCopy object];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      object2 = [notificationCopy object];
      v10 = object2;
      if (!object2 || ![object2 isEmergency])
      {
        goto LABEL_18;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          v21 = "[SMEmergencyCallManager _onTUCallCenterCallStatusChangedNotification:]";
          v22 = 1024;
          status = [v10 status];
          _os_log_debug_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEBUG, "%{public}s, emergency call with status, %d", buf, 0x12u);
        }
      }

      status2 = [v10 status];
      switch(status2)
      {
        case 1:
          goto LABEL_28;
        case 6:
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 136446210;
              v21 = "[SMEmergencyCallManager _onTUCallCenterCallStatusChangedNotification:]";
              _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "%{public}s, emergency call has ended", buf, 0xCu);
            }
          }

          queue = [(SMEmergencyCallManager *)self queue];
          v15 = queue;
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = __71__SMEmergencyCallManager__onTUCallCenterCallStatusChangedNotification___block_invoke_10;
          v18[3] = &unk_2788C4EA0;
          v18[4] = self;
          v16 = v18;
          goto LABEL_25;
        case 3:
LABEL_28:
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              *buf = 136446210;
              v21 = "[SMEmergencyCallManager _onTUCallCenterCallStatusChangedNotification:]";
              _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%{public}s, emergency call is active", buf, 0xCu);
            }
          }

          queue = [(SMEmergencyCallManager *)self queue];
          v15 = queue;
          v19[0] = MEMORY[0x277D85DD0];
          v19[1] = 3221225472;
          v19[2] = __71__SMEmergencyCallManager__onTUCallCenterCallStatusChangedNotification___block_invoke;
          v19[3] = &unk_2788C4EA0;
          v19[4] = self;
          v16 = v19;
LABEL_25:
          dispatch_async(queue, v16);

          break;
      }
    }

    else
    {
      v10 = 0;
    }

LABEL_18:
  }
}

@end