@interface PPSFeatureFlagReaderHelper
- (id)createXPCConnection;
- (id)getFeatureFlags;
- (void)closeXPCConnection;
- (void)getFeatureFlags;
@end

@implementation PPSFeatureFlagReaderHelper

- (id)getFeatureFlags
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = logPPSFeatureFlagReaderHelper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PPSFeatureFlagReaderHelper getFeatureFlags];
  }

  date = [MEMORY[0x1E695DF00] date];
  createXPCConnection = [(PPSFeatureFlagReaderHelper *)self createXPCConnection];
  v15 = 0;
  v16[0] = &v15;
  v16[1] = 0x3032000000;
  v16[2] = __Block_byref_object_copy__7;
  v16[3] = __Block_byref_object_dispose__7;
  v17 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __45__PPSFeatureFlagReaderHelper_getFeatureFlags__block_invoke;
  v14[3] = &unk_1E8519EF0;
  v14[4] = &v15;
  [createXPCConnection getFeatureFlags:v14];
  v6 = logPPSFeatureFlagReaderHelper();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(PPSFeatureFlagReaderHelper *)v16 getFeatureFlags];
  }

  [(PPSFeatureFlagReaderHelper *)self closeXPCConnection];
  date2 = [MEMORY[0x1E695DF00] date];
  [date2 timeIntervalSinceDate:date];
  v9 = v8;
  v10 = logPPSFeatureFlagReaderHelper();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v19 = v9;
    v20 = 2112;
    v21 = date;
    v22 = 2112;
    v23 = date2;
    _os_log_debug_impl(&dword_1D8611000, v10, OS_LOG_TYPE_DEBUG, "[PPSFeatureFlagReader] Time for getting getFeatureFlags reading to run: %f, %@, %@", buf, 0x20u);
  }

  v11 = *(v16[0] + 40);
  _Block_object_dispose(&v15, 8);

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)createXPCConnection
{
  v3 = logPPSFeatureFlagReaderHelper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PPSFeatureFlagReaderHelper createXPCConnection];
  }

  v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.PPSFeatureFlagReader"];
  connectionToServer = self->_connectionToServer;
  self->_connectionToServer = v4;

  v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F54328C8];
  [(NSXPCConnection *)self->_connectionToServer setRemoteObjectInterface:v6];

  [(NSXPCConnection *)self->_connectionToServer setInterruptionHandler:&__block_literal_global_9];
  [(NSXPCConnection *)self->_connectionToServer setInvalidationHandler:&__block_literal_global_12];
  [(NSXPCConnection *)self->_connectionToServer resume];
  v7 = logPPSFeatureFlagReaderHelper();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PPSFeatureFlagReaderHelper createXPCConnection];
  }

  v8 = [(NSXPCConnection *)self->_connectionToServer synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_16_0];

  return v8;
}

void __49__PPSFeatureFlagReaderHelper_createXPCConnection__block_invoke()
{
  v0 = logPPSFeatureFlagReaderHelper();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __49__PPSFeatureFlagReaderHelper_createXPCConnection__block_invoke_cold_1();
  }
}

void __49__PPSFeatureFlagReaderHelper_createXPCConnection__block_invoke_10()
{
  v0 = logPPSFeatureFlagReaderHelper();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __49__PPSFeatureFlagReaderHelper_createXPCConnection__block_invoke_10_cold_1();
  }
}

void __49__PPSFeatureFlagReaderHelper_createXPCConnection__block_invoke_13(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = logPPSFeatureFlagReaderHelper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __49__PPSFeatureFlagReaderHelper_createXPCConnection__block_invoke_13_cold_1(v2, v3);
  }
}

- (void)closeXPCConnection
{
  v3 = logPPSFeatureFlagReaderHelper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PPSFeatureFlagReaderHelper closeXPCConnection];
  }

  [(NSXPCConnection *)self->_connectionToServer invalidate];
}

- (void)getFeatureFlags
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*self + 40);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_1D8611000, a2, OS_LOG_TYPE_DEBUG, "[PPSFeatureFlagReader] getFeatureFlags result: %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __49__PPSFeatureFlagReaderHelper_createXPCConnection__block_invoke_13_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 description];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1D8611000, a2, OS_LOG_TYPE_ERROR, "os_log_debug Connection error happened %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end