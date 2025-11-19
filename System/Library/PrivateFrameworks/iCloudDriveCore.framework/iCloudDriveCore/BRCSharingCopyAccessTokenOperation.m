@interface BRCSharingCopyAccessTokenOperation
- (BRCSharingCopyAccessTokenOperation)initWithItem:(id)a3 sessionContext:(id)a4;
- (id)createActivity;
- (void)main;
@end

@implementation BRCSharingCopyAccessTokenOperation

- (BRCSharingCopyAccessTokenOperation)initWithItem:(id)a3 sessionContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 serverZone];
  v9 = [v8 metadataSyncContext];
  v15.receiver = self;
  v15.super_class = BRCSharingCopyAccessTokenOperation;
  v10 = [(_BRCOperation *)&v15 initWithName:@"sharing/access-token" syncContext:v9 sessionContext:v7];

  if (v10)
  {
    v11 = [v6 documentRecordID];
    [(BRCSharingCopyAccessTokenOperation *)v10 setRecordID:v11];

    v12 = [objc_alloc(MEMORY[0x277CBC5D0]) initShareIDWithShareableItem:v6];
    [(BRCSharingCopyAccessTokenOperation *)v10 setShareID:v12];

    [(_BRCOperation *)v10 setNonDiscretionary:1];
    v13 = [MEMORY[0x277CBC4F8] br_sharingMisc];
    [(_BRCOperation *)v10 setGroup:v13];
  }

  return v10;
}

- (id)createActivity
{
  v2 = _os_activity_create(&dword_223E7A000, "sharing/access-token", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)main
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBC3E0]);
  v4 = [(BRCSharingCopyAccessTokenOperation *)self recordID];
  v12[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v6 = [v3 initWithRecordIDs:v5];

  v7 = *MEMORY[0x277CBC138];
  v11[0] = *MEMORY[0x277CBBFD0];
  v11[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  [v6 setDesiredKeys:v8];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__BRCSharingCopyAccessTokenOperation_main__block_invoke;
  v10[3] = &unk_278500DC8;
  v10[4] = self;
  [v6 setFetchRecordsCompletionBlock:v10];
  [(_BRCOperation *)self addSubOperation:v6];

  v9 = *MEMORY[0x277D85DE8];
}

void __42__BRCSharingCopyAccessTokenOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 recordID];
  v9 = [v7 objectForKeyedSubscript:v8];

  v10 = [v9 encryptedValues];
  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277CBBFD0]];

  v12 = [v9 objectForKeyedSubscript:*MEMORY[0x277CBC138]];
  v13 = v12;
  if (!v5 && !v11 && v12 == 0)
  {
    v5 = [MEMORY[0x277CCA9B8] brc_errorDocumentIsNotSharedAtIdentifier:0];
    goto LABEL_8;
  }

  if (!v5)
  {
    if (v11)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v16 = brc_bread_crumbs();
        v17 = brc_default_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          __42__BRCSharingCopyAccessTokenOperation_main__block_invoke_cold_1();
        }

        [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: encrypted access token %@ is of unexpected type", v11}];
        goto LABEL_23;
      }
    }
  }

  if (!v5 && v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = 0;
      goto LABEL_8;
    }

    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      __42__BRCSharingCopyAccessTokenOperation_main__block_invoke_cold_2();
    }

    [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: reference identifier %@ is of unexpected type", v13}];
    v5 = LABEL_23:;
    v15 = 0;
    if (v5)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_8:
  v15 = v11;
  if (v5)
  {
LABEL_9:
    [*(a1 + 32) completedWithResult:0 error:v5];
    goto LABEL_29;
  }

LABEL_24:
  v20 = objc_opt_new();
  v21 = v20;
  if (v15)
  {
    [v20 setObject:v15 forKeyedSubscript:@"token"];
  }

  if (v13)
  {
    [v21 setObject:v13 forKeyedSubscript:@"ref_id"];
  }

  [*(a1 + 32) completedWithResult:v21 error:0];

LABEL_29:
}

void __42__BRCSharingCopyAccessTokenOperation_main__block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_1(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: encrypted access token %@ is of unexpected type%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __42__BRCSharingCopyAccessTokenOperation_main__block_invoke_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_1(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: reference identifier %@ is of unexpected type%@");
  v2 = *MEMORY[0x277D85DE8];
}

@end