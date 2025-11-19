@interface BRCSharingLookupParticipantsOperation
- (BRCSharingLookupParticipantsOperation)initWithUserIdentities:(id)a3 sessionContext:(id)a4;
- (id)createActivity;
- (void)main;
@end

@implementation BRCSharingLookupParticipantsOperation

- (BRCSharingLookupParticipantsOperation)initWithUserIdentities:(id)a3 sessionContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 syncContextProvider];
  v10 = [v9 defaultSyncContext];
  v16.receiver = self;
  v16.super_class = BRCSharingLookupParticipantsOperation;
  v11 = [(_BRCOperation *)&v16 initWithName:@"sharing/lookup-participants" syncContext:v10 sessionContext:v8];

  if (v11)
  {
    [(_BRCOperation *)v11 setNonDiscretionary:1];
    objc_storeStrong(&v11->_userIdentities, a3);
    v12 = objc_opt_new();
    shareParticipants = v11->_shareParticipants;
    v11->_shareParticipants = v12;

    v14 = [MEMORY[0x277CBC4F8] br_sharingMisc];
    [(_BRCOperation *)v11 setGroup:v14];
  }

  return v11;
}

- (id)createActivity
{
  v2 = _os_activity_create(&dword_223E7A000, "sharing/lookup-participants", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)main
{
  v3 = [objc_alloc(MEMORY[0x277CBC410]) initWithUserIdentityLookupInfos:self->_userIdentities];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__BRCSharingLookupParticipantsOperation_main__block_invoke;
  v5[3] = &unk_2785068E8;
  v5[4] = self;
  [v3 setShareParticipantFetchedBlock:v5];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__BRCSharingLookupParticipantsOperation_main__block_invoke_2;
  v4[3] = &unk_2784FF540;
  v4[4] = self;
  [v3 setFetchShareParticipantsCompletionBlock:v4];
  [(_BRCOperation *)self addSubOperation:v3];
}

void __45__BRCSharingLookupParticipantsOperation_main__block_invoke_2(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!v3)
  {
    v9 = [*(*(a1 + 32) + 528) count];
    if (v9 == [*(*(a1 + 32) + 520) count])
    {
      v10 = brc_bread_crumbs();
      v11 = brc_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v16 = *(*(a1 + 32) + 528);
        v19 = 138412546;
        v20 = v16;
        v21 = 2112;
        v22 = v10;
        _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] fetched share participants: %@%@", &v19, 0x16u);
      }

      v8 = *(a1 + 32);
    }

    else
    {
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        v17 = [*(*(a1 + 32) + 520) count];
        v18 = [*(*(a1 + 32) + 528) count];
        v19 = 134218498;
        v20 = v17;
        v21 = 2048;
        v22 = v18;
        v23 = 2112;
        v24 = v12;
        _os_log_fault_impl(&dword_223E7A000, v13, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Unexpected number of share participants: expected %lu got %lu%@", &v19, 0x20u);
      }

      v4 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFABD0] code:15 description:@"Unexpected number of share participants"];
      v8 = *(a1 + 32);
      if (v4)
      {
        v7 = 0;
        goto LABEL_14;
      }
    }

    v4 = 0;
    v7 = v8[66];
    goto LABEL_14;
  }

  v4 = v3;
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, 0x90u))
  {
    v15 = *(a1 + 32);
    v19 = 138412802;
    v20 = v15;
    v21 = 2112;
    v22 = v4;
    v23 = 2112;
    v24 = v5;
    _os_log_error_impl(&dword_223E7A000, v6, 0x90u, "[ERROR] failed share participant lookup for %@ - %@%@", &v19, 0x20u);
  }

  v7 = 0;
  v8 = *(a1 + 32);
LABEL_14:
  [v8 completedWithResult:v7 error:v4];

  v14 = *MEMORY[0x277D85DE8];
}

@end