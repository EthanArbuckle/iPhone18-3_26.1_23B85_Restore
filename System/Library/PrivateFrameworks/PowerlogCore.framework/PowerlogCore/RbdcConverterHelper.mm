@interface RbdcConverterHelper
- (BOOL)isProcessRbdcAllowed;
- (id)createXPCConnection;
- (void)closeXPCConnection;
- (void)isProcessRbdcAllowed;
@end

@implementation RbdcConverterHelper

- (BOOL)isProcessRbdcAllowed
{
  v7 = 0;
  v6 = 0;
  IOAccessoryManagerGetServiceWithPrimaryPort();
  if (IOAccesoryManagerGetDigitalIDAccessoryVersionInfo())
  {
    v2 = logHandleRbdcHelper();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [RbdcConverterHelper isProcessRbdcAllowed];
    }

    v3 = 0;
  }

  else
  {
    v3 = 1;
    if (v6 <= 1u && (v6 != 1 || BYTE1(v6) == 0))
    {
      v3 = 0;
    }

    v2 = logHandleRbdcHelper();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      [(RbdcConverterHelper *)&v6 isProcessRbdcAllowed];
    }
  }

  return v3;
}

void __51__RbdcConverterHelper_processRbdc_withServiceType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = logHandleRbdcHelper();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __51__RbdcConverterHelper_processRbdc_withServiceType___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __51__RbdcConverterHelper_processRbdc_withServiceType___block_invoke_16(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = logHandleRbdcHelper();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __51__RbdcConverterHelper_processRbdc_withServiceType___block_invoke_16_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (id)createXPCConnection
{
  v3 = logHandleRbdcHelper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1D8611000, v3, OS_LOG_TYPE_INFO, "PL establishing a connection", buf, 2u);
  }

  v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.rbdcConverter"];
  connectionToServer = self->_connectionToServer;
  self->_connectionToServer = v4;

  v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5432988];
  [(NSXPCConnection *)self->_connectionToServer setRemoteObjectInterface:v6];

  [(NSXPCConnection *)self->_connectionToServer setInterruptionHandler:&__block_literal_global_43_0];
  [(NSXPCConnection *)self->_connectionToServer setInvalidationHandler:&__block_literal_global_46];
  [(NSXPCConnection *)self->_connectionToServer resume];
  v7 = logHandleRbdcHelper();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&dword_1D8611000, v7, OS_LOG_TYPE_INFO, "spinning up xpc svc", v10, 2u);
  }

  v8 = [(NSXPCConnection *)self->_connectionToServer synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_50_0];

  return v8;
}

void __42__RbdcConverterHelper_createXPCConnection__block_invoke()
{
  v0 = logHandleRbdcHelper();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __42__RbdcConverterHelper_createXPCConnection__block_invoke_cold_1();
  }
}

void __42__RbdcConverterHelper_createXPCConnection__block_invoke_44()
{
  v0 = logHandleRbdcHelper();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __42__RbdcConverterHelper_createXPCConnection__block_invoke_44_cold_1();
  }
}

void __42__RbdcConverterHelper_createXPCConnection__block_invoke_47(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = logHandleRbdcHelper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __43__SignpostReaderHelper_createXPCConnection__block_invoke_56_cold_1(v2, v3);
  }
}

- (void)closeXPCConnection
{
  [(NSXPCConnection *)self->_connectionToServer suspend];
  connectionToServer = self->_connectionToServer;

  [(NSXPCConnection *)connectionToServer invalidate];
}

- (void)isProcessRbdcAllowed
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v6[0] = 67109632;
  v6[1] = v2;
  v7 = 1024;
  v8 = v3;
  v9 = 1024;
  v10 = v4;
  _os_log_debug_impl(&dword_1D8611000, a2, OS_LOG_TYPE_DEBUG, "Battery FW version info: major=%d, minor=%d, revision=%d", v6, 0x14u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)processRbdc:withServiceType:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)processRbdc:withServiceType:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D8611000, v0, v1, "RBDC metrics: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __51__RbdcConverterHelper_processRbdc_withServiceType___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D8611000, v0, v1, "getRbdcDataWithReply: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __51__RbdcConverterHelper_processRbdc_withServiceType___block_invoke_16_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D8611000, v0, v1, "getHeatmapDataWithReply: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end