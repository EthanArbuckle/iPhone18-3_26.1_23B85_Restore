@interface BRCPrivateServerZone
- (BOOL)validateItemsLoggingToFile:(__sFILE *)a3 db:(id)a4;
- (BOOL)validateStructureLoggingToFile:(__sFILE *)a3 db:(id)a4;
- (BRCZonePurgeOperation)deleteAllContentsOperation;
- (NSError)deleteAllContentsOperationLastError;
- (id)itemByParentID:(id)a3 andName:(id)a4;
- (void)_checkResultSetIsEmpty:(id)a3 logToFile:(__sFILE *)a4 reason:(id)a5 result:(BOOL *)a6;
- (void)deleteAllContentsOnServerWithCompletionBlock:(id)a3;
@end

@implementation BRCPrivateServerZone

- (BRCZonePurgeOperation)deleteAllContentsOperation
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_deleteAllContentsOperation;
  objc_sync_exit(v2);

  return v3;
}

- (NSError)deleteAllContentsOperationLastError
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_deleteAllContentsOperationLastError;
  objc_sync_exit(v2);

  return v3;
}

- (void)deleteAllContentsOnServerWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [[BRCZonePurgeOperation alloc] initWithServerZone:self sessionContext:self->super._session];
  v6 = [MEMORY[0x277CBC4F8] br_purge];
  [(_BRCOperation *)v5 setGroup:v6];

  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __69__BRCPrivateServerZone_deleteAllContentsOnServerWithCompletionBlock___block_invoke;
  v14 = &unk_2785024A0;
  v15 = self;
  v16 = v4;
  v7 = v4;
  [(_BRCOperation *)v5 setFinishBlock:&v11];
  v8 = self;
  objc_sync_enter(v8);
  deleteAllContentsOperation = v8->_deleteAllContentsOperation;
  v8->_deleteAllContentsOperation = v5;
  v10 = v5;

  objc_sync_exit(v8);
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

- (id)itemByParentID:(id)a3 andName:(id)a4
{
  db = self->super._db;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__BRCPrivateServerZone_itemByParentID_andName___block_invoke;
  v7[3] = &unk_2784FF910;
  v7[4] = self;
  v5 = [(BRCPQLConnection *)db fetchObject:v7 sql:@"SELECT zone_rowid, item_rank, item_origname, pcs_state, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, child_basehash_salt, salting_state, basehash_salt_validation_key, quota_used, recursive_child_count, shared_children_count, shared_alias_count, child_count FROM server_items WHERE item_parent_id = %@ AND item_filename = %@ AND +zone_rowid = %@", a3, a4, self->super._dbRowID];

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

- (void)_checkResultSetIsEmpty:(id)a3 logToFile:(__sFILE *)a4 reason:(id)a5 result:(BOOL *)a6
{
  v26 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = [v9 enumerateObjectsOfClass:objc_opt_class()];
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
        *a6 = 0;
        fprintf(a4, "itemID %s %s\n", [v16 UTF8String], objc_msgSend(v10, "UTF8String"));
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  v17 = [v9 error];

  if (v17)
  {
    *a6 = 0;
    v18 = [v9 error];
    v19 = [v18 description];
    fprintf(a4, "SQL error: %s\n", [v19 UTF8String]);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)validateStructureLoggingToFile:(__sFILE *)a3 db:(id)a4
{
  v6 = a4;
  v20 = 1;
  v7 = [(BRCPrivateServerZone *)self clientZone];
  v8 = [v7 defaultAppLibrary];
  v9 = [v8 rootItemID];

  if (([v6 execute:@"DROP TABLE IF EXISTS items_checks"] & 1) != 0 && (objc_msgSend(v6, "execute:", @"CREATE TABLE items_checks (item_id blob PRIMARY KEY, depth integer not null)") & 1) != 0 && (objc_msgSend(v6, "execute:", @"CREATE INDEX items_checks__depth__idx ON items_checks (depth)") & 1) != 0 && (fprintf(a3, "server truth structure validation (%s)\n=================================\n", -[NSString UTF8String](self->super._zoneName, "UTF8String")), objc_msgSend(v6, "execute:", @"INSERT INTO items_checks (item_id, depth) VALUES (%@, 0)", v9)))
  {
    v10 = 0;
    while ([v6 changes])
    {
      v11 = [v6 execute:{@"INSERT INTO items_checks    SELECT c.item_id, %lld      FROM items_checks AS p INNER JOIN server_items AS c ON (p.item_id = c.item_parent_id)     WHERE zone_rowid = %@ AND p.depth = %lld", v10 + 1, self->super._dbRowID, v10}];
      ++v10;
      if ((v11 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v16 = [v6 fetch:{@"SELECT item_id FROM server_items WHERE zone_rowid = %@ AND item_id NOT IN(SELECT item_id FROM items_checks)", self->super._dbRowID}];
    [(BRCPrivateServerZone *)self _checkResultSetIsEmpty:v16 logToFile:a3 reason:@"is an orphan or part of a cycle" result:&v20];
    v17 = [v6 fetch:{@"SELECT c.item_id      FROM server_items AS c INNER JOIN server_items AS p ON (c.zone_rowid = p.zone_rowid AND c.item_parent_id = p.item_id)     WHERE c.zone_rowid = %@ AND c.item_state = 0       AND p.item_state = 1", self->super._dbRowID}];

    [(BRCPrivateServerZone *)self _checkResultSetIsEmpty:v17 logToFile:a3 reason:@"is a live item parented to a tombstone" result:&v20];
    v18 = [v6 fetch:{@"SELECT c.item_id      FROM server_items AS c INNER JOIN server_items AS p ON (c.zone_rowid = p.zone_rowid AND c.item_parent_id = p.item_id)     WHERE c.zone_rowid = %@       AND p.item_type NOT IN (1, 2, 8, 5, 6, 7, 3)", self->super._dbRowID}];

    [(BRCPrivateServerZone *)self _checkResultSetIsEmpty:v18 logToFile:a3 reason:@"is parented to a document" result:&v20];
    v19 = [v6 fetch:{@"SELECT c.item_id      FROM server_items AS c INNER JOIN server_items AS p ON (c.zone_rowid = p.zone_rowid AND c.item_parent_id = p.item_id)     WHERE c.zone_rowid = %@ AND c.item_rank >= p.item_rank       AND p.item_state = 1", self->super._dbRowID}];

    [(BRCPrivateServerZone *)self _checkResultSetIsEmpty:v19 logToFile:a3 reason:@"is an item with a greater rank than a dead parent" result:&v20];
    if (v20 == 1)
    {
      fputs("OK\n", a3);
    }

    fputc(10, a3);
    v14 = v20;
  }

  else
  {
LABEL_8:
    v12 = [v6 lastError];
    v13 = [v12 description];
    fprintf(a3, "SQL error: %s\n", [v13 UTF8String]);

    v14 = 0;
  }

  return v14 & 1;
}

- (BOOL)validateItemsLoggingToFile:(__sFILE *)a3 db:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a4;
  fprintf(a3, "server items checks (%s)\n===================\n", [(NSString *)self->super._zoneName UTF8String]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [(BRCServerZone *)self itemsEnumeratorWithDB:v6];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v8)
  {

LABEL_11:
    fputs("OK\n", a3);
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

      v11 &= [*(*(&v16 + 1) + 8 * i) validateLoggingToFile:a3];
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
  fputc(10, a3);

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

@end