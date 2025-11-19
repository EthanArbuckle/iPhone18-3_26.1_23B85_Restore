@interface BRCFetchiWorkSharingInfoOperation
- (BRCFetchiWorkSharingInfoOperation)initWithDocumentItem:(id)a3 sessionContext:(id)a4;
- (id)createActivity;
- (void)main;
@end

@implementation BRCFetchiWorkSharingInfoOperation

- (BRCFetchiWorkSharingInfoOperation)initWithDocumentItem:(id)a3 sessionContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 serverZone];
  v9 = [v8 metadataSyncContext];
  v14.receiver = self;
  v14.super_class = BRCFetchiWorkSharingInfoOperation;
  v10 = [(_BRCOperation *)&v14 initWithName:@"sharing/iWork-publishing-fetch" syncContext:v9 sessionContext:v7];

  if (v10)
  {
    v11 = [v6 documentRecordID];
    recordID = v10->_recordID;
    v10->_recordID = v11;

    [(_BRCOperation *)v10 setNonDiscretionary:1];
  }

  return v10;
}

- (id)createActivity
{
  v2 = _os_activity_create(&dword_223E7A000, "sharing/iWork-publishing-fetch", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)main
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBC3E0]);
  v12[0] = self->_recordID;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v5 = [v3 initWithRecordIDs:v4];

  v6 = *MEMORY[0x277CBC140];
  v11[0] = *MEMORY[0x277CBC148];
  v11[1] = v6;
  v7 = *MEMORY[0x277CBC150];
  v11[2] = *MEMORY[0x277CBC138];
  v11[3] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];
  [v5 setDesiredKeys:v8];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __41__BRCFetchiWorkSharingInfoOperation_main__block_invoke;
  v10[3] = &unk_278500DC8;
  v10[4] = self;
  [v5 setFetchRecordsCompletionBlock:v10];
  [(_BRCOperation *)self addSubOperation:v5];

  v9 = *MEMORY[0x277D85DE8];
}

void __41__BRCFetchiWorkSharingInfoOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    goto LABEL_2;
  }

  if ([v5 count])
  {
    goto LABEL_4;
  }

  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    __41__BRCFetchiWorkSharingInfoOperation_main__block_invoke_cold_1(v5, v10, v11);
  }

  v6 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: No error and invalid number of records %lu", objc_msgSend(v5, "count")}];
  if (v6)
  {
LABEL_2:
    v7 = v6;
    [*(a1 + 32) completedWithResult:0 error:v6];
  }

  else
  {
LABEL_4:
    v8 = *(a1 + 32);
    v7 = [v5 allValues];
    v9 = [v7 firstObject];
    [v8 completedWithResult:v9 error:0];
  }
}

void __41__BRCFetchiWorkSharingInfoOperation_main__block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = 134218242;
  v7 = [a1 count];
  v8 = 2112;
  v9 = a2;
  _os_log_fault_impl(&dword_223E7A000, a3, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: No error and invalid number of records %lu%@", &v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end