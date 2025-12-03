@interface WBSPrimaryAppleAccountObserver
+ (WBSPrimaryAppleAccountObserver)sharedObserver;
- (BOOL)isCurrentAppleIDManaged;
- (BOOL)isUsingICloud;
- (WBSPrimaryAppleAccountObserver)init;
- (void)_registerForUpdates;
- (void)_setAccountIfPrimary:(id)primary;
- (void)_setAccountOnInternalQueue:(id)queue;
- (void)accountWasRemoved:(id)removed;
- (void)getPrimaryAppleAccountAltDSIDWithCompletionHandler:(id)handler;
- (void)getPrimaryAppleAccountHasSafariSyncEnabledWithCompletionHandler:(id)handler;
- (void)getPrimaryAppleAccountWithCompletionHandler:(id)handler;
- (void)needsToVerifyTermsWithCompletionHandler:(id)handler;
@end

@implementation WBSPrimaryAppleAccountObserver

+ (WBSPrimaryAppleAccountObserver)sharedObserver
{
  if (sharedObserver_onceToken != -1)
  {
    +[WBSPrimaryAppleAccountObserver sharedObserver];
  }

  v3 = sharedObserver_sharedObserver;

  return v3;
}

void __48__WBSPrimaryAppleAccountObserver_sharedObserver__block_invoke()
{
  v0 = objc_alloc_init(WBSPrimaryAppleAccountObserver);
  v1 = sharedObserver_sharedObserver;
  sharedObserver_sharedObserver = v0;
}

- (WBSPrimaryAppleAccountObserver)init
{
  v11.receiver = self;
  v11.super_class = WBSPrimaryAppleAccountObserver;
  v2 = [(WBSPrimaryAppleAccountObserver *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.SafariCore.WBSPrimaryAppleAccountObserver", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = v2->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__WBSPrimaryAppleAccountObserver_init__block_invoke;
    block[3] = &unk_1E7CF16E0;
    v6 = v2;
    v10 = v6;
    dispatch_async(v5, block);
    v7 = v6;
  }

  return v2;
}

- (void)_registerForUpdates
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getACAccountTypeIdentifierAppleAccount(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"WBSPrimaryAppleAccountObserver.m" lineNumber:16 description:{@"%s", dlerror()}];

  __break(1u);
}

- (BOOL)isUsingICloud
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__WBSPrimaryAppleAccountObserver_isUsingICloud__block_invoke;
  v5[3] = &unk_1E7CF19B0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_setAccountOnInternalQueue:(id)queue
{
  queueCopy = queue;
  dispatch_assert_queue_V2(self->_queue);
  primaryAppleAccount = self->_primaryAppleAccount;
  self->_primaryAppleAccount = queueCopy;
  v6 = queueCopy;

  aa_altDSID = [(ACAccount *)self->_primaryAppleAccount aa_altDSID];
  primaryAppleAccountAltDSID = self->_primaryAppleAccountAltDSID;
  self->_primaryAppleAccountAltDSID = aa_altDSID;

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

  [defaultCenter postNotificationName:@"WBSPrimaryAppleAccountDidChangeNotification" object:self];
}

- (void)getPrimaryAppleAccountWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__WBSPrimaryAppleAccountObserver_getPrimaryAppleAccountWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CF1888;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)getPrimaryAppleAccountAltDSIDWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __85__WBSPrimaryAppleAccountObserver_getPrimaryAppleAccountAltDSIDWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CF1888;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)getPrimaryAppleAccountHasSafariSyncEnabledWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __98__WBSPrimaryAppleAccountObserver_getPrimaryAppleAccountHasSafariSyncEnabledWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CF1888;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __98__WBSPrimaryAppleAccountObserver_getPrimaryAppleAccountHasSafariSyncEnabledWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 24);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v3 = getACAccountDataclassBookmarksSymbolLoc_ptr;
  v9 = getACAccountDataclassBookmarksSymbolLoc_ptr;
  if (!getACAccountDataclassBookmarksSymbolLoc_ptr)
  {
    v4 = AccountsLibrary();
    v7[3] = dlsym(v4, "ACAccountDataclassBookmarks");
    getACAccountDataclassBookmarksSymbolLoc_ptr = v7[3];
    v3 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v3)
  {
    __98__WBSPrimaryAppleAccountObserver_getPrimaryAppleAccountHasSafariSyncEnabledWithCompletionHandler___block_invoke_cold_1();
  }

  v5 = *v3;
  (*(v1 + 16))(v1, [v2 isEnabledForDataclass:v5]);
}

- (void)_setAccountIfPrimary:(id)primary
{
  primaryCopy = primary;
  v5 = getAAAccountClassPrimary();
  v6 = [primaryCopy aa_isAccountClass:v5];

  if (v6)
  {
    queue = self->_queue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55__WBSPrimaryAppleAccountObserver__setAccountIfPrimary___block_invoke;
    v8[3] = &unk_1E7CF1708;
    v8[4] = self;
    v9 = primaryCopy;
    dispatch_async(queue, v8);
  }
}

- (BOOL)isCurrentAppleIDManaged
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__WBSPrimaryAppleAccountObserver_isCurrentAppleIDManaged__block_invoke;
  v5[3] = &unk_1E7CF19B0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __57__WBSPrimaryAppleAccountObserver_isCurrentAppleIDManaged__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) aa_isManagedAppleID];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)needsToVerifyTermsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__WBSPrimaryAppleAccountObserver_needsToVerifyTermsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CF1888;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

uint64_t __74__WBSPrimaryAppleAccountObserver_needsToVerifyTermsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(*(a1 + 32) + 24) aa_needsToVerifyTerms];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (void)accountWasRemoved:(id)removed
{
  removedCopy = removed;
  v5 = getAAAccountClassPrimary();
  v6 = [removedCopy aa_isAccountClass:v5];

  if (v6)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__WBSPrimaryAppleAccountObserver_accountWasRemoved___block_invoke;
    block[3] = &unk_1E7CF16E0;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

void __98__WBSPrimaryAppleAccountObserver_getPrimaryAppleAccountHasSafariSyncEnabledWithCompletionHandler___block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getACAccountDataclassBookmarks(void)"];
  [v0 handleFailureInFunction:v1 file:@"WBSPrimaryAppleAccountObserver.m" lineNumber:15 description:{@"%s", dlerror()}];

  __break(1u);
}

@end