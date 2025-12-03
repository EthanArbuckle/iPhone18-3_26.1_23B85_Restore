@interface _WQA_HostDeallocNotifier
- (WatchQuickActionHostObserver)hostObserver;
- (void)dealloc;
@end

@implementation _WQA_HostDeallocNotifier

- (void)dealloc
{
  hostObserver = [(_WQA_HostDeallocNotifier *)self hostObserver];
  v4 = hostObserver;
  if (hostObserver)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35___WQA_HostDeallocNotifier_dealloc__block_invoke;
    block[3] = &unk_279E65958;
    v7 = hostObserver;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v5.receiver = self;
  v5.super_class = _WQA_HostDeallocNotifier;
  [(_WQA_HostDeallocNotifier *)&v5 dealloc];
}

- (WatchQuickActionHostObserver)hostObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_hostObserver);

  return WeakRetained;
}

@end