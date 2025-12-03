@interface _VFManualObservable
- (BOOL)_addObserver:(id)observer failureError:(id *)error;
- (_VFManualObservable)init;
- (id)subscribe:(id)subscribe;
- (void)_removeObserver:(id)observer;
- (void)observerDidComplete;
- (void)observerDidFailWithError:(id)error;
- (void)observerDidReceiveResult:(id)result;
@end

@implementation _VFManualObservable

- (_VFManualObservable)init
{
  v7.receiver = self;
  v7.super_class = _VFManualObservable;
  v2 = [(_VFManualObservable *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    observers = v2->_observers;
    v2->_observers = v3;

    failureError = v2->_failureError;
    v2->_failureError = 0;

    v2->_lock._os_unfair_lock_opaque = 0;
    v2->_didCompleteOrFail = 0;
  }

  return v2;
}

- (id)subscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  v12 = 0;
  v5 = [(_VFManualObservable *)self _addObserver:subscribeCopy failureError:&v12];
  v6 = v12;
  v7 = objc_alloc_init(VFCancelationToken);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __33___VFManualObservable_subscribe___block_invoke;
  v10[3] = &unk_279E34500;
  v10[4] = self;
  v8 = subscribeCopy;
  v11 = v8;
  [(VFCancelationToken *)v7 addCancelationBlock:v10];
  if (v5)
  {
    if (v6)
    {
      [v8 observerDidFailWithError:v6];
    }

    else
    {
      [v8 observerDidComplete];
    }
  }

  return v7;
}

- (void)observerDidReceiveResult:(id)result
{
  v16 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  os_unfair_lock_lock(&self->_lock);
  if (self->_didCompleteOrFail)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_observers copy];
  }

  os_unfair_lock_unlock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v9++) observerDidReceiveResult:{resultCopy, v11}];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)observerDidComplete
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (self->_didCompleteOrFail)
  {
    v3 = 0;
  }

  else
  {
    self->_didCompleteOrFail = 1;
    v3 = [(NSMutableArray *)self->_observers copy];
  }

  os_unfair_lock_unlock(&self->_lock);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v7++) observerDidComplete];
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)observerDidFailWithError:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  os_unfair_lock_lock(&self->_lock);
  if (self->_didCompleteOrFail)
  {
    v6 = 0;
  }

  else
  {
    self->_didCompleteOrFail = 1;
    objc_storeStrong(&self->_failureError, error);
    v6 = [(NSMutableArray *)self->_observers copy];
  }

  os_unfair_lock_unlock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v10++) observerDidFailWithError:{errorCopy, v12}];
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)_addObserver:(id)observer failureError:(id *)error
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  didCompleteOrFail = self->_didCompleteOrFail;
  if (didCompleteOrFail)
  {
    *error = self->_failureError;
  }

  else
  {
    [(NSMutableArray *)self->_observers addObject:observerCopy];
  }

  os_unfair_lock_unlock(&self->_lock);

  return didCompleteOrFail;
}

- (void)_removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_observers removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

@end