@interface PLNonBindingAssetsdClient
- (PLAssetsdDemoClient)demoClient;
- (PLAssetsdLibraryManagementClient)libraryManagementClient;
- (PLAssetsdNonBindingDebugClient)nonBindingDebugClient;
- (PLAssetsdPrivacySupportClient)privacySupportClient;
- (PLAssetsdSystemLibraryURLReadOnlyClient)systemLibraryURLReadOnlyClient;
- (PLNonBindingAssetsdClient)init;
- (void)_updateLibraryStateConnectionInterrupted:(id)a3;
@end

@implementation PLNonBindingAssetsdClient

- (void)_updateLibraryStateConnectionInterrupted:(id)a3
{
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__PLNonBindingAssetsdClient__updateLibraryStateConnectionInterrupted___block_invoke;
  block[3] = &unk_1E79329F0;
  block[4] = self;
  dispatch_async(isolationQueue, block);
}

void __70__PLNonBindingAssetsdClient__updateLibraryStateConnectionInterrupted___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 48);
  *(v6 + 48) = 0;

  v8 = *(a1 + 32);
  v9 = *(v8 + 56);
  *(v8 + 56) = 0;
}

- (PLAssetsdNonBindingDebugClient)nonBindingDebugClient
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6564;
  v10 = __Block_byref_object_dispose__6565;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__PLNonBindingAssetsdClient_nonBindingDebugClient__block_invoke;
  v5[3] = &unk_1E7932A58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __50__PLNonBindingAssetsdClient_nonBindingDebugClient__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  if (!v2)
  {
    v3 = [(PLAssetsdBaseClient *)[PLAssetsdNonBindingDebugClient alloc] initWithQueue:*(*(a1 + 32) + 24) proxyCreating:*(*(a1 + 32) + 16) proxyGetter:sel_getNonBindingDebugServiceWithReply_ clientState:*(*(a1 + 32) + 8)];
    v4 = *(a1 + 32);
    v5 = *(v4 + 64);
    *(v4 + 64) = v3;

    v2 = *(*(a1 + 32) + 64);
  }

  v6 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v6, v2);
}

- (PLAssetsdPrivacySupportClient)privacySupportClient
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6564;
  v10 = __Block_byref_object_dispose__6565;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__PLNonBindingAssetsdClient_privacySupportClient__block_invoke;
  v5[3] = &unk_1E7932A58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __49__PLNonBindingAssetsdClient_privacySupportClient__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  if (!v2)
  {
    v3 = [(PLAssetsdBaseClient *)[PLAssetsdPrivacySupportClient alloc] initWithQueue:*(*(a1 + 32) + 24) proxyCreating:*(*(a1 + 32) + 16) proxyGetter:sel_getPrivacySupportServiceWithReply_ clientState:*(*(a1 + 32) + 8)];
    v4 = *(a1 + 32);
    v5 = *(v4 + 56);
    *(v4 + 56) = v3;

    v2 = *(*(a1 + 32) + 56);
  }

  v6 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v6, v2);
}

- (PLAssetsdDemoClient)demoClient
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6564;
  v10 = __Block_byref_object_dispose__6565;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__PLNonBindingAssetsdClient_demoClient__block_invoke;
  v5[3] = &unk_1E7932A58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __39__PLNonBindingAssetsdClient_demoClient__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (!v2)
  {
    v3 = [(PLAssetsdBaseClient *)[PLAssetsdDemoClient alloc] initWithQueue:*(*(a1 + 32) + 24) proxyCreating:*(*(a1 + 32) + 16) proxyGetter:sel_getDemoServiceWithReply_ clientState:*(*(a1 + 32) + 8)];
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = v3;

    v2 = *(*(a1 + 32) + 48);
  }

  v6 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v6, v2);
}

- (PLAssetsdLibraryManagementClient)libraryManagementClient
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6564;
  v10 = __Block_byref_object_dispose__6565;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__PLNonBindingAssetsdClient_libraryManagementClient__block_invoke;
  v5[3] = &unk_1E7932A58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __52__PLNonBindingAssetsdClient_libraryManagementClient__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  if (!v2)
  {
    v3 = [(PLAssetsdBaseClient *)[PLAssetsdLibraryManagementClient alloc] initWithQueue:*(*(a1 + 32) + 24) proxyCreating:*(*(a1 + 32) + 16) proxyGetter:sel_getLibraryManagementServiceWithReply_ clientState:*(*(a1 + 32) + 8)];
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = *(*(a1 + 32) + 40);
  }

  v6 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v6, v2);
}

- (PLAssetsdSystemLibraryURLReadOnlyClient)systemLibraryURLReadOnlyClient
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6564;
  v10 = __Block_byref_object_dispose__6565;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__PLNonBindingAssetsdClient_systemLibraryURLReadOnlyClient__block_invoke;
  v5[3] = &unk_1E7932A58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __59__PLNonBindingAssetsdClient_systemLibraryURLReadOnlyClient__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (!v2)
  {
    v3 = [(PLAssetsdBaseClient *)[PLAssetsdSystemLibraryURLReadOnlyClient alloc] initWithQueue:*(*(a1 + 32) + 24) proxyCreating:*(*(a1 + 32) + 16) proxyGetter:sel_getSystemLibraryURLReadOnlyServiceWithReply_ clientState:*(*(a1 + 32) + 8)];
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    v2 = *(*(a1 + 32) + 32);
  }

  v6 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v6, v2);
}

- (PLNonBindingAssetsdClient)init
{
  v12.receiver = self;
  v12.super_class = PLNonBindingAssetsdClient;
  v2 = [(PLNonBindingAssetsdClient *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(PLAssetsdClientState);
    clientState = v2->_clientState;
    v2->_clientState = v3;

    v5 = objc_alloc_init(PLAssetsdClientXPCConnection);
    connection = v2->_connection;
    v2->_connection = v5;

    v7 = dispatch_queue_create("PLNonBindingAssetsdClient isolation queue", 0);
    isolationQueue = v2->_isolationQueue;
    v2->_isolationQueue = v7;

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v2 selector:sel__updateLibraryStateConnectionInterrupted_ name:@"PLAssetsdClientXPCConnectionInterruptedInternalNotificationName" object:v2->_connection];

    v10 = v2;
  }

  return v2;
}

@end