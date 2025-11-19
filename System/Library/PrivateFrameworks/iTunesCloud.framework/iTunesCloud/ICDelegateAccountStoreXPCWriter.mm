@interface ICDelegateAccountStoreXPCWriter
- (ICDelegateAccountStoreXPCWriter)initWithAccountStoreOptions:(id)a3;
- (id)_onceWithCompletionHandler:(id)a3;
- (id)externalChangeHandler;
- (void)_getXPCConnectionWithCompletion:(id)a3;
- (void)addDelegationUUIDs:(id)a3 forUserIdentity:(id)a4 completionHandler:(id)a5;
- (void)dealloc;
- (void)delegateAccountStoreDidChange;
- (void)invalidate;
- (void)openWithCompletionHandler:(id)a3;
- (void)recreateWithCompletionHandler:(id)a3;
- (void)removeAllTokensWithCompletionHandler:(id)a3;
- (void)removeDelegationUUIDs:(id)a3 forUserIdentity:(id)a4 completionHandler:(id)a5;
- (void)removeIdentityPropertiesForUserIdentity:(id)a3 completionHandler:(id)a4;
- (void)removeTokenForUserIdentity:(id)a3 completionHandler:(id)a4;
- (void)removeTokensExpiringBeforeDate:(id)a3 completionHandler:(id)a4;
- (void)setExternalChangeHandler:(id)a3;
- (void)setIdentityProperties:(id)a3 forUserIdentity:(id)a4 completionHandler:(id)a5;
- (void)setToken:(id)a3 forUserIdentity:(id)a4 completionHandler:(id)a5;
@end

@implementation ICDelegateAccountStoreXPCWriter

- (void)_getXPCConnectionWithCompletion:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__ICDelegateAccountStoreXPCWriter__getXPCConnectionWithCompletion___block_invoke;
  v7[3] = &unk_1E7BF9EC8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(accessQueue, v7);
}

void __67__ICDelegateAccountStoreXPCWriter__getXPCConnectionWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = *(v3 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__ICDelegateAccountStoreXPCWriter__getXPCConnectionWithCompletion___block_invoke_2;
    block[3] = &unk_1E7BF9EC8;
    v11 = *(a1 + 40);
    v10 = v2;
    dispatch_async(v4, block);

    v5 = v11;
  }

  else
  {
    v6 = *(v3 + 8);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __67__ICDelegateAccountStoreXPCWriter__getXPCConnectionWithCompletion___block_invoke_3;
    v7[3] = &unk_1E7BF9EC8;
    v7[4] = v3;
    v8 = *(a1 + 40);
    dispatch_barrier_async(v6, v7);
    v5 = v8;
  }
}

void __67__ICDelegateAccountStoreXPCWriter__getXPCConnectionWithCompletion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  if (!v3)
  {
    if (*(v2 + 48))
    {
      v3 = 0;
      goto LABEL_10;
    }

    v4 = [*(v2 + 16) XPCEndpoint];
    v5 = [*(*(a1 + 32) + 16) XPCServiceName];
    v6 = v5;
    if (v4)
    {
      v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v4];
    }

    else
    {
      if (![v5 length])
      {
LABEL_9:
        v10 = *(*(a1 + 32) + 32);
        v11 = ICDelegateAccountStoreServiceGetInterface();
        [v10 setRemoteObjectInterface:v11];

        [*(*(a1 + 32) + 32) setExportedObject:?];
        v12 = *(*(a1 + 32) + 32);
        v13 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2CAD628];
        [v12 setExportedInterface:v13];

        objc_initWeak(&location, *(a1 + 32));
        objc_initWeak(&from, *(*(a1 + 32) + 32));
        v14 = *(*(a1 + 32) + 32);
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __67__ICDelegateAccountStoreXPCWriter__getXPCConnectionWithCompletion___block_invoke_4;
        v26[3] = &unk_1E7BF6D98;
        objc_copyWeak(&v27, &location);
        objc_copyWeak(&v28, &from);
        [v14 setInvalidationHandler:v26];
        v15 = *(*(a1 + 32) + 32);
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __67__ICDelegateAccountStoreXPCWriter__getXPCConnectionWithCompletion___block_invoke_6;
        v23[3] = &unk_1E7BF6D98;
        objc_copyWeak(&v24, &location);
        objc_copyWeak(&v25, &from);
        [v15 setInterruptionHandler:v23];
        [*(*(a1 + 32) + 32) resume];
        objc_destroyWeak(&v25);
        objc_destroyWeak(&v24);
        objc_destroyWeak(&v28);
        objc_destroyWeak(&v27);
        objc_destroyWeak(&from);
        objc_destroyWeak(&location);

        v3 = *(*(a1 + 32) + 32);
        goto LABEL_10;
      }

      v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:v6 options:0];
    }

    v8 = *(a1 + 32);
    v9 = *(v8 + 32);
    *(v8 + 32) = v7;

    goto LABEL_9;
  }

LABEL_10:
  v16 = v3;
  v17 = *(*(a1 + 32) + 24);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __67__ICDelegateAccountStoreXPCWriter__getXPCConnectionWithCompletion___block_invoke_8;
  v20[3] = &unk_1E7BF9EC8;
  v18 = *(a1 + 40);
  v21 = v16;
  v22 = v18;
  v19 = v16;
  dispatch_async(v17, v20);
}

void __67__ICDelegateAccountStoreXPCWriter__getXPCConnectionWithCompletion___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = v3;
  if (WeakRetained && v3)
  {
    v5 = WeakRetained[1];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __67__ICDelegateAccountStoreXPCWriter__getXPCConnectionWithCompletion___block_invoke_5;
    v6[3] = &unk_1E7BFA078;
    v7 = WeakRetained;
    v8 = v4;
    dispatch_barrier_async(v5, v6);
  }
}

void __67__ICDelegateAccountStoreXPCWriter__getXPCConnectionWithCompletion___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = v3;
  if (WeakRetained && v3)
  {
    v5 = WeakRetained[1];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __67__ICDelegateAccountStoreXPCWriter__getXPCConnectionWithCompletion___block_invoke_7;
    v6[3] = &unk_1E7BFA078;
    v7 = WeakRetained;
    v8 = v4;
    dispatch_barrier_async(v5, v6);
  }
}

void __67__ICDelegateAccountStoreXPCWriter__getXPCConnectionWithCompletion___block_invoke_7(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 32) == v2)
  {
    [v2 invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = 0;
  }
}

void __67__ICDelegateAccountStoreXPCWriter__getXPCConnectionWithCompletion___block_invoke_5(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 32) == v2)
  {
    [v2 invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = 0;

    *(*(a1 + 32) + 48) = 1;
  }
}

- (id)_onceWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [ICDispatchOnce alloc];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__ICDelegateAccountStoreXPCWriter__onceWithCompletionHandler___block_invoke;
  v9[3] = &unk_1E7BF8450;
  v10 = v4;
  v6 = v4;
  v7 = [(ICDispatchOnce *)v5 initWithBooleanHandler:v9];
  [(ICDispatchOnce *)v7 startWithTimeout:self->_callbackQueue queue:10.0];

  return v7;
}

uint64_t __62__ICDelegateAccountStoreXPCWriter__onceWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)recreateWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__ICDelegateAccountStoreXPCWriter_recreateWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E7BF6500;
  v7 = v4;
  v5 = v4;
  [(ICDelegateAccountStoreXPCWriter *)self _getXPCConnectionWithCompletion:v6];
}

void __65__ICDelegateAccountStoreXPCWriter_recreateWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 remoteObjectProxy];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __65__ICDelegateAccountStoreXPCWriter_recreateWithCompletionHandler___block_invoke_2;
    v7[3] = &unk_1E7BF8450;
    v8 = *(a1 + 32);
    [v5 recreateWithCompletionHandler:v7];

LABEL_5:
    goto LABEL_6;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
    (*(v6 + 16))(v6, 0, v5);
    goto LABEL_5;
  }

LABEL_6:
}

uint64_t __65__ICDelegateAccountStoreXPCWriter_recreateWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)openWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__ICDelegateAccountStoreXPCWriter_openWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E7BF6488;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(ICDelegateAccountStoreXPCWriter *)self _getXPCConnectionWithCompletion:v6];
}

void __61__ICDelegateAccountStoreXPCWriter_openWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(*(a1 + 32) + 16) XPCServiceName];
    v5 = [v4 length];

    v6 = [ICDispatchOnce alloc];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __61__ICDelegateAccountStoreXPCWriter_openWithCompletionHandler___block_invoke_2;
    v15[3] = &unk_1E7BF6908;
    v16 = *(a1 + 40);
    v7 = [(ICDispatchOnce *)v6 initWithObjectHandler:v15];
    v8 = v7;
    v9 = 10.0;
    if (!v5)
    {
      v9 = 2.0;
    }

    [(ICDispatchOnce *)v7 startWithTimeout:*(*(a1 + 32) + 24) queue:v9];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __61__ICDelegateAccountStoreXPCWriter_openWithCompletionHandler___block_invoke_3;
    v14[3] = &unk_1E7BF9308;
    v14[4] = v8;
    v10 = [v3 remoteObjectProxyWithErrorHandler:v14];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __61__ICDelegateAccountStoreXPCWriter_openWithCompletionHandler___block_invoke_4;
    v13[3] = &unk_1E7BF64D8;
    v13[4] = v8;
    [v10 openWithCompletionHandler:v13];
  }

  else
  {
    v11 = *(a1 + 40);
    if (v11)
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
      (*(v11 + 16))(v11, 0, 0, v12);
    }
  }
}

void __61__ICDelegateAccountStoreXPCWriter_openWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a3;
    v6 = a2;
    (*(v3 + 16))(v3, [v6 length] != 0, v6, v5);
  }
}

uint64_t __61__ICDelegateAccountStoreXPCWriter_openWithCompletionHandler___block_invoke_4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    return [v4 finishWithObjectResult:a3 error:0];
  }

  else
  {
    return [v4 failWithError:a4];
  }
}

- (void)invalidate
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__ICDelegateAccountStoreXPCWriter_invalidate__block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_barrier_async(accessQueue, block);
}

void __45__ICDelegateAccountStoreXPCWriter_invalidate__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;
}

- (void)setExternalChangeHandler:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__ICDelegateAccountStoreXPCWriter_setExternalChangeHandler___block_invoke;
  v7[3] = &unk_1E7BF9EC8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_async(accessQueue, v7);
}

uint64_t __60__ICDelegateAccountStoreXPCWriter_setExternalChangeHandler___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 40) = MEMORY[0x1B8C781E0](*(a1 + 40));

  return MEMORY[0x1EEE66BB8]();
}

- (id)externalChangeHandler
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__20514;
  v10 = __Block_byref_object_dispose__20515;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__ICDelegateAccountStoreXPCWriter_externalChangeHandler__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = MEMORY[0x1B8C781E0](v7[5]);
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __56__ICDelegateAccountStoreXPCWriter_externalChangeHandler__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = MEMORY[0x1B8C781E0](*(*(a1 + 32) + 40));

  return MEMORY[0x1EEE66BB8]();
}

- (void)delegateAccountStoreDidChange
{
  v3 = [(ICDelegateAccountStoreXPCWriter *)self externalChangeHandler];
  v4 = v3;
  if (v3)
  {
    callbackQueue = self->_callbackQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__ICDelegateAccountStoreXPCWriter_delegateAccountStoreDidChange__block_invoke;
    block[3] = &unk_1E7BF9D20;
    v7 = v3;
    dispatch_async(callbackQueue, block);
  }
}

- (void)setToken:(id)a3 forUserIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__ICDelegateAccountStoreXPCWriter_setToken_forUserIdentity_completionHandler___block_invoke;
  v14[3] = &unk_1E7BF6460;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v9;
  v12 = v8;
  v13 = v10;
  [(ICDelegateAccountStoreXPCWriter *)self _getXPCConnectionWithCompletion:v14];
}

void __78__ICDelegateAccountStoreXPCWriter_setToken_forUserIdentity_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) _onceWithCompletionHandler:*(a1 + 56)];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __78__ICDelegateAccountStoreXPCWriter_setToken_forUserIdentity_completionHandler___block_invoke_2;
    v11[3] = &unk_1E7BF9308;
    v11[4] = v4;
    v5 = [v3 remoteObjectProxyWithErrorHandler:v11];
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __78__ICDelegateAccountStoreXPCWriter_setToken_forUserIdentity_completionHandler___block_invoke_3;
    v10[3] = &unk_1E7BF7958;
    v10[4] = v4;
    [v5 setToken:v6 forUserIdentity:v7 completionHandler:v10];
  }

  else
  {
    v8 = *(a1 + 56);
    if (v8)
    {
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
      (*(v8 + 16))(v8, 0, v9);
    }
  }
}

- (void)setIdentityProperties:(id)a3 forUserIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __91__ICDelegateAccountStoreXPCWriter_setIdentityProperties_forUserIdentity_completionHandler___block_invoke;
  v14[3] = &unk_1E7BF6460;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v9;
  v12 = v8;
  v13 = v10;
  [(ICDelegateAccountStoreXPCWriter *)self _getXPCConnectionWithCompletion:v14];
}

void __91__ICDelegateAccountStoreXPCWriter_setIdentityProperties_forUserIdentity_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) _onceWithCompletionHandler:*(a1 + 56)];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __91__ICDelegateAccountStoreXPCWriter_setIdentityProperties_forUserIdentity_completionHandler___block_invoke_2;
    v11[3] = &unk_1E7BF9308;
    v11[4] = v4;
    v5 = [v3 remoteObjectProxyWithErrorHandler:v11];
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __91__ICDelegateAccountStoreXPCWriter_setIdentityProperties_forUserIdentity_completionHandler___block_invoke_3;
    v10[3] = &unk_1E7BF7958;
    v10[4] = v4;
    [v5 setIdentityProperties:v6 forUserIdentity:v7 completionHandler:v10];
  }

  else
  {
    v8 = *(a1 + 56);
    if (v8)
    {
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
      (*(v8 + 16))(v8, 0, v9);
    }
  }
}

- (void)removeTokensExpiringBeforeDate:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__ICDelegateAccountStoreXPCWriter_removeTokensExpiringBeforeDate_completionHandler___block_invoke;
  v10[3] = &unk_1E7BF64B0;
  v11 = v6;
  v12 = v7;
  v10[4] = self;
  v8 = v6;
  v9 = v7;
  [(ICDelegateAccountStoreXPCWriter *)self _getXPCConnectionWithCompletion:v10];
}

void __84__ICDelegateAccountStoreXPCWriter_removeTokensExpiringBeforeDate_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) _onceWithCompletionHandler:*(a1 + 48)];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __84__ICDelegateAccountStoreXPCWriter_removeTokensExpiringBeforeDate_completionHandler___block_invoke_2;
    v10[3] = &unk_1E7BF9308;
    v10[4] = v4;
    v5 = [v3 remoteObjectProxyWithErrorHandler:v10];
    v6 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __84__ICDelegateAccountStoreXPCWriter_removeTokensExpiringBeforeDate_completionHandler___block_invoke_3;
    v9[3] = &unk_1E7BF7958;
    v9[4] = v4;
    [v5 removeTokensExpiringBeforeDate:v6 completionHandler:v9];
  }

  else
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
      (*(v7 + 16))(v7, 0, v8);
    }
  }
}

- (void)removeTokenForUserIdentity:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__ICDelegateAccountStoreXPCWriter_removeTokenForUserIdentity_completionHandler___block_invoke;
  v10[3] = &unk_1E7BF64B0;
  v11 = v6;
  v12 = v7;
  v10[4] = self;
  v8 = v6;
  v9 = v7;
  [(ICDelegateAccountStoreXPCWriter *)self _getXPCConnectionWithCompletion:v10];
}

void __80__ICDelegateAccountStoreXPCWriter_removeTokenForUserIdentity_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) _onceWithCompletionHandler:*(a1 + 48)];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __80__ICDelegateAccountStoreXPCWriter_removeTokenForUserIdentity_completionHandler___block_invoke_2;
    v10[3] = &unk_1E7BF9308;
    v10[4] = v4;
    v5 = [v3 remoteObjectProxyWithErrorHandler:v10];
    v6 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __80__ICDelegateAccountStoreXPCWriter_removeTokenForUserIdentity_completionHandler___block_invoke_3;
    v9[3] = &unk_1E7BF7958;
    v9[4] = v4;
    [v5 removeTokenForUserIdentity:v6 completionHandler:v9];
  }

  else
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
      (*(v7 + 16))(v7, 0, v8);
    }
  }
}

- (void)removeIdentityPropertiesForUserIdentity:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __93__ICDelegateAccountStoreXPCWriter_removeIdentityPropertiesForUserIdentity_completionHandler___block_invoke;
  v10[3] = &unk_1E7BF64B0;
  v11 = v6;
  v12 = v7;
  v10[4] = self;
  v8 = v6;
  v9 = v7;
  [(ICDelegateAccountStoreXPCWriter *)self _getXPCConnectionWithCompletion:v10];
}

void __93__ICDelegateAccountStoreXPCWriter_removeIdentityPropertiesForUserIdentity_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) _onceWithCompletionHandler:*(a1 + 48)];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __93__ICDelegateAccountStoreXPCWriter_removeIdentityPropertiesForUserIdentity_completionHandler___block_invoke_2;
    v10[3] = &unk_1E7BF9308;
    v10[4] = v4;
    v5 = [v3 remoteObjectProxyWithErrorHandler:v10];
    v6 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __93__ICDelegateAccountStoreXPCWriter_removeIdentityPropertiesForUserIdentity_completionHandler___block_invoke_3;
    v9[3] = &unk_1E7BF7958;
    v9[4] = v4;
    [v5 removeIdentityPropertiesForUserIdentity:v6 completionHandler:v9];
  }

  else
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
      (*(v7 + 16))(v7, 0, v8);
    }
  }
}

- (void)removeDelegationUUIDs:(id)a3 forUserIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __91__ICDelegateAccountStoreXPCWriter_removeDelegationUUIDs_forUserIdentity_completionHandler___block_invoke;
  v14[3] = &unk_1E7BF6460;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v9;
  v12 = v8;
  v13 = v10;
  [(ICDelegateAccountStoreXPCWriter *)self _getXPCConnectionWithCompletion:v14];
}

void __91__ICDelegateAccountStoreXPCWriter_removeDelegationUUIDs_forUserIdentity_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) _onceWithCompletionHandler:*(a1 + 56)];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __91__ICDelegateAccountStoreXPCWriter_removeDelegationUUIDs_forUserIdentity_completionHandler___block_invoke_2;
    v11[3] = &unk_1E7BF9308;
    v11[4] = v4;
    v5 = [v3 remoteObjectProxyWithErrorHandler:v11];
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __91__ICDelegateAccountStoreXPCWriter_removeDelegationUUIDs_forUserIdentity_completionHandler___block_invoke_3;
    v10[3] = &unk_1E7BF7958;
    v10[4] = v4;
    [v5 removeDelegationUUIDs:v6 forUserIdentity:v7 completionHandler:v10];
  }

  else
  {
    v8 = *(a1 + 56);
    if (v8)
    {
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
      (*(v8 + 16))(v8, 0, v9);
    }
  }
}

- (void)removeAllTokensWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__ICDelegateAccountStoreXPCWriter_removeAllTokensWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E7BF6488;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(ICDelegateAccountStoreXPCWriter *)self _getXPCConnectionWithCompletion:v6];
}

void __72__ICDelegateAccountStoreXPCWriter_removeAllTokensWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) _onceWithCompletionHandler:*(a1 + 40)];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __72__ICDelegateAccountStoreXPCWriter_removeAllTokensWithCompletionHandler___block_invoke_2;
    v9[3] = &unk_1E7BF9308;
    v9[4] = v4;
    v5 = [v3 remoteObjectProxyWithErrorHandler:v9];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __72__ICDelegateAccountStoreXPCWriter_removeAllTokensWithCompletionHandler___block_invoke_3;
    v8[3] = &unk_1E7BF7958;
    v8[4] = v4;
    [v5 removeAllTokensWithCompletionHandler:v8];
  }

  else
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
      (*(v6 + 16))(v6, 0, v7);
    }
  }
}

- (void)addDelegationUUIDs:(id)a3 forUserIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __88__ICDelegateAccountStoreXPCWriter_addDelegationUUIDs_forUserIdentity_completionHandler___block_invoke;
  v14[3] = &unk_1E7BF6460;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v9;
  v12 = v8;
  v13 = v10;
  [(ICDelegateAccountStoreXPCWriter *)self _getXPCConnectionWithCompletion:v14];
}

void __88__ICDelegateAccountStoreXPCWriter_addDelegationUUIDs_forUserIdentity_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) _onceWithCompletionHandler:*(a1 + 56)];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __88__ICDelegateAccountStoreXPCWriter_addDelegationUUIDs_forUserIdentity_completionHandler___block_invoke_2;
    v11[3] = &unk_1E7BF9308;
    v11[4] = v4;
    v5 = [v3 remoteObjectProxyWithErrorHandler:v11];
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __88__ICDelegateAccountStoreXPCWriter_addDelegationUUIDs_forUserIdentity_completionHandler___block_invoke_3;
    v10[3] = &unk_1E7BF7958;
    v10[4] = v4;
    [v5 addDelegationUUIDs:v6 forUserIdentity:v7 completionHandler:v10];
  }

  else
  {
    v8 = *(a1 + 56);
    if (v8)
    {
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
      (*(v8 + 16))(v8, 0, v9);
    }
  }
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = ICDelegateAccountStoreXPCWriter;
  [(ICDelegateAccountStoreXPCWriter *)&v3 dealloc];
}

- (ICDelegateAccountStoreXPCWriter)initWithAccountStoreOptions:(id)a3
{
  v4 = a3;
  v5 = [v4 XPCEndpoint];
  if (v5)
  {
  }

  else
  {
    v6 = [v4 XPCServiceName];

    if (!v6)
    {
      goto LABEL_7;
    }
  }

  v15.receiver = self;
  v15.super_class = ICDelegateAccountStoreXPCWriter;
  v7 = [(ICDelegateAccountStoreXPCWriter *)&v15 init];
  if (v7)
  {
    v8 = [v4 copy];
    accountStoreOptions = v7->_accountStoreOptions;
    v7->_accountStoreOptions = v8;

    v10 = dispatch_queue_create("com.apple.iTunesCloud.ICDelegateAccountStoreXPCWriter.accessQueue", MEMORY[0x1E69E96A8]);
    accessQueue = v7->_accessQueue;
    v7->_accessQueue = v10;

    v12 = dispatch_queue_create("com.apple.iTunesCloud.ICDelegateAccountStoreXPCWriter.callbackQueue", 0);
    callbackQueue = v7->_callbackQueue;
    v7->_callbackQueue = v12;
  }

  self = v7;
  v6 = self;
LABEL_7:

  return v6;
}

@end