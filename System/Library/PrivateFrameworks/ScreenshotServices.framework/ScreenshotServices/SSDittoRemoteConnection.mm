@interface SSDittoRemoteConnection
- (SSDittoRemoteConnection)init;
- (void)_sendAction:(id)a3 completion:(id)a4;
- (void)preheatDittoProcess;
- (void)sendDittoProcessDocumentUpdate:(id)a3;
- (void)sendDittoProcessEnvironmentDescription:(id)a3 completion:(id)a4;
- (void)sendDittoProcessImageIdentifierUpdate:(id)a3;
- (void)sendDittoProcessMetadataUpdate:(id)a3 completion:(id)a4;
- (void)sendDittoProcessPreheatRequestWithPresentationMode:(unint64_t)a3 completion:(id)a4;
@end

@implementation SSDittoRemoteConnection

- (SSDittoRemoteConnection)init
{
  v6.receiver = self;
  v6.super_class = SSDittoRemoteConnection;
  v2 = [(SSDittoRemoteConnection *)&v6 init];
  v3 = [MEMORY[0x1E699FB78] serviceWithDefaultShellEndpoint];
  openApplicationService = v2->_openApplicationService;
  v2->_openApplicationService = v3;

  return v2;
}

- (void)_sendAction:(id)a3 completion:(id)a4
{
  v20[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = MEMORY[0x1E699FB70];
  v8 = *MEMORY[0x1E699F8D0];
  v18 = a3;
  v19[0] = v8;
  v9 = MEMORY[0x1E695DEC8];
  v10 = a3;
  v11 = [v9 arrayWithObjects:&v18 count:1];
  v19[1] = *MEMORY[0x1E699F8E8];
  v20[0] = v11;
  v20[1] = MEMORY[0x1E695E118];
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v13 = [v7 optionsWithDictionary:v12];

  openApplicationService = self->_openApplicationService;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __50__SSDittoRemoteConnection__sendAction_completion___block_invoke;
  v16[3] = &unk_1E85908D0;
  v17 = v6;
  v15 = v6;
  [(FBSOpenApplicationService *)openApplicationService openApplication:@"com.apple.ScreenshotServicesService" withOptions:v13 completion:v16];
}

uint64_t __50__SSDittoRemoteConnection__sendAction_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3 == 0);
  }

  return result;
}

- (void)preheatDittoProcess
{
  v3 = os_log_create("com.apple.screenshotservices", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1D9E04000, v3, OS_LOG_TYPE_DEFAULT, "Preheating Ditto process", v5, 2u);
  }

  v4 = objc_alloc_init(MEMORY[0x1E698E5F0]);
  [(SSDittoRemoteConnection *)self _sendAction:v4];
}

- (void)sendDittoProcessEnvironmentDescription:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 bsSettings];
  v9 = [SSScreenshotAction alloc];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __77__SSDittoRemoteConnection_sendDittoProcessEnvironmentDescription_completion___block_invoke;
  v14[3] = &unk_1E8590118;
  v15 = v7;
  v10 = v7;
  v11 = [(SSScreenshotAction *)v9 initWithInfo:v8 timeout:0 forResponseOnQueue:v14 withHandler:5.0];
  v12 = os_log_create("com.apple.screenshotservices", "XPC");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v6 loggableDescription];
    *buf = 138412290;
    v17 = v13;
    _os_log_impl(&dword_1D9E04000, v12, OS_LOG_TYPE_DEFAULT, "Sending environment description %@", buf, 0xCu);
  }

  [(SSDittoRemoteConnection *)self _sendAction:v11];
}

void __77__SSDittoRemoteConnection_sendDittoProcessEnvironmentDescription_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  v5 = os_log_create("com.apple.screenshotservices", "XPC");
  v6 = v5;
  if (v4)
  {
    v7 = v5;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __77__SSDittoRemoteConnection_sendDittoProcessEnvironmentDescription_completion___block_invoke_cold_1(v3);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1D9E04000, v6, OS_LOG_TYPE_DEFAULT, "Heard back from service regarding environment description", v8, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)sendDittoProcessImageIdentifierUpdate:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 bsSettings];
  v6 = [[SSImageIdentifierAction alloc] initWithInfo:v5 timeout:0 forResponseOnQueue:0 withHandler:0.0];
  v7 = os_log_create("com.apple.screenshotservices", "XPC");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v4 loggableDescription];
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&dword_1D9E04000, v7, OS_LOG_TYPE_DEFAULT, "Sending image identifier update %@", &v9, 0xCu);
  }

  [(SSDittoRemoteConnection *)self _sendAction:v6];
}

- (void)sendDittoProcessMetadataUpdate:(id)a3 completion:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 bsSettings];
  v9 = [[SSMetadataUpdateAction alloc] initWithInfo:v8 timeout:0 forResponseOnQueue:v7 withHandler:0.0];
  v10 = os_log_create("com.apple.screenshotservices", "XPC");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v6 loggableDescription];
    *buf = 138412290;
    v16 = v11;
    _os_log_impl(&dword_1D9E04000, v10, OS_LOG_TYPE_DEFAULT, "Sending environment metadata update %@", buf, 0xCu);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__SSDittoRemoteConnection_sendDittoProcessMetadataUpdate_completion___block_invoke;
  v13[3] = &unk_1E8590800;
  v14 = v7;
  v12 = v7;
  [(SSDittoRemoteConnection *)self _sendAction:v9 completion:v13];
}

uint64_t __69__SSDittoRemoteConnection_sendDittoProcessMetadataUpdate_completion___block_invoke(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))(result, 0);
    }
  }

  return result;
}

- (void)sendDittoProcessDocumentUpdate:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 bsSettings];
  v6 = [[SSDocumentUpdateAction alloc] initWithInfo:v5 timeout:0 forResponseOnQueue:0 withHandler:0.0];
  v7 = os_log_create("com.apple.screenshotservices", "XPC");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v4 loggableDescription];
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&dword_1D9E04000, v7, OS_LOG_TYPE_DEFAULT, "Sending environment metadata update %@", &v9, 0xCu);
  }

  [(SSDittoRemoteConnection *)self _sendAction:v6];
}

- (void)sendDittoProcessPreheatRequestWithPresentationMode:(unint64_t)a3 completion:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E698E700]);
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v7 setObject:v8 forSetting:9];

  v9 = [SSPreheatAction alloc];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __89__SSDittoRemoteConnection_sendDittoProcessPreheatRequestWithPresentationMode_completion___block_invoke;
  v13[3] = &unk_1E8590118;
  v14 = v6;
  v10 = v6;
  v11 = [(SSPreheatAction *)v9 initWithInfo:v7 timeout:0 forResponseOnQueue:v13 withHandler:5.0];
  v12 = os_log_create("com.apple.screenshotservices", "XPC");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v16 = a3;
    _os_log_impl(&dword_1D9E04000, v12, OS_LOG_TYPE_DEFAULT, "Sending preheating request with presentation mode %td", buf, 0xCu);
  }

  [(SSDittoRemoteConnection *)self _sendAction:v11];
}

void __89__SSDittoRemoteConnection_sendDittoProcessPreheatRequestWithPresentationMode_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  v5 = os_log_create("com.apple.screenshotservices", "XPC");
  v6 = v5;
  if (v4)
  {
    v7 = v5;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __89__SSDittoRemoteConnection_sendDittoProcessPreheatRequestWithPresentationMode_completion___block_invoke_cold_1(v3);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1D9E04000, v6, OS_LOG_TYPE_DEFAULT, "Heard back from service regarding preheating environment description", v9, 2u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))();
  }
}

void __77__SSDittoRemoteConnection_sendDittoProcessEnvironmentDescription_completion___block_invoke_cold_1(void *a1)
{
  v1 = [a1 error];
  OUTLINED_FUNCTION_0_0(&dword_1D9E04000, v2, v3, "Didn't hear back from service regarding environment description with error %@", v4, v5, v6, v7, 2u);
}

void __89__SSDittoRemoteConnection_sendDittoProcessPreheatRequestWithPresentationMode_completion___block_invoke_cold_1(void *a1)
{
  v1 = [a1 error];
  OUTLINED_FUNCTION_0_0(&dword_1D9E04000, v2, v3, "Didn't hear back from service regarding preheating presentation mode with error %@", v4, v5, v6, v7, 2u);
}

@end