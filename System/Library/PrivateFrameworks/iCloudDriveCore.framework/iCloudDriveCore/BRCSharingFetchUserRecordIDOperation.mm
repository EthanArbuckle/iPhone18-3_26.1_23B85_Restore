@interface BRCSharingFetchUserRecordIDOperation
- (BRCSharingFetchUserRecordIDOperation)initWithSyncContext:(id)a3 sessionContext:(id)a4;
- (id)createActivity;
- (void)main;
@end

@implementation BRCSharingFetchUserRecordIDOperation

- (BRCSharingFetchUserRecordIDOperation)initWithSyncContext:(id)a3 sessionContext:(id)a4
{
  v8.receiver = self;
  v8.super_class = BRCSharingFetchUserRecordIDOperation;
  v4 = [(_BRCOperation *)&v8 initWithName:@"sharing.fetch-user-record-id" syncContext:a3 sessionContext:a4];
  v5 = v4;
  if (v4)
  {
    [(_BRCOperation *)v4 setNonDiscretionary:1];
    v6 = [MEMORY[0x277CBC4F8] br_sharingMisc];
    [(_BRCOperation *)v5 setGroup:v6];
  }

  return v5;
}

- (id)createActivity
{
  v2 = _os_activity_create(&dword_223E7A000, "sharing.fetch-user-record-id", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)main
{
  v3 = [MEMORY[0x277CBC3E0] fetchCurrentUserRecordOperation];
  [v3 setDesiredKeys:MEMORY[0x277CBEBF8]];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__BRCSharingFetchUserRecordIDOperation_main__block_invoke;
  v4[3] = &unk_278500DC8;
  v4[4] = self;
  [v3 setFetchRecordsCompletionBlock:v4];
  [(_BRCOperation *)self addSubOperation:v3];
}

void __44__BRCSharingFetchUserRecordIDOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 count];
  if (!v6 && !v7)
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      __44__BRCSharingFetchUserRecordIDOperation_main__block_invoke_cold_1(v8, v9);
    }

    v6 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: no record and no error"];
  }

  v10 = *(a1 + 32);
  v11 = [v5 allKeys];
  v12 = [v11 firstObject];
  [v10 completedWithResult:v12 error:v6];
}

void __44__BRCSharingFetchUserRecordIDOperation_main__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_223E7A000, a2, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: no record and no error%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end