@interface PPLocationReadOnlyServerRequestHandler
- (PPLocationReadOnlyServerRequestHandler)init;
- (void)locationRecordsWithQuery:(id)a3 queryId:(unint64_t)a4;
- (void)rankedLocationsWithQuery:(id)a3 queryId:(unint64_t)a4;
- (void)registerFeedback:(id)a3 completion:(id)a4;
@end

@implementation PPLocationReadOnlyServerRequestHandler

- (void)registerFeedback:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPLocationReadOnlyServer: registerFeedback", v9, 2u);
  }

  v8 = +[PPLocalLocationStore defaultStore];
  [v8 registerFeedback:v6 completion:v5];
}

- (void)locationRecordsWithQuery:(id)a3 queryId:(unint64_t)a4
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
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPLocationReadOnlyServer: locationRecordsWithQuery queryId:%llu process:%@", buf, 0x16u);
  }

  queryManager = self->_queryManager;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__PPLocationReadOnlyServerRequestHandler_locationRecordsWithQuery_queryId___block_invoke;
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
    _os_log_impl(&dword_23224A000, v11, OS_LOG_TYPE_DEFAULT, "PPLocationReadOnlyServer: locationRecordsWithQuery queryId:%llu process:%@ query:%@", buf, 0x20u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __75__PPLocationReadOnlyServerRequestHandler_locationRecordsWithQuery_queryId___block_invoke(void *a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = pp_locations_signpost_handle();
  v3 = os_signpost_id_generate(v2);

  v4 = pp_locations_signpost_handle();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "PPLocationReadOnlyServer.locationRecordsWithQuery", "", &buf, 2u);
  }

  v6 = +[PPLocalLocationStore defaultStore];
  v7 = a1[4];
  v27 = 0;
  v8 = [v6 locationRecordsWithQuery:v7 error:&v27];
  v9 = v27;

  v10 = pp_locations_signpost_handle();
  v11 = v10;
  if (v3 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v10))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_END, v3, "PPLocationReadOnlyServer.locationRecordsWithQuery", "", &buf, 2u);
  }

  v12 = pp_xpc_server_log_handle();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v13)
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v9;
      _os_log_impl(&dword_23224A000, v12, OS_LOG_TYPE_DEFAULT, "PPLocationReadOnlyServer: locationRecordsWithQuery returned an error: %@", &buf, 0xCu);
    }

    [*(a1[5] + 8) locationRecordBatch:0 isLast:1 error:v9 queryId:a1[6] completion:&__block_literal_global_147_15228];
  }

  else
  {
    if (v13)
    {
      v14 = [v8 count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v14;
      _os_log_impl(&dword_23224A000, v12, OS_LOG_TYPE_DEFAULT, "PPLocationReadOnlyServer: locationRecordsWithQuery returned %tu results", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v29 = 0x2020000000;
    v30 = 0;
    v15 = *(a1[5] + 16);
    v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-locationRecordsWithQuery", *(a1[5] + 24)];
    v17 = a1[6];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __75__PPLocationReadOnlyServerRequestHandler_locationRecordsWithQuery_queryId___block_invoke_151;
    v24[3] = &unk_278977680;
    v25 = v8;
    p_buf = &buf;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __75__PPLocationReadOnlyServerRequestHandler_locationRecordsWithQuery_queryId___block_invoke_2;
    v21[3] = &unk_2789776A8;
    v18 = a1[6];
    v22 = a1[5];
    v23 = v18;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __75__PPLocationReadOnlyServerRequestHandler_locationRecordsWithQuery_queryId___block_invoke_4;
    v20[3] = &unk_2789776D0;
    v20[4] = v22;
    v20[5] = v18;
    [v15 sendBatchedResultForQueryWithName:v16 queryId:v17 batchGenerator:v24 sendError:v21 sendBatch:v20];

    _Block_object_dispose(&buf, 8);
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __75__PPLocationReadOnlyServerRequestHandler_locationRecordsWithQuery_queryId___block_invoke_151(uint64_t a1, BOOL *a2)
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

- (void)rankedLocationsWithQuery:(id)a3 queryId:(unint64_t)a4
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
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPLocationReadOnlyServer: rankedLocationsWithQuery queryId:%llu process:%@", buf, 0x16u);
  }

  queryManager = self->_queryManager;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__PPLocationReadOnlyServerRequestHandler_rankedLocationsWithQuery_queryId___block_invoke;
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
    _os_log_impl(&dword_23224A000, v11, OS_LOG_TYPE_DEFAULT, "PPLocationReadOnlyServer: rankedLocationsWithQuery queryId:%llu process:%@ query:%@", buf, 0x20u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __75__PPLocationReadOnlyServerRequestHandler_rankedLocationsWithQuery_queryId___block_invoke(void *a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = pp_locations_signpost_handle();
  v3 = os_signpost_id_generate(v2);

  v4 = pp_locations_signpost_handle();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "PPLocationReadOnlyServer.rankedLocationsWithQuery", "", &buf, 2u);
  }

  v6 = +[PPLocalLocationStore defaultStore];
  v7 = a1[4];
  v8 = *(a1[5] + 24);
  v28 = 0;
  v9 = [v6 rankedLocationsWithQuery:v7 clientProcessName:v8 error:&v28];
  v10 = v28;

  v11 = pp_locations_signpost_handle();
  v12 = v11;
  if (v3 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v11))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v12, OS_SIGNPOST_INTERVAL_END, v3, "PPLocationReadOnlyServer.rankedLocationsWithQuery", "", &buf, 2u);
  }

  v13 = pp_xpc_server_log_handle();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v14)
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v10;
      _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, "PPLocationReadOnlyServer: rankedLocationsWithQuery returned an error: %@", &buf, 0xCu);
    }

    [*(a1[5] + 8) locationBatch:0 isLast:1 error:v10 queryId:a1[6] completion:&__block_literal_global_15244];
  }

  else
  {
    if (v14)
    {
      v15 = [v9 count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v15;
      _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, "PPLocationReadOnlyServer: rankedLocationsWithQuery returned %tu results", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v30 = 0x2020000000;
    v31 = 0;
    v16 = *(a1[5] + 16);
    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-rankedLocationsWithQuery", *(a1[5] + 24)];
    v18 = a1[6];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __75__PPLocationReadOnlyServerRequestHandler_rankedLocationsWithQuery_queryId___block_invoke_139;
    v25[3] = &unk_278977680;
    v26 = v9;
    p_buf = &buf;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __75__PPLocationReadOnlyServerRequestHandler_rankedLocationsWithQuery_queryId___block_invoke_2;
    v22[3] = &unk_2789776A8;
    v19 = a1[6];
    v23 = a1[5];
    v24 = v19;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __75__PPLocationReadOnlyServerRequestHandler_rankedLocationsWithQuery_queryId___block_invoke_4;
    v21[3] = &unk_2789776D0;
    v21[4] = v23;
    v21[5] = v19;
    [v16 sendBatchedResultForQueryWithName:v17 queryId:v18 batchGenerator:v25 sendError:v22 sendBatch:v21];

    _Block_object_dispose(&buf, 8);
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __75__PPLocationReadOnlyServerRequestHandler_rankedLocationsWithQuery_queryId___block_invoke_139(uint64_t a1, BOOL *a2)
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

- (PPLocationReadOnlyServerRequestHandler)init
{
  v6.receiver = self;
  v6.super_class = PPLocationReadOnlyServerRequestHandler;
  v2 = [(PPLocationReadOnlyServerRequestHandler *)&v6 init];
  if (v2)
  {
    v3 = [[PPXPCServerPipelinedBatchQueryManager alloc] initWithPipelineDepth:2 pipelinedCallTimeoutNsec:10000000000 maxConcurrentRequestsPerConnection:4];
    queryManager = v2->_queryManager;
    v2->_queryManager = v3;
  }

  return v2;
}

@end