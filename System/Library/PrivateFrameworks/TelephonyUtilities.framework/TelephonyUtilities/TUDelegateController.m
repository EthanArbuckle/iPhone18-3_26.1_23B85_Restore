@interface TUDelegateController
- (TUDelegateController)init;
- (void)addDelegate:(id)a3 queue:(id)a4;
- (void)enumerateDelegatesUsingBlock:(id)a3;
- (void)removeDelegate:(id)a3;
@end

@implementation TUDelegateController

- (TUDelegateController)init
{
  v7.receiver = self;
  v7.super_class = TUDelegateController;
  v2 = [(TUDelegateController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_delegateLock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    delegateToQueue = v3->_delegateToQueue;
    v3->_delegateToQueue = v4;
  }

  return v3;
}

- (void)addDelegate:(id)a3 queue:(id)a4
{
  v8 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_delegateLock);
  v7 = [(TUDelegateController *)self delegateToQueue];
  [v7 setObject:v6 forKey:v8];

  os_unfair_lock_unlock(&self->_delegateLock);
}

- (void)removeDelegate:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_delegateLock);
  v4 = [(TUDelegateController *)self delegateToQueue];
  [v4 removeObjectForKey:v5];

  os_unfair_lock_unlock(&self->_delegateLock);
}

- (void)enumerateDelegatesUsingBlock:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_delegateLock);
  v17 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(TUDelegateController *)self delegateToQueue];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v6)
  {
    v7 = *v14;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v14 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v13 + 1) + 8 * v8);
      v10 = [(TUDelegateController *)self delegateToQueue];
      v11 = [v10 objectForKey:v9];

      v4[2](v4, v9, v11, &v17);
      LOBYTE(v9) = v17;

      if (v9)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  os_unfair_lock_unlock(&self->_delegateLock);
  v12 = *MEMORY[0x1E69E9840];
}

@end