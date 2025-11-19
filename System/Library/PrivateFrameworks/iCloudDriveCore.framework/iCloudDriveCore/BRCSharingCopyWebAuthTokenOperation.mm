@interface BRCSharingCopyWebAuthTokenOperation
- (BRCSharingCopyWebAuthTokenOperation)initWithSyncContext:(id)a3 ckContainerID:(id)a4 sessionContext:(id)a5;
- (id)createActivity;
- (void)main;
@end

@implementation BRCSharingCopyWebAuthTokenOperation

- (BRCSharingCopyWebAuthTokenOperation)initWithSyncContext:(id)a3 ckContainerID:(id)a4 sessionContext:(id)a5
{
  v9 = a4;
  v14.receiver = self;
  v14.super_class = BRCSharingCopyWebAuthTokenOperation;
  v10 = [(_BRCOperation *)&v14 initWithName:@"sharing/copy-web-auth-token" syncContext:a3 sessionContext:a5];
  v11 = v10;
  if (v10)
  {
    [(_BRCOperation *)v10 setNonDiscretionary:1];
    objc_storeStrong(&v11->_ckContainerID, a4);
    v12 = [MEMORY[0x277CBC4F8] br_sharingMisc];
    [(_BRCOperation *)v11 setGroup:v12];
  }

  return v11;
}

- (id)createActivity
{
  v2 = _os_activity_create(&dword_223E7A000, "sharing/copy-web-auth-token", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)main
{
  v3 = objc_alloc_init(MEMORY[0x277CBC428]);
  v4 = objc_opt_new();
  [v3 setConfiguration:v4];

  v5 = [MEMORY[0x277CBC218] containerWithIdentifier:self->_ckContainerID];
  v6 = [v3 configuration];
  [v6 setContainer:v5];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__BRCSharingCopyWebAuthTokenOperation_main__block_invoke;
  v7[3] = &unk_2785055A8;
  v7[4] = self;
  [v3 setFetchWebAuthTokenCompletionBlock:v7];
  [(_BRCOperation *)self addSubOperation:v3];
}

void __43__BRCSharingCopyWebAuthTokenOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, 0x90u))
    {
      v10 = *(*(a1 + 32) + 520);
      v11 = 138412802;
      v12 = v10;
      v13 = 2112;
      v14 = v6;
      v15 = 2112;
      v16 = v7;
      _os_log_error_impl(&dword_223E7A000, v8, 0x90u, "[ERROR] failed fetching webauth token for %@: %@%@", &v11, 0x20u);
    }
  }

  [*(a1 + 32) completedWithResult:v5 error:v6];

  v9 = *MEMORY[0x277D85DE8];
}

@end