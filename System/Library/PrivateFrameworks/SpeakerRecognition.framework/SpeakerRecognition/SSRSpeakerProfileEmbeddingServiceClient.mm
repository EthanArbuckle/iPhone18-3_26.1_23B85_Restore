@interface SSRSpeakerProfileEmbeddingServiceClient
- (SSRSpeakerProfileEmbeddingServiceClient)initWithDelegate:(id)a3;
- (SSRSpeakerProfileEmbeddingServiceDelegate)delegate;
- (id)_remoteServiceProxyObjectWithErrorHandler:(id)a3;
- (void)_createClientConnection;
- (void)connectToServiceIfNeeded;
- (void)dealloc;
- (void)invalidate;
- (void)refreshEmbeddingsforLanguageCode:(id)a3 withCompletion:(id)a4;
@end

@implementation SSRSpeakerProfileEmbeddingServiceClient

- (SSRSpeakerProfileEmbeddingServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_createClientConnection
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.siri.speakerprofile.embedding.service.xpc" options:0];
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = v3;

  v5 = self->_xpcConnection;
  v6 = SSRSpeakerProfileEmbeddingServiceGetXPCInterface();
  [(NSXPCConnection *)v5 setRemoteObjectInterface:v6];

  v7 = self->_xpcConnection;
  v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283948D38];
  [(NSXPCConnection *)v7 setExportedInterface:v8];

  [(NSXPCConnection *)self->_xpcConnection setExportedObject:self];
  objc_initWeak(&location, self);
  v9 = self->_xpcConnection;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __66__SSRSpeakerProfileEmbeddingServiceClient__createClientConnection__block_invoke;
  v16[3] = &unk_278578C88;
  objc_copyWeak(&v17, &location);
  [(NSXPCConnection *)v9 setInterruptionHandler:v16];
  v10 = self->_xpcConnection;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__SSRSpeakerProfileEmbeddingServiceClient__createClientConnection__block_invoke_2;
  v14[3] = &unk_278578C88;
  objc_copyWeak(&v15, &location);
  [(NSXPCConnection *)v10 setInvalidationHandler:v14];
  v11 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v12 = self->_xpcConnection;
    *buf = 136315394;
    v20 = "[SSRSpeakerProfileEmbeddingServiceClient _createClientConnection]";
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s Setup connection: %@", buf, 0x16u);
  }

  [(NSXPCConnection *)self->_xpcConnection resume];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
  v13 = *MEMORY[0x277D85DE8];
}

void __66__SSRSpeakerProfileEmbeddingServiceClient__createClientConnection__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = [WeakRetained xpcConnection];
    v5 = [WeakRetained xpcConnection];
    *buf = 136315650;
    v11 = "[SSRSpeakerProfileEmbeddingServiceClient _createClientConnection]_block_invoke";
    v12 = 2114;
    v13 = v4;
    v14 = 1026;
    v15 = [v5 processIdentifier];
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s Client Interruption Handler: %{public}@, client PID: %{public}d)", buf, 0x1Cu);
  }

  if (WeakRetained)
  {
    v6 = [WeakRetained xpcConnection];

    if (v6)
    {
      v7 = [WeakRetained queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __66__SSRSpeakerProfileEmbeddingServiceClient__createClientConnection__block_invoke_7;
      block[3] = &unk_2785797A8;
      block[4] = WeakRetained;
      dispatch_async(v7, block);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __66__SSRSpeakerProfileEmbeddingServiceClient__createClientConnection__block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = [WeakRetained xpcConnection];
    v5 = [WeakRetained xpcConnection];
    *buf = 136315650;
    v11 = "[SSRSpeakerProfileEmbeddingServiceClient _createClientConnection]_block_invoke_2";
    v12 = 2114;
    v13 = v4;
    v14 = 1026;
    v15 = [v5 processIdentifier];
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s Client Invalidation Handler: %{public}@, client PID: %{public}d exited", buf, 0x1Cu);
  }

  if (WeakRetained)
  {
    v6 = [WeakRetained xpcConnection];

    if (v6)
    {
      v7 = [WeakRetained queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __66__SSRSpeakerProfileEmbeddingServiceClient__createClientConnection__block_invoke_8;
      block[3] = &unk_2785797A8;
      block[4] = WeakRetained;
      dispatch_async(v7, block);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __66__SSRSpeakerProfileEmbeddingServiceClient__createClientConnection__block_invoke_7(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcConnection];
  [v2 invalidate];

  v3 = *(a1 + 32);

  return [v3 setXpcConnection:0];
}

- (id)_remoteServiceProxyObjectWithErrorHandler:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D01970];
  v6 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[SSRSpeakerProfileEmbeddingServiceClient _remoteServiceProxyObjectWithErrorHandler:]";
    _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s Creating RemoteServiceProxy", buf, 0xCu);
  }

  xpcConnection = self->_xpcConnection;
  if (xpcConnection || ([(SSRSpeakerProfileEmbeddingServiceClient *)self _createClientConnection], (xpcConnection = self->_xpcConnection) != 0))
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __85__SSRSpeakerProfileEmbeddingServiceClient__remoteServiceProxyObjectWithErrorHandler___block_invoke;
    v12[3] = &unk_278579690;
    v13 = v4;
    v8 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v12];
  }

  else
  {
    v11 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v15 = "[SSRSpeakerProfileEmbeddingServiceClient _remoteServiceProxyObjectWithErrorHandler:]";
      _os_log_error_impl(&dword_225E12000, v11, OS_LOG_TYPE_ERROR, "%s ERR: _attendingConnection is nil", buf, 0xCu);
    }

    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

uint64_t __85__SSRSpeakerProfileEmbeddingServiceClient__remoteServiceProxyObjectWithErrorHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)refreshEmbeddingsforLanguageCode:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__SSRSpeakerProfileEmbeddingServiceClient_refreshEmbeddingsforLanguageCode_withCompletion___block_invoke;
  block[3] = &unk_278579218;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

void __91__SSRSpeakerProfileEmbeddingServiceClient_refreshEmbeddingsforLanguageCode_withCompletion___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __91__SSRSpeakerProfileEmbeddingServiceClient_refreshEmbeddingsforLanguageCode_withCompletion___block_invoke_2;
  v10[3] = &unk_2785795F0;
  v11 = *(a1 + 48);
  v3 = [v2 _remoteServiceProxyObjectWithErrorHandler:v10];
  if (v3)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __91__SSRSpeakerProfileEmbeddingServiceClient_refreshEmbeddingsforLanguageCode_withCompletion___block_invoke_4;
    v8[3] = &unk_278578008;
    v4 = *(a1 + 40);
    v9 = *(a1 + 48);
    [v3 refreshEmbeddingsforLanguageCode:v4 withCompletion:v8];
  }

  else
  {
    v5 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v13 = "[SSRSpeakerProfileEmbeddingServiceClient refreshEmbeddingsforLanguageCode:withCompletion:]_block_invoke";
      _os_log_error_impl(&dword_225E12000, v5, OS_LOG_TYPE_ERROR, "%s Cannot refresh embedding because remoteObjectProxy could not be setup", buf, 0xCu);
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      (*(v6 + 16))(v6, 0);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __91__SSRSpeakerProfileEmbeddingServiceClient_refreshEmbeddingsforLanguageCode_withCompletion___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315138;
    v6 = "[SSRSpeakerProfileEmbeddingServiceClient refreshEmbeddingsforLanguageCode:withCompletion:]_block_invoke_2";
    _os_log_error_impl(&dword_225E12000, v2, OS_LOG_TYPE_ERROR, "%s Error handler return completion block to nil", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))(result, 0);
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void __91__SSRSpeakerProfileEmbeddingServiceClient_refreshEmbeddingsforLanguageCode_withCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = MEMORY[0x277D01970];
  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v19 = "[SSRSpeakerProfileEmbeddingServiceClient refreshEmbeddingsforLanguageCode:withCompletion:]_block_invoke";
    _os_log_debug_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEBUG, "%s Sending Profile embeddings: ", buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v2;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *v3;
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
        {
          v11 = *(*(&v14 + 1) + 8 * v9);
          *buf = 136315394;
          v19 = "[SSRSpeakerProfileEmbeddingServiceClient refreshEmbeddingsforLanguageCode:withCompletion:]_block_invoke";
          v20 = 2112;
          v21 = v11;
          _os_log_debug_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEBUG, "%s %@", buf, 0x16u);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v7);
  }

  (*(*(a1 + 32) + 16))();
  v12 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(SSRSpeakerProfileEmbeddingServiceClient *)self invalidate];
  v3.receiver = self;
  v3.super_class = SSRSpeakerProfileEmbeddingServiceClient;
  [(SSRSpeakerProfileEmbeddingServiceClient *)&v3 dealloc];
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SSRSpeakerProfileEmbeddingServiceClient_invalidate__block_invoke;
  block[3] = &unk_2785797A8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __53__SSRSpeakerProfileEmbeddingServiceClient_invalidate__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SSRSpeakerProfileEmbeddingServiceClient invalidate]_block_invoke";
    _os_log_impl(&dword_225E12000, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v6, 0xCu);
  }

  [*(*(a1 + 32) + 24) invalidate];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = 0;

  v5 = *MEMORY[0x277D85DE8];
}

- (void)connectToServiceIfNeeded
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__SSRSpeakerProfileEmbeddingServiceClient_connectToServiceIfNeeded__block_invoke;
  block[3] = &unk_2785797A8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (SSRSpeakerProfileEmbeddingServiceClient)initWithDelegate:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SSRSpeakerProfileEmbeddingServiceClient;
  v5 = [(SSRSpeakerProfileEmbeddingServiceClient *)&v11 init];
  if (v5)
  {
    SSRLogInitIfNeeded();
    v6 = dispatch_queue_create("SSRSpeakerProfileEmbeddingServiceClient queue", 0);
    queue = v5->_queue;
    v5->_queue = v6;

    objc_storeWeak(&v5->_delegate, v4);
    v8 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[SSRSpeakerProfileEmbeddingServiceClient initWithDelegate:]";
      _os_log_impl(&dword_225E12000, v8, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

@end