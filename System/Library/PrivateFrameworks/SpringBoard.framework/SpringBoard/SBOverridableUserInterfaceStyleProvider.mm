@interface SBOverridableUserInterfaceStyleProvider
- (SBOverridableUserInterfaceStyleProvider)init;
- (int64_t)currentStyle;
- (void)_notifyObserversCurrentStyleChangedWithCompletion:(id)completion;
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
- (void)setOverrideStyle:(int64_t)style completion:(id)completion;
- (void)userInterfaceStyleProvider:(id)provider didUpdateStyle:(int64_t)style preferredAnimationSettings:(id)settings completion:(id)completion;
@end

@implementation SBOverridableUserInterfaceStyleProvider

- (SBOverridableUserInterfaceStyleProvider)init
{
  v8.receiver = self;
  v8.super_class = SBOverridableUserInterfaceStyleProvider;
  v2 = [(SBOverridableUserInterfaceStyleProvider *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAA50]);
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = objc_alloc_init(SBDefaultUserInterfaceStyleProvider);
    defaultUserInterfaceStyleProvider = v2->_defaultUserInterfaceStyleProvider;
    v2->_defaultUserInterfaceStyleProvider = v5;

    [(SBDefaultUserInterfaceStyleProvider *)v2->_defaultUserInterfaceStyleProvider addObserver:v2];
  }

  return v2;
}

- (void)addObserver:(id)observer
{
  if (observer)
  {
    [(NSHashTable *)self->_observers addObject:?];
  }
}

- (void)removeObserver:(id)observer
{
  if (observer)
  {
    [(NSHashTable *)self->_observers removeObject:?];
  }
}

- (int64_t)currentStyle
{
  if (self->_overrideStyle)
  {
    return self->_overrideStyle;
  }

  else
  {
    return [(SBDefaultUserInterfaceStyleProvider *)self->_defaultUserInterfaceStyleProvider currentStyle];
  }
}

- (void)setOverrideStyle:(int64_t)style completion:(id)completion
{
  completionCopy = completion;
  if (self->_overrideStyle == style)
  {
    if (!completionCopy)
    {
      goto LABEL_10;
    }

    v8 = completionCopy;
    completionCopy[2](completionCopy);
  }

  else
  {
    v8 = completionCopy;
    currentStyle = [(SBOverridableUserInterfaceStyleProvider *)self currentStyle];
    self->_overrideStyle = style;
    if (currentStyle == [(SBOverridableUserInterfaceStyleProvider *)self currentStyle])
    {
      completionCopy = v8;
      if (!v8)
      {
        goto LABEL_10;
      }

      v8[2](v8);
    }

    else
    {
      [(SBOverridableUserInterfaceStyleProvider *)self _notifyObserversCurrentStyleChangedWithCompletion:v8];
    }
  }

  completionCopy = v8;
LABEL_10:
}

- (void)userInterfaceStyleProvider:(id)provider didUpdateStyle:(int64_t)style preferredAnimationSettings:(id)settings completion:(id)completion
{
  if (!self->_overrideStyle)
  {
    [(SBOverridableUserInterfaceStyleProvider *)self _notifyObserversCurrentStyleChangedWithCompletion:completion, style, settings];
  }
}

- (void)_notifyObserversCurrentStyleChangedWithCompletion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  currentStyle = [(SBOverridableUserInterfaceStyleProvider *)self currentStyle];
  v5 = dispatch_group_create();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(NSHashTable *)self->_observers copy];
  v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        dispatch_group_enter(v5);
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __93__SBOverridableUserInterfaceStyleProvider__notifyObserversCurrentStyleChangedWithCompletion___block_invoke;
        v16[3] = &unk_2783A8C18;
        v17 = v5;
        [v10 userInterfaceStyleProvider:self didUpdateStyle:currentStyle preferredAnimationSettings:0 completion:v16];

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__SBOverridableUserInterfaceStyleProvider__notifyObserversCurrentStyleChangedWithCompletion___block_invoke_2;
  block[3] = &unk_2783A9348;
  v15 = completionCopy;
  v11 = completionCopy;
  dispatch_group_notify(v5, MEMORY[0x277D85CD0], block);
}

uint64_t __93__SBOverridableUserInterfaceStyleProvider__notifyObserversCurrentStyleChangedWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end