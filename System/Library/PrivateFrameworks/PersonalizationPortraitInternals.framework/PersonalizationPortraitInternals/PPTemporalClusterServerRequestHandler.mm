@interface PPTemporalClusterServerRequestHandler
- (PPTemporalClusterServerRequestHandler)init;
- (void)rankedTemporalClustersForStartDate:(id)a3 endDate:(id)a4 queryId:(unint64_t)a5;
@end

@implementation PPTemporalClusterServerRequestHandler

- (void)rankedTemporalClustersForStartDate:(id)a3 endDate:(id)a4 queryId:(unint64_t)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    v24 = 2048;
    v25 = a5;
    _os_log_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEFAULT, "PPTemporalClusterServer: rankedTemporalClustersForStartDate: %@ endDate: %@ queryId: %llu", buf, 0x20u);
  }

  queryManager = self->_queryManager;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __92__PPTemporalClusterServerRequestHandler_rankedTemporalClustersForStartDate_endDate_queryId___block_invoke;
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

void __92__PPTemporalClusterServerRequestHandler_rankedTemporalClustersForStartDate_endDate_queryId___block_invoke(void *a1)
{
  v2 = pp_temporal_clusters_signpost_handle();
  v3 = os_signpost_id_generate(v2);

  v4 = pp_temporal_clusters_signpost_handle();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "PPTemporalClusterServer.rankedTemporalClustersForStartDate", "", buf, 2u);
  }

  v6 = +[PPLocalTemporalClusterStore defaultStore];
  v7 = a1[4];
  v8 = a1[5];
  v27 = 0;
  v9 = [v6 rankedTemporalClusterForStartDate:v7 endDate:v8 error:&v27];
  v10 = v27;

  v11 = pp_temporal_clusters_signpost_handle();
  v12 = v11;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v12, OS_SIGNPOST_INTERVAL_END, v3, "PPTemporalClusterServer.rankedTemporalClustersForStartDate", "", buf, 2u);
  }

  if (v10)
  {
    [*(a1[6] + 8) rankedTemporalClusterBatch:0 isLast:1 error:v10 queryId:a1[7] completion:&__block_literal_global_14185];
  }

  else
  {
    *buf = 0;
    v24 = buf;
    v25 = 0x2020000000;
    v26 = 0;
    v13 = a1[7];
    v14 = *(a1[6] + 16);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __92__PPTemporalClusterServerRequestHandler_rankedTemporalClustersForStartDate_endDate_queryId___block_invoke_2;
    v20[3] = &unk_278977680;
    v21 = v9;
    v22 = buf;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __92__PPTemporalClusterServerRequestHandler_rankedTemporalClustersForStartDate_endDate_queryId___block_invoke_3;
    v17[3] = &unk_2789776A8;
    v15 = a1[7];
    v18 = a1[6];
    v19 = v15;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __92__PPTemporalClusterServerRequestHandler_rankedTemporalClustersForStartDate_endDate_queryId___block_invoke_5;
    v16[3] = &unk_2789776D0;
    v16[4] = v18;
    v16[5] = v15;
    [v14 sendBatchedResultForQueryWithName:@"rankedTemporalClustersForStartDate" queryId:v13 batchGenerator:v20 sendError:v17 sendBatch:v16];

    _Block_object_dispose(buf, 8);
  }
}

uint64_t __92__PPTemporalClusterServerRequestHandler_rankedTemporalClustersForStartDate_endDate_queryId___block_invoke_2(uint64_t a1, BOOL *a2)
{
  v4 = [*(a1 + 32) count];
  v5 = *(a1 + 32);
  v6 = *(*(*(a1 + 40) + 8) + 24);
  v7 = v4 - v6;
  if ((v4 - v6) >= 5)
  {
    v8 = 5;
  }

  else
  {
    v8 = v4 - v6;
  }

  result = [*(a1 + 32) subarrayWithRange:?];
  *a2 = v7 < 6;
  *(*(*(a1 + 40) + 8) + 24) += v8;
  return result;
}

- (PPTemporalClusterServerRequestHandler)init
{
  v6.receiver = self;
  v6.super_class = PPTemporalClusterServerRequestHandler;
  v2 = [(PPTemporalClusterServerRequestHandler *)&v6 init];
  if (v2)
  {
    v3 = [[PPXPCServerPipelinedBatchQueryManager alloc] initWithPipelineDepth:2 pipelinedCallTimeoutNsec:10000000000 maxConcurrentRequestsPerConnection:4];
    queryManager = v2->_queryManager;
    v2->_queryManager = v3;
  }

  return v2;
}

@end