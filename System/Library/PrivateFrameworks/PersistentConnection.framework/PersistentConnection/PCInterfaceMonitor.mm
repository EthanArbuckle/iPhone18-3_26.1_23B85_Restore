@interface PCInterfaceMonitor
+ (BOOL)isNetworkingPowerExpensiveToUse;
+ (id)sharedInstanceForIdentifier:(int64_t)identifier;
- (BOOL)isLTEWithCDRX;
- (NSString)networkCode;
- (PCInterfaceMonitor)initWithInterfaceIdentifier:(int64_t)identifier;
- (__CFString)wwanInterfaceName;
- (int)currentRAT;
- (unint64_t)interface5GMode;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)dealloc;
- (void)interfaceConstraintChanged:(id)changed;
- (void)interfaceLinkQualityChanged:(id)changed previousLinkQuality:(int)quality;
- (void)interfaceRadioHotnessChanged:(id)changed;
- (void)interfaceReachabilityChanged:(id)changed;
- (void)removeDelegate:(id)delegate;
@end

@implementation PCInterfaceMonitor

- (int)currentRAT
{
  internal = self->_internal;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return -1;
  }

  v4 = self->_internal;

  return [(PCInterfaceUsabilityMonitorProtocol *)v4 currentRAT];
}

- (BOOL)isLTEWithCDRX
{
  internal = self->_internal;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v4 = self->_internal;

  return [(PCInterfaceUsabilityMonitorProtocol *)v4 isLTEWithCDRX];
}

+ (BOOL)isNetworkingPowerExpensiveToUse
{
  v2 = [PCInterfaceMonitor sharedInstanceForIdentifier:1];
  if ([v2 isBadLinkQuality])
  {
    v3 = [PCInterfaceMonitor sharedInstanceForIdentifier:0];
    v4 = [v3 isInterfaceUsable] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

+ (id)sharedInstanceForIdentifier:(int64_t)identifier
{
  if (identifier <= 1)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!sharedInstanceForIdentifier__sInstances[identifier])
    {
      v6 = [[PCInterfaceMonitor alloc] initWithInterfaceIdentifier:identifier];
      v7 = sharedInstanceForIdentifier__sInstances[identifier];
      sharedInstanceForIdentifier__sInstances[identifier] = v6;
    }

    objc_sync_exit(selfCopy);

    v3 = sharedInstanceForIdentifier__sInstances[identifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (PCInterfaceMonitor)initWithInterfaceIdentifier:(int64_t)identifier
{
  v11.receiver = self;
  v11.super_class = PCInterfaceMonitor;
  v4 = [(PCInterfaceMonitor *)&v11 init];
  if (v4)
  {
    if (identifier)
    {
      if (identifier != 1)
      {
LABEL_7:
        [(PCInterfaceUsabilityMonitorProtocol *)v4->_internal setTrackUsability:1];
        [(PCInterfaceUsabilityMonitorProtocol *)v4->_internal setDelegate:v4];
        return v4;
      }

      v5 = &off_279A19B00;
      v6 = "PCInterfaceMonitor-WWAN";
    }

    else
    {
      v5 = off_279A19AD8;
      v6 = "PCInterfaceMonitor-NonCellular";
    }

    v7 = dispatch_queue_create(v6, 0);
    v8 = [objc_alloc(*v5) initWithDelegateQueue:v7];
    internal = v4->_internal;
    v4->_internal = v8;

    [(PCInterfaceUsabilityMonitorProtocol *)v4->_internal setDelegate:v4];
    goto LABEL_7;
  }

  return v4;
}

- (void)dealloc
{
  [(PCInterfaceUsabilityMonitorProtocol *)self->_internal setDelegate:0];
  v3.receiver = self;
  v3.super_class = PCInterfaceMonitor;
  [(PCInterfaceMonitor *)&v3 dealloc];
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  if (delegateCopy | queueCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!selfCopy->_delegateMap)
    {
      v8 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:5 valueOptions:512 capacity:1];
      delegateMap = selfCopy->_delegateMap;
      selfCopy->_delegateMap = v8;
    }

    if (delegateCopy && queueCopy)
    {
      [(NSMapTable *)selfCopy->_delegateMap setObject:queueCopy forKey:delegateCopy];
    }

    else if (delegateCopy)
    {
      [(NSMapTable *)selfCopy->_delegateMap removeObjectForKey:delegateCopy];
    }

    objc_sync_exit(selfCopy);
  }
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (delegateCopy)
  {
    v6 = delegateCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(NSMapTable *)selfCopy->_delegateMap removeObjectForKey:v6];
    objc_sync_exit(selfCopy);

    delegateCopy = v6;
  }
}

- (void)interfaceLinkQualityChanged:(id)changed previousLinkQuality:(int)quality
{
  v23 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = [(NSMapTable *)selfCopy->_delegateMap copy];
  objc_sync_exit(selfCopy);

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          v13 = [v8 objectForKey:{v12, changedCopy}];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __70__PCInterfaceMonitor_interfaceLinkQualityChanged_previousLinkQuality___block_invoke;
          block[3] = &unk_279A1A288;
          block[4] = v12;
          block[5] = selfCopy;
          qualityCopy = quality;
          dispatch_async(v13, block);
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __70__PCInterfaceMonitor_interfaceLinkQualityChanged_previousLinkQuality___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) interfaceLinkQualityChanged:*(a1 + 40) previousLinkQuality:*(a1 + 48)];

  objc_autoreleasePoolPop(v2);
}

- (void)interfaceReachabilityChanged:(id)changed
{
  v20 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(NSMapTable *)selfCopy->_delegateMap copy];
  objc_sync_exit(selfCopy);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          v11 = [v6 objectForKey:v10];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __51__PCInterfaceMonitor_interfaceReachabilityChanged___block_invoke;
          block[3] = &unk_279A19D48;
          block[4] = v10;
          block[5] = selfCopy;
          dispatch_async(v11, block);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __51__PCInterfaceMonitor_interfaceReachabilityChanged___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) interfaceReachabilityChanged:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

- (void)interfaceRadioHotnessChanged:(id)changed
{
  v20 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(NSMapTable *)selfCopy->_delegateMap copy];
  objc_sync_exit(selfCopy);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          v11 = [v6 objectForKey:v10];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __51__PCInterfaceMonitor_interfaceRadioHotnessChanged___block_invoke;
          block[3] = &unk_279A19D48;
          block[4] = v10;
          block[5] = selfCopy;
          dispatch_async(v11, block);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __51__PCInterfaceMonitor_interfaceRadioHotnessChanged___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) interfaceRadioHotnessChanged:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

- (void)interfaceConstraintChanged:(id)changed
{
  v20 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(NSMapTable *)selfCopy->_delegateMap copy];
  objc_sync_exit(selfCopy);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          v11 = [v6 objectForKey:v10];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __49__PCInterfaceMonitor_interfaceConstraintChanged___block_invoke;
          block[3] = &unk_279A19D48;
          block[4] = v10;
          block[5] = selfCopy;
          dispatch_async(v11, block);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __49__PCInterfaceMonitor_interfaceConstraintChanged___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) interfaceConstraintChanged:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

- (__CFString)wwanInterfaceName
{
  internal = self->_internal;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v4 = self->_internal;

  return [(PCInterfaceUsabilityMonitorProtocol *)v4 wwanInterfaceName];
}

- (unint64_t)interface5GMode
{
  internal = self->_internal;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v4 = self->_internal;

  return [(PCInterfaceUsabilityMonitorProtocol *)v4 interface5GMode];
}

- (NSString)networkCode
{
  internal = self->_internal;
  if (objc_opt_respondsToSelector())
  {
    networkCode = [(PCInterfaceUsabilityMonitorProtocol *)self->_internal networkCode];
  }

  else
  {
    networkCode = 0;
  }

  return networkCode;
}

@end