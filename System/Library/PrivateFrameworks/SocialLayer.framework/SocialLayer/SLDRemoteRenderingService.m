@interface SLDRemoteRenderingService
+ (id)sharedService;
- (BOOL)_hasConnections;
- (SLDRemoteRenderingService)init;
- (id)_remoteContentForViewIdentifier:(id)a3 layerContextID:(unint64_t)a4 connection:(id)a5;
- (id)_viewIDForStyle:(id)a3 tag:(id)a4;
- (void)_allConnectionsDisconnected;
- (void)_connection:(id)a3 doesNotNeedViewWithIdentifier:(id)a4;
- (void)_connection:(id)a3 onlyNeedsViewWithIdentifier:(id)a4;
- (void)_connectionTouchedView:(id)a3;
- (void)_destroyViewWithID:(id)a3;
- (void)lostConnection:(id)a3;
- (void)receivedConnection:(id)a3;
@end

@implementation SLDRemoteRenderingService

- (SLDRemoteRenderingService)init
{
  v12.receiver = self;
  v12.super_class = SLDRemoteRenderingService;
  v2 = [(SLDRemoteRenderingService *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    connectionViewIDs = v2->_connectionViewIDs;
    v2->_connectionViewIDs = v3;

    v5 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    viewIDConnections = v2->_viewIDConnections;
    v2->_viewIDConnections = v5;

    v7 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    viewIdentifierMap = v2->_viewIdentifierMap;
    v2->_viewIdentifierMap = v7;

    v9 = [MEMORY[0x277CBEB18] array];
    viewLRUCache = v2->_viewLRUCache;
    v2->_viewLRUCache = v9;
  }

  return v2;
}

+ (id)sharedService
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SLDRemoteRenderingService_sharedService__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedService_onceToken_7 != -1)
  {
    dispatch_once(&sharedService_onceToken_7, block);
  }

  v2 = sharedService_sService_7;

  return v2;
}

uint64_t __42__SLDRemoteRenderingService_sharedService__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = sharedService_sService_7;
  sharedService_sService_7 = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

- (void)receivedConnection:(id)a3
{
  v4 = a3;
  v6 = [(SLDRemoteRenderingService *)self connectionViewIDs];
  v5 = [MEMORY[0x277CBEB18] array];
  [v6 setObject:v5 forKey:v4];
}

- (void)lostConnection:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SLDRemoteRenderingService *)self connectionViewIDs];
  v6 = [v5 objectForKey:v4];
  v7 = [v6 copy];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(SLDRemoteRenderingService *)self _connection:v4 doesNotNeedViewWithIdentifier:*(*(&v15 + 1) + 8 * v12++), v15];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v13 = [(SLDRemoteRenderingService *)self connectionViewIDs];
  [v13 removeObjectForKey:v4];

  if (![(SLDRemoteRenderingService *)self _hasConnections])
  {
    [(SLDRemoteRenderingService *)self _allConnectionsDisconnected];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_hasConnections
{
  v2 = [(SLDRemoteRenderingService *)self connectionViewIDs];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)_allConnectionsDisconnected
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = SLDaemonLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = self;
    _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_INFO, "[%@] All connections have disconnected. Clearing tracking objects and niling out slot machines.", &v6, 0xCu);
  }

  v4 = [(SLDRemoteRenderingService *)self connectionViewIDs];
  [v4 removeAllObjects];

  [(NSMapTable *)self->_viewIDConnections removeAllObjects];
  [(NSMapTable *)self->_viewIdentifierMap removeAllObjects];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_connection:(id)a3 doesNotNeedViewWithIdentifier:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = SLDaemonLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412802;
    v15 = self;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_231772000, v8, OS_LOG_TYPE_DEFAULT, "[%@] Connection [%@] does not need viewID with identifier: %@", &v14, 0x20u);
  }

  v9 = [(SLDRemoteRenderingService *)self viewIDConnections];
  v10 = [v9 objectForKey:v7];

  v11 = [(SLDRemoteRenderingService *)self connectionViewIDs];
  v12 = [v11 objectForKey:v6];

  [v10 removeObject:v6];
  [v12 removeObject:v7];
  if (!v10 || ![v10 count])
  {
    [(SLDRemoteRenderingService *)self _destroyViewWithID:v7];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_connection:(id)a3 onlyNeedsViewWithIdentifier:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SLDRemoteRenderingService *)self connectionViewIDs];
  v9 = [v8 objectForKey:v6];
  v10 = [v9 copy];

  if ([v10 count])
  {
    v11 = SLDaemonLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v25 = self;
      v26 = 2112;
      v27 = v6;
      v28 = 2112;
      v29 = v7;
      _os_log_impl(&dword_231772000, v11, OS_LOG_TYPE_DEFAULT, "[%@] Connection [%@] only needs view with ID: %@", buf, 0x20u);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v19 + 1) + 8 * i);
          if (([v17 isEqual:{v7, v19}] & 1) == 0)
          {
            [(SLDRemoteRenderingService *)self _connection:v6 doesNotNeedViewWithIdentifier:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_connectionTouchedView:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SLDRemoteRenderingService *)self viewLRUCache];
  [v5 removeObject:v4];

  v6 = [(SLDRemoteRenderingService *)self viewLRUCache];
  [v6 addObject:v4];

  v7 = SLDaemonLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(SLDRemoteRenderingService *)self _connectionTouchedView:v7];
  }

  v8 = [(SLDRemoteRenderingService *)self viewLRUCache];
  v9 = [v8 count];

  if (v9 >= 0x21)
  {
    v10 = SLDaemonLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(SLDRemoteRenderingService *)self _connectionTouchedView:v10];
    }
  }

  v11 = [(SLDRemoteRenderingService *)self viewLRUCache];
  v12 = [v11 count];

  if (v12 >= 0x21)
  {
    do
    {
      v13 = [(SLDRemoteRenderingService *)self viewLRUCache];
      v14 = [v13 firstObject];

      v15 = [(SLDRemoteRenderingService *)self viewIDConnections];
      v16 = [v15 objectForKey:v14];
      v17 = [v16 copy];

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v18 = v17;
      v19 = [v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v29;
        do
        {
          v22 = 0;
          do
          {
            if (*v29 != v21)
            {
              objc_enumerationMutation(v18);
            }

            [(SLDRemoteRenderingService *)self _connection:*(*(&v28 + 1) + 8 * v22++) doesNotNeedViewWithIdentifier:v14];
          }

          while (v20 != v22);
          v20 = [v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v20);
      }

      v23 = [(SLDRemoteRenderingService *)self viewLRUCache];
      [v23 removeObject:v14];

      v24 = [(SLDRemoteRenderingService *)self viewLRUCache];
      v25 = [v24 count];
    }

    while (v25 > 0x20);
  }

  if (v9 >= 0x21)
  {
    v26 = SLDaemonLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [(SLDRemoteRenderingService *)self _connectionTouchedView:v26];
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_destroyViewWithID:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SLDaemonLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412546;
    v24 = self;
    v25 = 2112;
    v26 = v4;
    _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_DEFAULT, "[%@] Releasing view no longer needed by any connection: %@", &v23, 0x16u);
  }

  v6 = [(SLDRemoteRenderingService *)self slotMachineForViewIdentifier:v4];
  v7 = [v4 style];
  v8 = [v4 tag];
  [v6 removeContentForStyle:v7 tag:v8];

  v9 = [(SLDRemoteRenderingService *)self viewIDConnections];
  [v9 removeObjectForKey:v4];

  v10 = [(SLDRemoteRenderingService *)self viewLRUCache];
  [v10 removeObject:v4];

  viewIdentifierMap = self->_viewIdentifierMap;
  v12 = [v4 style];
  v13 = [(NSMapTable *)viewIdentifierMap objectForKey:v12];
  v14 = [v4 tag];
  v15 = [v13 objectForKey:v14];

  if (v15)
  {
    v16 = self->_viewIdentifierMap;
    v17 = [v4 style];
    v18 = [(NSMapTable *)v16 objectForKey:v17];

    v19 = [v4 tag];
    [v18 removeObjectForKey:v19];

    if (![v18 count])
    {
      v20 = self->_viewIdentifierMap;
      v21 = [v4 style];
      [(NSMapTable *)v20 removeObjectForKey:v21];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)_remoteContentForViewIdentifier:(id)a3 layerContextID:(unint64_t)a4 connection:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(SLDRemoteRenderingService *)self slotMachineForViewIdentifier:v8];
  v11 = SLGeneralTelemetryLogHandle();
  v12 = os_signpost_id_generate(v11);

  v13 = SLGeneralTelemetryLogHandle();
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LOWORD(v27) = 0;
    _os_signpost_emit_with_name_impl(&dword_231772000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "SlotMachineRetrieveRemoteContent", "", &v27, 2u);
  }

  v15 = [v8 style];
  v16 = [v8 tag];
  v17 = [v10 remoteContentForLayerContextWithId:a4 style:v15 tag:v16];

  v18 = SLGeneralTelemetryLogHandle();
  v19 = v18;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    LOWORD(v27) = 0;
    _os_signpost_emit_with_name_impl(&dword_231772000, v19, OS_SIGNPOST_INTERVAL_END, v12, "SlotMachineRetrieveRemoteContent", "", &v27, 2u);
  }

  if (v17)
  {
    v20 = [(SLDRemoteRenderingService *)self connectionViewIDs];
    v21 = [v20 objectForKey:v9];

    if (([v21 containsObject:v8]& 1) == 0)
    {
      [v21 addObject:v8];
    }

    v22 = [(SLDRemoteRenderingService *)self viewIDConnections];
    v23 = [v22 objectForKey:v8];

    if (!v23)
    {
      v23 = [MEMORY[0x277CBEB18] array];
      v24 = [(SLDRemoteRenderingService *)self viewIDConnections];
      [v24 setObject:v23 forKey:v8];
    }

    if (([v23 containsObject:v9] & 1) == 0)
    {
      [v23 addObject:v9];
    }
  }

  else
  {
    v21 = SLDaemonLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v27 = 138412802;
      v28 = self;
      v29 = 2112;
      v30 = v10;
      v31 = 2112;
      v32 = v8;
      _os_log_error_impl(&dword_231772000, v21, OS_LOG_TYPE_ERROR, "[%@] Slot machine [%@] did not return any rendered content for viewID: %@", &v27, 0x20u);
    }
  }

  v25 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_viewIDForStyle:(id)a3 tag:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SLDRemoteRenderingService *)self viewIdentifierMap];
  v9 = [v8 objectForKey:v6];
  v10 = [v9 objectForKey:v7];

  if (!v10)
  {
    v11 = [(SLDRemoteRenderingService *)self viewIdentifierMap];
    v12 = [v11 objectForKey:v6];

    if (!v12)
    {
      v12 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
      v13 = [(SLDRemoteRenderingService *)self viewIdentifierMap];
      [v13 setObject:v12 forKey:v6];
    }

    v10 = [SLDRemoteViewIdentifier identifierForStyle:v6 tag:v7];
    [v12 setObject:v10 forKey:v7];
  }

  return v10;
}

- (void)_connectionTouchedView:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [a1 viewLRUCache];
  v6 = 138412546;
  v7 = a1;
  v8 = 2048;
  v9 = [v4 count];
  _os_log_debug_impl(&dword_231772000, a2, OS_LOG_TYPE_DEBUG, "[%@] Current unique pill count: %lu", &v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_connectionTouchedView:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_231772000, a2, OS_LOG_TYPE_DEBUG, "[%@] Pruning lru cache since we've reached the limit.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_connectionTouchedView:(uint64_t)a1 .cold.3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_231772000, a2, OS_LOG_TYPE_DEBUG, "[%@] Finished pruning lru cache.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end