@interface BRCiWorkPublishingOperation
- (BRCiWorkPublishingOperation)initWithDocumentItem:(id)a3 sessionContext:(id)a4 forPublish:(BOOL)a5 readonly:(BOOL)a6;
- (id)createActivity;
- (void)_updateItemAfterShareCompleted;
- (void)main;
@end

@implementation BRCiWorkPublishingOperation

- (BRCiWorkPublishingOperation)initWithDocumentItem:(id)a3 sessionContext:(id)a4 forPublish:(BOOL)a5 readonly:(BOOL)a6
{
  v28[2] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = [v10 serverZone];
  v13 = [v12 metadataSyncContext];
  v27.receiver = self;
  v27.super_class = BRCiWorkPublishingOperation;
  v14 = [(_BRCOperation *)&v27 initWithName:@"sharing/iWork-publishing" syncContext:v13 sessionContext:v11];

  if (v14)
  {
    v15 = [v10 itemID];
    itemID = v14->_itemID;
    v14->_itemID = v15;

    v17 = [v10 structureRecordID];
    v28[0] = v17;
    v18 = [v10 documentRecordID];
    v28[1] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
    recordIDs = v14->_recordIDs;
    v14->_recordIDs = v19;

    v14->_forPublish = a5;
    v14->_readonly = a6;
    v21 = [v10 serverZone];
    serverZone = v14->_serverZone;
    v14->_serverZone = v21;

    [(_BRCOperation *)v14 setNonDiscretionary:1];
    v23 = [v10 st];
    v24 = [v23 iWorkShareable];

    if ((v24 & 1) == 0)
    {
      [BRCiWorkPublishingOperation initWithDocumentItem:sessionContext:forPublish:readonly:];
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)createActivity
{
  v2 = _os_activity_create(&dword_223E7A000, "sharing/iWork-publishing", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)_updateItemAfterShareCompleted
{
  v3 = [(BRCServerZone *)self->_serverZone clientZone];
  v7 = [v3 itemByItemID:self->_itemID];

  if (v7)
  {
    [v7 setSharingOptions:{objc_msgSend(v7, "sharingOptions") & 0xFFFFFFFFFFFFFFFCLL | -[NSNumber unsignedCharValue](self->_sharingInfo, "unsignedCharValue")}];
    [v7 saveToDB];
    [(_BRCOperation *)self completedWithResult:0 error:0];
  }

  else
  {
    v4 = MEMORY[0x277CCA9B8];
    v5 = [(BRCItemID *)self->_itemID itemIDString];
    v6 = [v4 brc_errorItemNotFound:v5];
    [(_BRCOperation *)self completedWithResult:0 error:v6];
  }
}

- (void)main
{
  forPublish = self->_forPublish;
  v4 = self->_recordIDs;
  if (forPublish)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  if (forPublish)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_alloc(MEMORY[0x277CBC4B8]) initWithRecordIDsToWebShare:v6 recordIDsToUnshare:v5];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __35__BRCiWorkPublishingOperation_main__block_invoke;
  v10[3] = &unk_278502958;
  v10[4] = self;
  [v7 setWebShareRecordsCompletionBlock:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __35__BRCiWorkPublishingOperation_main__block_invoke_2;
  v9[3] = &unk_278506910;
  v9[4] = self;
  [v7 setRecordSharedBlock:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__BRCiWorkPublishingOperation_main__block_invoke_11;
  v8[3] = &unk_278505D30;
  v8[4] = self;
  [v7 setRecordUnsharedBlock:v8];
  if (self->_forPublish && !self->_readonly)
  {
    [v7 setRecordIDsToShareReadWrite:self->_recordIDs];
  }

  [(_BRCOperation *)self addSubOperation:v7];
}

void __35__BRCiWorkPublishingOperation_main__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v11 = *(a1 + 32);
    if (*(v11 + 520) == 1 && !*(v11 + 528))
    {
      v13 = brc_bread_crumbs();
      v14 = brc_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        __35__BRCiWorkPublishingOperation_main__block_invoke_cold_1();
      }

      v9 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: No sharing info and no error"];
      if (v9)
      {
        goto LABEL_2;
      }

      v11 = *(a1 + 32);
    }

    v10 = [*(v11 + 256) clientReadWriteDatabaseFacade];
    v12 = [v10 serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__BRCiWorkPublishingOperation_main__block_invoke_6;
    block[3] = &unk_2784FF450;
    block[4] = *(a1 + 32);
    dispatch_async(v12, block);

    goto LABEL_6;
  }

LABEL_2:
  v10 = v9;
  [*(a1 + 32) completedWithResult:0 error:v9];
LABEL_6:
}

void __35__BRCiWorkPublishingOperation_main__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a5;
  v10 = v9;
  if (!a4 || v9)
  {
    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, 0x90u))
    {
      v23 = 138412802;
      v24 = v8;
      v25 = 2112;
      v26 = v10;
      v27 = 2112;
      v28 = v17;
      _os_log_error_impl(&dword_223E7A000, v18, 0x90u, "[ERROR] Failed sharing %@ - %@%@", &v23, 0x20u);
    }
  }

  else
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __35__BRCiWorkPublishingOperation_main__block_invoke_2_cold_1();
    }

    v13 = *(a1 + 32);
    if ((*(v13 + 520) & 1) == 0)
    {
      v20 = brc_bread_crumbs();
      v21 = brc_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        __35__BRCiWorkPublishingOperation_main__block_invoke_2_cold_2();
      }

      v13 = *(a1 + 32);
      v22 = *(v13 + 520);
    }

    v14 = *(v13 + 521);
    v15 = [MEMORY[0x277CCABB0] numberWithChar:BRMakeiWorkSharingOptions()];
    v16 = *(a1 + 32);
    v17 = *(v16 + 528);
    *(v16 + 528) = v15;
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __35__BRCiWorkPublishingOperation_main__block_invoke_11(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, 0x90u))
    {
      v19 = 138412802;
      v20 = v5;
      v21 = 2112;
      v22 = v6;
      v23 = 2112;
      v24 = v7;
      _os_log_error_impl(&dword_223E7A000, v8, 0x90u, "[ERROR] Failed unsharing %@ - %@%@", &v19, 0x20u);
    }
  }

  else
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __35__BRCiWorkPublishingOperation_main__block_invoke_11_cold_1();
    }

    v11 = *(a1 + 32);
    if (*(v11 + 520) == 1)
    {
      v16 = brc_bread_crumbs();
      v17 = brc_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        __35__BRCiWorkPublishingOperation_main__block_invoke_11_cold_2();
      }

      v11 = *(a1 + 32);
      v18 = *(v11 + 520);
    }

    v12 = *(v11 + 521);
    v13 = [MEMORY[0x277CCABB0] numberWithChar:BRMakeiWorkSharingOptions()];
    v14 = *(a1 + 32);
    v7 = *(v14 + 528);
    *(v14 + 528) = v13;
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end