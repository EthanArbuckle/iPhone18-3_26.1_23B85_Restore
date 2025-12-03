@interface WBSKeychainSyncingMonitor
+ (WBSKeychainSyncingMonitor)sharedMonitor;
- (BOOL)canKeychainSyncBeEnabled;
- (BOOL)isKeychainSyncEnabled;
- (WBSKeychainSyncingMonitor)init;
- (unint64_t)keychainSyncSettingValue;
- (void)_fetchKeychainSyncingStatus;
- (void)_primaryAppleAccountDidChange;
- (void)_updateAccountOnInternalQueue:(id)queue;
- (void)_updateKeychainClique;
- (void)performTaskOnceKeychainSyncValueHasBeenFetchedOnQueue:(id)queue task:(id)task;
@end

@implementation WBSKeychainSyncingMonitor

void __42__WBSKeychainSyncingMonitor_sharedMonitor__block_invoke()
{
  v0 = objc_alloc_init(WBSKeychainSyncingMonitor);
  v1 = sharedMonitor_sharedMonitor;
  sharedMonitor_sharedMonitor = v0;
}

- (void)_primaryAppleAccountDidChange
{
  v3 = +[WBSPrimaryAppleAccountObserver sharedObserver];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__WBSKeychainSyncingMonitor__primaryAppleAccountDidChange__block_invoke;
  v4[3] = &unk_1E7CF2288;
  v4[4] = self;
  [v3 getPrimaryAppleAccountWithCompletionHandler:v4];
}

+ (WBSKeychainSyncingMonitor)sharedMonitor
{
  if (sharedMonitor_onceToken != -1)
  {
    +[WBSKeychainSyncingMonitor sharedMonitor];
  }

  v3 = sharedMonitor_sharedMonitor;

  return v3;
}

- (WBSKeychainSyncingMonitor)init
{
  v17.receiver = self;
  v17.super_class = WBSKeychainSyncingMonitor;
  v2 = [(WBSKeychainSyncingMonitor *)&v17 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);

    v5 = dispatch_queue_create("com.apple.SafariCore.WBSKeychainSyncingMonitor", v4);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v5;

    v7 = dispatch_queue_create("com.apple.SafariCore.WBSKeychainSyncingMonitor.keychainStatusFetchingQueue", v4);
    keychainStatusFetchingQueue = v2->_keychainStatusFetchingQueue;
    v2->_keychainStatusFetchingQueue = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_UTILITY, 0);

    v11 = dispatch_queue_attr_make_initially_inactive(v10);

    v12 = dispatch_queue_create("com.apple.SafariCore.WBSKeychainSyncingMonitor.synchronousGetterQueue", v11);
    synchronousGetterQueue = v2->_synchronousGetterQueue;
    v2->_synchronousGetterQueue = v12;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__primaryAppleAccountDidChange name:@"WBSPrimaryAppleAccountDidChangeNotification" object:0];

    [(WBSKeychainSyncingMonitor *)v2 _primaryAppleAccountDidChange];
    v15 = v2;
  }

  return v2;
}

- (unint64_t)keychainSyncSettingValue
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__WBSKeychainSyncingMonitor_keychainSyncSettingValue__block_invoke;
  block[3] = &unk_1E7CF2238;
  block[4] = self;
  block[5] = &v6;
  block[6] = &v10;
  dispatch_sync(internalQueue, block);
  if (*(v7 + 24) == 1)
  {
    v3 = v11[3];
  }

  else
  {
    v3 = 1;
  }

  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(&v10, 8);
  return v3;
}

void __58__WBSKeychainSyncingMonitor__primaryAppleAccountDidChange__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__WBSKeychainSyncingMonitor__primaryAppleAccountDidChange__block_invoke_2;
  v7[3] = &unk_1E7CF1708;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

- (void)_fetchKeychainSyncingStatus
{
  v3 = self->_keychainClique;
  keychainStatusFetchingQueue = self->_keychainStatusFetchingQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__WBSKeychainSyncingMonitor__fetchKeychainSyncingStatus__block_invoke;
  v6[3] = &unk_1E7CF1708;
  v7 = v3;
  selfCopy = self;
  v5 = v3;
  dispatch_async(keychainStatusFetchingQueue, v6);
}

void __56__WBSKeychainSyncingMonitor__fetchKeychainSyncingStatus__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v11 = 0;
  v3 = [v2 fetchUserControllableViewsSyncingEnabled:&v11];
  v4 = v11;
  v5 = v4;
  if (v3)
  {
    v6 = 2;
  }

  else
  {
    if (v4)
    {
      v7 = WBS_LOG_CHANNEL_PREFIXKeychain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __56__WBSKeychainSyncingMonitor__fetchKeychainSyncingStatus__block_invoke_cold_1(v7, v5);
      }
    }

    v6 = v5 == 0;
  }

  v8 = *(a1 + 40);
  v9 = *(v8 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__WBSKeychainSyncingMonitor__fetchKeychainSyncingStatus__block_invoke_11;
  block[3] = &unk_1E7CF2260;
  block[4] = v8;
  block[5] = v6;
  dispatch_async(v9, block);
  dispatch_activate(*(*(a1 + 40) + 24));
}

uint64_t __56__WBSKeychainSyncingMonitor__fetchKeychainSyncingStatus__block_invoke_11(uint64_t result)
{
  v2 = *(result + 32);
  v1 = *(result + 40);
  if (v1 != *(v2 + 40))
  {
    *(v2 + 40) = v1;
    return [*(result + 32) _keychainSyncingStatusMayHaveChanged];
  }

  return result;
}

void __65__WBSKeychainSyncingMonitor__keychainSyncingStatusMayHaveChanged__block_invoke()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:WBSKeychainSyncStatusMayHaveChangedNotification object:0];
}

void *__53__WBSKeychainSyncingMonitor_keychainSyncSettingValue__block_invoke(void *result)
{
  *(*(result[5] + 8) + 24) = *(result[4] + 48) != 0;
  *(*(result[6] + 8) + 24) = *(result[4] + 40);
  return result;
}

- (void)_updateAccountOnInternalQueue:(id)queue
{
  queueCopy = queue;
  primaryAppleAccountAltDSID = self->_primaryAppleAccountAltDSID;
  v10 = queueCopy;
  primaryAppleAccount = self->_primaryAppleAccount;
  self->_primaryAppleAccount = v10;
  v7 = primaryAppleAccountAltDSID;

  aa_altDSID = [(ACAccount *)v10 aa_altDSID];
  v9 = self->_primaryAppleAccountAltDSID;
  self->_primaryAppleAccountAltDSID = aa_altDSID;

  LOBYTE(primaryAppleAccount) = WBSIsEqual(v7, self->_primaryAppleAccountAltDSID);
  if ((primaryAppleAccount & 1) == 0)
  {
    [(WBSKeychainSyncingMonitor *)self _updateKeychainClique];
  }

  [(WBSKeychainSyncingMonitor *)self _fetchKeychainSyncingStatus];
}

- (void)_updateKeychainClique
{
  v5 = objc_alloc_init(MEMORY[0x1E697AA88]);
  [v5 setContext:*MEMORY[0x1E697AAD0]];
  [v5 setAltDSID:self->_primaryAppleAccountAltDSID];
  v3 = [objc_alloc(MEMORY[0x1E697AA80]) initWithContextData:v5];
  keychainClique = self->_keychainClique;
  self->_keychainClique = v3;
}

- (BOOL)isKeychainSyncEnabled
{
  dispatch_sync(self->_synchronousGetterQueue, &__block_literal_global_19_0);
  if (!+[WBSFeatureAvailability isInternalInstall])
  {
    return [(WBSKeychainSyncingMonitor *)self keychainSyncSettingValue]== 2;
  }

  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  v4 = [safari_browserDefaults safari_numberForKey:@"iCloudKeychainEnabledOverride"];

  if (!v4)
  {
    return [(WBSKeychainSyncingMonitor *)self keychainSyncSettingValue]== 2;
  }

  v5 = WBS_LOG_CHANNEL_PREFIXKeychain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1B8447000, v5, OS_LOG_TYPE_DEFAULT, "Overriding iCloud Keychain check due to iCloudKeychainEnabledOverrideDefault", v8, 2u);
  }

  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (BOOL)canKeychainSyncBeEnabled
{
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  isSharedIPad = [mEMORY[0x1E69DF068] isSharedIPad];

  if (isSharedIPad)
  {
    return 0;
  }

  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  v4 = [mEMORY[0x1E69ADFB8] BOOLRestrictionForFeature:*MEMORY[0x1E69ADE30]] == 0;

  return v4;
}

- (void)performTaskOnceKeychainSyncValueHasBeenFetchedOnQueue:(id)queue task:(id)task
{
  queueCopy = queue;
  taskCopy = task;
  synchronousGetterQueue = self->_synchronousGetterQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__WBSKeychainSyncingMonitor_performTaskOnceKeychainSyncValueHasBeenFetchedOnQueue_task___block_invoke;
  v11[3] = &unk_1E7CF16B8;
  v12 = queueCopy;
  v13 = taskCopy;
  v9 = taskCopy;
  v10 = queueCopy;
  dispatch_async(synchronousGetterQueue, v11);
}

void __56__WBSKeychainSyncingMonitor__fetchKeychainSyncingStatus__block_invoke_cold_1(void *a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v6 = 138543362;
  v7 = v4;
  _os_log_error_impl(&dword_1B8447000, v3, OS_LOG_TYPE_ERROR, "Failed to read keychain sync status with error: %{public}@", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

@end