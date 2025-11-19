@interface UISApplicationSupportClient
- (UISApplicationSupportClient)init;
- (id)_applicationSupportServiceEndpoint;
- (id)_remoteTarget;
- (id)applicationInitializationContextWithParameters:(id)a3;
- (void)dealloc;
- (void)destroyScenesWithPersistentIdentifiers:(id)a3 animationType:(unint64_t)a4 destroySessions:(BOOL)a5 completion:(id)a6;
- (void)invalidate;
- (void)requestPasscodeUnlockUIWithCompletion:(id)a3;
@end

@implementation UISApplicationSupportClient

void __44__UISApplicationSupportClient__remoteTarget__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (v2 || ([MEMORY[0x1E698F470] interfaceWithIdentifier:0x1F0A7D3B8], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E698E710], "protocolForProtocol:", &unk_1F0A8B3E8), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "setServer:", v4), v4, v5 = MEMORY[0x1E698F490], objc_msgSend(*(a1 + 32), "_applicationSupportServiceEndpoint"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "connectionWithEndpoint:", v6), v7 = objc_claimAutoreleasedReturnValue(), v8 = *(a1 + 32), v9 = *(v8 + 24), *(v8 + 24) = v7, v9, v6, v10 = *(a1 + 32), v11 = *(v10 + 24), v20[0] = MEMORY[0x1E69E9820], v20[1] = 3221225472, v20[2] = __44__UISApplicationSupportClient__remoteTarget__block_invoke_2, v20[3] = &unk_1E7458E98, v21 = v3, v22 = v10, v12 = v3, objc_msgSend(v11, "configureConnection:", v20), objc_msgSend(*(*(a1 + 32) + 24), "activate"), v21, v12, (v2 = *(*(a1 + 32) + 24)) != 0))
  {
    v13 = [v2 remoteTarget];
    v14 = *(*(a1 + 40) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      [*(*(a1 + 32) + 24) activate];
      v16 = [*(*(a1 + 32) + 24) remoteTarget];
      v17 = *(*(a1 + 40) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;

      if (!*(*(*(a1 + 40) + 8) + 40))
      {
        v19 = [MEMORY[0x1E696AAA8] currentHandler];
        [v19 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"UISApplicationSupportClient.m" lineNumber:160 description:{@"unable to create a remote target for %@", 0x1F0A7D3B8}];
      }
    }
  }
}

- (UISApplicationSupportClient)init
{
  v7.receiver = self;
  v7.super_class = UISApplicationSupportClient;
  v2 = [(UISApplicationSupportClient *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.uikit.applicationSupportClient", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

- (id)_remoteTarget
{
  BSDispatchQueueAssertNot();
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__UISApplicationSupportClient__remoteTarget__block_invoke;
  block[3] = &unk_1E7458EC0;
  block[4] = self;
  block[5] = &v8;
  block[6] = a2;
  dispatch_sync(queue, block);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)_applicationSupportServiceEndpoint
{
  v2 = getenv("APPLICATION_SUPPORT_SERVICE_MACH_NAME");
  if (v2)
  {
    [MEMORY[0x1E696AEC0] stringWithUTF8String:v2];
  }

  else
  {
    [MEMORY[0x1E698F498] defaultShellMachName];
  }
  v3 = ;
  v4 = [MEMORY[0x1E698F498] endpointForMachName:v3 service:0x1F0A7D3B8 instance:0];

  return v4;
}

void __44__UISApplicationSupportClient__remoteTarget__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E698F500];
  v4 = a2;
  v5 = [v3 userInteractive];
  [v4 setServiceQuality:v5];

  [v4 setInterface:*(a1 + 32)];
  [v4 setInterfaceTarget:*(a1 + 40)];
  [v4 setTargetQueue:*(*(a1 + 40) + 8)];
  [v4 setInterruptionHandler:&__block_literal_global_7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__UISApplicationSupportClient__remoteTarget__block_invoke_4;
  v6[3] = &unk_1E7458E70;
  v6[4] = *(a1 + 40);
  [v4 setInvalidationHandler:v6];
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__UISApplicationSupportClient_invalidate__block_invoke;
  block[3] = &unk_1E7458DB0;
  block[4] = self;
  dispatch_async(queue, block);
}

void __41__UISApplicationSupportClient_invalidate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 16) & 1) == 0)
  {
    *(v2 + 16) = 1;
    [*(*(a1 + 32) + 24) invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = 0;
  }
}

- (void)dealloc
{
  if (!self->_queue_invalidated)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"UISApplicationSupportClient.m" lineNumber:43 description:@"UISApplicationSupportClient must be invalidated before deallocation."];
  }

  v5.receiver = self;
  v5.super_class = UISApplicationSupportClient;
  [(UISApplicationSupportClient *)&v5 dealloc];
}

- (void)requestPasscodeUnlockUIWithCompletion:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"UISApplicationSupportClient.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  v6 = [(UISApplicationSupportClient *)self _remoteTarget];
  if (v6)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __69__UISApplicationSupportClient_requestPasscodeUnlockUIWithCompletion___block_invoke;
    v14[3] = &unk_1E7459270;
    v7 = &v15;
    v15 = v5;
    v8 = v5;
    [v6 requestPasscodeUnlockUIWithCompletion:v14];
  }

  else
  {
    v9 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__UISApplicationSupportClient_requestPasscodeUnlockUIWithCompletion___block_invoke_3;
    block[3] = &unk_1E7459298;
    v7 = &v13;
    v13 = v5;
    v10 = v5;
    dispatch_async(v9, block);
  }
}

void __69__UISApplicationSupportClient_requestPasscodeUnlockUIWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__UISApplicationSupportClient_requestPasscodeUnlockUIWithCompletion___block_invoke_2;
  block[3] = &unk_1E7459248;
  v8 = *(a1 + 32);
  v13 = v5;
  v14 = v8;
  v12 = v6;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

uint64_t __69__UISApplicationSupportClient_requestPasscodeUnlockUIWithCompletion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(a1 + 32))
  {
    v2 = 0;
  }

  else
  {
    v2 = [*(a1 + 40) BOOLValue];
  }

  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (id)applicationInitializationContextWithParameters:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  do
  {
    v5 = [(UISApplicationSupportClient *)self _remoteTarget];
    v6 = v5;
    if (v5)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __78__UISApplicationSupportClient_applicationInitializationContextWithParameters___block_invoke;
      v9[3] = &unk_1E74592C0;
      v9[4] = &v14;
      v9[5] = &v10;
      [v5 initializeClientWithParameters:v4 completion:v9];
    }

    else
    {
      *(v11 + 24) = 0;
    }
  }

  while ((v11[3] & 1) != 0);
  v7 = v15[5];
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);

  return v7;
}

void __78__UISApplicationSupportClient_applicationInitializationContextWithParameters___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v7 = v4;
  v6 = a3;
  LOBYTE(v4) = [v6 isBSServiceConnectionError];

  *(*(*(a1 + 40) + 8) + 24) = v4;
}

- (void)destroyScenesWithPersistentIdentifiers:(id)a3 animationType:(unint64_t)a4 destroySessions:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v33 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      v15 = 0;
      do
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v10);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v16 = [MEMORY[0x1E696AAA8] currentHandler];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v13);
  }

  v17 = [(UISApplicationSupportClient *)self _remoteTarget];
  if (v17)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    v19 = [MEMORY[0x1E696AD98] numberWithBool:v7];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __111__UISApplicationSupportClient_destroyScenesWithPersistentIdentifiers_animationType_destroySessions_completion___block_invoke;
    v26[3] = &unk_1E7459270;
    v20 = &v27;
    v27 = v11;
    v21 = v11;
    [v17 destroyScenesPersistentIdentifiers:v10 animationType:v18 destroySessions:v19 completion:v26];
  }

  else
  {
    v18 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __111__UISApplicationSupportClient_destroyScenesWithPersistentIdentifiers_animationType_destroySessions_completion___block_invoke_3;
    block[3] = &unk_1E7459298;
    v20 = &v25;
    v25 = v11;
    v22 = v11;
    dispatch_async(v18, block);
  }
}

void __111__UISApplicationSupportClient_destroyScenesWithPersistentIdentifiers_animationType_destroySessions_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __111__UISApplicationSupportClient_destroyScenesWithPersistentIdentifiers_animationType_destroySessions_completion___block_invoke_2;
  block[3] = &unk_1E7459248;
  v8 = *(a1 + 32);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __111__UISApplicationSupportClient_destroyScenesWithPersistentIdentifiers_animationType_destroySessions_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) BOOLValue];
  v4 = *(a1 + 40);
  v5 = *(v2 + 16);

  return v5(v2, v3, v4);
}

void __44__UISApplicationSupportClient__remoteTarget__block_invoke_4(uint64_t a1, void *a2)
{
  [a2 invalidate];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = 0;
}

@end