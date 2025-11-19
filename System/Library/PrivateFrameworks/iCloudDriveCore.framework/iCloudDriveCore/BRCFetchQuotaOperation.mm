@interface BRCFetchQuotaOperation
- (BRCFetchQuotaOperation)initWithSessionContext:(id)a3;
- (void)main;
@end

@implementation BRCFetchQuotaOperation

- (BRCFetchQuotaOperation)initWithSessionContext:(id)a3
{
  v4 = a3;
  v5 = [v4 syncContextProvider];
  v6 = [v5 defaultSyncContext];
  v9.receiver = self;
  v9.super_class = BRCFetchQuotaOperation;
  v7 = [(_BRCOperation *)&v9 initWithName:@"fetch-quota" syncContext:v6 sessionContext:v4];

  if (v7)
  {
    [(_BRCOperation *)v7 setNonDiscretionary:1];
  }

  return v7;
}

- (void)main
{
  v3 = objc_alloc_init(MEMORY[0x277CBC420]);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __30__BRCFetchQuotaOperation_main__block_invoke;
  v4[3] = &unk_278505820;
  v4[4] = self;
  [v3 setFetchUserQuotaCompletionBlock:v4];
  [(_BRCOperation *)self addSubOperation:v3];
}

void __30__BRCFetchQuotaOperation_main__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 134218498;
    v12 = a2;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_debug_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] fetched quota %llu - %@%@", &v11, 0x20u);
  }

  v8 = *(a1 + 32);
  if (v5)
  {
    [v8 completedWithResult:0 error:v5];
  }

  else
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
    [v8 completedWithResult:v9 error:0];
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end