@interface TSgPTPManager
+ (id)diagnosticDescriptionForInfo:(id)info withIndent:(id)indent;
+ (id)gPTPManager;
+ (id)sharedgPTPManager;
+ (id)sharedgPTPManagerSyncWithTimeout:(unint64_t)timeout;
- (TSgPTPClock)systemDomain;
- (TSgPTPManager)init;
- (void)addClient:(id)client;
- (void)dealloc;
- (void)init;
- (void)interruptedgPTPManager;
- (void)removeClient:(id)client;
@end

@implementation TSgPTPManager

+ (id)sharedgPTPManager
{
  os_unfair_lock_lock(&_sharedgPTPManagerLock);
  v3 = _sharedgPTPManager;
  if (!_sharedgPTPManager)
  {
    v4 = +[TSClockManager sharedClockManager];
    [v4 addgPTPServicesWithError:0];
    gPTPManager = [self gPTPManager];
    v6 = _sharedgPTPManager;
    _sharedgPTPManager = gPTPManager;

    v3 = _sharedgPTPManager;
  }

  v7 = v3;
  os_unfair_lock_unlock(&_sharedgPTPManagerLock);

  return v7;
}

+ (id)sharedgPTPManagerSyncWithTimeout:(unint64_t)timeout
{
  v5 = dispatch_semaphore_create(0);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__TSgPTPManager_sharedgPTPManagerSyncWithTimeout___block_invoke;
  v11[3] = &unk_279DBD538;
  v6 = v5;
  v12 = v6;
  [self notifyWhengPTPManagerIsAvailable:v11];
  v7 = dispatch_time(0, 1000000 * timeout);
  if (dispatch_semaphore_wait(v6, v7))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to find gPTP manager within the timeout period.\n", v10, 2u);
    }

    sharedgPTPManager = 0;
  }

  else
  {
    sharedgPTPManager = [self sharedgPTPManager];
  }

  return sharedgPTPManager;
}

+ (id)gPTPManager
{
  v2 = objc_alloc_init(TSgPTPManager);
  if (!v2)
  {
    v3 = 10;
    do
    {
      usleep(0x2710u);
      v2 = objc_alloc_init(TSgPTPManager);
      if (v3 < 2)
      {
        break;
      }

      --v3;
    }

    while (!v2);
  }

  return v2;
}

- (TSgPTPManager)init
{
  v12.receiver = self;
  v12.super_class = TSgPTPManager;
  v2 = [(TSgPTPManager *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_clientLock._os_unfair_lock_opaque = 0;
    weakObjectsPointerArray = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    clients = v3->_clients;
    v3->_clients = weakObjectsPointerArray;

    v6 = objc_alloc_init(_TSF_TSDgPTPManager);
    impl = v3->_impl;
    v3->_impl = v6;

    if (v3->_impl)
    {
      v8 = +[TSClockManager sharedClockManager];
      [v8 addgPTPServicesWithError:0];

      v9 = dispatch_queue_create("com.apple.TimeSync.TSgPTPManager.systemDomain", 0);
      systemDomainQueue = v3->_systemDomainQueue;
      v3->_systemDomainQueue = v9;
    }

    else
    {
      [(TSgPTPManager *)v3 init];
      return 0;
    }
  }

  return v3;
}

- (TSgPTPClock)systemDomain
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  systemDomainQueue = self->_systemDomainQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__TSgPTPManager_systemDomain__block_invoke;
  v5[3] = &unk_279DBD560;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(systemDomainQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __29__TSgPTPManager_systemDomain__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (!v2)
  {
    v3 = -[TSKernelClock initWithClockIdentifier:]([TSgPTPClock alloc], "initWithClockIdentifier:", [*(a1 + 32) systemDomainClockIdentifier]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    *(v4 + 8) = v3;

    v2 = *(*(a1 + 32) + 8);
  }

  v6 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v6, v2);
}

- (void)dealloc
{
  v3 = +[TSClockManager sharedClockManager];
  [v3 removegPTPServicesWithError:0];

  v4.receiver = self;
  v4.super_class = TSgPTPManager;
  [(TSgPTPManager *)&v4 dealloc];
}

+ (id)diagnosticDescriptionForInfo:(id)info withIndent:(id)indent
{
  v32 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  indentCopy = indent;
  string = [MEMORY[0x277CCAB68] string];
  v8 = [infoCopy objectForKeyedSubscript:@"ClassName"];
  [string appendFormat:@"%@+%@\n", indentCopy, v8];

  [string appendFormat:@"%@    System PTP Instance Identifier: ", indentCopy];
  v9 = [infoCopy objectForKeyedSubscript:@"SystemDomainIdentifier"];
  v10 = v9;
  if (v9)
  {
    [string appendFormat:@"0x%016llx\n", objc_msgSend(v9, "unsignedLongLongValue")];
  }

  else
  {
    [string appendString:@"Could not read property\n"];
  }

  [string appendFormat:@"%@    AVB 0 PTP Instance Identifier: ", indentCopy];
  v11 = [infoCopy objectForKeyedSubscript:@"AVB0ClockID"];

  if (v11)
  {
    [string appendFormat:@"0x%016llx\n", objc_msgSend(v11, "unsignedLongLongValue")];
  }

  else
  {
    [string appendString:@"Could not read property\n"];
  }

  [string appendFormat:@"%@    AVB 1 PTP Instance Identifier: ", indentCopy];
  v12 = [infoCopy objectForKeyedSubscript:@"AVB1ClockID"];

  if (v12)
  {
    [string appendFormat:@"0x%016llx\n", objc_msgSend(v12, "unsignedLongLongValue")];
  }

  else
  {
    [string appendString:@"Could not read property\n"];
  }

  [string appendFormat:@"%@    AVB 2 PTP Instance Identifier: ", indentCopy];
  v13 = [infoCopy objectForKeyedSubscript:@"AVB2ClockID"];

  if (v13)
  {
    [string appendFormat:@"0x%016llx\n", objc_msgSend(v13, "unsignedLongLongValue")];
  }

  else
  {
    [string appendString:@"Could not read property\n"];
  }

  [string appendFormat:@"%@    AVB 3 PTP Instance Identifier: ", indentCopy];
  v14 = [infoCopy objectForKeyedSubscript:@"AVB3ClockID"];

  if (v14)
  {
    [string appendFormat:@"0x%016llx\n", objc_msgSend(v14, "unsignedLongLongValue")];
  }

  else
  {
    [string appendString:@"Could not read property\n"];
  }

  [string appendFormat:@"%@    AirPlay PTP Instance Identifier: ", indentCopy];
  v15 = [infoCopy objectForKeyedSubscript:@"AirPlayClockID"];

  if (v15)
  {
    [string appendFormat:@"0x%016llx\n", objc_msgSend(v15, "unsignedLongLongValue")];
  }

  else
  {
    [string appendString:@"Could not read property\n"];
  }

  [string appendFormat:@"%@    Copresence PTP Instance Identifier: ", indentCopy];
  v16 = [infoCopy objectForKeyedSubscript:@"CopresenceClockID"];

  v26 = v16;
  if (v16)
  {
    [string appendFormat:@"0x%016llx\n", objc_msgSend(v16, "unsignedLongLongValue")];
  }

  else
  {
    [string appendString:@"Could not read property\n"];
  }

  v17 = [indentCopy stringByAppendingString:@"        |"];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v18 = [infoCopy objectForKeyedSubscript:@"PTPInstances"];
  v19 = [v18 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v28;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [TSgPTPClock diagnosticDescriptionForInfo:*(*(&v27 + 1) + 8 * i) withIndent:v17];
        [string appendString:v23];
      }

      v20 = [v18 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v20);
  }

  v24 = *MEMORY[0x277D85DE8];

  return string;
}

- (void)addClient:(id)client
{
  v16 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  os_unfair_lock_lock(&self->_clientLock);
  [(NSPointerArray *)self->_clients compact];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_clients;
  v6 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (*(*(&v11 + 1) + 8 * v9) == clientCopy)
        {

          goto LABEL_11;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  [(NSPointerArray *)self->_clients addPointer:clientCopy, v11];
LABEL_11:
  os_unfair_lock_unlock(&self->_clientLock);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeClient:(id)client
{
  v18 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  os_unfair_lock_lock(&self->_clientLock);
  [(NSPointerArray *)self->_clients compact];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_clients;
  v6 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      v8 += v7;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        if (*(*(&v13 + 1) + 8 * v10) == clientCopy)
        {

          [(NSPointerArray *)self->_clients removePointerAtIndex:v11, v13];
          goto LABEL_11;
        }

        ++v11;
        ++v10;
      }

      while (v7 != v10);
      v7 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  os_unfair_lock_unlock(&self->_clientLock);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)interruptedgPTPManager
{
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_clientLock);
  [(NSPointerArray *)self->_clients compact];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_clients;
  v4 = [(NSPointerArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        if (v8)
        {
          v9 = *(*(&v13 + 1) + 8 * v7);
          if (objc_opt_respondsToSelector())
          {
            [v8 interruptedConnectionForgPTPManager:self];
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSPointerArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  os_unfair_lock_unlock(&self->_clientLock);
  v10 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__TSgPTPManager_interruptedgPTPManager__block_invoke;
  block[3] = &unk_279DBD538;
  block[4] = self;
  dispatch_async(v10, block);

  v11 = *MEMORY[0x277D85DE8];
}

void __39__TSgPTPManager_interruptedgPTPManager__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  os_unfair_lock_lock(&_sharedgPTPManagerLock);
  v3 = _sharedgPTPManager;
  if (*(a1 + 32) == _sharedgPTPManager)
  {
    _sharedgPTPManager = 0;
  }

  os_unfair_lock_unlock(&_sharedgPTPManagerLock);

  objc_autoreleasePoolPop(v2);
}

- (void)init
{
  v15 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136316418;
    v4 = "_impl!= nil";
    v5 = 2048;
    v6 = 0;
    v7 = 2048;
    v8 = 0;
    v9 = 2080;
    v10 = "";
    v11 = 2080;
    v12 = "/Library/Caches/com.apple.xbs/Sources/TimeSync/TimeSync/API/TSgPTPManager.m";
    v13 = 1024;
    v14 = 132;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", &v3, 0x3Au);
  }

  v2 = *MEMORY[0x277D85DE8];
}

@end