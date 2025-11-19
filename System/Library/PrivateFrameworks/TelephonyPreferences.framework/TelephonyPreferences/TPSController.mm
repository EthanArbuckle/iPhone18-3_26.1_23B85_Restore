@interface TPSController
- (TPSController)init;
- (void)addDelegate:(id)a3 queue:(id)a4;
- (void)performAtomicDelegateBlock:(id)a3;
- (void)removeDelegate:(id)a3;
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
    v4 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    delegateToQueue = v3->_delegateToQueue;
    v3->_delegateToQueue = v4;
  }

  return v3;
}

- (void)addDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __35__TPSController_addDelegate_queue___block_invoke;
  v10[3] = &unk_2782E3888;
  v10[4] = self;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
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

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__TPSController_removeDelegate___block_invoke;
  v6[3] = &unk_2782E39D0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(TPSController *)self performAtomicDelegateBlock:v6];
}

void __32__TPSController_removeDelegate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateToQueue];
  [v2 removeObjectForKey:*(a1 + 40)];
}

- (void)performAtomicDelegateBlock:(id)a3
{
  if (a3)
  {
    v4 = a3;
    os_unfair_lock_lock_with_options();
    v4[2](v4);

    os_unfair_lock_unlock(&self->_delegateLock);
  }
}

@end