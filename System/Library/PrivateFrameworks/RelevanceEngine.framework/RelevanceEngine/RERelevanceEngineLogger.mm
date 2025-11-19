@interface RERelevanceEngineLogger
- (RERelevanceEngineLogger)init;
- (void)collectLogs:(id)a3 completion:(id)a4;
- (void)enumerateLoggables:(id)a3;
@end

@implementation RERelevanceEngineLogger

- (RERelevanceEngineLogger)init
{
  v8.receiver = self;
  v8.super_class = RERelevanceEngineLogger;
  v2 = [(RERelevanceEngineLogger *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    loggables = v2->_loggables;
    v2->_loggables = v3;

    v5 = RECreateSharedQueue(@"DiagnosticLogs");
    queue = v2->_queue;
    v2->_queue = v5;
  }

  return v2;
}

- (void)enumerateLoggables:(id)a3
{
  v4 = a3;
  loggables = self->_loggables;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__RERelevanceEngineLogger_enumerateLoggables___block_invoke;
  v7[3] = &unk_2785FDD18;
  v8 = v4;
  v6 = v4;
  [(REObserverStore *)loggables enumerateObserversWithBlock:v7];
}

- (void)collectLogs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB18] array];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __50__RERelevanceEngineLogger_collectLogs_completion___block_invoke;
  v32[3] = &unk_2785FA0E0;
  v9 = v8;
  v33 = v9;
  [(RERelevanceEngineLogger *)self enumerateLoggables:v32];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__30;
  v30 = __Block_byref_object_dispose__30;
  v31 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __50__RERelevanceEngineLogger_collectLogs_completion___block_invoke_23;
  v20[3] = &unk_2785FDD68;
  v24 = v6;
  v25 = &v26;
  v22 = self;
  v23 = v7;
  v21 = v9;
  v10 = v6;
  v11 = v7;
  v12 = v9;
  v13 = MEMORY[0x22AABC5E0](v20);
  v14 = MEMORY[0x22AABC5E0]();
  v15 = v27[5];
  v27[5] = v14;

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__RERelevanceEngineLogger_collectLogs_completion___block_invoke_5;
  block[3] = &unk_2785FA040;
  v19 = v13;
  v17 = v13;
  dispatch_async(queue, block);

  _Block_object_dispose(&v26, 8);
}

void __50__RERelevanceEngineLogger_collectLogs_completion___block_invoke_23(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = [*(a1 + 32) lastObject];
    [*(a1 + 32) removeLastObject];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __50__RERelevanceEngineLogger_collectLogs_completion___block_invoke_2;
    v11[3] = &unk_2785FDD40;
    v3 = v2;
    v12 = v3;
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    v13 = v4;
    v14 = v5;
    v6 = MEMORY[0x22AABC5E0](v11);
    if (objc_opt_respondsToSelector())
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __50__RERelevanceEngineLogger_collectLogs_completion___block_invoke_3;
      v9[3] = &unk_2785F9DC8;
      v9[4] = *(a1 + 40);
      v10 = v6;
      [v3 collectLoggableState:v9];
    }

    else
    {
      v6[2](v6, 0);
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))();
    v7 = *(*(a1 + 64) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;
  }
}

void __50__RERelevanceEngineLogger_collectLogs_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = RELogHeader(v6);
  [v3 appendString:v7];

  [v3 appendString:@"\n\n"];
  v8 = REVerboseDescriptionForExportedObject(*(a1 + 32));
  [v3 appendString:v8];

  if ([v10 length])
  {
    [v3 appendString:@"\n"];
    [v3 appendString:v10];
  }

  [v3 appendString:@"\n\n"];
  v9 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
  (*(*(*(*(a1 + 48) + 8) + 40) + 16))();
}

void __50__RERelevanceEngineLogger_collectLogs_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__RERelevanceEngineLogger_collectLogs_completion___block_invoke_4;
  v7[3] = &unk_2785FA150;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

@end