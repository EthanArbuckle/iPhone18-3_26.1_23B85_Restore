@interface SignpostReaderHelper
- (id)createXPCConnection;
- (id)customGetNearestMidnight;
- (id)generateRapidMSSWithStartDate:(id)a3 endDate:(id)a4 atPath:(id)a5;
- (id)generateRapidSignpostSummaryWithStartDate:(id)a3 endDate:(id)a4;
- (id)generateTaskingMSSWithStartDate:(id)a3 endDate:(id)a4 atPath:(id)a5;
- (id)getSignpostSummaryWithAllowlist:(id)a3 withStartDate:(id)a4 withEndDate:(id)a5;
- (id)processSignpostWithConfig:(id)a3 withServiceType:(int)a4;
@end

@implementation SignpostReaderHelper

- (id)getSignpostSummaryWithAllowlist:(id)a3 withStartDate:(id)a4 withEndDate:(id)a5
{
  v5 = MEMORY[0x1E695E0F8];
  if (a3 && a4 && a5)
  {
    v9 = MEMORY[0x1E695DF90];
    v10 = a5;
    v11 = a4;
    v12 = a3;
    v13 = objc_alloc_init(v9);
    [v13 setObject:v12 forKey:@"taskingAllowlist"];

    [v13 setObject:v11 forKey:@"taskingStartDate"];
    [v13 setObject:v10 forKey:@"taskingEndDate"];

    v5 = [(SignpostReaderHelper *)self processSignpostWithConfig:v13 withServiceType:2];
  }

  return v5;
}

- (id)generateRapidSignpostSummaryWithStartDate:(id)a3 endDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v9 setObject:v6 forKey:@"start_date"];
    [v9 setObject:v8 forKey:@"end_date"];
    v10 = [(SignpostReaderHelper *)self processSignpostWithConfig:v9 withServiceType:3];
  }

  else
  {
    v11 = logHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SignpostReaderHelper generateRapidSignpostSummaryWithStartDate:endDate:];
    }

    v10 = 0;
  }

  return v10;
}

- (id)generateRapidMSSWithStartDate:(id)a3 endDate:(id)a4 atPath:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8 && v9 && v10)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v12 setObject:v8 forKey:@"start_date"];
    [v12 setObject:v9 forKey:@"end_date"];
    [v12 setObject:v11 forKey:@"mss_filepath"];
    v13 = [(SignpostReaderHelper *)self processSignpostWithConfig:v12 withServiceType:4];
  }

  else
  {
    v14 = logHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412802;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      v21 = 2112;
      v22 = v11;
      _os_log_error_impl(&dword_1D8611000, v14, OS_LOG_TYPE_ERROR, "Invalid arguments: startDate=%@ endDate=%@ path=%@", &v17, 0x20u);
    }

    v13 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)generateTaskingMSSWithStartDate:(id)a3 endDate:(id)a4 atPath:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8 && v9 && v10)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v12 setObject:v8 forKey:@"start_date"];
    [v12 setObject:v9 forKey:@"end_date"];
    [v12 setObject:v11 forKey:@"mss_filepath"];
    v13 = [(SignpostReaderHelper *)self processSignpostWithConfig:v12 withServiceType:5];
  }

  else
  {
    v14 = logHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412802;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      v21 = 2112;
      v22 = v11;
      _os_log_error_impl(&dword_1D8611000, v14, OS_LOG_TYPE_ERROR, "Invalid arguments: startDate=%@ endDate=%@ path=%@", &v17, 0x20u);
    }

    v13 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)processSignpostWithConfig:(id)a3 withServiceType:(int)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = logHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = a4;
    LOWORD(v33) = 2112;
    *(&v33 + 2) = v6;
    _os_log_impl(&dword_1D8611000, v7, OS_LOG_TYPE_INFO, "processSignpost for service type (%d) with config %@", buf, 0x12u);
  }

  v8 = [MEMORY[0x1E695DF00] date];
  v9 = [(SignpostReaderHelper *)self createXPCConnection];
  *buf = 0;
  *&v33 = buf;
  *(&v33 + 1) = 0x3032000000;
  v34 = __Block_byref_object_copy__8;
  v35 = __Block_byref_object_dispose__8;
  v36 = [MEMORY[0x1E695DF20] dictionary];
  if (a4 > 2)
  {
    switch(a4)
    {
      case 3:
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __66__SignpostReaderHelper_processSignpostWithConfig_withServiceType___block_invoke_37;
        v22[3] = &unk_1E851A018;
        v22[4] = buf;
        [v9 readRawSignpostData:v6 withReply:v22];
        goto LABEL_19;
      case 4:
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __66__SignpostReaderHelper_processSignpostWithConfig_withServiceType___block_invoke_38;
        v21[3] = &unk_1E851A018;
        v21[4] = buf;
        [v9 generateMSSReportForRAPID:v6 withReply:v21];
        goto LABEL_19;
      case 5:
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __66__SignpostReaderHelper_processSignpostWithConfig_withServiceType___block_invoke_39;
        v20[3] = &unk_1E851A018;
        v20[4] = buf;
        [v9 generateMSSReportForTasking:v6 withReply:v20];
        goto LABEL_19;
    }
  }

  else
  {
    switch(a4)
    {
      case 0:
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __66__SignpostReaderHelper_processSignpostWithConfig_withServiceType___block_invoke;
        v25[3] = &unk_1E851A018;
        v25[4] = buf;
        [v9 submitSignpostDataWithConfig:v6 withReply:v25];
        goto LABEL_19;
      case 1:
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __66__SignpostReaderHelper_processSignpostWithConfig_withServiceType___block_invoke_35;
        v24[3] = &unk_1E851A018;
        v24[4] = buf;
        [v9 summarizeSignpostMetrics:v6 withReply:v24];
        goto LABEL_19;
      case 2:
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __66__SignpostReaderHelper_processSignpostWithConfig_withServiceType___block_invoke_36;
        v23[3] = &unk_1E851A018;
        v23[4] = buf;
        [v9 aggregateSignpostData:v6 withReply:v23];
        goto LABEL_19;
    }
  }

  v10 = logHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *v26 = 67109120;
    LODWORD(v27) = a4;
    _os_log_impl(&dword_1D8611000, v10, OS_LOG_TYPE_INFO, "Unknown service type specified: %d", v26, 8u);
  }

LABEL_19:
  [(SignpostReaderHelper *)self closeXPCConnection];
  v11 = logHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = *(v33 + 40);
    *v26 = 138412290;
    v27 = v12;
    _os_log_impl(&dword_1D8611000, v11, OS_LOG_TYPE_INFO, "The successful reply happened: %@", v26, 0xCu);
  }

  v13 = [MEMORY[0x1E695DF00] date];
  [v13 timeIntervalSinceDate:v8];
  v15 = v14;
  v16 = logHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *v26 = 134218498;
    v27 = v15;
    v28 = 2112;
    v29 = v8;
    v30 = 2112;
    v31 = v13;
    _os_log_impl(&dword_1D8611000, v16, OS_LOG_TYPE_INFO, "Time for signpost reading to run: %f, %@, %@", v26, 0x20u);
  }

  v17 = *(v33 + 40);
  _Block_object_dispose(buf, 8);

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

void __66__SignpostReaderHelper_processSignpostWithConfig_withServiceType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = logHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __66__SignpostReaderHelper_processSignpostWithConfig_withServiceType___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __66__SignpostReaderHelper_processSignpostWithConfig_withServiceType___block_invoke_35(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = logHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __66__SignpostReaderHelper_processSignpostWithConfig_withServiceType___block_invoke_35_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __66__SignpostReaderHelper_processSignpostWithConfig_withServiceType___block_invoke_36(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = logHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __66__SignpostReaderHelper_processSignpostWithConfig_withServiceType___block_invoke_36_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __66__SignpostReaderHelper_processSignpostWithConfig_withServiceType___block_invoke_37(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = logHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __66__SignpostReaderHelper_processSignpostWithConfig_withServiceType___block_invoke_37_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __66__SignpostReaderHelper_processSignpostWithConfig_withServiceType___block_invoke_38(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = logHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __66__SignpostReaderHelper_processSignpostWithConfig_withServiceType___block_invoke_38_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __66__SignpostReaderHelper_processSignpostWithConfig_withServiceType___block_invoke_39(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = logHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __66__SignpostReaderHelper_processSignpostWithConfig_withServiceType___block_invoke_39_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (id)createXPCConnection
{
  v3 = logHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1D8611000, v3, OS_LOG_TYPE_INFO, "PL establishing a connection", buf, 2u);
  }

  v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.PerfPowerServicesSignpostReader"];
  connectionToServer = self->_connectionToServer;
  self->_connectionToServer = v4;

  v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5432928];
  [(NSXPCConnection *)self->_connectionToServer setRemoteObjectInterface:v6];

  [(NSXPCConnection *)self->_connectionToServer setInterruptionHandler:&__block_literal_global_52];
  [(NSXPCConnection *)self->_connectionToServer setInvalidationHandler:&__block_literal_global_55];
  [(NSXPCConnection *)self->_connectionToServer resume];
  v7 = logHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&dword_1D8611000, v7, OS_LOG_TYPE_INFO, "spinning up xpc svc", v10, 2u);
  }

  v8 = [(NSXPCConnection *)self->_connectionToServer synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_59];

  return v8;
}

void __43__SignpostReaderHelper_createXPCConnection__block_invoke()
{
  v0 = logHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __43__SignpostReaderHelper_createXPCConnection__block_invoke_cold_1(v0);
  }
}

void __43__SignpostReaderHelper_createXPCConnection__block_invoke_53()
{
  v0 = logHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __43__SignpostReaderHelper_createXPCConnection__block_invoke_53_cold_1(v0);
  }
}

void __43__SignpostReaderHelper_createXPCConnection__block_invoke_56(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = logHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __43__SignpostReaderHelper_createXPCConnection__block_invoke_56_cold_1(v2, v3);
  }
}

- (id)customGetNearestMidnight
{
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = [MEMORY[0x1E695DEE8] currentCalendar];
  v4 = [v3 components:28 fromDate:v2];
  v5 = [v3 dateFromComponents:v4];

  return v5;
}

- (void)generateRapidSignpostSummaryWithStartDate:endDate:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_1D8611000, v1, OS_LOG_TYPE_ERROR, "Invalid arguments: startDate=%@ endDate=%@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void __66__SignpostReaderHelper_processSignpostWithConfig_withServiceType___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D8611000, v0, v1, "submitSignpostDataWithConfig: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __66__SignpostReaderHelper_processSignpostWithConfig_withServiceType___block_invoke_35_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D8611000, v0, v1, "summarizeSignpostMetrics: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __66__SignpostReaderHelper_processSignpostWithConfig_withServiceType___block_invoke_36_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D8611000, v0, v1, "aggregateSignpostData : %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __66__SignpostReaderHelper_processSignpostWithConfig_withServiceType___block_invoke_37_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D8611000, v0, v1, "readRawSignpostData : %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __66__SignpostReaderHelper_processSignpostWithConfig_withServiceType___block_invoke_38_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D8611000, v0, v1, "generateMSSReportForRAPID : %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __66__SignpostReaderHelper_processSignpostWithConfig_withServiceType___block_invoke_39_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D8611000, v0, v1, "generateMSSReportForTasking : %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __43__SignpostReaderHelper_createXPCConnection__block_invoke_56_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 description];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1D8611000, a2, OS_LOG_TYPE_ERROR, "Connection error happened %@", v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end