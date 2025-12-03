@interface CACAXNotificationObserver
- (CACAXNotificationObserver)initWithNotifications:(id)notifications;
- (CACAXNotificationObserverDelegate)delegate;
- (void)_didObserveNotification:(int)notification notificationData:(void *)data;
@end

@implementation CACAXNotificationObserver

- (CACAXNotificationObserver)initWithNotifications:(id)notifications
{
  notificationsCopy = notifications;
  v11.receiver = self;
  v11.super_class = CACAXNotificationObserver;
  v5 = [(CACAXNotificationObserver *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__CACAXNotificationObserver_initWithNotifications___block_invoke;
    v8[3] = &unk_279CEB4C0;
    v9 = v5;
    v10 = notificationsCopy;
    dispatch_async(MEMORY[0x277D85CD0], v8);
  }

  return v6;
}

void __51__CACAXNotificationObserver_initWithNotifications___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CE6BA0] systemWideElement];
  v3 = AXObserverCreate([v2 pid], _accessibilityNotificationCallback, (*(a1 + 32) + 8));

  if (v3)
  {
    v4 = CACLogAccessibility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __51__CACAXNotificationObserver_initWithNotifications___block_invoke_cold_1(v3, v4);
    }
  }

  else
  {
    RunLoopSource = AXObserverGetRunLoopSource(*(*(a1 + 32) + 8));
    if (RunLoopSource)
    {
      v6 = RunLoopSource;
      Current = CFRunLoopGetCurrent();
      CFRunLoopAddSource(Current, v6, *MEMORY[0x277CBF058]);
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v4 = *(a1 + 40);
      v8 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v19;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(v4);
            }

            v12 = [*(*(&v18 + 1) + 8 * i) intValue];
            v13 = *(*(a1 + 32) + 8);
            v14 = [MEMORY[0x277CE6BA0] systemWideElement];
            v15 = [v14 uiElement];
            v16 = AXObserverAddNotification(v13, [v15 axElement], v12, *(a1 + 32));

            if (v16)
            {
              v17 = CACLogAccessibility();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                __51__CACAXNotificationObserver_initWithNotifications___block_invoke_cold_2(v12, v16, v17);
              }

              goto LABEL_4;
            }
          }

          v9 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      v4 = CACLogAccessibility();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __51__CACAXNotificationObserver_initWithNotifications___block_invoke_cold_3(v4);
      }
    }
  }

LABEL_4:
}

- (void)_didObserveNotification:(int)notification notificationData:(void *)data
{
  v5 = *&notification;
  delegate = [(CACAXNotificationObserver *)self delegate];
  [delegate observer:self didObserveNotification:v5 notificationData:data];
}

- (CACAXNotificationObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __51__CACAXNotificationObserver_initWithNotifications___block_invoke_cold_1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_26B354000, a2, OS_LOG_TYPE_ERROR, "Error creating AXObserver: %ld", &v2, 0xCu);
}

void __51__CACAXNotificationObserver_initWithNotifications___block_invoke_cold_2(int a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218240;
  v4 = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_error_impl(&dword_26B354000, log, OS_LOG_TYPE_ERROR, "Unable to register for notification %ld with error %d", &v3, 0x12u);
}

@end