@interface PPContactServerRequestHandler
- (PPContactServerRequestHandler)init;
- (PPContactServerRequestHandler)initWithStore:(id)a3;
- (void)contactHandlesForSource:(id)a3 queryId:(unint64_t)a4;
- (void)contactHandlesForTopics:(id)a3 queryId:(unint64_t)a4;
- (void)contactNameRecordChangesForClient:(id)a3 completion:(id)a4;
- (void)contactNameRecordChangesForClient:(id)a3 queryId:(unint64_t)a4;
- (void)contactNameRecordsForClient:(id)a3 queryId:(unint64_t)a4;
- (void)feedbackDisambiguationResultWithChoicesIdentifiers:(id)a3 chosenContactIdentifier:(id)a4 completion:(id)a5;
- (void)rankedContactsWithQuery:(id)a3 queryId:(unint64_t)a4;
- (void)registerFeedback:(id)a3 completion:(id)a4;
- (void)upcomingRelevantContactsForQuery:(id)a3 queryId:(unint64_t)a4;
@end

@implementation PPContactServerRequestHandler

- (void)contactNameRecordChangesForClient:(id)a3 queryId:(unint64_t)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = v6;
    v16 = 2048;
    v17 = a4;
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPContactServer: contactNameRecordChangesForClient: %@ queryId: %llu", buf, 0x16u);
  }

  queryManager = self->_queryManager;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__PPContactServerRequestHandler_contactNameRecordChangesForClient_queryId___block_invoke;
  v11[3] = &unk_278978A80;
  v11[4] = self;
  v12 = v6;
  v13 = a4;
  v9 = v6;
  [(PPXPCServerPipelinedBatchQueryManager *)queryManager runConcurrentlyWithRequestThrottle:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __75__PPContactServerRequestHandler_contactNameRecordChangesForClient_queryId___block_invoke(void *a1)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v2 = pp_contacts_signpost_handle();
  v3 = os_signpost_id_generate(v2);

  v4 = pp_contacts_signpost_handle();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "PPContactServer.contactNameRecordChangesForClient", "", buf, 2u);
  }

  v6 = a1[5];
  v7 = *(a1[4] + 32);
  v33 = 0;
  v8 = [v7 contactNameRecordChangesForClient:v6 error:&v33];
  v9 = v33;
  v10 = pp_contacts_signpost_handle();
  v11 = v10;
  if (v3 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_END, v3, "PPContactServer.contactNameRecordChangesForClient", "", buf, 2u);
  }

  if (v8)
  {
    v34 = v8;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
    *buf = 0;
    v30 = buf;
    v31 = 0x2020000000;
    v32 = 0;
    v13 = *(a1[4] + 16);
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-contactNameRecordChangesForClient", a1[5]];
    v15 = a1[6];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __75__PPContactServerRequestHandler_contactNameRecordChangesForClient_queryId___block_invoke_2;
    v26[3] = &unk_278977680;
    v16 = v12;
    v27 = v16;
    v28 = buf;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __75__PPContactServerRequestHandler_contactNameRecordChangesForClient_queryId___block_invoke_3;
    v23[3] = &unk_2789776A8;
    v17 = a1[6];
    v24 = a1[4];
    v25 = v17;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __75__PPContactServerRequestHandler_contactNameRecordChangesForClient_queryId___block_invoke_5;
    v22[3] = &unk_2789776D0;
    v22[4] = v24;
    v22[5] = v17;
    [v13 sendBatchedResultForQueryWithName:v14 queryId:v15 batchGenerator:v26 sendError:v23 sendBatch:v22];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v18 = objc_alloc(MEMORY[0x277CCA9B8]);
    v35 = @"PPServerSideErrorInfoKey";
    v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@", v9];
    v36[0] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v16 = [v18 initWithDomain:@"PPServerSideErrorDomain" code:1 userInfo:v20];

    [*(a1[4] + 8) contactNameRecordChangesBatch:0 isLast:1 error:v16 queryId:a1[6] completion:&__block_literal_global_147_16802];
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __75__PPContactServerRequestHandler_contactNameRecordChangesForClient_queryId___block_invoke_2(uint64_t a1, BOOL *a2)
{
  v4 = [*(a1 + 32) count];
  v5 = *(a1 + 32);
  v6 = *(*(*(a1 + 40) + 8) + 24);
  v7 = v4 - v6;
  if ((v4 - v6) >= 0x32)
  {
    v8 = 50;
  }

  else
  {
    v8 = v4 - v6;
  }

  result = [*(a1 + 32) subarrayWithRange:?];
  *a2 = v7 < 0x33;
  *(*(*(a1 + 40) + 8) + 24) += v8;
  return result;
}

- (void)contactNameRecordChangesForClient:(id)a3 completion:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v6;
    _os_log_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEFAULT, "PPContactServer: contactNameRecordChangesForClient: %@", buf, 0xCu);
  }

  v9 = pp_contacts_signpost_handle();
  v10 = os_signpost_id_generate(v9);

  v11 = pp_contacts_signpost_handle();
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PPContactServer.contactNameRecordChangesForClient", "", buf, 2u);
  }

  store = self->_store;
  v23 = 0;
  v14 = [(PPLocalContactStore *)store contactNameRecordChangesForClient:v6 error:&v23];
  v15 = v23;
  v16 = pp_contacts_signpost_handle();
  v17 = v16;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v17, OS_SIGNPOST_INTERVAL_END, v10, "PPContactServer.contactNameRecordChangesForClient", "", buf, 2u);
  }

  if (v14)
  {
    v7[2](v7, v14, 0);
  }

  else
  {
    v18 = objc_alloc(MEMORY[0x277CCA9B8]);
    v24 = @"PPServerSideErrorInfoKey";
    v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@", v15];
    v25 = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v21 = [v18 initWithDomain:@"PPServerSideErrorDomain" code:1 userInfo:v20];

    (v7)[2](v7, 0, v21);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)contactNameRecordsForClient:(id)a3 queryId:(unint64_t)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = v6;
    v16 = 2048;
    v17 = a4;
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPContactServer: contactNameRecordsForClient: %@ queryId: %llu", buf, 0x16u);
  }

  queryManager = self->_queryManager;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__PPContactServerRequestHandler_contactNameRecordsForClient_queryId___block_invoke;
  v11[3] = &unk_278978A80;
  v11[4] = self;
  v12 = v6;
  v13 = a4;
  v9 = v6;
  [(PPXPCServerPipelinedBatchQueryManager *)queryManager runConcurrentlyWithRequestThrottle:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __69__PPContactServerRequestHandler_contactNameRecordsForClient_queryId___block_invoke(void *a1)
{
  v2 = pp_contacts_signpost_handle();
  v3 = os_signpost_id_generate(v2);

  v4 = pp_contacts_signpost_handle();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "PPContactServer.contactNameRecordsForClient", "", buf, 2u);
  }

  v6 = dispatch_semaphore_create(0);
  v7 = dispatch_semaphore_create(50);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__PPContactServerRequestHandler_contactNameRecordsForClient_queryId___block_invoke_124;
  aBlock[3] = &unk_2789797E0;
  v8 = v6;
  v43 = v8;
  v9 = v7;
  v44 = v9;
  v10 = _Block_copy(aBlock);
  v11 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"PPContactServer.contactNameRecordsForClient"];
  v12 = objc_alloc(MEMORY[0x277D425F8]);
  v13 = objc_opt_new();
  v14 = [v12 initWithGuardedData:v13];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__PPContactServerRequestHandler_contactNameRecordsForClient_queryId___block_invoke_2;
  block[3] = &unk_278975CF8;
  v15 = a1[5];
  block[4] = a1[4];
  v36 = v15;
  v16 = v10;
  v40 = v16;
  v17 = v9;
  v37 = v17;
  v18 = v14;
  v38 = v18;
  v19 = v8;
  v39 = v19;
  v41 = v3;
  dispatch_async(v11, block);
  v20 = *(a1[4] + 16);
  v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-contactNameRecordsForClient", a1[5]];
  v22 = a1[6];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __69__PPContactServerRequestHandler_contactNameRecordsForClient_queryId___block_invoke_138;
  v30[3] = &unk_278975D48;
  v23 = a1[4];
  v33 = v17;
  v34 = v16;
  v30[4] = v23;
  v31 = v19;
  v32 = v18;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __69__PPContactServerRequestHandler_contactNameRecordsForClient_queryId___block_invoke_140;
  v29[3] = &unk_2789776A8;
  v29[4] = v23;
  v29[5] = v22;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __69__PPContactServerRequestHandler_contactNameRecordsForClient_queryId___block_invoke_3_144;
  v28[3] = &unk_2789776D0;
  v28[4] = v23;
  v28[5] = v22;
  v24 = v17;
  v25 = v18;
  v26 = v19;
  v27 = v16;
  [v20 sendBatchedResultForQueryWithName:v21 queryId:v22 batchGenerator:v30 sendError:v29 sendBatch:v28];
}

intptr_t __69__PPContactServerRequestHandler_contactNameRecordsForClient_queryId___block_invoke_124(uint64_t a1)
{
  v2 = 0;
  do
  {
    dispatch_semaphore_signal(*(a1 + 32));
    result = dispatch_semaphore_signal(*(a1 + 40));
  }

  while (v2++ < 0x32);
  return result;
}

void __69__PPContactServerRequestHandler_contactNameRecordsForClient_queryId___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v2 + 32);
  v20 = 0;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __69__PPContactServerRequestHandler_contactNameRecordsForClient_queryId___block_invoke_3;
  v14 = &unk_278975CB0;
  v15 = v2;
  v19 = *(a1 + 72);
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v18 = *(a1 + 64);
  LOBYTE(v4) = [v4 iterContactNameRecordsForClient:v3 error:&v20 block:&v11];
  v5 = v20;
  if ((v4 & 1) == 0)
  {
    v6 = pp_xpc_server_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v5;
      _os_log_error_impl(&dword_23224A000, v6, OS_LOG_TYPE_ERROR, "PPContactRecordResultBuffer: iterContactNameRecordsForClient: failed with error: %@", buf, 0xCu);
    }
  }

  [*(a1 + 56) runWithLockAcquired:{&__block_literal_global_134_16837, v11, v12, v13, v14, v15}];
  (*(*(a1 + 72) + 16))();
  v7 = pp_contacts_signpost_handle();
  v8 = v7;
  v9 = *(a1 + 80);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v8, OS_SIGNPOST_INTERVAL_END, v9, "PPContactServer.contactNameRecordsForClient", "", buf, 2u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

id __69__PPContactServerRequestHandler_contactNameRecordsForClient_queryId___block_invoke_138(uint64_t a1, _BYTE *a2)
{
  v4 = objc_opt_new();
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v5 = atomic_load((*(a1 + 32) + 24));
  if (v5)
  {
    v6 = pp_xpc_server_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_INFO, "PPContactRecordResultBuffer: batchGenerator terminated.", buf, 2u);
    }

    (*(*(a1 + 64) + 16))();
LABEL_14:
    *a2 = 1;
    v11 = MEMORY[0x277CBEBF8];
    goto LABEL_15;
  }

LABEL_5:
  if ([v4 count] <= 0x31 && (v20[3] & 1) == 0)
  {
    do
    {
      if ([MEMORY[0x277D425A0] waitForSemaphore:*(a1 + 40) timeoutSeconds:1.0] != 1)
      {
        v8 = *(a1 + 48);
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __69__PPContactServerRequestHandler_contactNameRecordsForClient_queryId___block_invoke_139;
        v13[3] = &unk_278975D20;
        v16 = &v19;
        v17 = a2;
        v14 = v4;
        v15 = *(a1 + 56);
        [v8 runWithLockAcquired:v13];

        goto LABEL_5;
      }

      v7 = atomic_load((*(a1 + 32) + 24));
    }

    while ((v7 & 1) == 0);
    v9 = pp_xpc_server_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_INFO, "PPContactRecordResultBuffer: batchGenerator terminated while waiting on semaphore.", buf, 2u);
    }

    (*(*(a1 + 64) + 16))();
    goto LABEL_14;
  }

  v11 = v4;
LABEL_15:
  _Block_object_dispose(&v19, 8);

  return v11;
}

void __69__PPContactServerRequestHandler_contactNameRecordsForClient_queryId___block_invoke_139(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 loadingComplete])
  {
    v4 = [v3 records];
    **(a1 + 56) = [v4 count] == 0;
  }

  else
  {
    **(a1 + 56) = 0;
  }

  v5 = [v3 records];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [v3 records];
    v8 = [v7 lastObject];

    v9 = [v3 records];
    [v9 removeLastObject];

    v10 = *(a1 + 32);
    v11 = [v8 clientCopy];
    [v10 addObject:v11];

    v12 = pp_xpc_server_log_handle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v15 = [*(a1 + 32) count];
      v16 = 134217984;
      v17 = v15;
      _os_log_debug_impl(&dword_23224A000, v12, OS_LOG_TYPE_DEBUG, "PPContactRecordResultBuffer: batchGenerator: clientRecords = %tu", &v16, 0xCu);
    }

    dispatch_semaphore_signal(*(a1 + 40));
  }

  else
  {
    v13 = pp_xpc_server_log_handle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v16 = 67109120;
      LODWORD(v17) = [v3 loadingComplete];
      _os_log_debug_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEBUG, "PPContactRecordResultBuffer: batchGenerator: buffer empty, loadingComplete: %d", &v16, 8u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __69__PPContactServerRequestHandler_contactNameRecordsForClient_queryId___block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = atomic_load((*(a1 + 32) + 24));
  if ((v6 & 1) == 0)
  {
    do
    {
      if ([MEMORY[0x277D425A0] waitForSemaphore:*(a1 + 40) timeoutSeconds:1.0] != 1)
      {
        v10 = *(a1 + 48);
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __69__PPContactServerRequestHandler_contactNameRecordsForClient_queryId___block_invoke_129;
        v11[3] = &unk_278975C88;
        v12 = v5;
        v13 = *(a1 + 56);
        [v10 runWithLockAcquired:v11];

        goto LABEL_11;
      }

      v9 = atomic_load((*(a1 + 32) + 24));
    }

    while ((v9 & 1) == 0);
    v7 = pp_xpc_server_log_handle();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v8 = "PPContactRecordResultBuffer: iterContactNameRecordsForClient terminated while waiting on semaphore.";
    goto LABEL_8;
  }

  v7 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    v8 = "PPContactRecordResultBuffer: iterContactNameRecordsForClient terminated.";
LABEL_8:
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_INFO, v8, buf, 2u);
  }

LABEL_9:

  (*(*(a1 + 64) + 16))();
  *a3 = 1;
LABEL_11:
}

void __69__PPContactServerRequestHandler_contactNameRecordsForClient_queryId___block_invoke_132(uint64_t a1, void *a2)
{
  [a2 setLoadingComplete:1];
  v2 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_debug_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEBUG, "PPContactRecordResultBuffer: loading is complete.", v3, 2u);
  }
}

void __69__PPContactServerRequestHandler_contactNameRecordsForClient_queryId___block_invoke_129(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 records];
  [v4 addObject:*(a1 + 32)];

  v5 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = [v3 records];
    v8 = 134217984;
    v9 = [v7 count];
    _os_log_debug_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEBUG, "PPContactRecordResultBuffer: loading: record.count = %tu", &v8, 0xCu);
  }

  dispatch_semaphore_signal(*(a1 + 40));
  v6 = *MEMORY[0x277D85DE8];
}

- (void)feedbackDisambiguationResultWithChoicesIdentifiers:(id)a3 chosenContactIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v11, OS_LOG_TYPE_DEFAULT, "PPContactServer: feedbackDisambiguationResultWithChoicesIdentifiers", buf, 2u);
  }

  queryManager = self->_queryManager;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __119__PPContactServerRequestHandler_feedbackDisambiguationResultWithChoicesIdentifiers_chosenContactIdentifier_completion___block_invoke;
  v16[3] = &unk_278977290;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  [(PPXPCServerPipelinedBatchQueryManager *)queryManager runConcurrentlyWithRequestThrottle:v16];
}

uint64_t __119__PPContactServerRequestHandler_feedbackDisambiguationResultWithChoicesIdentifiers_chosenContactIdentifier_completion___block_invoke(void *a1)
{
  [*(a1[4] + 32) feedbackDisambiguationResultWithChoicesIdentifiers:a1[5] chosenContactIdentifier:a1[6]];
  v2 = *(a1[7] + 16);

  return v2();
}

- (void)registerFeedback:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEFAULT, "PPContactServer: registerFeedback", v9, 2u);
  }

  [(PPLocalContactStore *)self->_store registerFeedback:v7 completion:v6];
}

- (void)contactHandlesForSource:(id)a3 queryId:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 documentId];
    *buf = 138412546;
    v16 = v8;
    v17 = 2048;
    v18 = a4;
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPContactServer: contactHandlesForSource:%@ queryId:%llu", buf, 0x16u);
  }

  queryManager = self->_queryManager;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__PPContactServerRequestHandler_contactHandlesForSource_queryId___block_invoke;
  v12[3] = &unk_278978A80;
  v12[4] = self;
  v13 = v6;
  v14 = a4;
  v10 = v6;
  [(PPXPCServerPipelinedBatchQueryManager *)queryManager runConcurrentlyWithRequestThrottle:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __65__PPContactServerRequestHandler_contactHandlesForSource_queryId___block_invoke(void *a1)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v2 = pp_contacts_signpost_handle();
  v3 = os_signpost_id_generate(v2);

  v4 = pp_contacts_signpost_handle();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "PPContactServer.contactHandlesForSource", "", buf, 2u);
  }

  v6 = a1[5];
  v7 = *(a1[4] + 32);
  v32 = 0;
  v8 = [v7 contactHandlesForSource:v6 error:&v32];
  v9 = v32;
  v10 = pp_contacts_signpost_handle();
  v11 = v10;
  if (v3 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_END, v3, "PPContactServer.contactHandlesForSource", "", buf, 2u);
  }

  if (v8)
  {
    *buf = 0;
    v29 = buf;
    v30 = 0x2020000000;
    v31 = 0;
    v12 = *(a1[4] + 16);
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-contactHandlesForSource", *(a1[4] + 40)];
    v14 = a1[6];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __65__PPContactServerRequestHandler_contactHandlesForSource_queryId___block_invoke_2;
    v25[3] = &unk_278977680;
    v26 = v8;
    v27 = buf;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __65__PPContactServerRequestHandler_contactHandlesForSource_queryId___block_invoke_3;
    v22[3] = &unk_2789776A8;
    v15 = a1[6];
    v23 = a1[4];
    v24 = v15;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __65__PPContactServerRequestHandler_contactHandlesForSource_queryId___block_invoke_5;
    v21[3] = &unk_2789776D0;
    v21[4] = v23;
    v21[5] = v15;
    [v12 sendBatchedResultForQueryWithName:v13 queryId:v14 batchGenerator:v25 sendError:v22 sendBatch:v21];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v16 = objc_alloc(MEMORY[0x277CCA9B8]);
    v33 = @"PPServerSideErrorInfoKey";
    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@", v9];
    v34[0] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v19 = [v16 initWithDomain:@"PPServerSideErrorDomain" code:1 userInfo:v18];

    [*(a1[4] + 8) contactHandlesForSourceBatch:0 isLast:1 error:v19 queryId:a1[6] completion:&__block_literal_global_118_16853];
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __65__PPContactServerRequestHandler_contactHandlesForSource_queryId___block_invoke_2(uint64_t a1, BOOL *a2)
{
  v4 = [*(a1 + 32) count];
  v5 = *(a1 + 32);
  v6 = *(*(*(a1 + 40) + 8) + 24);
  v7 = v4 - v6;
  if ((v4 - v6) >= 0x32)
  {
    v8 = 50;
  }

  else
  {
    v8 = v4 - v6;
  }

  result = [*(a1 + 32) subarrayWithRange:?];
  *a2 = v7 < 0x33;
  *(*(*(a1 + 40) + 8) + 24) += v8;
  return result;
}

- (void)contactHandlesForTopics:(id)a3 queryId:(unint64_t)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v15 = [v6 count];
    v16 = 2048;
    v17 = a4;
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPContactServer: contactHandlesForTopics:%tu queryId:%llu", buf, 0x16u);
  }

  queryManager = self->_queryManager;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__PPContactServerRequestHandler_contactHandlesForTopics_queryId___block_invoke;
  v11[3] = &unk_278978A80;
  v11[4] = self;
  v12 = v6;
  v13 = a4;
  v9 = v6;
  [(PPXPCServerPipelinedBatchQueryManager *)queryManager runConcurrentlyWithRequestThrottle:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __65__PPContactServerRequestHandler_contactHandlesForTopics_queryId___block_invoke(void *a1)
{
  v35[1] = *MEMORY[0x277D85DE8];
  v2 = pp_contacts_signpost_handle();
  v3 = os_signpost_id_generate(v2);

  v4 = pp_contacts_signpost_handle();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "PPContactServer.contactHandlesForTopics", "", buf, 2u);
  }

  v6 = a1[5];
  v7 = *(a1[4] + 32);
  v33 = 0;
  v8 = [v7 contactHandlesForTopics:v6 error:&v33];
  v9 = v33;
  v10 = pp_contacts_signpost_handle();
  v11 = v10;
  if (v3 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_END, v3, "PPContactServer.contactHandlesForTopics", "", buf, 2u);
  }

  if (v8)
  {
    *buf = 0;
    v30 = buf;
    v31 = 0x2020000000;
    v32 = 0;
    v12 = *(a1[4] + 16);
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-contactHandlesForTopics", *(a1[4] + 40)];
    v14 = a1[6];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __65__PPContactServerRequestHandler_contactHandlesForTopics_queryId___block_invoke_2;
    v26[3] = &unk_278977680;
    v27 = v8;
    v28 = buf;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __65__PPContactServerRequestHandler_contactHandlesForTopics_queryId___block_invoke_3;
    v23[3] = &unk_2789776A8;
    v15 = a1[6];
    v24 = a1[4];
    v25 = v15;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __65__PPContactServerRequestHandler_contactHandlesForTopics_queryId___block_invoke_5;
    v22[3] = &unk_2789776D0;
    v22[4] = v24;
    v22[5] = v15;
    [v12 sendBatchedResultForQueryWithName:v13 queryId:v14 batchGenerator:v26 sendError:v23 sendBatch:v22];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v16 = objc_alloc(MEMORY[0x277CCA9B8]);
    v17 = objc_autoreleasePoolPush();
    v34 = @"PPServerSideErrorInfoKey";
    v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@", v9];
    v35[0] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];

    objc_autoreleasePoolPop(v17);
    v20 = [v16 initWithDomain:@"PPServerSideErrorDomain" code:1 userInfo:v19];

    [*(a1[4] + 8) contactHandlesForTopicsBatch:0 isLast:1 error:v20 queryId:a1[6] completion:&__block_literal_global_110];
  }

  v21 = *MEMORY[0x277D85DE8];
}

id __65__PPContactServerRequestHandler_contactHandlesForTopics_queryId___block_invoke_2(uint64_t a1, BOOL *a2)
{
  v4 = [*(a1 + 32) count];
  v5 = *(*(*(a1 + 40) + 8) + 24);
  v6 = v4 - v5;
  if ((v4 - v5) >= 0x32)
  {
    v7 = 50;
  }

  else
  {
    v7 = v4 - v5;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = [*(a1 + 32) subarrayWithRange:{v5, v7}];
  objc_autoreleasePoolPop(v8);
  *a2 = v6 < 0x33;
  *(*(*(a1 + 40) + 8) + 24) += v7;

  return v9;
}

- (void)upcomingRelevantContactsForQuery:(id)a3 queryId:(unint64_t)a4
{
  v6 = a3;
  queryManager = self->_queryManager;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__PPContactServerRequestHandler_upcomingRelevantContactsForQuery_queryId___block_invoke;
  v9[3] = &unk_278978A80;
  v9[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  [(PPXPCServerPipelinedBatchQueryManager *)queryManager runConcurrentlyWithRequestThrottle:v9];
}

void __74__PPContactServerRequestHandler_upcomingRelevantContactsForQuery_queryId___block_invoke(void *a1)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v2 = pp_contacts_signpost_handle();
  v3 = os_signpost_id_generate(v2);

  v4 = pp_contacts_signpost_handle();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "PPContactServer.upcomingRelevantContactsForQuery", "", buf, 2u);
  }

  v6 = a1[5];
  v7 = *(a1[4] + 32);
  v32 = 0;
  v8 = [v7 upcomingRelevantContactsForQuery:v6 error:&v32];
  v9 = v32;
  v10 = pp_contacts_signpost_handle();
  v11 = v10;
  if (v3 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_END, v3, "PPContactServer.upcomingRelevantContactsForQuery", "", buf, 2u);
  }

  if (v8)
  {
    *buf = 0;
    v29 = buf;
    v30 = 0x2020000000;
    v31 = 0;
    v12 = *(a1[4] + 16);
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-upcomingRelevantContactsForQuery", *(a1[4] + 40)];
    v14 = a1[6];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __74__PPContactServerRequestHandler_upcomingRelevantContactsForQuery_queryId___block_invoke_2;
    v25[3] = &unk_278977680;
    v26 = v8;
    v27 = buf;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __74__PPContactServerRequestHandler_upcomingRelevantContactsForQuery_queryId___block_invoke_3;
    v22[3] = &unk_2789776A8;
    v15 = a1[6];
    v23 = a1[4];
    v24 = v15;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __74__PPContactServerRequestHandler_upcomingRelevantContactsForQuery_queryId___block_invoke_5;
    v21[3] = &unk_2789776D0;
    v21[4] = v23;
    v21[5] = v15;
    [v12 sendBatchedResultForQueryWithName:v13 queryId:v14 batchGenerator:v25 sendError:v22 sendBatch:v21];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v16 = objc_alloc(MEMORY[0x277CCA9B8]);
    v33 = @"PPServerSideErrorInfoKey";
    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@", v9];
    v34[0] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v19 = [v16 initWithDomain:@"PPServerSideErrorDomain" code:1 userInfo:v18];

    [*(a1[4] + 8) upcomingRelevantContactsBatch:0 isLast:1 error:v19 queryId:a1[6] completion:&__block_literal_global_102];
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __74__PPContactServerRequestHandler_upcomingRelevantContactsForQuery_queryId___block_invoke_2(uint64_t a1, BOOL *a2)
{
  v4 = [*(a1 + 32) count];
  v5 = *(a1 + 32);
  v6 = *(*(*(a1 + 40) + 8) + 24);
  v7 = v4 - v6;
  if ((v4 - v6) >= 0x32)
  {
    v8 = 50;
  }

  else
  {
    v8 = v4 - v6;
  }

  result = [*(a1 + 32) subarrayWithRange:?];
  *a2 = v7 < 0x33;
  *(*(*(a1 + 40) + 8) + 24) += v8;
  return result;
}

- (void)rankedContactsWithQuery:(id)a3 queryId:(unint64_t)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = v6;
    v16 = 2048;
    v17 = a4;
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPContactServer: rankedContactsWithQuery:%@ queryId:%llu", buf, 0x16u);
  }

  queryManager = self->_queryManager;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__PPContactServerRequestHandler_rankedContactsWithQuery_queryId___block_invoke;
  v11[3] = &unk_278978A80;
  v11[4] = self;
  v12 = v6;
  v13 = a4;
  v9 = v6;
  [(PPXPCServerPipelinedBatchQueryManager *)queryManager runConcurrentlyWithRequestThrottle:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __65__PPContactServerRequestHandler_rankedContactsWithQuery_queryId___block_invoke(void *a1)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v2 = pp_contacts_signpost_handle();
  v3 = os_signpost_id_generate(v2);

  v4 = pp_contacts_signpost_handle();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "PPContactServer.rankedContactsWithQuery", "", buf, 2u);
  }

  v6 = a1[5];
  v7 = *(a1[4] + 32);
  v32 = 0;
  v8 = [v7 rankedContactsWithQuery:v6 error:&v32];
  v9 = v32;
  v10 = pp_contacts_signpost_handle();
  v11 = v10;
  if (v3 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_END, v3, "PPContactServer.rankedContactsWithQuery", "", buf, 2u);
  }

  if (v8)
  {
    *buf = 0;
    v29 = buf;
    v30 = 0x2020000000;
    v31 = 0;
    v12 = *(a1[4] + 16);
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-rankedContactsWithQuery", *(a1[4] + 40)];
    v14 = a1[6];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __65__PPContactServerRequestHandler_rankedContactsWithQuery_queryId___block_invoke_2;
    v25[3] = &unk_278977680;
    v26 = v8;
    v27 = buf;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __65__PPContactServerRequestHandler_rankedContactsWithQuery_queryId___block_invoke_3;
    v22[3] = &unk_2789776A8;
    v15 = a1[6];
    v23 = a1[4];
    v24 = v15;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __65__PPContactServerRequestHandler_rankedContactsWithQuery_queryId___block_invoke_5;
    v21[3] = &unk_2789776D0;
    v21[4] = v23;
    v21[5] = v15;
    [v12 sendBatchedResultForQueryWithName:v13 queryId:v14 batchGenerator:v25 sendError:v22 sendBatch:v21];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v16 = objc_alloc(MEMORY[0x277CCA9B8]);
    v33 = @"PPServerSideErrorInfoKey";
    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@", v9];
    v34[0] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v19 = [v16 initWithDomain:@"PPServerSideErrorDomain" code:1 userInfo:v18];

    [*(a1[4] + 8) rankedContactsBatch:0 isLast:1 error:v19 queryId:a1[6] completion:&__block_literal_global_16884];
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __65__PPContactServerRequestHandler_rankedContactsWithQuery_queryId___block_invoke_2(uint64_t a1, BOOL *a2)
{
  v4 = [*(a1 + 32) count];
  v5 = *(a1 + 32);
  v6 = *(*(*(a1 + 40) + 8) + 24);
  v7 = v4 - v6;
  if ((v4 - v6) >= 0x32)
  {
    v8 = 50;
  }

  else
  {
    v8 = v4 - v6;
  }

  result = [*(a1 + 32) subarrayWithRange:?];
  *a2 = v7 < 0x33;
  *(*(*(a1 + 40) + 8) + 24) += v8;
  return result;
}

- (PPContactServerRequestHandler)initWithStore:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = PPContactServerRequestHandler;
  v6 = [(PPContactServerRequestHandler *)&v10 init];
  if (v6)
  {
    v7 = [[PPXPCServerPipelinedBatchQueryManager alloc] initWithPipelineDepth:2 pipelinedCallTimeoutNsec:10000000000 maxConcurrentRequestsPerConnection:4];
    queryManager = v6->_queryManager;
    v6->_queryManager = v7;

    objc_storeStrong(&v6->_store, a3);
    atomic_store(0, &v6->_isTerminated);
  }

  return v6;
}

- (PPContactServerRequestHandler)init
{
  v3 = +[PPLocalContactStore defaultStore];
  v4 = [(PPContactServerRequestHandler *)self initWithStore:v3];

  return v4;
}

@end