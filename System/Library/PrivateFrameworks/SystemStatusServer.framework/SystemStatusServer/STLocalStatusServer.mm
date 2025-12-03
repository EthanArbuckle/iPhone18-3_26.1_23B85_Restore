@interface STLocalStatusServer
- (BSIntegerSet)publishedDomains;
- (STLocalStatusServer)init;
- (STLocalStatusServerDelegate)delegate;
- (id)_internalQueue_dataForClient:(uint64_t)client domain:(void *)domain presentationData:;
- (id)_internalQueue_dataForDomain:(uint64_t)domain;
- (id)_internalQueue_fallbackDataForPublisherClient:(uint64_t)client domain:;
- (id)_internalQueue_presentationDataForDomain:(uint64_t)domain;
- (id)_internalQueue_publishedDomains;
- (id)_internalQueue_volatileDataForDomain:(uint64_t)domain;
- (id)dataForDomain:(unint64_t)domain client:(id)client;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)internalQueuePublisherServerHandle;
- (id)publishedDataForDomain:(unint64_t)domain;
- (id)publishedVolatileDataForDomain:(unint64_t)domain;
- (id)succinctDescription;
- (void)_internalQueue_mutateDataForDomain:(void *)domain withChangeContext:(void *)context block:;
- (void)_internalQueue_publishData:(void *)data forPublisherClient:(uint64_t)client domain:(void *)domain inDataChangeRecord:(void *)record withChangeContext:(void *)context completion:;
- (void)_internalQueue_publishData:(void *)data forPublisherClient:(uint64_t)client domain:(void *)domain withChangeContext:(void *)context completion:;
- (void)_internalQueue_publishVolatileData:(void *)data forPublisherClient:(uint64_t)client domain:(void *)domain withChangeContext:(void *)context completion:;
- (void)_internalQueue_registerPublisherClient:(uint64_t)client forDomain:(void *)domain fallbackData:;
- (void)_internalQueue_removePublisherClient:(uint64_t)client forDomain:;
- (void)_internalQueue_replaceDataChangeRecord:(void *)record forPublisherClient:(void *)client completion:;
- (void)_internalQueue_replaceDataChangeRecord:(void *)record forPublisherClient:(void *)client inDataChangeRecord:(void *)changeRecord applyBlock:(void *)block completion:;
- (void)_internalQueue_replaceVolatileDataChangeRecord:(void *)record forPublisherClient:(void *)client completion:;
- (void)_internalQueue_updateDataForPublisherClient:(uint64_t)client domain:(void *)domain usingDiffProvider:(void *)provider completion:;
- (void)_internalQueue_updateVolatileDataForPublisherClient:(uint64_t)client domain:(void *)domain usingDiffProvider:(void *)provider completion:;
- (void)addClientDataTransformerProvider:(id)provider forDomain:(unint64_t)domain;
- (void)addDataTransformer:(id)transformer forDomain:(unint64_t)domain;
- (void)modifyClientDataTransformerProvider:(id)provider forDomain:(unint64_t)domain usingBlock:(id)block;
- (void)modifyDataTransformer:(id)transformer forDomain:(unint64_t)domain usingBlock:(id)block;
- (void)publishData:(id)data forPublisherClient:(id)client domain:(unint64_t)domain withChangeContext:(id)context completion:(id)completion;
- (void)publishVolatileData:(id)data forPublisherClient:(id)client domain:(unint64_t)domain withChangeContext:(id)context completion:(id)completion;
- (void)registerClient:(id)client forDomain:(unint64_t)domain;
- (void)registerPublisherClient:(id)client forDomain:(unint64_t)domain fallbackData:(id)data;
- (void)removeClient:(id)client forDomain:(unint64_t)domain;
- (void)removeClientDataTransformerProvider:(id)provider forDomain:(unint64_t)domain;
- (void)removeDataTransformer:(id)transformer forDomain:(unint64_t)domain;
- (void)removePublisherClient:(id)client forDomain:(unint64_t)domain;
- (void)replaceDataChangeRecord:(id)record forPublisherClient:(id)client completion:(id)completion;
- (void)replaceVolatileDataChangeRecord:(id)record forPublisherClient:(id)client completion:(id)completion;
- (void)reportUserInteraction:(id)interaction forClient:(id)client domain:(unint64_t)domain;
- (void)setDelegate:(id)delegate;
- (void)updateDataForPublisherClient:(id)client domain:(unint64_t)domain usingDiffProvider:(id)provider completion:(id)completion;
- (void)updateVolatileDataForPublisherClient:(id)client domain:(unint64_t)domain usingDiffProvider:(id)provider completion:(id)completion;
@end

@implementation STLocalStatusServer

- (id)_internalQueue_publishedDomains
{
  selfCopy = self;
  if (self)
  {
    dispatch_assert_queue_V2(self[11]);
    v2 = [selfCopy[5] recordForKey:@"volatileData"];
    domainsWithSignificantData = [v2 domainsWithSignificantData];
    selfCopy = [domainsWithSignificantData copy];
  }

  return selfCopy;
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

    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    changeLogKeysByPublisherClient = v2->_changeLogKeysByPublisherClient;
    v2->_changeLogKeysByPublisherClient = weakToStrongObjectsMapTable;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    dataTransformersByDomain = v2->_dataTransformersByDomain;
    v2->_dataTransformersByDomain = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    clientDataTransformerProvidersByDomain = v2->_clientDataTransformerProvidersByDomain;
    v2->_clientDataTransformerProvidersByDomain = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    domainsByChangeLogKey = v2->_domainsByChangeLogKey;
    v2->_domainsByChangeLogKey = dictionary3;

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

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
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
  v8 = delegateCopy;
  v6 = delegateCopy;
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

- (id)publishedDataForDomain:(unint64_t)domain
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
  block[6] = domain;
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

- (id)_internalQueue_dataForDomain:(uint64_t)domain
{
  if (domain)
  {
    dispatch_assert_queue_V2(*(domain + 88));
    v4 = [*(domain + 40) recordForKey:@"data"];
    v5 = [v4 currentDataForDomain:a2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)publishedVolatileDataForDomain:(unint64_t)domain
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
  block[6] = domain;
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

- (id)_internalQueue_volatileDataForDomain:(uint64_t)domain
{
  if (domain)
  {
    dispatch_assert_queue_V2(*(domain + 88));
    v4 = [*(domain + 40) recordForKey:@"volatileData"];
    v5 = [v4 currentDataForDomain:a2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)registerPublisherClient:(id)client forDomain:(unint64_t)domain fallbackData:(id)data
{
  clientCopy = client;
  dataCopy = data;
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
  v14 = clientCopy;
  v15 = dataCopy;
  domainCopy = domain;
  v11 = dataCopy;
  v12 = clientCopy;
  dispatch_sync(internalQueue, v13);
}

- (void)_internalQueue_registerPublisherClient:(uint64_t)client forDomain:(void *)domain fallbackData:
{
  v18 = a2;
  if (self)
  {
    v7 = *(self + 88);
    domainCopy = domain;
    dispatch_assert_queue_V2(v7);
    v9 = *(self + 24);
    v10 = [v9 objectForKey:client];
    if (!v10)
    {
      v10 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:1];
      [v9 setObject:v10 forKey:client];
    }

    [v10 addObject:v18];
    v11 = *(self + 32);
    uUIDString = [v11 objectForKey:v18];
    if (!uUIDString)
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];

      [v11 setObject:uUIDString forKey:v18];
    }

    v14 = *(self + 80);
    array = [v14 objectForKey:uUIDString];
    if (!array)
    {
      array = [MEMORY[0x277CBEB18] array];
      [v14 setObject:array forKey:uUIDString];
    }

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:client];
    [array addObject:v16];

    v17 = [*(self + 40) recordForKey:@"volatileData"];
    [v17 setFallbackData:domainCopy forClientKey:uUIDString domain:client];
  }
}

- (void)removePublisherClient:(id)client forDomain:(unint64_t)domain
{
  clientCopy = client;
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
  v10 = clientCopy;
  domainCopy = domain;
  v8 = clientCopy;
  dispatch_sync(internalQueue, block);
}

- (void)_internalQueue_removePublisherClient:(uint64_t)client forDomain:
{
  v5 = a2;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 88));
    v6 = *(self + 24);
    v7 = [v6 objectForKey:client];
    [v7 removeObject:v5];
    v8 = *(self + 32);
    v9 = [v8 objectForKey:v5];
    v10 = *(self + 40);
    v11 = [v10 recordForKey:@"volatileData"];

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __70__STLocalStatusServer__internalQueue_removePublisherClient_forDomain___block_invoke;
    v17[3] = &unk_279D34D48;
    v12 = v11;
    v18 = v12;
    v13 = v9;
    v19 = v13;
    clientCopy = client;
    [(STLocalStatusServer *)self _internalQueue_mutateDataForDomain:client withChangeContext:0 block:v17];
    if (![v7 count])
    {
      [v6 removeObjectForKey:client];
    }

    v14 = *(self + 80);
    v15 = [v14 objectForKey:v13];
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:client];
    [v15 removeObject:v16];

    if (![v15 count])
    {
      [v14 removeObjectForKey:v13];
      [v8 removeObjectForKey:v5];
    }
  }
}

- (void)replaceDataChangeRecord:(id)record forPublisherClient:(id)client completion:(id)completion
{
  recordCopy = record;
  clientCopy = client;
  completionCopy = completion;
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
  v16 = recordCopy;
  v17 = clientCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = clientCopy;
  v14 = recordCopy;
  dispatch_sync(internalQueue, v15);
}

- (void)_internalQueue_replaceDataChangeRecord:(void *)record forPublisherClient:(void *)client completion:
{
  v7 = a2;
  recordCopy = record;
  clientCopy = client;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 88));
    domainsWithData = [v7 domainsWithData];
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v11 = *(self + 24);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __92__STLocalStatusServer__internalQueue_replaceDataChangeRecord_forPublisherClient_completion___block_invoke;
    v16[3] = &unk_279D34EB0;
    v12 = v11;
    v17 = v12;
    v13 = recordCopy;
    v18 = v13;
    v19 = &v20;
    [domainsWithData enumerateWithBlock:v16];
    if (v21[3])
    {
      if (clientCopy)
      {
        clientCopy[2](clientCopy);
      }
    }

    else
    {
      v14 = *(self + 40);
      v15 = [v14 recordForKey:@"data"];
      [(STLocalStatusServer *)self _internalQueue_replaceDataChangeRecord:v7 forPublisherClient:v13 inDataChangeRecord:v15 applyBlock:&__block_literal_global_145 completion:clientCopy];
    }

    _Block_object_dispose(&v20, 8);
  }
}

- (void)replaceVolatileDataChangeRecord:(id)record forPublisherClient:(id)client completion:(id)completion
{
  recordCopy = record;
  clientCopy = client;
  completionCopy = completion;
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
  v16 = recordCopy;
  v17 = clientCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = clientCopy;
  v14 = recordCopy;
  dispatch_sync(internalQueue, v15);
}

- (void)_internalQueue_replaceVolatileDataChangeRecord:(void *)record forPublisherClient:(void *)client completion:
{
  v7 = a2;
  recordCopy = record;
  clientCopy = client;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 88));
    domainsWithData = [v7 domainsWithData];
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v11 = *(self + 24);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __100__STLocalStatusServer__internalQueue_replaceVolatileDataChangeRecord_forPublisherClient_completion___block_invoke;
    v16[3] = &unk_279D34EB0;
    v12 = v11;
    v17 = v12;
    v13 = recordCopy;
    v18 = v13;
    v19 = &v20;
    [domainsWithData enumerateWithBlock:v16];
    if (v21[3])
    {
      if (clientCopy)
      {
        clientCopy[2](clientCopy);
      }
    }

    else
    {
      v14 = *(self + 40);
      v15 = [v14 recordForKey:@"volatileData"];
      [(STLocalStatusServer *)self _internalQueue_replaceDataChangeRecord:v7 forPublisherClient:v13 inDataChangeRecord:v15 applyBlock:&__block_literal_global_148 completion:clientCopy];
    }

    _Block_object_dispose(&v20, 8);
  }
}

- (void)publishData:(id)data forPublisherClient:(id)client domain:(unint64_t)domain withChangeContext:(id)context completion:(id)completion
{
  dataCopy = data;
  clientCopy = client;
  contextCopy = context;
  completionCopy = completion;
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
  v22 = dataCopy;
  v23 = clientCopy;
  v24 = contextCopy;
  v25 = completionCopy;
  domainCopy = domain;
  v17 = completionCopy;
  v18 = contextCopy;
  v19 = clientCopy;
  v20 = dataCopy;
  dispatch_sync(internalQueue, v21);
}

- (void)_internalQueue_publishData:(void *)data forPublisherClient:(uint64_t)client domain:(void *)domain withChangeContext:(void *)context completion:
{
  v23 = *MEMORY[0x277D85DE8];
  v11 = a2;
  dataCopy = data;
  domainCopy = domain;
  contextCopy = context;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 88));
    v15 = [*(self + 24) objectForKey:client];
    v16 = [v15 containsObject:dataCopy];

    if (v16)
    {
      v17 = [*(self + 40) recordForKey:@"data"];
      [(STLocalStatusServer *)self _internalQueue_publishData:v11 forPublisherClient:dataCopy domain:client inDataChangeRecord:v17 withChangeContext:domainCopy completion:contextCopy];
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

      if (contextCopy)
      {
        contextCopy[2](contextCopy);
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)publishVolatileData:(id)data forPublisherClient:(id)client domain:(unint64_t)domain withChangeContext:(id)context completion:(id)completion
{
  dataCopy = data;
  clientCopy = client;
  contextCopy = context;
  completionCopy = completion;
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
  v22 = dataCopy;
  v23 = clientCopy;
  v24 = contextCopy;
  v25 = completionCopy;
  domainCopy = domain;
  v17 = completionCopy;
  v18 = contextCopy;
  v19 = clientCopy;
  v20 = dataCopy;
  dispatch_sync(internalQueue, v21);
}

- (void)_internalQueue_publishVolatileData:(void *)data forPublisherClient:(uint64_t)client domain:(void *)domain withChangeContext:(void *)context completion:
{
  v23 = *MEMORY[0x277D85DE8];
  v11 = a2;
  dataCopy = data;
  domainCopy = domain;
  contextCopy = context;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 88));
    v15 = [*(self + 24) objectForKey:client];
    v16 = [v15 containsObject:dataCopy];

    if (v16)
    {
      v17 = [*(self + 40) recordForKey:@"volatileData"];
      [(STLocalStatusServer *)self _internalQueue_publishData:v11 forPublisherClient:dataCopy domain:client inDataChangeRecord:v17 withChangeContext:domainCopy completion:contextCopy];
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

      if (contextCopy)
      {
        contextCopy[2](contextCopy);
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)updateDataForPublisherClient:(id)client domain:(unint64_t)domain usingDiffProvider:(id)provider completion:(id)completion
{
  clientCopy = client;
  providerCopy = provider;
  completionCopy = completion;
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
  v18 = clientCopy;
  v20 = completionCopy;
  domainCopy = domain;
  v19 = providerCopy;
  v14 = completionCopy;
  v15 = providerCopy;
  v16 = clientCopy;
  dispatch_sync(internalQueue, block);
}

- (void)_internalQueue_updateDataForPublisherClient:(uint64_t)client domain:(void *)domain usingDiffProvider:(void *)provider completion:
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = a2;
  domainCopy = domain;
  providerCopy = provider;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 88));
    v12 = [*(self + 24) objectForKey:client];
    v13 = [v12 containsObject:v9];

    if (v13)
    {
      v14 = [(STLocalStatusServer *)self _internalQueue_dataForDomain:client];
      v15 = v14;
      v28 = v9;
      v29 = providerCopy;
      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = [(STLocalStatusServer *)self _internalQueue_fallbackDataForPublisherClient:v9 domain:client];
      }

      v19 = v16;

      v30 = 0;
      v20 = domainCopy[2](domainCopy, v19, &v30);
      v21 = v30;
      v22 = [v19 mutableCopyWithZone:0];
      [v22 applyDiff:v20];
      v23 = [v22 copyWithZone:0];
      v24 = domainCopy;
      v25 = *(self + 40);
      v26 = [v25 recordForKey:@"data"];
      [(STLocalStatusServer *)self _internalQueue_publishData:v23 forPublisherClient:v28 domain:client inDataChangeRecord:v26 withChangeContext:v21 completion:v29];

      domainCopy = v24;
      providerCopy = v29;

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

      if (providerCopy)
      {
        providerCopy[2](providerCopy);
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)updateVolatileDataForPublisherClient:(id)client domain:(unint64_t)domain usingDiffProvider:(id)provider completion:(id)completion
{
  clientCopy = client;
  providerCopy = provider;
  completionCopy = completion;
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
  v18 = clientCopy;
  v20 = completionCopy;
  domainCopy = domain;
  v19 = providerCopy;
  v14 = completionCopy;
  v15 = providerCopy;
  v16 = clientCopy;
  dispatch_sync(internalQueue, block);
}

- (void)_internalQueue_updateVolatileDataForPublisherClient:(uint64_t)client domain:(void *)domain usingDiffProvider:(void *)provider completion:
{
  v46 = *MEMORY[0x277D85DE8];
  v9 = a2;
  domainCopy = domain;
  providerCopy = provider;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 88));
    v12 = [*(self + 24) objectForKey:client];
    v13 = [v12 containsObject:v9];

    if (v13)
    {
      v14 = [(STLocalStatusServer *)self _internalQueue_volatileDataForDomain:client];
      v15 = v14;
      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = [(STLocalStatusServer *)self _internalQueue_fallbackDataForPublisherClient:v9 domain:client];
      }

      v20 = v16;

      v37 = v20;
      v38 = 0;
      v21 = (domainCopy)[2](domainCopy, v20, &v38);
      v22 = v38;
      v36 = *(self + 40);
      v23 = [v36 recordForKey:@"volatileData"];
      v24 = v21;
      v34 = v9;
      v25 = v9;
      v26 = v23;
      v27 = v22;
      v28 = providerCopy;
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
        v33 = domainCopy;
        v29 = *(self + 32);
        v30 = [v29 objectForKey:v25];

        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v40 = __124__STLocalStatusServer__internalQueue_publishDiff_forPublisherClient_domain_inDataChangeRecord_withChangeContext_completion___block_invoke;
        v41 = &unk_279D34D20;
        v42 = v26;
        v43 = v24;
        v44 = v30;
        clientCopy = client;
        v31 = v30;
        [(STLocalStatusServer *)self _internalQueue_mutateDataForDomain:client withChangeContext:v27 block:&buf];
        if (v28)
        {
          v28[2](v28);
        }

        domainCopy = v33;
        v9 = v34;
      }
    }

    else
    {
      v17 = STSystemStatusLogServer();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        STSystemStatusDescriptionForDomain();
        v19 = v18 = domainCopy;
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v19;
        _os_log_impl(&dword_26C4AD000, v17, OS_LOG_TYPE_DEFAULT, "Ignoring volatile diff from unknown publisher for %{public}@ domain", &buf, 0xCu);

        domainCopy = v18;
      }

      if (providerCopy)
      {
        providerCopy[2](providerCopy);
      }
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (id)dataForDomain:(unint64_t)domain client:(id)client
{
  clientCopy = client;
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
  domainCopy = domain;
  v11[4] = self;
  v12 = clientCopy;
  v8 = clientCopy;
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

- (id)_internalQueue_presentationDataForDomain:(uint64_t)domain
{
  v22 = *MEMORY[0x277D85DE8];
  if (domain)
  {
    dispatch_assert_queue_V2(*(domain + 88));
    v4 = [*(domain + 40) currentDataForDomain:a2];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = *(domain + 64);
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

- (id)_internalQueue_dataForClient:(uint64_t)client domain:(void *)domain presentationData:
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a2;
  domainCopy = domain;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 88));
    v9 = domainCopy;
    if (([v7 wantsUntransformedData] & 1) == 0)
    {
      v24 = domainCopy;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v10 = *(self + 72);
      v11 = MEMORY[0x277CCABB0];
      v12 = v10;
      v13 = [v11 numberWithUnsignedInteger:client];
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
            v21 = [v20 transformedDataForData:v19 domain:client];
            v9 = [v21 copyWithZone:0];

            ++v18;
            v19 = v9;
          }

          while (v16 != v18);
          v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v16);
      }

      domainCopy = v24;
    }
  }

  else
  {
    v9 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)registerClient:(id)client forDomain:(unint64_t)domain
{
  clientCopy = client;
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
  v10 = clientCopy;
  domainCopy = domain;
  block[4] = self;
  v8 = clientCopy;
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

- (void)removeClient:(id)client forDomain:(unint64_t)domain
{
  clientCopy = client;
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
  v10 = clientCopy;
  domainCopy = domain;
  block[4] = self;
  v8 = clientCopy;
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

- (void)reportUserInteraction:(id)interaction forClient:(id)client domain:(unint64_t)domain
{
  interactionCopy = interaction;
  clientCopy = client;
  v10 = clientCopy;
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
  v15 = clientCopy;
  v16 = interactionCopy;
  domainCopy = domain;
  v12 = interactionCopy;
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
  succinctDescriptionBuilder = [(STLocalStatusServer *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STLocalStatusServer *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(STLocalStatusServer *)self succinctDescriptionBuilder];
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
  v7 = succinctDescriptionBuilder;
  v12 = v7;
  v13 = prefixCopy;
  selfCopy = self;
  v8 = prefixCopy;
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

- (void)addDataTransformer:(id)transformer forDomain:(unint64_t)domain
{
  transformerCopy = transformer;
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
  v10 = transformerCopy;
  domainCopy = domain;
  block[4] = self;
  v8 = transformerCopy;
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

- (void)removeDataTransformer:(id)transformer forDomain:(unint64_t)domain
{
  transformerCopy = transformer;
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
  v10 = transformerCopy;
  domainCopy = domain;
  block[4] = self;
  v8 = transformerCopy;
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

- (void)modifyDataTransformer:(id)transformer forDomain:(unint64_t)domain usingBlock:(id)block
{
  transformerCopy = transformer;
  blockCopy = block;
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
  v14 = transformerCopy;
  v15 = blockCopy;
  domainCopy = domain;
  v11 = blockCopy;
  v12 = transformerCopy;
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

- (void)addClientDataTransformerProvider:(id)provider forDomain:(unint64_t)domain
{
  providerCopy = provider;
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
  v10 = providerCopy;
  domainCopy = domain;
  block[4] = self;
  v8 = providerCopy;
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

- (void)removeClientDataTransformerProvider:(id)provider forDomain:(unint64_t)domain
{
  providerCopy = provider;
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
  v10 = providerCopy;
  domainCopy = domain;
  block[4] = self;
  v8 = providerCopy;
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

- (void)modifyClientDataTransformerProvider:(id)provider forDomain:(unint64_t)domain usingBlock:(id)block
{
  providerCopy = provider;
  blockCopy = block;
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
  v14 = providerCopy;
  v15 = blockCopy;
  domainCopy = domain;
  v11 = blockCopy;
  v12 = providerCopy;
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

- (void)_internalQueue_mutateDataForDomain:(void *)domain withChangeContext:(void *)context block:
{
  domainCopy = domain;
  contextCopy = context;
  v9 = contextCopy;
  if (self && contextCopy)
  {
    v10 = [(STLocalStatusServer *)self _internalQueue_presentationDataForDomain:a2];
    _internalQueue_publishedDomains = [(STLocalStatusServer *)self _internalQueue_publishedDomains];
    v40 = [*(self + 16) objectForKey:a2];
    allObjects = [v40 allObjects];
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __82__STLocalStatusServer__internalQueue_mutateDataForDomain_withChangeContext_block___block_invoke;
    v58[3] = &unk_279D34F48;
    v58[4] = self;
    v60 = a2;
    v39 = v10;
    v59 = v39;
    v13 = [allObjects bs_map:v58];
    v9[2](v9);
    v14 = [(STLocalStatusServer *)self _internalQueue_presentationDataForDomain:a2];
    v15 = [v14 copyWithZone:0];

    v16 = [allObjects count];
    if (v16)
    {
      v17 = v16;
      v34 = _internalQueue_publishedDomains;
      v35 = v9;
      v36 = domainCopy;
      v37 = a2;
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __82__STLocalStatusServer__internalQueue_mutateDataForDomain_withChangeContext_block___block_invoke_2;
      v55[3] = &unk_279D34F48;
      selfCopy = self;
      v55[4] = self;
      v57 = a2;
      v56 = v15;
      v18 = [allObjects bs_map:v55];
      array = [MEMORY[0x277CBEB18] array];
      array2 = [MEMORY[0x277CBEB18] array];
      v21 = 0;
      v33 = v15;
      do
      {
        v22 = [v13 objectAtIndex:{v21, v33}];
        v23 = [v18 objectAtIndex:v21];
        if (([v22 isEqual:v23] & 1) == 0)
        {
          v24 = [allObjects objectAtIndex:v21];
          [array addObject:v24];

          [array2 addObject:v23];
        }

        ++v21;
      }

      while (v17 != v21);
      v25 = [array count];
      domainCopy = v36;
      if (v25)
      {
        v26 = *(selfCopy + 96);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __82__STLocalStatusServer__internalQueue_mutateDataForDomain_withChangeContext_block___block_invoke_3;
        block[3] = &unk_279D34F70;
        v53 = v25;
        v50 = array2;
        v51 = array;
        v54 = v37;
        v52 = v36;
        dispatch_async(v26, block);
      }

      _internalQueue_publishedDomains = v34;
      v9 = v35;
      a2 = v37;
      self = selfCopy;
      v15 = v33;
    }

    v27 = *(self + 96);
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __82__STLocalStatusServer__internalQueue_mutateDataForDomain_withChangeContext_block___block_invoke_4;
    v45[3] = &unk_279D34D48;
    v48 = a2;
    v28 = v15;
    v46 = v28;
    v47 = domainCopy;
    dispatch_async(v27, v45);
    _internalQueue_publishedDomains2 = [(STLocalStatusServer *)self _internalQueue_publishedDomains];
    if (([_internalQueue_publishedDomains isEqual:_internalQueue_publishedDomains2] & 1) == 0)
    {
      delegate = [self delegate];
      v31 = delegate;
      if (delegate)
      {
        v32 = *(self + 96);
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __82__STLocalStatusServer__internalQueue_mutateDataForDomain_withChangeContext_block___block_invoke_152;
        v41[3] = &unk_279D34E60;
        v42 = delegate;
        selfCopy2 = self;
        v44 = _internalQueue_publishedDomains2;
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

- (void)_internalQueue_replaceDataChangeRecord:(void *)record forPublisherClient:(void *)client inDataChangeRecord:(void *)changeRecord applyBlock:(void *)block completion:
{
  v11 = a2;
  recordCopy = record;
  clientCopy = client;
  changeRecordCopy = changeRecord;
  blockCopy = block;
  v16 = *(self + 32);
  v17 = [v16 objectForKey:recordCopy];

  domainsWithData = [v11 domainsWithData];
  v19 = objc_alloc_init(MEMORY[0x277CF0C70]);
  [v19 unionSet:domainsWithData];
  domainsWithData2 = [clientCopy domainsWithData];
  [v19 unionSet:domainsWithData2];

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __122__STLocalStatusServer__internalQueue_replaceDataChangeRecord_forPublisherClient_inDataChangeRecord_applyBlock_completion___block_invoke;
  v27[3] = &unk_279D34F20;
  v27[4] = self;
  v21 = recordCopy;
  v28 = v21;
  v22 = clientCopy;
  v29 = v22;
  v30 = v17;
  v31 = domainsWithData;
  v23 = changeRecordCopy;
  v33 = v23;
  v24 = v11;
  v32 = v24;
  v25 = domainsWithData;
  v26 = v17;
  [v19 enumerateWithBlock:v27];
  if (blockCopy)
  {
    blockCopy[2](blockCopy);
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

- (void)_internalQueue_publishData:(void *)data forPublisherClient:(uint64_t)client domain:(void *)domain inDataChangeRecord:(void *)record withChangeContext:(void *)context completion:
{
  v13 = a2;
  dataCopy = data;
  domainCopy = domain;
  recordCopy = record;
  contextCopy = context;
  v18 = [domainCopy currentDataForDomain:client];
  v19 = v18;
  if (v13 | v18 && ([v18 isEqual:v13] & 1) == 0)
  {
    v20 = *(self + 32);
    v21 = [v20 objectForKey:dataCopy];

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __124__STLocalStatusServer__internalQueue_publishData_forPublisherClient_domain_inDataChangeRecord_withChangeContext_completion___block_invoke;
    v23[3] = &unk_279D34D20;
    v24 = domainCopy;
    v25 = v13;
    v26 = v21;
    clientCopy = client;
    v22 = v21;
    [(STLocalStatusServer *)self _internalQueue_mutateDataForDomain:client withChangeContext:recordCopy block:v23];
    if (contextCopy)
    {
      contextCopy[2](contextCopy);
    }
  }

  else if (contextCopy)
  {
    contextCopy[2](contextCopy);
  }
}

- (id)_internalQueue_fallbackDataForPublisherClient:(uint64_t)client domain:
{
  if (self)
  {
    v5 = *(self + 88);
    v6 = a2;
    dispatch_assert_queue_V2(v5);
    v7 = [*(self + 32) objectForKey:v6];

    v8 = [*(self + 40) recordForKey:@"volatileData"];
    v9 = [v8 fallbackDataForClientKey:v7 domain:client];
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