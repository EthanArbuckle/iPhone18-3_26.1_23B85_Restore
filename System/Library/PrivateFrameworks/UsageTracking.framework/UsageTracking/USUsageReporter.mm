@interface USUsageReporter
- (USUsageReporter)init;
- (id)fetchUsageForApplications:(id)a3 webDomains:(id)a4 categories:(id)a5 interval:(id)a6 error:(id *)a7;
- (void)dealloc;
- (void)fetchReportsDuringInterval:(id)a3 partitionInterval:(double)a4 completionHandler:(id)a5;
- (void)fetchReportsDuringInterval:(id)a3 partitionInterval:(double)a4 forceImmediateSync:(BOOL)a5 completionHandler:(id)a6;
@end

@implementation USUsageReporter

- (USUsageReporter)init
{
  v6.receiver = self;
  v6.super_class = USUsageReporter;
  v2 = [(USUsageReporter *)&v6 init];
  v3 = +[USTrackingAgentPrivateConnection newConnection];
  xpcConnection = v2->_xpcConnection;
  v2->_xpcConnection = v3;

  [(NSXPCConnection *)v2->_xpcConnection resume];
  return v2;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v3.receiver = self;
  v3.super_class = USUsageReporter;
  [(USUsageReporter *)&v3 dealloc];
}

- (void)fetchReportsDuringInterval:(id)a3 partitionInterval:(double)a4 forceImmediateSync:(BOOL)a5 completionHandler:(id)a6
{
  v7 = a5;
  v11 = a3;
  v10 = a6;
  if (v7)
  {
    [objc_opt_class() synchronizeUsageWithCompletionHandler:&__block_literal_global_2];
  }

  [(USUsageReporter *)self fetchReportsDuringInterval:v11 partitionInterval:v10 completionHandler:a4];
}

void __101__USUsageReporter_fetchReportsDuringInterval_partitionInterval_forceImmediateSync_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __101__USUsageReporter_fetchReportsDuringInterval_partitionInterval_forceImmediateSync_completionHandler___block_invoke_cold_1(v2);
  }
}

- (void)fetchReportsDuringInterval:(id)a3 partitionInterval:(double)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(USUsageReporter *)self xpcConnection];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__USUsageReporter_fetchReportsDuringInterval_partitionInterval_completionHandler___block_invoke;
  v13[3] = &unk_279E0A4D0;
  v17 = a4;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v11 = v9;
  v12 = v8;
  [USXPCRemoteObjectProxy proxyFromConnection:v10 withRetryCount:1 proxyHandler:v13];
}

void __82__USUsageReporter_fetchReportsDuringInterval_partitionInterval_completionHandler___block_invoke(double *a1, void *a2)
{
  if (a2)
  {
    v4 = a1[7];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __82__USUsageReporter_fetchReportsDuringInterval_partitionInterval_completionHandler___block_invoke_2;
    v8[3] = &unk_279E0A4A8;
    v5 = *(a1 + 4);
    v6 = *(a1 + 6);
    *&v8[4] = a1[5];
    v9 = v6;
    [a2 fetchReportsDuringInterval:v5 partitionInterval:v8 replyHandler:v4];
  }

  else
  {
    v7 = *(*(a1 + 6) + 16);

    v7();
  }
}

- (id)fetchUsageForApplications:(id)a3 webDomains:(id)a4 categories:(id)a5 interval:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__2;
  v41 = __Block_byref_object_dispose__2;
  v42 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__2;
  v35 = __Block_byref_object_dispose__2;
  v36 = 0;
  v16 = [(USUsageReporter *)self xpcConnection];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __82__USUsageReporter_fetchUsageForApplications_webDomains_categories_interval_error___block_invoke;
  v24[3] = &unk_279E0A520;
  v17 = v12;
  v25 = v17;
  v18 = v13;
  v26 = v18;
  v19 = v14;
  v27 = v19;
  v20 = v15;
  v28 = v20;
  v29 = &v37;
  v30 = &v31;
  [USXPCRemoteObjectProxy synchronousProxyFromConnection:v16 withRetryCount:1 proxyHandler:v24];

  if (a7)
  {
    v21 = v32[5];
    if (v21)
    {
      *a7 = v21;
    }
  }

  v22 = v38[5];

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v37, 8);

  return v22;
}

void __82__USUsageReporter_fetchUsageForApplications_webDomains_categories_interval_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __82__USUsageReporter_fetchUsageForApplications_webDomains_categories_interval_error___block_invoke_2;
    v11[3] = &unk_279E0A4F8;
    v12 = *(a1 + 64);
    [a2 fetchUsageForApplications:v7 webDomains:v8 categories:v9 interval:v10 replyHandler:v11];
  }

  else
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a3);
  }
}

void __82__USUsageReporter_fetchUsageForApplications_webDomains_categories_interval_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v11)
  {
    v7 = v11;
  }

  else
  {
    v6 = 40;
    v7 = v5;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

void __101__USUsageReporter_fetchReportsDuringInterval_partitionInterval_forceImmediateSync_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_2707F8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error synchronizing with high urgency: %{public}@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end