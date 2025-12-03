@interface SignpostReaderHelper
- (id)createXPCConnection;
- (id)customGetNearestMidnight;
- (id)generateRapidMSSWithStartDate:(id)date endDate:(id)endDate atPath:(id)path;
- (id)generateRapidSignpostSummaryWithStartDate:(id)date endDate:(id)endDate;
- (id)generateTaskingMSSWithStartDate:(id)date endDate:(id)endDate atPath:(id)path;
- (id)getSignpostSummaryWithAllowlist:(id)allowlist withStartDate:(id)date withEndDate:(id)endDate;
- (id)processSignpostWithConfig:(id)config withServiceType:(int)type;
@end

@implementation SignpostReaderHelper

- (id)getSignpostSummaryWithAllowlist:(id)allowlist withStartDate:(id)date withEndDate:(id)endDate
{
  v5 = MEMORY[0x277CBEC10];
  if (allowlist && date && endDate)
  {
    v9 = MEMORY[0x277CBEB38];
    endDateCopy = endDate;
    dateCopy = date;
    allowlistCopy = allowlist;
    v13 = objc_alloc_init(v9);
    [v13 setObject:allowlistCopy forKey:@"taskingAllowlist"];

    [v13 setObject:dateCopy forKey:@"taskingStartDate"];
    [v13 setObject:endDateCopy forKey:@"taskingEndDate"];

    v5 = [(SignpostReaderHelper *)self processSignpostWithConfig:v13 withServiceType:2];
  }

  return v5;
}

- (id)generateRapidSignpostSummaryWithStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v8 = endDateCopy;
  if (dateCopy && endDateCopy)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v9 setObject:dateCopy forKey:@"start_date"];
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

- (id)generateRapidMSSWithStartDate:(id)date endDate:(id)endDate atPath:(id)path
{
  v23 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  pathCopy = path;
  v11 = pathCopy;
  if (dateCopy && endDateCopy && pathCopy)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v12 setObject:dateCopy forKey:@"start_date"];
    [v12 setObject:endDateCopy forKey:@"end_date"];
    [v12 setObject:v11 forKey:@"mss_filepath"];
    v13 = [(SignpostReaderHelper *)self processSignpostWithConfig:v12 withServiceType:4];
  }

  else
  {
    v14 = logHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412802;
      v18 = dateCopy;
      v19 = 2112;
      v20 = endDateCopy;
      v21 = 2112;
      v22 = v11;
      _os_log_error_impl(&dword_25EE51000, v14, OS_LOG_TYPE_ERROR, "Invalid arguments: startDate=%@ endDate=%@ path=%@", &v17, 0x20u);
    }

    v13 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)generateTaskingMSSWithStartDate:(id)date endDate:(id)endDate atPath:(id)path
{
  v23 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  pathCopy = path;
  v11 = pathCopy;
  if (dateCopy && endDateCopy && pathCopy)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v12 setObject:dateCopy forKey:@"start_date"];
    [v12 setObject:endDateCopy forKey:@"end_date"];
    [v12 setObject:v11 forKey:@"mss_filepath"];
    v13 = [(SignpostReaderHelper *)self processSignpostWithConfig:v12 withServiceType:5];
  }

  else
  {
    v14 = logHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412802;
      v18 = dateCopy;
      v19 = 2112;
      v20 = endDateCopy;
      v21 = 2112;
      v22 = v11;
      _os_log_error_impl(&dword_25EE51000, v14, OS_LOG_TYPE_ERROR, "Invalid arguments: startDate=%@ endDate=%@ path=%@", &v17, 0x20u);
    }

    v13 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)processSignpostWithConfig:(id)config withServiceType:(int)type
{
  v37 = *MEMORY[0x277D85DE8];
  configCopy = config;
  v7 = logHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = type;
    LOWORD(v33) = 2112;
    *(&v33 + 2) = configCopy;
    _os_log_impl(&dword_25EE51000, v7, OS_LOG_TYPE_INFO, "processSignpost for service type (%d) with config %@", buf, 0x12u);
  }

  date = [MEMORY[0x277CBEAA8] date];
  createXPCConnection = [(SignpostReaderHelper *)self createXPCConnection];
  *buf = 0;
  *&v33 = buf;
  *(&v33 + 1) = 0x3032000000;
  v34 = __Block_byref_object_copy__17;
  v35 = __Block_byref_object_dispose__17;
  dictionary = [MEMORY[0x277CBEAC0] dictionary];
  if (type > 2)
  {
    switch(type)
    {
      case 3:
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __66__SignpostReaderHelper_processSignpostWithConfig_withServiceType___block_invoke_37;
        v22[3] = &unk_279A5FD18;
        v22[4] = buf;
        [createXPCConnection readRawSignpostData:configCopy withReply:v22];
        goto LABEL_19;
      case 4:
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __66__SignpostReaderHelper_processSignpostWithConfig_withServiceType___block_invoke_38;
        v21[3] = &unk_279A5FD18;
        v21[4] = buf;
        [createXPCConnection generateMSSReportForRAPID:configCopy withReply:v21];
        goto LABEL_19;
      case 5:
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __66__SignpostReaderHelper_processSignpostWithConfig_withServiceType___block_invoke_39;
        v20[3] = &unk_279A5FD18;
        v20[4] = buf;
        [createXPCConnection generateMSSReportForTasking:configCopy withReply:v20];
        goto LABEL_19;
    }
  }

  else
  {
    switch(type)
    {
      case 0:
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __66__SignpostReaderHelper_processSignpostWithConfig_withServiceType___block_invoke;
        v25[3] = &unk_279A5FD18;
        v25[4] = buf;
        [createXPCConnection submitSignpostDataWithConfig:configCopy withReply:v25];
        goto LABEL_19;
      case 1:
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __66__SignpostReaderHelper_processSignpostWithConfig_withServiceType___block_invoke_35;
        v24[3] = &unk_279A5FD18;
        v24[4] = buf;
        [createXPCConnection summarizeSignpostMetrics:configCopy withReply:v24];
        goto LABEL_19;
      case 2:
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __66__SignpostReaderHelper_processSignpostWithConfig_withServiceType___block_invoke_36;
        v23[3] = &unk_279A5FD18;
        v23[4] = buf;
        [createXPCConnection aggregateSignpostData:configCopy withReply:v23];
        goto LABEL_19;
    }
  }

  v10 = logHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *v26 = 67109120;
    LODWORD(v27) = type;
    _os_log_impl(&dword_25EE51000, v10, OS_LOG_TYPE_INFO, "Unknown service type specified: %d", v26, 8u);
  }

LABEL_19:
  [(SignpostReaderHelper *)self closeXPCConnection];
  v11 = logHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = *(v33 + 40);
    *v26 = 138412290;
    v27 = v12;
    _os_log_impl(&dword_25EE51000, v11, OS_LOG_TYPE_INFO, "The successful reply happened: %@", v26, 0xCu);
  }

  date2 = [MEMORY[0x277CBEAA8] date];
  [date2 timeIntervalSinceDate:date];
  v15 = v14;
  v16 = logHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *v26 = 134218498;
    v27 = v15;
    v28 = 2112;
    v29 = date;
    v30 = 2112;
    v31 = date2;
    _os_log_impl(&dword_25EE51000, v16, OS_LOG_TYPE_INFO, "Time for signpost reading to run: %f, %@, %@", v26, 0x20u);
  }

  v17 = *(v33 + 40);
  _Block_object_dispose(buf, 8);

  v18 = *MEMORY[0x277D85DE8];

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
    _os_log_impl(&dword_25EE51000, v3, OS_LOG_TYPE_INFO, "PL establishing a connection", buf, 2u);
  }

  v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.PerfPowerServicesSignpostReader"];
  connectionToServer = self->_connectionToServer;
  self->_connectionToServer = v4;

  v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287180C28];
  [(NSXPCConnection *)self->_connectionToServer setRemoteObjectInterface:v6];

  [(NSXPCConnection *)self->_connectionToServer setInterruptionHandler:&__block_literal_global_52];
  [(NSXPCConnection *)self->_connectionToServer setInvalidationHandler:&__block_literal_global_55];
  [(NSXPCConnection *)self->_connectionToServer resume];
  v7 = logHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&dword_25EE51000, v7, OS_LOG_TYPE_INFO, "spinning up xpc svc", v10, 2u);
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
  date = [MEMORY[0x277CBEAA8] date];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = [currentCalendar components:28 fromDate:date];
  v5 = [currentCalendar dateFromComponents:v4];

  return v5;
}

- (void)generateRapidSignpostSummaryWithStartDate:endDate:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_25EE51000, v1, OS_LOG_TYPE_ERROR, "Invalid arguments: startDate=%@ endDate=%@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void __66__SignpostReaderHelper_processSignpostWithConfig_withServiceType___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "submitSignpostDataWithConfig: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __66__SignpostReaderHelper_processSignpostWithConfig_withServiceType___block_invoke_35_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "summarizeSignpostMetrics: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __66__SignpostReaderHelper_processSignpostWithConfig_withServiceType___block_invoke_36_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "aggregateSignpostData : %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __66__SignpostReaderHelper_processSignpostWithConfig_withServiceType___block_invoke_37_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "readRawSignpostData : %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __66__SignpostReaderHelper_processSignpostWithConfig_withServiceType___block_invoke_38_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "generateMSSReportForRAPID : %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __66__SignpostReaderHelper_processSignpostWithConfig_withServiceType___block_invoke_39_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "generateMSSReportForTasking : %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __43__SignpostReaderHelper_createXPCConnection__block_invoke_56_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 description];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_25EE51000, a2, OS_LOG_TYPE_ERROR, "Connection error happened %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end