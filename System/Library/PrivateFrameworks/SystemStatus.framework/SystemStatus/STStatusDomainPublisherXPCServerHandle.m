@interface STStatusDomainPublisherXPCServerHandle
+ (id)sharedMachServiceServerHandle;
- (STStatusDomainPublisherXPCServerHandle)init;
- (STStatusDomainPublisherXPCServerHandle)initWithXPCConnectionProvider:(id)a3 serverLaunchObservable:(id)a4;
- (id)_internalQueue_dataForDomain:(int)a3 usingFallbackIfNecessary:;
- (id)_internalQueue_volatileDataForDomain:(int)a3 usingFallbackIfNecessary:;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)publishedDataForDomain:(unint64_t)a3;
- (id)publishedVolatileDataForDomain:(unint64_t)a3;
- (id)succinctDescription;
- (void)_internalQueue_mutateDataForDomain:(int)a3 discardingOnExit:(void *)a4 wrappingCompletion:(void *)a5 usingBlock:;
- (void)_internalQueue_publishData:(uint64_t)a3 forDomain:(void *)a4 withChangeContext:(int)a5 discardingOnExit:(void *)a6 completion:;
- (void)_internalQueue_publishDiff:(uint64_t)a3 forDomain:(void *)a4 withChangeContext:(int)a5 discardingOnExit:(void *)a6 completion:;
- (void)_internalQueue_publishDiffToServer:(unint64_t)a3 forDomain:(void *)a4 withChangeContext:(uint64_t)a5 replacingData:(uint64_t)a6 discardingOnExit:(void *)a7 reply:;
- (void)_internalQueue_resendDataIfNecessary;
- (void)_internalQueue_setupXPCConnectionIfNecessary;
- (void)dealloc;
- (void)didObserveServerLaunch:(id)a3;
- (void)handleUserInteraction:(id)a3 forDomain:(unint64_t)a4;
- (void)publishData:(id)a3 forPublisherClient:(id)a4 domain:(unint64_t)a5 withChangeContext:(id)a6 completion:(id)a7;
- (void)publishVolatileData:(id)a3 forPublisherClient:(id)a4 domain:(unint64_t)a5 withChangeContext:(id)a6 completion:(id)a7;
- (void)registerPublisherClient:(id)a3 forDomain:(unint64_t)a4 fallbackData:(id)a5;
- (void)removePublisherClient:(id)a3 forDomain:(unint64_t)a4;
- (void)updateDataForPublisherClient:(id)a3 domain:(unint64_t)a4 usingDiffProvider:(id)a5 completion:(id)a6;
- (void)updateVolatileDataForPublisherClient:(id)a3 domain:(unint64_t)a4 usingDiffProvider:(id)a5 completion:(id)a6;
@end

@implementation STStatusDomainPublisherXPCServerHandle

- (void)_internalQueue_setupXPCConnectionIfNecessary
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 40));
    if (!*(a1 + 56))
    {
      v2 = *(*(a1 + 72) + 16);
      v3 = *(a1 + 72);
      v4 = v2();

      v5 = STStatusDomainPublisherXPCServerInterface();
      [v4 setRemoteObjectInterface:v5];

      v6 = STStatusDomainPublisherXPCClientInterface();
      [v4 setExportedInterface:v6];

      [v4 setExportedObject:a1];
      objc_storeStrong((a1 + 56), v4);
      objc_initWeak(&location, a1);
      [v4 setInterruptionHandler:&__block_literal_global_57];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __86__STStatusDomainPublisherXPCServerHandle__internalQueue_setupXPCConnectionIfNecessary__block_invoke_58;
      v11[3] = &unk_1E85DDD78;
      objc_copyWeak(&v12, &location);
      [v4 setInvalidationHandler:v11];
      [v4 resume];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __86__STStatusDomainPublisherXPCServerHandle__internalQueue_setupXPCConnectionIfNecessary__block_invoke_59;
      v9[3] = &unk_1E85DE178;
      objc_copyWeak(&v10, &location);
      v7 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v9];
      v8 = *(a1 + 64);
      *(a1 + 64) = v7;

      objc_destroyWeak(&v10);
      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }
  }
}

+ (id)sharedMachServiceServerHandle
{
  if (qword_1ED7F5D68 != -1)
  {
    dispatch_once(&qword_1ED7F5D68, &__block_literal_global_18);
  }

  v3 = _MergedGlobals_16;

  return v3;
}

uint64_t __71__STStatusDomainPublisherXPCServerHandle_sharedMachServiceServerHandle__block_invoke()
{
  v0 = objc_alloc_init(STStatusDomainPublisherXPCServerHandle);
  v1 = _MergedGlobals_16;
  _MergedGlobals_16 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (STStatusDomainPublisherXPCServerHandle)init
{
  v3 = +[STServerLaunchMonitor sharedInstance];
  v4 = [(STStatusDomainPublisherXPCServerHandle *)self initWithXPCConnectionProvider:&__block_literal_global_10 serverLaunchObservable:v3];

  return v4;
}

id __46__STStatusDomainPublisherXPCServerHandle_init__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.systemstatus.publisher" options:0];

  return v0;
}

- (STStatusDomainPublisherXPCServerHandle)initWithXPCConnectionProvider:(id)a3 serverLaunchObservable:(id)a4
{
  v31[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v30.receiver = self;
  v30.super_class = STStatusDomainPublisherXPCServerHandle;
  v8 = [(STStatusDomainPublisherXPCServerHandle *)&v30 init];
  if (v8)
  {
    v9 = MEMORY[0x1E695DFB8];
    v31[0] = @"data";
    v31[1] = @"volatileData";
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
    v11 = [v9 orderedSetWithArray:v10];

    v12 = [[STStatusDomainDataChangeLog alloc] initWithRecordKeys:v11];
    dataChangeLog = v8->_dataChangeLog;
    v8->_dataChangeLog = v12;

    v14 = objc_alloc_init(MEMORY[0x1E698E6E0]);
    dataMutationCompletionsByDomain = v8->_dataMutationCompletionsByDomain;
    v8->_dataMutationCompletionsByDomain = v14;

    v16 = objc_alloc_init(MEMORY[0x1E698E6E0]);
    volatileDataMutationCompletionsByDomain = v8->_volatileDataMutationCompletionsByDomain;
    v8->_volatileDataMutationCompletionsByDomain = v16;

    v18 = objc_alloc_init(MEMORY[0x1E698E6E0]);
    publisherClientsByDomain = v8->_publisherClientsByDomain;
    v8->_publisherClientsByDomain = v18;

    Serial = BSDispatchQueueCreateSerial();
    internalQueue = v8->_internalQueue;
    v8->_internalQueue = Serial;

    SerialWithQoS = BSDispatchQueueCreateSerialWithQoS();
    clientQueue = v8->_clientQueue;
    v8->_clientQueue = SerialWithQoS;

    v24 = [v6 copy];
    xpcConnectionProvider = v8->_xpcConnectionProvider;
    v8->_xpcConnectionProvider = v24;

    objc_storeStrong(&v8->_serverLaunchObservable, a4);
    [(STServerLaunchObservable *)v8->_serverLaunchObservable addObserver:v8];
    v29 = v8;
    v26 = BSLogAddStateCaptureBlockWithTitle();
  }

  v27 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)dealloc
{
  v2 = self;
  if (self)
  {
    self = self->_serverLaunchObservable;
  }

  [(STStatusDomainPublisherXPCServerHandle *)self removeObserver:v2];
  v3.receiver = v2;
  v3.super_class = STStatusDomainPublisherXPCServerHandle;
  [(STStatusDomainPublisherXPCServerHandle *)&v3 dealloc];
}

- (id)publishedDataForDomain:(unint64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__STStatusDomainPublisherXPCServerHandle_publishedDataForDomain___block_invoke;
  block[3] = &unk_1E85DE0D8;
  block[4] = self;
  block[5] = &v7;
  block[6] = a3;
  dispatch_sync(internalQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __65__STStatusDomainPublisherXPCServerHandle_publishedDataForDomain___block_invoke(uint64_t *a1)
{
  v5 = [(STStatusDomainPublisherXPCServerHandle *)a1[4] _internalQueue_dataForDomain:0 usingFallbackIfNecessary:?];
  v2 = [v5 copyWithZone:0];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_internalQueue_dataForDomain:(int)a3 usingFallbackIfNecessary:
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 40));
    v6 = [*(a1 + 8) recordForKey:@"data"];
    v7 = [v6 currentDataForDomain:a2];
    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = a3 == 0;
    }

    if (!v8)
    {
      v7 = [v6 fallbackDataForClientKey:@"sharedClient" domain:a2];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)publishedVolatileDataForDomain:(unint64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__STStatusDomainPublisherXPCServerHandle_publishedVolatileDataForDomain___block_invoke;
  block[3] = &unk_1E85DE0D8;
  block[4] = self;
  block[5] = &v7;
  block[6] = a3;
  dispatch_sync(internalQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __73__STStatusDomainPublisherXPCServerHandle_publishedVolatileDataForDomain___block_invoke(uint64_t *a1)
{
  v5 = [(STStatusDomainPublisherXPCServerHandle *)a1[4] _internalQueue_volatileDataForDomain:0 usingFallbackIfNecessary:?];
  v2 = [v5 copyWithZone:0];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_internalQueue_volatileDataForDomain:(int)a3 usingFallbackIfNecessary:
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 40));
    v6 = [*(a1 + 8) recordForKey:@"volatileData"];
    v7 = [v6 currentDataForDomain:a2];
    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = a3 == 0;
    }

    if (!v8)
    {
      v7 = [v6 fallbackDataForClientKey:@"sharedClient" domain:a2];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)registerPublisherClient:(id)a3 forDomain:(unint64_t)a4 fallbackData:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __89__STStatusDomainPublisherXPCServerHandle_registerPublisherClient_forDomain_fallbackData___block_invoke;
  v13[3] = &unk_1E85DE128;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_sync(internalQueue, v13);
}

void __89__STStatusDomainPublisherXPCServerHandle_registerPublisherClient_forDomain_fallbackData___block_invoke(uint64_t *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[4];
  }

  v12 = v2;
  v3 = [v12 objectForKey:a1[7]];
  if (!v3)
  {
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    [v12 setObject:v3 forKey:a1[7]];
  }

  [v3 addObject:a1[5]];
  if ([v3 count] == 1)
  {
    v4 = a1[4];
    if (v4)
    {
      v5 = *(v4 + 8);
    }

    else
    {
      v5 = 0;
    }

    v6 = [v5 recordForKey:@"data"];
    [v6 setFallbackData:a1[6] forClientKey:@"sharedClient" domain:a1[7]];
    v7 = a1[4];
    if (v7)
    {
      v8 = *(v7 + 8);
    }

    else
    {
      v8 = 0;
    }

    v9 = [v8 recordForKey:@"volatileData"];
    [v9 setFallbackData:a1[6] forClientKey:@"sharedClient" domain:a1[7]];
    [(STStatusDomainPublisherXPCServerHandle *)a1[4] _internalQueue_setupXPCConnectionIfNecessary];
    v10 = a1[4];
    if (v10)
    {
      v11 = *(v10 + 64);
    }

    else
    {
      v11 = 0;
    }

    [v11 registerToPublishDomain:a1[7] fallbackData:a1[6]];
  }
}

- (void)removePublisherClient:(id)a3 forDomain:(unint64_t)a4
{
  v6 = a3;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__STStatusDomainPublisherXPCServerHandle_removePublisherClient_forDomain___block_invoke;
  block[3] = &unk_1E85DE100;
  v10 = v6;
  v11 = a4;
  block[4] = self;
  v8 = v6;
  dispatch_sync(internalQueue, block);
}

void __74__STStatusDomainPublisherXPCServerHandle_removePublisherClient_forDomain___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[4];
  }

  v13 = v2;
  v3 = [v13 objectForKey:a1[6]];
  [v3 removeObject:a1[5]];
  if (![v3 count])
  {
    [v13 removeObjectForKey:a1[6]];
    v4 = a1[4];
    if (v4)
    {
      v5 = *(v4 + 64);
    }

    else
    {
      v5 = 0;
    }

    [v5 unregisterFromPublishingDomain:a1[6]];
    v6 = a1[4];
    if (v6)
    {
      v7 = *(v6 + 8);
    }

    else
    {
      v7 = 0;
    }

    v8 = [v7 recordForKey:@"volatileData"];
    [v8 removeAllEntriesForClientKey:@"sharedClient" domain:a1[6]];
    v9 = a1[4];
    if (v9)
    {
      v10 = *(v9 + 8);
    }

    else
    {
      v10 = 0;
    }

    v11 = [v10 recordForKey:@"data"];
    v12 = [v11 currentDataForDomain:a1[6]];

    if (!v12)
    {
      [v11 removeAllEntriesForClientKey:@"sharedClient" domain:a1[6]];
    }
  }
}

- (void)publishData:(id)a3 forPublisherClient:(id)a4 domain:(unint64_t)a5 withChangeContext:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __109__STStatusDomainPublisherXPCServerHandle_publishData_forPublisherClient_domain_withChangeContext_completion___block_invoke;
  v21[3] = &unk_1E85DF000;
  v21[4] = self;
  v22 = v13;
  v23 = v12;
  v24 = v14;
  v25 = v15;
  v26 = a5;
  v17 = v15;
  v18 = v14;
  v19 = v12;
  v20 = v13;
  dispatch_sync(internalQueue, v21);
}

void __109__STStatusDomainPublisherXPCServerHandle_publishData_forPublisherClient_domain_withChangeContext_completion___block_invoke(uint64_t *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[4];
  }

  v3 = a1[9];
  v4 = v2;
  v5 = [v4 objectForKey:v3];
  v6 = [v5 containsObject:a1[5]];

  if (v6)
  {
    [(STStatusDomainPublisherXPCServerHandle *)a1[4] _internalQueue_setupXPCConnectionIfNecessary];
    v7 = a1[4];
    v8 = a1[6];
    v9 = a1[7];
    v11 = a1[8];
    v10 = a1[9];

    [(STStatusDomainPublisherXPCServerHandle *)v7 _internalQueue_publishData:v8 forDomain:v10 withChangeContext:v9 discardingOnExit:0 completion:v11];
  }

  else
  {
    v12 = a1[8];
    if (v12)
    {
      v13 = a1[4];
      if (v13)
      {
        v14 = *(v13 + 48);
      }

      else
      {
        v14 = 0;
      }

      dispatch_async(v14, v12);
    }
  }
}

- (void)_internalQueue_publishData:(uint64_t)a3 forDomain:(void *)a4 withChangeContext:(int)a5 discardingOnExit:(void *)a6 completion:
{
  v11 = a2;
  v12 = a4;
  v13 = a6;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 40));
    if (v13)
    {
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __125__STStatusDomainPublisherXPCServerHandle__internalQueue_publishData_forDomain_withChangeContext_discardingOnExit_completion___block_invoke;
      v35[3] = &unk_1E85DE6C0;
      v35[4] = a1;
      v36 = v13;
      v14 = MEMORY[0x1E1274600](v35);
    }

    else
    {
      v14 = 0;
    }

    valid = STIsValidDataForStatusDomain(v11);
    if (!v11 || valid)
    {
      if (v12)
      {
        if (STIsValidDataChangeContextForStatusDomain(v12))
        {
          v17 = v12;
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }

      v16 = v17;

      v18 = @"data";
      if (a5)
      {
        v18 = @"volatileData";
      }

      v19 = v18;
      v20 = *(a1 + 8);
      v24 = [v20 recordForKey:v19];

      if (a5)
      {
        [(STStatusDomainPublisherXPCServerHandle *)a1 _internalQueue_volatileDataForDomain:a3 usingFallbackIfNecessary:0];
      }

      else
      {
        [(STStatusDomainPublisherXPCServerHandle *)a1 _internalQueue_dataForDomain:a3 usingFallbackIfNecessary:0];
      }
      v21 = ;
      v22 = v21;
      v23 = v21 == 0;
      if (v11 | v21 && ([v21 isEqual:v11] & 1) == 0)
      {
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __125__STStatusDomainPublisherXPCServerHandle__internalQueue_publishData_forDomain_withChangeContext_discardingOnExit_completion___block_invoke_2;
        v25[3] = &unk_1E85DF078;
        v26 = v24;
        v31 = a3;
        v32 = v11 == 0;
        v33 = v23;
        v27 = v11;
        v28 = a1;
        v29 = v16;
        v34 = a5;
        v30 = v22;
        [(STStatusDomainPublisherXPCServerHandle *)a1 _internalQueue_mutateDataForDomain:a3 discardingOnExit:a5 wrappingCompletion:v14 usingBlock:v25];
      }

      else if (v14)
      {
        v14[2](v14);
      }
    }

    else
    {
      if (v14)
      {
        v14[2](v14);
      }

      v16 = v12;
    }

    v12 = v16;
  }
}

- (void)publishVolatileData:(id)a3 forPublisherClient:(id)a4 domain:(unint64_t)a5 withChangeContext:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __117__STStatusDomainPublisherXPCServerHandle_publishVolatileData_forPublisherClient_domain_withChangeContext_completion___block_invoke;
  v21[3] = &unk_1E85DF000;
  v21[4] = self;
  v22 = v13;
  v23 = v12;
  v24 = v14;
  v25 = v15;
  v26 = a5;
  v17 = v15;
  v18 = v14;
  v19 = v12;
  v20 = v13;
  dispatch_sync(internalQueue, v21);
}

void __117__STStatusDomainPublisherXPCServerHandle_publishVolatileData_forPublisherClient_domain_withChangeContext_completion___block_invoke(uint64_t *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[4];
  }

  v3 = a1[9];
  v4 = v2;
  v5 = [v4 objectForKey:v3];
  v6 = [v5 containsObject:a1[5]];

  if (v6)
  {
    [(STStatusDomainPublisherXPCServerHandle *)a1[4] _internalQueue_setupXPCConnectionIfNecessary];
    v7 = a1[4];
    v8 = a1[6];
    v9 = a1[7];
    v11 = a1[8];
    v10 = a1[9];

    [(STStatusDomainPublisherXPCServerHandle *)v7 _internalQueue_publishData:v8 forDomain:v10 withChangeContext:v9 discardingOnExit:1 completion:v11];
  }

  else
  {
    v12 = a1[8];
    if (v12)
    {
      v13 = a1[4];
      if (v13)
      {
        v14 = *(v13 + 48);
      }

      else
      {
        v14 = 0;
      }

      dispatch_async(v14, v12);
    }
  }
}

- (void)updateDataForPublisherClient:(id)a3 domain:(unint64_t)a4 usingDiffProvider:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __107__STStatusDomainPublisherXPCServerHandle_updateDataForPublisherClient_domain_usingDiffProvider_completion___block_invoke;
  block[3] = &unk_1E85DF028;
  v20 = v12;
  v21 = a4;
  block[4] = self;
  v18 = v10;
  v19 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_sync(internalQueue, block);
}

void __107__STStatusDomainPublisherXPCServerHandle_updateDataForPublisherClient_domain_usingDiffProvider_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[4];
  }

  v3 = *(a1 + 64);
  v4 = v2;
  v5 = [v4 objectForKey:v3];
  v6 = [v5 containsObject:*(a1 + 40)];

  if (v6)
  {
    v7 = [(STStatusDomainPublisherXPCServerHandle *)*(a1 + 32) _internalQueue_dataForDomain:1 usingFallbackIfNecessary:?];
    if (v7)
    {
      v8 = *(a1 + 48);
      v17 = 0;
      v9 = (*(v8 + 16))();
      v10 = v17;
      [(STStatusDomainPublisherXPCServerHandle *)*(a1 + 32) _internalQueue_setupXPCConnectionIfNecessary];
      [(STStatusDomainPublisherXPCServerHandle *)*(a1 + 32) _internalQueue_publishDiff:v9 forDomain:*(a1 + 64) withChangeContext:v10 discardingOnExit:0 completion:*(a1 + 56)];
    }

    else
    {
      v14 = *(a1 + 56);
      if (v14)
      {
        v15 = *(a1 + 32);
        if (v15)
        {
          v16 = *(v15 + 48);
        }

        else
        {
          v16 = 0;
        }

        dispatch_async(v16, v14);
      }
    }
  }

  else
  {
    v11 = *(a1 + 56);
    if (v11)
    {
      v12 = *(a1 + 32);
      if (v12)
      {
        v13 = *(v12 + 48);
      }

      else
      {
        v13 = 0;
      }

      dispatch_async(v13, v11);
    }
  }
}

- (void)_internalQueue_publishDiff:(uint64_t)a3 forDomain:(void *)a4 withChangeContext:(int)a5 discardingOnExit:(void *)a6 completion:
{
  v11 = a2;
  v12 = a4;
  v13 = a6;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 40));
    if (v13)
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __125__STStatusDomainPublisherXPCServerHandle__internalQueue_publishDiff_forDomain_withChangeContext_discardingOnExit_completion___block_invoke;
      v27[3] = &unk_1E85DE6C0;
      v27[4] = a1;
      v28 = v13;
      v14 = MEMORY[0x1E1274600](v27);
    }

    else
    {
      v14 = 0;
    }

    if (STIsValidDiffForStatusDomain(v11) && ([v11 isEmpty] & 1) == 0)
    {
      v15 = @"data";
      if (a5)
      {
        v15 = @"volatileData";
      }

      v16 = v15;
      v17 = *(a1 + 8);
      v18 = [v17 recordForKey:v16];

      if (a5)
      {
        [(STStatusDomainPublisherXPCServerHandle *)a1 _internalQueue_volatileDataForDomain:a3 usingFallbackIfNecessary:1];
      }

      else
      {
        [(STStatusDomainPublisherXPCServerHandle *)a1 _internalQueue_dataForDomain:a3 usingFallbackIfNecessary:1];
      }
      v19 = ;
      if (v19)
      {
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __125__STStatusDomainPublisherXPCServerHandle__internalQueue_publishDiff_forDomain_withChangeContext_discardingOnExit_completion___block_invoke_2;
        v20[3] = &unk_1E85DF0A0;
        v21 = v18;
        v25 = a3;
        v22 = v11;
        v23 = a1;
        v24 = v12;
        v26 = a5;
        [(STStatusDomainPublisherXPCServerHandle *)a1 _internalQueue_mutateDataForDomain:a3 discardingOnExit:a5 wrappingCompletion:v14 usingBlock:v20];
      }

      else if (v14)
      {
        v14[2](v14);
      }
    }

    else if (v14)
    {
      v14[2](v14);
    }
  }
}

- (void)updateVolatileDataForPublisherClient:(id)a3 domain:(unint64_t)a4 usingDiffProvider:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __115__STStatusDomainPublisherXPCServerHandle_updateVolatileDataForPublisherClient_domain_usingDiffProvider_completion___block_invoke;
  block[3] = &unk_1E85DF028;
  v20 = v12;
  v21 = a4;
  block[4] = self;
  v18 = v10;
  v19 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_sync(internalQueue, block);
}

void __115__STStatusDomainPublisherXPCServerHandle_updateVolatileDataForPublisherClient_domain_usingDiffProvider_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[4];
  }

  v3 = *(a1 + 64);
  v4 = v2;
  v5 = [v4 objectForKey:v3];
  v6 = [v5 containsObject:*(a1 + 40)];

  if (v6)
  {
    v7 = [(STStatusDomainPublisherXPCServerHandle *)*(a1 + 32) _internalQueue_volatileDataForDomain:1 usingFallbackIfNecessary:?];
    if (v7)
    {
      v8 = *(a1 + 48);
      v17 = 0;
      v9 = (*(v8 + 16))();
      v10 = v17;
      [(STStatusDomainPublisherXPCServerHandle *)*(a1 + 32) _internalQueue_setupXPCConnectionIfNecessary];
      [(STStatusDomainPublisherXPCServerHandle *)*(a1 + 32) _internalQueue_publishDiff:v9 forDomain:*(a1 + 64) withChangeContext:v10 discardingOnExit:1 completion:*(a1 + 56)];
    }

    else
    {
      v14 = *(a1 + 56);
      if (v14)
      {
        v15 = *(a1 + 32);
        if (v15)
        {
          v16 = *(v15 + 48);
        }

        else
        {
          v16 = 0;
        }

        dispatch_async(v16, v14);
      }
    }
  }

  else
  {
    v11 = *(a1 + 56);
    if (v11)
    {
      v12 = *(a1 + 32);
      if (v12)
      {
        v13 = *(v12 + 48);
      }

      else
      {
        v13 = 0;
      }

      dispatch_async(v13, v11);
    }
  }
}

- (void)handleUserInteraction:(id)a3 forDomain:(unint64_t)a4
{
  v6 = a3;
  if (STIsValidUserInteractionForStatusDomain(v6))
  {
    if (self)
    {
      internalQueue = self->_internalQueue;
    }

    else
    {
      internalQueue = 0;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__STStatusDomainPublisherXPCServerHandle_handleUserInteraction_forDomain___block_invoke;
    block[3] = &unk_1E85DE100;
    block[4] = self;
    v10 = a4;
    v9 = v6;
    dispatch_sync(internalQueue, block);
  }
}

void __74__STStatusDomainPublisherXPCServerHandle_handleUserInteraction_forDomain___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 32);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 objectForKey:*(a1 + 48)];
  v5 = [v4 copy];

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 48);
  }

  else
  {
    v7 = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__STStatusDomainPublisherXPCServerHandle_handleUserInteraction_forDomain___block_invoke_2;
  block[3] = &unk_1E85DE100;
  v12 = v5;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v13 = v8;
  v14 = v9;
  v10 = v5;
  dispatch_async(v7, block);
}

void __74__STStatusDomainPublisherXPCServerHandle_handleUserInteraction_forDomain___block_invoke_2(uint64_t a1)
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

        [*(*(&v8 + 1) + 8 * v6++) handleUserInteraction:*(a1 + 40) forDomain:{*(a1 + 48), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)didObserveServerLaunch:(id)a3
{
  v4 = STSystemStatusLogPublishing();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6[0]) = 0;
    _os_log_impl(&dword_1DA9C2000, v4, OS_LOG_TYPE_DEFAULT, "Server launched, resending data if necessary", v6, 2u);
  }

  if (self)
  {
    internalQueue = self->_internalQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __64__STStatusDomainPublisherXPCServerHandle__resendDataIfNecessary__block_invoke;
    v6[3] = &unk_1E85DE068;
    v6[4] = self;
    dispatch_sync(internalQueue, v6);
  }
}

- (id)succinctDescription
{
  v2 = [(STStatusDomainPublisherXPCServerHandle *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STStatusDomainPublisherXPCServerHandle *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(STStatusDomainPublisherXPCServerHandle *)self succinctDescriptionBuilder];
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__STStatusDomainPublisherXPCServerHandle_descriptionBuilderWithMultilinePrefix___block_invoke;
  block[3] = &unk_1E85DE268;
  v7 = v5;
  v12 = v7;
  v13 = v4;
  v14 = self;
  v8 = v4;
  dispatch_sync(internalQueue, block);
  v9 = v7;

  return v7;
}

void __80__STStatusDomainPublisherXPCServerHandle_descriptionBuilderWithMultilinePrefix___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __80__STStatusDomainPublisherXPCServerHandle_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v3[3] = &unk_1E85DDD00;
  v3[4] = a1[6];
  v4 = v1;
  [v4 appendBodySectionWithName:0 multilinePrefix:v2 block:v3];
}

void __80__STStatusDomainPublisherXPCServerHandle_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[1];
  }

  v3 = v2;
  v4 = [v3 recordForKey:@"data"];
  v5 = [v4 domainsWithData];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __80__STStatusDomainPublisherXPCServerHandle_descriptionBuilderWithMultilinePrefix___block_invoke_3;
  v13[3] = &unk_1E85DF050;
  v14 = v4;
  v15 = *(a1 + 40);
  v6 = v4;
  [v5 enumerateWithBlock:v13];
  v7 = [v3 recordForKey:@"volatileData"];
  v8 = [v7 domainsWithData];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__STStatusDomainPublisherXPCServerHandle_descriptionBuilderWithMultilinePrefix___block_invoke_4;
  v10[3] = &unk_1E85DF050;
  v11 = v7;
  v12 = *(a1 + 40);
  v9 = v7;
  [v8 enumerateWithBlock:v10];
}

void __80__STStatusDomainPublisherXPCServerHandle_descriptionBuilderWithMultilinePrefix___block_invoke_3(uint64_t a1, unint64_t a2)
{
  v7 = [*(a1 + 32) currentDataForDomain:a2];
  v4 = *(a1 + 40);
  v5 = STSystemStatusDescriptionForDomain(a2);
  v6 = [v4 appendObject:v7 withName:v5];
}

void __80__STStatusDomainPublisherXPCServerHandle_descriptionBuilderWithMultilinePrefix___block_invoke_4(uint64_t a1, unint64_t a2)
{
  v8 = [*(a1 + 32) currentDataForDomain:a2];
  v4 = MEMORY[0x1E696AEC0];
  v5 = STSystemStatusDescriptionForDomain(a2);
  v6 = [v4 stringWithFormat:@"%@ (volatile)", v5];

  v7 = [*(a1 + 40) appendObject:v8 withName:v6];
}

void __125__STStatusDomainPublisherXPCServerHandle__internalQueue_publishData_forDomain_withChangeContext_discardingOnExit_completion___block_invoke(uint64_t a1)
{
  isa = *(a1 + 32);
  if (isa)
  {
    isa = isa[6].isa;
  }

  dispatch_async(isa, *(a1 + 40));
}

void __125__STStatusDomainPublisherXPCServerHandle__internalQueue_publishData_forDomain_withChangeContext_discardingOnExit_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v15 = a2;
  [*(a1 + 32) setData:*(a1 + 40) forClientKey:@"sharedClient" domain:*(a1 + 72)];
  if ((*(a1 + 80) & 1) != 0 || *(a1 + 81) == 1)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 72);
    v5 = *(a1 + 56);
    v6 = *(a1 + 82);
    v7 = *(a1 + 40);
    v8 = v5;
    v9 = v15;
    if (v3)
    {
      dispatch_assert_queue_V2(*(v3 + 40));
      if (!v9)
      {
        v9 = &__block_literal_global_38;
      }

      if (STSystemStatusIsInternalLoggingEnabled_onceToken != -1)
      {
        dispatch_once(&STSystemStatusIsInternalLoggingEnabled_onceToken, &__block_literal_global_56);
      }

      if (STSystemStatusIsInternalLoggingEnabled___internalLoggingEnabled == 1)
      {
        v10 = STSystemStatusLogPublishing();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          if (v6)
          {
            v11 = @"volatile";
          }

          else
          {
            v11 = &stru_1F5665198;
          }

          v12 = STSystemStatusDescriptionForDomain(v4);
          *buf = 138544130;
          v17 = v11;
          v18 = 2114;
          v19 = v12;
          v20 = 2114;
          v21 = v7;
          v22 = 2114;
          v23 = v8;
          _os_log_impl(&dword_1DA9C2000, v10, OS_LOG_TYPE_DEFAULT, "Publishing %{public}@ data for %{public}@ domain: %{public}@ -- context: %{public}@", buf, 0x2Au);
        }
      }

      [*(v3 + 64) publishData:v7 forDomain:v4 withChangeContext:v8 discardingOnExit:v6 reply:v9];
    }
  }

  else
  {
    v13 = [*(a1 + 40) diffFromData:*(a1 + 64)];
    if ([v13 isEmpty])
    {
      if (v15)
      {
        v15[2]();
      }
    }

    else
    {
      [(STStatusDomainPublisherXPCServerHandle *)*(a1 + 48) _internalQueue_publishDiffToServer:v13 forDomain:*(a1 + 72) withChangeContext:*(a1 + 56) replacingData:1 discardingOnExit:*(a1 + 82) reply:v15];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_internalQueue_publishDiffToServer:(unint64_t)a3 forDomain:(void *)a4 withChangeContext:(uint64_t)a5 replacingData:(uint64_t)a6 discardingOnExit:(void *)a7 reply:
{
  v31 = *MEMORY[0x1E69E9840];
  v13 = a2;
  v14 = a4;
  v15 = a7;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 40));
    if (!v15)
    {
      v15 = &__block_literal_global_46;
    }

    if (STSystemStatusIsInternalLoggingEnabled_onceToken != -1)
    {
      dispatch_once(&STSystemStatusIsInternalLoggingEnabled_onceToken, &__block_literal_global_56);
    }

    if (STSystemStatusIsInternalLoggingEnabled___internalLoggingEnabled == 1)
    {
      v16 = STSystemStatusLogPublishing();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        if (a6)
        {
          v17 = @"volatile ";
        }

        else
        {
          v17 = &stru_1F5665198;
        }

        if (a5)
        {
          v18 = @"data-replacing";
        }

        else
        {
          v18 = &stru_1F5665198;
        }

        STSystemStatusDescriptionForDomain(a3);
        v21 = 138544386;
        v22 = v17;
        v23 = 2114;
        v24 = v18;
        v26 = v25 = 2114;
        v19 = v26;
        v27 = 2114;
        v28 = v13;
        v29 = 2114;
        v30 = v14;
        _os_log_impl(&dword_1DA9C2000, v16, OS_LOG_TYPE_DEFAULT, "Publishing %{public}@%{public}@ diff for %{public}@ domain: %{public}@ -- context: %{public}@", &v21, 0x34u);
      }
    }

    [*(a1 + 64) publishDiff:v13 forDomain:a3 withChangeContext:v14 replacingData:a5 discardingOnExit:a6 reply:v15];
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_internalQueue_mutateDataForDomain:(int)a3 discardingOnExit:(void *)a4 wrappingCompletion:(void *)a5 usingBlock:
{
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v11 = 16;
    if (a3)
    {
      v11 = 24;
    }

    v12 = *(a1 + v11);
    v13 = [v12 objectForKey:a2];
    if (!v13)
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DFA0]);
      [v12 setObject:v13 forKey:a2];
    }

    v29 = 0;
    v30 = &v29;
    v31 = 0x3042000000;
    v32 = __Block_byref_object_copy__54;
    v33 = __Block_byref_object_dispose__55;
    v34 = 0;
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __124__STStatusDomainPublisherXPCServerHandle__internalQueue_mutateDataForDomain_discardingOnExit_wrappingCompletion_usingBlock___block_invoke;
    v22 = &unk_1E85DF0C8;
    v23 = a1;
    v14 = v13;
    v24 = v14;
    v27 = &v29;
    v15 = v12;
    v25 = v15;
    v28 = a2;
    v26 = v9;
    v16 = MEMORY[0x1E1274600](&v19);
    v17 = [v16 copy];
    objc_storeWeak(v30 + 5, v17);
    v18 = MEMORY[0x1E1274600](v17);
    [v14 addObject:v18];

    _Block_object_dispose(&v29, 8);
    objc_destroyWeak(&v34);
  }

  else
  {
    v16 = 0;
  }

  v10[2](v10, v16);
}

void __125__STStatusDomainPublisherXPCServerHandle__internalQueue_publishDiff_forDomain_withChangeContext_discardingOnExit_completion___block_invoke(uint64_t a1)
{
  isa = *(a1 + 32);
  if (isa)
  {
    isa = isa[6].isa;
  }

  dispatch_async(isa, *(a1 + 40));
}

void __125__STStatusDomainPublisherXPCServerHandle__internalQueue_publishDiff_forDomain_withChangeContext_discardingOnExit_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 64);
  v6 = a2;
  [v3 addDiff:v4 forClientKey:@"sharedClient" domain:v5];
  [(STStatusDomainPublisherXPCServerHandle *)*(a1 + 48) _internalQueue_publishDiffToServer:*(a1 + 64) forDomain:*(a1 + 56) withChangeContext:0 replacingData:*(a1 + 72) discardingOnExit:v6 reply:?];
}

uint64_t __124__STStatusDomainPublisherXPCServerHandle__internalQueue_mutateDataForDomain_discardingOnExit_wrappingCompletion_usingBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 40);
  }

  else
  {
    v3 = 0;
  }

  dispatch_assert_queue_V2(v3);
  v4 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 64) + 8) + 40));
  [v4 removeObject:WeakRetained];

  if (![*(a1 + 40) count])
  {
    [*(a1 + 48) removeObjectForKey:*(a1 + 72)];
  }

  v6 = *(*(a1 + 56) + 16);

  return v6();
}

void __86__STStatusDomainPublisherXPCServerHandle__internalQueue_setupXPCConnectionIfNecessary__block_invoke()
{
  v0 = STSystemStatusLogPublishing();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1DA9C2000, v0, OS_LOG_TYPE_DEFAULT, "Server connection interrupted", v1, 2u);
  }
}

void __86__STStatusDomainPublisherXPCServerHandle__internalQueue_setupXPCConnectionIfNecessary__block_invoke_58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = STSystemStatusLogPublishing();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v4[0]) = 0;
    _os_log_impl(&dword_1DA9C2000, v2, OS_LOG_TYPE_DEFAULT, "Server connection invalidated", v4, 2u);
  }

  if (WeakRetained)
  {
    v3 = WeakRetained[5];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __64__STStatusDomainPublisherXPCServerHandle__tearDownXPCConnection__block_invoke;
    v4[3] = &unk_1E85DE068;
    v4[4] = WeakRetained;
    dispatch_sync(v3, v4);
  }
}

void __86__STStatusDomainPublisherXPCServerHandle__internalQueue_setupXPCConnectionIfNecessary__block_invoke_59(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = STSystemStatusLogPublishing();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 localizedDescription];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_1DA9C2000, v5, OS_LOG_TYPE_DEFAULT, "Server proxy error, resending data if necessary: %{public}@", &v8, 0xCu);
  }

  [(STStatusDomainPublisherXPCServerHandle *)WeakRetained _internalQueue_resendDataIfNecessary];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_internalQueue_resendDataIfNecessary
{
  v48 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 40));
    v2 = [MEMORY[0x1E698E620] tokenForCurrentProcess];
    v3 = [v2 valueForEntitlement:@"com.apple.systemstatus.publisher.domains"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

LABEL_6:
      dispatch_assert_queue_V2(*(a1 + 40));
      [(STStatusDomainPublisherXPCServerHandle *)a1 _internalQueue_setupXPCConnectionIfNecessary];
      v5 = *(a1 + 32);
      v6 = *(a1 + 8);
      v7 = [v6 recordForKey:@"volatileData"];

      if ([v5 count])
      {
        v8 = *(a1 + 64);
        v9 = [v5 allKeys];
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v44 = __87__STStatusDomainPublisherXPCServerHandle__internalQueue_reregisterForPublishingDomains__block_invoke;
        v45 = &unk_1E85DF050;
        v46 = v7;
        v47 = v8;
        v10 = v8;
        [v9 enumerateWithBlock:&buf];
      }

      v11 = *(a1 + 8);
      v12 = [v11 recordForKey:@"data"];
      v13 = [v12 domainsWithData];
      v14 = [v13 count];

      if (v14)
      {
        if (STSystemStatusIsInternalLoggingEnabled_onceToken != -1)
        {
          dispatch_once(&STSystemStatusIsInternalLoggingEnabled_onceToken, &__block_literal_global_56);
        }

        if (STSystemStatusIsInternalLoggingEnabled___internalLoggingEnabled == 1)
        {
          v15 = STSystemStatusLogPublishing();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v12;
            _os_log_impl(&dword_1DA9C2000, v15, OS_LOG_TYPE_DEFAULT, "Re-sending change record: %{public}@", &buf, 0xCu);
          }
        }

        v16 = *(a1 + 16);
        v17 = [objc_alloc(MEMORY[0x1E698E6E0]) initWithCapacity:{objc_msgSend(v16, "count")}];
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __78__STStatusDomainPublisherXPCServerHandle__internalQueue_resendDataIfNecessary__block_invoke;
        v41[3] = &unk_1E85DF0F0;
        v18 = v17;
        v42 = v18;
        [v16 enumerateWithBlock:v41];
        v19 = *(a1 + 64);
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __78__STStatusDomainPublisherXPCServerHandle__internalQueue_resendDataIfNecessary__block_invoke_2;
        v38[3] = &unk_1E85DE268;
        v38[4] = a1;
        v39 = v18;
        v40 = v16;
        v20 = v16;
        v21 = v18;
        [v19 replaceDataChangeRecord:v12 discardingOnExit:0 reply:v38];
      }

      v22 = [v11 recordForKey:@"volatileData"];
      v23 = [v22 domainsWithData];
      v24 = [v23 count];

      if (v24)
      {
        if (STSystemStatusIsInternalLoggingEnabled_onceToken != -1)
        {
          dispatch_once(&STSystemStatusIsInternalLoggingEnabled_onceToken, &__block_literal_global_56);
        }

        if (STSystemStatusIsInternalLoggingEnabled___internalLoggingEnabled == 1)
        {
          v25 = STSystemStatusLogPublishing();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v22;
            _os_log_impl(&dword_1DA9C2000, v25, OS_LOG_TYPE_DEFAULT, "Re-sending volatile change record: %{public}@", &buf, 0xCu);
          }
        }

        v26 = *(a1 + 24);
        v27 = [objc_alloc(MEMORY[0x1E698E6E0]) initWithCapacity:{objc_msgSend(v26, "count")}];
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __78__STStatusDomainPublisherXPCServerHandle__internalQueue_resendDataIfNecessary__block_invoke_63;
        v36[3] = &unk_1E85DF0F0;
        v28 = v27;
        v37 = v28;
        [v26 enumerateWithBlock:v36];
        v29 = *(a1 + 64);
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __78__STStatusDomainPublisherXPCServerHandle__internalQueue_resendDataIfNecessary__block_invoke_2_64;
        v33[3] = &unk_1E85DE268;
        v33[4] = a1;
        v34 = v28;
        v35 = v26;
        v30 = v26;
        v31 = v28;
        [v29 replaceDataChangeRecord:v22 discardingOnExit:1 reply:v33];
      }

LABEL_28:
      goto LABEL_29;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 count];

      if (v4)
      {
        goto LABEL_6;
      }
    }

    else
    {
    }

    v11 = STSystemStatusLogPublishing();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      LOWORD(buf) = 0;
      _os_log_fault_impl(&dword_1DA9C2000, v11, OS_LOG_TYPE_FAULT, "Server connection rejected due to missing entitlement", &buf, 2u);
    }

    goto LABEL_28;
  }

LABEL_29:
  v32 = *MEMORY[0x1E69E9840];
}

void __78__STStatusDomainPublisherXPCServerHandle__internalQueue_resendDataIfNecessary__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 copy];
  [v4 setObject:v5 forKey:a2];
}

void __78__STStatusDomainPublisherXPCServerHandle__internalQueue_resendDataIfNecessary__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 40);
  }

  else
  {
    v3 = 0;
  }

  dispatch_assert_queue_V2(v3);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __78__STStatusDomainPublisherXPCServerHandle__internalQueue_resendDataIfNecessary__block_invoke_3;
  v5[3] = &unk_1E85DF118;
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v4 enumerateWithBlock:v5];
}

void __78__STStatusDomainPublisherXPCServerHandle__internalQueue_resendDataIfNecessary__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [*(a1 + 32) objectForKey:a2];
  [v6 minusOrderedSet:v5];
  if (![v6 count])
  {
    [*(a1 + 32) removeObjectForKey:a2];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        (*(*(*(&v13 + 1) + 8 * v11) + 16))(*(*(&v13 + 1) + 8 * v11));
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __78__STStatusDomainPublisherXPCServerHandle__internalQueue_resendDataIfNecessary__block_invoke_63(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 copy];
  [v4 setObject:v5 forKey:a2];
}

void __78__STStatusDomainPublisherXPCServerHandle__internalQueue_resendDataIfNecessary__block_invoke_2_64(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 40);
  }

  else
  {
    v3 = 0;
  }

  dispatch_assert_queue_V2(v3);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __78__STStatusDomainPublisherXPCServerHandle__internalQueue_resendDataIfNecessary__block_invoke_3_65;
  v5[3] = &unk_1E85DF118;
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v4 enumerateWithBlock:v5];
}

void __78__STStatusDomainPublisherXPCServerHandle__internalQueue_resendDataIfNecessary__block_invoke_3_65(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [*(a1 + 32) objectForKey:a2];
  [v6 minusOrderedSet:v5];
  if (![v6 count])
  {
    [*(a1 + 32) removeObjectForKey:a2];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        (*(*(*(&v13 + 1) + 8 * v11) + 16))(*(*(&v13 + 1) + 8 * v11));
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __87__STStatusDomainPublisherXPCServerHandle__internalQueue_reregisterForPublishingDomains__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) fallbackDataForClientKey:@"sharedClient" domain:a2];
  [*(a1 + 40) registerToPublishDomain:a2 fallbackData:v4];
}

void __64__STStatusDomainPublisherXPCServerHandle__tearDownXPCConnection__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    objc_storeStrong((v1 + 56), 0);
  }
}

@end