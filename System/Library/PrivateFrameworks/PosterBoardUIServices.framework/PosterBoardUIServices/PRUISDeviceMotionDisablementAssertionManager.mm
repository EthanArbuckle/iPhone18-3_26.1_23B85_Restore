@interface PRUISDeviceMotionDisablementAssertionManager
+ (PRUISDeviceMotionDisablementAssertionManager)sharedInstance;
- (BOOL)isDeviceMotionDisabled;
- (PRUISDeviceMotionDisablementAssertionManager)init;
- (id)_queue_acquireDeviceMotionDisablementAssertionForReason:(id)a3;
- (id)acquireDeviceMotionDisablementAssertionForReason:(id)a3;
- (void)_notifyObserversDidChangeDeviceMotionDisableAssertionState:(id)a3;
- (void)_queue_addObserver:(id)a3;
- (void)_queue_notifyObserversDidChangeDeviceMotionDisableAssertionState:(id)a3;
- (void)_queue_removeObserver:(id)a3;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)removeObserver:(id)a3;
@end

@implementation PRUISDeviceMotionDisablementAssertionManager

+ (PRUISDeviceMotionDisablementAssertionManager)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[PRUISDeviceMotionDisablementAssertionManager sharedInstance];
  }

  v3 = sharedInstance_shared;

  return v3;
}

uint64_t __62__PRUISDeviceMotionDisablementAssertionManager_sharedInstance__block_invoke()
{
  sharedInstance_shared = objc_alloc_init(PRUISDeviceMotionDisablementAssertionManager);

  return MEMORY[0x1EEE66BB8]();
}

- (PRUISDeviceMotionDisablementAssertionManager)init
{
  v18.receiver = self;
  v18.super_class = PRUISDeviceMotionDisablementAssertionManager;
  v2 = [(PRUISDeviceMotionDisablementAssertionManager *)&v18 init];
  if (v2)
  {
    Serial = BSDispatchQueueCreateSerial();
    observerQueue = v2->_observerQueue;
    v2->_observerQueue = Serial;

    v5 = BSDispatchQueueCreateSerial();
    assertionQueue = v2->_assertionQueue;
    v2->_assertionQueue = v5;

    v7 = BSDispatchQueueCreateSerial();
    notifyQueue = v2->_notifyQueue;
    v2->_notifyQueue = v7;

    objc_initWeak(&location, v2);
    v9 = MEMORY[0x1E698E658];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __52__PRUISDeviceMotionDisablementAssertionManager_init__block_invoke;
    v14[3] = &unk_1E83A8028;
    objc_copyWeak(&v16, &location);
    v10 = v2;
    v15 = v10;
    v11 = [v9 assertionWithIdentifier:@"DisableDeviceMotion" stateDidChangeHandler:v14];
    assertionQueue_deviceMotionDisableCompoundAssertion = v10->_assertionQueue_deviceMotionDisableCompoundAssertion;
    v10->_assertionQueue_deviceMotionDisableCompoundAssertion = v11;

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __52__PRUISDeviceMotionDisablementAssertionManager_init__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [v3 isActive];
    v6 = PRUISLogMotionEvents();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      if (v5)
      {
        v9 = @"disabled";
      }

      else
      {
        v9 = @"enabled";
      }

      v10 = [WeakRetained[4] reasons];
      v11 = 138543874;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_1CAE63000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - Device Motion is %@, assertions taken: %@", &v11, 0x20u);
    }

    [WeakRetained _notifyObserversDidChangeDeviceMotionDisableAssertionState:v3];
  }
}

- (void)dealloc
{
  assertionQueue = self->_assertionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__PRUISDeviceMotionDisablementAssertionManager_dealloc__block_invoke;
  block[3] = &unk_1E83A72F8;
  block[4] = self;
  dispatch_sync(assertionQueue, block);
  v4.receiver = self;
  v4.super_class = PRUISDeviceMotionDisablementAssertionManager;
  [(PRUISDeviceMotionDisablementAssertionManager *)&v4 dealloc];
}

void __55__PRUISDeviceMotionDisablementAssertionManager_dealloc__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  observerQueue = self->_observerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__PRUISDeviceMotionDisablementAssertionManager_addObserver___block_invoke;
  block[3] = &unk_1E83A7DA0;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_sync(observerQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __60__PRUISDeviceMotionDisablementAssertionManager_addObserver___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _queue_addObserver:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  observerQueue = self->_observerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PRUISDeviceMotionDisablementAssertionManager_removeObserver___block_invoke;
  block[3] = &unk_1E83A7DA0;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_sync(observerQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __63__PRUISDeviceMotionDisablementAssertionManager_removeObserver___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _queue_removeObserver:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)_queue_addObserver:(id)a3
{
  v8 = a3;
  v4 = BSDispatchQueueAssert();
  if (v8)
  {
    observers = self->_observers;
    if (!observers)
    {
      v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v7 = self->_observers;
      self->_observers = v6;

      observers = self->_observers;
    }

    v4 = [(NSHashTable *)observers addObject:v8];
  }

  MEMORY[0x1EEE66BB8](v4);
}

- (void)_queue_removeObserver:(id)a3
{
  v5 = a3;
  v4 = BSDispatchQueueAssert();
  if (v5)
  {
    v4 = [(NSHashTable *)self->_observers count];
    if (v4)
    {
      v4 = [(NSHashTable *)self->_observers containsObject:v5];
      if (v4)
      {
        v4 = [(NSHashTable *)self->_observers removeObject:v5];
      }
    }
  }

  MEMORY[0x1EEE66BB8](v4);
}

- (void)_notifyObserversDidChangeDeviceMotionDisableAssertionState:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  notifyQueue = self->_notifyQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __107__PRUISDeviceMotionDisablementAssertionManager__notifyObserversDidChangeDeviceMotionDisableAssertionState___block_invoke;
  block[3] = &unk_1E83A7DA0;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(notifyQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __107__PRUISDeviceMotionDisablementAssertionManager__notifyObserversDidChangeDeviceMotionDisableAssertionState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _queue_notifyObserversDidChangeDeviceMotionDisableAssertionState:*(a1 + 32)];
}

- (void)_queue_notifyObserversDidChangeDeviceMotionDisableAssertionState:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  BSDispatchQueueAssert();
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  observerQueue = self->_observerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __113__PRUISDeviceMotionDisablementAssertionManager__queue_notifyObserversDidChangeDeviceMotionDisableAssertionState___block_invoke;
  block[3] = &unk_1E83A7800;
  block[4] = self;
  block[5] = &v16;
  dispatch_sync(observerQueue, block);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [v17[5] allObjects];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v22 count:16];
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

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 deviceMotionDisableAssertionManager:self didDisableDeviceMotion:{objc_msgSend(v4, "isActive")}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v22 count:16];
    }

    while (v7);
  }

  _Block_object_dispose(&v16, 8);
}

uint64_t __113__PRUISDeviceMotionDisablementAssertionManager__queue_notifyObserversDidChangeDeviceMotionDisableAssertionState___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) copy];
  *(*(*(a1 + 40) + 8) + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2);
}

- (BOOL)isDeviceMotionDisabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  assertionQueue = self->_assertionQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70__PRUISDeviceMotionDisablementAssertionManager_isDeviceMotionDisabled__block_invoke;
  v5[3] = &unk_1E83A7800;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(assertionQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__70__PRUISDeviceMotionDisablementAssertionManager_isDeviceMotionDisabled__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  if (result)
  {
    result = [result isActive];
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)acquireDeviceMotionDisablementAssertionForReason:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  objc_initWeak(&location, self);
  assertionQueue = self->_assertionQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __97__PRUISDeviceMotionDisablementAssertionManager_acquireDeviceMotionDisablementAssertionForReason___block_invoke;
  v9[3] = &unk_1E83A8050;
  objc_copyWeak(&v12, &location);
  v10 = v4;
  v11 = &v14;
  v6 = v4;
  dispatch_sync(assertionQueue, v9);
  v7 = v15[5];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v14, 8);

  return v7;
}

void __97__PRUISDeviceMotionDisablementAssertionManager_acquireDeviceMotionDisablementAssertionForReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained _queue_acquireDeviceMotionDisablementAssertionForReason:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_queue_acquireDeviceMotionDisablementAssertionForReason:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  BSDispatchQueueAssert();
  v5 = PRUISLogMotionEvents();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [(BSCompoundAssertion *)self->_assertionQueue_deviceMotionDisableCompoundAssertion reasons];
    v11 = 138543874;
    v12 = v7;
    v13 = 2112;
    v14 = v4;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_1CAE63000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - Acquiring device motion disable assertion with reason %@, already acquired reasons: %@", &v11, 0x20u);
  }

  v9 = [(BSCompoundAssertion *)self->_assertionQueue_deviceMotionDisableCompoundAssertion acquireForReason:v4];

  return v9;
}

@end