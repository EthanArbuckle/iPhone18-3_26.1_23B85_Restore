@interface WBSKeyBagLockStatusManager
+ (id)sharedManager;
- (WBSKeyBagLockStatusManager)init;
- (id)_descriptionOfKeyBagLockStatus:(int64_t)status;
- (id)addKeyBagLockStatusChangedObserverWithHandler:(id)handler;
- (int64_t)keyBagLockStatus;
- (void)_startObservingKeyBagLockStatusChanges;
- (void)_stopObservingKeyBagLockStatusChanges;
- (void)dealloc;
- (void)removeKeyBagLockStatusChangedObserver:(id)observer;
@end

@implementation WBSKeyBagLockStatusManager

+ (id)sharedManager
{
  {
    v3 = +[WBSKeyBagLockStatusManager sharedManager]::manager;
  }

  else
  {
    v3 = objc_alloc_init(WBSKeyBagLockStatusManager);
    +[WBSKeyBagLockStatusManager sharedManager]::manager = v3;
  }

  return v3;
}

- (WBSKeyBagLockStatusManager)init
{
  if (MobileKeyBagLibraryCore(0) && getMKBGetDeviceLockStateSymbolLoc())
  {
    v7.receiver = self;
    v7.super_class = WBSKeyBagLockStatusManager;
    selfCopy = [(WBSKeyBagLockStatusManager *)&v7 init];
    if (selfCopy)
    {
      v4 = dispatch_queue_create("com.apple.SafariCore.WBSKeyBagLockStatusManager", 0);
      internalQueue = selfCopy->_internalQueue;
      selfCopy->_internalQueue = v4;

      self = selfCopy;
      selfCopy = self;
    }

    else
    {
      self = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)_startObservingKeyBagLockStatusChanges
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__WBSKeyBagLockStatusManager__startObservingKeyBagLockStatusChanges__block_invoke;
  aBlock[3] = &unk_1E7CF1AA0;
  objc_copyWeak(&v13, &location);
  v3 = _Block_copy(aBlock);
  internalQueue = self->_internalQueue;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __68__WBSKeyBagLockStatusManager__startObservingKeyBagLockStatusChanges__block_invoke_7;
  handler[3] = &unk_1E7CF2158;
  v5 = v3;
  v11 = v5;
  notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &self->_notifyTokenLockStatusChanged, internalQueue, handler);
  v6 = self->_internalQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__WBSKeyBagLockStatusManager__startObservingKeyBagLockStatusChanges__block_invoke_2_10;
  v8[3] = &unk_1E7CF2158;
  v7 = v5;
  v9 = v7;
  notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &self->_notifyTokenFirstUnlock, v6, v8);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (int64_t)keyBagLockStatus
{
  soft_MKBGetDeviceLockState(self);
  if (v2 == 1)
  {
    return 2;
  }

  else
  {
    return v2 == 2;
  }
}

- (void)dealloc
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__WBSKeyBagLockStatusManager_dealloc__block_invoke;
  block[3] = &unk_1E7CF0828;
  block[4] = self;
  dispatch_sync(internalQueue, block);
  v4.receiver = self;
  v4.super_class = WBSKeyBagLockStatusManager;
  [(WBSKeyBagLockStatusManager *)&v4 dealloc];
}

_DWORD *__37__WBSKeyBagLockStatusManager_dealloc__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[4] || result[5])
  {
    return [result _stopObservingKeyBagLockStatusChanges];
  }

  return result;
}

- (id)addKeyBagLockStatusChangedObserverWithHandler:(id)handler
{
  handlerCopy = handler;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6;
  v16 = __Block_byref_object_dispose__6;
  v17 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__WBSKeyBagLockStatusManager_addKeyBagLockStatusChangedObserverWithHandler___block_invoke;
  block[3] = &unk_1E7CF2130;
  v10 = handlerCopy;
  v11 = &v12;
  block[4] = self;
  v6 = handlerCopy;
  dispatch_sync(internalQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __76__WBSKeyBagLockStatusManager_addKeyBagLockStatusChangedObserverWithHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (!v2)
  {
    v3 = [MEMORY[0x1E695DFA8] set];
    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    *(v4 + 8) = v3;

    v2 = *(*(a1 + 32) + 8);
  }

  if (![v2 count])
  {
    [*(a1 + 32) _startObservingKeyBagLockStatusChanges];
  }

  v6 = [[WBSKeyBagLockStatusChangedHandlerToken alloc] initWithHandler:*(a1 + 40)];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 32) + 8);
  v10 = *(*(*(a1 + 48) + 8) + 40);

  return [v9 addObject:v10];
}

- (void)removeKeyBagLockStatusChangedObserver:(id)observer
{
  observerCopy = observer;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__WBSKeyBagLockStatusManager_removeKeyBagLockStatusChangedObserver___block_invoke;
  v7[3] = &unk_1E7CF0908;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(internalQueue, v7);
}

uint64_t __68__WBSKeyBagLockStatusManager_removeKeyBagLockStatusChangedObserver___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) containsObject:*(a1 + 40)];
  if (result)
  {
    [*(*(a1 + 32) + 8) removeObject:*(a1 + 40)];
    result = [*(*(a1 + 32) + 8) count];
    if (!result)
    {
      v3 = *(a1 + 32);

      return [v3 _stopObservingKeyBagLockStatusChanges];
    }
  }

  return result;
}

void __68__WBSKeyBagLockStatusManager__startObservingKeyBagLockStatusChanges__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    activity_block[0] = MEMORY[0x1E69E9820];
    activity_block[1] = 3221225472;
    activity_block[2] = __68__WBSKeyBagLockStatusManager__startObservingKeyBagLockStatusChanges__block_invoke_2;
    activity_block[3] = &unk_1E7CF0828;
    activity_block[4] = WeakRetained;
    _os_activity_initiate(&dword_1B8447000, "Key Bag: Lock Status Changed", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  }
}

void __68__WBSKeyBagLockStatusManager__startObservingKeyBagLockStatusChanges__block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = WBS_LOG_CHANNEL_PREFIXKeychain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) _descriptionOfKeyBagLockStatus:{objc_msgSend(*(a1 + 32), "keyBagLockStatus")}];
    *buf = 138543362;
    v16 = v3;
    _os_log_impl(&dword_1B8447000, v2, OS_LOG_TYPE_DEFAULT, "Lock status of the device has changed to: %{public}@", buf, 0xCu);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = *(*(a1 + 32) + 8);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v10 + 1) + 8 * v7) handler];
        v8[2]();

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_stopObservingKeyBagLockStatusChanges
{
  notifyTokenLockStatusChanged = self->_notifyTokenLockStatusChanged;
  if (notifyTokenLockStatusChanged)
  {
    notify_cancel(notifyTokenLockStatusChanged);
    self->_notifyTokenLockStatusChanged = 0;
  }

  notifyTokenFirstUnlock = self->_notifyTokenFirstUnlock;
  if (notifyTokenFirstUnlock)
  {
    notify_cancel(notifyTokenFirstUnlock);
    self->_notifyTokenFirstUnlock = 0;
  }
}

- (id)_descriptionOfKeyBagLockStatus:(int64_t)status
{
  v3 = @"locked";
  if (status == 1)
  {
    v3 = @"locking";
  }

  if (status)
  {
    return v3;
  }

  else
  {
    return @"unlocked";
  }
}

@end