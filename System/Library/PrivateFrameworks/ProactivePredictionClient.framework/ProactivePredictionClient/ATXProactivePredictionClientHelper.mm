@interface ATXProactivePredictionClientHelper
- (ATXProactivePredictionClientHelper)init;
- (id)_getConnection;
- (id)suggestionMetadataForActions:(id)a3 error:(id *)a4;
- (void)dealloc;
- (void)parameterSuggestionsForBundleID:(id)a3 intentName:(id)a4 toolID:(id)a5 limit:(unint64_t)a6 withCompletion:(id)a7;
- (void)suggestionMetadataForActions:(id)a3 withCompletion:(id)a4;
@end

@implementation ATXProactivePredictionClientHelper

- (ATXProactivePredictionClientHelper)init
{
  v3.receiver = self;
  v3.super_class = ATXProactivePredictionClientHelper;
  return [(ATXProactivePredictionClientHelper *)&v3 init];
}

- (void)dealloc
{
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(ATXProactivePredictionClientHelper *)v3 dealloc];
  }

  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v4.receiver = self;
  v4.super_class = ATXProactivePredictionClientHelper;
  [(ATXProactivePredictionClientHelper *)&v4 dealloc];
}

- (id)_getConnection
{
  xpcConnection = self->_xpcConnection;
  if (!xpcConnection)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.proactive.client.predictions" options:0];
    v5 = self->_xpcConnection;
    self->_xpcConnection = v4;

    v6 = ATXProactivePredictionXPCInterface();
    [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:v6];

    [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:&__block_literal_global];
    [(NSXPCConnection *)self->_xpcConnection resume];
    xpcConnection = self->_xpcConnection;
  }

  return xpcConnection;
}

void __52__ATXProactivePredictionClientHelper__getConnection__block_invoke()
{
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __52__ATXProactivePredictionClientHelper__getConnection__block_invoke_cold_1(v0);
  }
}

- (void)parameterSuggestionsForBundleID:(id)a3 intentName:(id)a4 toolID:(id)a5 limit:(unint64_t)a6 withCompletion:(id)a7
{
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(ATXProactivePredictionClientHelper *)self _getConnection];
  v17 = [v16 remoteObjectProxy];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __109__ATXProactivePredictionClientHelper_parameterSuggestionsForBundleID_intentName_toolID_limit_withCompletion___block_invoke;
  v19[3] = &unk_279AC3278;
  v20 = v12;
  v18 = v12;
  [v17 parameterSuggestionsForBundleID:v15 intentName:v14 toolID:v13 limit:a6 withCompletion:v19];
}

void __109__ATXProactivePredictionClientHelper_parameterSuggestionsForBundleID_intentName_toolID_limit_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = __atxlog_handle_action_prediction();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __109__ATXProactivePredictionClientHelper_parameterSuggestionsForBundleID_intentName_toolID_limit_withCompletion___block_invoke_cold_1(v6, v7);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }
}

- (void)suggestionMetadataForActions:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ATXProactivePredictionClientHelper *)self _getConnection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __82__ATXProactivePredictionClientHelper_suggestionMetadataForActions_withCompletion___block_invoke;
  v14[3] = &unk_279AC32A0;
  v9 = v6;
  v15 = v9;
  v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__ATXProactivePredictionClientHelper_suggestionMetadataForActions_withCompletion___block_invoke_2;
  v12[3] = &unk_279AC3278;
  v13 = v9;
  v11 = v9;
  [v10 suggestionMetadataForActions:v7 withCompletion:v12];
}

- (id)suggestionMetadataForActions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__ATXProactivePredictionClientHelper_suggestionMetadataForActions_error___block_invoke;
  v10[3] = &unk_279AC32C8;
  v10[4] = &v11;
  v10[5] = &v17;
  [(ATXProactivePredictionClientHelper *)self suggestionMetadataForActions:v6 withCompletion:v10];
  if (a4)
  {
    v7 = v12[5];
    if (v7)
    {
      *a4 = v7;
    }
  }

  v8 = v18[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);

  return v8;
}

void __73__ATXProactivePredictionClientHelper_suggestionMetadataForActions_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v8 = __atxlog_handle_action_prediction();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __73__ATXProactivePredictionClientHelper_suggestionMetadataForActions_error___block_invoke_cold_1(v7, v8);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void __109__ATXProactivePredictionClientHelper_parameterSuggestionsForBundleID_intentName_toolID_limit_withCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_260DCE000, a2, OS_LOG_TYPE_ERROR, "Failed to get parameter suggestions: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __73__ATXProactivePredictionClientHelper_suggestionMetadataForActions_error___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_260DCE000, a2, OS_LOG_TYPE_ERROR, "Failed to get action suggestion metadata: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end