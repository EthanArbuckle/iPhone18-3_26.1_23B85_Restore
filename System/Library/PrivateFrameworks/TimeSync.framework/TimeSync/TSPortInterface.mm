@interface TSPortInterface
- (TSPortInterface)initWithgPTPPort:(id)port onClockIdentifier:(unint64_t)identifier;
- (void)didTimeoutOnMACLookupForPort:(id)port;
- (void)setMACLookupTimeoutCallback:(void *)callback refcon:(void *)refcon;
@end

@implementation TSPortInterface

- (TSPortInterface)initWithgPTPPort:(id)port onClockIdentifier:(unint64_t)identifier
{
  portCopy = port;
  v13.receiver = self;
  v13.super_class = TSPortInterface;
  v8 = [(TSPortInterface *)&v13 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.timesync.TSPortInterface.0x%016llx.%hu.notifications", identifier, objc_msgSend(portCopy, "portNumber")];
    v10 = dispatch_queue_create([v9 UTF8String], 0);
    notificationsQueue = v8->_notificationsQueue;
    v8->_notificationsQueue = v10;

    objc_storeStrong(&v8->_port, port);
  }

  return v8;
}

- (void)setMACLookupTimeoutCallback:(void *)callback refcon:(void *)refcon
{
  notificationsQueue = self->_notificationsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__TSPortInterface_setMACLookupTimeoutCallback_refcon___block_invoke;
  block[3] = &unk_279DBDF78;
  block[4] = self;
  block[5] = callback;
  block[6] = refcon;
  dispatch_sync(notificationsQueue, block);
}

void __54__TSPortInterface_setMACLookupTimeoutCallback_refcon___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) port];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v4 = [*(a1 + 32) port];
    v5 = v4;
    v6 = *(*(a1 + 32) + 16);
    if (*(a1 + 40))
    {
      if (!v6)
      {
        [v4 addClient:?];
        [v5 registerAsyncCallbackError:0];
      }
    }

    else if (v6)
    {
      [v4 deregisterAsyncCallbackError:0];
      [v5 removeClient:*(a1 + 32)];
    }
  }

  *(*(a1 + 32) + 16) = *(a1 + 40);
  *(*(a1 + 32) + 24) = *(a1 + 48);
}

- (void)didTimeoutOnMACLookupForPort:(id)port
{
  v17 = *MEMORY[0x277D85DE8];
  portCopy = port;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(TSPortInterface *)self description];
    *buf = 136315650;
    uTF8String = [v5 UTF8String];
    v13 = 1024;
    portNumber = [portCopy portNumber];
    v15 = 2048;
    clockIdentifier = [portCopy clockIdentifier];
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s didTimeoutOnMACLookupForPort:%hu (0x%016llx)\n", buf, 0x1Cu);
  }

  notificationsQueue = self->_notificationsQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__TSPortInterface_didTimeoutOnMACLookupForPort___block_invoke;
  v9[3] = &unk_279DBD738;
  v9[4] = self;
  v10 = portCopy;
  v7 = portCopy;
  dispatch_async(notificationsQueue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __48__TSPortInterface_didTimeoutOnMACLookupForPort___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 16))
  {
    v2 = objc_autoreleasePoolPush();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 32) description];
      v4 = [v3 UTF8String];
      v5 = *(a1 + 32);
      v6 = *(v5 + 16);
      v7 = *(v5 + 24);
      v8 = [*(a1 + 40) portNumber];
      v9 = [*(a1 + 40) clockIdentifier];
      v18 = 136316162;
      v19 = v4;
      v20 = 2048;
      v21 = v6;
      v22 = 2048;
      v23 = v7;
      v24 = 1024;
      v25 = v8;
      v26 = 2048;
      v27 = v9;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s calling MAC lookup timeout callback function %p refcon %p port %hu (0x%016llx)\n", &v18, 0x30u);
    }

    (*(*(a1 + 32) + 16))(*(a1 + 32), *(*(a1 + 32) + 24));
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) description];
      v11 = [v10 UTF8String];
      v12 = *(a1 + 32);
      v13 = *(v12 + 16);
      v14 = *(v12 + 24);
      v15 = [*(a1 + 40) portNumber];
      v16 = [*(a1 + 40) clockIdentifier];
      v18 = 136316162;
      v19 = v11;
      v20 = 2048;
      v21 = v13;
      v22 = 2048;
      v23 = v14;
      v24 = 1024;
      v25 = v15;
      v26 = 2048;
      v27 = v16;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s finished MAC lookup timeout callback function %p refcon %p port %hu (0x%016llx)\n", &v18, 0x30u);
    }

    objc_autoreleasePoolPop(v2);
  }

  v17 = *MEMORY[0x277D85DE8];
}

@end