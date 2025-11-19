@interface PPTopicReadOnlyServerRequestHandler
+ (id)filterQIDDictionary:(id)a3 withAllowlistOfProcess:(id)a4 allowlist:(id)a5;
+ (id)filterScoredTopicsNotInAllowlist:(id)a3 withAllowlistOfProcess:(id)a4 allowlist:(id)a5;
+ (id)filterTopicRecordsNotInAllowlist:(id)a3 withAllowlistOfProcess:(id)a4 allowlist:(id)a5;
- (PPTopicReadOnlyServerRequestHandler)init;
- (void)cachePath:(id)a3;
- (void)rankedTopicsWithQuery:(id)a3 queryId:(unint64_t)a4;
- (void)registerFeedback:(id)a3 completion:(id)a4;
- (void)registerUniversalSearchSpotlightFeedback:(id)a3 completion:(id)a4;
- (void)scoresForTopicMapping:(id)a3 query:(id)a4 queryId:(unint64_t)a5;
- (void)topicCacheSandboxExtensionToken:(id)a3;
- (void)topicExtractionsFromText:(id)a3 queryId:(unint64_t)a4;
- (void)topicRecordsWithQuery:(id)a3 queryId:(unint64_t)a4;
- (void)unmapMappedTopicIdentifier:(id)a3 mappingIdentifier:(id)a4 completion:(id)a5;
@end

@implementation PPTopicReadOnlyServerRequestHandler

- (void)topicCacheSandboxExtensionToken:(id)a3
{
  v3 = a3;
  v4 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer: topicCacheSandboxExtensionToken", buf, 2u);
  }

  v5 = +[PPLocalTopicStore defaultStore];
  v8 = 0;
  v6 = [v5 topicCacheSandboxExtensionToken:&v8];
  v7 = v8;

  v3[2](v3, v6, v7);
}

- (void)cachePath:(id)a3
{
  v3 = a3;
  v4 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer: cachePath", buf, 2u);
  }

  v5 = +[PPLocalTopicStore defaultStore];
  v8 = 0;
  v6 = [v5 cachePath:&v8];
  v7 = v8;

  v3[2](v3, v6, v7);
}

- (void)registerUniversalSearchSpotlightFeedback:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[PPLocalTopicStore defaultStore];
  [v7 registerUniversalSearchSpotlightFeedback:v6 completion:v5];
}

- (void)registerFeedback:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer: registerFeedback", buf, 2u);
  }

  v8 = +[PPLocalTopicStore defaultStore];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__PPTopicReadOnlyServerRequestHandler_registerFeedback_completion___block_invoke;
  v10[3] = &unk_2789776F8;
  v11 = v5;
  v9 = v5;
  [v8 registerFeedback:v6 completion:v10];
}

uint64_t __67__PPTopicReadOnlyServerRequestHandler_registerFeedback_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)unmapMappedTopicIdentifier:(id)a3 mappingIdentifier:(id)a4 completion:(id)a5
{
  v39[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    clientProcessName = self->_clientProcessName;
    *buf = 138412290;
    v35 = clientProcessName;
    _os_log_impl(&dword_23224A000, v11, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer: unmapMappedTopicIdentifier process:%@", buf, 0xCu);
  }

  v13 = pp_topics_signpost_handle();
  v14 = os_signpost_id_generate(v13);

  v15 = pp_topics_signpost_handle();
  v16 = v15;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PPTopicReadOnlyServer.unmapMappedTopicIdentifier", "", buf, 2u);
  }

  v17 = +[PPLocalTopicStore defaultStore];
  v33 = 0;
  v18 = [v17 unmapMappedTopicIdentifier:v8 mappingIdentifier:v9 error:&v33];
  v19 = v33;

  v20 = pp_topics_signpost_handle();
  v21 = v20;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v21, OS_SIGNPOST_INTERVAL_END, v14, "PPTopicReadOnlyServer.unmapMappedTopicIdentifier", "", buf, 2u);
  }

  if (v18 || !v19)
  {
    if (v18)
    {
      v26 = objc_opt_class();
      v27 = self->_clientProcessName;
      v28 = +[PPTopicAllowlist sharedInstance];
      v25 = [v26 filterQIDDictionary:v18 withAllowlistOfProcess:v27 allowlist:v28];
    }

    else
    {
      v29 = pp_xpc_server_log_handle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v29, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer: received nil unmapped dictionary.", buf, 2u);
      }

      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
      v25 = MEMORY[0x277CBEC10];
    }

    v10[2](v10, v25, 0);
    v30 = pp_xpc_server_log_handle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = self->_clientProcessName;
      *buf = 138412546;
      v35 = v31;
      v36 = 2112;
      v37 = v9;
      _os_log_impl(&dword_23224A000, v30, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer: unmapMappedTopicIdentifier process:%@ mappingIdentifier:%@", buf, 0x16u);
    }
  }

  else
  {
    v22 = objc_alloc(MEMORY[0x277CCA9B8]);
    v38 = @"PPServerSideErrorInfoKey";
    v23 = [v19 description];
    v39[0] = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    v25 = [v22 initWithDomain:@"PPServerSideErrorDomain" code:1 userInfo:v24];

    (v10)[2](v10, 0, v25);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)scoresForTopicMapping:(id)a3 query:(id)a4 queryId:(unint64_t)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    clientProcessName = self->_clientProcessName;
    *buf = 134218242;
    v27 = a5;
    v28 = 2112;
    v29 = clientProcessName;
    _os_log_impl(&dword_23224A000, v11, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer: scoresForTopicMapping queryId:%llu process:%@", buf, 0x16u);
  }

  queryManager = self->_queryManager;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __75__PPTopicReadOnlyServerRequestHandler_scoresForTopicMapping_query_queryId___block_invoke;
  v20[3] = &unk_278975258;
  v14 = v9;
  v21 = v14;
  v15 = v10;
  v22 = v15;
  v23 = self;
  v24 = a5;
  v25 = a2;
  [(PPXPCServerPipelinedBatchQueryManager *)queryManager runConcurrentlyWithRequestThrottle:v20];
  v16 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = self->_clientProcessName;
    v18 = [v15 customizedDescription];
    *buf = 134218754;
    v27 = a5;
    v28 = 2112;
    v29 = v17;
    v30 = 2112;
    v31 = v14;
    v32 = 2112;
    v33 = v18;
    _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer: scoresForTopicMapping queryId:%llu process:%@ mappingId:%@ query:%@", buf, 0x2Au);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __75__PPTopicReadOnlyServerRequestHandler_scoresForTopicMapping_query_queryId___block_invoke(void *a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = pp_topics_signpost_handle();
  v3 = os_signpost_id_generate(v2);

  v4 = pp_topics_signpost_handle();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "PPTopicReadOnlyServer.scoresForTopicMapping", "", &buf, 2u);
  }

  v6 = +[PPLocalTopicStore defaultStore];
  v7 = a1[4];
  v8 = a1[5];
  v35 = 0;
  v9 = [v6 scoresForTopicMapping:v7 query:v8 error:&v35 clientProcessName:*(a1[6] + 24)];
  v10 = v35;

  v11 = pp_topics_signpost_handle();
  v12 = v11;
  if (v3 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v11))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v12, OS_SIGNPOST_INTERVAL_END, v3, "PPTopicReadOnlyServer.scoresForTopicMapping", "", &buf, 2u);
  }

  if (v10)
  {
    v13 = pp_xpc_server_log_handle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v10;
      _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer: scoresForTopicMapping returned an error: %@", &buf, 0xCu);
    }

    [*(a1[6] + 8) scoredMappedTopicBatch:0 isLast:1 error:v10 queryId:a1[7] completion:&__block_literal_global_207];
  }

  else
  {
    v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{2 * objc_msgSend(v9, "count")}];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __75__PPTopicReadOnlyServerRequestHandler_scoresForTopicMapping_query_queryId___block_invoke_2;
    v33[3] = &unk_2789795B0;
    v15 = v14;
    v34 = v15;
    [v9 enumerateKeysAndObjectsUsingBlock:v33];
    v16 = pp_xpc_server_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v9 count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v17;
      _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer: scoresForTopicMapping returned %tu results", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v37 = 0x2020000000;
    v38 = 0;
    v18 = *(a1[6] + 16);
    v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-scoresForTopicMapping", *(a1[6] + 24)];
    v20 = a1[7];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __75__PPTopicReadOnlyServerRequestHandler_scoresForTopicMapping_query_queryId___block_invoke_213;
    v28[3] = &unk_278975230;
    v21 = v15;
    v22 = a1[8];
    p_buf = &buf;
    v32 = v22;
    v23 = a1[6];
    v29 = v21;
    v30 = v23;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __75__PPTopicReadOnlyServerRequestHandler_scoresForTopicMapping_query_queryId___block_invoke_2_221;
    v27[3] = &unk_2789776A8;
    v24 = a1[7];
    v27[4] = v23;
    v27[5] = v24;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __75__PPTopicReadOnlyServerRequestHandler_scoresForTopicMapping_query_queryId___block_invoke_4;
    v26[3] = &unk_2789776D0;
    v26[4] = v23;
    v26[5] = v24;
    [v18 sendBatchedResultForQueryWithName:v19 queryId:v20 batchGenerator:v28 sendError:v27 sendBatch:v26];

    _Block_object_dispose(&buf, 8);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __75__PPTopicReadOnlyServerRequestHandler_scoresForTopicMapping_query_queryId___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 addObject:a2];
  [*(a1 + 32) addObject:v6];
}

uint64_t __75__PPTopicReadOnlyServerRequestHandler_scoresForTopicMapping_query_queryId___block_invoke_213(uint64_t a1, BOOL *a2)
{
  v4 = [*(a1 + 32) count];
  v5 = *(*(*(a1 + 48) + 8) + 24);
  v6 = v4 - v5;
  if ((v4 - v5) >= 0x32)
  {
    v7 = 50;
  }

  else
  {
    v7 = v4 - v5;
  }

  if (v7)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"PPTopicReadOnlyServer.m" lineNumber:327 description:@"Batch size should never be odd"];
  }

  result = [*(a1 + 32) subarrayWithRange:{v5, v7}];
  *a2 = v6 < 0x33;
  *(*(*(a1 + 48) + 8) + 24) += v7;
  return result;
}

- (void)topicExtractionsFromText:(id)a3 queryId:(unint64_t)a4
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
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer: topicExtractionsFromText queryId:%llu process:%@", buf, 0x16u);
  }

  queryManager = self->_queryManager;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72__PPTopicReadOnlyServerRequestHandler_topicExtractionsFromText_queryId___block_invoke;
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
    v13 = [v10 length];
    *buf = 134218498;
    v20 = a4;
    v21 = 2112;
    v22 = v12;
    v23 = 2048;
    v24 = v13;
    _os_log_impl(&dword_23224A000, v11, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer: topicExtractionsFromText queryId:%llu process:%@ text size:%tu", buf, 0x20u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __72__PPTopicReadOnlyServerRequestHandler_topicExtractionsFromText_queryId___block_invoke(void *a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = pp_topics_signpost_handle();
  v3 = os_signpost_id_generate(v2);

  v4 = pp_topics_signpost_handle();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "PPTopicReadOnlyServer.topicExtractionsFromText", "", &buf, 2u);
  }

  v6 = +[PPLocalTopicStore defaultStore];
  v7 = a1[4];
  v8 = *(a1[5] + 24);
  v28 = 0;
  v9 = [v6 topicExtractionsFromText:v7 clientProcessName:v8 error:&v28];
  v10 = v28;

  v11 = pp_topics_signpost_handle();
  v12 = v11;
  if (v3 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v11))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v12, OS_SIGNPOST_INTERVAL_END, v3, "PPTopicReadOnlyServer.topicExtractionsFromText", "", &buf, 2u);
  }

  v13 = pp_xpc_server_log_handle();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v14)
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v10;
      _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer: topicExtractionsFromText returned an error: %@", &buf, 0xCu);
    }

    [*(a1[5] + 8) topicExtractionsFromTextBatch:0 isLast:1 error:v10 queryId:a1[6] completion:&__block_literal_global_198];
  }

  else
  {
    if (v14)
    {
      v15 = [v9 count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v15;
      _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer: topicExtractionsFromText returned %tu results", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v30 = 0x2020000000;
    v31 = 0;
    v16 = *(a1[5] + 16);
    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-topicExtractionsFromText", *(a1[5] + 24)];
    v18 = a1[6];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __72__PPTopicReadOnlyServerRequestHandler_topicExtractionsFromText_queryId___block_invoke_202;
    v25[3] = &unk_278977680;
    v26 = v9;
    p_buf = &buf;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __72__PPTopicReadOnlyServerRequestHandler_topicExtractionsFromText_queryId___block_invoke_2;
    v22[3] = &unk_2789776A8;
    v19 = a1[6];
    v23 = a1[5];
    v24 = v19;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __72__PPTopicReadOnlyServerRequestHandler_topicExtractionsFromText_queryId___block_invoke_4;
    v21[3] = &unk_2789776D0;
    v21[4] = v23;
    v21[5] = v19;
    [v16 sendBatchedResultForQueryWithName:v17 queryId:v18 batchGenerator:v25 sendError:v22 sendBatch:v21];

    _Block_object_dispose(&buf, 8);
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __72__PPTopicReadOnlyServerRequestHandler_topicExtractionsFromText_queryId___block_invoke_202(uint64_t a1, BOOL *a2)
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

- (void)topicRecordsWithQuery:(id)a3 queryId:(unint64_t)a4
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
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer: topicRecordsWithQuery queryId:%llu process:%@", buf, 0x16u);
  }

  queryManager = self->_queryManager;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__PPTopicReadOnlyServerRequestHandler_topicRecordsWithQuery_queryId___block_invoke;
  v15[3] = &unk_278978A80;
  v10 = v6;
  v17 = self;
  v18 = a4;
  v16 = v10;
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
    _os_log_impl(&dword_23224A000, v11, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer: topicRecordsWithQuery queryId:%llu process:%@ query:%@", buf, 0x20u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __69__PPTopicReadOnlyServerRequestHandler_topicRecordsWithQuery_queryId___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = pp_topics_signpost_handle();
  v3 = os_signpost_id_generate(v2);

  v4 = pp_topics_signpost_handle();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "PPTopicReadOnlyServer.topicRecordsWithQuery", "", buf, 2u);
  }

  v6 = [*(a1 + 32) limit];
  v7 = [*(a1 + 32) copy];
  [v7 setLimit:-1];
  v8 = +[PPLocalTopicStore defaultStore];
  v38 = 0;
  v9 = [v8 topicRecordsWithQuery:v7 error:&v38];
  v10 = v38;

  v11 = pp_topics_signpost_handle();
  v12 = v11;
  if (v3 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v12, OS_SIGNPOST_INTERVAL_END, v3, "PPTopicReadOnlyServer.topicRecordsWithQuery", "", buf, 2u);
  }

  if (v9)
  {
    v13 = *(a1 + 40);
    v14 = objc_opt_class();
    v15 = *(*(a1 + 40) + 24);
    v16 = +[PPTopicAllowlist sharedInstance];
    v17 = [v14 filterTopicRecordsNotInAllowlist:v9 withAllowlistOfProcess:v15 allowlist:v16];

    if ([v17 count] > v6)
    {
      v18 = [v17 subarrayWithRange:{0, v6}];

      v17 = v18;
    }

    v19 = pp_xpc_server_log_handle();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v20)
      {
        *buf = 138412290;
        *&buf[4] = v10;
        _os_log_impl(&dword_23224A000, v19, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer: topicRecordsWithQuery returned an error: %@", buf, 0xCu);
      }

      [*(*(a1 + 40) + 8) topicRecordBatch:0 isLast:1 error:v10 queryId:*(a1 + 48) completion:&__block_literal_global_189];
    }

    else
    {
      if (v20)
      {
        v24 = [v17 count];
        *buf = 134217984;
        *&buf[4] = v24;
        _os_log_impl(&dword_23224A000, v19, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer: topicRecordsWithQuery returned %tu results", buf, 0xCu);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v40 = 0;
      v25 = *(*(a1 + 40) + 16);
      v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-topicRecordsWithQuery", *(*(a1 + 40) + 24)];
      v27 = *(a1 + 48);
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __69__PPTopicReadOnlyServerRequestHandler_topicRecordsWithQuery_queryId___block_invoke_193;
      v35[3] = &unk_278977680;
      v28 = v17;
      v36 = v28;
      v37 = buf;
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __69__PPTopicReadOnlyServerRequestHandler_topicRecordsWithQuery_queryId___block_invoke_2;
      v32[3] = &unk_2789776A8;
      v29 = *(a1 + 48);
      v33 = *(a1 + 40);
      v34 = v29;
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __69__PPTopicReadOnlyServerRequestHandler_topicRecordsWithQuery_queryId___block_invoke_4;
      v31[3] = &unk_2789776D0;
      v31[4] = v33;
      v31[5] = v29;
      [v25 sendBatchedResultForQueryWithName:v26 queryId:v27 batchGenerator:v35 sendError:v32 sendBatch:v31];

      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    v21 = pp_xpc_server_log_handle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 48);
      v23 = *(*(a1 + 40) + 24);
      *buf = 134218498;
      *&buf[4] = v22;
      *&buf[12] = 2112;
      *&buf[14] = v23;
      *&buf[22] = 2112;
      v40 = v10;
      _os_log_impl(&dword_23224A000, v21, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer: topicRecordsWithQuery queryId:%llu process:%@ returned nil result with error: %@", buf, 0x20u);
    }

    [*(*(a1 + 40) + 8) topicRecordBatch:0 isLast:1 error:v10 queryId:*(a1 + 48) completion:&__block_literal_global_186];
  }

  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __69__PPTopicReadOnlyServerRequestHandler_topicRecordsWithQuery_queryId___block_invoke_193(uint64_t a1, BOOL *a2)
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

- (void)rankedTopicsWithQuery:(id)a3 queryId:(unint64_t)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    clientProcessName = self->_clientProcessName;
    *buf = 134218242;
    v19 = a4;
    v20 = 2112;
    v21 = clientProcessName;
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer: rankedTopicsWithQuery queryId:%llu process:%@", buf, 0x16u);
  }

  queryManager = self->_queryManager;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__PPTopicReadOnlyServerRequestHandler_rankedTopicsWithQuery_queryId___block_invoke;
  v15[3] = &unk_278978A80;
  v15[4] = self;
  v17 = a4;
  v10 = v6;
  v16 = v10;
  [(PPXPCServerPipelinedBatchQueryManager *)queryManager runConcurrentlyWithRequestThrottle:v15];
  v11 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = self->_clientProcessName;
    v13 = [v10 customizedDescription];
    *buf = 134218498;
    v19 = a4;
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = v13;
    _os_log_impl(&dword_23224A000, v11, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer: rankedTopicsWithQuery queryId:%llu process:%@ query:%@", buf, 0x20u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __69__PPTopicReadOnlyServerRequestHandler_rankedTopicsWithQuery_queryId___block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = pp_topics_signpost_handle();
  v3 = os_signpost_id_generate(v2);

  v4 = pp_topics_signpost_handle();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "PPTopicReadOnlyServer.rankedTopicsWithQuery", "", buf, 2u);
  }

  if (![*(*(a1 + 32) + 24) isEqualToString:@"Apple Store"])
  {
    goto LABEL_38;
  }

  v6 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEFAULT, "checking client blocklist on behalf of Apple Store", buf, 2u);
  }

  v7 = CFPreferencesCopyAppValue(@"AppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
  v8 = [v7 containsObject:@"com.apple.store.Jolly"];

  if (v8)
  {
    v9 = pp_xpc_server_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEFAULT, "refusing connection from Apple Store due to client blocklist", buf, 2u);
    }

    [*(*(a1 + 32) + 8) topicBatch:0 isLast:1 error:0 queryId:*(a1 + 48) completion:&__block_literal_global_13963];
  }

  else
  {
    if (![*(*(a1 + 32) + 24) isEqualToString:@"pptool"])
    {
      goto LABEL_18;
    }

LABEL_38:
    v10 = pp_xpc_server_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEFAULT, "checking client blocklist on behalf of pptool", buf, 2u);
    }

    v11 = CFPreferencesCopyAppValue(@"AppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
    v12 = [v11 containsObject:@"com.apple.proactive.PersonalizationPortrait.pptool"];

    if (v12)
    {
      v13 = pp_xpc_server_log_handle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, "refusing connection from pptool due to client blocklist", buf, 2u);
      }

      [*(*(a1 + 32) + 8) topicBatch:0 isLast:1 error:0 queryId:*(a1 + 48) completion:&__block_literal_global_165];
    }

    else
    {
LABEL_18:
      v14 = [*(a1 + 40) limit];
      v15 = [*(a1 + 40) copy];
      [v15 setLimit:-1];
      v16 = +[PPLocalTopicStore defaultStore];
      v46 = 0;
      v17 = [v16 rankedTopicsWithQuery:v15 error:&v46 clientProcessName:*(*(a1 + 32) + 24)];
      v18 = v46;

      v19 = pp_topics_signpost_handle();
      v20 = v19;
      if (v3 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v19))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_23224A000, v20, OS_SIGNPOST_INTERVAL_END, v3, "PPTopicReadOnlyServer.rankedTopicsWithQuery", "", buf, 2u);
      }

      if (v17)
      {
        v21 = *(a1 + 32);
        v22 = objc_opt_class();
        v23 = *(*(a1 + 32) + 24);
        v24 = +[PPTopicAllowlist sharedInstance];
        v25 = [v22 filterScoredTopicsNotInAllowlist:v17 withAllowlistOfProcess:v23 allowlist:v24];

        if ([v25 count] > v14)
        {
          v26 = [v25 subarrayWithRange:{0, v14}];

          v25 = v26;
        }

        v27 = pp_xpc_server_log_handle();
        v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
        if (v25)
        {
          if (v28)
          {
            v29 = [v25 count];
            *buf = 134217984;
            *&buf[4] = v29;
            _os_log_impl(&dword_23224A000, v27, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer: rankedTopicsWithQuery returned %tu results", buf, 0xCu);
          }

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          v48 = 0;
          v30 = *(*(a1 + 32) + 16);
          v31 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-rankedTopicsWithQuery", *(*(a1 + 32) + 24)];
          v32 = *(a1 + 48);
          v43[0] = MEMORY[0x277D85DD0];
          v43[1] = 3221225472;
          v43[2] = __69__PPTopicReadOnlyServerRequestHandler_rankedTopicsWithQuery_queryId___block_invoke_178;
          v43[3] = &unk_278977680;
          v33 = v25;
          v44 = v33;
          v45 = buf;
          v40[0] = MEMORY[0x277D85DD0];
          v40[1] = 3221225472;
          v40[2] = __69__PPTopicReadOnlyServerRequestHandler_rankedTopicsWithQuery_queryId___block_invoke_2;
          v40[3] = &unk_2789776A8;
          v34 = *(a1 + 48);
          v41 = *(a1 + 32);
          v42 = v34;
          v39[0] = MEMORY[0x277D85DD0];
          v39[1] = 3221225472;
          v39[2] = __69__PPTopicReadOnlyServerRequestHandler_rankedTopicsWithQuery_queryId___block_invoke_4;
          v39[3] = &unk_2789776D0;
          v39[4] = v41;
          v39[5] = v34;
          [v30 sendBatchedResultForQueryWithName:v31 queryId:v32 batchGenerator:v43 sendError:v40 sendBatch:v39];

          _Block_object_dispose(buf, 8);
        }

        else
        {
          if (v28)
          {
            *buf = 138412290;
            *&buf[4] = v18;
            _os_log_impl(&dword_23224A000, v27, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer: rankedTopicsWithQuery returned an error: %@", buf, 0xCu);
          }

          [*(*(a1 + 32) + 8) topicBatch:0 isLast:1 error:v18 queryId:*(a1 + 48) completion:&__block_literal_global_173];
        }
      }

      else
      {
        v35 = pp_xpc_server_log_handle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = *(a1 + 48);
          v37 = *(*(a1 + 32) + 24);
          *buf = 134218498;
          *&buf[4] = v36;
          *&buf[12] = 2112;
          *&buf[14] = v37;
          *&buf[22] = 2112;
          v48 = v18;
          _os_log_impl(&dword_23224A000, v35, OS_LOG_TYPE_DEFAULT, "rankedTopicsWithQuery queryId:%llu process:%@ returned nil result with error: %@", buf, 0x20u);
        }

        [*(*(a1 + 32) + 8) topicBatch:0 isLast:1 error:v18 queryId:*(a1 + 48) completion:&__block_literal_global_169_13971];
      }
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

uint64_t __69__PPTopicReadOnlyServerRequestHandler_rankedTopicsWithQuery_queryId___block_invoke_178(uint64_t a1, BOOL *a2)
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

- (PPTopicReadOnlyServerRequestHandler)init
{
  v6.receiver = self;
  v6.super_class = PPTopicReadOnlyServerRequestHandler;
  v2 = [(PPTopicReadOnlyServerRequestHandler *)&v6 init];
  if (v2)
  {
    v3 = [[PPXPCServerPipelinedBatchQueryManager alloc] initWithPipelineDepth:2 pipelinedCallTimeoutNsec:10000000000 maxConcurrentRequestsPerConnection:4];
    queryManager = v2->_queryManager;
    v2->_queryManager = v3;
  }

  return v2;
}

+ (id)filterQIDDictionary:(id)a3 withAllowlistOfProcess:(id)a4 allowlist:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    if ([v7 count] && !objc_msgSend(v9, "shouldBypassAllowlist:", v8))
    {
      v11 = [v9 filterTopicDictionary:v7 clientProcess:v8];
      v12 = [v11 count];
      v13 = [v7 count];
      v14 = v7;
      if (v12 < v13)
      {
        v15 = [v7 count];
        v16 = [v11 count];
        v17 = pp_topics_log_handle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 134218498;
          v21 = v15 - v16;
          v22 = 2048;
          v23 = [v7 count];
          v24 = 2112;
          v25 = v8;
          _os_log_impl(&dword_23224A000, v17, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer filtered out %tu of %tu qid records from mapping due to allowlist for client process %@", &v20, 0x20u);
        }

        v14 = v11;
      }

      v10 = v14;
    }

    else
    {
      v10 = v7;
    }
  }

  else
  {
    v10 = MEMORY[0x277CBEC10];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)filterTopicRecordsNotInAllowlist:(id)a3 withAllowlistOfProcess:(id)a4 allowlist:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    if ([v7 count] && !objc_msgSend(v9, "shouldBypassAllowlist:", v8))
    {
      v11 = [v9 indicesOfAllowedTopicsInRecordArray:v7 clientProcess:v8];
      v12 = [v11 count];
      if (v12 >= [v7 count])
      {
        v16 = v7;
      }

      else
      {
        v13 = [v7 count];
        v14 = [v11 count];
        v15 = pp_topics_log_handle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 134218498;
          v20 = v13 - v14;
          v21 = 2048;
          v22 = [v7 count];
          v23 = 2112;
          v24 = v8;
          _os_log_impl(&dword_23224A000, v15, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer filtered out %tu of %tu topic records due to allowance policy for client process %@", &v19, 0x20u);
        }

        v16 = [v7 objectsAtIndexes:v11];
      }

      v10 = v16;
    }

    else
    {
      v10 = v7;
    }
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)filterScoredTopicsNotInAllowlist:(id)a3 withAllowlistOfProcess:(id)a4 allowlist:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    if ([v7 count] && !objc_msgSend(v9, "shouldBypassAllowlist:", v8))
    {
      v11 = [v9 indicesOfAllowedTopicsInScoredTopicArray:v7 clientProcess:v8];
      v12 = [v11 count];
      if (v12 >= [v7 count])
      {
        v16 = v7;
      }

      else
      {
        v13 = [v7 count];
        v14 = [v11 count];
        v15 = pp_topics_log_handle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 134218498;
          v20 = v13 - v14;
          v21 = 2048;
          v22 = [v7 count];
          v23 = 2112;
          v24 = v8;
          _os_log_impl(&dword_23224A000, v15, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer filtered out %tu of %tu scored topic due to allowlist for client process %@", &v19, 0x20u);
        }

        v16 = [v7 objectsAtIndexes:v11];
      }

      v10 = v16;
    }

    else
    {
      v10 = v7;
    }
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v10;
}

@end