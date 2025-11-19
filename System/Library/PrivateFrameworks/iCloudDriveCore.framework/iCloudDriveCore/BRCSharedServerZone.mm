@interface BRCSharedServerZone
- (BOOL)_propagateFolderDeletesToTheirChildren;
- (BRCSharedServerZone)initWithMangledID:(id)a3 dbRowID:(id)a4 plist:(id)a5 session:(id)a6;
- (BRCSyncContext)transferSyncContext;
- (BRCSyncContext)transferSyncContextIfExists;
- (int64_t)_propagateDeleteToChildrenOfItemID:(id)a3;
- (void)_propagateFolderDeletesToTheirChildren;
- (void)addForegroundClient:(id)a3;
- (void)removeForegroundClient:(id)a3;
- (void)sideCarZoneWasReset;
@end

@implementation BRCSharedServerZone

- (BRCSharedServerZone)initWithMangledID:(id)a3 dbRowID:(id)a4 plist:(id)a5 session:(id)a6
{
  v10 = a3;
  v15.receiver = self;
  v15.super_class = BRCSharedServerZone;
  v11 = [(BRCServerZone *)&v15 initWithMangledID:v10 dbRowID:a4 plist:a5 session:a6];
  if (v11)
  {
    v12 = [v10 ownerName];
    ownerName = v11->_ownerName;
    v11->_ownerName = v12;
  }

  return v11;
}

- (int64_t)_propagateDeleteToChildrenOfItemID:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(BRCPQLConnection *)self->super._db execute:@"UPDATE server_items SET item_state = 1, item_rank = NULL WHERE item_parent_id = %@ AND zone_rowid = %@ AND item_state = 0", v4, self->super._dbRowID])
  {
    v5 = [(BRCPQLConnection *)self->super._db changes];
  }

  else
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, 0x90u))
    {
      v10 = [(BRCPQLConnection *)self->super._db lastError];
      *buf = 138412802;
      v12 = v4;
      v13 = 2112;
      v14 = v10;
      v15 = 2112;
      v16 = v6;
      _os_log_error_impl(&dword_223E7A000, v7, 0x90u, "[ERROR] failed saving sharing options update %@: %@%@", buf, 0x20u);
    }

    v5 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)_propagateFolderDeletesToTheirChildren
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = [(BRCServerZone *)self mangledID];
  v4 = [BRCUserDefaults defaultsForMangledID:v3];
  v5 = [v4 maxRelativePathDepth];

  v6 = [[BRCItemID alloc] _initAsZoneRootWithZoneRowID:self->super._dbRowID];
  v7 = [(BRCPQLConnection *)self->super._db execute:@"UPDATE server_items SET item_state = 1, item_parent_id = %@ WHERE zone_rowid = %@   AND item_rank IS NULL   AND NOT EXISTS (SELECT 1 FROM server_items as pi WHERE pi.item_id = server_items.item_parent_id AND pi.zone_rowid = server_items.zone_rowid LIMIT 1)   AND item_parent_id != %@", v6, self->super._dbRowID, v6];
  if ([(BRCPQLConnection *)self->super._db changes])
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(BRCPQLConnection *)self->super._db changes];
      *buf = 134218242;
      v30 = v10;
      v31 = 2112;
      v32 = v8;
      _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEFAULT, "[WARNING] Forced %lld orphans to be tombstones in the shared zone%@", buf, 0x16u);
    }
  }

  v11 = [(BRCPQLConnection *)self->super._db fetch:@"SELECT item_id   FROM server_items  WHERE zone_rowid = %@    AND item_state = 1    AND item_type = 0    AND item_rank IS NULL", self->super._dbRowID];
  if ([v11 next])
  {
    v26 = v7;
    v27 = v6;
LABEL_7:
    context = objc_autoreleasePoolPush();
    v12 = [v11 objectOfClass:objc_opt_class() atIndex:0];
    v13 = objc_opt_new();
    v14 = [(BRCServerZone *)self directDirectoryChildItemIDsOfParentEnumerator:v12];
    [v13 addObject:v14];

    v15 = [(BRCSharedServerZone *)self _propagateDeleteToChildrenOfItemID:v12];
    while (1)
    {
      if (![v13 count])
      {
        if (v15)
        {
          v20 = brc_bread_crumbs();
          v21 = brc_default_log();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218498;
            v30 = v15;
            v31 = 2112;
            v32 = v12;
            v33 = 2112;
            v34 = v20;
            _os_log_debug_impl(&dword_223E7A000, v21, OS_LOG_TYPE_DEBUG, "[DEBUG] propagated delete of %lld recursive children of %@%@", buf, 0x20u);
          }
        }

        objc_autoreleasePoolPop(context);
        if (([v11 next] & 1) == 0)
        {
          v6 = v27;
          v7 = v26;
          break;
        }

        goto LABEL_7;
      }

      v16 = objc_autoreleasePoolPush();
      v17 = [v13 lastObject];
      v18 = [v17 nextObject];
      if (v18)
      {
        v19 = [(BRCServerZone *)self directDirectoryChildItemIDsOfParentEnumerator:v18];
        [v13 addObject:v19];

        if ([v13 count] > v5)
        {
          v22 = brc_bread_crumbs();
          v23 = brc_default_log();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
          {
            [(BRCSharedServerZone *)v22 _propagateFolderDeletesToTheirChildren];
          }

          objc_autoreleasePoolPop(v16);
          objc_autoreleasePoolPop(context);
          v7 = 0;
          v6 = v27;
          break;
        }

        v15 += [(BRCSharedServerZone *)self _propagateDeleteToChildrenOfItemID:v18];
      }

      else
      {
        [v13 removeLastObject];
      }

      objc_autoreleasePoolPop(v16);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)sideCarZoneWasReset
{
  [(BRCPQLConnection *)self->super._db execute:@"UPDATE server_items SET item_favoriterank = NULL, item_lastusedtime = NULL, item_side_car_ckinfo = NULL, item_rank = NULL WHERE zone_rowid = %@ AND (item_sharing_options & 4) == 0", self->super._dbRowID];
  v3 = [(BRCAccountSession *)self->super._session clientTruthWorkloop];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__BRCSharedServerZone_sideCarZoneWasReset__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)addForegroundClient:(id)a3
{
  v4 = a3;
  v5 = [(BRCSharedServerZone *)self transferSyncContext];
  [v5 addForegroundClient:v4];

  v6.receiver = self;
  v6.super_class = BRCSharedServerZone;
  [(BRCServerZone *)&v6 addForegroundClient:v4];
}

- (void)removeForegroundClient:(id)a3
{
  v4 = a3;
  v5 = [(BRCSharedServerZone *)self transferSyncContext];
  [v5 removeForegroundClient:v4];

  v6.receiver = self;
  v6.super_class = BRCSharedServerZone;
  [(BRCServerZone *)&v6 removeForegroundClient:v4];
}

- (BRCSyncContext)transferSyncContext
{
  v3 = [(BRCAccountSession *)self->super._session syncContextProvider];
  v4 = [(BRCServerZone *)self mangledID];
  v5 = [v3 transferSyncContextForMangledID:v4];

  return v5;
}

- (BRCSyncContext)transferSyncContextIfExists
{
  v3 = [(BRCAccountSession *)self->super._session syncContextProvider];
  v4 = [(BRCServerZone *)self mangledID];
  v5 = [v3 transferSyncContextForMangledID:v4 createIfNeeded:0];

  return v5;
}

- (void)_propagateFolderDeletesToTheirChildren
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_223E7A000, a2, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Path depth overflow%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end