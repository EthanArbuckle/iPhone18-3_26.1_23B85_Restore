@interface PCNonCellularUsabilityMonitor
- (BOOL)isBadLinkQuality;
- (BOOL)isPoorLinkQuality;
- (NSString)linkQualityString;
- (PCInterfaceUsabilityMonitorDelegate)delegate;
- (PCNonCellularUsabilityMonitor)initWithDelegateQueue:(id)queue;
- (int)_linkQualityOnIvarQueue;
- (int)linkQuality;
- (void)_addMonitor;
- (void)_callDelegateOnIvarQueueWithBlock:(id)block;
- (void)_forwardConfigurationOnIvarQueue;
- (void)dealloc;
- (void)interfaceLinkQualityChanged:(id)changed previousLinkQuality:(int)quality;
- (void)interfaceReachabilityChanged:(id)changed;
- (void)setDelegate:(id)delegate;
- (void)setThresholdOffTransitionCount:(unint64_t)count;
- (void)setTrackUsability:(BOOL)usability;
- (void)setTrackedTimeInterval:(double)interval;
@end

@implementation PCNonCellularUsabilityMonitor

- (int)linkQuality
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarQueue = self->_ivarQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__PCNonCellularUsabilityMonitor_linkQuality__block_invoke;
  v5[3] = &unk_279A1A180;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(ivarQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __44__PCNonCellularUsabilityMonitor_linkQuality__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _linkQualityOnIvarQueue];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int)_linkQualityOnIvarQueue
{
  if (self->_demoOverrideInterface)
  {
    v2 = 100;
  }

  else
  {
    v2 = -2;
  }

  result = [(PCInterfaceUsabilityMonitor *)self->_monitor linkQuality];
  if (v2 > result)
  {
    return v2;
  }

  return result;
}

- (NSString)linkQualityString
{
  linkQuality = [(PCNonCellularUsabilityMonitor *)self linkQuality];

  return [PCInterfaceUsabilityMonitor stringForLinkQuality:linkQuality];
}

- (PCNonCellularUsabilityMonitor)initWithDelegateQueue:(id)queue
{
  v22 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  v17.receiver = self;
  v17.super_class = PCNonCellularUsabilityMonitor;
  v6 = [(PCNonCellularUsabilityMonitor *)&v17 init];
  if (v6)
  {
    v7 = dispatch_queue_create("PCNonCellularUsabilityMonitor-ivarqueue", 0);
    ivarQueue = v6->_ivarQueue;
    v6->_ivarQueue = v7;

    v9 = dispatch_queue_create("PCNonCellularUsabilityMonitor-monitordelegatequeue", 0);
    monitorDelegateQueue = v6->_monitorDelegateQueue;
    v6->_monitorDelegateQueue = v9;

    objc_storeStrong(&v6->_delegateQueue, queue);
    v6->_previousLinkQuality = -2;
    v11 = CFPreferencesCopyAppValue(@"PCWiFiInterface", @"com.apple.persistentconnection");
    demoOverrideInterface = v6->_demoOverrideInterface;
    v6->_demoOverrideInterface = v11;

    if (v6->_demoOverrideInterface)
    {
      v13 = +[PCLog usabilityMonitor];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v6->_demoOverrideInterface;
        *buf = 138543618;
        v19 = v6;
        v20 = 2114;
        v21 = v14;
        _os_log_impl(&dword_25E3EF000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ NonCellularUsabilityMonitor is in demo override mode! (interface name %{public}@)", buf, 0x16u);
      }
    }

    [(PCNonCellularUsabilityMonitor *)v6 _addMonitor];
  }

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)dealloc
{
  [(PCInterfaceUsabilityMonitor *)self->_monitor setDelegate:0];
  v3.receiver = self;
  v3.super_class = PCNonCellularUsabilityMonitor;
  [(PCNonCellularUsabilityMonitor *)&v3 dealloc];
}

- (void)_addMonitor
{
  ivarQueue = self->_ivarQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__PCNonCellularUsabilityMonitor__addMonitor__block_invoke;
  block[3] = &unk_279A19E50;
  block[4] = self;
  dispatch_async(ivarQueue, block);
}

void __44__PCNonCellularUsabilityMonitor__addMonitor__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [[PCInterfaceUsabilityMonitor alloc] initWithInterfaceIdentifier:0 delegateQueue:*(*(a1 + 32) + 24)];
  v4 = *(a1 + 32);
  v5 = *(v4 + 72);
  *(v4 + 72) = v3;

  [*(*(a1 + 32) + 72) setDelegate:?];

  objc_autoreleasePoolPop(v2);
}

- (void)_forwardConfigurationOnIvarQueue
{
  [(PCInterfaceUsabilityMonitor *)self->_monitor setTrackUsability:self->_trackUsability];
  [(PCInterfaceUsabilityMonitor *)self->_monitor setTrackedTimeInterval:self->_trackedTimeInterval];
  monitor = self->_monitor;
  thresholdOffTransitionCount = self->_thresholdOffTransitionCount;

  [(PCInterfaceUsabilityMonitor *)monitor setThresholdOffTransitionCount:thresholdOffTransitionCount];
}

- (void)setTrackUsability:(BOOL)usability
{
  ivarQueue = self->_ivarQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__PCNonCellularUsabilityMonitor_setTrackUsability___block_invoke;
  v4[3] = &unk_279A1A130;
  v4[4] = self;
  usabilityCopy = usability;
  dispatch_async(ivarQueue, v4);
}

uint64_t __51__PCNonCellularUsabilityMonitor_setTrackUsability___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 52) != v2)
  {
    *(v1 + 52) = v2;
    v3 = *(result + 32);
    if (*(v3 + 52) == 1)
    {
      if (!*(v3 + 56))
      {
        *(v3 + 56) = 2;
        v3 = *(result + 32);
      }

      if (*(v3 + 64) == 0.0)
      {
        *(v3 + 64) = 0x4082C00000000000;
        v3 = *(result + 32);
      }
    }

    return [v3 _forwardConfigurationOnIvarQueue];
  }

  return result;
}

- (void)setThresholdOffTransitionCount:(unint64_t)count
{
  ivarQueue = self->_ivarQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__PCNonCellularUsabilityMonitor_setThresholdOffTransitionCount___block_invoke;
  v4[3] = &unk_279A1A158;
  v4[4] = self;
  v4[5] = count;
  dispatch_async(ivarQueue, v4);
}

uint64_t __64__PCNonCellularUsabilityMonitor_setThresholdOffTransitionCount___block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  v1 = *(result + 40);
  if (v1 != *(v2 + 56))
  {
    *(v2 + 56) = v1;
    return [*(result + 32) _forwardConfigurationOnIvarQueue];
  }

  return result;
}

- (void)setTrackedTimeInterval:(double)interval
{
  ivarQueue = self->_ivarQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__PCNonCellularUsabilityMonitor_setTrackedTimeInterval___block_invoke;
  v4[3] = &unk_279A1A158;
  *&v4[5] = interval;
  v4[4] = self;
  dispatch_async(ivarQueue, v4);
}

uint64_t __56__PCNonCellularUsabilityMonitor_setTrackedTimeInterval___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 32);
  if (v1 != *(v2 + 64))
  {
    *(v2 + 64) = v1;
    return [*(result + 32) _forwardConfigurationOnIvarQueue];
  }

  return result;
}

- (BOOL)isPoorLinkQuality
{
  linkQuality = [(PCNonCellularUsabilityMonitor *)self linkQuality];

  return [PCInterfaceUsabilityMonitor isPoorLinkQuality:linkQuality];
}

- (BOOL)isBadLinkQuality
{
  linkQuality = [(PCNonCellularUsabilityMonitor *)self linkQuality];

  return [PCInterfaceUsabilityMonitor isBadLinkQuality:linkQuality];
}

- (PCInterfaceUsabilityMonitorDelegate)delegate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  ivarQueue = self->_ivarQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__PCNonCellularUsabilityMonitor_delegate__block_invoke;
  v5[3] = &unk_279A1A180;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(ivarQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __41__PCNonCellularUsabilityMonitor_delegate__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) object];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  ivarQueue = self->_ivarQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__PCNonCellularUsabilityMonitor_setDelegate___block_invoke;
  v7[3] = &unk_279A19D48;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_sync(ivarQueue, v7);
}

void __45__PCNonCellularUsabilityMonitor_setDelegate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  if (*(a1 + 40))
  {
    v4 = [MEMORY[0x277CFB990] weakRefWithObject:?];
    v5 = *(a1 + 32);
    v6 = *(v5 + 32);
    *(v5 + 32) = v4;

    MEMORY[0x2821F96F8]();
  }
}

- (void)_callDelegateOnIvarQueueWithBlock:(id)block
{
  blockCopy = block;
  delegateReference = self->_delegateReference;
  if (delegateReference && self->_delegateQueue)
  {
    v6 = delegateReference;
    delegateQueue = self->_delegateQueue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __67__PCNonCellularUsabilityMonitor__callDelegateOnIvarQueueWithBlock___block_invoke;
    v9[3] = &unk_279A1A090;
    v10 = v6;
    v11 = blockCopy;
    v8 = v6;
    dispatch_async(delegateQueue, v9);
  }
}

void __67__PCNonCellularUsabilityMonitor__callDelegateOnIvarQueueWithBlock___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) object];
  if (v3)
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

- (void)interfaceLinkQualityChanged:(id)changed previousLinkQuality:(int)quality
{
  ivarQueue = self->_ivarQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__PCNonCellularUsabilityMonitor_interfaceLinkQualityChanged_previousLinkQuality___block_invoke;
  block[3] = &unk_279A19E50;
  block[4] = self;
  dispatch_async(ivarQueue, block);
}

uint64_t __81__PCNonCellularUsabilityMonitor_interfaceLinkQualityChanged_previousLinkQuality___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) _linkQualityOnIvarQueue];
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  if (result != v4)
  {
    v5 = result;
    *(v3 + 48) = result;
    v6 = +[PCLog usabilityMonitor];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138543874;
      v13 = v7;
      v14 = 1024;
      v15 = v4;
      v16 = 1024;
      v17 = v5;
      _os_log_impl(&dword_25E3EF000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ NonCellularUsabilityMonitor - LQ changed from %d to %d", buf, 0x18u);
    }

    v8 = *(a1 + 32);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __81__PCNonCellularUsabilityMonitor_interfaceLinkQualityChanged_previousLinkQuality___block_invoke_6;
    v10[3] = &unk_279A1A108;
    v10[4] = v8;
    v11 = v4;
    result = [v8 _callDelegateOnIvarQueueWithBlock:v10];
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void __81__PCNonCellularUsabilityMonitor_interfaceLinkQualityChanged_previousLinkQuality___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 interfaceLinkQualityChanged:*(a1 + 32) previousLinkQuality:*(a1 + 40)];
  }
}

- (void)interfaceReachabilityChanged:(id)changed
{
  changedCopy = changed;
  ivarQueue = self->_ivarQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__PCNonCellularUsabilityMonitor_interfaceReachabilityChanged___block_invoke;
  v7[3] = &unk_279A19D48;
  v7[4] = self;
  v8 = changedCopy;
  v6 = changedCopy;
  dispatch_async(ivarQueue, v7);
}

void *__62__PCNonCellularUsabilityMonitor_interfaceReachabilityChanged___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[9] == *(a1 + 40))
  {
    v5[5] = v1;
    v5[6] = v2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __62__PCNonCellularUsabilityMonitor_interfaceReachabilityChanged___block_invoke_2;
    v5[3] = &unk_279A1A0E0;
    v5[4] = result;
    return [result _callDelegateOnIvarQueueWithBlock:v5];
  }

  return result;
}

void __62__PCNonCellularUsabilityMonitor_interfaceReachabilityChanged___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 interfaceReachabilityChanged:*(a1 + 32)];
  }
}

@end