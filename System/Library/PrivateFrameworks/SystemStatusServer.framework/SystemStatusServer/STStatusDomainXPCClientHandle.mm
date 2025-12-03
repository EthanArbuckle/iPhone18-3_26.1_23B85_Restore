@interface STStatusDomainXPCClientHandle
- (STStatusDomainXPCClientHandle)initWithXPCConnection:(id)connection serverHandle:(id)handle;
- (void)_internalQueue_stopObservingDomain:(uint64_t)domain;
- (void)observeData:(id)data forDomain:(unint64_t)domain withChangeContext:(id)context;
- (void)observeDomain:(id)domain withPreferredLocalizations:(id)localizations;
- (void)reportUserInteraction:(id)interaction forDomain:(unint64_t)domain;
- (void)serverDataForDomains:(id)domains preferredLocalizations:(id)localizations reply:(id)reply;
- (void)stopObservingDomain:(id)domain;
@end

@implementation STStatusDomainXPCClientHandle

- (STStatusDomainXPCClientHandle)initWithXPCConnection:(id)connection serverHandle:(id)handle
{
  connectionCopy = connection;
  handleCopy = handle;
  v9 = [connectionCopy valueForEntitlement:*MEMORY[0x277D6BEA0]];
  v10 = STEntitledDomainsForEntitlementValue(v9);
  if ([v10 count])
  {
    v35.receiver = self;
    v35.super_class = STStatusDomainXPCClientHandle;
    v11 = [(STStatusDomainXPCClientHandle *)&v35 init];
    v12 = v11;
    if (v11)
    {
      objc_storeWeak(&v11->_serverHandle, handleCopy);
      v33 = 0u;
      v34 = 0u;
      if (connectionCopy)
      {
        [connectionCopy auditToken];
      }

      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.systemstatus.observerqueue.client-%d", BSPIDForAuditToken()];
      Serial = BSDispatchQueueCreateSerial();
      internalQueue = v12->_internalQueue;
      v12->_internalQueue = Serial;

      v16 = objc_alloc_init(MEMORY[0x277CF0C68]);
      dataByDomain = v12->_dataByDomain;
      v12->_dataByDomain = v16;

      v18 = objc_alloc_init(MEMORY[0x277CF0C68]);
      clientHandleWrappersByDomain = v12->_clientHandleWrappersByDomain;
      v12->_clientHandleWrappersByDomain = v18;

      v20 = [v10 copy];
      entitledDomains = v12->_entitledDomains;
      v12->_entitledDomains = v20;

      v22 = [MEMORY[0x277CBEB58] set];
      observingDomains = v12->_observingDomains;
      v12->_observingDomains = v22;

      v24 = STStatusDomainXPCClientInterface();
      [connectionCopy setRemoteObjectInterface:v24];

      v25 = STStatusDomainXPCServerInterface();
      [connectionCopy setExportedInterface:v25];

      [connectionCopy setExportedObject:v12];
      objc_initWeak(&location, v12);
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __68__STStatusDomainXPCClientHandle_initWithXPCConnection_serverHandle___block_invoke;
      v30[3] = &unk_279D35070;
      objc_copyWeak(&v31, &location);
      [connectionCopy setInterruptionHandler:v30];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __68__STStatusDomainXPCClientHandle_initWithXPCConnection_serverHandle___block_invoke_3;
      v28[3] = &unk_279D35070;
      objc_copyWeak(&v29, &location);
      [connectionCopy setInvalidationHandler:v28];
      objc_storeStrong(&v12->_clientXPCConnection, connection);
      [connectionCopy resume];
      objc_destroyWeak(&v29);
      objc_destroyWeak(&v31);
      objc_destroyWeak(&location);
    }

    self = v12;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

void __68__STStatusDomainXPCClientHandle_initWithXPCConnection_serverHandle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[2];
  }

  else
  {
    v2 = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__STStatusDomainXPCClientHandle_initWithXPCConnection_serverHandle___block_invoke_2;
  block[3] = &unk_279D35098;
  v5 = WeakRetained;
  v3 = WeakRetained;
  dispatch_sync(v2, block);
}

uint64_t __68__STStatusDomainXPCClientHandle_initWithXPCConnection_serverHandle___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 24);
  }

  else
  {
    v2 = 0;
  }

  return [v2 invalidate];
}

void __68__STStatusDomainXPCClientHandle_initWithXPCConnection_serverHandle___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[2];
  }

  else
  {
    v2 = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__STStatusDomainXPCClientHandle_initWithXPCConnection_serverHandle___block_invoke_4;
  block[3] = &unk_279D35098;
  v5 = WeakRetained;
  v3 = WeakRetained;
  dispatch_sync(v2, block);
}

void __68__STStatusDomainXPCClientHandle_initWithXPCConnection_serverHandle___block_invoke_4(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 56);
  }

  else
  {
    v3 = 0;
  }

  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 copy];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(STStatusDomainXPCClientHandle *)*(a1 + 32) _internalQueue_stopObservingDomain:?];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_internalQueue_stopObservingDomain:(uint64_t)domain
{
  if (domain)
  {
    v3 = *(domain + 16);
    v4 = a2;
    dispatch_assert_queue_V2(v3);
    v10 = *(domain + 56);
    v5 = [v10 containsObject:v4];
    [v10 removeObject:v4];
    WeakRetained = objc_loadWeakRetained((domain + 8));
    unsignedIntegerValue = [v4 unsignedIntegerValue];

    v8 = *(domain + 40);
    v9 = [v8 objectForKey:unsignedIntegerValue];
    [v8 removeObjectForKey:unsignedIntegerValue];

    if (v5 && v9)
    {
      [WeakRetained removeClient:v9 forDomain:unsignedIntegerValue];
    }
  }
}

- (void)observeDomain:(id)domain withPreferredLocalizations:(id)localizations
{
  domainCopy = domain;
  localizationsCopy = localizations;
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
  block[2] = __74__STStatusDomainXPCClientHandle_observeDomain_withPreferredLocalizations___block_invoke;
  block[3] = &unk_279D34E60;
  block[4] = self;
  v12 = domainCopy;
  v13 = localizationsCopy;
  v9 = localizationsCopy;
  v10 = domainCopy;
  dispatch_sync(internalQueue, block);
}

void __74__STStatusDomainXPCClientHandle_observeDomain_withPreferredLocalizations___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 48);
  }

  else
  {
    v3 = 0;
  }

  if (![v3 containsObject:*(a1 + 40)])
  {
    return;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = v4[7];
  }

  v12 = v4;
  v5 = [v12 containsObject:*(a1 + 40)];
  [v12 addObject:*(a1 + 40)];
  v6 = *(a1 + 32);
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained((v6 + 8));
    if ((v5 & 1) == 0)
    {
LABEL_8:
      v8 = [*(a1 + 40) unsignedIntegerValue];
      v9 = [[STStatusDomainClientHandleWrapper alloc] initWithWrappedClientHandle:*(a1 + 32) preferredLocalizations:*(a1 + 48)];
      v10 = *(a1 + 32);
      if (v10)
      {
        v11 = *(v10 + 40);
      }

      else
      {
        v11 = 0;
      }

      [v11 setObject:v9 forKey:v8];
      [WeakRetained registerClient:v9 forDomain:v8];
    }
  }

  else
  {
    WeakRetained = 0;
    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }
  }
}

- (void)stopObservingDomain:(id)domain
{
  domainCopy = domain;
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
  v7[2] = __53__STStatusDomainXPCClientHandle_stopObservingDomain___block_invoke;
  v7[3] = &unk_279D34B18;
  v7[4] = self;
  v8 = domainCopy;
  v6 = domainCopy;
  dispatch_sync(internalQueue, v7);
}

- (void)reportUserInteraction:(id)interaction forDomain:(unint64_t)domain
{
  interactionCopy = interaction;
  if (STIsValidUserInteractionForStatusDomain())
  {
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
    block[2] = __65__STStatusDomainXPCClientHandle_reportUserInteraction_forDomain___block_invoke;
    block[3] = &unk_279D34D48;
    block[4] = self;
    domainCopy = domain;
    v9 = interactionCopy;
    dispatch_sync(internalQueue, block);
  }
}

void __65__STStatusDomainXPCClientHandle_reportUserInteraction_forDomain___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[6];
  }

  v3 = MEMORY[0x277CCABB0];
  v4 = a1[6];
  v5 = v2;
  v6 = [v3 numberWithUnsignedInteger:v4];
  LODWORD(v4) = [v5 containsObject:v6];

  if (v4)
  {
    v7 = a1[4];
    if (v7)
    {
      v8 = *(v7 + 40);
    }

    else
    {
      v8 = 0;
    }

    v9 = [v8 objectForKey:a1[6]];
    if (v9)
    {
      v12 = v9;
      v10 = a1[4];
      if (v10)
      {
        WeakRetained = objc_loadWeakRetained((v10 + 8));
      }

      else
      {
        WeakRetained = 0;
      }

      [WeakRetained reportUserInteraction:a1[5] forClient:v12 domain:a1[6]];

      v9 = v12;
    }
  }
}

- (void)serverDataForDomains:(id)domains preferredLocalizations:(id)localizations reply:(id)reply
{
  domainsCopy = domains;
  localizationsCopy = localizations;
  replyCopy = reply;
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
  v15[2] = __83__STStatusDomainXPCClientHandle_serverDataForDomains_preferredLocalizations_reply___block_invoke;
  v15[3] = &unk_279D34D70;
  v16 = domainsCopy;
  selfCopy = self;
  v18 = localizationsCopy;
  v19 = replyCopy;
  v12 = replyCopy;
  v13 = localizationsCopy;
  v14 = domainsCopy;
  dispatch_sync(internalQueue, v15);
}

void __83__STStatusDomainXPCClientHandle_serverDataForDomains_preferredLocalizations_reply___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) count];
  if (v2)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      v4 = *(v3 + 48);
    }

    else
    {
      v4 = 0;
    }

    if ([*(a1 + 32) isSubsetOfSet:v4])
    {
      v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v2];
      v5 = *(a1 + 40);
      if (v5)
      {
        WeakRetained = objc_loadWeakRetained((v5 + 8));
      }

      else
      {
        WeakRetained = 0;
      }

      v7 = [[STStatusDomainClientHandleWrapper alloc] initWithWrappedClientHandle:*(a1 + 40) preferredLocalizations:*(a1 + 48)];
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = *(a1 + 32);
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v16 + 1) + 8 * i);
            v14 = [WeakRetained dataForDomain:objc_msgSend(v13 client:{"unsignedIntegerValue", v16), v7}];
            if (v14)
            {
              [v2 setObject:v14 forKey:v13];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v10);
      }
    }

    else
    {
      v2 = 0;
    }
  }

  (*(*(a1 + 56) + 16))();

  v15 = *MEMORY[0x277D85DE8];
}

- (void)observeData:(id)data forDomain:(unint64_t)domain withChangeContext:(id)context
{
  dataCopy = data;
  contextCopy = context;
  if (!dataCopy || STIsValidDataForStatusDomain())
  {
    if (contextCopy)
    {
      if (STIsValidDataChangeContextForStatusDomain())
      {
        v10 = contextCopy;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

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
    v13[2] = __73__STStatusDomainXPCClientHandle_observeData_forDomain_withChangeContext___block_invoke;
    v13[3] = &unk_279D34D20;
    v13[4] = self;
    domainCopy = domain;
    v14 = dataCopy;
    contextCopy = v11;
    v15 = contextCopy;
    dispatch_sync(internalQueue, v13);
  }
}

void __73__STStatusDomainXPCClientHandle_observeData_forDomain_withChangeContext___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[7];
  }

  v3 = MEMORY[0x277CCABB0];
  v4 = a1[7];
  v5 = v2;
  v6 = [v3 numberWithUnsignedInteger:v4];
  LODWORD(v4) = [v5 containsObject:v6];

  if (v4)
  {
    v7 = a1[4];
    if (v7)
    {
      v7 = v7[3];
    }

    v8 = v7;
    v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_6];

    v11 = a1[4];
    v10 = a1[5];
    v12 = a1[7];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v33 = __73__STStatusDomainXPCClientHandle_observeData_forDomain_withChangeContext___block_invoke_3;
    v34 = &unk_279D355B8;
    v13 = v9;
    v15 = a1[6];
    v14 = a1[7];
    v35 = v13;
    v37 = v14;
    v36 = v15;
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __73__STStatusDomainXPCClientHandle_observeData_forDomain_withChangeContext___block_invoke_4;
    v28 = &unk_279D355E0;
    v17 = a1[6];
    v16 = a1[7];
    v29 = v13;
    v31 = v16;
    v30 = v17;
    v18 = v13;
    v19 = v10;
    v20 = v32;
    v21 = &v25;
    if (!v11)
    {
      goto LABEL_15;
    }

    dispatch_assert_queue_V2(*(v11 + 16));
    v22 = *(v11 + 32);
    v23 = [v22 objectForKey:{v12, v25, v26}];
    if (v19)
    {
      [v22 setObject:v19 forKey:v12];

      if (v23)
      {
        v24 = [v19 diffFromData:v23];
        if (([v24 isEmpty] & 1) == 0)
        {
          v27(v21, v24);
        }

        goto LABEL_14;
      }
    }

    else
    {
      [v22 removeObjectForKey:v12];
    }

    v33(v20, v19);
LABEL_14:

LABEL_15:
  }
}

@end