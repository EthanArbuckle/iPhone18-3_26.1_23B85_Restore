@interface TransparencyAuditorReport
- (NSString)auditorName;
- (TransparencyAuditorReport)initWithAuditorId:(int64_t)a3;
- (void)getReportForUUID:(id)a3 completionBlock:(id)a4;
- (void)getReportsForUUIDs:(id)a3 completionBlock:(id)a4;
- (void)makeReport:(id)a3 additionalData:(id)a4 completionBlock:(id)a5;
- (void)makeReports:(id)a3 additionalData:(id)a4 completionBlock:(id)a5;
@end

@implementation TransparencyAuditorReport

- (TransparencyAuditorReport)initWithAuditorId:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = TransparencyAuditorReport;
  v4 = [(TransparencyAuditorReport *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(TransparencyAuditorReport *)v4 setAuditorId:a3];
  }

  return v5;
}

- (NSString)auditorName
{
  if ([(TransparencyAuditorReport *)self auditorId])
  {
    return @"Unknown";
  }

  else
  {
    return @"Apple Inc.";
  }
}

- (void)getReportForUUID:(id)a3 completionBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__TransparencyAuditorReport_getReportForUUID_completionBlock___block_invoke;
  v11[3] = &unk_1E8701530;
  v12 = v5;
  v13 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__TransparencyAuditorReport_getReportForUUID_completionBlock___block_invoke_2_107;
  v9[3] = &unk_1E87013C8;
  v10 = v13;
  v7 = v13;
  v8 = v5;
  [TransparencyXPCConnection invokeXPCAsynchronousCallWithBlock:v11 errorHandler:v9];
}

void __62__TransparencyAuditorReport_getReportForUUID_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_10 != -1)
    {
      __62__TransparencyAuditorReport_getReportForUUID_completionBlock___block_invoke_cold_2();
    }

    v11 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_10;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v7;
      _os_log_impl(&dword_1E10DB000, v11, OS_LOG_TYPE_ERROR, "Unknown invokeXPCAsynchronousCallWithBlock error: %@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_10 != -1)
    {
      __62__TransparencyAuditorReport_getReportForUUID_completionBlock___block_invoke_cold_1();
    }

    v8 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_10;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      *buf = 138412290;
      v17 = v9;
      _os_log_impl(&dword_1E10DB000, v8, OS_LOG_TYPE_INFO, "Sending asynchronous get auditor report for %@", buf, 0xCu);
    }

    v15 = *(a1 + 32);
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __62__TransparencyAuditorReport_getReportForUUID_completionBlock___block_invoke_104;
    v13[3] = &unk_1E8701DF8;
    v14 = *(a1 + 40);
    [v5 getReportsForUUIDs:v10 completionBlock:v13];
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __62__TransparencyAuditorReport_getReportForUUID_completionBlock___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_10 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __62__TransparencyAuditorReport_getReportForUUID_completionBlock___block_invoke_100()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_10 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __62__TransparencyAuditorReport_getReportForUUID_completionBlock___block_invoke_104(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v5 = a3;
    v7 = [a2 objectAtIndexedSubscript:0];
    (*(v3 + 16))(v3);
  }

  else
  {
    v6 = *(v3 + 16);
    v7 = a3;
    v6(v3, 0);
  }
}

void __62__TransparencyAuditorReport_getReportForUUID_completionBlock___block_invoke_2_107(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_10 != -1)
  {
    __62__TransparencyAuditorReport_getReportForUUID_completionBlock___block_invoke_2_107_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_10;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "Unknown getReportForUUID error: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __62__TransparencyAuditorReport_getReportForUUID_completionBlock___block_invoke_3()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_10 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)getReportsForUUIDs:(id)a3 completionBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__TransparencyAuditorReport_getReportsForUUIDs_completionBlock___block_invoke;
  v11[3] = &unk_1E8701530;
  v12 = v5;
  v13 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__TransparencyAuditorReport_getReportsForUUIDs_completionBlock___block_invoke_116;
  v9[3] = &unk_1E87013C8;
  v10 = v13;
  v7 = v13;
  v8 = v5;
  [TransparencyXPCConnection invokeXPCAsynchronousCallWithBlock:v11 errorHandler:v9];
}

void __64__TransparencyAuditorReport_getReportsForUUIDs_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_10 != -1)
    {
      __64__TransparencyAuditorReport_getReportsForUUIDs_completionBlock___block_invoke_cold_2();
    }

    v10 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_10;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&dword_1E10DB000, v10, OS_LOG_TYPE_ERROR, "Unknown invokeXPCAsynchronousCallWithBlock error: %@", &v12, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_10 != -1)
    {
      __64__TransparencyAuditorReport_getReportsForUUIDs_completionBlock___block_invoke_cold_1();
    }

    v8 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_10;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&dword_1E10DB000, v8, OS_LOG_TYPE_INFO, "Sending asynchronous get auditor report for %@", &v12, 0xCu);
    }

    [v5 getReportsForUUIDs:*(a1 + 32) completionBlock:*(a1 + 40)];
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __64__TransparencyAuditorReport_getReportsForUUIDs_completionBlock___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_10 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __64__TransparencyAuditorReport_getReportsForUUIDs_completionBlock___block_invoke_113()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_10 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __64__TransparencyAuditorReport_getReportsForUUIDs_completionBlock___block_invoke_116(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_10 != -1)
  {
    __64__TransparencyAuditorReport_getReportsForUUIDs_completionBlock___block_invoke_116_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_10;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "Unknown getReportForUUID error: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __64__TransparencyAuditorReport_getReportsForUUIDs_completionBlock___block_invoke_2_117()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_10 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)makeReport:(id)a3 additionalData:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __71__TransparencyAuditorReport_makeReport_additionalData_completionBlock___block_invoke;
  v16[3] = &unk_1E8702268;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__TransparencyAuditorReport_makeReport_additionalData_completionBlock___block_invoke_125;
  v14[3] = &unk_1E87013C8;
  v15 = v19;
  v11 = v19;
  v12 = v9;
  v13 = v8;
  [TransparencyXPCConnection invokeXPCAsynchronousCallWithBlock:v16 errorHandler:v14];
}

void __71__TransparencyAuditorReport_makeReport_additionalData_completionBlock___block_invoke(void *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_10 != -1)
    {
      __71__TransparencyAuditorReport_makeReport_additionalData_completionBlock___block_invoke_cold_2();
    }

    v13 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_10;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v7;
      _os_log_impl(&dword_1E10DB000, v13, OS_LOG_TYPE_ERROR, "Unknown invokeXPCAsynchronousCallWithBlock error: %@", buf, 0xCu);
    }

    (*(a1[7] + 16))();
  }

  else
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_10 != -1)
    {
      __71__TransparencyAuditorReport_makeReport_additionalData_completionBlock___block_invoke_cold_1();
    }

    v8 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_10;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_INFO))
    {
      v9 = a1[4];
      v10 = v8;
      v11 = [v9 auditorName];
      *buf = 138412290;
      v17 = v11;
      _os_log_impl(&dword_1E10DB000, v10, OS_LOG_TYPE_INFO, "Sending asynchronous make auditor report to %@", buf, 0xCu);
    }

    v15 = a1[5];
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
    [v5 makeReports:v12 additionalData:a1[6] auditorURI:0 completionBlock:a1[7]];
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __71__TransparencyAuditorReport_makeReport_additionalData_completionBlock___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_10 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __71__TransparencyAuditorReport_makeReport_additionalData_completionBlock___block_invoke_122()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_10 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __71__TransparencyAuditorReport_makeReport_additionalData_completionBlock___block_invoke_125(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_10 != -1)
  {
    __71__TransparencyAuditorReport_makeReport_additionalData_completionBlock___block_invoke_125_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_10;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "Unknown makeReport error: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __71__TransparencyAuditorReport_makeReport_additionalData_completionBlock___block_invoke_2_126()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_10 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)makeReports:(id)a3 additionalData:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __72__TransparencyAuditorReport_makeReports_additionalData_completionBlock___block_invoke;
  v16[3] = &unk_1E8702268;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__TransparencyAuditorReport_makeReports_additionalData_completionBlock___block_invoke_134;
  v14[3] = &unk_1E87013C8;
  v15 = v19;
  v11 = v19;
  v12 = v9;
  v13 = v8;
  [TransparencyXPCConnection invokeXPCAsynchronousCallWithBlock:v16 errorHandler:v14];
}

void __72__TransparencyAuditorReport_makeReports_additionalData_completionBlock___block_invoke(void *a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_10 != -1)
    {
      __72__TransparencyAuditorReport_makeReports_additionalData_completionBlock___block_invoke_cold_2();
    }

    v12 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_10;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v7;
      _os_log_impl(&dword_1E10DB000, v12, OS_LOG_TYPE_ERROR, "Unknown invokeXPCAsynchronousCallWithBlock error: %@", &v14, 0xCu);
    }

    (*(a1[7] + 16))();
  }

  else
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_10 != -1)
    {
      __72__TransparencyAuditorReport_makeReports_additionalData_completionBlock___block_invoke_cold_1();
    }

    v8 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_10;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_INFO))
    {
      v9 = a1[4];
      v10 = v8;
      v11 = [v9 auditorName];
      v14 = 138412290;
      v15 = v11;
      _os_log_impl(&dword_1E10DB000, v10, OS_LOG_TYPE_INFO, "Sending asynchronous make auditor report to %@", &v14, 0xCu);
    }

    [v5 makeReports:a1[5] additionalData:a1[6] auditorURI:0 completionBlock:a1[7]];
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __72__TransparencyAuditorReport_makeReports_additionalData_completionBlock___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_10 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __72__TransparencyAuditorReport_makeReports_additionalData_completionBlock___block_invoke_131()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_10 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __72__TransparencyAuditorReport_makeReports_additionalData_completionBlock___block_invoke_134(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_10 != -1)
  {
    __72__TransparencyAuditorReport_makeReports_additionalData_completionBlock___block_invoke_134_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_10;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "Unknown makeReport error: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __72__TransparencyAuditorReport_makeReports_additionalData_completionBlock___block_invoke_2_135()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_10 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

@end