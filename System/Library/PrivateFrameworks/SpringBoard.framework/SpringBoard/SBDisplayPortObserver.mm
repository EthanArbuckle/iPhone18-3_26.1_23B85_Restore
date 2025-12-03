@interface SBDisplayPortObserver
- (BOOL)isDisplayPortConnected;
- (BOOL)startMatchingNotifications;
- (SBDisplayPortObserver)init;
- (SBDisplayPortObserverDelegate)delegate;
- (void)_addTransportNotificationForService:(unsigned int)service andRegistryEntryID:(unint64_t)d;
- (void)_handleNotificationForService:(unsigned int)service messageType:(unsigned int)type messageArgument:(void *)argument;
- (void)_handleServiceAdded:(unsigned int)added;
- (void)_notifyDelegate;
- (void)_removeTransportNotificationForRegistryEntryID:(unint64_t)d;
- (void)dealloc;
- (void)stopMatchingNotifications;
@end

@implementation SBDisplayPortObserver

- (SBDisplayPortObserver)init
{
  v8.receiver = self;
  v8.super_class = SBDisplayPortObserver;
  v2 = [(SBDisplayPortObserver *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("SBDisplayPortObserver", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v2->_ioNotificationPort = 0;
    v2->_ioServiceAddedIterator = 0;
    v2->_matchingNotificationsStarted = 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    transportNotifiers = v2->_transportNotifiers;
    v2->_transportNotifiers = dictionary;
  }

  return v2;
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = SBLogVideoOut();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543362;
    v8 = v5;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[SBDisplayPortObserver] Deallocating %{public}@...", buf, 0xCu);
  }

  [(SBDisplayPortObserver *)self stopMatchingNotifications];
  v6.receiver = self;
  v6.super_class = SBDisplayPortObserver;
  [(SBDisplayPortObserver *)&v6 dealloc];
}

- (BOOL)startMatchingNotifications
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = SBLogVideoOut();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[SBDisplayPortObserver] Adding transport matching notifications...", buf, 2u);
  }

  queue = [(SBDisplayPortObserver *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__SBDisplayPortObserver_startMatchingNotifications__block_invoke;
  v7[3] = &unk_2783A9300;
  v7[4] = self;
  v7[5] = &v9;
  dispatch_sync(queue, v7);

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v5;
}

void __51__SBDisplayPortObserver_startMatchingNotifications__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) matchingNotificationsStarted])
  {
    [*(a1 + 32) stopMatchingNotifications];
  }

  [*(a1 + 32) setIONotificationPort:IONotificationPortCreate(*MEMORY[0x277CD2898])];
  v2 = [*(a1 + 32) ioNotificationPort];
  v3 = [*(a1 + 32) queue];
  IONotificationPortSetDispatchQueue(v2, v3);

  v4 = IOServiceMatching("IOPortTransportState");
  [(__CFDictionary *)v4 setObject:&unk_2833726E8 forKey:@"IOPropertyMatch"];
  v5 = IOServiceMatching("IOPort");
  [(__CFDictionary *)v5 setObject:&unk_283372710 forKey:@"IOPropertyMatch"];
  [(__CFDictionary *)v4 setObject:v5 forKey:@"IOParentMatch"];
  NSLog(&cfstr_Matchingdict.isa, v4);
  v6 = [*(a1 + 32) ioNotificationPort];
  v7 = v4;
  v8 = IOServiceAddMatchingNotification(v6, "IOServiceMatched", v7, _serviceAdded, *(a1 + 32), (*(a1 + 32) + 12));
  if (v8)
  {
    v9 = v8;
    v10 = SBLogVideoOut();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __51__SBDisplayPortObserver_startMatchingNotifications__block_invoke_cold_1(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  else
  {
    _serviceAdded(*(a1 + 32), [*(a1 + 32) ioServiceAddedIterator]);
    [*(a1 + 32) setMatchingNotificationsStarted:1];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (void)stopMatchingNotifications
{
  v3 = SBLogVideoOut();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[SBDisplayPortObserver] Removing transport matching notifications...", buf, 2u);
  }

  queue = [(SBDisplayPortObserver *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SBDisplayPortObserver_stopMatchingNotifications__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_sync(queue, block);
}

uint64_t __50__SBDisplayPortObserver_stopMatchingNotifications__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) transportNotifiers];
  [v2 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_5];

  v3 = [*(a1 + 32) transportNotifiers];
  [v3 removeAllObjects];

  v4 = [*(a1 + 32) ioServiceAddedIterator];
  if (v4)
  {
    IOObjectRelease(v4);
  }

  v5 = [*(a1 + 32) ioNotificationPort];
  if (v5)
  {
    IONotificationPortDestroy(v5);
  }

  v6 = *(a1 + 32);

  return [v6 setMatchingNotificationsStarted:0];
}

void __50__SBDisplayPortObserver_stopMatchingNotifications__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 unsignedIntValue];
      if (v5)
      {
        IOObjectRelease(v5);
      }
    }
  }
}

- (BOOL)isDisplayPortConnected
{
  transportNotifiers = [(SBDisplayPortObserver *)self transportNotifiers];
  allKeys = [transportNotifiers allKeys];
  v4 = [allKeys count] != 0;

  return v4;
}

- (void)_handleServiceAdded:(unsigned int)added
{
  v3 = *&added;
  v22 = *MEMORY[0x277D85DE8];
  entryID = 0;
  RegistryEntryID = IORegistryEntryGetRegistryEntryID(added, &entryID);
  if (RegistryEntryID)
  {
    v6 = RegistryEntryID;
    CFProperty = SBLogVideoOut();
    if (os_log_type_enabled(CFProperty, OS_LOG_TYPE_ERROR))
    {
      [(SBDisplayPortObserver *)v6 _handleServiceAdded:v8, v9, v10, v11, v12, v13];
    }
  }

  else
  {
    transportNotifiers = [(SBDisplayPortObserver *)self transportNotifiers];
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:entryID];
    v16 = [transportNotifiers objectForKeyedSubscript:v15];

    if (v16)
    {
      CFProperty = SBLogVideoOut();
      if (os_log_type_enabled(CFProperty, OS_LOG_TYPE_DEBUG))
      {
        [(SBDisplayPortObserver *)&entryID _handleServiceAdded:?];
      }
    }

    else
    {
      CFProperty = IORegistryEntryCreateCFProperty(v3, @"TransportDescription", *MEMORY[0x277CBECE8], 0);
      v17 = SBLogVideoOut();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v21 = entryID;
        _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "[SBDisplayPortObserver] Adding transport interest notifications... (registryEntryID: %llu)", buf, 0xCu);
      }

      v18 = SBLogVideoOut();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [(SBDisplayPortObserver *)CFProperty _handleServiceAdded:v18];
      }

      [(SBDisplayPortObserver *)self _addTransportNotificationForService:v3 andRegistryEntryID:entryID];
    }
  }
}

- (void)_handleNotificationForService:(unsigned int)service messageType:(unsigned int)type messageArgument:(void *)argument
{
  v27 = *MEMORY[0x277D85DE8];
  entryID = 0;
  RegistryEntryID = IORegistryEntryGetRegistryEntryID(service, &entryID);
  if (RegistryEntryID)
  {
    v9 = RegistryEntryID;
    CFProperty = SBLogVideoOut();
    if (os_log_type_enabled(CFProperty, OS_LOG_TYPE_ERROR))
    {
      [(SBDisplayPortObserver *)v9 _handleServiceAdded:v11, v12, v13, v14, v15, v16];
    }

    goto LABEL_15;
  }

  CFProperty = IORegistryEntryCreateCFProperty(service, @"TransportDescription", *MEMORY[0x277CBECE8], 0);
  v17 = SBLogVideoOut();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (type != -536870896)
  {
    if (type == -536870608)
    {
      if (v18)
      {
        *buf = 138412546;
        v24 = CFProperty;
        v25 = 2048;
        v26 = entryID;
        v19 = "[SBDisplayPortObserver] messageType: kIOMessageServicePropertyChange, transportDescription: %@, registryEntryID: %llu";
        v20 = v17;
        v21 = 22;
LABEL_13:
        _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
      }
    }

    else if (v18)
    {
      *buf = 67109120;
      LODWORD(v24) = type;
      v19 = "[SBDisplayPortObserver] messageType: %u";
      v20 = v17;
      v21 = 8;
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if (v18)
  {
    *buf = 138412546;
    v24 = CFProperty;
    v25 = 2048;
    v26 = entryID;
    _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "[SBDisplayPortObserver] messageType: kIOMessageServiceIsTerminated, transportDescription: %@, registryEntryID: %llu)", buf, 0x16u);
  }

  [(SBDisplayPortObserver *)self _removeTransportNotificationForRegistryEntryID:entryID];
LABEL_15:
}

- (void)_addTransportNotificationForService:(unsigned int)service andRegistryEntryID:(unint64_t)d
{
  isDisplayPortConnected = [(SBDisplayPortObserver *)self isDisplayPortConnected];
  notification = 0;
  IOServiceAddInterestNotification([(SBDisplayPortObserver *)self ioNotificationPort], service, "IOGeneralInterest", _serviceNotification, self, &notification);
  if (notification)
  {
    transportNotifiers = [(SBDisplayPortObserver *)self transportNotifiers];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:notification];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:d];
    [transportNotifiers setObject:v9 forKey:v10];

    if (isDisplayPortConnected != [(SBDisplayPortObserver *)self isDisplayPortConnected])
    {
      [(SBDisplayPortObserver *)self _notifyDelegate];
    }
  }
}

- (void)_removeTransportNotificationForRegistryEntryID:(unint64_t)d
{
  isDisplayPortConnected = [(SBDisplayPortObserver *)self isDisplayPortConnected];
  transportNotifiers = [(SBDisplayPortObserver *)self transportNotifiers];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:d];
  v7 = [transportNotifiers objectForKeyedSubscript:v6];

  if (v7)
  {
    transportNotifiers2 = [(SBDisplayPortObserver *)self transportNotifiers];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:d];
    [transportNotifiers2 removeObjectForKey:v9];

    unsignedIntValue = [v7 unsignedIntValue];
    if (unsignedIntValue)
    {
      IOObjectRelease(unsignedIntValue);
    }

    if (isDisplayPortConnected != [(SBDisplayPortObserver *)self isDisplayPortConnected])
    {
      [(SBDisplayPortObserver *)self _notifyDelegate];
    }
  }
}

- (void)_notifyDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained displayPortObserver:self connectionStateChanged:{-[SBDisplayPortObserver isDisplayPortConnected](self, "isDisplayPortConnected")}];
}

- (SBDisplayPortObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleServiceAdded:(uint64_t *)a1 .cold.2(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "[SBDisplayPortObserver] Port object already exists for service, ignoring... (registryEntryID: %llu)", &v3, 0xCu);
}

- (void)_handleServiceAdded:(os_log_t)log .cold.3(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = 138412546;
  v5 = a1;
  v6 = 2048;
  v7 = v3;
  _os_log_debug_impl(&dword_21ED4E000, log, OS_LOG_TYPE_DEBUG, "[SBDisplayPortObserver] Transport matched! (transportDescription: %@, registryEntryID: %llu)", &v4, 0x16u);
}

@end