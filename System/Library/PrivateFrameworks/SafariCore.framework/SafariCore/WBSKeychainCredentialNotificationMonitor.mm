@interface WBSKeychainCredentialNotificationMonitor
- (WBSKeychainCredentialNotificationMonitor)initWithCoalescingInterval:(double)interval;
- (id)addObserverWithBlock:(id)block;
- (void)_cancelCoalescingTimer;
- (void)_notifyKeybagUnlocked;
- (void)_notifyKeychainUpdated;
- (void)_notifyObservers;
- (void)dealloc;
- (void)removeObserverForToken:(id)token;
- (void)triggerExternalNotification;
@end

@implementation WBSKeychainCredentialNotificationMonitor

- (WBSKeychainCredentialNotificationMonitor)initWithCoalescingInterval:(double)interval
{
  v19.receiver = self;
  v19.super_class = WBSKeychainCredentialNotificationMonitor;
  v4 = [(WBSKeychainCredentialNotificationMonitor *)&v19 init];
  if (v4)
  {
    objc_initWeak(&location, v4);
    v5 = dispatch_queue_create("com.apple.SafariCore.WBSKeychainCredentialNotificationMonitor", 0);
    internalQueue = v4->_internalQueue;
    v4->_internalQueue = v5;

    v7 = dispatch_get_global_queue(21, 0);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __71__WBSKeychainCredentialNotificationMonitor_initWithCoalescingInterval___block_invoke;
    handler[3] = &unk_1E7CF21C0;
    objc_copyWeak(&v17, &location);
    notify_register_dispatch("com.apple.security.view-change.Passwords", &v4->_keychainChangedNotificationToken, v7, handler);

    v8 = +[WBSKeyBagLockStatusManager sharedManager];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __71__WBSKeychainCredentialNotificationMonitor_initWithCoalescingInterval___block_invoke_3;
    v14[3] = &unk_1E7CF1AA0;
    objc_copyWeak(&v15, &location);
    v9 = [v8 addKeyBagLockStatusChangedObserverWithHandler:v14];
    keybagUnlockStatusChangedToken = v4->_keybagUnlockStatusChangedToken;
    v4->_keybagUnlockStatusChangedToken = v9;

    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel_notifyModernKeychainUpdated name:@"com.apple.security.shared-items-changed" object:0];

    v4->_coalescingInterval = interval;
    v12 = v4;
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v4;
}

void __71__WBSKeychainCredentialNotificationMonitor_initWithCoalescingInterval___block_invoke(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXKeychain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B8447000, v2, OS_LOG_TYPE_DEFAULT, "Received keychain changed notification", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained notifyModernKeychainUpdated];
}

void __71__WBSKeychainCredentialNotificationMonitor_initWithCoalescingInterval___block_invoke_3(uint64_t a1)
{
  v3 = +[WBSKeyBagLockStatusManager sharedManager];
  v2 = [v3 keyBagLockStatus];

  if (!v2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _notifyKeybagUnlocked];
  }
}

- (void)dealloc
{
  notify_cancel(self->_keychainChangedNotificationToken);
  v3 = +[WBSKeyBagLockStatusManager sharedManager];
  [v3 removeKeyBagLockStatusChangedObserver:self->_keybagUnlockStatusChangedToken];

  v4.receiver = self;
  v4.super_class = WBSKeychainCredentialNotificationMonitor;
  [(WBSKeychainCredentialNotificationMonitor *)&v4 dealloc];
}

- (id)addObserverWithBlock:(id)block
{
  blockCopy = block;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__WBSKeychainCredentialNotificationMonitor_addObserverWithBlock___block_invoke;
  block[3] = &unk_1E7CF21E8;
  block[4] = self;
  v7 = uUID;
  v11 = v7;
  v12 = blockCopy;
  v8 = blockCopy;
  dispatch_async(internalQueue, block);

  return v7;
}

void __65__WBSKeychainCredentialNotificationMonitor_addObserverWithBlock___block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 16))
  {
    v2 = [MEMORY[0x1E695DF90] dictionary];
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    *(v3 + 16) = v2;
  }

  v5 = _Block_copy(*(a1 + 48));
  v6 = *(a1 + 40);
  v7 = v5;
  [*(*(a1 + 32) + 16) setObject:? forKeyedSubscript:?];
}

- (void)removeObserverForToken:(id)token
{
  tokenCopy = token;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__WBSKeychainCredentialNotificationMonitor_removeObserverForToken___block_invoke;
  v7[3] = &unk_1E7CF0908;
  v7[4] = self;
  v8 = tokenCopy;
  v6 = tokenCopy;
  dispatch_async(internalQueue, v7);
}

void __67__WBSKeychainCredentialNotificationMonitor_removeObserverForToken___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) removeObjectForKey:*(a1 + 40)];
  if (![*(*(a1 + 32) + 16) count])
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 16);
    *(v2 + 16) = 0;
  }
}

- (void)triggerExternalNotification
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__WBSKeychainCredentialNotificationMonitor_triggerExternalNotification__block_invoke;
  block[3] = &unk_1E7CF0828;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

uint64_t __71__WBSKeychainCredentialNotificationMonitor_triggerExternalNotification__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[6])
  {
    [v2 _cancelCoalescingTimer];
    v2 = *(a1 + 32);
  }

  return [v2 _notifyObservers];
}

- (void)_notifyKeybagUnlocked
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = WBS_LOG_CHANNEL_PREFIXKeychain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1B8447000, v3, OS_LOG_TYPE_INFO, "Notification monitor <%p> notifying observers immediately that the keybag was unlocked", &v5, 0xCu);
  }

  [(WBSKeychainCredentialNotificationMonitor *)self triggerExternalNotification];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_notifyKeychainUpdated
{
  objc_initWeak(&location, self);
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__WBSKeychainCredentialNotificationMonitor__notifyKeychainUpdated__block_invoke;
  block[3] = &unk_1E7CF2210;
  block[4] = self;
  objc_copyWeak(&v5, &location);
  dispatch_async(internalQueue, block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __66__WBSKeychainCredentialNotificationMonitor__notifyKeychainUpdated__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 32) == 0.0)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXKeychain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      *buf = 134217984;
      v24 = v10;
      _os_log_impl(&dword_1B8447000, v9, OS_LOG_TYPE_INFO, "Notification monitor <%p> notifying observers immediately that keychain updated because no coalescing interval is set", buf, 0xCu);
    }

    goto LABEL_9;
  }

  if (!*(v2 + 40) || ([MEMORY[0x1E695DF00] date], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "timeIntervalSinceDate:", *(*(a1 + 32) + 40)), v5 = v4, v6 = *(*(a1 + 32) + 32), v3, v5 > v6))
  {
    v7 = WBS_LOG_CHANNEL_PREFIXKeychain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      *buf = 134217984;
      v24 = v8;
      _os_log_impl(&dword_1B8447000, v7, OS_LOG_TYPE_INFO, "Notification monitor <%p> notifying observers immediately that keychain updated because enough time has elapsed", buf, 0xCu);
    }

LABEL_9:
    [*(a1 + 32) _notifyObservers];
    goto LABEL_10;
  }

  v12 = *(a1 + 32);
  if (*(v12 + 48))
  {
    v13 = WBS_LOG_CHANNEL_PREFIXKeychain();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 32);
      *buf = 134217984;
      v24 = v14;
      _os_log_impl(&dword_1B8447000, v13, OS_LOG_TYPE_INFO, "Notification monitor <%p> not notifying observers immediately that keychain updated because we have a coalescing timer running", buf, 0xCu);
    }
  }

  else
  {
    v15 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v12 + 8));
    v17 = *(a1 + 32);
    v16 = (a1 + 32);
    v18 = *(v17 + 48);
    *(v17 + 48) = v15;

    v19 = dispatch_time(0, (*(*v16 + 4) * 1000000000.0));
    dispatch_source_set_timer(*(*v16 + 6), v19, 0xFFFFFFFFFFFFFFFFLL, (*(*v16 + 4) * 0.1 * 1000000000.0));
    v20 = *(*v16 + 6);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __66__WBSKeychainCredentialNotificationMonitor__notifyKeychainUpdated__block_invoke_13;
    handler[3] = &unk_1E7CF1AA0;
    objc_copyWeak(&v22, v16 + 1);
    dispatch_source_set_event_handler(v20, handler);
    dispatch_resume(*(*v16 + 6));
    objc_destroyWeak(&v22);
  }

LABEL_10:
  v11 = *MEMORY[0x1E69E9840];
}

void __66__WBSKeychainCredentialNotificationMonitor__notifyKeychainUpdated__block_invoke_13(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WBS_LOG_CHANNEL_PREFIXKeychain();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v4 = 134217984;
      v5 = WeakRetained;
      _os_log_impl(&dword_1B8447000, v2, OS_LOG_TYPE_INFO, "Notification monitor <%p> notifying observers that keychain updated after coalescing interval", &v4, 0xCu);
    }

    [WeakRetained _notifyObservers];
    [WeakRetained _cancelCoalescingTimer];
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)_cancelCoalescingTimer
{
  dispatch_source_cancel(self->_coalescingTimer);
  coalescingTimer = self->_coalescingTimer;
  self->_coalescingTimer = 0;
}

- (void)_notifyObservers
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allValues = [(NSMutableDictionary *)self->_observers allValues];
  v4 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(allValues);
        }

        (*(*(*(&v10 + 1) + 8 * v6++) + 16))();
      }

      while (v4 != v6);
      v4 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  date = [MEMORY[0x1E695DF00] date];
  lastNotificationTime = self->_lastNotificationTime;
  self->_lastNotificationTime = date;

  v9 = *MEMORY[0x1E69E9840];
}

@end