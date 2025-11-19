@interface BRCSyncContextProvider
- (BRCSyncContextProvider)initWithAccountSession:(id)a3;
- (id)_syncContextIdentifierForMangledID:(id)a3 metadata:(BOOL)a4;
- (id)allSyncContexts;
- (id)metadataSyncContextForMangledID:(id)a3;
- (void)closeSyncContexts;
@end

@implementation BRCSyncContextProvider

- (BRCSyncContextProvider)initWithAccountSession:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = BRCSyncContextProvider;
  v6 = [(BRCSyncContextProvider *)&v10 init];
  if (v6)
  {
    v7 = objc_opt_new();
    syncContexts = v6->_syncContexts;
    v6->_syncContexts = v7;

    objc_storeStrong(&v6->_session, a3);
  }

  return v6;
}

- (id)_syncContextIdentifierForMangledID:(id)a3 metadata:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([v5 isShared])
  {
    if (v4)
    {
      v6 = *MEMORY[0x277CFADA8];
    }

    else
    {
      v6 = [v5 aliasTargetContainerString];
    }
  }

  else
  {
    if (v4 && [v5 isCloudDocsMangledID])
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = [v5 appLibraryOrZoneName];
      v9 = [v7 stringWithFormat:@"%@-metadata", v8];

      goto LABEL_10;
    }

    v6 = [v5 appLibraryOrZoneName];
  }

  v9 = v6;
LABEL_10:

  return v9;
}

- (id)metadataSyncContextForMangledID:(id)a3
{
  v4 = a3;
  v5 = [(BRCSyncContextProvider *)self _syncContextIdentifierForMangledID:v4 metadata:1];
  v6 = [v4 isShared];

  v7 = [(BRCSyncContextProvider *)self _syncContextForContextIdentifier:v5 isShared:v6 createIfNeeded:1];

  return v7;
}

- (id)allSyncContexts
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_syncContexts allValues];
  objc_sync_exit(v2);

  return v3;
}

- (void)closeSyncContexts
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(BRCSyncContextProvider *)v2 allSyncContexts];
  syncContexts = v2->_syncContexts;
  v2->_syncContexts = 0;

  objc_sync_exit(v2);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v38 count:16];
  if (v6)
  {
    v7 = *v28;
    do
    {
      v8 = 0;
      do
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v27 + 1) + 8 * v8);
        v24 = 0;
        v25 = 0;
        v26 = 0;
        __brc_create_section(0, "[BRCSyncContextProvider closeSyncContexts]", 107, 0, &v24);
        v10 = brc_bread_crumbs();
        v11 = brc_default_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218498;
          v33 = v24;
          v34 = 2112;
          v35 = v9;
          v36 = 2112;
          v37 = v10;
          _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx cancelling %@...%@", buf, 0x20u);
        }

        [v9 cancel];
        __brc_leave_section(&v24);
        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v27 objects:v38 count:16];
    }

    while (v6);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = v5;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v31 count:16];
  if (v13)
  {
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v20 + 1) + 8 * v15);
        v24 = 0;
        v25 = 0;
        v26 = 0;
        __brc_create_section(0, "[BRCSyncContextProvider closeSyncContexts]", 112, 0, &v24);
        v17 = brc_bread_crumbs();
        v18 = brc_default_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218498;
          v33 = v24;
          v34 = 2112;
          v35 = v16;
          v36 = 2112;
          v37 = v17;
          _os_log_debug_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx closing %@...%@", buf, 0x20u);
        }

        [v16 close];
        __brc_leave_section(&v24);
        ++v15;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v20 objects:v31 count:16];
    }

    while (v13);
  }

  v19 = *MEMORY[0x277D85DE8];
}

@end