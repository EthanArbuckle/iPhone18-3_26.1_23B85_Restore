@interface BRCSharingCopyShortTokenOperation
- (BRCSharingCopyShortTokenOperation)initWithItem:(id)a3 sessionContext:(id)a4;
- (id)createActivity;
- (void)main;
@end

@implementation BRCSharingCopyShortTokenOperation

- (BRCSharingCopyShortTokenOperation)initWithItem:(id)a3 sessionContext:(id)a4
{
  v6 = MEMORY[0x277CBC5D0];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initShareIDWithShareableItem:v8];
  v10 = [v8 baseRecord];
  v11 = [objc_alloc(MEMORY[0x277CBC680]) initWithRootRecord:v10 shareID:v9];
  v12 = [v8 st];
  v13 = [v12 logicalName];
  [v11 brc_updateWithLogicalName:v13 isFolder:0];

  v14 = [MEMORY[0x277CBC4F8] br_sharingMisc];
  [(_BRCOperation *)self setGroup:v14];

  v15 = [v9 recordName];
  v16 = [@"sharing/copy-shortToken" stringByAppendingPathComponent:v15];

  v17 = [v8 serverZone];

  v20.receiver = self;
  v20.super_class = BRCSharingCopyShortTokenOperation;
  v18 = [(BRCSharingModifyShareOperation *)&v20 initWithName:v16 zone:v17 share:v11 sessionContext:v7];

  return v18;
}

- (id)createActivity
{
  v2 = _os_activity_create(&dword_223E7A000, "sharing/copy-shortToken", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)main
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __41__BRCSharingCopyShortTokenOperation_main__block_invoke;
  v2[3] = &unk_2784FFCE0;
  v2[4] = self;
  [(BRCSharingModifyShareOperation *)self _performAfterPreparingSharingIdentityIfNecessaryWhenWantRoutingKey:1 completion:v2];
}

void __41__BRCSharingCopyShortTokenOperation_main__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  if (v4)
  {
    [v5 completedWithResult:0 error:v4];
  }

  else
  {
    v6 = [v5[66] shortToken];
    if (v6)
    {
      v4 = 0;
    }

    else
    {
      v7 = brc_bread_crumbs();
      v8 = brc_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        __41__BRCSharingCopyShortTokenOperation_main__block_invoke_cold_1();
      }

      v4 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: No short token found on record"];
    }

    [*(a1 + 32) completedWithResult:v6 error:v4];
  }
}

@end