@interface SCROHandler
- (SCROHandler)init;
- (id)callbackDelegate;
@end

@implementation SCROHandler

- (SCROHandler)init
{
  v6.receiver = self;
  v6.super_class = SCROHandler;
  v2 = [(SCROHandler *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    lock = v2->_lock;
    v2->_lock = v3;
  }

  return v2;
}

- (id)callbackDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_callbackDelegate);

  return WeakRetained;
}

@end