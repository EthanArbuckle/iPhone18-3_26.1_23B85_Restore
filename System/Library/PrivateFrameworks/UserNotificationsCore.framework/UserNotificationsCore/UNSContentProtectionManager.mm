@interface UNSContentProtectionManager
- (BOOL)deviceUnlockedSinceBoot;
- (BOOL)isProtectedDataAvailable;
- (UNSContentProtectionManager)init;
- (int64_t)_queue_keyBagLockState;
- (int64_t)observedState;
- (void)_queue_adjustContentProtectionStateWithBlock:(id)block;
- (void)addContentProtectionObserver:(id)observer;
- (void)dealloc;
- (void)removeContentProtectionObserver:(id)observer;
@end

@implementation UNSContentProtectionManager

- (BOOL)isProtectedDataAvailable
{
  dispatch_assert_queue_not_V2(self->_queue);
  observedState = [(UNSContentProtectionManager *)self observedState];
  return observedState == 4 || observedState == 1;
}

- (int64_t)observedState
{
  dispatch_assert_queue_not_V2(self->_queue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__UNSContentProtectionManager_observedState__block_invoke;
  v6[3] = &unk_1E85D6E48;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __44__UNSContentProtectionManager_observedState__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_observedState];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __35__UNSContentProtectionManager_init__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __35__UNSContentProtectionManager_init__block_invoke_3;
  v2[3] = &unk_1E85D6F70;
  v3 = v1;
  [v3 _queue_adjustContentProtectionStateWithBlock:v2];
}

uint64_t __35__UNSContentProtectionManager_init__block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) _queue_keyBagLockState];
  *(*(a1 + 32) + 8) = result;
  return result;
}

- (int64_t)_queue_keyBagLockState
{
  dispatch_assert_queue_V2(self->_queue);
  v2 = MKBGetDeviceLockState();
  if (v2 < 4)
  {
    return v2 + 1;
  }

  else
  {
    return 0;
  }
}

- (UNSContentProtectionManager)init
{
  v16.receiver = self;
  v16.super_class = UNSContentProtectionManager;
  v2 = [(UNSContentProtectionManager *)&v16 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.NotificationContentProtection.observable", v3);

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.NotificationContentProtection.call-out", v5);

    v7 = [[UNCKeyedObservable alloc] initWithQueue:v4 callOutQueue:v6];
    observable = v2->_observable;
    v2->_observable = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.unsusernotificationserver.NotificationContentProtection", v9);
    queue = v2->_queue;
    v2->_queue = v10;

    v12 = v2->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__UNSContentProtectionManager_init__block_invoke;
    block[3] = &unk_1E85D6F70;
    v15 = v2;
    dispatch_sync(v12, block);
  }

  return v2;
}

uint64_t __35__UNSContentProtectionManager_init__block_invoke(uint64_t a1)
{
  if (MKBDeviceFormattedForContentProtection())
  {
    v2 = *MEMORY[0x1E69B1A70];
    v3 = *(a1 + 32);
    v4 = *(v3 + 24);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __35__UNSContentProtectionManager_init__block_invoke_2;
    handler[3] = &unk_1E85D70A0;
    v7 = v3;
    notify_register_dispatch(v2, (v3 + 20), v4, handler);
  }

  *(*(a1 + 32) + 8) = [*(a1 + 32) _queue_keyBagLockState];
  result = MKBDeviceUnlockedSinceBoot();
  *(*(a1 + 32) + 16) = result != 0;
  return result;
}

- (void)dealloc
{
  notify_cancel(self->_notifyToken);
  v3.receiver = self;
  v3.super_class = UNSContentProtectionManager;
  [(UNSContentProtectionManager *)&v3 dealloc];
}

- (void)addContentProtectionObserver:(id)observer
{
  observerCopy = observer;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__UNSContentProtectionManager_addContentProtectionObserver___block_invoke;
  v7[3] = &unk_1E85D6E70;
  v8 = observerCopy;
  selfCopy = self;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

uint64_t __60__UNSContentProtectionManager_addContentProtectionObserver___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E6983360];
  if (os_log_type_enabled(*MEMORY[0x1E6983360], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1DA7A9000, v2, OS_LOG_TYPE_DEFAULT, "Added content protection observer %{public}@", &v6, 0xCu);
  }

  result = [*(*(a1 + 40) + 32) addObserver:*(a1 + 32) forKey:@"*"];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)removeContentProtectionObserver:(id)observer
{
  observerCopy = observer;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__UNSContentProtectionManager_removeContentProtectionObserver___block_invoke;
  v7[3] = &unk_1E85D6E70;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

- (BOOL)deviceUnlockedSinceBoot
{
  selfCopy = self;
  dispatch_assert_queue_not_V2(self->_queue);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = selfCopy->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__UNSContentProtectionManager_deviceUnlockedSinceBoot__block_invoke;
  v5[3] = &unk_1E85D6E48;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)_queue_adjustContentProtectionStateWithBlock:(id)block
{
  v32 = *MEMORY[0x1E69E9840];
  queue = self->_queue;
  blockCopy = block;
  dispatch_assert_queue_V2(queue);
  _queue_observedState = [(UNSContentProtectionManager *)self _queue_observedState];
  blockCopy[2](blockCopy);

  _queue_observedState2 = [(UNSContentProtectionManager *)self _queue_observedState];
  v8 = _queue_observedState2;
  v9 = MEMORY[0x1E6983360];
  if (!self->_unlockedSinceBoot && (_queue_observedState2 == 4 || _queue_observedState2 == 1))
  {
    v10 = *MEMORY[0x1E6983360];
    if (os_log_type_enabled(*MEMORY[0x1E6983360], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA7A9000, v10, OS_LOG_TYPE_DEFAULT, "First unlock", buf, 2u);
    }

    v11 = 1;
    self->_unlockedSinceBoot = 1;
  }

  else
  {
    v11 = 0;
  }

  v13 = v8 == 4 || v8 == 1;
  v15 = _queue_observedState == 4 || _queue_observedState == 1;
  v16 = *v9;
  v17 = os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT);
  if (v15 == v13)
  {
    if (v17)
    {
      if (_queue_observedState > 4)
      {
        v19 = @"unknown";
      }

      else
      {
        v19 = off_1E85D70E0[_queue_observedState];
      }

      if (v8 > 4)
      {
        v21 = @"unknown";
      }

      else
      {
        v21 = off_1E85D70E0[v8];
      }

      *buf = 138543618;
      v29 = v19;
      v30 = 2114;
      v31 = v21;
      v24 = v16;
      _os_log_impl(&dword_1DA7A9000, v24, OS_LOG_TYPE_DEFAULT, "Ignoring no-op keybag transition (%{public}@ -> %{public}@)", buf, 0x16u);
    }
  }

  else
  {
    if (v17)
    {
      if (_queue_observedState > 4)
      {
        v18 = @"unknown";
      }

      else
      {
        v18 = off_1E85D70E0[_queue_observedState];
      }

      if (v8 > 4)
      {
        v20 = @"unknown";
      }

      else
      {
        v20 = off_1E85D70E0[v8];
      }

      *buf = 138543618;
      v29 = v18;
      v30 = 2114;
      v31 = v20;
      v22 = v16;
      _os_log_impl(&dword_1DA7A9000, v22, OS_LOG_TYPE_DEFAULT, "Key bag transitioning from %{public}@ to %{public}@", buf, 0x16u);
    }

    observable = self->_observable;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __76__UNSContentProtectionManager__queue_adjustContentProtectionStateWithBlock___block_invoke;
    v26[3] = &__block_descriptor_33_e40_v16__0___UNCContentProtectionObserver__8l;
    v27 = v11;
    [(UNCKeyedObservable *)observable notifyObserversKey:@"*" usingBlock:v26];
  }

  v25 = *MEMORY[0x1E69E9840];
}

@end