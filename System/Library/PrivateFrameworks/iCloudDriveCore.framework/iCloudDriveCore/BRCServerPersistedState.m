@interface BRCServerPersistedState
- (BOOL)mangledIDIsPendingMigration:(id)a3;
- (BRCServerPersistedState)init;
- (BRCServerPersistedState)initWithCoder:(id)a3;
- (BRCServerPersistedState)initWithState:(id)a3;
- (NSString)description;
- (id)_dataPendingSave;
- (id)_stateToData;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dumpMigrationQueriesForMangledID:(id)a3;
- (id)migrationQueryKeyForMangledID:(id)a3 continuationCursor:(id *)a4;
- (void)abortMigrationsOfMigrationKey:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)initiateMigrationQueryForMangledIDs:(id)a3 key:(id)a4;
- (void)migrationQueryForMangledID:(id)a3 key:(id)a4 didUpdateWithCursor:(id)a5;
- (void)saveToDB:(id)a3;
- (void)setLastSyncDownDate:(id)a3;
- (void)setMinLastUsedTime:(unint64_t)a3;
- (void)setNextRank:(int64_t)a3;
- (void)sqliteBind:(sqlite3_stmt *)a3 index:(int)a4;
@end

@implementation BRCServerPersistedState

- (id)_stateToData
{
  v7 = 0;
  v2 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v7];
  if (v7)
  {
    abc_report_panic_with_signature();
    [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected error while converting server state to data!"];
    objc_claimAutoreleasedReturnValue();
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __37__BRCPQLConnection__setLockedHandler__block_invoke_cold_1();
    }

    brc_append_system_info_to_message();
    v6 = [objc_claimAutoreleasedReturnValue() UTF8String];
    __assert_rtn("[BRCServerPersistedState _stateToData]", "/Library/Caches/com.apple.xbs/Sources/CloudDocs_plugins/core/shared/database/BRCServerPersistedState.m", 361, v6);
  }

  return v2;
}

- (void)setNextRank:(int64_t)a3
{
  if (self->_nextRank != a3)
  {
    self->_needsSave = 1;
    self->_nextRank = a3;
  }
}

- (void)setLastSyncDownDate:(id)a3
{
  v5 = a3;
  if (![(NSDate *)self->_lastSyncDownDate isEqualToDate:?])
  {
    self->_needsSave = 1;
    objc_storeStrong(&self->_lastSyncDownDate, a3);
  }
}

- (void)setMinLastUsedTime:(unint64_t)a3
{
  if (self->_minLastUsedTime != a3)
  {
    self->_needsSave = 1;
    self->_minLastUsedTime = a3;
  }
}

- (NSString)description
{
  v3 = [BRCUserDefaults defaultsForMangledID:0];
  v4 = [v3 dumpDateFormatter];

  v5 = MEMORY[0x277CCACA8];
  v6 = [v4 stringFromDate:self->_lastSyncDownDate];
  v7 = v6;
  v8 = @"never";
  if (v6)
  {
    v8 = v6;
  }

  v9 = [v5 stringWithFormat:@"last-sync:%@ nextRank:%lld minUsedTime:%lld shared-db{%@}", v8, self->_nextRank, self->_minLastUsedTime, self->_sharedDatabaseChangeState];

  return v9;
}

- (BRCServerPersistedState)init
{
  v7.receiver = self;
  v7.super_class = BRCServerPersistedState;
  v2 = [(BRCServerPersistedState *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_nextRank = 1;
    v4 = objc_alloc_init(BRCSharedServerChangeState);
    sharedDatabaseChangeState = v3->_sharedDatabaseChangeState;
    v3->_sharedDatabaseChangeState = v4;

    v3->_needsSave = 1;
  }

  return v3;
}

- (BRCServerPersistedState)initWithState:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = BRCServerPersistedState;
  v5 = [(BRCServerPersistedState *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v5->_nextRank = v4[4];
    v7 = v4[6];
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = objc_alloc_init(BRCSharedServerChangeState);
    }

    sharedDatabaseChangeState = v6->_sharedDatabaseChangeState;
    v6->_sharedDatabaseChangeState = v8;

    v6->_minLastUsedTime = v4[7];
    v6->_needsSave = 1;
    v10 = v4[1];
    if (v10)
    {
      v11 = [v10 copy];
      pendingMigrations = v6->_pendingMigrations;
      v6->_pendingMigrations = v11;
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 initWithState:self];
}

- (BRCServerPersistedState)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = BRCServerPersistedState;
  v5 = [(BRCServerPersistedState *)&v22 init];
  if (v5)
  {
    v5->_nextRank = [v4 decodeInt64ForKey:@"nextRank"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shareDatabase"];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = objc_alloc_init(BRCSharedServerChangeState);
    }

    sharedDatabaseChangeState = v5->_sharedDatabaseChangeState;
    v5->_sharedDatabaseChangeState = v8;

    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v10 setWithObjects:{v11, v12, v13, v14, v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"migrationQuery"];
    pendingMigrations = v5->_pendingMigrations;
    v5->_pendingMigrations = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lsdDate"];
    lastSyncDownDate = v5->_lastSyncDownDate;
    v5->_lastSyncDownDate = v19;

    v5->_minLastUsedTime = [v4 decodeInt64ForKey:@"minUsedTime"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  nextRank = self->_nextRank;
  v5 = a3;
  [v5 encodeInt64:nextRank forKey:@"nextRank"];
  [v5 encodeObject:self->_sharedDatabaseChangeState forKey:@"shareDatabase"];
  [v5 encodeObject:self->_pendingMigrations forKey:@"migrationQuery"];
  [v5 encodeObject:self->_lastSyncDownDate forKey:@"lsdDate"];
  [v5 encodeInt64:self->_minLastUsedTime forKey:@"minUsedTime"];
}

- (void)sqliteBind:(sqlite3_stmt *)a3 index:(int)a4
{
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v6 = v7;
  sqlite3_bind_blob(a3, a4, [v7 bytes], objc_msgSend(v7, "length"), 0xFFFFFFFFFFFFFFFFLL);
}

- (id)_dataPendingSave
{
  v3 = [(BRCServerPersistedState *)self _stateToData];
  if (self->_needsSave || ![(NSData *)self->_originalServerPersistedState isEqualToData:v3])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)saveToDB:(id)a3
{
  v9 = a3;
  v4 = [(BRCServerPersistedState *)self _dataPendingSave];
  v5 = v4;
  if (v4)
  {
    if (([v9 execute:{@"UPDATE server_state SET state = %@", v4}] & 1) == 0)
    {
      abc_report_panic_with_signature();
      [MEMORY[0x277CCACA8] stringWithFormat:@"unable to update the server_state"];
      objc_claimAutoreleasedReturnValue();
      v6 = brc_bread_crumbs();
      v7 = brc_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        __37__BRCPQLConnection__setLockedHandler__block_invoke_cold_1();
      }

      brc_append_system_info_to_message();
      v8 = [objc_claimAutoreleasedReturnValue() UTF8String];
      __assert_rtn("[BRCServerPersistedState saveToDB:]", "/Library/Caches/com.apple.xbs/Sources/CloudDocs_plugins/core/shared/database/BRCServerPersistedState.m", 380, v8);
    }

    objc_storeStrong(&self->_originalServerPersistedState, v5);
    self->_needsSave = 0;
  }
}

- (BOOL)mangledIDIsPendingMigration:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_pendingMigrations objectForKeyedSubscript:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)initiateMigrationQueryForMangledIDs:(id)a3 key:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = v6;
  v9 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      v12 = 0;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * v12);
        pendingMigrations = self->_pendingMigrations;
        if (!pendingMigrations)
        {
          v15 = [MEMORY[0x277CBEB38] dictionary];
          v16 = self->_pendingMigrations;
          self->_pendingMigrations = v15;

          pendingMigrations = self->_pendingMigrations;
        }

        v17 = [(NSMutableDictionary *)pendingMigrations objectForKeyedSubscript:v13];
        if (!v17)
        {
          v18 = self->_pendingMigrations;
          v17 = [MEMORY[0x277CBEB38] dictionary];
          [(NSMutableDictionary *)v18 setObject:v17 forKeyedSubscript:v13];
        }

        v19 = [MEMORY[0x277CBEB68] null];
        [v17 setObject:v19 forKeyedSubscript:v7];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  self->_needsSave = 1;
  v20 = brc_bread_crumbs();
  v21 = brc_default_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    [BRCServerPersistedState initiateMigrationQueryForMangledIDs:? key:?];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)abortMigrationsOfMigrationKey:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  pendingMigrations = self->_pendingMigrations;
  if (pendingMigrations)
  {
    v6 = [(NSMutableDictionary *)pendingMigrations allKeys];
    v7 = [v6 copy];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = [(NSMutableDictionary *)self->_pendingMigrations objectForKeyedSubscript:v13, v18];
          v15 = v14;
          if (v14)
          {
            [v14 removeObjectForKey:v4];
            if (![v15 count])
            {
              [(NSMutableDictionary *)self->_pendingMigrations removeObjectForKey:v13];
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    if (![(NSMutableDictionary *)self->_pendingMigrations count])
    {
      v16 = self->_pendingMigrations;
      self->_pendingMigrations = 0;
    }

    self->_needsSave = 1;
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)migrationQueryKeyForMangledID:(id)a3 continuationCursor:(id *)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v32 = a3;
  v6 = [(NSMutableDictionary *)self->_pendingMigrations objectForKeyedSubscript:?];
  if (v6)
  {
    v31 = a4;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v7 = +[BRCMigrationQueryOperation allMigrationKeysOrdered];
    v8 = [v7 countByEnumeratingWithState:&v33 objects:v45 count:16];
    if (v8)
    {
      v10 = v8;
      v11 = *v34;
      *&v9 = 138412546;
      v30 = v9;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v33 + 1) + 8 * v12);
        v14 = +[BRCMigrationQueryOperation folderShareAliasesMigrationKey];
        if (([v13 isEqualToString:v14] & 1) == 0)
        {
          break;
        }

        v15 = [BRCUserDefaults defaultsForMangledID:v32];
        v16 = [v15 shouldMigrateFetchShareAliases];

        if (v16)
        {
          goto LABEL_13;
        }

        v17 = brc_bread_crumbs();
        v18 = brc_default_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = v30;
          v38 = v32;
          v39 = 2112;
          v40 = v17;
          _os_log_debug_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] Ignoring share alias migration key for %@ because the user default is no%@", buf, 0x16u);
        }

LABEL_14:
        if (v10 == ++v12)
        {
          v10 = [v7 countByEnumeratingWithState:&v33 objects:v45 count:16];
          if (v10)
          {
            goto LABEL_4;
          }

          goto LABEL_16;
        }
      }

LABEL_13:
      v19 = [v6 objectForKeyedSubscript:v13];
      if (v19)
      {
        v20 = v19;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = v20;
          v23 = v31;
        }

        else
        {
          objc_opt_class();
          v23 = v31;
          if (objc_opt_isKindOfClass())
          {
            v22 = [[BRCMigrationCursor alloc] initWithCKQueryCursor:v20];
          }

          else
          {
            v22 = 0;
          }
        }

        v24 = v22;
        *v23 = v22;
        v25 = brc_bread_crumbs();
        v26 = brc_default_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v29 = prettyPrintMigrationCursor(v22);
          *buf = 138413058;
          v38 = v32;
          v39 = 2112;
          v40 = v13;
          v41 = 2112;
          v42 = v29;
          v43 = 2112;
          v44 = v25;
          _os_log_debug_impl(&dword_223E7A000, v26, OS_LOG_TYPE_DEBUG, "[DEBUG] pending migration for %@: %@ from cursor:%@%@", buf, 0x2Au);
        }

        v21 = v13;
        goto LABEL_28;
      }

      goto LABEL_14;
    }

LABEL_16:

    *v31 = 0;
    v7 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [BRCServerPersistedState migrationQueryKeyForMangledID:continuationCursor:];
    }

    v21 = 0;
LABEL_28:
  }

  else
  {
    v21 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)migrationQueryForMangledID:(id)a3 key:(id)a4 didUpdateWithCursor:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  p_pendingMigrations = &self->_pendingMigrations;
  v12 = [(NSMutableDictionary *)self->_pendingMigrations objectForKeyedSubscript:v8];
  v13 = v12;
  if (v12)
  {
    if (v10)
    {
      [v12 setObject:v10 forKeyedSubscript:v9];
    }

    else
    {
      [v12 removeObjectForKey:v9];
      if (![v13 count])
      {
        [(NSMutableDictionary *)*p_pendingMigrations removeObjectForKey:v8];
        if (![(NSMutableDictionary *)*p_pendingMigrations count])
        {
          v16 = *p_pendingMigrations;
          *p_pendingMigrations = 0;
        }
      }
    }

    self->_needsSave = 1;
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [BRCServerPersistedState migrationQueryForMangledID:? key:? didUpdateWithCursor:?];
    }
  }

  else
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [BRCServerPersistedState migrationQueryForMangledID:key:didUpdateWithCursor:];
    }
  }
}

- (id)dumpMigrationQueriesForMangledID:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_pendingMigrations objectForKeyedSubscript:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CCAB68] stringWithFormat:@"{"];
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x2020000000;
    v15[3] = "";
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __60__BRCServerPersistedState_dumpMigrationQueriesForMangledID___block_invoke;
    v12 = &unk_278508588;
    v7 = v6;
    v13 = v7;
    v14 = v15;
    [v5 enumerateKeysAndObjectsUsingBlock:&v9];
    [v7 appendString:{@"}", v9, v10, v11, v12}];

    _Block_object_dispose(v15, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __60__BRCServerPersistedState_dumpMigrationQueriesForMangledID___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = *(*(*(a1 + 40) + 8) + 24);
  v9 = a3;
  v10 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  v12 = prettyPrintQueryCursor(v11);

  [v7 appendFormat:@"%s%@:%@", v8, v10, v12];
  *(*(*(a1 + 40) + 8) + 24) = " ";
  *a4 = 0;
}

@end