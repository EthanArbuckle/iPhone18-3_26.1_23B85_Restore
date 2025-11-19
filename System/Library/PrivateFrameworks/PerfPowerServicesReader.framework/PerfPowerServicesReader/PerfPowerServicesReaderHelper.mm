@interface PerfPowerServicesReaderHelper
- (id)createXPCConnection;
- (id)postDataRequest:(id)a3 outError:(id *)a4;
@end

@implementation PerfPowerServicesReaderHelper

- (id)createXPCConnection
{
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.PerfPowerTelemetryReaderService"];
  connectionToServer = self->_connectionToServer;
  self->_connectionToServer = v3;

  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287034B10];
  [(NSXPCConnection *)self->_connectionToServer setRemoteObjectInterface:v5];

  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
  v11 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v12 = [(NSXPCConnection *)self->_connectionToServer remoteObjectInterface];
  [v12 setClasses:v10 forSelector:sel_dataForRequest_withReply_ argumentIndex:0 ofReply:1];

  v13 = [(NSXPCConnection *)self->_connectionToServer remoteObjectInterface];
  [v13 setClasses:v11 forSelector:sel_dataForRequest_withReply_ argumentIndex:1 ofReply:1];

  [(NSXPCConnection *)self->_connectionToServer setInterruptionHandler:&__block_literal_global_10];
  [(NSXPCConnection *)self->_connectionToServer setInvalidationHandler:&__block_literal_global_16];
  [(NSXPCConnection *)self->_connectionToServer resume];
  v14 = logHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E225000, v14, OS_LOG_TYPE_INFO, "Spinning up XPC service", buf, 2u);
  }

  v15 = [(NSXPCConnection *)self->_connectionToServer synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_20];

  return v15;
}

void __52__PerfPowerServicesReaderHelper_createXPCConnection__block_invoke_14()
{
  v0 = logHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __52__PerfPowerServicesReaderHelper_createXPCConnection__block_invoke_14_cold_1(v0);
  }
}

- (id)postDataRequest:(id)a3 outError:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = [(PerfPowerServicesReaderHelper *)self createXPCConnection];
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__6;
    v21 = __Block_byref_object_dispose__6;
    v22 = 0;
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__6;
    v15 = __Block_byref_object_dispose__6;
    v16 = 0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __58__PerfPowerServicesReaderHelper_postDataRequest_outError___block_invoke;
    v10[3] = &unk_279A11938;
    v10[4] = &v11;
    v10[5] = &v17;
    [v7 dataForRequest:v6 withReply:v10];
    *a4 = v12[5];
    [(PerfPowerServicesReaderHelper *)self closeXPCConnection];
    v8 = v18[5];
    _Block_object_dispose(&v11, 8);

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v7 = logHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PerfPowerServicesReaderHelper postDataRequest:v7 outError:?];
    }

    v8 = 0;
  }

  return v8;
}

void __58__PerfPowerServicesReaderHelper_postDataRequest_outError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = logHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __58__PerfPowerServicesReaderHelper_postDataRequest_outError___block_invoke_cold_1(v6, v7);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
}

void __52__PerfPowerServicesReaderHelper_createXPCConnection__block_invoke()
{
  v0 = logHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __52__PerfPowerServicesReaderHelper_createXPCConnection__block_invoke_cold_1(v0);
  }
}

void __52__PerfPowerServicesReaderHelper_createXPCConnection__block_invoke_17(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = logHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __52__PerfPowerServicesReaderHelper_createXPCConnection__block_invoke_17_cold_1(v2, v3);
  }
}

- (void)postDataRequest:(os_log_t)log outError:.cold.1(os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[PerfPowerServicesReaderHelper postDataRequest:outError:]";
  v4 = 2112;
  v5 = @"Empty request";
  _os_log_debug_impl(&dword_25E225000, log, OS_LOG_TYPE_DEBUG, "(%s) %@", &v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void __58__PerfPowerServicesReaderHelper_postDataRequest_outError___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v5 = 136315394;
  v6 = "[PerfPowerServicesReaderHelper postDataRequest:outError:]_block_invoke";
  v7 = 2112;
  v8 = v3;
  _os_log_debug_impl(&dword_25E225000, a2, OS_LOG_TYPE_DEBUG, "(%s) Error while processing request: %@", &v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

void __52__PerfPowerServicesReaderHelper_createXPCConnection__block_invoke_17_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 description];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_25E225000, a2, OS_LOG_TYPE_ERROR, "Connection error: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end