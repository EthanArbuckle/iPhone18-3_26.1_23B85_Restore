@interface PPNamedEntityReadOnlyServerRequestHandler
- (PPNamedEntityReadOnlyServerRequestHandler)init;
- (void)mapItemForPlaceName:(id)a3 completion:(id)a4;
- (void)namedEntityRecordsWithQuery:(id)a3 queryId:(unint64_t)a4;
- (void)rankedNamedEntitiesWithQuery:(id)a3 queryId:(unint64_t)a4;
- (void)registerFeedback:(id)a3 completion:(id)a4;
@end

@implementation PPNamedEntityReadOnlyServerRequestHandler

- (void)registerFeedback:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPNamedEntityReadOnlyServer: registerFeedback", buf, 2u);
  }

  v8 = +[PPLocalNamedEntityStore defaultStore];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__PPNamedEntityReadOnlyServerRequestHandler_registerFeedback_completion___block_invoke;
  v10[3] = &unk_2789776F8;
  v11 = v5;
  v9 = v5;
  [v8 registerFeedback:v6 completion:v10];
}

uint64_t __73__PPNamedEntityReadOnlyServerRequestHandler_registerFeedback_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)mapItemForPlaceName:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPNamedEntityReadOnlyServer: mapItemForPlaceName", buf, 2u);
  }

  v8 = pp_entities_signpost_handle();
  v9 = os_signpost_id_generate(v8);

  v10 = pp_entities_signpost_handle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v19 = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "PPNamedEntityReadOnlyServer.mapItemForPlaceName", "", v19, 2u);
  }

  v12 = +[PPLocalNamedEntityStore defaultStore];
  v18 = 0;
  v13 = [v12 mapItemForPlaceName:v6 error:&v18];

  v14 = v18;
  v15 = pp_entities_signpost_handle();
  v16 = v15;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *v17 = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v16, OS_SIGNPOST_INTERVAL_END, v9, "PPNamedEntityReadOnlyServer.mapItemForPlaceName", "", v17, 2u);
  }

  v5[2](v5, v13, v14);
}

- (void)namedEntityRecordsWithQuery:(id)a3 queryId:(unint64_t)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    clientProcessName = self->_clientProcessName;
    *buf = 134218242;
    v20 = a4;
    v21 = 2112;
    v22 = clientProcessName;
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPNamedEntityReadOnlyServer: namedEntityRecordsWithQuery queryId:%llu process:%@", buf, 0x16u);
  }

  queryManager = self->_queryManager;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __81__PPNamedEntityReadOnlyServerRequestHandler_namedEntityRecordsWithQuery_queryId___block_invoke;
  v15[3] = &unk_278978A80;
  v10 = v6;
  v16 = v10;
  v17 = self;
  v18 = a4;
  [(PPXPCServerPipelinedBatchQueryManager *)queryManager runConcurrentlyWithRequestThrottle:v15];
  v11 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = self->_clientProcessName;
    v13 = [v10 customizedDescription];
    *buf = 134218498;
    v20 = a4;
    v21 = 2112;
    v22 = v12;
    v23 = 2112;
    v24 = v13;
    _os_log_impl(&dword_23224A000, v11, OS_LOG_TYPE_DEFAULT, "PPNamedEntityReadOnlyServer: namedEntityRecordsWithQuery queryId:%llu process:%@ query:%@", buf, 0x20u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __81__PPNamedEntityReadOnlyServerRequestHandler_namedEntityRecordsWithQuery_queryId___block_invoke(void *a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = pp_entities_signpost_handle();
  v3 = os_signpost_id_generate(v2);

  v4 = pp_entities_signpost_handle();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "PPNamedEntityReadOnlyServer.namedEntityRecordsWithQuery", "", &buf, 2u);
  }

  v6 = +[PPLocalNamedEntityStore defaultStore];
  v7 = a1[4];
  v27 = 0;
  v8 = [v6 namedEntityRecordsWithQuery:v7 error:&v27];
  v9 = v27;

  v10 = pp_entities_signpost_handle();
  v11 = v10;
  if (v3 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v10))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_END, v3, "PPNamedEntityReadOnlyServer.namedEntityRecordsWithQuery", "", &buf, 2u);
  }

  v12 = pp_xpc_server_log_handle();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v13)
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v9;
      _os_log_impl(&dword_23224A000, v12, OS_LOG_TYPE_DEFAULT, "PPNamedEntityReadOnlyServer: namedEntityRecordsWithQuery returned an error: %@", &buf, 0xCu);
    }

    [*(a1[5] + 8) namedEntityRecordBatch:0 isLast:1 error:v9 queryId:a1[6] completion:&__block_literal_global_149_21195];
  }

  else
  {
    if (v13)
    {
      v14 = [v8 count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v14;
      _os_log_impl(&dword_23224A000, v12, OS_LOG_TYPE_DEFAULT, "PPNamedEntityReadOnlyServer: namedEntityRecordsWithQuery returned %tu results", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v29 = 0x2020000000;
    v30 = 0;
    v15 = *(a1[5] + 16);
    v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-namedEntityRecordsWithQuery", *(a1[5] + 24)];
    v17 = a1[6];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __81__PPNamedEntityReadOnlyServerRequestHandler_namedEntityRecordsWithQuery_queryId___block_invoke_153;
    v24[3] = &unk_278977680;
    v25 = v8;
    p_buf = &buf;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __81__PPNamedEntityReadOnlyServerRequestHandler_namedEntityRecordsWithQuery_queryId___block_invoke_2;
    v21[3] = &unk_2789776A8;
    v18 = a1[6];
    v22 = a1[5];
    v23 = v18;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __81__PPNamedEntityReadOnlyServerRequestHandler_namedEntityRecordsWithQuery_queryId___block_invoke_4;
    v20[3] = &unk_2789776D0;
    v20[4] = v22;
    v20[5] = v18;
    [v15 sendBatchedResultForQueryWithName:v16 queryId:v17 batchGenerator:v24 sendError:v21 sendBatch:v20];

    _Block_object_dispose(&buf, 8);
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __81__PPNamedEntityReadOnlyServerRequestHandler_namedEntityRecordsWithQuery_queryId___block_invoke_153(uint64_t a1, BOOL *a2)
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

- (void)rankedNamedEntitiesWithQuery:(id)a3 queryId:(unint64_t)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    clientProcessName = self->_clientProcessName;
    *buf = 134218242;
    v20 = a4;
    v21 = 2112;
    v22 = clientProcessName;
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPNamedEntityReadOnlyServer: rankedNamedEntitiesWithQuery queryId:%llu process:%@", buf, 0x16u);
  }

  queryManager = self->_queryManager;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __82__PPNamedEntityReadOnlyServerRequestHandler_rankedNamedEntitiesWithQuery_queryId___block_invoke;
  v15[3] = &unk_278978A80;
  v10 = v6;
  v16 = v10;
  v17 = self;
  v18 = a4;
  [(PPXPCServerPipelinedBatchQueryManager *)queryManager runConcurrentlyWithRequestThrottle:v15];
  v11 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = self->_clientProcessName;
    v13 = [v10 customizedDescription];
    *buf = 134218498;
    v20 = a4;
    v21 = 2112;
    v22 = v12;
    v23 = 2112;
    v24 = v13;
    _os_log_impl(&dword_23224A000, v11, OS_LOG_TYPE_DEFAULT, "PPNamedEntityReadOnlyServer: rankedNamedEntitiesWithQuery queryId:%llu process:%@ query:%@", buf, 0x20u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __82__PPNamedEntityReadOnlyServerRequestHandler_rankedNamedEntitiesWithQuery_queryId___block_invoke(void *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = pp_entities_signpost_handle();
  v3 = os_signpost_id_generate(v2);

  v4 = pp_entities_signpost_handle();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "PPNamedEntityReadOnlyServer.rankedNamedEntitiesWithQuery", "", &buf, 2u);
  }

  v6 = +[PPLocalNamedEntityStore defaultStore];
  v26 = 0;
  v7 = [v6 rankedNamedEntitiesWithQuery:a1[4] error:&v26 clientProcessName:*(a1[5] + 24)];
  v8 = v26;

  v9 = pp_entities_signpost_handle();
  v10 = v9;
  if (v3 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v9))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v10, OS_SIGNPOST_INTERVAL_END, v3, "PPNamedEntityReadOnlyServer.rankedNamedEntitiesWithQuery", "", &buf, 2u);
  }

  v11 = pp_xpc_server_log_handle();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v12)
    {
      v13 = [v7 count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v13;
      _os_log_impl(&dword_23224A000, v11, OS_LOG_TYPE_DEFAULT, "PPNamedEntityReadOnlyServer: rankedNamedEntitiesWithQuery returned %tu results", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v28 = 0x2020000000;
    v29 = 0;
    v14 = *(a1[5] + 16);
    v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-rankedNamedEntitiesWithQuery", *(a1[5] + 24)];
    v16 = a1[6];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __82__PPNamedEntityReadOnlyServerRequestHandler_rankedNamedEntitiesWithQuery_queryId___block_invoke_141;
    v23[3] = &unk_278977680;
    v24 = v7;
    p_buf = &buf;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __82__PPNamedEntityReadOnlyServerRequestHandler_rankedNamedEntitiesWithQuery_queryId___block_invoke_2;
    v20[3] = &unk_2789776A8;
    v17 = a1[6];
    v21 = a1[5];
    v22 = v17;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __82__PPNamedEntityReadOnlyServerRequestHandler_rankedNamedEntitiesWithQuery_queryId___block_invoke_4;
    v19[3] = &unk_2789776D0;
    v19[4] = v21;
    v19[5] = v17;
    [v14 sendBatchedResultForQueryWithName:v15 queryId:v16 batchGenerator:v23 sendError:v20 sendBatch:v19];

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (v12)
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v8;
      _os_log_impl(&dword_23224A000, v11, OS_LOG_TYPE_DEFAULT, "PPNamedEntityReadOnlyServer: rankedNamedEntitiesWithQuery returned an error: %@", &buf, 0xCu);
    }

    [*(a1[5] + 8) namedEntityBatch:0 isLast:1 error:v8 queryId:a1[6] completion:&__block_literal_global_21209];
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __82__PPNamedEntityReadOnlyServerRequestHandler_rankedNamedEntitiesWithQuery_queryId___block_invoke_141(uint64_t a1, BOOL *a2)
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

- (PPNamedEntityReadOnlyServerRequestHandler)init
{
  v6.receiver = self;
  v6.super_class = PPNamedEntityReadOnlyServerRequestHandler;
  v2 = [(PPNamedEntityReadOnlyServerRequestHandler *)&v6 init];
  if (v2)
  {
    v3 = [[PPXPCServerPipelinedBatchQueryManager alloc] initWithPipelineDepth:2 pipelinedCallTimeoutNsec:10000000000 maxConcurrentRequestsPerConnection:4];
    queryManager = v2->_queryManager;
    v2->_queryManager = v3;
  }

  return v2;
}

@end