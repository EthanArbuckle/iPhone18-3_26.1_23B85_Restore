@interface BRCSharingCopyShareOperation
- (BRCSharingCopyShareOperation)initWithItem:(id)a3 sessionContext:(id)a4;
- (id)createActivity;
- (void)fetchRootURLIfNecessaryAndFinishWithShare:(id)a3;
- (void)main;
@end

@implementation BRCSharingCopyShareOperation

- (BRCSharingCopyShareOperation)initWithItem:(id)a3 sessionContext:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 serverZone];
  v9 = [v8 metadataSyncContext];

  if (!v9)
  {
    [BRCSharingCopyShareOperation initWithItem:v6 sessionContext:?];
  }

  v10 = [v6 itemID];
  v11 = [v10 debugItemIDString];
  v12 = [@"sharing/copy-share" stringByAppendingPathComponent:v11];

  v34.receiver = self;
  v34.super_class = BRCSharingCopyShareOperation;
  v13 = [(_BRCOperation *)&v34 initWithName:v12 syncContext:v9 sessionContext:v7];

  if (v13)
  {
    [(_BRCOperation *)v13 setNonDiscretionary:1];
    v14 = [v6 clientZone];
    clientZone = v13->_clientZone;
    v13->_clientZone = v14;

    if (([v6 sharingOptions] & 0x48) != 0)
    {
      if (([v6 sharingOptions] & 4) != 0)
      {
        goto LABEL_13;
      }

LABEL_9:
      v18 = brc_bread_crumbs();
      v19 = brc_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v36 = v6;
        v37 = 2112;
        v38 = v18;
        _os_log_impl(&dword_223E7A000, v19, OS_LOG_TYPE_DEFAULT, "[WARNING] Fetching the root share object for shared to me child item %@%@", buf, 0x16u);
      }

      v20 = [MEMORY[0x277CBC5D0] brc_fetchShareIDWithSharedItem:v6];
      shareID = v13->_shareID;
      v13->_shareID = v20;

      v22 = [(CKRecordID *)v13->_shareID brc_shareItemID];
      rootItemIDToLookup = v13->_rootItemIDToLookup;
      v13->_rootItemIDToLookup = v22;
      goto LABEL_23;
    }

    v16 = [v6 clientZone];
    if ([v16 isSharedZone])
    {
      v17 = [v6 sharingOptions];

      if ((v17 & 4) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

LABEL_13:
    if (([v6 isDirectory] & 1) != 0 || objc_msgSend(v6, "isDocument"))
    {
      v24 = objc_alloc(MEMORY[0x277CBC5D0]);
      v25 = [v6 asShareableItem];
      v26 = [v24 initShareIDWithShareableItem:v25];
      v27 = v13->_shareID;
      v13->_shareID = v26;

      if (([v6 sharingOptions] & 4) != 0)
      {
        goto LABEL_24;
      }

      rootItemIDToLookup = [v6 st];
      v28 = [rootItemIDToLookup iWorkShareable];

      if (!v28)
      {
        goto LABEL_24;
      }

      v29 = [v6 isDocument];
      if (v29)
      {
        rootItemIDToLookup = [v6 asDocument];
        v30 = [rootItemIDToLookup documentRecordID];
      }

      else
      {
        v30 = 0;
      }

      objc_storeStrong(&v13->_recordIDNeedingFetch, v30);
      if (!v29)
      {
        goto LABEL_24;
      }
    }

    else
    {
      rootItemIDToLookup = v13->_shareID;
      v13->_shareID = 0;
    }

LABEL_23:

LABEL_24:
    v31 = [MEMORY[0x277CBC4F8] br_sharingMisc];
    [(_BRCOperation *)v13 setGroup:v31];
  }

  v32 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)createActivity
{
  v2 = _os_activity_create(&dword_223E7A000, "sharing/copy-share", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)fetchRootURLIfNecessaryAndFinishWithShare:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = [MEMORY[0x277CCA9B8] brc_errorDocumentIsNotShared];
    v8 = self;
    v9 = 0;
    v10 = v5;
LABEL_6:
    [(_BRCOperation *)v8 completedWithResult:v9 error:v10];
    goto LABEL_7;
  }

  v5 = objc_opt_new();
  [v5 setObject:v4 forKeyedSubscript:@"share"];
  if (!self->_rootItemIDToLookup)
  {
    v8 = self;
    v9 = v5;
    v10 = 0;
    goto LABEL_6;
  }

  v6 = [(BRCClientZone *)self->_clientZone db];
  v7 = [v6 serialQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__BRCSharingCopyShareOperation_fetchRootURLIfNecessaryAndFinishWithShare___block_invoke;
  v11[3] = &unk_2784FF478;
  v11[4] = self;
  v12 = v5;
  dispatch_async(v7, v11);

LABEL_7:
}

void __74__BRCSharingCopyShareOperation_fetchRootURLIfNecessaryAndFinishWithShare___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 544) itemByItemID:*(*(a1 + 32) + 536)];
  if (v2)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __74__BRCSharingCopyShareOperation_fetchRootURLIfNecessaryAndFinishWithShare___block_invoke_10;
    v21[3] = &unk_278501CE0;
    v3 = *(a1 + 40);
    v21[4] = *(a1 + 32);
    v22 = v3;
    v4 = MEMORY[0x22AA4A310](v21);
    v5 = [v2 fileObjectID];
    v6 = [v5 asString];

    v7 = [MEMORY[0x277CC64A8] br_sharedProviderManager];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __74__BRCSharingCopyShareOperation_fetchRootURLIfNecessaryAndFinishWithShare___block_invoke_19;
    v17[3] = &unk_278501D08;
    v8 = *(a1 + 32);
    v18 = v6;
    v19 = v8;
    v20 = v4;
    v9 = v4;
    v10 = v6;
    [v7 getUserVisibleURLForItemIdentifier:v10 completionHandler:v17];
  }

  else
  {
    v11 = *(a1 + 32);
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v16 = *(*(a1 + 32) + 536);
      *buf = 138412546;
      v24 = v16;
      v25 = 2112;
      v26 = v12;
      _os_log_fault_impl(&dword_223E7A000, v13, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Can't find root itemID %@%@", buf, 0x16u);
    }

    v14 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: Can't find root itemID %@", *(*(a1 + 32) + 536)}];
    [v11 completedWithResult:0 error:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __74__BRCSharingCopyShareOperation_fetchRootURLIfNecessaryAndFinishWithShare___block_invoke_10(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 40) setObject:a2 forKeyedSubscript:@"rootURL"];
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    [v3 completedWithResult:v4 error:0];
  }

  else
  {
    v6 = a1 + 32;
    v5 = *(a1 + 32);
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      __74__BRCSharingCopyShareOperation_fetchRootURLIfNecessaryAndFinishWithShare___block_invoke_10_cold_1(v6, v7, v8);
    }

    v9 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: Can't find URL for root itemID %@", *(*v6 + 536)}];
    [v5 completedWithResult:0 error:v9];
  }
}

void __74__BRCSharingCopyShareOperation_fetchRootURLIfNecessaryAndFinishWithShare___block_invoke_19(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v7;
  if (v6)
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      *buf = 138412802;
      *&buf[4] = v11;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      *&buf[22] = 2112;
      v31 = v9;
      _os_log_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEFAULT, "[WARNING] Couldn't get user visible file on %@ - %@%@", buf, 0x20u);
    }

    v8 = 0;
  }

  v12 = [*(*(a1 + 40) + 544) db];
  v13 = [v12 serialQueue];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __74__BRCSharingCopyShareOperation_fetchRootURLIfNecessaryAndFinishWithShare___block_invoke_20;
  v25[3] = &unk_2784FFBC8;
  v27 = *(a1 + 48);
  v14 = v8;
  v26 = v14;
  v15 = v13;
  v16 = v25;
  v17 = objc_autoreleasePoolPush();
  v28 = 0uLL;
  v29 = 0;
  __brc_create_section(0, "dispatch_async_with_logs", 283, 0, &v28);
  v18 = brc_bread_crumbs();
  v19 = brc_default_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v23 = v28;
    label = dispatch_queue_get_label(v15);
    *buf = 134218498;
    *&buf[4] = v23;
    *&buf[12] = 2080;
    *&buf[14] = label;
    *&buf[22] = 2112;
    v31 = v18;
    _os_log_debug_impl(&dword_223E7A000, v19, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx dispatching to %s%@", buf, 0x20u);
  }

  v34 = v28;
  v35 = v29;
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = __dispatch_async_with_logs_block_invoke_5;
  v31 = &unk_2784FF568;
  v20 = v15;
  v32 = v20;
  v21 = v16;
  v33 = v21;
  dispatch_async(v20, buf);

  objc_autoreleasePoolPop(v17);
  v22 = *MEMORY[0x277D85DE8];
}

- (void)main
{
  v13[4] = *MEMORY[0x277D85DE8];
  if (self->_shareID)
  {
    v3 = objc_alloc(MEMORY[0x277CBC3E0]);
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:{self->_shareID, self->_recordIDNeedingFetch, 0}];
    v5 = [v3 initWithRecordIDs:v4];

    [v5 setShouldFetchAssetContent:0];
    v6 = *MEMORY[0x277CBC150];
    v13[0] = *MEMORY[0x277CBC138];
    v13[1] = v6;
    v7 = *MEMORY[0x277CBC0A0];
    v13[2] = *MEMORY[0x277CBC098];
    v13[3] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:4];
    [v5 setDesiredKeys:v8];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __36__BRCSharingCopyShareOperation_main__block_invoke;
    v12[3] = &unk_278500DC8;
    v12[4] = self;
    [v5 setFetchRecordsCompletionBlock:v12];
    [(_BRCOperation *)self addSubOperation:v5];

    v9 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] brc_errorDocumentIsNotShared];
    [(_BRCOperation *)self completedWithResult:0 error:?];
    v10 = *MEMORY[0x277D85DE8];
  }
}

void __36__BRCSharingCopyShareOperation_main__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(a1 + 32);
  if (a3)
  {
    [v6 completedWithResult:0 error:a3];
  }

  else
  {
    v7 = [v5 objectForKeyedSubscript:v6[65]];
    v8 = *(a1 + 32);
    if (v8[66])
    {
      v9 = [v5 objectForKeyedSubscript:?];
      v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277CBC138]];
      v11 = [v9 encryptedValues];
      v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CBC150]];

      v13 = [v9 recordID];
      v14 = [*(*(a1 + 32) + 256) zoneAppRetriever];
      v15 = [v13 brc_itemIDWithZoneAppRetriever:v14];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v7 setPublicSharingIdentity:v12];
      }

      else
      {
        v16 = brc_bread_crumbs();
        v17 = brc_default_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 138412546;
          v22 = v15;
          v23 = 2112;
          v24 = v16;
          _os_log_impl(&dword_223E7A000, v17, OS_LOG_TYPE_DEFAULT, "[WARNING] No sharing identity on %@%@", &v21, 0x16u);
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v7 setBaseToken:v10];
      }

      else
      {
        v18 = brc_bread_crumbs();
        v19 = brc_default_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 138412546;
          v22 = v15;
          v23 = 2112;
          v24 = v18;
          _os_log_impl(&dword_223E7A000, v19, OS_LOG_TYPE_DEFAULT, "[WARNING] No base token on %@%@", &v21, 0x16u);
        }
      }

      v8 = *(a1 + 32);
    }

    [v8 fetchRootURLIfNecessaryAndFinishWithShare:v7];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)initWithItem:(void *)a1 sessionContext:.cold.1(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [a1 serverZone];

  if (v2)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v5 = [a1 serverZone];
      OUTLINED_FUNCTION_0_4();
      v10 = v6;
      v11 = v7;
      v12 = v3;
      _os_log_fault_impl(&dword_223E7A000, v4, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Item's %@ server zone %@ is missing sync context while coping share%@", v9, 0x20u);
    }
  }

  else
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      OUTLINED_FUNCTION_0_4();
      v10 = v3;
      _os_log_fault_impl(&dword_223E7A000, v4, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Copying share for item %@ that does not have a server zone%@", v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __74__BRCSharingCopyShareOperation_fetchRootURLIfNecessaryAndFinishWithShare___block_invoke_10_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(*a1 + 536);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_fault_impl(&dword_223E7A000, log, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Can't find URL for root itemID %@%@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end