@interface PPSFeatureFlagReaderHelper
- (id)createXPCConnection;
- (id)getFeatureFlags;
- (void)closeXPCConnection;
@end

@implementation PPSFeatureFlagReaderHelper

- (id)getFeatureFlags
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = logPPSFeatureFlagReaderHelper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "[PPSFeatureFlagReader] getFeatureFlags called", buf, 2u);
  }

  date = [MEMORY[0x277CBEAA8] date];
  createXPCConnection = [(PPSFeatureFlagReaderHelper *)self createXPCConnection];
  *buf = 0;
  v17 = buf;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__5;
  v20 = __Block_byref_object_dispose__5;
  v21 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __45__PPSFeatureFlagReaderHelper_getFeatureFlags__block_invoke;
  v15[3] = &unk_27825BB18;
  v15[4] = buf;
  [createXPCConnection getFeatureFlags:v15];
  v6 = logPPSFeatureFlagReaderHelper();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v14 = *(v17 + 5);
    *v22 = 138412290;
    v23 = v14;
    _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "[PPSFeatureFlagReader] getFeatureFlags result: %@", v22, 0xCu);
  }

  [(PPSFeatureFlagReaderHelper *)self closeXPCConnection];
  date2 = [MEMORY[0x277CBEAA8] date];
  [date2 timeIntervalSinceDate:date];
  v9 = v8;
  v10 = logPPSFeatureFlagReaderHelper();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *v22 = 134218498;
    v23 = v9;
    v24 = 2112;
    v25 = date;
    v26 = 2112;
    v27 = date2;
    _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "[PPSFeatureFlagReader] Time for getting getFeatureFlags reading to run: %f, %@, %@", v22, 0x20u);
  }

  v11 = *(v17 + 5);
  _Block_object_dispose(buf, 8);

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)createXPCConnection
{
  v3 = logPPSFeatureFlagReaderHelper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "[PPSFeatureFlagReader] establishing a connection", buf, 2u);
  }

  v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.PPSFeatureFlagReader"];
  connectionToServer = self->_connectionToServer;
  self->_connectionToServer = v4;

  v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_282C83050];
  [(NSXPCConnection *)self->_connectionToServer setRemoteObjectInterface:v6];

  [(NSXPCConnection *)self->_connectionToServer setInterruptionHandler:&__block_literal_global_9];
  [(NSXPCConnection *)self->_connectionToServer setInvalidationHandler:&__block_literal_global_12];
  [(NSXPCConnection *)self->_connectionToServer resume];
  v7 = logPPSFeatureFlagReaderHelper();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *v10 = 0;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "[PPSFeatureFlagReader] Spinning up xpc svc", v10, 2u);
  }

  v8 = [(NSXPCConnection *)self->_connectionToServer synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_16];

  return v8;
}

void __49__PPSFeatureFlagReaderHelper_createXPCConnection__block_invoke()
{
  v0 = logPPSFeatureFlagReaderHelper();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_21A4C6000, v0, OS_LOG_TYPE_ERROR, "[PPSFeatureFlagReader] Connection was interrupted.", v1, 2u);
  }
}

void __49__PPSFeatureFlagReaderHelper_createXPCConnection__block_invoke_10()
{
  v0 = logPPSFeatureFlagReaderHelper();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_21A4C6000, v0, OS_LOG_TYPE_ERROR, "[PPSFeatureFlagReader] Invalid connection handler is happening.", v1, 2u);
  }
}

void __49__PPSFeatureFlagReaderHelper_createXPCConnection__block_invoke_13(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = logPPSFeatureFlagReaderHelper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = [v2 description];
    v6 = 138412290;
    v7 = v5;
    _os_log_error_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_ERROR, "os_log_debug Connection error happened %@", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)closeXPCConnection
{
  v3 = logPPSFeatureFlagReaderHelper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "[PPSFeatureFlagReader] getFeatureFlags Connection Closed", v4, 2u);
  }

  [(NSXPCConnection *)self->_connectionToServer invalidate];
}

@end