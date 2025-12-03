@interface BRCDownloadTrackers
- (BRCAccountSession)session;
- (BRCDownloadTrackers)initWithSession:(id)session;
- (id)trackedFileObjectIDs;
- (void)addDownloadTracker:(id)tracker forFileObjectID:(id)d withEtagIfLoser:(id)loser;
- (void)removeDownloadTracker:(id)tracker;
@end

@implementation BRCDownloadTrackers

- (BRCDownloadTrackers)initWithSession:(id)session
{
  sessionCopy = session;
  v8.receiver = self;
  v8.super_class = BRCDownloadTrackers;
  v5 = [(BRCDownloadTrackers *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_session, sessionCopy);
  }

  return v6;
}

- (id)trackedFileObjectIDs
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allKeys = [(NSMutableDictionary *)selfCopy->_trackersByFileObjectID allKeys];
  objc_sync_exit(selfCopy);

  return allKeys;
}

- (void)addDownloadTracker:(id)tracker forFileObjectID:(id)d withEtagIfLoser:(id)loser
{
  v33 = *MEMORY[0x277D85DE8];
  trackerCopy = tracker;
  dCopy = d;
  loserCopy = loser;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = brc_bread_crumbs();
  v13 = brc_notifications_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v23 = 134219010;
    v24 = trackerCopy;
    v25 = 2112;
    v26 = trackerCopy;
    v27 = 2112;
    v28 = dCopy;
    v29 = 2112;
    v30 = loserCopy;
    v31 = 2112;
    v32 = v12;
    _os_log_debug_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEBUG, "[NOTIF] addDownloadTracker %p %@ forFileObjectID %@ withEtagIfLoser %@%@", &v23, 0x34u);
  }

  if (!selfCopy->_trackersByFileObjectID)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    trackersByFileObjectID = selfCopy->_trackersByFileObjectID;
    selfCopy->_trackersByFileObjectID = v14;
  }

  v16 = +[BRCTrackedVersion trackedVersionFor:withEtagIfLoser:kind:](BRCTrackedVersion, "trackedVersionFor:withEtagIfLoser:kind:", dCopy, loserCopy, [trackerCopy kind]);
  v17 = [(NSMutableDictionary *)selfCopy->_trackersByFileObjectID objectForKeyedSubscript:v16];
  if (!v17)
  {
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(NSMutableDictionary *)selfCopy->_trackersByFileObjectID setObject:v17 forKeyedSubscript:v16];
  }

  [v17 addObject:trackerCopy];
  fileObjectIDsByTracker = selfCopy->_fileObjectIDsByTracker;
  if (!fileObjectIDsByTracker)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v20 = selfCopy->_fileObjectIDsByTracker;
    selfCopy->_fileObjectIDsByTracker = strongToStrongObjectsMapTable;

    fileObjectIDsByTracker = selfCopy->_fileObjectIDsByTracker;
  }

  v21 = [(NSMapTable *)fileObjectIDsByTracker objectForKey:trackerCopy];
  if (!v21)
  {
    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(NSMapTable *)selfCopy->_fileObjectIDsByTracker setObject:v21 forKey:trackerCopy];
  }

  [v21 addObject:v16];

  objc_sync_exit(selfCopy);
  v22 = *MEMORY[0x277D85DE8];
}

- (void)removeDownloadTracker:(id)tracker
{
  v22 = *MEMORY[0x277D85DE8];
  trackerCopy = tracker;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = brc_bread_crumbs();
  v7 = brc_notifications_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(BRCDownloadTrackers *)trackerCopy removeDownloadTracker:v6, v7];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [(NSMapTable *)selfCopy->_fileObjectIDsByTracker objectForKey:trackerCopy, 0];
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
        v13 = [(NSMutableDictionary *)selfCopy->_trackersByFileObjectID objectForKeyedSubscript:v12];
        [v13 removeObject:trackerCopy];
        if (![v13 count])
        {
          [(NSMutableDictionary *)selfCopy->_trackersByFileObjectID removeObjectForKey:v12];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  if (![(NSMutableDictionary *)selfCopy->_trackersByFileObjectID count])
  {
    trackersByFileObjectID = selfCopy->_trackersByFileObjectID;
    selfCopy->_trackersByFileObjectID = 0;
  }

  [(NSMapTable *)selfCopy->_fileObjectIDsByTracker removeObjectForKey:trackerCopy];
  if (![(NSMapTable *)selfCopy->_fileObjectIDsByTracker count])
  {
    fileObjectIDsByTracker = selfCopy->_fileObjectIDsByTracker;
    selfCopy->_fileObjectIDsByTracker = 0;
  }

  objc_sync_exit(selfCopy);

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