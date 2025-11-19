@interface STLocalStatusServer
- (BSIntegerSet)publishedDomains;
- (STLocalStatusServer)init;
- (STLocalStatusServerDelegate)delegate;
- (id)_internalQueue_dataForClient:(uint64_t)a3 domain:(void *)a4 presentationData:;
- (id)_internalQueue_dataForDomain:(uint64_t)a1;
- (id)_internalQueue_fallbackDataForPublisherClient:(uint64_t)a3 domain:;
- (id)_internalQueue_presentationDataForDomain:(uint64_t)a1;
- (id)_internalQueue_publishedDomains;
- (id)_internalQueue_volatileDataForDomain:(uint64_t)a1;
- (id)dataForDomain:(unint64_t)a3 client:(id)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)internalQueuePublisherServerHandle;
- (id)publishedDataForDomain:(unint64_t)a3;
- (id)publishedVolatileDataForDomain:(unint64_t)a3;
- (id)succinctDescription;
- (void)_internalQueue_mutateDataForDomain:(void *)a3 withChangeContext:(void *)a4 block:;
- (void)_internalQueue_publishData:(void *)a3 forPublisherClient:(uint64_t)a4 domain:(void *)a5 inDataChangeRecord:(void *)a6 withChangeContext:(void *)a7 completion:;
- (void)_internalQueue_publishData:(void *)a3 forPublisherClient:(uint64_t)a4 domain:(void *)a5 withChangeContext:(void *)a6 completion:;
- (void)_internalQueue_publishVolatileData:(void *)a3 forPublisherClient:(uint64_t)a4 domain:(void *)a5 withChangeContext:(void *)a6 completion:;
- (void)_internalQueue_registerPublisherClient:(uint64_t)a3 forDomain:(void *)a4 fallbackData:;
- (void)_internalQueue_removePublisherClient:(uint64_t)a3 forDomain:;
- (void)_internalQueue_replaceDataChangeRecord:(void *)a3 forPublisherClient:(void *)a4 completion:;
- (void)_internalQueue_replaceDataChangeRecord:(void *)a3 forPublisherClient:(void *)a4 inDataChangeRecord:(void *)a5 applyBlock:(void *)a6 completion:;
- (void)_internalQueue_replaceVolatileDataChangeRecord:(void *)a3 forPublisherClient:(void *)a4 completion:;
- (void)_internalQueue_updateDataForPublisherClient:(uint64_t)a3 domain:(void *)a4 usingDiffProvider:(void *)a5 completion:;
- (void)_internalQueue_updateVolatileDataForPublisherClient:(uint64_t)a3 domain:(void *)a4 usingDiffProvider:(void *)a5 completion:;
- (void)addClientDataTransformerProvider:(id)a3 forDomain:(unint64_t)a4;
- (void)addDataTransformer:(id)a3 forDomain:(unint64_t)a4;
- (void)modifyClientDataTransformerProvider:(id)a3 forDomain:(unint64_t)a4 usingBlock:(id)a5;
- (void)modifyDataTransformer:(id)a3 forDomain:(unint64_t)a4 usingBlock:(id)a5;
- (void)publishData:(id)a3 forPublisherClient:(id)a4 domain:(unint64_t)a5 withChangeContext:(id)a6 completion:(id)a7;
- (void)publishVolatileData:(id)a3 forPublisherClient:(id)a4 domain:(unint64_t)a5 withChangeContext:(id)a6 completion:(id)a7;
- (void)registerClient:(id)a3 forDomain:(unint64_t)a4;
- (void)registerPublisherClient:(id)a3 forDomain:(unint64_t)a4 fallbackData:(id)a5;
- (void)removeClient:(id)a3 forDomain:(unint64_t)a4;
- (void)removeClientDataTransformerProvider:(id)a3 forDomain:(unint64_t)a4;
- (void)removeDataTransformer:(id)a3 forDomain:(unint64_t)a4;
- (void)removePublisherClient:(id)a3 forDomain:(unint64_t)a4;
- (void)replaceDataChangeRecord:(id)a3 forPublisherClient:(id)a4 completion:(id)a5;
- (void)replaceVolatileDataChangeRecord:(id)a3 forPublisherClient:(id)a4 completion:(id)a5;
- (void)reportUserInteraction:(id)a3 forClient:(id)a4 domain:(unint64_t)a5;
- (void)setDelegate:(id)a3;
- (void)updateDataForPublisherClient:(id)a3 domain:(unint64_t)a4 usingDiffProvider:(id)a5 completion:(id)a6;
- (void)updateVolatileDataForPublisherClient:(id)a3 domain:(unint64_t)a4 usingDiffProvider:(id)a5 completion:(id)a6;
@end

@implementation STLocalStatusServer

- (id)_internalQueue_publishedDomains
{
  v1 = a1;
  if (a1)
  {
    dispatch_assert_queue_V2(a1[11]);
    v2 = [v1[5] recordForKey:@"volatileData"];
    v3 = [v2 domainsWithSignificantData];
    v1 = [v3 copy];
  }

  return v1;
}

- (STLocalStatusServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (STLocalStatusServer)init
{
  v33[2] = *MEMORY[0x277D85DE8];
  v32.receiver = self;
  v32.super_class = STLocalStatusServer;
  v2 = [(STLocalStatusServer *)&v32 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CF0C68]);
    clientsByDomain = v2->_clientsByDomain;
    v2->_clientsByDomain = v3;

    v5 = objc_alloc_init(MEMORY[0x277CF0C68]);
    publisherClientsByDomain = v2->_publisherClientsByDomain;
    v2->_publisherClientsByDomain = v5;

    v7 = MEMORY[0x277CBEB70];
    v33[0] = @"data";
    v33[1] = @"volatileData";
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
    v9 = [v7 orderedSetWithArray:v8];

    v10 = [objc_alloc(MEMORY[0x277D6BB38]) initWithRecordKeys:v9];
    dataChangeLog = v2->_dataChangeLog;
    v2->_dataChangeLog = v10;

    v12 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    changeLogKeysByPublisherClient = v2->_changeLogKeysByPublisherClient;
    v2->_changeLogKeysByPublisherClient = v12;

    v14 = [MEMORY[0x277CBEB38] dictionary];
    dataTransformersByDomain = v2->_dataTransformersByDomain;
    v2->_dataTransformersByDomain = v14;

    v16 = [MEMORY[0x277CBEB38] dictionary];
    clientDataTransformerProvidersByDomain = v2->_clientDataTransformerProvidersByDomain;
    v2->_clientDataTransformerProvidersByDomain = v16;

    v18 = [MEMORY[0x277CBEB38] dictionary];
    domainsByChangeLogKey = v2->_domainsByChangeLogKey;
    v2->_domainsByChangeLogKey = v18;

    Serial = BSDispatchQueueCreateSerial();
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = Serial;

    v22 = BSDispatchQueueCreateSerial();
    clientQueue = v2->_clientQueue;
    v2->_clientQueue = v22;

    v24 = [[STStatusDomainXPCClientListener alloc] initWithServerHandle:v2];
    xpcClientListener = v2->_xpcClientListener;
    v2->_xpcClientListener = v24;

    v26 = [[STStatusDomainPublisherXPCClientListener alloc] initWithServerHandle:v2];
    publisherXPCClientListener = v2->_publisherXPCClientListener;
    v2->_publisherXPCClientListener = v26;

    v31 = v2;
    v28 = BSLogAddStateCaptureBlockWithTitle();
  }

  v29 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__STLocalStatusServer_setDelegate___block_invoke;
  v7[3] = &unk_279D34B18;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(internalQueue, v7);
}

- (BSIntegerSet)publishedDomains
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__STLocalStatusServer_publishedDomains__block_invoke;
  v5[3] = &unk_279D34CD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __39__STLocalStatusServer_publishedDomains__block_invoke(uint64_t a1)
{
  v2 = [(STLocalStatusServer *)*(a1 + 32) _internalQueue_publishedDomains];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)internalQueuePublisherServerHandle
{
  v2 = [[_STInternalQueueLocalStatusServerWrapper alloc] initWithServer:self];

  return v2;
}

- (id)publishedDataForDomain:(unint64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__STLocalStatusServer_publishedDataForDomain___block_invoke;
  block[3] = &unk_279D34CF8;
  block[4] = self;
  block[5] = &v7;
  block[6] = a3;
  dispatch_sync(internalQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __46__STLocalStatusServer_publishedDataForDomain___block_invoke(uint64_t *a1)
{
  v5 = [(STLocalStatusServer *)a1[4] _internalQueue_dataForDomain:?];
  v2 = [v5 copyWithZone:0];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_internalQueue_dataForDomain:(uint64_t)a1
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 88));
    v4 = [*(a1 + 40) recordForKey:@"data"];
    v5 = [v4 currentDataForDomain:a2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)publishedVolatileDataForDomain:(unint64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__STLocalStatusServer_publishedVolatileDataForDomain___block_invoke;
  block[3] = &unk_279D34CF8;
  block[4] = self;
  block[5] = &v7;
  block[6] = a3;
  dispatch_sync(internalQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __54__STLocalStatusServer_publishedVolatileDataForDomain___block_invoke(uint64_t *a1)
{
  v5 = [(STLocalStatusServer *)a1[4] _internalQueue_volatileDataForDomain:?];
  v2 = [v5 copyWithZone:0];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_internalQueue_volatileDataForDomain:(uint64_t)a1
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 88));
    v4 = [*(a1 + 40) recordForKey:@"volatileData"];
    v5 = [v4 currentDataForDomain:a2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
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

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__STLocalStatusServer_registerPublisherClient_forDomain_fallbackData___block_invoke;
  v13[3] = &unk_279D34D20;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_sync(internalQueue, v13);
}

- (void)_internalQueue_registerPublisherClient:(uint64_t)a3 forDomain:(void *)a4 fallbackData:
{
  v18 = a2;
  if (a1)
  {
    v7 = *(a1 + 88);
    v8 = a4;
    dispatch_assert_queue_V2(v7);
    v9 = *(a1 + 24);
    v10 = [v9 objectForKey:a3];
    if (!v10)
    {
      v10 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:1];
      [v9 setObject:v10 forKey:a3];
    }

    [v10 addObject:v18];
    v11 = *(a1 + 32);
    v12 = [v11 objectForKey:v18];
    if (!v12)
    {
      v13 = [MEMORY[0x277CCAD78] UUID];
      v12 = [v13 UUIDString];

      [v11 setObject:v12 forKey:v18];
    }

    v14 = *(a1 + 80);
    v15 = [v14 objectForKey:v12];
    if (!v15)
    {
      v15 = [MEMORY[0x277CBEB18] array];
      [v14 setObject:v15 forKey:v12];
    }

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [v15 addObject:v16];

    v17 = [*(a1 + 40) recordForKey:@"volatileData"];
    [v17 setFallbackData:v8 forClientKey:v12 domain:a3];
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

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__STLocalStatusServer_removePublisherClient_forDomain___block_invoke;
  block[3] = &unk_279D34D48;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_sync(internalQueue, block);
}

- (void)_internalQueue_removePublisherClient:(uint64_t)a3 forDomain:
{
  v5 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 88));
    v6 = *(a1 + 24);
    v7 = [v6 objectForKey:a3];
    [v7 removeObject:v5];
    v8 = *(a1 + 32);
    v9 = [v8 objectForKey:v5];
    v10 = *(a1 + 40);
    v11 = [v10 recordForKey:@"volatileData"];

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __70__STLocalStatusServer__internalQueue_removePublisherClient_forDomain___block_invoke;
    v17[3] = &unk_279D34D48;
    v12 = v11;
    v18 = v12;
    v13 = v9;
    v19 = v13;
    v20 = a3;
    [(STLocalStatusServer *)a1 _internalQueue_mutateDataForDomain:a3 withChangeContext:0 block:v17];
    if (![v7 count])
    {
      [v6 removeObjectForKey:a3];
    }

    v14 = *(a1 + 80);
    v15 = [v14 objectForKey:v13];
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [v15 removeObject:v16];

    if (![v15 count])
    {
      [v14 removeObjectForKey:v13];
      [v8 removeObjectForKey:v5];
    }
  }
}

- (void)replaceDataChangeRecord:(id)a3 forPublisherClient:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __77__STLocalStatusServer_replaceDataChangeRecord_forPublisherClient_completion___block_invoke;
  v15[3] = &unk_279D34D70;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_sync(internalQueue, v15);
}

- (void)_internalQueue_replaceDataChangeRecord:(void *)a3 forPublisherClient:(void *)a4 completion:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 88));
    v10 = [v7 domainsWithData];
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v11 = *(a1 + 24);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __92__STLocalStatusServer__internalQueue_replaceDataChangeRecord_forPublisherClient_completion___block_invoke;
    v16[3] = &unk_279D34EB0;
    v12 = v11;
    v17 = v12;
    v13 = v8;
    v18 = v13;
    v19 = &v20;
    [v10 enumerateWithBlock:v16];
    if (v21[3])
    {
      if (v9)
      {
        v9[2](v9);
      }
    }

    else
    {
      v14 = *(a1 + 40);
      v15 = [v14 recordForKey:@"data"];
      [(STLocalStatusServer *)a1 _internalQueue_replaceDataChangeRecord:v7 forPublisherClient:v13 inDataChangeRecord:v15 applyBlock:&__block_literal_global_145 completion:v9];
    }

    _Block_object_dispose(&v20, 8);
  }
}

- (void)replaceVolatileDataChangeRecord:(id)a3 forPublisherClient:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __85__STLocalStatusServer_replaceVolatileDataChangeRecord_forPublisherClient_completion___block_invoke;
  v15[3] = &unk_279D34D70;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_sync(internalQueue, v15);
}

- (void)_internalQueue_replaceVolatileDataChangeRecord:(void *)a3 forPublisherClient:(void *)a4 completion:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 88));
    v10 = [v7 domainsWithData];
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v11 = *(a1 + 24);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __100__STLocalStatusServer__internalQueue_replaceVolatileDataChangeRecord_forPublisherClient_completion___block_invoke;
    v16[3] = &unk_279D34EB0;
    v12 = v11;
    v17 = v12;
    v13 = v8;
    v18 = v13;
    v19 = &v20;
    [v10 enumerateWithBlock:v16];
    if (v21[3])
    {
      if (v9)
      {
        v9[2](v9);
      }
    }

    else
    {
      v14 = *(a1 + 40);
      v15 = [v14 recordForKey:@"volatileData"];
      [(STLocalStatusServer *)a1 _internalQueue_replaceDataChangeRecord:v7 forPublisherClient:v13 inDataChangeRecord:v15 applyBlock:&__block_literal_global_148 completion:v9];
    }

    _Block_object_dispose(&v20, 8);
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

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __90__STLocalStatusServer_publishData_forPublisherClient_domain_withChangeContext_completion___block_invoke;
  v21[3] = &unk_279D34D98;
  v21[4] = self;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v26 = a5;
  v17 = v15;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  dispatch_sync(internalQueue, v21);
}

- (void)_internalQueue_publishData:(void *)a3 forPublisherClient:(uint64_t)a4 domain:(void *)a5 withChangeContext:(void *)a6 completion:
{
  v23 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 88));
    v15 = [*(a1 + 24) objectForKey:a4];
    v16 = [v15 containsObject:v12];

    if (v16)
    {
      v17 = [*(a1 + 40) recordForKey:@"data"];
      [(STLocalStatusServer *)a1 _internalQueue_publishData:v11 forPublisherClient:v12 domain:a4 inDataChangeRecord:v17 withChangeContext:v13 completion:v14];
    }

    else
    {
      v18 = STSystemStatusLogServer();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = STSystemStatusDescriptionForDomain();
        v21 = 138543362;
        v22 = v19;
        _os_log_impl(&dword_26C4AD000, v18, OS_LOG_TYPE_DEFAULT, "Ignoring data from unknown publisher for %{public}@ domain", &v21, 0xCu);
      }

      if (v14)
      {
        v14[2](v14);
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
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

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __98__STLocalStatusServer_publishVolatileData_forPublisherClient_domain_withChangeContext_completion___block_invoke;
  v21[3] = &unk_279D34D98;
  v21[4] = self;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v26 = a5;
  v17 = v15;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  dispatch_sync(internalQueue, v21);
}

- (void)_internalQueue_publishVolatileData:(void *)a3 forPublisherClient:(uint64_t)a4 domain:(void *)a5 withChangeContext:(void *)a6 completion:
{
  v23 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 88));
    v15 = [*(a1 + 24) objectForKey:a4];
    v16 = [v15 containsObject:v12];

    if (v16)
    {
      v17 = [*(a1 + 40) recordForKey:@"volatileData"];
      [(STLocalStatusServer *)a1 _internalQueue_publishData:v11 forPublisherClient:v12 domain:a4 inDataChangeRecord:v17 withChangeContext:v13 completion:v14];
    }

    else
    {
      v18 = STSystemStatusLogServer();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = STSystemStatusDescriptionForDomain();
        v21 = 138543362;
        v22 = v19;
        _os_log_impl(&dword_26C4AD000, v18, OS_LOG_TYPE_DEFAULT, "Ignoring volatile data from unknown publisher for %{public}@ domain", &v21, 0xCu);
      }

      if (v14)
      {
        v14[2](v14);
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
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

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__STLocalStatusServer_updateDataForPublisherClient_domain_usingDiffProvider_completion___block_invoke;
  block[3] = &unk_279D34DC0;
  block[4] = self;
  v18 = v10;
  v20 = v12;
  v21 = a4;
  v19 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_sync(internalQueue, block);
}

- (void)_internalQueue_updateDataForPublisherClient:(uint64_t)a3 domain:(void *)a4 usingDiffProvider:(void *)a5 completion:
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a4;
  v11 = a5;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 88));
    v12 = [*(a1 + 24) objectForKey:a3];
    v13 = [v12 containsObject:v9];

    if (v13)
    {
      v14 = [(STLocalStatusServer *)a1 _internalQueue_dataForDomain:a3];
      v15 = v14;
      v28 = v9;
      v29 = v11;
      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = [(STLocalStatusServer *)a1 _internalQueue_fallbackDataForPublisherClient:v9 domain:a3];
      }

      v19 = v16;

      v30 = 0;
      v20 = v10[2](v10, v19, &v30);
      v21 = v30;
      v22 = [v19 mutableCopyWithZone:0];
      [v22 applyDiff:v20];
      v23 = [v22 copyWithZone:0];
      v24 = v10;
      v25 = *(a1 + 40);
      v26 = [v25 recordForKey:@"data"];
      [(STLocalStatusServer *)a1 _internalQueue_publishData:v23 forPublisherClient:v28 domain:a3 inDataChangeRecord:v26 withChangeContext:v21 completion:v29];

      v10 = v24;
      v11 = v29;

      v9 = v28;
    }

    else
    {
      v17 = STSystemStatusLogServer();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = STSystemStatusDescriptionForDomain();
        *buf = 138543362;
        v32 = v18;
        _os_log_impl(&dword_26C4AD000, v17, OS_LOG_TYPE_DEFAULT, "Ignoring diff from unknown publisher for %{public}@ domain", buf, 0xCu);
      }

      if (v11)
      {
        v11[2](v11);
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
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

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__STLocalStatusServer_updateVolatileDataForPublisherClient_domain_usingDiffProvider_completion___block_invoke;
  block[3] = &unk_279D34DC0;
  block[4] = self;
  v18 = v10;
  v20 = v12;
  v21 = a4;
  v19 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_sync(internalQueue, block);
}

- (void)_internalQueue_updateVolatileDataForPublisherClient:(uint64_t)a3 domain:(void *)a4 usingDiffProvider:(void *)a5 completion:
{
  v46 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a4;
  v11 = a5;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 88));
    v12 = [*(a1 + 24) objectForKey:a3];
    v13 = [v12 containsObject:v9];

    if (v13)
    {
      v14 = [(STLocalStatusServer *)a1 _internalQueue_volatileDataForDomain:a3];
      v15 = v14;
      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = [(STLocalStatusServer *)a1 _internalQueue_fallbackDataForPublisherClient:v9 domain:a3];
      }

      v20 = v16;

      v37 = v20;
      v38 = 0;
      v21 = (v10)[2](v10, v20, &v38);
      v22 = v38;
      v36 = *(a1 + 40);
      v23 = [v36 recordForKey:@"volatileData"];
      v24 = v21;
      v34 = v9;
      v25 = v9;
      v26 = v23;
      v27 = v22;
      v28 = v11;
      v35 = v25;
      if ([v24 isEmpty])
      {
        v9 = v34;
        if (v28)
        {
          v28[2](v28);
        }
      }

      else
      {
        v33 = v10;
        v29 = *(a1 + 32);
        v30 = [v29 objectForKey:v25];

        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v40 = __124__STLocalStatusServer__internalQueue_publishDiff_forPublisherClient_domain_inDataChangeRecord_withChangeContext_completion___block_invoke;
        v41 = &unk_279D34D20;
        v42 = v26;
        v43 = v24;
        v44 = v30;
        v45 = a3;
        v31 = v30;
        [(STLocalStatusServer *)a1 _internalQueue_mutateDataForDomain:a3 withChangeContext:v27 block:&buf];
        if (v28)
        {
          v28[2](v28);
        }

        v10 = v33;
        v9 = v34;
      }
    }

    else
    {
      v17 = STSystemStatusLogServer();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        STSystemStatusDescriptionForDomain();
        v19 = v18 = v10;
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v19;
        _os_log_impl(&dword_26C4AD000, v17, OS_LOG_TYPE_DEFAULT, "Ignoring volatile diff from unknown publisher for %{public}@ domain", &buf, 0xCu);

        v10 = v18;
      }

      if (v11)
      {
        v11[2](v11);
      }
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (id)dataForDomain:(unint64_t)a3 client:(id)a4
{
  v6 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__STLocalStatusServer_dataForDomain_client___block_invoke;
  v11[3] = &unk_279D34DE8;
  v13 = &v15;
  v14 = a3;
  v11[4] = self;
  v12 = v6;
  v8 = v6;
  dispatch_sync(internalQueue, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __44__STLocalStatusServer_dataForDomain_client___block_invoke(uint64_t a1)
{
  v2 = [(STLocalStatusServer *)*(a1 + 32) _internalQueue_presentationDataForDomain:?];
  v5 = [v2 copyWithZone:0];

  if (v5)
  {
    v3 = [(STLocalStatusServer *)*(a1 + 32) _internalQueue_dataForClient:*(a1 + 56) domain:v5 presentationData:?];
  }

  else
  {
    v3 = 0;
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v3);
  v4 = v5;
  if (v5)
  {

    v4 = v5;
  }
}

- (id)_internalQueue_presentationDataForDomain:(uint64_t)a1
{
  v22 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 88));
    v4 = [*(a1 + 40) currentDataForDomain:a2];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = *(a1 + 64);
    v6 = MEMORY[0x277CCABB0];
    v7 = v5;
    v8 = [v6 numberWithUnsignedInteger:{a2, 0}];
    v9 = [v7 objectForKey:v8];

    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        v13 = 0;
        v14 = v4;
        do
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v4 = [*(*(&v17 + 1) + 8 * v13) transformedDataForData:v14 domain:a2];

          ++v13;
          v14 = v4;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v4 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_internalQueue_dataForClient:(uint64_t)a3 domain:(void *)a4 presentationData:
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 88));
    v9 = v8;
    if (([v7 wantsUntransformedData] & 1) == 0)
    {
      v24 = v8;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v10 = *(a1 + 72);
      v11 = MEMORY[0x277CCABB0];
      v12 = v10;
      v13 = [v11 numberWithUnsignedInteger:a3];
      v14 = [v12 objectForKey:v13];

      v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v26;
        do
        {
          v18 = 0;
          v19 = v9;
          do
          {
            if (*v26 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v20 = [*(*(&v25 + 1) + 8 * v18) dataTransformerForClient:v7];
            v21 = [v20 transformedDataForData:v19 domain:a3];
            v9 = [v21 copyWithZone:0];

            ++v18;
            v19 = v9;
          }

          while (v16 != v18);
          v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v16);
      }

      v8 = v24;
    }
  }

  else
  {
    v9 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)registerClient:(id)a3 forDomain:(unint64_t)a4
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

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__STLocalStatusServer_registerClient_forDomain___block_invoke;
  block[3] = &unk_279D34D48;
  v10 = v6;
  v11 = a4;
  block[4] = self;
  v8 = v6;
  dispatch_async(internalQueue, block);
}

void __48__STLocalStatusServer_registerClient_forDomain___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[2];
  }

  v12 = v2;
  v3 = [v12 objectForKey:*(a1 + 48)];
  if (!v3)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:1];
    [v12 setObject:v3 forKey:*(a1 + 48)];
  }

  [v3 addObject:*(a1 + 40)];
  v4 = [(STLocalStatusServer *)*(a1 + 32) _internalQueue_presentationDataForDomain:?];
  v5 = [v4 copyWithZone:0];

  if (v5)
  {
    v6 = [(STLocalStatusServer *)*(a1 + 32) _internalQueue_dataForClient:*(a1 + 48) domain:v5 presentationData:?];
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v9 = *(a1 + 40);
  v10 = v6;
  if (v7)
  {
    dispatch_assert_queue_V2(*(v7 + 88));
    v11 = *(v7 + 96);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__STLocalStatusServer__internalQueue_notifyClient_ofData_forDomain___block_invoke;
    block[3] = &unk_279D34D48;
    v14 = v9;
    v15 = v10;
    v16 = v8;
    dispatch_async(v11, block);
  }
}

- (void)removeClient:(id)a3 forDomain:(unint64_t)a4
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

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__STLocalStatusServer_removeClient_forDomain___block_invoke;
  block[3] = &unk_279D34D48;
  v10 = v6;
  v11 = a4;
  block[4] = self;
  v8 = v6;
  dispatch_sync(internalQueue, block);
}

void __46__STLocalStatusServer_removeClient_forDomain___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[2];
  }

  v4 = v2;
  v3 = [v4 objectForKey:a1[6]];
  [v3 removeObject:a1[5]];
  if (![v3 count])
  {
    [v4 removeObjectForKey:a1[6]];
  }
}

- (void)reportUserInteraction:(id)a3 forClient:(id)a4 domain:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __62__STLocalStatusServer_reportUserInteraction_forClient_domain___block_invoke;
  v14[3] = &unk_279D34D20;
  v14[4] = self;
  v15 = v9;
  v16 = v8;
  v17 = a5;
  v12 = v8;
  v13 = v10;
  dispatch_async(internalQueue, v14);
}

void __62__STLocalStatusServer_reportUserInteraction_forClient_domain___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[2];
  }

  v3 = *(a1 + 56);
  v4 = v2;
  v5 = [v4 objectForKey:v3];
  v6 = [v5 containsObject:*(a1 + 40)];

  if (v6)
  {
    v7 = *(a1 + 32);
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __62__STLocalStatusServer_reportUserInteraction_forClient_domain___block_invoke_2;
    v18 = &unk_279D34E10;
    v8 = *(a1 + 56);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v19 = v9;
    v20 = v10;
    v11 = &v15;
    if (v7)
    {
      dispatch_assert_queue_V2(*(v7 + 88));
      v12 = [*(v7 + 24) objectForKey:{v8, v15, v16, v17, v18}];
      v13 = [v12 copy];

      if ([v13 count])
      {
        v14 = *(v7 + 96);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __94__STLocalStatusServer__internalQueue_enumeratePublisherClientsForDomain_withClientQueueBlock___block_invoke;
        block[3] = &unk_279D34F98;
        v22 = v13;
        v23 = v11;
        dispatch_async(v14, block);
      }
    }
  }
}

- (id)succinctDescription
{
  v2 = [(STLocalStatusServer *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STLocalStatusServer *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(STLocalStatusServer *)self succinctDescriptionBuilder];
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__STLocalStatusServer_descriptionBuilderWithMultilinePrefix___block_invoke;
  block[3] = &unk_279D34E60;
  v7 = v5;
  v12 = v7;
  v13 = v4;
  v14 = self;
  v8 = v4;
  dispatch_sync(internalQueue, block);
  v9 = v7;

  return v7;
}

void __61__STLocalStatusServer_descriptionBuilderWithMultilinePrefix___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __61__STLocalStatusServer_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v3[3] = &unk_279D34B18;
  v3[4] = a1[6];
  v4 = v1;
  [v4 appendBodySectionWithName:0 multilinePrefix:v2 block:v3];
}

void __61__STLocalStatusServer_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[5];
  }

  v3 = v2;
  v4 = [v3 recordForKey:@"data"];
  v5 = [v4 domainsWithData];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__STLocalStatusServer_descriptionBuilderWithMultilinePrefix___block_invoke_3;
  v13[3] = &unk_279D34E38;
  v14 = v4;
  v15 = *(a1 + 40);
  v6 = v4;
  [v5 enumerateWithBlock:v13];
  v7 = [v3 recordForKey:@"volatileData"];
  v8 = [v7 domainsWithData];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__STLocalStatusServer_descriptionBuilderWithMultilinePrefix___block_invoke_4;
  v10[3] = &unk_279D34E38;
  v11 = v7;
  v12 = *(a1 + 40);
  v9 = v7;
  [v8 enumerateWithBlock:v10];
}

void __61__STLocalStatusServer_descriptionBuilderWithMultilinePrefix___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v6 = [*(a1 + 32) currentDataForDomain:a2];
  v3 = *(a1 + 40);
  v4 = STSystemStatusDescriptionForDomain();
  v5 = [v3 appendObject:v6 withName:v4];
}

void __61__STLocalStatusServer_descriptionBuilderWithMultilinePrefix___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v7 = [*(a1 + 32) currentDataForDomain:a2];
  v3 = MEMORY[0x277CCACA8];
  v4 = STSystemStatusDescriptionForDomain();
  v5 = [v3 stringWithFormat:@"%@ (volatile)", v4];

  v6 = [*(a1 + 40) appendObject:v7 withName:v5];
}

- (void)addDataTransformer:(id)a3 forDomain:(unint64_t)a4
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

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__STLocalStatusServer_addDataTransformer_forDomain___block_invoke;
  block[3] = &unk_279D34D48;
  v10 = v6;
  v11 = a4;
  block[4] = self;
  v8 = v6;
  dispatch_async(internalQueue, block);
}

void __52__STLocalStatusServer_addDataTransformer_forDomain___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[8];
  }

  v3 = v2;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 48)];
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 48)];
    [v3 setObject:v5 forKey:v6];
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__STLocalStatusServer_addDataTransformer_forDomain___block_invoke_2;
  v11[3] = &unk_279D34B18;
  v9 = v5;
  v12 = v9;
  v10 = *(a1 + 40);
  v13 = v10;
  if (v7)
  {
    [(STLocalStatusServer *)v7 _internalQueue_mutateDataForDomain:v8 withChangeContext:0 block:v11];
    v10 = v13;
  }
}

- (void)removeDataTransformer:(id)a3 forDomain:(unint64_t)a4
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

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__STLocalStatusServer_removeDataTransformer_forDomain___block_invoke;
  block[3] = &unk_279D34D48;
  v10 = v6;
  v11 = a4;
  block[4] = self;
  v8 = v6;
  dispatch_async(internalQueue, block);
}

void __55__STLocalStatusServer_removeDataTransformer_forDomain___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__STLocalStatusServer_removeDataTransformer_forDomain___block_invoke_2;
  v4[3] = &unk_279D34D48;
  v4[4] = v1;
  v6 = v2;
  v3 = *(a1 + 40);
  v5 = v3;
  if (v1)
  {
    [(STLocalStatusServer *)v1 _internalQueue_mutateDataForDomain:v2 withChangeContext:0 block:v4];
    v3 = v5;
  }
}

void __55__STLocalStatusServer_removeDataTransformer_forDomain___block_invoke_2(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[8];
  }

  v3 = MEMORY[0x277CCABB0];
  v4 = a1[6];
  v5 = v2;
  v7 = [v3 numberWithUnsignedInteger:v4];
  v6 = [v5 objectForKey:v7];
  [v6 removeObject:a1[5]];
}

- (void)modifyDataTransformer:(id)a3 forDomain:(unint64_t)a4 usingBlock:(id)a5
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

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__STLocalStatusServer_modifyDataTransformer_forDomain_usingBlock___block_invoke;
  v13[3] = &unk_279D34E88;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_sync(internalQueue, v13);
}

void __66__STLocalStatusServer_modifyDataTransformer_forDomain_usingBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[8];
  }

  v3 = MEMORY[0x277CCABB0];
  v4 = *(a1 + 56);
  v5 = v2;
  v6 = [v3 numberWithUnsignedInteger:v4];
  v7 = [v5 objectForKey:v6];
  v8 = [v7 containsObject:*(a1 + 40)];

  if (v8)
  {
    v9 = *(a1 + 32);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __66__STLocalStatusServer_modifyDataTransformer_forDomain_usingBlock___block_invoke_2;
    v12[3] = &unk_279D34F98;
    v10 = *(a1 + 56);
    v14 = *(a1 + 48);
    v11 = *(a1 + 40);
    v13 = v11;
    if (v9)
    {
      [(STLocalStatusServer *)v9 _internalQueue_mutateDataForDomain:v10 withChangeContext:0 block:v12];
      v11 = v13;
    }
  }
}

- (void)addClientDataTransformerProvider:(id)a3 forDomain:(unint64_t)a4
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

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__STLocalStatusServer_addClientDataTransformerProvider_forDomain___block_invoke;
  block[3] = &unk_279D34D48;
  v10 = v6;
  v11 = a4;
  block[4] = self;
  v8 = v6;
  dispatch_async(internalQueue, block);
}

void __66__STLocalStatusServer_addClientDataTransformerProvider_forDomain___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[9];
  }

  v3 = v2;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 48)];
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 48)];
    [v3 setObject:v5 forKey:v6];
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__STLocalStatusServer_addClientDataTransformerProvider_forDomain___block_invoke_2;
  v11[3] = &unk_279D34B18;
  v9 = v5;
  v12 = v9;
  v10 = *(a1 + 40);
  v13 = v10;
  if (v7)
  {
    [(STLocalStatusServer *)v7 _internalQueue_mutateDataForDomain:v8 withChangeContext:0 block:v11];
    v10 = v13;
  }
}

- (void)removeClientDataTransformerProvider:(id)a3 forDomain:(unint64_t)a4
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

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__STLocalStatusServer_removeClientDataTransformerProvider_forDomain___block_invoke;
  block[3] = &unk_279D34D48;
  v10 = v6;
  v11 = a4;
  block[4] = self;
  v8 = v6;
  dispatch_async(internalQueue, block);
}

void __69__STLocalStatusServer_removeClientDataTransformerProvider_forDomain___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__STLocalStatusServer_removeClientDataTransformerProvider_forDomain___block_invoke_2;
  v4[3] = &unk_279D34D48;
  v4[4] = v1;
  v6 = v2;
  v3 = *(a1 + 40);
  v5 = v3;
  if (v1)
  {
    [(STLocalStatusServer *)v1 _internalQueue_mutateDataForDomain:v2 withChangeContext:0 block:v4];
    v3 = v5;
  }
}

void __69__STLocalStatusServer_removeClientDataTransformerProvider_forDomain___block_invoke_2(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[9];
  }

  v3 = MEMORY[0x277CCABB0];
  v4 = a1[6];
  v5 = v2;
  v7 = [v3 numberWithUnsignedInteger:v4];
  v6 = [v5 objectForKey:v7];
  [v6 removeObject:a1[5]];
}

- (void)modifyClientDataTransformerProvider:(id)a3 forDomain:(unint64_t)a4 usingBlock:(id)a5
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

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__STLocalStatusServer_modifyClientDataTransformerProvider_forDomain_usingBlock___block_invoke;
  v13[3] = &unk_279D34E88;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_sync(internalQueue, v13);
}

void __80__STLocalStatusServer_modifyClientDataTransformerProvider_forDomain_usingBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[9];
  }

  v3 = MEMORY[0x277CCABB0];
  v4 = *(a1 + 56);
  v5 = v2;
  v6 = [v3 numberWithUnsignedInteger:v4];
  v7 = [v5 objectForKey:v6];
  v8 = [v7 containsObject:*(a1 + 40)];

  if (v8)
  {
    v9 = *(a1 + 32);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __80__STLocalStatusServer_modifyClientDataTransformerProvider_forDomain_usingBlock___block_invoke_2;
    v12[3] = &unk_279D34F98;
    v10 = *(a1 + 56);
    v14 = *(a1 + 48);
    v11 = *(a1 + 40);
    v13 = v11;
    if (v9)
    {
      [(STLocalStatusServer *)v9 _internalQueue_mutateDataForDomain:v10 withChangeContext:0 block:v12];
      v11 = v13;
    }
  }
}

- (void)_internalQueue_mutateDataForDomain:(void *)a3 withChangeContext:(void *)a4 block:
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (a1 && v8)
  {
    v10 = [(STLocalStatusServer *)a1 _internalQueue_presentationDataForDomain:a2];
    v11 = [(STLocalStatusServer *)a1 _internalQueue_publishedDomains];
    v40 = [*(a1 + 16) objectForKey:a2];
    v12 = [v40 allObjects];
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __82__STLocalStatusServer__internalQueue_mutateDataForDomain_withChangeContext_block___block_invoke;
    v58[3] = &unk_279D34F48;
    v58[4] = a1;
    v60 = a2;
    v39 = v10;
    v59 = v39;
    v13 = [v12 bs_map:v58];
    v9[2](v9);
    v14 = [(STLocalStatusServer *)a1 _internalQueue_presentationDataForDomain:a2];
    v15 = [v14 copyWithZone:0];

    v16 = [v12 count];
    if (v16)
    {
      v17 = v16;
      v34 = v11;
      v35 = v9;
      v36 = v7;
      v37 = a2;
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __82__STLocalStatusServer__internalQueue_mutateDataForDomain_withChangeContext_block___block_invoke_2;
      v55[3] = &unk_279D34F48;
      v38 = a1;
      v55[4] = a1;
      v57 = a2;
      v56 = v15;
      v18 = [v12 bs_map:v55];
      v19 = [MEMORY[0x277CBEB18] array];
      v20 = [MEMORY[0x277CBEB18] array];
      v21 = 0;
      v33 = v15;
      do
      {
        v22 = [v13 objectAtIndex:{v21, v33}];
        v23 = [v18 objectAtIndex:v21];
        if (([v22 isEqual:v23] & 1) == 0)
        {
          v24 = [v12 objectAtIndex:v21];
          [v19 addObject:v24];

          [v20 addObject:v23];
        }

        ++v21;
      }

      while (v17 != v21);
      v25 = [v19 count];
      v7 = v36;
      if (v25)
      {
        v26 = *(v38 + 96);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __82__STLocalStatusServer__internalQueue_mutateDataForDomain_withChangeContext_block___block_invoke_3;
        block[3] = &unk_279D34F70;
        v53 = v25;
        v50 = v20;
        v51 = v19;
        v54 = v37;
        v52 = v36;
        dispatch_async(v26, block);
      }

      v11 = v34;
      v9 = v35;
      a2 = v37;
      a1 = v38;
      v15 = v33;
    }

    v27 = *(a1 + 96);
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __82__STLocalStatusServer__internalQueue_mutateDataForDomain_withChangeContext_block___block_invoke_4;
    v45[3] = &unk_279D34D48;
    v48 = a2;
    v28 = v15;
    v46 = v28;
    v47 = v7;
    dispatch_async(v27, v45);
    v29 = [(STLocalStatusServer *)a1 _internalQueue_publishedDomains];
    if (([v11 isEqual:v29] & 1) == 0)
    {
      v30 = [a1 delegate];
      v31 = v30;
      if (v30)
      {
        v32 = *(a1 + 96);
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __82__STLocalStatusServer__internalQueue_mutateDataForDomain_withChangeContext_block___block_invoke_152;
        v41[3] = &unk_279D34E60;
        v42 = v30;
        v43 = a1;
        v44 = v29;
        dispatch_async(v32, v41);
      }
    }
  }
}

void __92__STLocalStatusServer__internalQueue_replaceDataChangeRecord_forPublisherClient_completion___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [*(a1 + 32) objectForKey:a2];
  v6 = [v5 containsObject:*(a1 + 40)];

  if ((v6 & 1) == 0)
  {
    v7 = STSystemStatusLogServer();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = STSystemStatusDescriptionForDomain();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_26C4AD000, v7, OS_LOG_TYPE_DEFAULT, "Ignoring change record from unknown publisher for %{public}@ domain", &v10, 0xCu);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a3 = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __92__STLocalStatusServer__internalQueue_replaceDataChangeRecord_forPublisherClient_completion___block_invoke_142(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a4;
  v9 = a3;
  v10 = [a2 currentDataForDomain:a5];
  [v9 setData:v10 forClientKey:v8 domain:a5];
}

- (void)_internalQueue_replaceDataChangeRecord:(void *)a3 forPublisherClient:(void *)a4 inDataChangeRecord:(void *)a5 applyBlock:(void *)a6 completion:
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = *(a1 + 32);
  v17 = [v16 objectForKey:v12];

  v18 = [v11 domainsWithData];
  v19 = objc_alloc_init(MEMORY[0x277CF0C70]);
  [v19 unionSet:v18];
  v20 = [v13 domainsWithData];
  [v19 unionSet:v20];

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __122__STLocalStatusServer__internalQueue_replaceDataChangeRecord_forPublisherClient_inDataChangeRecord_applyBlock_completion___block_invoke;
  v27[3] = &unk_279D34F20;
  v27[4] = a1;
  v21 = v12;
  v28 = v21;
  v22 = v13;
  v29 = v22;
  v30 = v17;
  v31 = v18;
  v23 = v14;
  v33 = v23;
  v24 = v11;
  v32 = v24;
  v25 = v18;
  v26 = v17;
  [v19 enumerateWithBlock:v27];
  if (v15)
  {
    v15[2](v15);
  }
}

void __100__STLocalStatusServer__internalQueue_replaceVolatileDataChangeRecord_forPublisherClient_completion___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [*(a1 + 32) objectForKey:a2];
  v6 = [v5 containsObject:*(a1 + 40)];

  if ((v6 & 1) == 0)
  {
    v7 = STSystemStatusLogServer();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = STSystemStatusDescriptionForDomain();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_26C4AD000, v7, OS_LOG_TYPE_DEFAULT, "Ignoring volatile change record from unknown publisher for %{public}@ domain", &v10, 0xCu);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a3 = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_internalQueue_publishData:(void *)a3 forPublisherClient:(uint64_t)a4 domain:(void *)a5 inDataChangeRecord:(void *)a6 withChangeContext:(void *)a7 completion:
{
  v13 = a2;
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = [v15 currentDataForDomain:a4];
  v19 = v18;
  if (v13 | v18 && ([v18 isEqual:v13] & 1) == 0)
  {
    v20 = *(a1 + 32);
    v21 = [v20 objectForKey:v14];

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __124__STLocalStatusServer__internalQueue_publishData_forPublisherClient_domain_inDataChangeRecord_withChangeContext_completion___block_invoke;
    v23[3] = &unk_279D34D20;
    v24 = v15;
    v25 = v13;
    v26 = v21;
    v27 = a4;
    v22 = v21;
    [(STLocalStatusServer *)a1 _internalQueue_mutateDataForDomain:a4 withChangeContext:v16 block:v23];
    if (v17)
    {
      v17[2](v17);
    }
  }

  else if (v17)
  {
    v17[2](v17);
  }
}

- (id)_internalQueue_fallbackDataForPublisherClient:(uint64_t)a3 domain:
{
  if (a1)
  {
    v5 = *(a1 + 88);
    v6 = a2;
    dispatch_assert_queue_V2(v5);
    v7 = [*(a1 + 32) objectForKey:v6];

    v8 = [*(a1 + 40) recordForKey:@"volatileData"];
    v9 = [v8 fallbackDataForClientKey:v7 domain:a3];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __122__STLocalStatusServer__internalQueue_replaceDataChangeRecord_forPublisherClient_inDataChangeRecord_applyBlock_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __122__STLocalStatusServer__internalQueue_replaceDataChangeRecord_forPublisherClient_inDataChangeRecord_applyBlock_completion___block_invoke_2;
  v9[3] = &unk_279D34EF8;
  v8 = *(a1 + 32);
  v4 = *(&v8 + 1);
  v15 = a2;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  v12 = *(a1 + 64);
  v14 = *(a1 + 80);
  v13 = *(a1 + 72);
  [(STLocalStatusServer *)v8 _internalQueue_mutateDataForDomain:a2 withChangeContext:0 block:v9];
}

void __122__STLocalStatusServer__internalQueue_replaceDataChangeRecord_forPublisherClient_inDataChangeRecord_applyBlock_completion___block_invoke_2(uint64_t a1)
{
  v6 = [(STLocalStatusServer *)*(a1 + 32) _internalQueue_fallbackDataForPublisherClient:*(a1 + 88) domain:?];
  [*(a1 + 48) removeAllEntriesForClientKey:*(a1 + 56) domain:*(a1 + 88)];
  if ([*(a1 + 64) containsValue:*(a1 + 88)])
  {
    [*(a1 + 48) setFallbackData:v6 forClientKey:*(a1 + 56) domain:*(a1 + 88)];
    v2 = *(a1 + 72);
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 88);
    (*(*(a1 + 80) + 16))();
  }
}

void __82__STLocalStatusServer__internalQueue_mutateDataForDomain_withChangeContext_block___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v2 = 0;
    do
    {
      v3 = [*(a1 + 32) objectAtIndex:v2];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {

        v3 = 0;
      }

      v4 = [*(a1 + 40) objectAtIndex:v2];
      [v4 observeData:v3 forDomain:*(a1 + 64) withChangeContext:*(a1 + 48)];

      ++v2;
    }

    while (v2 < *(a1 + 56));
  }
}

void __82__STLocalStatusServer__internalQueue_mutateDataForDomain_withChangeContext_block___block_invoke_4(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (STSystemStatusIsInternalLoggingEnabled())
  {
    v2 = STSystemStatusLogServer();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = a1[6];
      v4 = STSystemStatusDescriptionForDomain();
      v5 = a1[4];
      v6 = a1[5];
      v8 = 138543874;
      v9 = v4;
      v10 = 2114;
      v11 = v5;
      v12 = 2114;
      v13 = v6;
      _os_log_impl(&dword_26C4AD000, v2, OS_LOG_TYPE_DEFAULT, "Server data changed for %{public}@ domain: %{public}@ -- context: %{public}@", &v8, 0x20u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __94__STLocalStatusServer__internalQueue_enumeratePublisherClientsForDomain_withClientQueueBlock___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        (*(*(a1 + 40) + 16))(*(a1 + 40));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end