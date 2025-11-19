@interface PPEventServerRequestHandler
- (PPEventServerRequestHandler)init;
- (void)eventHighlightsFrom:(id)a3 to:(id)a4 options:(int)a5 queryId:(unint64_t)a6;
- (void)eventNameRecordsForClient:(id)a3 queryId:(unint64_t)a4;
- (void)interactionSummaryMetricsWithQueryId:(unint64_t)a3;
- (void)registerFeedback:(id)a3 completion:(id)a4;
- (void)resolveEventNameRecordChanges:(id)a3 client:(id)a4 queryId:(unint64_t)a5;
- (void)scoredEventsWithQuery:(id)a3 queryId:(unint64_t)a4;
- (void)sendRTCLogsWithWithCompletion:(id)a3;
@end

@implementation PPEventServerRequestHandler

- (void)registerFeedback:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPEventServer: registerFeedback", v9, 2u);
  }

  v8 = +[PPLocalEventStore defaultStore];
  [v8 registerFeedback:v6 completion:v5];
}

- (void)sendRTCLogsWithWithCompletion:(id)a3
{
  v3 = a3;
  v4 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "PPEventServer: sendRTCLogs", buf, 2u);
  }

  v5 = +[PPEventMetricsLogger defaultLogger];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__PPEventServerRequestHandler_sendRTCLogsWithWithCompletion___block_invoke;
  v7[3] = &unk_278976EF8;
  v8 = 0;
  v9 = v3;
  v6 = v3;
  [v5 sendRTCLogsWithCompletion:v7];
}

uint64_t __61__PPEventServerRequestHandler_sendRTCLogsWithWithCompletion___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = pp_xpc_server_log_handle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 138412290;
      v8 = v6;
      _os_log_error_impl(&dword_23224A000, v2, OS_LOG_TYPE_ERROR, "sendRTCLogsWithCompletion unexpectedly failed: %@", &v7, 0xCu);
    }

    v3 = *(a1 + 32);
  }

  result = (*(*(a1 + 40) + 16))();
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)interactionSummaryMetricsWithQueryId:(unint64_t)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v10 = a3;
    _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEFAULT, "PPEventServer: interactionSummaryMetrics queryId: %llu", buf, 0xCu);
  }

  queryManager = self->_queryManager;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__PPEventServerRequestHandler_interactionSummaryMetricsWithQueryId___block_invoke;
  v8[3] = &unk_278977B20;
  v8[4] = self;
  v8[5] = a3;
  [(PPXPCServerPipelinedBatchQueryManager *)queryManager runConcurrentlyWithRequestThrottle:v8];
  v7 = *MEMORY[0x277D85DE8];
}

void __68__PPEventServerRequestHandler_interactionSummaryMetricsWithQueryId___block_invoke(uint64_t a1)
{
  v2 = +[PPEventMetricsLogger defaultLogger];
  v3 = [v2 loggedInteractionsSummaryMetrics];

  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v15[3] = 0;
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 16);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__PPEventServerRequestHandler_interactionSummaryMetricsWithQueryId___block_invoke_2;
  v12[3] = &unk_278977680;
  v6 = v3;
  v13 = v6;
  v14 = v15;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__PPEventServerRequestHandler_interactionSummaryMetricsWithQueryId___block_invoke_3;
  v9[3] = &unk_2789776A8;
  v7 = *(a1 + 40);
  v10 = *(a1 + 32);
  v11 = v7;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__PPEventServerRequestHandler_interactionSummaryMetricsWithQueryId___block_invoke_5;
  v8[3] = &unk_2789776D0;
  v8[4] = v10;
  v8[5] = v7;
  [v5 sendBatchedResultForQueryWithName:@"interactionSummaryMetrics" queryId:v4 batchGenerator:v12 sendError:v9 sendBatch:v8];

  _Block_object_dispose(v15, 8);
}

uint64_t __68__PPEventServerRequestHandler_interactionSummaryMetricsWithQueryId___block_invoke_2(uint64_t a1, BOOL *a2)
{
  v4 = [*(a1 + 32) count];
  v5 = *(a1 + 32);
  v6 = *(*(*(a1 + 40) + 8) + 24);
  v7 = v4 - v6;
  if ((v4 - v6) >= 0x1F4)
  {
    v8 = 500;
  }

  else
  {
    v8 = v4 - v6;
  }

  result = [*(a1 + 32) subarrayWithRange:?];
  *a2 = v7 < 0x1F5;
  *(*(*(a1 + 40) + 8) + 24) += v8;
  return result;
}

- (void)scoredEventsWithQuery:(id)a3 queryId:(unint64_t)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v16 = a4;
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPEventServer: scoredEvents queryId: %llu", buf, 0xCu);
  }

  queryManager = self->_queryManager;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__PPEventServerRequestHandler_scoredEventsWithQuery_queryId___block_invoke;
  v11[3] = &unk_278978A80;
  v12 = v6;
  v13 = self;
  v14 = a4;
  v9 = v6;
  [(PPXPCServerPipelinedBatchQueryManager *)queryManager runConcurrentlyWithRequestThrottle:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __61__PPEventServerRequestHandler_scoredEventsWithQuery_queryId___block_invoke(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = +[PPLocalEventStore defaultStore];
  v3 = [v2 scoredEventsWithQuery:a1[4]];

  v4 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = [v3 count];
    _os_log_debug_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEBUG, "PPScoredEvents from PPEventStore: %lu", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v18 = 0x2020000000;
  v19 = 0;
  v5 = a1[6];
  v6 = *(a1[5] + 16);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__PPEventServerRequestHandler_scoredEventsWithQuery_queryId___block_invoke_107;
  v14[3] = &unk_278977680;
  v7 = v3;
  v15 = v7;
  p_buf = &buf;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__PPEventServerRequestHandler_scoredEventsWithQuery_queryId___block_invoke_2;
  v11[3] = &unk_2789776A8;
  v8 = a1[6];
  v12 = a1[5];
  v13 = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__PPEventServerRequestHandler_scoredEventsWithQuery_queryId___block_invoke_4;
  v10[3] = &unk_2789776D0;
  v10[4] = v12;
  v10[5] = v8;
  [v6 sendBatchedResultForQueryWithName:@"scoredEvents" queryId:v5 batchGenerator:v14 sendError:v11 sendBatch:v10];

  _Block_object_dispose(&buf, 8);
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __61__PPEventServerRequestHandler_scoredEventsWithQuery_queryId___block_invoke_107(uint64_t a1, BOOL *a2)
{
  v4 = [*(a1 + 32) count];
  v5 = *(a1 + 32);
  v6 = *(*(*(a1 + 40) + 8) + 24);
  v7 = v4 - v6;
  if ((v4 - v6) >= 0x1F4)
  {
    v8 = 500;
  }

  else
  {
    v8 = v4 - v6;
  }

  result = [*(a1 + 32) subarrayWithRange:?];
  *a2 = v7 < 0x1F5;
  *(*(*(a1 + 40) + 8) + 24) += v8;
  return result;
}

- (void)eventHighlightsFrom:(id)a3 to:(id)a4 options:(int)a5 queryId:(unint64_t)a6
{
  v31 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v26 = v10;
    v27 = 2112;
    v28 = v11;
    v29 = 2048;
    v30 = a6;
    _os_log_impl(&dword_23224A000, v12, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightServer: enqueue eventHighlightsFrom:%@ to:%@ queryId:%llu", buf, 0x20u);
  }

  if (eventHighlightsFrom_to_options_queryId___pasOnceToken17 != -1)
  {
    dispatch_once(&eventHighlightsFrom_to_options_queryId___pasOnceToken17, &__block_literal_global_95_19912);
  }

  v13 = eventHighlightsFrom_to_options_queryId___pasExprOnceResult;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__PPEventServerRequestHandler_eventHighlightsFrom_to_options_queryId___block_invoke_2;
  block[3] = &unk_278976ED0;
  v20 = v10;
  v21 = v11;
  v24 = a5;
  v22 = self;
  v23 = a6;
  v14 = v11;
  v15 = v10;
  v16 = v13;
  v17 = dispatch_block_create(0, block);
  [(PPXPCServerPipelinedBatchQueryManager *)self->_queryManager waitForBlockWithRequestThrottle:v17];
  dispatch_async(v16, v17);

  v18 = *MEMORY[0x277D85DE8];
}

void __70__PPEventServerRequestHandler_eventHighlightsFrom_to_options_queryId___block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = pp_events_signpost_handle();
  v3 = os_signpost_id_generate(v2);

  v4 = pp_events_signpost_handle();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "PPEventServer.eventHighlights", "", &buf, 2u);
  }

  v6 = +[PPLocalEventStore defaultStore];
  v7 = [v6 eventHighlightsFrom:*(a1 + 32) to:*(a1 + 40) options:*(a1 + 64)];

  v8 = pp_events_signpost_handle();
  v9 = v8;
  if (v3 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v8))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v9, OS_SIGNPOST_INTERVAL_END, v3, "PPEventServer.eventHighlights", "", &buf, 2u);
  }

  v10 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v16 = [v7 count];
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v16;
    _os_log_debug_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEBUG, "PPEventHighlights from PPEventStore: %lu", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v25 = 0x2020000000;
  v26 = 0;
  v11 = *(a1 + 56);
  v12 = *(*(a1 + 48) + 16);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __70__PPEventServerRequestHandler_eventHighlightsFrom_to_options_queryId___block_invoke_100;
  v21[3] = &unk_278977680;
  v13 = v7;
  v22 = v13;
  p_buf = &buf;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __70__PPEventServerRequestHandler_eventHighlightsFrom_to_options_queryId___block_invoke_2_101;
  v18[3] = &unk_2789776A8;
  v14 = *(a1 + 56);
  v19 = *(a1 + 48);
  v20 = v14;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __70__PPEventServerRequestHandler_eventHighlightsFrom_to_options_queryId___block_invoke_4;
  v17[3] = &unk_2789776D0;
  v17[4] = v19;
  v17[5] = v14;
  [v12 sendBatchedResultForQueryWithName:@"eventHighlights" queryId:v11 batchGenerator:v21 sendError:v18 sendBatch:v17];

  _Block_object_dispose(&buf, 8);
  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __70__PPEventServerRequestHandler_eventHighlightsFrom_to_options_queryId___block_invoke_100(uint64_t a1, BOOL *a2)
{
  v4 = [*(a1 + 32) count];
  v5 = *(a1 + 32);
  v6 = *(*(*(a1 + 40) + 8) + 24);
  v7 = v4 - v6;
  if ((v4 - v6) >= 0x1F4)
  {
    v8 = 500;
  }

  else
  {
    v8 = v4 - v6;
  }

  result = [*(a1 + 32) subarrayWithRange:?];
  *a2 = v7 < 0x1F5;
  *(*(*(a1 + 40) + 8) + 24) += v8;
  return result;
}

void __70__PPEventServerRequestHandler_eventHighlightsFrom_to_options_queryId___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = dispatch_workloop_create("eventHighlightsFromTo");
  v2 = eventHighlightsFrom_to_options_queryId___pasExprOnceResult;
  eventHighlightsFrom_to_options_queryId___pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

- (void)resolveEventNameRecordChanges:(id)a3 client:(id)a4 queryId:(unint64_t)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = v9;
    v22 = 2048;
    v23 = a5;
    _os_log_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEFAULT, "PPEventServer: eventNameRecordChangesForClient: %@ queryId: %llu", buf, 0x16u);
  }

  queryManager = self->_queryManager;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __76__PPEventServerRequestHandler_resolveEventNameRecordChanges_client_queryId___block_invoke;
  v15[3] = &unk_278978628;
  v16 = v8;
  v17 = v9;
  v18 = self;
  v19 = a5;
  v12 = v9;
  v13 = v8;
  [(PPXPCServerPipelinedBatchQueryManager *)queryManager runConcurrentlyWithRequestThrottle:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __76__PPEventServerRequestHandler_resolveEventNameRecordChanges_client_queryId___block_invoke(void *a1)
{
  v2 = pp_events_signpost_handle();
  v3 = os_signpost_id_generate(v2);

  v4 = pp_events_signpost_handle();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "PPEventServer.resolveEventNameRecordChanges", "", buf, 2u);
  }

  v6 = +[PPLocalEventStore defaultStore];
  v7 = a1[4];
  v8 = a1[5];
  v28 = 0;
  v9 = [v6 resolveEventNameRecordChanges:v7 client:v8 error:&v28];
  v10 = v28;

  v11 = pp_events_signpost_handle();
  v12 = v11;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v12, OS_SIGNPOST_INTERVAL_END, v3, "PPEventServer.resolveEventNameRecordChanges", "", buf, 2u);
  }

  if (v10)
  {
    [*(a1[6] + 8) eventNameRecordChangesBatch:0 isLast:1 error:v10 queryId:a1[7] completion:&__block_literal_global_88];
  }

  else
  {
    *buf = 0;
    v25 = buf;
    v26 = 0x2020000000;
    v27 = 0;
    v13 = *(a1[6] + 16);
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-eventNameRecordChangesForClient", a1[5]];
    v15 = a1[7];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __76__PPEventServerRequestHandler_resolveEventNameRecordChanges_client_queryId___block_invoke_2;
    v21[3] = &unk_278977680;
    v22 = v9;
    v23 = buf;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __76__PPEventServerRequestHandler_resolveEventNameRecordChanges_client_queryId___block_invoke_3;
    v18[3] = &unk_2789776A8;
    v16 = a1[7];
    v19 = a1[6];
    v20 = v16;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __76__PPEventServerRequestHandler_resolveEventNameRecordChanges_client_queryId___block_invoke_5;
    v17[3] = &unk_2789776D0;
    v17[4] = v19;
    v17[5] = v16;
    [v13 sendBatchedResultForQueryWithName:v14 queryId:v15 batchGenerator:v21 sendError:v18 sendBatch:v17];

    _Block_object_dispose(buf, 8);
  }
}

uint64_t __76__PPEventServerRequestHandler_resolveEventNameRecordChanges_client_queryId___block_invoke_2(uint64_t a1, BOOL *a2)
{
  v4 = [*(a1 + 32) count];
  v5 = *(a1 + 32);
  v6 = *(*(*(a1 + 40) + 8) + 24);
  v7 = v4 - v6;
  if ((v4 - v6) >= 0x1F4)
  {
    v8 = 500;
  }

  else
  {
    v8 = v4 - v6;
  }

  result = [*(a1 + 32) subarrayWithRange:?];
  *a2 = v7 < 0x1F5;
  *(*(*(a1 + 40) + 8) + 24) += v8;
  return result;
}

- (void)eventNameRecordsForClient:(id)a3 queryId:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = v6;
    v17 = 2048;
    v18 = a4;
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPEventServer: eventNameRecordsForClient: %@ queryId: %llu", buf, 0x16u);
  }

  queryManager = self->_queryManager;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__PPEventServerRequestHandler_eventNameRecordsForClient_queryId___block_invoke;
  v11[3] = &unk_278978A80;
  v12 = v6;
  v13 = self;
  v14 = a4;
  v9 = v6;
  [(PPXPCServerPipelinedBatchQueryManager *)queryManager runConcurrentlyWithRequestThrottle:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __65__PPEventServerRequestHandler_eventNameRecordsForClient_queryId___block_invoke(void *a1)
{
  v2 = pp_events_signpost_handle();
  v3 = os_signpost_id_generate(v2);

  v4 = pp_events_signpost_handle();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "PPEventServer.eventNameRecordsForClient", "", buf, 2u);
  }

  v6 = +[PPLocalEventStore defaultStore];
  v7 = a1[4];
  v27 = 0;
  v8 = [v6 eventNameRecordsForClient:v7 error:&v27];
  v9 = v27;

  v10 = pp_events_signpost_handle();
  v11 = v10;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_END, v3, "PPEventServer.eventNameRecordsForClient", "", buf, 2u);
  }

  if (v9)
  {
    [*(a1[5] + 8) eventNameRecordBatch:0 isLast:1 error:v9 queryId:a1[6] completion:&__block_literal_global_19939];
  }

  else
  {
    *buf = 0;
    v24 = buf;
    v25 = 0x2020000000;
    v26 = 0;
    v12 = *(a1[5] + 16);
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-eventNameRecordsForClient", a1[4]];
    v14 = a1[6];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __65__PPEventServerRequestHandler_eventNameRecordsForClient_queryId___block_invoke_2;
    v20[3] = &unk_278977680;
    v21 = v8;
    v22 = buf;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __65__PPEventServerRequestHandler_eventNameRecordsForClient_queryId___block_invoke_3;
    v17[3] = &unk_2789776A8;
    v15 = a1[6];
    v18 = a1[5];
    v19 = v15;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __65__PPEventServerRequestHandler_eventNameRecordsForClient_queryId___block_invoke_5;
    v16[3] = &unk_2789776D0;
    v16[4] = v18;
    v16[5] = v15;
    [v12 sendBatchedResultForQueryWithName:v13 queryId:v14 batchGenerator:v20 sendError:v17 sendBatch:v16];

    _Block_object_dispose(buf, 8);
  }
}

uint64_t __65__PPEventServerRequestHandler_eventNameRecordsForClient_queryId___block_invoke_2(uint64_t a1, BOOL *a2)
{
  v4 = [*(a1 + 32) count];
  v5 = *(a1 + 32);
  v6 = *(*(*(a1 + 40) + 8) + 24);
  v7 = v4 - v6;
  if ((v4 - v6) >= 0x1F4)
  {
    v8 = 500;
  }

  else
  {
    v8 = v4 - v6;
  }

  result = [*(a1 + 32) subarrayWithRange:?];
  *a2 = v7 < 0x1F5;
  *(*(*(a1 + 40) + 8) + 24) += v8;
  return result;
}

- (PPEventServerRequestHandler)init
{
  v6.receiver = self;
  v6.super_class = PPEventServerRequestHandler;
  v2 = [(PPEventServerRequestHandler *)&v6 init];
  if (v2)
  {
    v3 = [[PPXPCServerPipelinedBatchQueryManager alloc] initWithPipelineDepth:2 pipelinedCallTimeoutNsec:10000000000 maxConcurrentRequestsPerConnection:4];
    queryManager = v2->_queryManager;
    v2->_queryManager = v3;
  }

  return v2;
}

@end