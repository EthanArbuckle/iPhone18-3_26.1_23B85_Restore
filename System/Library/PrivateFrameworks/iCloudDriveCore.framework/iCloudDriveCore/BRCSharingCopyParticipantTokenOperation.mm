@interface BRCSharingCopyParticipantTokenOperation
- (BRCSharingCopyParticipantTokenOperation)initWithItem:(id)item sessionContext:(id)context;
- (id)createActivity;
- (void)_completeWithResult:(id)result participantKey:(id)key;
- (void)_fetchBaseTokenWithCompletion:(id)completion;
- (void)_fetchParticipantDocumentTokenWithCompletion:(id)completion;
- (void)_fetchParticipantKeyWithCompletion:(id)completion;
- (void)main;
@end

@implementation BRCSharingCopyParticipantTokenOperation

- (BRCSharingCopyParticipantTokenOperation)initWithItem:(id)item sessionContext:(id)context
{
  itemCopy = item;
  contextCopy = context;
  itemID = [itemCopy itemID];
  debugItemIDString = [itemID debugItemIDString];
  v10 = [@"sharing/copyParticipantToken" stringByAppendingPathComponent:debugItemIDString];

  serverZone = [itemCopy serverZone];
  metadataSyncContext = [serverZone metadataSyncContext];
  v21.receiver = self;
  v21.super_class = BRCSharingCopyParticipantTokenOperation;
  v13 = [(_BRCOperation *)&v21 initWithName:v10 syncContext:metadataSyncContext sessionContext:contextCopy];

  if (v13)
  {
    v14 = [itemCopy st];
    v13->_iWorkShareable = [v14 iWorkShareable];

    v15 = [MEMORY[0x277CBC5D0] brc_fetchShareIDWithSharedItem:itemCopy];
    shareID = v13->_shareID;
    v13->_shareID = v15;

    if (!v13->_shareID)
    {
      [BRCSharingCopyParticipantTokenOperation initWithItem:itemCopy sessionContext:?];
    }

    documentRecordID = [itemCopy documentRecordID];
    contentRecordID = v13->_contentRecordID;
    v13->_contentRecordID = documentRecordID;

    if (([itemCopy sharingOptions] & 4) == 0 && (objc_msgSend(itemCopy, "sharingOptions") & 0x48) != 0)
    {
      v13->_isChildOfShare = 1;
    }

    [(_BRCOperation *)v13 setNonDiscretionary:1];
    br_sharingMisc = [MEMORY[0x277CBC4F8] br_sharingMisc];
    [(_BRCOperation *)v13 setGroup:br_sharingMisc];
  }

  return v13;
}

- (id)createActivity
{
  v2 = _os_activity_create(&dword_223E7A000, "sharing/copyParticipantToken", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)_fetchBaseTokenWithCompletion:(id)completion
{
  v14[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = completionCopy;
  if (self->_iWorkShareable && !self->_isChildOfShare)
  {
    v6 = objc_alloc(MEMORY[0x277CBC3E0]);
    v14[0] = self->_contentRecordID;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    v8 = [v6 initWithRecordIDs:v7];

    v13 = *MEMORY[0x277CBC138];
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
    [v8 setDesiredKeys:v9];

    [v8 setShouldFetchAssetContent:0];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __73__BRCSharingCopyParticipantTokenOperation__fetchBaseTokenWithCompletion___block_invoke;
    v11[3] = &unk_278503F30;
    v11[4] = self;
    v12 = v5;
    [v8 setFetchRecordsCompletionBlock:v11];
    [(_BRCOperation *)self addSubOperation:v8];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __73__BRCSharingCopyParticipantTokenOperation__fetchBaseTokenWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 objectForKeyedSubscript:*(*(a1 + 32) + 528)];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CBC138]];
  if (v7 || ([v6 baseToken], v7 = objc_claimAutoreleasedReturnValue(), v5 | v7))
  {
    v8 = v7;
  }

  else
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      __73__BRCSharingCopyParticipantTokenOperation__fetchBaseTokenWithCompletion___block_invoke_cold_1();
    }

    v5 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: No base token so the share token we would return would be invalid for iwork"];
    v8 = 0;
  }

  v9 = *(a1 + 40);
  v10 = [v5 brc_cloudKitErrorForRecordID:*(*(a1 + 32) + 528)];
  (*(v9 + 16))(v9, v8, v10);
}

- (void)_fetchParticipantKeyWithCompletion:(id)completion
{
  v21[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = objc_alloc(MEMORY[0x277CBC408]);
  v21[0] = self->_shareID;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v7 = [v5 initWithShareIDs:v6];

  baseToken = self->_baseToken;
  if (baseToken)
  {
    shareID = self->_shareID;
    v20 = baseToken;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&shareID count:1];
    [v7 setBaseTokensByShareID:v9];
  }

  if (self->_isChildOfShare)
  {
    contentRecordID = self->_contentRecordID;
    v17 = self->_shareID;
    v18 = contentRecordID;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    [v7 setChildRecordIDsByShareID:v11];
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __78__BRCSharingCopyParticipantTokenOperation__fetchParticipantKeyWithCompletion___block_invoke;
  v16[3] = &unk_278506960;
  v16[4] = self;
  [v7 setShareParticipantKeyFetchedBlock:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78__BRCSharingCopyParticipantTokenOperation__fetchParticipantKeyWithCompletion___block_invoke_2;
  v14[3] = &unk_2785014D0;
  v14[4] = self;
  v15 = completionCopy;
  v12 = completionCopy;
  [v7 setShareParticipantKeyCompletionBlock:v14];
  [(_BRCOperation *)self addSubOperation:v7];

  v13 = *MEMORY[0x277D85DE8];
}

void __78__BRCSharingCopyParticipantTokenOperation__fetchParticipantKeyWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(v8 + 544);
  *(v8 + 544) = v6;
  v12 = v6;

  v10 = *(a1 + 32);
  v11 = *(v10 + 560);
  *(v10 + 560) = v7;
}

void __78__BRCSharingCopyParticipantTokenOperation__fetchParticipantKeyWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
LABEL_2:
    v4 = v3;
    goto LABEL_6;
  }

  v5 = *(a1 + 32);
  if (!*(v5 + 560) && !*(v5 + 544))
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      __78__BRCSharingCopyParticipantTokenOperation__fetchParticipantKeyWithCompletion___block_invoke_2_cold_1();
    }

    v3 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: no error and no participantKey"];
    goto LABEL_2;
  }

  v4 = 0;
LABEL_6:
  if (*(*(a1 + 32) + 560))
  {
    v6 = *(*(a1 + 32) + 560);
  }

  else
  {
    v6 = v4;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v6);
}

- (void)_fetchParticipantDocumentTokenWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"participantKey", self->_participantKey];
  v6 = [objc_alloc(MEMORY[0x277CBC578]) initWithRecordType:@"FetchParticipantDocumentToken" predicate:v5];
  v7 = [objc_alloc(MEMORY[0x277CBC590]) initWithQuery:v6];
  zoneID = [(CKRecordID *)self->_shareID zoneID];
  [v7 setZoneID:zoneID];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__BRCSharingCopyParticipantTokenOperation__fetchParticipantDocumentTokenWithCompletion___block_invoke;
  v13[3] = &unk_278506988;
  v13[4] = self;
  [v7 setRecordMatchedBlock:v13];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __88__BRCSharingCopyParticipantTokenOperation__fetchParticipantDocumentTokenWithCompletion___block_invoke_2;
  v10[3] = &unk_2785069B0;
  v11 = completionCopy;
  v12 = v7;
  v10[4] = self;
  v9 = completionCopy;
  [v7 setQueryCompletionBlock:v10];
  [(_BRCOperation *)self addSubOperation:v7];
}

void __88__BRCSharingCopyParticipantTokenOperation__fetchParticipantDocumentTokenWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v15 = a2;
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v8)
  {
    v10 = *(a1 + 32);
    v11 = v8;
    v12 = *(v10 + 560);
    *(v10 + 560) = v11;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_6;
    }

    v13 = [v7 objectForKeyedSubscript:@"participantDocumentToken"];
    v14 = *(a1 + 32);
    v12 = *(v14 + 536);
    *(v14 + 536) = v13;
  }

LABEL_6:
}

void __88__BRCSharingCopyParticipantTokenOperation__fetchParticipantDocumentTokenWithCompletion___block_invoke_2(void *a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  memset(v16, 0, sizeof(v16));
  __brc_create_section(0, "[BRCSharingCopyParticipantTokenOperation _fetchParticipantDocumentTokenWithCompletion:]_block_invoke_2", 891, 0, v16);
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = a1[6];
    v13 = @"success";
    if (v6)
    {
      v13 = v6;
    }

    *buf = 134218754;
    v18 = v16[0];
    v19 = 2112;
    v20 = v12;
    v21 = 2112;
    v22 = v13;
    v23 = 2112;
    v24 = v7;
    _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx handling result of %@: %@%@", buf, 0x2Au);
  }

  if (!v6)
  {
    v9 = a1[4];
    if (*(v9 + 560) || *(v9 + 536))
    {
      v6 = 0;
    }

    else
    {
      v14 = brc_bread_crumbs();
      v15 = brc_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        __88__BRCSharingCopyParticipantTokenOperation__fetchParticipantDocumentTokenWithCompletion___block_invoke_2_cold_1();
      }

      v6 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: no error and no participantDocumentToken"];
    }
  }

  if (*(a1[4] + 560))
  {
    v10 = *(a1[4] + 560);
  }

  else
  {
    v10 = v6;
  }

  (*(a1[5] + 16))(a1[5], v10);
  __brc_leave_section(v16);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_completeWithResult:(id)result participantKey:(id)key
{
  resultCopy = result;
  keyCopy = key;
  v7 = objc_opt_new();
  v8 = v7;
  if (keyCopy)
  {
    [v7 setObject:keyCopy forKeyedSubscript:@"participantKey"];
  }

  if (resultCopy)
  {
    [v8 setObject:resultCopy forKeyedSubscript:@"baseToken"];
  }

  [(_BRCOperation *)self completedWithResult:v8 error:0];
}

- (void)main
{
  if (self->_shareID)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __47__BRCSharingCopyParticipantTokenOperation_main__block_invoke;
    v4[3] = &unk_2785055A8;
    v4[4] = self;
    [(BRCSharingCopyParticipantTokenOperation *)self _fetchBaseTokenWithCompletion:v4];
  }

  else
  {
    v3 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:@"shareID" value:0];
    [(_BRCOperation *)self completedWithResult:0 error:v3];
  }
}

void __47__BRCSharingCopyParticipantTokenOperation_main__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a3)
  {
    [v7 completedWithResult:0 error:a3];
  }

  else
  {
    objc_storeStrong(v7 + 69, a2);
    v8 = *(a1 + 32);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __47__BRCSharingCopyParticipantTokenOperation_main__block_invoke_2;
    v9[3] = &unk_2784FF540;
    v9[4] = v8;
    [v8 _fetchParticipantKeyWithCompletion:v9];
  }
}

uint64_t __47__BRCSharingCopyParticipantTokenOperation_main__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (a2)
  {

    return [v4 completedWithResult:0 error:a2];
  }

  else
  {
    v6[5] = v2;
    v6[6] = v3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __47__BRCSharingCopyParticipantTokenOperation_main__block_invoke_3;
    v6[3] = &unk_2784FF540;
    v6[4] = v4;
    return [v4 _fetchParticipantDocumentTokenWithCompletion:v6];
  }
}

void __47__BRCSharingCopyParticipantTokenOperation_main__block_invoke_3(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    __brc_create_section(0, "[BRCSharingCopyParticipantTokenOperation main]_block_invoke_3", 938, 0, &v11);
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(*(a1 + 32) + 520);
      *buf = 134218754;
      v15 = v11;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v3;
      v20 = 2112;
      v21 = v4;
      _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Failed to get participantDocumentToken for item: %@ with error %@%@", buf, 0x2Au);
    }

    [*(a1 + 32) completedWithResult:0 error:v3];
    __brc_leave_section(&v11);
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    __brc_create_section(0, "[BRCSharingCopyParticipantTokenOperation main]_block_invoke", 942, 0, &v11);
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(*(a1 + 32) + 520);
      *buf = 134218498;
      v15 = v11;
      v16 = 2112;
      v17 = v10;
      v18 = 2112;
      v19 = v6;
      _os_log_debug_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Succeed to get participantDocumentToken. item: %@%@", buf, 0x20u);
    }

    [*(a1 + 32) _completeWithResult:*(*(a1 + 32) + 552) participantKey:*(*(a1 + 32) + 536)];
    __brc_leave_section(&v11);
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end