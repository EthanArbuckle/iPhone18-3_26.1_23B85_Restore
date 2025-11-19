@interface BRCDownloadTrackers
- (BRCAccountSession)session;
- (BRCDownloadTrackers)initWithSession:(id)a3;
- (id)trackedFileObjectIDs;
- (void)addDownloadTracker:(id)a3 forFileObjectID:(id)a4 withEtagIfLoser:(id)a5;
- (void)removeDownloadTracker:(id)a3;
@end

@implementation BRCDownloadTrackers

- (BRCDownloadTrackers)initWithSession:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BRCDownloadTrackers;
  v5 = [(BRCDownloadTrackers *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_session, v4);
  }

  return v6;
}

- (id)trackedFileObjectIDs
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_trackersByFileObjectID allKeys];
  objc_sync_exit(v2);

  return v3;
}

- (void)addDownloadTracker:(id)a3 forFileObjectID:(id)a4 withEtagIfLoser:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  objc_sync_enter(v11);
  v12 = brc_bread_crumbs();
  v13 = brc_notifications_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v23 = 134219010;
    v24 = v8;
    v25 = 2112;
    v26 = v8;
    v27 = 2112;
    v28 = v9;
    v29 = 2112;
    v30 = v10;
    v31 = 2112;
    v32 = v12;
    _os_log_debug_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEBUG, "[NOTIF] addDownloadTracker %p %@ forFileObjectID %@ withEtagIfLoser %@%@", &v23, 0x34u);
  }

  if (!v11->_trackersByFileObjectID)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    trackersByFileObjectID = v11->_trackersByFileObjectID;
    v11->_trackersByFileObjectID = v14;
  }

  v16 = +[BRCTrackedVersion trackedVersionFor:withEtagIfLoser:kind:](BRCTrackedVersion, "trackedVersionFor:withEtagIfLoser:kind:", v9, v10, [v8 kind]);
  v17 = [(NSMutableDictionary *)v11->_trackersByFileObjectID objectForKeyedSubscript:v16];
  if (!v17)
  {
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(NSMutableDictionary *)v11->_trackersByFileObjectID setObject:v17 forKeyedSubscript:v16];
  }

  [v17 addObject:v8];
  fileObjectIDsByTracker = v11->_fileObjectIDsByTracker;
  if (!fileObjectIDsByTracker)
  {
    v19 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v20 = v11->_fileObjectIDsByTracker;
    v11->_fileObjectIDsByTracker = v19;

    fileObjectIDsByTracker = v11->_fileObjectIDsByTracker;
  }

  v21 = [(NSMapTable *)fileObjectIDsByTracker objectForKey:v8];
  if (!v21)
  {
    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(NSMapTable *)v11->_fileObjectIDsByTracker setObject:v21 forKey:v8];
  }

  [v21 addObject:v16];

  objc_sync_exit(v11);
  v22 = *MEMORY[0x277D85DE8];
}

- (void)removeDownloadTracker:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = brc_bread_crumbs();
  v7 = brc_notifications_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(BRCDownloadTrackers *)v4 removeDownloadTracker:v6, v7];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [(NSMapTable *)v5->_fileObjectIDsByTracker objectForKey:v4, 0];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [(NSMutableDictionary *)v5->_trackersByFileObjectID objectForKeyedSubscript:v12];
        [v13 removeObject:v4];
        if (![v13 count])
        {
          [(NSMutableDictionary *)v5->_trackersByFileObjectID removeObjectForKey:v12];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  if (![(NSMutableDictionary *)v5->_trackersByFileObjectID count])
  {
    trackersByFileObjectID = v5->_trackersByFileObjectID;
    v5->_trackersByFileObjectID = 0;
  }

  [(NSMapTable *)v5->_fileObjectIDsByTracker removeObjectForKey:v4];
  if (![(NSMapTable *)v5->_fileObjectIDsByTracker count])
  {
    fileObjectIDsByTracker = v5->_fileObjectIDsByTracker;
    v5->_fileObjectIDsByTracker = 0;
  }

  objc_sync_exit(v5);

  v16 = *MEMORY[0x277D85DE8];
}

- (BRCAccountSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

- (void)removeDownloadTracker:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 134218498;
  v5 = a1;
  v6 = 2112;
  v7 = a1;
  v8 = 2112;
  v9 = a2;
  _os_log_debug_impl(&dword_223E7A000, log, OS_LOG_TYPE_DEBUG, "[NOTIF] Removing download tracker %p %@%@", &v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

@end