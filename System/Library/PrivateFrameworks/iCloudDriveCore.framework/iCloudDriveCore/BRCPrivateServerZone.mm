@interface BRCPrivateServerZone
- (BOOL)validateItemsLoggingToFile:(__sFILE *)file db:(id)db;
- (BOOL)validateStructureLoggingToFile:(__sFILE *)file db:(id)db;
- (BRCZonePurgeOperation)deleteAllContentsOperation;
- (NSError)deleteAllContentsOperationLastError;
- (id)itemByParentID:(id)d andName:(id)name;
- (void)_checkResultSetIsEmpty:(id)empty logToFile:(__sFILE *)file reason:(id)reason result:(BOOL *)result;
- (void)deleteAllContentsOnServerWithCompletionBlock:(id)block;
@end

@implementation BRCPrivateServerZone

- (BRCZonePurgeOperation)deleteAllContentsOperation
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_deleteAllContentsOperation;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSError)deleteAllContentsOperationLastError
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_deleteAllContentsOperationLastError;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)deleteAllContentsOnServerWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = [[BRCZonePurgeOperation alloc] initWithServerZone:self sessionContext:self->super._session];
  br_purge = [MEMORY[0x277CBC4F8] br_purge];
  [(_BRCOperation *)v5 setGroup:br_purge];

  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __69__BRCPrivateServerZone_deleteAllContentsOnServerWithCompletionBlock___block_invoke;
  v14 = &unk_2785024A0;
  selfCopy = self;
  v16 = blockCopy;
  v7 = blockCopy;
  [(_BRCOperation *)v5 setFinishBlock:&v11];
  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  deleteAllContentsOperation = selfCopy2->_deleteAllContentsOperation;
  selfCopy2->_deleteAllContentsOperation = v5;
  v10 = v5;

  objc_sync_exit(selfCopy2);
  [(_BRCOperation *)v10 schedule:v11];
}

void __69__BRCPrivateServerZone_deleteAllContentsOnServerWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  objc_sync_enter(v5);
  v6 = *(a1 + 32);
  v7 = *(v6 + 112);
  *(v6 + 112) = 0;

  v8 = *(a1 + 32);
  v9 = *(v8 + 120);
  *(v8 + 120) = v4;
  v10 = v4;

  objc_sync_exit(v5);
  (*(*(a1 + 40) + 16))();
}

- (id)itemByParentID:(id)d andName:(id)name
{
  db = self->super._db;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__BRCPrivateServerZone_itemByParentID_andName___block_invoke;
  v7[3] = &unk_2784FF910;
  v7[4] = self;
  v5 = [(BRCPQLConnection *)db fetchObject:v7 sql:@"SELECT zone_rowid, item_rank, item_origname, pcs_state, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, child_basehash_salt, salting_state, basehash_salt_validation_key, quota_used, recursive_child_count, shared_children_count, shared_alias_count, child_count FROM server_items WHERE item_parent_id = %@ AND item_filename = %@ AND +zone_rowid = %@", d, name, self->super._dbRowID];

  return v5;
}

id __47__BRCPrivateServerZone_itemByParentID_andName___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 session];
  v7 = [v6 newServerItemFromPQLResultSet:v5 error:a3];

  return v7;
}

- (void)_checkResultSetIsEmpty:(id)empty logToFile:(__sFILE *)file reason:(id)reason result:(BOOL *)result
{
  v26 = *MEMORY[0x277D85DE8];
  emptyCopy = empty;
  reasonCopy = reason;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = [emptyCopy enumerateObjectsOfClass:objc_opt_class()];
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        *result = 0;
        fprintf(file, "itemID %s %s\n", [v16 UTF8String], objc_msgSend(reasonCopy, "UTF8String"));
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  error = [emptyCopy error];

  if (error)
  {
    *result = 0;
    error2 = [emptyCopy error];
    v19 = [error2 description];
    fprintf(file, "SQL error: %s\n", [v19 UTF8String]);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)validateStructureLoggingToFile:(__sFILE *)file db:(id)db
{
  dbCopy = db;
  v20 = 1;
  clientZone = [(BRCPrivateServerZone *)self clientZone];
  defaultAppLibrary = [clientZone defaultAppLibrary];
  rootItemID = [defaultAppLibrary rootItemID];

  if (([dbCopy execute:@"DROP TABLE IF EXISTS items_checks"] & 1) != 0 && (objc_msgSend(dbCopy, "execute:", @"CREATE TABLE items_checks (item_id blob PRIMARY KEY, depth integer not null)") & 1) != 0 && (objc_msgSend(dbCopy, "execute:", @"CREATE INDEX items_checks__depth__idx ON items_checks (depth)") & 1) != 0 && (fprintf(file, "server truth structure validation (%s)\n=================================\n", -[NSString UTF8String](self->super._zoneName, "UTF8String")), objc_msgSend(dbCopy, "execute:", @"INSERT INTO items_checks (item_id, depth) VALUES (%@, 0)", rootItemID)))
  {
    v10 = 0;
    while ([dbCopy changes])
    {
      v11 = [dbCopy execute:{@"INSERT INTO items_checks    SELECT c.item_id, %lld      FROM items_checks AS p INNER JOIN server_items AS c ON (p.item_id = c.item_parent_id)     WHERE zone_rowid = %@ AND p.depth = %lld", v10 + 1, self->super._dbRowID, v10}];
      ++v10;
      if ((v11 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v16 = [dbCopy fetch:{@"SELECT item_id FROM server_items WHERE zone_rowid = %@ AND item_id NOT IN(SELECT item_id FROM items_checks)", self->super._dbRowID}];
    [(BRCPrivateServerZone *)self _checkResultSetIsEmpty:v16 logToFile:file reason:@"is an orphan or part of a cycle" result:&v20];
    v17 = [dbCopy fetch:{@"SELECT c.item_id      FROM server_items AS c INNER JOIN server_items AS p ON (c.zone_rowid = p.zone_rowid AND c.item_parent_id = p.item_id)     WHERE c.zone_rowid = %@ AND c.item_state = 0       AND p.item_state = 1", self->super._dbRowID}];

    [(BRCPrivateServerZone *)self _checkResultSetIsEmpty:v17 logToFile:file reason:@"is a live item parented to a tombstone" result:&v20];
    v18 = [dbCopy fetch:{@"SELECT c.item_id      FROM server_items AS c INNER JOIN server_items AS p ON (c.zone_rowid = p.zone_rowid AND c.item_parent_id = p.item_id)     WHERE c.zone_rowid = %@       AND p.item_type NOT IN (1, 2, 8, 5, 6, 7, 3)", self->super._dbRowID}];

    [(BRCPrivateServerZone *)self _checkResultSetIsEmpty:v18 logToFile:file reason:@"is parented to a document" result:&v20];
    v19 = [dbCopy fetch:{@"SELECT c.item_id      FROM server_items AS c INNER JOIN server_items AS p ON (c.zone_rowid = p.zone_rowid AND c.item_parent_id = p.item_id)     WHERE c.zone_rowid = %@ AND c.item_rank >= p.item_rank       AND p.item_state = 1", self->super._dbRowID}];

    [(BRCPrivateServerZone *)self _checkResultSetIsEmpty:v19 logToFile:file reason:@"is an item with a greater rank than a dead parent" result:&v20];
    if (v20 == 1)
    {
      fputs("OK\n", file);
    }

    fputc(10, file);
    v14 = v20;
  }

  else
  {
LABEL_8:
    lastError = [dbCopy lastError];
    v13 = [lastError description];
    fprintf(file, "SQL error: %s\n", [v13 UTF8String]);

    v14 = 0;
  }

  return v14 & 1;
}

- (BOOL)validateItemsLoggingToFile:(__sFILE *)file db:(id)db
{
  v21 = *MEMORY[0x277D85DE8];
  dbCopy = db;
  fprintf(file, "server items checks (%s)\n===================\n", [(NSString *)self->super._zoneName UTF8String]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [(BRCServerZone *)self itemsEnumeratorWithDB:dbCopy];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v8)
  {

LABEL_11:
    fputs("OK\n", file);
    v13 = 1;
    goto LABEL_12;
  }

  v9 = v8;
  v10 = *v17;
  v11 = 1;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v17 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v11 &= [*(*(&v16 + 1) + 8 * i) validateLoggingToFile:file];
    }

    v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  }

  while (v9);

  if (v11)
  {
    goto LABEL_11;
  }

  v13 = 0;
LABEL_12:
  fputc(10, file);

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

@end