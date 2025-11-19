@interface BRCSharedClientZone
- (id)rootItemID;
- (id)shareAcceptOperationForItemID:(id)a3;
- (id)shareAcceptationSidefaultEnumerator;
- (void)addAcceptOperation:(id)a3 forItemID:(id)a4;
- (void)removeAllShareAcceptationSidefaults;
- (void)setServerZone:(id)a3;
@end

@implementation BRCSharedClientZone

- (void)setServerZone:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [BRCSharedClientZone setServerZone:];
  }

  serverZone = self->super._serverZone;
  self->super._serverZone = v4;
}

- (id)rootItemID
{
  v3 = [BRCItemID alloc];
  v4 = [(BRCClientZone *)self dbRowID];
  v5 = [(BRCItemID *)v3 _initAsZoneRootWithZoneRowID:v4];

  return v5;
}

- (id)shareAcceptationSidefaultEnumerator
{
  v3 = [(BRCPQLConnection *)self->super._db fetch:@"SELECT rowid, zone_rowid, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_parent_zone_rowid, item_localsyncupstate, item_local_diffs, item_notifs_rank, app_library_rowid, item_min_supported_os_rowid, item_user_visible, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, item_processing_stamp, item_bouncedname, item_scope, item_local_change_count, item_old_version_identifier, fp_creation_item_identifier, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, version_uploaded_assets, version_upload_error, version_old_zone_item_id, version_old_zone_rowid, version_local_change_count, version_old_version_identifier, item_live_conflict_loser_etags, item_file_id, item_generation FROM client_items WHERE item_type IN (8, 10) AND zone_rowid = %@", self->super._dbRowID];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__BRCSharedClientZone_shareAcceptationSidefaultEnumerator__block_invoke;
  v6[3] = &unk_2784FF910;
  v6[4] = self;
  v4 = [v3 enumerateObjects:v6];

  return v4;
}

id __58__BRCSharedClientZone_shareAcceptationSidefaultEnumerator__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 session];
  v8 = [*(a1 + 32) session];
  v9 = [v8 clientDB];
  v10 = [v7 newLocalItemFromPQLResultSet:v6 db:v9 error:a3];

  return v10;
}

- (void)addAcceptOperation:(id)a3 forItemID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  shareAcceptationByItemID = v8->_shareAcceptationByItemID;
  if (!shareAcceptationByItemID)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v11 = v8->_shareAcceptationByItemID;
    v8->_shareAcceptationByItemID = v10;

    shareAcceptationByItemID = v8->_shareAcceptationByItemID;
  }

  v12 = [(NSMutableDictionary *)shareAcceptationByItemID objectForKeyedSubscript:v7];
  if (v12)
  {
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [(BRCSharedClientZone *)v12 addAcceptOperation:v13 forItemID:v14];
    }
  }

  [(NSMutableDictionary *)v8->_shareAcceptationByItemID setObject:v6 forKeyedSubscript:v7];
  v15 = [v6 completionBlock];
  objc_initWeak(&location, v6);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __52__BRCSharedClientZone_addAcceptOperation_forItemID___block_invoke;
  v18[3] = &unk_278508330;
  objc_copyWeak(&v21, &location);
  v18[4] = v8;
  v16 = v7;
  v19 = v16;
  v17 = v15;
  v20 = v17;
  [v6 setCompletionBlock:v18];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  objc_sync_exit(v8);
  [(BRCClientZone *)v8 addSyncDownDependency:v6];
}

void __52__BRCSharedClientZone_addAcceptOperation_forItemID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = [*(*(a1 + 32) + 528) objectForKeyedSubscript:*(a1 + 40)];

  if (v3 == WeakRetained)
  {
    [*(*(a1 + 32) + 528) setObject:0 forKeyedSubscript:*(a1 + 40)];
  }

  if (![*(*(a1 + 32) + 528) count])
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 528);
    *(v4 + 528) = 0;
  }

  objc_sync_exit(v2);

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))();
  }
}

- (id)shareAcceptOperationForItemID:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_shareAcceptationByItemID objectForKeyedSubscript:v4];
  objc_sync_exit(v5);

  return v6;
}

- (void)removeAllShareAcceptationSidefaults
{
  v22 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(BRCSharedClientZone *)self shareAcceptationSidefaultEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        if (([v8 isShareAcceptationFault] & 1) == 0)
        {
          [(BRCSharedClientZone *)v19 removeAllShareAcceptationSidefaults];
        }

        v10 = [v8 itemID];
        v11 = [(BRCClientZone *)self serverItemByItemID:v10];

        v12 = [v8 asShareAcceptationFault];
        v13 = v12;
        if (v11)
        {
          [v12 markNeedsTransformIntoNormalFault];

          [v8 saveToDB];
        }

        else
        {
          [v12 deleteShareAcceptationFault];
        }

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v5);
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end