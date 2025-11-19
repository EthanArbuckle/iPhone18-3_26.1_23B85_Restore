@interface BRCSharingCopyShareURLOperation
- (BRCSharingCopyShareURLOperation)initWithShare:(id)a3 zone:(id)a4 sessionContext:(id)a5;
- (id)createActivity;
- (void)_completedWithURL:(id)a3 error:(id)a4;
- (void)main;
@end

@implementation BRCSharingCopyShareURLOperation

- (BRCSharingCopyShareURLOperation)initWithShare:(id)a3 zone:(id)a4 sessionContext:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 recordID];
  v12 = [v11 recordName];
  v13 = [@"sharing/copy-shareURL" stringByAppendingPathComponent:v12];

  v16.receiver = self;
  v16.super_class = BRCSharingCopyShareURLOperation;
  v14 = [(BRCSharingModifyShareOperation *)&v16 initWithName:v13 zone:v9 share:v10 sessionContext:v8];

  return v14;
}

- (id)createActivity
{
  v2 = _os_activity_create(&dword_223E7A000, "sharing/copy-shareURL", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)_completedWithURL:(id)a3 error:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    share = self->super._share;
    v14 = 138413058;
    v15 = v6;
    v16 = 2112;
    v17 = share;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v9;
    _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] Finished copying URL %@ for share %@ error %@%@", &v14, 0x2Au);
  }

  if (v6)
  {
    [v8 setObject:v6 forKeyedSubscript:@"url"];
  }

  v11 = self->super._share;
  if (v11)
  {
    [v8 setObject:v11 forKeyedSubscript:@"share"];
  }

  [(_BRCOperation *)self completedWithResult:v8 error:v7];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)main
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __39__BRCSharingCopyShareURLOperation_main__block_invoke;
  v2[3] = &unk_2784FFCE0;
  v2[4] = self;
  [(BRCSharingModifyShareOperation *)self _performAfterPreparingSharingIdentityIfNecessaryWhenWantRoutingKey:1 completion:v2];
}

void __39__BRCSharingCopyShareURLOperation_main__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  if (!a3)
  {
    v6 = [v4[65] clientZone];
    v7 = [v6 itemByItemID:*(*(a1 + 32) + 536)];

    v8 = [v7 st];
    v9 = [v8 logicalName];

    v10 = *(a1 + 32);
    if (v9)
    {
      [v10[66] brc_updateWithLogicalName:v9 isFolder:{objc_msgSend(v7, "isDirectory")}];
      [*(*(a1 + 32) + 544) brc_updateWithLogicalName:v9 isFolder:{objc_msgSend(v7, "isDirectory")}];
      v11 = brc_bread_crumbs();
      v12 = brc_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v36 = *(*(a1 + 32) + 528);
        *buf = 138412546;
        v41 = v36;
        v42 = 2112;
        v43 = v11;
        _os_log_debug_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] Share: %@%@", buf, 0x16u);
      }

      v13 = brc_bread_crumbs();
      v14 = brc_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v37 = *(*(a1 + 32) + 544);
        *buf = 138412546;
        v41 = v37;
        v42 = 2112;
        v43 = v13;
        _os_log_debug_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] Prepared record: %@%@", buf, 0x16u);
      }

      if (([*(*(a1 + 32) + 528) isKnownToServer] & 1) == 0)
      {
        v15 = *(a1 + 32);
        v16 = *(v15 + 528);
        v17 = [*(v15 + 520) metadataSyncContext];
        v18 = [v17 ckContainerID];
        [v16 CKAssignToContainerWithID:v18];
      }

      if (([*(*(a1 + 32) + 544) isKnownToServer] & 1) == 0)
      {
        v19 = *(a1 + 32);
        v20 = *(v19 + 544);
        v21 = [*(v19 + 520) metadataSyncContext];
        v22 = [v21 ckContainerID];
        [v20 CKAssignToContainerWithID:v22];
      }

      if ([*(*(a1 + 32) + 528) brc_safeToGetURL])
      {
        v23 = [*(*(a1 + 32) + 528) URL];

        if (v23)
        {
          v24 = *(a1 + 32);
          v25 = v24[66];
LABEL_20:
          v27 = [v25 URL];
          [v24 _completedWithURL:v27 error:0];
LABEL_28:

          v35 = *MEMORY[0x277D85DE8];
          return;
        }
      }

      if ([*(*(a1 + 32) + 544) brc_safeToGetURL])
      {
        v26 = [*(*(a1 + 32) + 544) URL];

        if (v26)
        {
          v24 = *(a1 + 32);
          v25 = v24[68];
          goto LABEL_20;
        }
      }

      v10 = *(a1 + 32);
      v33 = brc_bread_crumbs();
      v34 = brc_default_log();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
      {
        v38 = *(*(a1 + 32) + 528);
        *buf = 138412546;
        v41 = v38;
        v42 = 2112;
        v43 = v33;
        _os_log_fault_impl(&dword_223E7A000, v34, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Couldn't get a share URL for %@%@", buf, 0x16u);
      }

      v30 = MEMORY[0x277CCA9B8];
      v31 = *MEMORY[0x277CFACB0];
      v39 = *(*(a1 + 32) + 528);
      v32 = @"unreachable: Couldn't get a share URL for %@";
    }

    else
    {
      v28 = brc_bread_crumbs();
      v29 = brc_default_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        __39__BRCSharingCopyShareURLOperation_main__block_invoke_cold_1();
      }

      v30 = MEMORY[0x277CCA9B8];
      v31 = *MEMORY[0x277CFACB0];
      v32 = @"unreachable: Couldn't get a share URL";
    }

    v27 = [v30 br_errorWithDomain:v31 code:15 description:{v32, v39}];
    [v10 completedWithResult:0 error:v27];
    goto LABEL_28;
  }

  v5 = *MEMORY[0x277D85DE8];

  [v4 completedWithResult:0 error:a3];
}

@end