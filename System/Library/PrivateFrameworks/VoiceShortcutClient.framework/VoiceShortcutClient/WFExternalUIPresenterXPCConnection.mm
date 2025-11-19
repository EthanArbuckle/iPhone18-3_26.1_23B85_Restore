@interface WFExternalUIPresenterXPCConnection
- (WFExternalUIPresenterXPCConnection)initWithEndpoint:(id)a3;
- (id)presenterWithErrorHandler:(id)a3;
- (void)resumeConnectionIfNecessary;
@end

@implementation WFExternalUIPresenterXPCConnection

- (void)resumeConnectionIfNecessary
{
  if (![(WFExternalUIPresenterXPCConnection *)self connected])
  {
    v3 = [(WFExternalUIPresenterXPCConnection *)self xpcConnection];
    [v3 resume];

    [(WFExternalUIPresenterXPCConnection *)self setConnected:1];
  }
}

- (id)presenterWithErrorHandler:(id)a3
{
  v4 = a3;
  [(WFExternalUIPresenterXPCConnection *)self resumeConnectionIfNecessary];
  v5 = [(WFExternalUIPresenterXPCConnection *)self xpcConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__WFExternalUIPresenterXPCConnection_presenterWithErrorHandler___block_invoke;
  v9[3] = &unk_1E7B02940;
  v10 = v4;
  v6 = v4;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

void __64__WFExternalUIPresenterXPCConnection_presenterWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [v3 localizedDescription];
      v8 = 136315394;
      v9 = "[WFExternalUIPresenterXPCConnection presenterWithErrorHandler:]_block_invoke";
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1B1DE3000, v4, OS_LOG_TYPE_ERROR, "%s Siri XPC connection error: %@", &v8, 0x16u);
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      (*(v6 + 16))(v6, v3);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (WFExternalUIPresenterXPCConnection)initWithEndpoint:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = WFExternalUIPresenterXPCConnection;
  v6 = [(WFExternalUIPresenterXPCConnection *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_endpoint, a3);
    v8 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v5];
    xpcConnection = v7->_xpcConnection;
    v7->_xpcConnection = v8;

    v10 = WFExternalUIPresenterXPCInterface();
    [(NSXPCConnection *)v7->_xpcConnection setRemoteObjectInterface:v10];

    [(NSXPCConnection *)v7->_xpcConnection setInterruptionHandler:&__block_literal_global_138];
    [(NSXPCConnection *)v7->_xpcConnection setInvalidationHandler:&__block_literal_global_140_10129];
    v11 = v7;
  }

  return v7;
}

@end