@interface BRCPersistedState
+ (id)loadFromClientStateInSession:(id)a3 options:(id)a4;
- (OS_dispatch_queue)assertionQueue;
- (void)assertQueue;
@end

@implementation BRCPersistedState

- (void)assertQueue
{
  WeakRetained = objc_loadWeakRetained(&self->_assertionQueue);
  if (WeakRetained)
  {
    v3 = WeakRetained;
    dispatch_assert_queue_V2(WeakRetained);
    WeakRetained = v3;
  }
}

+ (id)loadFromClientStateInSession:(id)a3 options:(id)a4
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE660];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"+[BRCPersistedState loadFromClientStateInSession:options:]", a4}];
  [v4 raise:v5 format:{@"Implement %@ in a subclass.", v6}];

  return 0;
}

- (OS_dispatch_queue)assertionQueue
{
  WeakRetained = objc_loadWeakRetained(&self->_assertionQueue);

  return WeakRetained;
}

@end