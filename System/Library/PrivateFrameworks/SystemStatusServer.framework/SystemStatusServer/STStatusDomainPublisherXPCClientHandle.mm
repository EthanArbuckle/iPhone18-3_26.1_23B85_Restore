@interface STStatusDomainPublisherXPCClientHandle
- (STStatusDomainPublisherXPCClientHandle)initWithXPCConnection:(id)a3 serverHandle:(id)a4;
- (dispatch_queue_t)_internalQueue_fallbackDataForDomain:(dispatch_queue_t *)a1;
- (void)_internalQueue_unregisterFromPublishingDomain:(uint64_t)a1;
- (void)handleUserInteraction:(id)a3 forDomain:(unint64_t)a4;
- (void)publishData:(id)a3 forDomain:(unint64_t)a4 withChangeContext:(id)a5 discardingOnExit:(BOOL)a6 reply:(id)a7;
- (void)publishDiff:(id)a3 forDomain:(unint64_t)a4 withChangeContext:(id)a5 replacingData:(BOOL)a6 discardingOnExit:(BOOL)a7 reply:(id)a8;
- (void)registerToPublishDomain:(unint64_t)a3 fallbackData:(id)a4;
- (void)replaceDataChangeRecord:(id)a3 discardingOnExit:(BOOL)a4 reply:(id)a5;
- (void)unregisterFromPublishingDomain:(unint64_t)a3;
@end

@implementation STStatusDomainPublisherXPCClientHandle

- (STStatusDomainPublisherXPCClientHandle)initWithXPCConnection:(id)a3 serverHandle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 valueForEntitlement:*MEMORY[0x277D6BF28]];
  v10 = STEntitledDomainsForEntitlementValue(v9);
  if ([v10 count])
  {
    v37.receiver = self;
    v37.super_class = STStatusDomainPublisherXPCClientHandle;
    v11 = [(STStatusDomainPublisherXPCClientHandle *)&v37 init];
    v12 = v11;
    if (v11)
    {
      objc_storeWeak(&v11->_serverHandle, v8);
      v35 = 0u;
      v36 = 0u;
      if (v7)
      {
        [v7 auditToken];
      }

      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.systemstatus.publisherqueue.client-%d", BSPIDForAuditToken()];
      Serial = BSDispatchQueueCreateSerial();
      internalQueue = v12->_internalQueue;
      v12->_internalQueue = Serial;

      v16 = objc_alloc_init(MEMORY[0x277CF0C68]);
      dataByDomain = v12->_dataByDomain;
      v12->_dataByDomain = v16;

      v18 = objc_alloc_init(MEMORY[0x277CF0C68]);
      volatileDataByDomain = v12->_volatileDataByDomain;
      v12->_volatileDataByDomain = v18;

      v20 = objc_alloc_init(MEMORY[0x277CF0C68]);
      fallbackDataByDomain = v12->_fallbackDataByDomain;
      v12->_fallbackDataByDomain = v20;

      v22 = [v10 copy];
      entitledDomains = v12->_entitledDomains;
      v12->_entitledDomains = v22;

      v24 = [MEMORY[0x277CBEB58] set];
      publishingDomains = v12->_publishingDomains;
      v12->_publishingDomains = v24;

      v26 = STStatusDomainPublisherXPCClientInterface();
      [v7 setRemoteObjectInterface:v26];

      v27 = STStatusDomainPublisherXPCServerInterface();
      [v7 setExportedInterface:v27];

      [v7 setExportedObject:v12];
      objc_initWeak(&location, v12);
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __77__STStatusDomainPublisherXPCClientHandle_initWithXPCConnection_serverHandle___block_invoke;
      v32[3] = &unk_279D35070;
      objc_copyWeak(&v33, &location);
      [v7 setInterruptionHandler:v32];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __77__STStatusDomainPublisherXPCClientHandle_initWithXPCConnection_serverHandle___block_invoke_3;
      v30[3] = &unk_279D35070;
      objc_copyWeak(&v31, &location);
      [v7 setInvalidationHandler:v30];
      objc_storeStrong(&v12->_clientXPCConnection, a3);
      [v7 resume];
      objc_destroyWeak(&v31);
      objc_destroyWeak(&v33);
      objc_destroyWeak(&location);
    }

    self = v12;
    v28 = self;
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

void __77__STStatusDomainPublisherXPCClientHandle_initWithXPCConnection_serverHandle___block_invoke(uint64_t a1)
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
  block[2] = __77__STStatusDomainPublisherXPCClientHandle_initWithXPCConnection_serverHandle___block_invoke_2;
  block[3] = &unk_279D35098;
  v5 = WeakRetained;
  v3 = WeakRetained;
  dispatch_sync(v2, block);
}

uint64_t __77__STStatusDomainPublisherXPCClientHandle_initWithXPCConnection_serverHandle___block_invoke_2(uint64_t a1)
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

void __77__STStatusDomainPublisherXPCClientHandle_initWithXPCConnection_serverHandle___block_invoke_3(uint64_t a1)
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
  block[2] = __77__STStatusDomainPublisherXPCClientHandle_initWithXPCConnection_serverHandle___block_invoke_4;
  block[3] = &unk_279D35098;
  v5 = WeakRetained;
  v3 = WeakRetained;
  dispatch_sync(v2, block);
}

void __77__STStatusDomainPublisherXPCClientHandle_initWithXPCConnection_serverHandle___block_invoke_4(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 64);
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

        -[STStatusDomainPublisherXPCClientHandle _internalQueue_unregisterFromPublishingDomain:](*(a1 + 32), [*(*(&v10 + 1) + 8 * v8++) unsignedIntegerValue]);
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_internalQueue_unregisterFromPublishingDomain:(uint64_t)a1
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    v8 = *(a1 + 64);
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
    v5 = [v8 containsObject:v4];

    if (v5)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
      [v8 removeObject:v6];

      WeakRetained = objc_loadWeakRetained((a1 + 8));
      [WeakRetained removePublisherClient:a1 forDomain:a2];

      [*(a1 + 48) removeObjectForKey:a2];
      [*(a1 + 40) removeObjectForKey:a2];
    }
  }
}

- (void)registerToPublishDomain:(unint64_t)a3 fallbackData:(id)a4
{
  v6 = a4;
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
  block[2] = __79__STStatusDomainPublisherXPCClientHandle_registerToPublishDomain_fallbackData___block_invoke;
  block[3] = &unk_279D34D48;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_sync(internalQueue, block);
}

void __79__STStatusDomainPublisherXPCClientHandle_registerToPublishDomain_fallbackData___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[7];
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
      v7 = v7[8];
    }

    v16 = v7;
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[6]];
    v9 = [v16 containsObject:v8];

    if ((v9 & 1) == 0)
    {
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[6]];
      [v16 addObject:v10];

      v11 = a1[4];
      if (v11)
      {
        v12 = *(v11 + 48);
      }

      else
      {
        v12 = 0;
      }

      [v12 setObject:a1[5] forKey:a1[6]];
      v13 = a1[4];
      if (v13)
      {
        WeakRetained = objc_loadWeakRetained((v13 + 8));
        v15 = a1[4];
      }

      else
      {
        v15 = 0;
        WeakRetained = 0;
      }

      [WeakRetained registerPublisherClient:v15 forDomain:a1[6] fallbackData:a1[5]];
    }
  }
}

- (void)unregisterFromPublishingDomain:(unint64_t)a3
{
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __73__STStatusDomainPublisherXPCClientHandle_unregisterFromPublishingDomain___block_invoke;
  v4[3] = &unk_279D35608;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(internalQueue, v4);
}

- (void)replaceDataChangeRecord:(id)a3 discardingOnExit:(BOOL)a4 reply:(id)a5
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
  v13[2] = __89__STStatusDomainPublisherXPCClientHandle_replaceDataChangeRecord_discardingOnExit_reply___block_invoke;
  v13[3] = &unk_279D35680;
  v14 = v8;
  v15 = self;
  v17 = a4;
  v16 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_sync(internalQueue, v13);
}

void __89__STStatusDomainPublisherXPCClientHandle_replaceDataChangeRecord_discardingOnExit_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) domainsWithData];
  v3 = [MEMORY[0x277CBEB58] set];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __89__STStatusDomainPublisherXPCClientHandle_replaceDataChangeRecord_discardingOnExit_reply___block_invoke_2;
  v25[3] = &unk_279D35630;
  v4 = v3;
  v26 = v4;
  [v2 enumerateWithBlock:v25];
  v5 = *(a1 + 40);
  if (v5)
  {
    v5 = v5[7];
  }

  v6 = v5;
  if ([v4 isSubsetOfSet:v6])
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = *(v7 + 64);
    }

    else
    {
      v8 = 0;
    }

    v9 = [v4 isSubsetOfSet:v8];

    if (v9)
    {
      v10 = objc_alloc_init(MEMORY[0x277D6BB40]);
      v11 = *(a1 + 40);
      if (v11)
      {
        v12 = 32;
        if (*(a1 + 56))
        {
          v12 = 40;
        }

        v11 = *&v11[v12];
      }

      v13 = v11;
      [v13 removeAllObjects];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __89__STStatusDomainPublisherXPCClientHandle_replaceDataChangeRecord_discardingOnExit_reply___block_invoke_3;
      v21[3] = &unk_279D35658;
      v21[4] = *(a1 + 40);
      v14 = v10;
      v22 = v14;
      v23 = *(a1 + 32);
      v15 = v13;
      v24 = v15;
      [v2 enumerateWithBlock:v21];
      v16 = *(a1 + 40);
      if (*(a1 + 56) == 1)
      {
        if (v16)
        {
          WeakRetained = objc_loadWeakRetained((v16 + 8));
          v18 = *(a1 + 40);
        }

        else
        {
          v18 = 0;
          WeakRetained = 0;
        }

        [WeakRetained replaceVolatileDataChangeRecord:v14 forPublisherClient:v18 completion:*(a1 + 48)];
      }

      else
      {
        if (v16)
        {
          WeakRetained = objc_loadWeakRetained((v16 + 8));
          v20 = *(a1 + 40);
        }

        else
        {
          v20 = 0;
          WeakRetained = 0;
        }

        [WeakRetained replaceDataChangeRecord:v14 forPublisherClient:v20 completion:*(a1 + 48)];
      }

      goto LABEL_22;
    }
  }

  else
  {
  }

  v19 = *(a1 + 48);
  if (v19)
  {
    (*(v19 + 16))();
  }

LABEL_22:
}

void __89__STStatusDomainPublisherXPCClientHandle_replaceDataChangeRecord_discardingOnExit_reply___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  [v2 addObject:v3];
}

void __89__STStatusDomainPublisherXPCClientHandle_replaceDataChangeRecord_discardingOnExit_reply___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v6 = [(STStatusDomainPublisherXPCClientHandle *)*(a1 + 32) _internalQueue_fallbackDataForDomain:a2];
  [*(a1 + 40) setFallbackData:v6 forClientKey:@"sharedClient" domain:a2];
  [*(a1 + 40) addEntriesFromDataChangeRecord:*(a1 + 48) forDomain:a2 replacingClientKeysWithKey:@"sharedClient"];
  v4 = [*(a1 + 40) currentDataForDomain:a2];
  v5 = [v4 mutableCopyWithZone:0];

  [*(a1 + 56) setObject:v5 forKey:a2];
}

- (dispatch_queue_t)_internalQueue_fallbackDataForDomain:(dispatch_queue_t *)a1
{
  if (a1)
  {
    v4 = a1;
    dispatch_assert_queue_V2(a1[2]);
    a1 = [v4[6] objectForKey:a2];
    v2 = vars8;
  }

  return a1;
}

- (void)publishData:(id)a3 forDomain:(unint64_t)a4 withChangeContext:(id)a5 discardingOnExit:(BOOL)a6 reply:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a7;
  if (v12 && !STIsValidDataForStatusDomain())
  {
    if (v14)
    {
      v14[2](v14);
    }
  }

  else
  {
    if (v13)
    {
      if (STIsValidDataChangeContextForStatusDomain())
      {
        v15 = v13;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    if (self)
    {
      internalQueue = self->_internalQueue;
    }

    else
    {
      internalQueue = 0;
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __105__STStatusDomainPublisherXPCClientHandle_publishData_forDomain_withChangeContext_discardingOnExit_reply___block_invoke;
    v18[3] = &unk_279D356A8;
    v18[4] = self;
    v22 = a4;
    v23 = a6;
    v24 = v12 == 0;
    v19 = v12;
    v13 = v16;
    v20 = v13;
    v21 = v14;
    dispatch_sync(internalQueue, v18);
  }
}

void __105__STStatusDomainPublisherXPCClientHandle_publishData_forDomain_withChangeContext_discardingOnExit_reply___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[7];
  }

  v3 = MEMORY[0x277CCABB0];
  v4 = *(a1 + 64);
  v5 = v2;
  v6 = [v3 numberWithUnsignedInteger:v4];
  LODWORD(v4) = [v5 containsObject:v6];

  if (v4)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = 32;
      if (*(a1 + 72))
      {
        v8 = 40;
      }

      v7 = *&v7[v8];
    }

    v9 = v7;
    v17 = v9;
    if (*(a1 + 73) == 1)
    {
      [v9 removeObjectForKey:*(a1 + 64)];
    }

    else
    {
      v12 = [*(a1 + 40) mutableCopyWithZone:0];
      [v17 setObject:v12 forKey:*(a1 + 64)];
    }

    v13 = *(a1 + 32);
    if (*(a1 + 72) == 1)
    {
      if (v13)
      {
        WeakRetained = objc_loadWeakRetained((v13 + 8));
        v15 = *(a1 + 32);
      }

      else
      {
        v15 = 0;
        WeakRetained = 0;
      }

      [WeakRetained publishVolatileData:*(a1 + 40) forPublisherClient:v15 domain:*(a1 + 64) withChangeContext:*(a1 + 48) completion:*(a1 + 56)];
    }

    else
    {
      if (v13)
      {
        WeakRetained = objc_loadWeakRetained((v13 + 8));
        v16 = *(a1 + 32);
      }

      else
      {
        v16 = 0;
        WeakRetained = 0;
      }

      [WeakRetained publishData:*(a1 + 40) forPublisherClient:v16 domain:*(a1 + 64) withChangeContext:*(a1 + 48) completion:*(a1 + 56)];
    }
  }

  else
  {
    v10 = *(a1 + 56);
    if (v10)
    {
      v11 = *(v10 + 16);

      v11();
    }
  }
}

- (void)publishDiff:(id)a3 forDomain:(unint64_t)a4 withChangeContext:(id)a5 replacingData:(BOOL)a6 discardingOnExit:(BOOL)a7 reply:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a8;
  if (STIsValidDiffForStatusDomain() && ([v14 isEmpty] & 1) == 0)
  {
    if (self)
    {
      internalQueue = self->_internalQueue;
    }

    else
    {
      internalQueue = 0;
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __119__STStatusDomainPublisherXPCClientHandle_publishDiff_forDomain_withChangeContext_replacingData_discardingOnExit_reply___block_invoke;
    v18[3] = &unk_279D356A8;
    v18[4] = self;
    v22 = a4;
    v23 = a7;
    v19 = v14;
    v24 = a6;
    v20 = v15;
    v21 = v16;
    dispatch_sync(internalQueue, v18);
  }

  else if (v16)
  {
    v16[2](v16);
  }
}

void __119__STStatusDomainPublisherXPCClientHandle_publishDiff_forDomain_withChangeContext_replacingData_discardingOnExit_reply___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[7];
  }

  v3 = MEMORY[0x277CCABB0];
  v4 = *(a1 + 64);
  v5 = v2;
  v6 = [v3 numberWithUnsignedInteger:v4];
  LODWORD(v4) = [v5 containsObject:v6];

  if (v4)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 64);
    if (v7)
    {
      if (*(a1 + 72))
      {
        v9 = 40;
      }

      else
      {
        v9 = 32;
      }

      dispatch_assert_queue_V2(*(v7 + 16));
      v10 = [*(v7 + v9) objectForKey:v8];
      if (v10)
      {
LABEL_11:
        v29 = v10;
        [v10 applyDiff:*(a1 + 40)];
        if (*(a1 + 73) == 1)
        {
          v13 = [v29 copyWithZone:0];
          v14 = *(a1 + 32);
          if (*(a1 + 72) == 1)
          {
            if (v14)
            {
              WeakRetained = objc_loadWeakRetained((v14 + 8));
              v16 = *(a1 + 32);
            }

            else
            {
              v16 = 0;
              WeakRetained = 0;
            }

            [WeakRetained publishVolatileData:v13 forPublisherClient:v16 domain:*(a1 + 64) withChangeContext:*(a1 + 48) completion:*(a1 + 56)];
          }

          else
          {
            if (v14)
            {
              WeakRetained = objc_loadWeakRetained((v14 + 8));
              v24 = *(a1 + 32);
            }

            else
            {
              v24 = 0;
              WeakRetained = 0;
            }

            [WeakRetained publishData:v13 forPublisherClient:v24 domain:*(a1 + 64) withChangeContext:*(a1 + 48) completion:*(a1 + 56)];
          }
        }

        else
        {
          v19 = *(a1 + 32);
          if (*(a1 + 72) == 1)
          {
            if (v19)
            {
              v20 = objc_loadWeakRetained((v19 + 8));
              v21 = *(a1 + 32);
            }

            else
            {
              v21 = 0;
              v20 = 0;
            }

            v22 = *(a1 + 64);
            v33[0] = MEMORY[0x277D85DD0];
            v33[1] = 3221225472;
            v33[2] = __119__STStatusDomainPublisherXPCClientHandle_publishDiff_forDomain_withChangeContext_replacingData_discardingOnExit_reply___block_invoke_2;
            v33[3] = &unk_279D356D0;
            v34 = *(a1 + 48);
            v35 = *(a1 + 40);
            [v20 updateVolatileDataForPublisherClient:v21 domain:v22 usingDiffProvider:v33 completion:*(a1 + 56)];

            v23 = v34;
          }

          else
          {
            if (v19)
            {
              v25 = objc_loadWeakRetained((v19 + 8));
              v26 = *(a1 + 32);
            }

            else
            {
              v26 = 0;
              v25 = 0;
            }

            v27 = *(a1 + 64);
            v30[0] = MEMORY[0x277D85DD0];
            v30[1] = 3221225472;
            v30[2] = __119__STStatusDomainPublisherXPCClientHandle_publishDiff_forDomain_withChangeContext_replacingData_discardingOnExit_reply___block_invoke_3;
            v30[3] = &unk_279D356D0;
            v31 = *(a1 + 48);
            v32 = *(a1 + 40);
            [v25 updateDataForPublisherClient:v26 domain:v27 usingDiffProvider:v30 completion:*(a1 + 56)];

            v23 = v31;
          }
        }

        return;
      }

      v11 = *(a1 + 32);
      v8 = *(a1 + 64);
    }

    else
    {
      v11 = 0;
    }

    v12 = [(STStatusDomainPublisherXPCClientHandle *)v11 _internalQueue_fallbackDataForDomain:v8];
    v28 = [v12 mutableCopyWithZone:0];

    v10 = v28;
    if (v28)
    {
      goto LABEL_11;
    }
  }

  v17 = *(a1 + 56);
  if (v17)
  {
    v18 = *(v17 + 16);

    v18();
  }
}

id __119__STStatusDomainPublisherXPCClientHandle_publishDiff_forDomain_withChangeContext_replacingData_discardingOnExit_reply___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    *a3 = *(a1 + 32);
  }

  v4 = *(a1 + 40);

  return v4;
}

id __119__STStatusDomainPublisherXPCClientHandle_publishDiff_forDomain_withChangeContext_replacingData_discardingOnExit_reply___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    *a3 = *(a1 + 32);
  }

  v4 = *(a1 + 40);

  return v4;
}

- (void)handleUserInteraction:(id)a3 forDomain:(unint64_t)a4
{
  v6 = a3;
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
    block[2] = __74__STStatusDomainPublisherXPCClientHandle_handleUserInteraction_forDomain___block_invoke;
    block[3] = &unk_279D34D48;
    block[4] = self;
    v9 = v6;
    v10 = a4;
    dispatch_sync(internalQueue, block);
  }
}

void __74__STStatusDomainPublisherXPCClientHandle_handleUserInteraction_forDomain___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = *(v2 + 24);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_7];
  [v4 handleUserInteraction:a1[5] forDomain:a1[6]];
}

@end