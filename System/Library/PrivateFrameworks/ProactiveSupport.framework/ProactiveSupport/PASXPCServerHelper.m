@interface PASXPCServerHelper
@end

@implementation PASXPCServerHelper

uint64_t __213___PASXPCServerHelper_shouldAcceptConnection_serviceName_whitelistedServerInterface_whitelistedClientInterface_requestHandler_validateConnection_setupClientProxy_interruptionHandler_invalidationHandler_logHandle___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2 && os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 64);
    v8 = 138412802;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    v12 = 2048;
    v13 = v5;
    _os_log_impl(&dword_1A7F47000, v2, OS_LOG_TYPE_DEFAULT, "Connection to %@ from %@ (%lu) was interrupted.", &v8, 0x20u);
  }

  result = *(a1 + 56);
  if (result)
  {
    result = (*(result + 16))();
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __213___PASXPCServerHelper_shouldAcceptConnection_serviceName_whitelistedServerInterface_whitelistedClientInterface_requestHandler_validateConnection_setupClientProxy_interruptionHandler_invalidationHandler_logHandle___block_invoke_11(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2 && os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 64);
    v8 = 138412802;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    v12 = 2048;
    v13 = v5;
    _os_log_impl(&dword_1A7F47000, v2, OS_LOG_TYPE_DEFAULT, "Connection to %@ from %@ (%lu) was invalidated.", &v8, 0x20u);
  }

  result = *(a1 + 56);
  if (result)
  {
    result = (*(result + 16))();
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

@end