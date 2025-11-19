@interface QPInProcessECRClient
+ (id)sharedClient;
- (BOOL)coolDownECRClientSyncWithError:(id *)a3;
- (BOOL)warmUpECRClientSyncWithError:(id *)a3;
- (QPInProcessECRClient)ecrClientWithError:(id *)a3;
- (QPInProcessECRClient)init;
- (id)resolveEntitiesWithRequest:(id)a3 error:(id *)a4;
@end

@implementation QPInProcessECRClient

+ (id)sharedClient
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__QPInProcessECRClient_sharedClient__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedClient_onceToken != -1)
  {
    dispatch_once(&sharedClient_onceToken, block);
  }

  v2 = sharedClient_client;

  return v2;
}

void __36__QPInProcessECRClient_sharedClient__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedClient_client;
  sharedClient_client = v1;
}

- (QPInProcessECRClient)init
{
  v6.receiver = self;
  v6.super_class = QPInProcessECRClient;
  v2 = [(QPInProcessECRClient *)&v6 init];
  if (v2)
  {
    if (ecrClientLogger_token != -1)
    {
      [QPECRClient warmUpSync];
    }

    v3 = ecrClientLogger_log;
    if (os_log_type_enabled(ecrClientLogger_log, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1C6584000, v3, OS_LOG_TYPE_DEFAULT, "Initializing QPInProcessECRClient", v5, 2u);
    }
  }

  return v2;
}

- (id)resolveEntitiesWithRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(QPInProcessECRClient *)self ecrClientWithError:a4];
  if (v7)
  {
    v8 = dispatch_semaphore_create(0);
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__1;
    v26 = __Block_byref_object_dispose__1;
    v27 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__1;
    v20 = __Block_byref_object_dispose__1;
    v21 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57__QPInProcessECRClient_resolveEntitiesWithRequest_error___block_invoke;
    v12[3] = &unk_1E8266808;
    v14 = &v22;
    v15 = &v16;
    v9 = v8;
    v13 = v9;
    [v7 resolveEntitiesForRequest:v6 completionHandler:v12];
    dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
    if (a4)
    {
      *a4 = v17[5];
    }

    v10 = v23[5];

    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __57__QPInProcessECRClient_resolveEntitiesWithRequest_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)warmUpECRClientSyncWithError:(id *)a3
{
  v4 = [(QPInProcessECRClient *)self ecrClientWithError:?];
  if (v4)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__1;
    v16 = __Block_byref_object_dispose__1;
    v17 = 0;
    v5 = dispatch_semaphore_create(0);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __53__QPInProcessECRClient_warmUpECRClientSyncWithError___block_invoke;
    v9[3] = &unk_1E8266830;
    v11 = &v12;
    v6 = v5;
    v10 = v6;
    [v4 warmupForMode:3 completionHandler:v9];
    dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    if (a3)
    {
      *a3 = v13[5];
    }

    v7 = v13[5] == 0;

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __53__QPInProcessECRClient_warmUpECRClientSyncWithError___block_invoke(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)coolDownECRClientSyncWithError:(id *)a3
{
  os_unfair_lock_lock(&self->_clientLock);
  client = self->_client;
  self->_client = 0;
  v5 = client;

  os_unfair_lock_unlock(&self->_clientLock);
  v8 = 0;
  [(GDEntityResolutionInProcessTextClient *)v5 cooldownWithError:&v8];
  v6 = v8;

  return v6 == 0;
}

- (QPInProcessECRClient)ecrClientWithError:(id *)a3
{
  os_unfair_lock_lock(&self->_clientLock);
  v5 = self->_client;
  if (!v5)
  {
    v5 = [objc_alloc(MEMORY[0x1E69A9E80]) initWithMode:3 warmup:0 error:a3];
    client = self->_client;
    self->_client = v5;
  }

  os_unfair_lock_unlock(&self->_clientLock);

  return v5;
}

@end