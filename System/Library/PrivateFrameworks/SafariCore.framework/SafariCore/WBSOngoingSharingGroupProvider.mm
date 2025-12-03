@interface WBSOngoingSharingGroupProvider
+ (WBSOngoingSharingGroupProvider)sharedProvider;
- (BOOL)hasLoadedGroups;
- (NSArray)cachedGroups;
- (NSArray)cachedInvitations;
- (NSString)currentUserParticipantID;
- (WBSOngoingSharingGroupProvider)init;
- (id)cachedGroupWithID:(id)d;
- (void)_addNewGroupToCachedGroups:(id)groups;
- (void)_contactsUpdatedNotification:(id)notification;
- (void)_fetchCurrentUserParticipantIDWithCompletion:(id)completion;
- (void)_fetchGroupsWithCompletion:(id)completion;
- (void)_notifySubscribers;
- (void)_performTaskEnsuringGroupsAreLoadedOnQueue:(id)queue shouldForceUpdate:(BOOL)update task:(id)task;
- (void)accountChanged;
- (void)addSubscriber:(id)subscriber;
- (void)dealloc;
- (void)groupsUpdated;
@end

@implementation WBSOngoingSharingGroupProvider

+ (WBSOngoingSharingGroupProvider)sharedProvider
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__WBSOngoingSharingGroupProvider_sharedProvider__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedProvider_onceToken != -1)
  {
    dispatch_once(&sharedProvider_onceToken, block);
  }

  v2 = sharedProvider_provider;

  return v2;
}

void __48__WBSOngoingSharingGroupProvider_sharedProvider__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedProvider_provider;
  sharedProvider_provider = v1;
}

- (WBSOngoingSharingGroupProvider)init
{
  v23.receiver = self;
  v23.super_class = WBSOngoingSharingGroupProvider;
  v2 = [(WBSOngoingSharingGroupProvider *)&v23 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    subscribers = v2->_subscribers;
    v2->_subscribers = weakObjectsHashTable;

    v5 = MEMORY[0x1E696AEC0];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v5 stringWithFormat:@"com.apple.SafariCore.%@.%p", v7, v2];
    v9 = dispatch_queue_create([v8 UTF8String], 0);
    queue = v2->_queue;
    v2->_queue = v9;

    mEMORY[0x1E697AA68] = [MEMORY[0x1E697AA68] sharedInstance];
    [mEMORY[0x1E697AA68] addSubscriber:v2];

    [(WBSOngoingSharingGroupProvider *)v2 _fetchCurrentUserParticipantIDWithCompletion:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__fetchGroups name:WBSKeychainSyncStatusMayHaveChangedNotification object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel__contactsUpdatedNotification_ name:*MEMORY[0x1E695C3D8] object:0];

    [(WBSOngoingSharingGroupProvider *)v2 _fetchGroups];
    mEMORY[0x1E697AA68]2 = [MEMORY[0x1E697AA68] sharedInstance];
    [mEMORY[0x1E697AA68]2 provisionWithReply:&__block_literal_global_34];

    objc_initWeak(&location, v2);
    v15 = +[WBSKeyBagLockStatusManager sharedManager];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __38__WBSOngoingSharingGroupProvider_init__block_invoke_18;
    v20[3] = &unk_1E7CF15E8;
    objc_copyWeak(&v21, &location);
    v16 = [v15 addKeyBagLockStatusChangedObserverWithHandler:v20];
    keybagLockStatusObserverToken = v2->_keybagLockStatusObserverToken;
    v2->_keybagLockStatusObserverToken = v16;

    v18 = v2;
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __38__WBSOngoingSharingGroupProvider_init__block_invoke_cold_1(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2(&dword_1B8447000, v5, v6, "Failed to provision for password sharing with error: %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_notifySubscribers
{
  v3 = [(NSHashTable *)self->_subscribers copy];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__WBSOngoingSharingGroupProvider__notifySubscribers__block_invoke;
  v5[3] = &unk_1E7CF1708;
  v6 = v3;
  selfCopy = self;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

- (NSArray)cachedGroups
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__10;
  v10 = __Block_byref_object_dispose__10;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__WBSOngoingSharingGroupProvider_cachedGroups__block_invoke;
  v5[3] = &unk_1E7CF19B0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __38__WBSOngoingSharingGroupProvider_init__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __38__WBSOngoingSharingGroupProvider_init__block_invoke_cold_1(v3, v2);
    }
  }
}

void __46__WBSOngoingSharingGroupProvider_cachedGroups__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSArray)cachedInvitations
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__10;
  v10 = __Block_byref_object_dispose__10;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__WBSOngoingSharingGroupProvider_cachedInvitations__block_invoke;
  v5[3] = &unk_1E7CF19B0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __51__WBSOngoingSharingGroupProvider_cachedInvitations__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __52__WBSOngoingSharingGroupProvider__notifySubscribers__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) groupProviderReceivedUpdates:{*(a1 + 40), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasLoadedGroups
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__WBSOngoingSharingGroupProvider_hasLoadedGroups__block_invoke;
  v5[3] = &unk_1E7CF19B0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __49__WBSOngoingSharingGroupProvider_hasLoadedGroups__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 24))
  {
    v2 = *(v1 + 32) != 0;
  }

  else
  {
    v2 = 0;
  }

  *(*(*(result + 40) + 8) + 24) = v2;
  return result;
}

void __38__WBSOngoingSharingGroupProvider_init__block_invoke_18(uint64_t a1)
{
  v2 = +[WBSKeyBagLockStatusManager sharedManager];
  v3 = [v2 keyBagLockStatus];

  if (!v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _fetchGroups];
  }
}

- (void)dealloc
{
  v3 = +[WBSKeyBagLockStatusManager sharedManager];
  [v3 removeKeyBagLockStatusChangedObserver:self->_keybagLockStatusObserverToken];

  v4.receiver = self;
  v4.super_class = WBSOngoingSharingGroupProvider;
  [(WBSOngoingSharingGroupProvider *)&v4 dealloc];
}

- (id)cachedGroupWithID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__10;
  v16 = __Block_byref_object_dispose__10;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__WBSOngoingSharingGroupProvider_cachedGroupWithID___block_invoke;
  block[3] = &unk_1E7CF1730;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __52__WBSOngoingSharingGroupProvider_cachedGroupWithID___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__WBSOngoingSharingGroupProvider_cachedGroupWithID___block_invoke_2;
  v6[3] = &unk_1E7CF2D20;
  v7 = *(a1 + 40);
  v3 = [v2 safari_firstObjectPassingTest:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t __52__WBSOngoingSharingGroupProvider_cachedGroupWithID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 groupID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)addSubscriber:(id)subscriber
{
  subscriberCopy = subscriber;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__WBSOngoingSharingGroupProvider_addSubscriber___block_invoke;
  v7[3] = &unk_1E7CF1708;
  v7[4] = self;
  v8 = subscriberCopy;
  v6 = subscriberCopy;
  dispatch_async(queue, v7);
}

- (void)_performTaskEnsuringGroupsAreLoadedOnQueue:(id)queue shouldForceUpdate:(BOOL)update task:(id)task
{
  queueCopy = queue;
  taskCopy = task;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __100__WBSOngoingSharingGroupProvider__performTaskEnsuringGroupsAreLoadedOnQueue_shouldForceUpdate_task___block_invoke;
  v13[3] = &unk_1E7CF2D70;
  updateCopy = update;
  v13[4] = self;
  v14 = queueCopy;
  v15 = taskCopy;
  v11 = taskCopy;
  v12 = queueCopy;
  dispatch_async(queue, v13);
}

void __100__WBSOngoingSharingGroupProvider__performTaskEnsuringGroupsAreLoadedOnQueue_shouldForceUpdate_task___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[3] && v2[4] && (*(a1 + 56) & 1) == 0)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __100__WBSOngoingSharingGroupProvider__performTaskEnsuringGroupsAreLoadedOnQueue_shouldForceUpdate_task___block_invoke_2;
    block[3] = &unk_1E7CF1630;
    v3 = &v9;
    v4 = *(a1 + 40);
    v9 = *(a1 + 48);
    dispatch_async(v4, block);
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __100__WBSOngoingSharingGroupProvider__performTaskEnsuringGroupsAreLoadedOnQueue_shouldForceUpdate_task___block_invoke_3;
    v5[3] = &unk_1E7CF2D48;
    v3 = &v6;
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    [v2 _fetchGroupsWithCompletion:v5];
  }
}

void __100__WBSOngoingSharingGroupProvider__performTaskEnsuringGroupsAreLoadedOnQueue_shouldForceUpdate_task___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __100__WBSOngoingSharingGroupProvider__performTaskEnsuringGroupsAreLoadedOnQueue_shouldForceUpdate_task___block_invoke_4;
  v7[3] = &unk_1E7CF1888;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (NSString)currentUserParticipantID
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__10;
  v18 = __Block_byref_object_dispose__10;
  v19 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__WBSOngoingSharingGroupProvider_currentUserParticipantID__block_invoke;
  block[3] = &unk_1E7CF1FA0;
  block[4] = self;
  block[5] = &v14;
  dispatch_sync(queue, block);
  v4 = v15[5];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = dispatch_group_create();
    dispatch_group_enter(v6);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__WBSOngoingSharingGroupProvider_currentUserParticipantID__block_invoke_2;
    v10[3] = &unk_1E7CF2D98;
    v10[4] = self;
    v12 = &v14;
    v7 = v6;
    v11 = v7;
    [(WBSOngoingSharingGroupProvider *)self _fetchCurrentUserParticipantIDWithCompletion:v10];
    v8 = dispatch_time(0, 1000000000);
    dispatch_group_wait(v7, v8);
    v5 = v15[5];
  }

  _Block_object_dispose(&v14, 8);

  return v5;
}

void __58__WBSOngoingSharingGroupProvider_currentUserParticipantID__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  if (v2)
  {
    v3 = [v2 copy];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

void __58__WBSOngoingSharingGroupProvider_currentUserParticipantID__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__WBSOngoingSharingGroupProvider_currentUserParticipantID__block_invoke_3;
  v5[3] = &unk_1E7CF19B0;
  v4 = *(a1 + 48);
  v5[4] = v2;
  v5[5] = v4;
  dispatch_sync(v3, v5);
  dispatch_group_leave(*(a1 + 40));
}

void __58__WBSOngoingSharingGroupProvider_currentUserParticipantID__block_invoke_3(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_fetchCurrentUserParticipantIDWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(WBSScopeExitHandler);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79__WBSOngoingSharingGroupProvider__fetchCurrentUserParticipantIDWithCompletion___block_invoke;
  v15[3] = &unk_1E7CF1630;
  v6 = completionCopy;
  v16 = v6;
  [(WBSScopeExitHandler *)v5 setHandler:v15];
  mEMORY[0x1E697AA68] = [MEMORY[0x1E697AA68] sharedInstance];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    mEMORY[0x1E697AA68]2 = [MEMORY[0x1E697AA68] sharedInstance];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __79__WBSOngoingSharingGroupProvider__fetchCurrentUserParticipantIDWithCompletion___block_invoke_25;
    v11[3] = &unk_1E7CF2DC0;
    v12 = v5;
    selfCopy = self;
    [mEMORY[0x1E697AA68]2 fetchCurrentUserIdentifierWithReply:v11];
  }

  else
  {
    v10 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B8447000, v10, OS_LOG_TYPE_DEFAULT, "Not fetching current user participant ID because [KCSharingGroupManager fetchCurrentUserIdentifierWithReply:] is not available.", buf, 2u);
    }
  }
}

uint64_t __79__WBSOngoingSharingGroupProvider__fetchCurrentUserParticipantIDWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __79__WBSOngoingSharingGroupProvider__fetchCurrentUserParticipantIDWithCompletion___block_invoke_25(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __79__WBSOngoingSharingGroupProvider__fetchCurrentUserParticipantIDWithCompletion___block_invoke_25_cold_1(v7, v6);
    }
  }

  v8 = *(a1 + 40);
  v9 = *(v8 + 8);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__WBSOngoingSharingGroupProvider__fetchCurrentUserParticipantIDWithCompletion___block_invoke_26;
  v11[3] = &unk_1E7CF1708;
  v11[4] = v8;
  v12 = v5;
  v10 = v5;
  dispatch_sync(v9, v11);
}

void __79__WBSOngoingSharingGroupProvider__fetchCurrentUserParticipantIDWithCompletion___block_invoke_26(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_fetchGroupsWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v5 = +[WBSKeychainSyncingMonitor sharedMonitor];
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__WBSOngoingSharingGroupProvider__fetchGroupsWithCompletion___block_invoke;
  v8[3] = &unk_1E7CF2E78;
  objc_copyWeak(&v10, &location);
  v7 = completionCopy;
  v9 = v7;
  [v5 performTaskOnceKeychainSyncValueHasBeenFetchedOnQueue:queue task:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __61__WBSOngoingSharingGroupProvider__fetchGroupsWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = +[WBSFeatureAvailability isOngoingCredentialSharingEnabled];
    v4 = WBS_LOG_CHANNEL_PREFIXPasswords();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        *buf = 0;
        _os_log_impl(&dword_1B8447000, v4, OS_LOG_TYPE_DEFAULT, "Fetching shared account groups", buf, 2u);
      }

      v6 = [MEMORY[0x1E697AA68] sharedInstance];
      v7 = [MEMORY[0x1E697AA58] all];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __61__WBSOngoingSharingGroupProvider__fetchGroupsWithCompletion___block_invoke_32;
      v15[3] = &unk_1E7CF2E50;
      v16 = *(a1 + 32);
      objc_copyWeak(&v17, (a1 + 40));
      [v6 getGroupsWithRequest:v7 completion:v15];

      objc_destroyWeak(&v17);
      v8 = v16;
LABEL_15:

      goto LABEL_16;
    }

    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1B8447000, v4, OS_LOG_TYPE_DEFAULT, "Not fetching shared account groups because ongoing credential sharing is disabled", buf, 2u);
    }

    v9 = +[WBSKeychainSyncingMonitor sharedMonitor];
    v10 = [v9 keychainSyncSettingValue];

    if ((v10 - 1) >= 2)
    {
      if (!v10)
      {
        v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WBSOngoingSharingGroupProviderErrorDomain" code:1 userInfo:0];
        goto LABEL_13;
      }
    }

    else
    {
      v11 = WeakRetained[3];
      v12 = MEMORY[0x1E695E0F0];
      WeakRetained[3] = MEMORY[0x1E695E0F0];

      v13 = WeakRetained[4];
      WeakRetained[4] = v12;

      [WeakRetained _notifySubscribers];
    }

    v8 = 0;
LABEL_13:
    v14 = *(a1 + 32);
    if (v14)
    {
      (*(v14 + 16))(v14, v8);
    }

    goto LABEL_15;
  }

LABEL_16:
}

void __61__WBSOngoingSharingGroupProvider__fetchGroupsWithCompletion___block_invoke_32(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(WBSScopeExitHandler);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __61__WBSOngoingSharingGroupProvider__fetchGroupsWithCompletion___block_invoke_2;
  v17[3] = &unk_1E7CF1888;
  v19 = *(a1 + 32);
  v8 = v6;
  v18 = v8;
  [(WBSScopeExitHandler *)v7 setHandler:v17];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = WeakRetained[1];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __61__WBSOngoingSharingGroupProvider__fetchGroupsWithCompletion___block_invoke_3;
    v12[3] = &unk_1E7CF2E28;
    v13 = v7;
    v14 = v8;
    v15 = v5;
    v16 = v10;
    dispatch_async(v11, v12);
  }
}

uint64_t __61__WBSOngoingSharingGroupProvider__fetchGroupsWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void __61__WBSOngoingSharingGroupProvider__fetchGroupsWithCompletion___block_invoke_3(void **a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = a1 + 5;
  v3 = a1[5];
  v4 = WBS_LOG_CHANNEL_PREFIXPasswords();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __61__WBSOngoingSharingGroupProvider__fetchGroupsWithCompletion___block_invoke_3_cold_1(v2, v5);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[6];
      v7 = v5;
      v29 = 134217984;
      v30 = [v6 count];
      _os_log_impl(&dword_1B8447000, v7, OS_LOG_TYPE_DEFAULT, "Fetched %ld groups from Keychain", &v29, 0xCu);
    }

    v8 = [a1[6] sortedArrayUsingComparator:&__block_literal_global_36];
    v9 = [v8 safari_filterObjectsUsingBlock:&__block_literal_global_39];
    v10 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [v9 count];
      v29 = 134217984;
      v30 = v12;
      _os_log_impl(&dword_1B8447000, v11, OS_LOG_TYPE_DEFAULT, "%ld groups after filtering by invite status", &v29, 0xCu);
    }

    v13 = [v8 safari_filterObjectsUsingBlock:&__block_literal_global_42];
    v14 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = [v13 count];
      v29 = 134217984;
      v30 = v16;
      _os_log_impl(&dword_1B8447000, v15, OS_LOG_TYPE_DEFAULT, "%ld invitations after filtering by invite status", &v29, 0xCu);
    }

    v17 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1[7] + 3);
      v19 = v17;
      v20 = [v18 count];
      v21 = [*(a1[7] + 4) count];
      v29 = 134218240;
      v30 = v20;
      v31 = 2048;
      v32 = v21;
      _os_log_impl(&dword_1B8447000, v19, OS_LOG_TYPE_DEFAULT, "%ld cached groups, %ld cached invitations", &v29, 0x16u);
    }

    if (!WBSIsEqual(v9, *(a1[7] + 3)) || (WBSIsEqual(v13, *(a1[7] + 4)) & 1) == 0)
    {
      v22 = [v9 copy];
      v23 = a1[7];
      v24 = v23[3];
      v23[3] = v22;

      v25 = [v13 copy];
      v26 = a1[7];
      v27 = v26[4];
      v26[4] = v25;

      [a1[7] _notifySubscribers];
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

uint64_t __61__WBSOngoingSharingGroupProvider__fetchGroupsWithCompletion___block_invoke_33(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 displayName];
  v7 = [v5 displayName];
  v8 = [v6 safari_localizedCompareSortingEmptyStringAndNumericPrefixToEnd:v7];

  if (!v8)
  {
    v9 = [v4 groupID];
    v10 = [v5 groupID];
    v8 = [v9 compare:v10];
  }

  return v8;
}

BOOL __61__WBSOngoingSharingGroupProvider__fetchGroupsWithCompletion___block_invoke_2_37(uint64_t a1, void *a2)
{
  v2 = [a2 currentUserParticipant];
  v3 = [v2 inviteStatus] == 2;

  return v3;
}

BOOL __61__WBSOngoingSharingGroupProvider__fetchGroupsWithCompletion___block_invoke_40(uint64_t a1, void *a2)
{
  v2 = [a2 currentUserParticipant];
  v3 = [v2 inviteStatus] == 1;

  return v3;
}

- (void)_contactsUpdatedNotification:(id)notification
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__WBSOngoingSharingGroupProvider__contactsUpdatedNotification___block_invoke;
  block[3] = &unk_1E7CF16E0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_addNewGroupToCachedGroups:(id)groups
{
  groupsCopy = groups;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__WBSOngoingSharingGroupProvider__addNewGroupToCachedGroups___block_invoke;
  v7[3] = &unk_1E7CF1708;
  v7[4] = self;
  v8 = groupsCopy;
  v6 = groupsCopy;
  dispatch_sync(queue, v7);
}

void __61__WBSOngoingSharingGroupProvider__addNewGroupToCachedGroups___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    v3 = [MEMORY[0x1E695DEC8] array];
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = v3;

    v2 = *(*(a1 + 32) + 24);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__WBSOngoingSharingGroupProvider__addNewGroupToCachedGroups___block_invoke_2;
  v9[3] = &unk_1E7CF2D20;
  v10 = *(a1 + 40);
  if (([v2 safari_containsObjectPassingTest:v9] & 1) == 0)
  {
    v6 = [*(*(a1 + 32) + 24) arrayByAddingObject:*(a1 + 40)];
    v7 = *(a1 + 32);
    v8 = *(v7 + 24);
    *(v7 + 24) = v6;
  }

  [*(a1 + 32) _notifySubscribers];
}

uint64_t __61__WBSOngoingSharingGroupProvider__addNewGroupToCachedGroups___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 groupID];
  v4 = [*(a1 + 32) groupID];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (void)groupsUpdated
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __47__WBSOngoingSharingGroupProvider_groupsUpdated__block_invoke;
  v2[3] = &unk_1E7CF16E0;
  v2[4] = self;
  [(WBSOngoingSharingGroupProvider *)self _fetchCurrentUserParticipantIDWithCompletion:v2];
}

- (void)accountChanged
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __48__WBSOngoingSharingGroupProvider_accountChanged__block_invoke;
  v2[3] = &unk_1E7CF16E0;
  v2[4] = self;
  [(WBSOngoingSharingGroupProvider *)self _fetchCurrentUserParticipantIDWithCompletion:v2];
}

void __79__WBSOngoingSharingGroupProvider__fetchCurrentUserParticipantIDWithCompletion___block_invoke_25_cold_1(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2(&dword_1B8447000, v5, v6, "Failed to fetch current user participant ID with error: %{public}@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

void __61__WBSOngoingSharingGroupProvider__fetchGroupsWithCompletion___block_invoke_3_cold_1(void **a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = a2;
  v4 = [v2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2(&dword_1B8447000, v5, v6, "Failed to fetch shared credential groups with error: %{public}@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

@end