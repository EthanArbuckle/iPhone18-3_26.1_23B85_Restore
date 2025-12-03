@interface TPSController
- (TPSController)init;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)performAtomicDelegateBlock:(id)block;
- (void)removeDelegate:(id)delegate;
@end

@implementation TPSController

- (TPSController)init
{
  v7.receiver = self;
  v7.super_class = TPSController;
  v2 = [(TPSController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_delegateLock._os_unfair_lock_opaque = 0;
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    delegateToQueue = v3->_delegateToQueue;
    v3->_delegateToQueue = weakToStrongObjectsMapTable;
  }

  return v3;
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __35__TPSController_addDelegate_queue___block_invoke;
  v10[3] = &unk_2782E3888;
  v10[4] = self;
  v11 = queueCopy;
  v12 = delegateCopy;
  v8 = delegateCopy;
  v9 = queueCopy;
  [(TPSController *)self performAtomicDelegateBlock:v10];
}

void __35__TPSController_addDelegate_queue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateToQueue];
  v4 = v2;
  if (*(a1 + 40))
  {
    v3 = *(a1 + 40);
  }

  else
  {
    v3 = MEMORY[0x277D85CD0];
  }

  [v2 setObject:v3 forKey:*(a1 + 48)];
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__TPSController_removeDelegate___block_invoke;
  v6[3] = &unk_2782E39D0;
  v6[4] = self;
  v7 = delegateCopy;
  v5 = delegateCopy;
  [(TPSController *)self performAtomicDelegateBlock:v6];
}

void __32__TPSController_removeDelegate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateToQueue];
  [v2 removeObjectForKey:*(a1 + 40)];
}

- (void)performAtomicDelegateBlock:(id)block
{
  if (block)
  {
    blockCopy = block;
    os_unfair_lock_lock_with_options();
    blockCopy[2](blockCopy);

    os_unfair_lock_unlock(&self->_delegateLock);
  }
}

@end