@interface SLDRemoteRenderingService
+ (id)sharedService;
- (BOOL)_hasConnections;
- (SLDRemoteRenderingService)init;
- (id)_remoteContentForViewIdentifier:(id)identifier layerContextID:(unint64_t)d connection:(id)connection;
- (id)_viewIDForStyle:(id)style tag:(id)tag;
- (void)_allConnectionsDisconnected;
- (void)_connection:(id)_connection doesNotNeedViewWithIdentifier:(id)identifier;
- (void)_connection:(id)_connection onlyNeedsViewWithIdentifier:(id)identifier;
- (void)_connectionTouchedView:(id)view;
- (void)_destroyViewWithID:(id)d;
- (void)lostConnection:(id)connection;
- (void)receivedConnection:(id)connection;
@end

@implementation SLDRemoteRenderingService

- (SLDRemoteRenderingService)init
{
  v12.receiver = self;
  v12.super_class = SLDRemoteRenderingService;
  v2 = [(SLDRemoteRenderingService *)&v12 init];
  if (v2)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    connectionViewIDs = v2->_connectionViewIDs;
    v2->_connectionViewIDs = strongToStrongObjectsMapTable;

    strongToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    viewIDConnections = v2->_viewIDConnections;
    v2->_viewIDConnections = strongToStrongObjectsMapTable2;

    strongToStrongObjectsMapTable3 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    viewIdentifierMap = v2->_viewIdentifierMap;
    v2->_viewIdentifierMap = strongToStrongObjectsMapTable3;

    array = [MEMORY[0x277CBEB18] array];
    viewLRUCache = v2->_viewLRUCache;
    v2->_viewLRUCache = array;
  }

  return v2;
}

+ (id)sharedService
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SLDRemoteRenderingService_sharedService__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (void)receivedConnection:(id)connection
{
  connectionCopy = connection;
  connectionViewIDs = [(SLDRemoteRenderingService *)self connectionViewIDs];
  array = [MEMORY[0x277CBEB18] array];
  [connectionViewIDs setObject:array forKey:connectionCopy];
}

- (void)lostConnection:(id)connection
{
  v20 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  connectionViewIDs = [(SLDRemoteRenderingService *)self connectionViewIDs];
  v6 = [connectionViewIDs objectForKey:connectionCopy];
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

        [(SLDRemoteRenderingService *)self _connection:connectionCopy doesNotNeedViewWithIdentifier:*(*(&v15 + 1) + 8 * v12++), v15];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  connectionViewIDs2 = [(SLDRemoteRenderingService *)self connectionViewIDs];
  [connectionViewIDs2 removeObjectForKey:connectionCopy];

  if (![(SLDRemoteRenderingService *)self _hasConnections])
  {
    [(SLDRemoteRenderingService *)self _allConnectionsDisconnected];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_hasConnections
{
  connectionViewIDs = [(SLDRemoteRenderingService *)self connectionViewIDs];
  v3 = [connectionViewIDs count] != 0;

  return v3;
}

- (void)_allConnectionsDisconnected
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = SLDaemonLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_INFO, "[%@] All connections have disconnected. Clearing tracking objects and niling out slot machines.", &v6, 0xCu);
  }

  connectionViewIDs = [(SLDRemoteRenderingService *)self connectionViewIDs];
  [connectionViewIDs removeAllObjects];

  [(NSMapTable *)self->_viewIDConnections removeAllObjects];
  [(NSMapTable *)self->_viewIdentifierMap removeAllObjects];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_connection:(id)_connection doesNotNeedViewWithIdentifier:(id)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  _connectionCopy = _connection;
  identifierCopy = identifier;
  v8 = SLDaemonLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412802;
    selfCopy = self;
    v16 = 2112;
    v17 = _connectionCopy;
    v18 = 2112;
    v19 = identifierCopy;
    _os_log_impl(&dword_231772000, v8, OS_LOG_TYPE_DEFAULT, "[%@] Connection [%@] does not need viewID with identifier: %@", &v14, 0x20u);
  }

  viewIDConnections = [(SLDRemoteRenderingService *)self viewIDConnections];
  v10 = [viewIDConnections objectForKey:identifierCopy];

  connectionViewIDs = [(SLDRemoteRenderingService *)self connectionViewIDs];
  v12 = [connectionViewIDs objectForKey:_connectionCopy];

  [v10 removeObject:_connectionCopy];
  [v12 removeObject:identifierCopy];
  if (!v10 || ![v10 count])
  {
    [(SLDRemoteRenderingService *)self _destroyViewWithID:identifierCopy];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_connection:(id)_connection onlyNeedsViewWithIdentifier:(id)identifier
{
  v30 = *MEMORY[0x277D85DE8];
  _connectionCopy = _connection;
  identifierCopy = identifier;
  connectionViewIDs = [(SLDRemoteRenderingService *)self connectionViewIDs];
  v9 = [connectionViewIDs objectForKey:_connectionCopy];
  v10 = [v9 copy];

  if ([v10 count])
  {
    v11 = SLDaemonLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy = self;
      v26 = 2112;
      v27 = _connectionCopy;
      v28 = 2112;
      v29 = identifierCopy;
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
          if (([v17 isEqual:{identifierCopy, v19}] & 1) == 0)
          {
            [(SLDRemoteRenderingService *)self _connection:_connectionCopy doesNotNeedViewWithIdentifier:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_connectionTouchedView:(id)view
{
  v33 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  viewLRUCache = [(SLDRemoteRenderingService *)self viewLRUCache];
  [viewLRUCache removeObject:viewCopy];

  viewLRUCache2 = [(SLDRemoteRenderingService *)self viewLRUCache];
  [viewLRUCache2 addObject:viewCopy];

  v7 = SLDaemonLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(SLDRemoteRenderingService *)self _connectionTouchedView:v7];
  }

  viewLRUCache3 = [(SLDRemoteRenderingService *)self viewLRUCache];
  v9 = [viewLRUCache3 count];

  if (v9 >= 0x21)
  {
    v10 = SLDaemonLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(SLDRemoteRenderingService *)self _connectionTouchedView:v10];
    }
  }

  viewLRUCache4 = [(SLDRemoteRenderingService *)self viewLRUCache];
  v12 = [viewLRUCache4 count];

  if (v12 >= 0x21)
  {
    do
    {
      viewLRUCache5 = [(SLDRemoteRenderingService *)self viewLRUCache];
      firstObject = [viewLRUCache5 firstObject];

      viewIDConnections = [(SLDRemoteRenderingService *)self viewIDConnections];
      v16 = [viewIDConnections objectForKey:firstObject];
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

            [(SLDRemoteRenderingService *)self _connection:*(*(&v28 + 1) + 8 * v22++) doesNotNeedViewWithIdentifier:firstObject];
          }

          while (v20 != v22);
          v20 = [v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v20);
      }

      viewLRUCache6 = [(SLDRemoteRenderingService *)self viewLRUCache];
      [viewLRUCache6 removeObject:firstObject];

      viewLRUCache7 = [(SLDRemoteRenderingService *)self viewLRUCache];
      v25 = [viewLRUCache7 count];
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

- (void)_destroyViewWithID:(id)d
{
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = SLDaemonLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412546;
    selfCopy = self;
    v25 = 2112;
    v26 = dCopy;
    _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_DEFAULT, "[%@] Releasing view no longer needed by any connection: %@", &v23, 0x16u);
  }

  v6 = [(SLDRemoteRenderingService *)self slotMachineForViewIdentifier:dCopy];
  style = [dCopy style];
  v8 = [dCopy tag];
  [v6 removeContentForStyle:style tag:v8];

  viewIDConnections = [(SLDRemoteRenderingService *)self viewIDConnections];
  [viewIDConnections removeObjectForKey:dCopy];

  viewLRUCache = [(SLDRemoteRenderingService *)self viewLRUCache];
  [viewLRUCache removeObject:dCopy];

  viewIdentifierMap = self->_viewIdentifierMap;
  style2 = [dCopy style];
  v13 = [(NSMapTable *)viewIdentifierMap objectForKey:style2];
  v14 = [dCopy tag];
  v15 = [v13 objectForKey:v14];

  if (v15)
  {
    v16 = self->_viewIdentifierMap;
    style3 = [dCopy style];
    v18 = [(NSMapTable *)v16 objectForKey:style3];

    v19 = [dCopy tag];
    [v18 removeObjectForKey:v19];

    if (![v18 count])
    {
      v20 = self->_viewIdentifierMap;
      style4 = [dCopy style];
      [(NSMapTable *)v20 removeObjectForKey:style4];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)_remoteContentForViewIdentifier:(id)identifier layerContextID:(unint64_t)d connection:(id)connection
{
  v33 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  connectionCopy = connection;
  v10 = [(SLDRemoteRenderingService *)self slotMachineForViewIdentifier:identifierCopy];
  v11 = SLGeneralTelemetryLogHandle();
  v12 = os_signpost_id_generate(v11);

  v13 = SLGeneralTelemetryLogHandle();
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LOWORD(v27) = 0;
    _os_signpost_emit_with_name_impl(&dword_231772000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "SlotMachineRetrieveRemoteContent", "", &v27, 2u);
  }

  style = [identifierCopy style];
  v16 = [identifierCopy tag];
  v17 = [v10 remoteContentForLayerContextWithId:d style:style tag:v16];

  v18 = SLGeneralTelemetryLogHandle();
  v19 = v18;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    LOWORD(v27) = 0;
    _os_signpost_emit_with_name_impl(&dword_231772000, v19, OS_SIGNPOST_INTERVAL_END, v12, "SlotMachineRetrieveRemoteContent", "", &v27, 2u);
  }

  if (v17)
  {
    connectionViewIDs = [(SLDRemoteRenderingService *)self connectionViewIDs];
    v21 = [connectionViewIDs objectForKey:connectionCopy];

    if (([v21 containsObject:identifierCopy]& 1) == 0)
    {
      [v21 addObject:identifierCopy];
    }

    viewIDConnections = [(SLDRemoteRenderingService *)self viewIDConnections];
    array = [viewIDConnections objectForKey:identifierCopy];

    if (!array)
    {
      array = [MEMORY[0x277CBEB18] array];
      viewIDConnections2 = [(SLDRemoteRenderingService *)self viewIDConnections];
      [viewIDConnections2 setObject:array forKey:identifierCopy];
    }

    if (([array containsObject:connectionCopy] & 1) == 0)
    {
      [array addObject:connectionCopy];
    }
  }

  else
  {
    v21 = SLDaemonLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v27 = 138412802;
      selfCopy = self;
      v29 = 2112;
      v30 = v10;
      v31 = 2112;
      v32 = identifierCopy;
      _os_log_error_impl(&dword_231772000, v21, OS_LOG_TYPE_ERROR, "[%@] Slot machine [%@] did not return any rendered content for viewID: %@", &v27, 0x20u);
    }
  }

  v25 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_viewIDForStyle:(id)style tag:(id)tag
{
  styleCopy = style;
  tagCopy = tag;
  viewIdentifierMap = [(SLDRemoteRenderingService *)self viewIdentifierMap];
  v9 = [viewIdentifierMap objectForKey:styleCopy];
  v10 = [v9 objectForKey:tagCopy];

  if (!v10)
  {
    viewIdentifierMap2 = [(SLDRemoteRenderingService *)self viewIdentifierMap];
    strongToStrongObjectsMapTable = [viewIdentifierMap2 objectForKey:styleCopy];

    if (!strongToStrongObjectsMapTable)
    {
      strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
      viewIdentifierMap3 = [(SLDRemoteRenderingService *)self viewIdentifierMap];
      [viewIdentifierMap3 setObject:strongToStrongObjectsMapTable forKey:styleCopy];
    }

    v10 = [SLDRemoteViewIdentifier identifierForStyle:styleCopy tag:tagCopy];
    [strongToStrongObjectsMapTable setObject:v10 forKey:tagCopy];
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