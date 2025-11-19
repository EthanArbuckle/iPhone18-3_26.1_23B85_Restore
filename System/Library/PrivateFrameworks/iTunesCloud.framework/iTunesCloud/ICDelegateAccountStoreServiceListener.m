@interface ICDelegateAccountStoreServiceListener
+ (id)machServiceListener;
+ (id)testingListenerWithIdentityStore:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (id)_identityStore;
- (id)_initWithXPCListener:(id)a3 testingIdentityStore:(id)a4;
- (void)_userIdentityStoreDelegateAccountStoreDidChangeNotification:(id)a3;
- (void)addDelegationUUIDs:(id)a3 forUserIdentity:(id)a4 completionHandler:(id)a5;
- (void)openWithCompletionHandler:(id)a3;
- (void)recreateWithCompletionHandler:(id)a3;
- (void)removeAllTokensWithCompletionHandler:(id)a3;
- (void)removeDelegationUUIDs:(id)a3 forUserIdentity:(id)a4 completionHandler:(id)a5;
- (void)removeIdentityPropertiesForUserIdentity:(id)a3 completionHandler:(id)a4;
- (void)removeTokenForUserIdentity:(id)a3 completionHandler:(id)a4;
- (void)removeTokensExpiringBeforeDate:(id)a3 completionHandler:(id)a4;
- (void)setIdentityProperties:(id)a3 forUserIdentity:(id)a4 completionHandler:(id)a5;
- (void)setToken:(id)a3 forUserIdentity:(id)a4 completionHandler:(id)a5;
@end

@implementation ICDelegateAccountStoreServiceListener

- (id)_identityStore
{
  testingIdentityStore = self->_testingIdentityStore;
  if (testingIdentityStore)
  {
    v3 = testingIdentityStore;
  }

  else
  {
    v3 = +[ICUserIdentityStore defaultIdentityStore];
  }

  return v3;
}

- (void)_userIdentityStoreDelegateAccountStoreDidChangeNotification:(id)a3
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__ICDelegateAccountStoreServiceListener__userIdentityStoreDelegateAccountStoreDidChangeNotification___block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

void __101__ICDelegateAccountStoreServiceListener__userIdentityStoreDelegateAccountStoreDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__ICDelegateAccountStoreServiceListener__userIdentityStoreDelegateAccountStoreDidChangeNotification___block_invoke_2;
  block[3] = &unk_1E7BFA300;
  v6 = v2;
  v4 = v2;
  dispatch_async(v3, block);
}

void __101__ICDelegateAccountStoreServiceListener__userIdentityStoreDelegateAccountStoreDidChangeNotification___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [*(*(&v7 + 1) + 8 * v5) remoteObjectProxy];
        [v6 delegateAccountStoreDidChange];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_ignoresEntitlements)
  {
    goto LABEL_2;
  }

  v15 = [v7 valueForEntitlement:@"com.apple.itunescloud.delegate-account-store"];
  if ((_NSIsNSNumber() & 1) == 0)
  {

LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  v16 = [v15 BOOLValue];

  if (!v16)
  {
    goto LABEL_7;
  }

LABEL_2:
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__ICDelegateAccountStoreServiceListener_listener_shouldAcceptNewConnection___block_invoke;
  block[3] = &unk_1E7BFA078;
  block[4] = self;
  v10 = v8;
  v27 = v10;
  dispatch_barrier_async(accessQueue, block);
  objc_initWeak(&location, self);
  objc_initWeak(&from, v10);
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __76__ICDelegateAccountStoreServiceListener_listener_shouldAcceptNewConnection___block_invoke_2;
  v21 = &unk_1E7BF6D98;
  objc_copyWeak(&v22, &location);
  objc_copyWeak(&v23, &from);
  v11 = MEMORY[0x1B8C781E0](&v18);
  [v10 setInvalidationHandler:{v11, v18, v19, v20, v21}];
  [v10 setInterruptionHandler:v11];
  v12 = ICDelegateAccountStoreServiceGetInterface();
  [v10 setExportedInterface:v12];

  [v10 setExportedObject:self];
  v13 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2CAD628];
  [v10 setRemoteObjectInterface:v13];

  [v10 resume];
  objc_destroyWeak(&v23);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  v14 = 1;
LABEL_8:

  return v14;
}

uint64_t __76__ICDelegateAccountStoreServiceListener_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    v2 = *(*(a1 + 32) + 32);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

void __76__ICDelegateAccountStoreServiceListener_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = v3;
  if (WeakRetained && v3)
  {
    v5 = WeakRetained[1];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __76__ICDelegateAccountStoreServiceListener_listener_shouldAcceptNewConnection___block_invoke_3;
    v6[3] = &unk_1E7BFA078;
    v7 = WeakRetained;
    v8 = v4;
    dispatch_barrier_async(v5, v6);
  }
}

- (void)setToken:(id)a3 forUserIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(ICDelegateAccountStoreServiceListener *)self _identityStore];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __84__ICDelegateAccountStoreServiceListener_setToken_forUserIdentity_completionHandler___block_invoke;
  v13[3] = &unk_1E7BF4F20;
  v14 = v8;
  v12 = v8;
  [v11 updatePropertiesForUserIdentity:v10 usingBlock:v13 completionHandler:v9];
}

- (void)setIdentityProperties:(id)a3 forUserIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(ICDelegateAccountStoreServiceListener *)self _identityStore];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __97__ICDelegateAccountStoreServiceListener_setIdentityProperties_forUserIdentity_completionHandler___block_invoke;
  v13[3] = &unk_1E7BF4EF8;
  v14 = v8;
  v12 = v8;
  [v11 insertPropertiesForUserIdentity:v10 usingBlock:v13 completionHandler:v9];
}

void __97__ICDelegateAccountStoreServiceListener_setIdentityProperties_forUserIdentity_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 replaceValuesWithValuesFromProperties:v2];
  [v3 setDelegated:1];
}

- (void)removeTokensExpiringBeforeDate:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICDelegateAccountStoreServiceListener *)self _identityStore];
  [v8 removeDelegateTokensExpiringBeforeDate:v7 completionHandler:v6];
}

- (void)removeTokenForUserIdentity:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICDelegateAccountStoreServiceListener *)self _identityStore];
  [v8 removeDelegateTokenForUserIdentity:v7 completionHandler:v6];
}

- (void)removeIdentityPropertiesForUserIdentity:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICDelegateAccountStoreServiceListener *)self _identityStore];
  [v8 removePropertiesForUserIdentity:v7 completionHandler:v6];
}

- (void)removeDelegationUUIDs:(id)a3 forUserIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(ICDelegateAccountStoreServiceListener *)self _identityStore];
  [v11 removeDelegationUUIDs:v10 forUserIdentity:v9 completionHandler:v8];
}

- (void)removeAllTokensWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(ICDelegateAccountStoreServiceListener *)self _identityStore];
  [v5 removeAllDelegateTokensWithCompletionHandler:v4];
}

- (void)recreateWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(ICDelegateAccountStoreServiceListener *)self _identityStore];
  [v5 _resetDelegateAccountStoreWithCompletionHandler:v4];
}

- (void)openWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(ICDelegateAccountStoreServiceListener *)self _identityStore];
  [v5 _prepareDelegateAccountStoreWithCompletionHandler:v4];
}

- (void)addDelegationUUIDs:(id)a3 forUserIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(ICDelegateAccountStoreServiceListener *)self _identityStore];
  [v11 addDelegationUUIDs:v10 forUserIdentity:v9 completionHandler:v8];
}

- (id)_initWithXPCListener:(id)a3 testingIdentityStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = ICDelegateAccountStoreServiceListener;
  v9 = [(ICDelegateAccountStoreServiceListener *)&v17 init];
  if (v9)
  {
    v10 = dispatch_queue_create("com.apple.iTunesCloud.ICDelegateAccountStoreServiceListener.accessQueue", MEMORY[0x1E69E96A8]);
    accessQueue = v9->_accessQueue;
    v9->_accessQueue = v10;

    v12 = dispatch_queue_create("com.apple.iTunesCloud.ICDelegateAccountStoreServiceListener.callbackQueue", 0);
    callbackQueue = v9->_callbackQueue;
    v9->_callbackQueue = v12;

    objc_storeStrong(&v9->_listener, a3);
    [(NSXPCListener *)v9->_listener setDelegate:v9];
    if (v8)
    {
      v9->_ignoresEntitlements = 1;
      objc_storeStrong(&v9->_testingIdentityStore, a4);
    }

    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    v15 = [(ICDelegateAccountStoreServiceListener *)v9 _identityStore];
    [v14 addObserver:v9 selector:sel__userIdentityStoreDelegateAccountStoreDidChangeNotification_ name:@"ICUserIdentityStoreDelegateAccountStoreDidChangeNotification" object:v15];
  }

  return v9;
}

+ (id)testingListenerWithIdentityStore:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [MEMORY[0x1E696B0D8] anonymousListener];
  v7 = [v5 _initWithXPCListener:v6 testingIdentityStore:v4];

  return v7;
}

+ (id)machServiceListener
{
  v3 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:@"com.apple.itunescloud.delegate-account-store"];
  v4 = [[a1 alloc] _initWithXPCListener:v3 testingIdentityStore:0];

  return v4;
}

@end