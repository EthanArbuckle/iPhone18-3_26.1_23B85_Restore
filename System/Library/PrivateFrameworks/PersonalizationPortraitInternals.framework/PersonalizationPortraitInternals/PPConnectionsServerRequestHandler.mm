@interface PPConnectionsServerRequestHandler
- (PPConnectionsServerRequestHandler)init;
- (void)recentLocationDonationsSinceDate:(id)date client:(id)client queryId:(unint64_t)id;
- (void)recentLocationsForConsumer:(unint64_t)consumer criteria:(id)criteria limit:(unint64_t)limit explanationSet:(id)set client:(id)client queryId:(unint64_t)id;
- (void)registerFeedback:(id)feedback completion:(id)completion;
@end

@implementation PPConnectionsServerRequestHandler

- (void)registerFeedback:(id)feedback completion:(id)completion
{
  completionCopy = completion;
  feedbackCopy = feedback;
  v7 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPConnectionsServer: registerFeedback", buf, 2u);
  }

  v8 = +[PPLocalConnectionsStore defaultStore];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__PPConnectionsServerRequestHandler_registerFeedback_completion___block_invoke;
  v10[3] = &unk_2789776F8;
  v11 = completionCopy;
  v9 = completionCopy;
  [v8 registerFeedback:feedbackCopy completion:v10];
}

uint64_t __65__PPConnectionsServerRequestHandler_registerFeedback_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)recentLocationsForConsumer:(unint64_t)consumer criteria:(id)criteria limit:(unint64_t)limit explanationSet:(id)set client:(id)client queryId:(unint64_t)id
{
  v37 = *MEMORY[0x277D85DE8];
  criteriaCopy = criteria;
  setCopy = set;
  clientCopy = client;
  v17 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    consumerCopy = consumer;
    v33 = 2112;
    v34 = criteriaCopy;
    v35 = 2048;
    limitCopy = limit;
    _os_log_impl(&dword_23224A000, v17, OS_LOG_TYPE_DEFAULT, "PPConnectionsServer: recentLocationsForConsumer: %lu criteria: %@ limit: %lu", buf, 0x20u);
  }

  queryManager = self->_queryManager;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __109__PPConnectionsServerRequestHandler_recentLocationsForConsumer_criteria_limit_explanationSet_client_queryId___block_invoke;
  v23[3] = &unk_278975C28;
  consumerCopy2 = consumer;
  limitCopy2 = limit;
  v24 = criteriaCopy;
  v25 = setCopy;
  idCopy = id;
  selfCopy = self;
  v27 = clientCopy;
  v19 = clientCopy;
  v20 = setCopy;
  v21 = criteriaCopy;
  [(PPXPCServerPipelinedBatchQueryManager *)queryManager runConcurrentlyWithRequestThrottle:v23];

  v22 = *MEMORY[0x277D85DE8];
}

void __109__PPConnectionsServerRequestHandler_recentLocationsForConsumer_criteria_limit_explanationSet_client_queryId___block_invoke(void *a1)
{
  v2 = pp_connections_signpost_handle();
  v3 = os_signpost_id_generate(v2);

  v4 = pp_connections_signpost_handle();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "PPConnectionsServer.recentLocationsForConsumer", "", buf, 2u);
  }

  v6 = +[PPLocalConnectionsStore defaultStore];
  v7 = a1[8];
  v8 = a1[9];
  v9 = a1[4];
  v10 = a1[5];
  v30 = 0;
  v11 = [v6 recentLocationsForConsumer:v7 criteria:v9 limit:v8 explanationSet:v10 timeout:3000000000 error:&v30];
  v12 = v30;

  v13 = pp_connections_signpost_handle();
  v14 = v13;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v14, OS_SIGNPOST_INTERVAL_END, v3, "PPConnectionsServer.recentLocationsForConsumer", "", buf, 2u);
  }

  if (v11)
  {
    *buf = 0;
    v27 = buf;
    v28 = 0x2020000000;
    v29 = 0;
    v15 = *(a1[6] + 16);
    v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-recentLocationsForConsumer", a1[7]];
    v17 = a1[10];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __109__PPConnectionsServerRequestHandler_recentLocationsForConsumer_criteria_limit_explanationSet_client_queryId___block_invoke_2;
    v23[3] = &unk_278977680;
    v24 = v11;
    v25 = buf;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __109__PPConnectionsServerRequestHandler_recentLocationsForConsumer_criteria_limit_explanationSet_client_queryId___block_invoke_3;
    v20[3] = &unk_2789776A8;
    v18 = a1[10];
    v21 = a1[6];
    v22 = v18;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __109__PPConnectionsServerRequestHandler_recentLocationsForConsumer_criteria_limit_explanationSet_client_queryId___block_invoke_5;
    v19[3] = &unk_2789776D0;
    v19[4] = v21;
    v19[5] = v18;
    [v15 sendBatchedResultForQueryWithName:v16 queryId:v17 batchGenerator:v23 sendError:v20 sendBatch:v19];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    [*(a1[6] + 8) recentLocationsBatch:0 isLast:1 error:v12 queryId:a1[10] completion:&__block_literal_global_79];
  }
}

uint64_t __109__PPConnectionsServerRequestHandler_recentLocationsForConsumer_criteria_limit_explanationSet_client_queryId___block_invoke_2(uint64_t a1, BOOL *a2)
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

- (void)recentLocationDonationsSinceDate:(id)date client:(id)client queryId:(unint64_t)id
{
  v26 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  clientCopy = client;
  v10 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v21 = dateCopy;
    v22 = 2112;
    v23 = clientCopy;
    v24 = 2048;
    idCopy = id;
    _os_log_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEFAULT, "PPConnectionsServer: recentLocationDonationsSinceDate: %@ client: %@ queryId: %llu", buf, 0x20u);
  }

  queryManager = self->_queryManager;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __85__PPConnectionsServerRequestHandler_recentLocationDonationsSinceDate_client_queryId___block_invoke;
  v15[3] = &unk_278978628;
  v16 = dateCopy;
  selfCopy = self;
  v18 = clientCopy;
  idCopy2 = id;
  v12 = clientCopy;
  v13 = dateCopy;
  [(PPXPCServerPipelinedBatchQueryManager *)queryManager runConcurrentlyWithRequestThrottle:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __85__PPConnectionsServerRequestHandler_recentLocationDonationsSinceDate_client_queryId___block_invoke(void *a1)
{
  v2 = pp_connections_signpost_handle();
  v3 = os_signpost_id_generate(v2);

  v4 = pp_connections_signpost_handle();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "PPConnectionsServer.recentLocationDonationsSinceDate", "", buf, 2u);
  }

  v6 = +[PPLocalConnectionsStore defaultStore];
  v7 = a1[4];
  v27 = 0;
  v8 = [v6 recentLocationDonationsSinceDate:v7 error:&v27];
  v9 = v27;

  v10 = pp_connections_signpost_handle();
  v11 = v10;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_END, v3, "PPConnectionsServer.recentLocationDonationsSinceDate", "", buf, 2u);
  }

  if (v8)
  {
    *buf = 0;
    v24 = buf;
    v25 = 0x2020000000;
    v26 = 0;
    v12 = *(a1[5] + 16);
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-recentLocationDonationsSinceDate", a1[6]];
    v14 = a1[7];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __85__PPConnectionsServerRequestHandler_recentLocationDonationsSinceDate_client_queryId___block_invoke_2;
    v20[3] = &unk_278977680;
    v21 = v8;
    v22 = buf;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __85__PPConnectionsServerRequestHandler_recentLocationDonationsSinceDate_client_queryId___block_invoke_3;
    v17[3] = &unk_2789776A8;
    v15 = a1[7];
    v18 = a1[5];
    v19 = v15;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __85__PPConnectionsServerRequestHandler_recentLocationDonationsSinceDate_client_queryId___block_invoke_5;
    v16[3] = &unk_2789776D0;
    v16[4] = v18;
    v16[5] = v15;
    [v12 sendBatchedResultForQueryWithName:v13 queryId:v14 batchGenerator:v20 sendError:v17 sendBatch:v16];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    [*(a1[5] + 8) recentLocationsBatch:0 isLast:1 error:v9 queryId:a1[7] completion:&__block_literal_global_16456];
  }
}

uint64_t __85__PPConnectionsServerRequestHandler_recentLocationDonationsSinceDate_client_queryId___block_invoke_2(uint64_t a1, BOOL *a2)
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

- (PPConnectionsServerRequestHandler)init
{
  v6.receiver = self;
  v6.super_class = PPConnectionsServerRequestHandler;
  v2 = [(PPConnectionsServerRequestHandler *)&v6 init];
  if (v2)
  {
    v3 = [[PPXPCServerPipelinedBatchQueryManager alloc] initWithPipelineDepth:2 pipelinedCallTimeoutNsec:10000000000 maxConcurrentRequestsPerConnection:4];
    queryManager = v2->_queryManager;
    v2->_queryManager = v3;
  }

  return v2;
}

@end