@interface ICSecurityInfo
+ (ICSecurityInfo)sharedSecurityInfo;
- (BOOL)isContentProtectionEnabled;
- (BOOL)isDeviceClassCUnlocked;
- (ICSecurityInfo)init;
- (void)_getContentProtectionEnabled:(BOOL *)enabled isDeviceClassCUnlocked:(BOOL *)unlocked;
- (void)_loadContentProtectionEnabled:(BOOL)enabled isDeviceClassCUnlocked:(BOOL)unlocked;
- (void)_processFirstUnlockNotification;
- (void)dealloc;
- (void)performBlockAfterFirstUnlock:(id)unlock;
@end

@implementation ICSecurityInfo

+ (ICSecurityInfo)sharedSecurityInfo
{
  if (sharedSecurityInfo_sOnceToken != -1)
  {
    dispatch_once(&sharedSecurityInfo_sOnceToken, &__block_literal_global_35313);
  }

  v3 = sharedSecurityInfo_sSharedInstance;

  return v3;
}

- (BOOL)isContentProtectionEnabled
{
  v3 = 0;
  [(ICSecurityInfo *)self _getContentProtectionEnabled:&v3 isDeviceClassCUnlocked:0];
  return v3;
}

- (BOOL)isDeviceClassCUnlocked
{
  v3 = 0;
  [(ICSecurityInfo *)self _getContentProtectionEnabled:0 isDeviceClassCUnlocked:&v3];
  return v3;
}

uint64_t __36__ICSecurityInfo_sharedSecurityInfo__block_invoke()
{
  sharedSecurityInfo_sSharedInstance = objc_alloc_init(ICSecurityInfo);

  return MEMORY[0x1EEE66BB8]();
}

- (ICSecurityInfo)init
{
  v12.receiver = self;
  v12.super_class = ICSecurityInfo;
  v2 = [(ICSecurityInfo *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_firstUnlockNotificationToken = 0;
    array = [MEMORY[0x1E695DF70] array];
    pendingFirstUnlockBlocks = v3->_pendingFirstUnlockBlocks;
    v3->_pendingFirstUnlockBlocks = array;

    v6 = MEMORY[0x1E69E96A8];
    v7 = dispatch_queue_create("com.apple.itunescloud.ICSecurityInfo.accessQueue", MEMORY[0x1E69E96A8]);
    accessQueue = v3->_accessQueue;
    v3->_accessQueue = v7;

    v9 = dispatch_queue_create("com.apple.itunescloud.ICSecurityInfo.calloutQueue", v6);
    calloutQueue = v3->_calloutQueue;
    v3->_calloutQueue = v9;
  }

  return v3;
}

- (void)_processFirstUnlockNotification
{
  v20 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_barrier(self->_accessQueue);
  *&self->_hasLoadedDeviceClassCUnlocked = 257;
  firstUnlockNotificationToken = self->_firstUnlockNotificationToken;
  if (firstUnlockNotificationToken)
  {
    notify_cancel(firstUnlockNotificationToken);
    self->_firstUnlockNotificationToken = 0;
  }

  v4 = [(NSMutableArray *)self->_pendingFirstUnlockBlocks copy];
  [(NSMutableArray *)self->_pendingFirstUnlockBlocks removeAllObjects];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        calloutQueue = self->_calloutQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __49__ICSecurityInfo__processFirstUnlockNotification__block_invoke;
        block[3] = &unk_1E7BF9D20;
        block[4] = v10;
        dispatch_async(calloutQueue, block);
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = self->_calloutQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __49__ICSecurityInfo__processFirstUnlockNotification__block_invoke_2;
  v13[3] = &unk_1E7BFA300;
  v13[4] = self;
  dispatch_async(v12, v13);
}

void __49__ICSecurityInfo__processFirstUnlockNotification__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"ICSecurityInfoFirstUnlockNotification" object:*(a1 + 32)];
}

- (void)_loadContentProtectionEnabled:(BOOL)enabled isDeviceClassCUnlocked:(BOOL)unlocked
{
  unlockedCopy = unlocked;
  enabledCopy = enabled;
  dispatch_assert_queue_barrier(self->_accessQueue);
  if (enabledCopy && !self->_hasLoadedContentProtectionEnabled)
  {
    v7 = MKBDeviceFormattedForContentProtection();
    if ((v7 & 0x80000000) == 0)
    {
      self->_hasLoadedContentProtectionEnabled = 1;
      self->_isContentProtectionEnabled = v7 == 1;
    }
  }

  if (unlockedCopy && !self->_hasLoadedDeviceClassCUnlocked)
  {
    v8 = MKBDeviceUnlockedSinceBoot();
    if (v8 < 0)
    {
      goto LABEL_18;
    }

    v9 = v8;
    self->_hasLoadedDeviceClassCUnlocked = 1;
    self->_isDeviceClassCUnlocked = v8 == 1;
    v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "Initially Class C unlocked.", buf, 2u);
    }

    if (v9 != 1)
    {
LABEL_18:
      if (!self->_firstUnlockNotificationToken)
      {
        accessQueue = self->_accessQueue;
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = __71__ICSecurityInfo__loadContentProtectionEnabled_isDeviceClassCUnlocked___block_invoke;
        handler[3] = &unk_1E7BFA000;
        handler[4] = self;
        notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &self->_firstUnlockNotificationToken, accessQueue, handler);
        if (MKBDeviceUnlockedSinceBoot() == 1)
        {
          v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_DEFAULT, "Class C unlocked!", buf, 2u);
          }

          [(ICSecurityInfo *)self _processFirstUnlockNotification];
        }
      }
    }
  }
}

void __71__ICSecurityInfo__loadContentProtectionEnabled_isDeviceClassCUnlocked___block_invoke(uint64_t a1, int token)
{
  v10 = *MEMORY[0x1E69E9840];
  state64 = 0;
  notify_get_state(token, &state64);
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v9 = state64;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "kMobileKeyBagFirstUnlockNotificationID state changed to %llu", buf, 0xCu);
  }

  if (MKBDeviceUnlockedSinceBoot() == 1)
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __71__ICSecurityInfo__loadContentProtectionEnabled_isDeviceClassCUnlocked___block_invoke_9;
    v6[3] = &unk_1E7BFA300;
    v6[4] = v4;
    dispatch_barrier_async(v5, v6);
  }
}

uint64_t __71__ICSecurityInfo__loadContentProtectionEnabled_isDeviceClassCUnlocked___block_invoke_9(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "Class C unlocked!", v4, 2u);
  }

  return [*(a1 + 32) _processFirstUnlockNotification];
}

- (void)_getContentProtectionEnabled:(BOOL *)enabled isDeviceClassCUnlocked:(BOOL *)unlocked
{
  dispatch_assert_queue_not_V2(self->_accessQueue);
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__ICSecurityInfo__getContentProtectionEnabled_isDeviceClassCUnlocked___block_invoke;
  block[3] = &unk_1E7BF8D08;
  block[4] = self;
  block[5] = &v23;
  block[6] = &v19;
  block[7] = &v15;
  block[8] = &v11;
  dispatch_sync(accessQueue, block);
  if (enabled && (v24[3] & 1) == 0 || unlocked && (v16[3] & 1) == 0)
  {
    v8 = self->_accessQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __70__ICSecurityInfo__getContentProtectionEnabled_isDeviceClassCUnlocked___block_invoke_2;
    v9[3] = &unk_1E7BF8D30;
    v9[7] = enabled;
    v9[8] = unlocked;
    v9[4] = self;
    v9[5] = &v19;
    v9[6] = &v11;
    dispatch_barrier_sync(v8, v9);
  }

  if (enabled)
  {
    *enabled = *(v20 + 24);
  }

  if (unlocked)
  {
    *unlocked = *(v12 + 24);
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
}

void *__70__ICSecurityInfo__getContentProtectionEnabled_isDeviceClassCUnlocked___block_invoke(void *result)
{
  *(*(result[5] + 8) + 24) = *(result[4] + 10);
  *(*(result[6] + 8) + 24) = *(result[4] + 11);
  *(*(result[7] + 8) + 24) = *(result[4] + 8);
  *(*(result[8] + 8) + 24) = *(result[4] + 9);
  return result;
}

uint64_t __70__ICSecurityInfo__getContentProtectionEnabled_isDeviceClassCUnlocked___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) _loadContentProtectionEnabled:*(a1 + 56) != 0 isDeviceClassCUnlocked:*(a1 + 64) != 0];
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 11);
  *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 32) + 9);
  return result;
}

- (void)performBlockAfterFirstUnlock:(id)unlock
{
  unlockCopy = unlock;
  v8 = 0;
  [(ICSecurityInfo *)self _getContentProtectionEnabled:&v8 + 1 isDeviceClassCUnlocked:&v8];
  if (HIBYTE(v8) == 1 && (v8 & 1) == 0)
  {
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__ICSecurityInfo_performBlockAfterFirstUnlock___block_invoke;
    block[3] = &unk_1E7BF9EC8;
    block[4] = self;
    v7 = unlockCopy;
    dispatch_barrier_async(accessQueue, block);
  }

  else
  {
    unlockCopy[2](unlockCopy);
  }
}

void __47__ICSecurityInfo_performBlockAfterFirstUnlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadContentProtectionEnabled:1 isDeviceClassCUnlocked:1];
  v2 = *(a1 + 32);
  if (*(v2 + 11) == 1 && (*(v2 + 9) & 1) == 0)
  {
    v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "Device locked, waiting for first unlock.", buf, 2u);
    }

    v6 = *(*(a1 + 32) + 16);
    v4 = MEMORY[0x1B8C781E0](*(a1 + 40));
    [v6 addObject:v4];
  }

  else
  {
    v3 = *(v2 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__ICSecurityInfo_performBlockAfterFirstUnlock___block_invoke_7;
    block[3] = &unk_1E7BF9D20;
    v8 = *(a1 + 40);
    dispatch_async(v3, block);
    v4 = v8;
  }
}

- (void)dealloc
{
  firstUnlockNotificationToken = self->_firstUnlockNotificationToken;
  if (firstUnlockNotificationToken)
  {
    notify_cancel(firstUnlockNotificationToken);
    self->_firstUnlockNotificationToken = 0;
  }

  [(NSMutableArray *)self->_pendingFirstUnlockBlocks removeAllObjects];
  v4.receiver = self;
  v4.super_class = ICSecurityInfo;
  [(ICSecurityInfo *)&v4 dealloc];
}

@end