@interface PLRemoteDiagnosticsClient
+ (id)_connectionForListenerEndpoint:(id)a3;
+ (id)diagnosticsAgentWithErrorHandler:(id)a3;
@end

@implementation PLRemoteDiagnosticsClient

+ (id)_connectionForListenerEndpoint:(id)a3
{
  v3 = MEMORY[0x1E696B0B8];
  v4 = a3;
  v5 = [[v3 alloc] initWithListenerEndpoint:v4];

  v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F109F1E8];
  [v5 setRemoteObjectInterface:v6];

  [v5 resume];

  return v5;
}

+ (id)diagnosticsAgentWithErrorHandler:(id)a3
{
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__PLRemoteDiagnosticsClient_diagnosticsAgentWithErrorHandler___block_invoke;
  aBlock[3] = &unk_1E7577430;
  v5 = v4;
  v22 = v5;
  v6 = _Block_copy(aBlock);
  v7 = objc_alloc_init(MEMORY[0x1E69BF288]);
  v8 = [v7 nonBindingDebugClient];
  v19 = 0;
  v20 = 0;
  v9 = [v8 getPhotosXPCEndpoint:&v20 error:&v19];
  v10 = v20;
  v11 = v19;
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PXRemoteDiagnosticsService" code:-36 userInfo:0];
    v6[2](v6, v13);
    v15 = 0;
  }

  else
  {
    v13 = objc_alloc_init(MEMORY[0x1E696B0E0]);
    [v13 _setEndpoint:v10];
    v14 = [a1 _connectionForListenerEndpoint:v13];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __62__PLRemoteDiagnosticsClient_diagnosticsAgentWithErrorHandler___block_invoke_2;
    v17[3] = &unk_1E7577430;
    v18 = v6;
    v15 = [v14 remoteObjectProxyWithErrorHandler:v17];
  }

  return v15;
}

void __62__PLRemoteDiagnosticsClient_diagnosticsAgentWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  else
  {
    v5 = PLBackendGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "error getting remote object proxy: %@", &v6, 0xCu);
    }
  }
}

@end