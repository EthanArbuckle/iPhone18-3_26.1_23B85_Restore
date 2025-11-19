@interface BRFetchRecordsOperation
- (BRFetchRecordsOperation)init;
- (void)dealloc;
- (void)setFetchRecordsCompletionBlock:(id)a3;
- (void)setPerRecordCompletionBlock:(id)a3;
@end

@implementation BRFetchRecordsOperation

- (BRFetchRecordsOperation)init
{
  v11.receiver = self;
  v11.super_class = BRFetchRecordsOperation;
  v2 = [(BRFetchRecordsOperation *)&v11 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __31__BRFetchRecordsOperation_init__block_invoke;
    v8[3] = &unk_278506D88;
    objc_copyWeak(&v9, &location);
    v7.receiver = v2;
    v7.super_class = BRFetchRecordsOperation;
    [(BRFetchRecordsOperation *)&v7 setPerRecordCompletionBlock:v8];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __31__BRFetchRecordsOperation_init__block_invoke_2;
    v5[3] = &unk_278506DB0;
    objc_copyWeak(&v6, &location);
    v4.receiver = v2;
    v4.super_class = BRFetchRecordsOperation;
    [(BRFetchRecordsOperation *)&v4 setFetchRecordsCompletionBlock:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __31__BRFetchRecordsOperation_init__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (*(WeakRetained + 86))
  {
    [*(WeakRetained + 87) addObject:v7];
    (*(v10[86] + 16))();
  }
}

void __31__BRFetchRecordsOperation_init__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [v6 brc_ckPartialErrorsByItemID];
  if (WeakRetained[86])
  {
    v9 = [v5 count];
    v10 = [v8 count] + v9;
    v11 = [WeakRetained recordIDs];
    v12 = [v11 count];

    if (v10 < v12)
    {
      v13 = brc_bread_crumbs();
      v14 = brc_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v39 = v13;
        _os_log_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEFAULT, "[WARNING] Batch operation completed but some records were not handled by perRecordCompletionBlock%@", buf, 0xCu);
      }

      v15 = [v6 domain];
      v31 = v6;
      if ([v15 isEqualToString:*MEMORY[0x277CBBF50]])
      {
        v16 = [v6 code];

        if (v16 == 2)
        {
          v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFABD0] code:149 userInfo:0];
LABEL_10:
          v32 = v17;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v18 = [WeakRetained recordIDs];
          v19 = [v18 countByEnumeratingWithState:&v33 objects:v37 count:16];
          if (!v19)
          {
            goto LABEL_24;
          }

          v20 = v19;
          v21 = *v34;
          while (1)
          {
            v22 = 0;
            do
            {
              if (*v34 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v33 + 1) + 8 * v22);
              v24 = [v5 objectForKey:v23];
              if (v24 || ([v8 objectForKey:v23], (v24 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v25 = v24;
LABEL_18:

                goto LABEL_19;
              }

              if (([WeakRetained[87] containsObject:v23] & 1) == 0)
              {
                v25 = [WeakRetained perRecordCompletionBlock];
                (v25)[2](v25, 0, v23, v32);
                goto LABEL_18;
              }

LABEL_19:
              ++v22;
            }

            while (v20 != v22);
            v26 = [v18 countByEnumeratingWithState:&v33 objects:v37 count:16];
            v20 = v26;
            if (!v26)
            {
LABEL_24:

              v6 = v31;
              goto LABEL_25;
            }
          }
        }
      }

      else
      {
      }

      v17 = v6;
      goto LABEL_10;
    }
  }

LABEL_25:
  v27 = WeakRetained[85];
  if (v27)
  {
    v27[2](v27, v5, v6);
    v28 = WeakRetained[85];
    WeakRetained[85] = 0;
  }

  v29 = WeakRetained[86];
  WeakRetained[86] = 0;

  v30 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  fetchRecordsCompletionBlock = self->_fetchRecordsCompletionBlock;
  self->_fetchRecordsCompletionBlock = 0;

  perRecordCompletionBlock = self->_perRecordCompletionBlock;
  self->_perRecordCompletionBlock = 0;

  v5.receiver = self;
  v5.super_class = BRFetchRecordsOperation;
  [(BRFetchRecordsOperation *)&v5 dealloc];
}

- (void)setPerRecordCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  completedRecords = self->_completedRecords;
  self->_completedRecords = v5;

  v7 = MEMORY[0x22AA4A310](v4);
  perRecordCompletionBlock = self->_perRecordCompletionBlock;
  self->_perRecordCompletionBlock = v7;
}

- (void)setFetchRecordsCompletionBlock:(id)a3
{
  v4 = MEMORY[0x22AA4A310](a3, a2);
  fetchRecordsCompletionBlock = self->_fetchRecordsCompletionBlock;
  self->_fetchRecordsCompletionBlock = v4;

  MEMORY[0x2821F96F8]();
}

@end