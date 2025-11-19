@interface ICDeviceSetupStatusMonitor
+ (ICDeviceSetupStatusMonitor)sharedMonitor;
- (BOOL)isDeviceSetupComplete;
- (BOOL)isSetupAssistantComplete;
- (id)_init;
- (void)_runAllPendingBlocksOfType:(int64_t)a3;
- (void)dealloc;
- (void)nanoPairedDeviceStatusMonitor:(id)a3 didChangeClientSyncState:(unint64_t)a4;
- (void)performBlockAfterBuddySetup:(id)a3;
- (void)performBlockAfterDeviceSetup:(id)a3;
- (void)setSetupAssistantComplete:(BOOL)a3;
@end

@implementation ICDeviceSetupStatusMonitor

+ (ICDeviceSetupStatusMonitor)sharedMonitor
{
  if (sharedMonitor_sOnceToken_18379 != -1)
  {
    dispatch_once(&sharedMonitor_sOnceToken_18379, &__block_literal_global_18380);
  }

  v3 = sharedMonitor_sSharedMonitor_18381;

  return v3;
}

- (BOOL)isDeviceSetupComplete
{
  os_unfair_lock_lock(&self->_lock);
  v3 = +[ICDeviceInfo currentDeviceInfo];
  v4 = [v3 isWatch];
  v5 = 40;
  if (v4)
  {
    v5 = 41;
  }

  v6 = *(&self->super.isa + v5);

  os_unfair_lock_unlock(&self->_lock);
  return v6;
}

- (id)_init
{
  v32 = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = ICDeviceSetupStatusMonitor;
  v2 = [(ICDeviceSetupStatusMonitor *)&v25 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v5 = dispatch_queue_create("com.apple.amp.iTunesCloud.ICDeviceSetupStatusMonitor.callBackQueue", v4);
    workQueue = v3->_workQueue;
    v3->_workQueue = v5;

    v7 = [MEMORY[0x1E695DF70] array];
    pendingBuddyCompleteBlocks = v3->_pendingBuddyCompleteBlocks;
    v3->_pendingBuddyCompleteBlocks = v7;

    v9 = [MEMORY[0x1E695DF70] array];
    pendingSetupCompleteBlocks = v3->_pendingSetupCompleteBlocks;
    v3->_pendingSetupCompleteBlocks = v9;

    v11 = v3->_workQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__ICDeviceSetupStatusMonitor__init__block_invoke;
    block[3] = &unk_1E7BFA300;
    v12 = v3;
    v24 = v12;
    dispatch_sync(v11, block);
    v13 = +[ICDeviceInfo currentDeviceInfo];
    v14 = [v13 isWatch];

    if (v14)
    {
      v15 = +[ICNanoPairedDeviceStatusMonitor sharedMonitor];
      [v15 addObserver:v12];
      v12[41] = [v15 isInitialSyncComplete];
    }

    v16 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v12[40];
      v18 = +[ICDeviceInfo currentDeviceInfo];
      v19 = [v18 isWatch];
      v20 = 40;
      if (v19)
      {
        v20 = 41;
      }

      v21 = v12[v20];
      *buf = 138543874;
      v27 = v12;
      v28 = 1024;
      v29 = v17;
      v30 = 1024;
      v31 = v21;
      _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ initialized. isSetupAssistantComplete=%{BOOL}u, isDeviceSetupComplete=%{BOOL}u", buf, 0x18u);
    }
  }

  return v3;
}

uint64_t __43__ICDeviceSetupStatusMonitor_sharedMonitor__block_invoke()
{
  sharedMonitor_sSharedMonitor_18381 = [[ICDeviceSetupStatusMonitor alloc] _init];

  return MEMORY[0x1EEE66BB8]();
}

void __35__ICDeviceSetupStatusMonitor__init__block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v2 = getBYSetupAssistantLaunchedDarwinNotificationSymbolLoc_ptr;
  v44 = getBYSetupAssistantLaunchedDarwinNotificationSymbolLoc_ptr;
  if (!getBYSetupAssistantLaunchedDarwinNotificationSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getBYSetupAssistantLaunchedDarwinNotificationSymbolLoc_block_invoke;
    v46 = &unk_1E7BFA0A0;
    v47 = &v41;
    v3 = SetupAssistantLibrary();
    v4 = dlsym(v3, "BYSetupAssistantLaunchedDarwinNotification");
    *(v47[1] + 24) = v4;
    getBYSetupAssistantLaunchedDarwinNotificationSymbolLoc_ptr = *(v47[1] + 24);
    v2 = v42[3];
  }

  _Block_object_dispose(&v41, 8);
  if (!v2)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getBYSetupAssistantLaunchedDarwinNotification(void)"];
    [v31 handleFailureInFunction:v32 file:@"ICDeviceSetupStatusMonitor.m" lineNumber:23 description:{@"%s", dlerror()}];

    goto LABEL_29;
  }

  v5 = *v2;
  v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = *(a1 + 32);
      *buf = 138543618;
      *&buf[4] = v8;
      *&buf[12] = 2114;
      *&buf[14] = v5;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Registering for darwin notification: %{public}@", buf, 0x16u);
    }

    v9 = v5;
    v10 = [v5 UTF8String];
    v11 = *(a1 + 32);
    v12 = *(v11 + 16);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __35__ICDeviceSetupStatusMonitor__init__block_invoke_3;
    handler[3] = &unk_1E7BF6038;
    v39 = v11;
    v40 = v5;
    notify_register_dispatch(v10, (v11 + 48), v12, handler);

    v6 = v39;
  }

  else if (v7)
  {
    v13 = *(a1 + 32);
    *buf = 138543362;
    *&buf[4] = v13;
    _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to weak link symbol BYSetupAssistantLaunchedDarwinNotification", buf, 0xCu);
  }

  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v14 = getBYSetupAssistantFinishedDarwinNotificationSymbolLoc_ptr;
  v44 = getBYSetupAssistantFinishedDarwinNotificationSymbolLoc_ptr;
  if (!getBYSetupAssistantFinishedDarwinNotificationSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getBYSetupAssistantFinishedDarwinNotificationSymbolLoc_block_invoke;
    v46 = &unk_1E7BFA0A0;
    v47 = &v41;
    v15 = SetupAssistantLibrary();
    v16 = dlsym(v15, "BYSetupAssistantFinishedDarwinNotification");
    *(v47[1] + 24) = v16;
    getBYSetupAssistantFinishedDarwinNotificationSymbolLoc_ptr = *(v47[1] + 24);
    v14 = v42[3];
  }

  _Block_object_dispose(&v41, 8);
  if (!v14)
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getBYSetupAssistantFinishedDarwinNotification(void)"];
    [v33 handleFailureInFunction:v34 file:@"ICDeviceSetupStatusMonitor.m" lineNumber:24 description:{@"%s", dlerror()}];

LABEL_29:
    __break(1u);
  }

  v17 = *v14;
  v18 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    if (v19)
    {
      v20 = *(a1 + 32);
      *buf = 138543618;
      *&buf[4] = v20;
      *&buf[12] = 2114;
      *&buf[14] = v17;
      _os_log_impl(&dword_1B4491000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ Registering for darwin notification: %{public}@", buf, 0x16u);
    }

    v21 = v17;
    v22 = [v17 UTF8String];
    v23 = *(a1 + 32);
    v24 = *(v23 + 16);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __35__ICDeviceSetupStatusMonitor__init__block_invoke_5;
    v35[3] = &unk_1E7BF6038;
    v36 = v23;
    v37 = v17;
    notify_register_dispatch(v22, (v23 + 44), v24, v35);

    v18 = v36;
  }

  else if (v19)
  {
    v25 = *(a1 + 32);
    *buf = 138543362;
    *&buf[4] = v25;
    _os_log_impl(&dword_1B4491000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to weak link symbol BYSetupAssistantFinishedDarwinNotification", buf, 0xCu);
  }

  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v26 = getBYSetupAssistantNeedsToRunSymbolLoc_ptr;
  v44 = getBYSetupAssistantNeedsToRunSymbolLoc_ptr;
  if (!getBYSetupAssistantNeedsToRunSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getBYSetupAssistantNeedsToRunSymbolLoc_block_invoke;
    v46 = &unk_1E7BFA0A0;
    v47 = &v41;
    v27 = SetupAssistantLibrary();
    v28 = dlsym(v27, "BYSetupAssistantNeedsToRun");
    *(v47[1] + 24) = v28;
    getBYSetupAssistantNeedsToRunSymbolLoc_ptr = *(v47[1] + 24);
    v26 = v42[3];
  }

  _Block_object_dispose(&v41, 8);
  if (v26)
  {
    [*(a1 + 32) setSetupAssistantComplete:v26() ^ 1];
  }

  else
  {
    v29 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = *(a1 + 32);
      *buf = 138543362;
      *&buf[4] = v30;
      _os_log_impl(&dword_1B4491000, v29, OS_LOG_TYPE_ERROR, "%{public}@ Could not determine if setup assistant needs to run - assume its not needed", buf, 0xCu);
    }

    [*(a1 + 32) setSetupAssistantComplete:1];
  }
}

- (void)_runAllPendingBlocksOfType:(int64_t)a3
{
  v3 = a3;
  v27 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v5 = 24;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v5 = 32;
LABEL_5:
    v6 = [*(&self->super.isa + v5) copy];
    [*(&self->super.isa + v5) removeAllObjects];
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:
  v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v22 = self;
    v23 = 1024;
    v24 = [v6 count];
    v25 = 1024;
    v26 = v3;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Running %d blocks of type %d", buf, 0x18u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        workQueue = self->_workQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __57__ICDeviceSetupStatusMonitor__runAllPendingBlocksOfType___block_invoke;
        block[3] = &unk_1E7BF9D20;
        block[4] = v13;
        dispatch_async(workQueue, block);
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }
}

- (void)nanoPairedDeviceStatusMonitor:(id)a3 didChangeClientSyncState:(unint64_t)a4
{
  v12 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (a4 == 3)
  {
    self->_watchInitialSyncIsComplete = 1;
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = +[ICDeviceInfo currentDeviceInfo];
      v8 = 138543618;
      v9 = self;
      v10 = 2114;
      v11 = v7;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Device %{public}@ has completed setup and initial sync", &v8, 0x16u);
    }

    [(ICDeviceSetupStatusMonitor *)self _runAllPendingBlocksOfType:1];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)performBlockAfterDeviceSetup:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock(&self->_lock);
    v5 = +[ICDeviceInfo currentDeviceInfo];
    v6 = [v5 isWatch];
    v7 = 40;
    if (v6)
    {
      v7 = 41;
    }

    v8 = *(&self->super.isa + v7);

    if (v8)
    {
      workQueue = self->_workQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __59__ICDeviceSetupStatusMonitor_performBlockAfterDeviceSetup___block_invoke_10;
      block[3] = &unk_1E7BF9D20;
      v10 = &v21;
      v21 = v4;
      dispatch_async(workQueue, block);
    }

    else
    {
      v11 = os_log_create("com.apple.amp.iTunesCloud", "Analytics");
      v12 = os_signpost_id_generate(v11);

      v13 = os_log_create("com.apple.amp.iTunesCloud", "Analytics");
      v14 = v13;
      if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1B4491000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "ICInitialSync", &unk_1B477EA4E, buf, 2u);
      }

      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __59__ICDeviceSetupStatusMonitor_performBlockAfterDeviceSetup___block_invoke;
      v22[3] = &unk_1E7BF7260;
      v23[1] = v12;
      v10 = v23;
      v23[0] = v4;
      v15 = MEMORY[0x1B8C781E0](v22);
      v16 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = +[ICDeviceInfo currentDeviceInfo];
        *buf = 138543618;
        v25 = self;
        v26 = 2114;
        v27 = v17;
        _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Device %{public}@ has not completed setup and initial sync", buf, 0x16u);
      }

      pendingSetupCompleteBlocks = self->_pendingSetupCompleteBlocks;
      v19 = MEMORY[0x1B8C781E0](v15);
      [(NSMutableArray *)pendingSetupCompleteBlocks addObject:v19];
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

uint64_t __59__ICDeviceSetupStatusMonitor_performBlockAfterDeviceSetup___block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Analytics");
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B4491000, v3, OS_SIGNPOST_INTERVAL_END, v4, "ICInitialSync", " enableTelemetry=YES ", v6, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)performBlockAfterBuddySetup:(id)a3
{
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock(&self->_lock);
    if (self->_setupAssistantComplete)
    {
      workQueue = self->_workQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __58__ICDeviceSetupStatusMonitor_performBlockAfterBuddySetup___block_invoke;
      block[3] = &unk_1E7BF9D20;
      v9 = v4;
      dispatch_async(workQueue, block);
    }

    else
    {
      pendingBuddyCompleteBlocks = self->_pendingBuddyCompleteBlocks;
      v7 = MEMORY[0x1B8C781E0](v4);
      [(NSMutableArray *)pendingBuddyCompleteBlocks addObject:v7];
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)setSetupAssistantComplete:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = self;
    v10 = 1024;
    v11 = v3;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Setup assistant has completed:%{BOOL}u", &v8, 0x12u);
  }

  self->_setupAssistantComplete = v3;
  if (v3)
  {
    [(ICDeviceSetupStatusMonitor *)self _runAllPendingBlocksOfType:0];
    v6 = +[ICDeviceInfo currentDeviceInfo];
    v7 = [v6 isWatch];

    if ((v7 & 1) == 0)
    {
      [(ICDeviceSetupStatusMonitor *)self _runAllPendingBlocksOfType:1];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isSetupAssistantComplete
{
  os_unfair_lock_lock(&self->_lock);
  setupAssistantComplete = self->_setupAssistantComplete;
  os_unfair_lock_unlock(&self->_lock);
  return !setupAssistantComplete;
}

- (void)dealloc
{
  v3 = +[ICDeviceInfo currentDeviceInfo];
  v4 = [v3 isWatch];

  if (v4)
  {
    v5 = +[ICNanoPairedDeviceStatusMonitor sharedMonitor];
    [v5 removeObserver:self];
  }

  setupAssistantLaunchedNotifyToken = self->_setupAssistantLaunchedNotifyToken;
  if (setupAssistantLaunchedNotifyToken)
  {
    notify_cancel(setupAssistantLaunchedNotifyToken);
    self->_setupAssistantLaunchedNotifyToken = 0;
  }

  setupAssistantFinishedNotifyToken = self->_setupAssistantFinishedNotifyToken;
  if (setupAssistantFinishedNotifyToken)
  {
    notify_cancel(setupAssistantFinishedNotifyToken);
    self->_setupAssistantFinishedNotifyToken = 0;
  }

  v8.receiver = self;
  v8.super_class = ICDeviceSetupStatusMonitor;
  [(ICDeviceSetupStatusMonitor *)&v8 dealloc];
}

uint64_t __35__ICDeviceSetupStatusMonitor__init__block_invoke_3(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Received darwin notification: %{public}@", &v6, 0x16u);
  }

  return [*(a1 + 32) setSetupAssistantComplete:0];
}

uint64_t __35__ICDeviceSetupStatusMonitor__init__block_invoke_5(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Received darwin notification: %{public}@", &v6, 0x16u);
  }

  return [*(a1 + 32) setSetupAssistantComplete:1];
}

@end