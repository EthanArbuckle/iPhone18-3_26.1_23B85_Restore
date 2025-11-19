@interface BRCUploadSyncUpRequestsManager
+ (id)_fetchManagersDictionary;
+ (id)defaultManagerWithPersonaIdentifier:(id)a3;
- (BOOL)cancelRequestForIdentifier:(id)a3 error:(id *)a4;
- (BOOL)finishRequestForIdentifer:(id)a3 finishError:(id)a4 error:(id *)a5;
- (id)_initWithPersonaIdentifier:(id)a3;
- (id)getProgressForIdentifier:(id)a3;
- (void)_callFinishBlockOnDataRequest:(id)a3 finishError:(id)a4;
- (void)_invalidateRequestsTableWithNewSource:(id)a3;
- (void)dumpToContext:(id)a3;
- (void)finishRequestForItemsInZoneRowID:(id)a3 finishError:(id)a4;
- (void)invalidateRequestsOfClient:(id)a3;
@end

@implementation BRCUploadSyncUpRequestsManager

+ (id)_fetchManagersDictionary
{
  if (_fetchManagersDictionary_onceToken != -1)
  {
    +[BRCUploadSyncUpRequestsManager _fetchManagersDictionary];
  }

  v3 = _fetchManagersDictionary_managersByPersona;

  return v3;
}

uint64_t __58__BRCUploadSyncUpRequestsManager__fetchManagersDictionary__block_invoke()
{
  _fetchManagersDictionary_managersByPersona = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (id)_initWithPersonaIdentifier:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = BRCUploadSyncUpRequestsManager;
  v6 = [(BRCUploadSyncUpRequestsManager *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_personaIdentifer, a3);
    v8 = objc_opt_new();
    requestsByItemGlobalID = v7->_requestsByItemGlobalID;
    v7->_requestsByItemGlobalID = v8;

    v10 = objc_opt_new();
    zoneIDToItemIDs = v7->_zoneIDToItemIDs;
    v7->_zoneIDToItemIDs = v10;

    latestSourceIdentifier = v7->_latestSourceIdentifier;
    v7->_latestSourceIdentifier = &unk_2837B0580;
  }

  return v7;
}

+ (id)defaultManagerWithPersonaIdentifier:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _fetchManagersDictionary];
  objc_sync_enter(v4);
  v5 = [v4 objectForKeyedSubscript:v3];
  if (!v5)
  {
    v5 = [[BRCUploadSyncUpRequestsManager alloc] _initWithPersonaIdentifier:v3];
    [v4 setObject:v5 forKeyedSubscript:v3];
  }

  objc_sync_exit(v4);

  return v5;
}

- (void)_callFinishBlockOnDataRequest:(id)a3 finishError:(id)a4
{
  if (a3)
  {
    v5 = a4;
    v6 = [a3 finishBlock];
    v6[2](v6, v5);
  }
}

- (BOOL)finishRequestForIdentifer:(id)a3 finishError:(id)a4 error:(id *)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = self;
  objc_sync_enter(v10);
  v11 = [(NSMutableDictionary *)v10->_requestsByItemGlobalID objectForKey:v8];
  v12 = [v11 copy];

  [(NSMutableDictionary *)v10->_requestsByItemGlobalID removeObjectForKey:v8];
  zoneIDToItemIDs = v10->_zoneIDToItemIDs;
  v14 = [v8 zoneRowID];
  v15 = [(NSMutableDictionary *)zoneIDToItemIDs objectForKey:v14];

  if (v15)
  {
    [v15 removeObject:v8];
    if (![v15 count])
    {
      v16 = v10->_zoneIDToItemIDs;
      v17 = [v8 zoneRowID];
      [(NSMutableDictionary *)v16 removeObjectForKey:v17];
    }
  }

  objc_sync_exit(v10);
  if (v12)
  {
    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v28 = v8;
      v29 = 2112;
      v30 = v9;
      v31 = 2112;
      v32 = v18;
      _os_log_debug_impl(&dword_223E7A000, v19, OS_LOG_TYPE_DEBUG, "[DEBUG] Calling finish block for %@ with %@%@", buf, 0x20u);
    }

    [(BRCUploadSyncUpRequestsManager *)v10 _callFinishBlockOnDataRequest:v12 finishError:v9];
  }

  else
  {
    v20 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1007 description:{@"there is no request for %@", v8}];
    if (v20)
    {
      v21 = brc_bread_crumbs();
      v22 = brc_default_log();
      if (os_log_type_enabled(v22, 0x90u))
      {
        v26 = "(passed to caller)";
        *buf = 136315906;
        v28 = "[BRCUploadSyncUpRequestsManager finishRequestForIdentifer:finishError:error:]";
        v29 = 2080;
        if (!a5)
        {
          v26 = "(ignored by caller)";
        }

        v30 = v26;
        v31 = 2112;
        v32 = v20;
        v33 = 2112;
        v34 = v21;
        _os_log_error_impl(&dword_223E7A000, v22, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (a5)
    {
      v23 = v20;
      *a5 = v20;
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return v12 != 0;
}

- (BOOL)cancelRequestForIdentifier:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CCA9B8];
  v7 = a3;
  v8 = [v6 brc_errorOperationCancelled];
  LOBYTE(a4) = [(BRCUploadSyncUpRequestsManager *)self finishRequestForIdentifer:v7 finishError:v8 error:a4];

  return a4;
}

- (void)finishRequestForItemsInZoneRowID:(id)a3 finishError:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [BRCUploadSyncUpRequestsManager finishRequestForItemsInZoneRowID:finishError:];
  }

  v11 = [(NSMutableDictionary *)v8->_zoneIDToItemIDs objectForKey:v6];
  v12 = v11;
  if (v11)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v14)
    {
      v15 = *v20;
      do
      {
        v16 = 0;
        do
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = [(NSMutableDictionary *)v8->_requestsByItemGlobalID objectForKey:*(*(&v19 + 1) + 8 * v16), v19];
          [(BRCUploadSyncUpRequestsManager *)v8 _callFinishBlockOnDataRequest:v17 finishError:v7];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }

    [(NSMutableDictionary *)v8->_requestsByItemGlobalID removeObjectsForKeys:v13];
  }

  objc_sync_exit(v8);
  v18 = *MEMORY[0x277D85DE8];
}

- (id)getProgressForIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_requestsByItemGlobalID objectForKey:v4];
  v7 = [v6 progress];

  objc_sync_exit(v5);

  return v7;
}

- (void)_invalidateRequestsTableWithNewSource:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  requestsByItemGlobalID = self->_requestsByItemGlobalID;
  self->_requestsByItemGlobalID = v5;

  v7 = objc_opt_new();
  zoneIDToItemIDs = self->_zoneIDToItemIDs;
  self->_zoneIDToItemIDs = v7;

  latestSourceIdentifier = self->_latestSourceIdentifier;
  self->_latestSourceIdentifier = v4;
}

- (void)invalidateRequestsOfClient:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if ([v4 br_isEqualToNumber:v5->_latestSourceIdentifier])
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [BRCUploadSyncUpRequestsManager invalidateRequestsOfClient:];
    }

    [(BRCUploadSyncUpRequestsManager *)v5 _invalidateRequestsTableWithNewSource:0];
  }

  objc_sync_exit(v5);
}

- (void)dumpToContext:(id)a3
{
  v4 = a3;
  [v4 writeLineWithFormat:@"fpfs modifications tracked requests"];
  [v4 writeLineWithFormat:@"-----------------------------------------------------"];
  v5 = self;
  objc_sync_enter(v5);
  [v4 writeLineWithFormat:@"tracked requests of client (%lu) : (%lu):", -[NSNumber unsignedLongValue](v5->_latestSourceIdentifier, "unsignedLongValue"), -[NSMutableDictionary count](v5->_requestsByItemGlobalID, "count")];
  if ([(NSMutableDictionary *)v5->_requestsByItemGlobalID count])
  {
    [v4 writeLineWithFormat:@"{"];
    [v4 pushIndentation];
  }

  requestsByItemGlobalID = v5->_requestsByItemGlobalID;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__BRCUploadSyncUpRequestsManager_dumpToContext___block_invoke;
  v8[3] = &unk_278507A18;
  v7 = v4;
  v9 = v7;
  [(NSMutableDictionary *)requestsByItemGlobalID enumerateKeysAndObjectsUsingBlock:v8];
  if ([(NSMutableDictionary *)v5->_requestsByItemGlobalID count])
  {
    [v7 popIndentation];
    [v7 writeLineWithFormat:@"}"];
  }

  [v7 writeEmptyLine];

  objc_sync_exit(v5);
}

@end