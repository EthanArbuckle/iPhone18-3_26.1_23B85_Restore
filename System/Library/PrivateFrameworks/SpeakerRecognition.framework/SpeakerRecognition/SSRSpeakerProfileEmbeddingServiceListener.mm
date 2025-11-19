@interface SSRSpeakerProfileEmbeddingServiceListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (SSRSpeakerProfileEmbeddingServiceListener)init;
- (void)resumeConnection;
@end

@implementation SSRSpeakerProfileEmbeddingServiceListener

- (void)resumeConnection
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[SSRSpeakerProfileEmbeddingServiceListener resumeConnection]";
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__SSRSpeakerProfileEmbeddingServiceListener_resumeConnection__block_invoke;
  block[3] = &unk_2785797A8;
  block[4] = self;
  dispatch_async(queue, block);
  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277D01970];
  v9 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v39 = "[SSRSpeakerProfileEmbeddingServiceListener listener:shouldAcceptNewConnection:]";
    v40 = 2112;
    v41 = v7;
    _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s Got new connection on speaker profile embedding service: %@", buf, 0x16u);
  }

  if (self->_listener != v6)
  {
    v10 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v39 = "[SSRSpeakerProfileEmbeddingServiceListener listener:shouldAcceptNewConnection:]";
      v40 = 2114;
      v41 = v6;
      v11 = "%s Invalid listener - %{public}@";
      v12 = v10;
      v13 = 22;
LABEL_10:
      _os_log_error_impl(&dword_225E12000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (([MEMORY[0x277D018F8] xpcConnection:v7 hasEntitlement:@"siri.speakerprofile.embedding.service.xpc"] & 1) == 0)
  {
    [(NSXPCListener *)v7 invalidate];
    v23 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v39 = "[SSRSpeakerProfileEmbeddingServiceListener listener:shouldAcceptNewConnection:]";
      v11 = "%s Rejecting connection due to entitlement";
      v12 = v23;
      v13 = 12;
      goto LABEL_10;
    }

LABEL_11:
    v22 = 0;
    goto LABEL_12;
  }

  v14 = SSRSpeakerProfileEmbeddingServiceGetXPCInterface();
  [(NSXPCListener *)v7 setExportedInterface:v14];

  v15 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283948D38];
  [(NSXPCListener *)v7 setRemoteObjectInterface:v15];

  v16 = [[SSRSpeakerProfileEmbeddingMessageHandler alloc] initWithConnection:v7];
  v17 = [(NSXPCListener *)v7 remoteObjectProxy];
  [(SSRSpeakerProfileEmbeddingMessageHandler *)v16 setupListenerDelegate:v17];

  [(NSXPCListener *)v7 setExportedObject:v16];
  objc_initWeak(buf, self);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __80__SSRSpeakerProfileEmbeddingServiceListener_listener_shouldAcceptNewConnection___block_invoke;
  v35[3] = &unk_2785791F0;
  objc_copyWeak(&v37, buf);
  v18 = v16;
  v36 = v18;
  [(NSXPCListener *)v7 setInvalidationHandler:v35];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __80__SSRSpeakerProfileEmbeddingServiceListener_listener_shouldAcceptNewConnection___block_invoke_3;
  v32[3] = &unk_2785791F0;
  objc_copyWeak(&v34, buf);
  v19 = v18;
  v33 = v19;
  [(NSXPCListener *)v7 setInterruptionHandler:v32];
  v20 = [(SSRSpeakerProfileEmbeddingServiceListener *)self queue];
  v26 = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = __80__SSRSpeakerProfileEmbeddingServiceListener_listener_shouldAcceptNewConnection___block_invoke_5;
  v29 = &unk_278579350;
  v30 = self;
  v21 = v19;
  v31 = v21;
  dispatch_async(v20, &v26);

  [(NSXPCListener *)v7 resume:v26];
  objc_destroyWeak(&v34);

  objc_destroyWeak(&v37);
  objc_destroyWeak(buf);

  v22 = 1;
LABEL_12:

  v24 = *MEMORY[0x277D85DE8];
  return v22;
}

void __80__SSRSpeakerProfileEmbeddingServiceListener_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained queue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __80__SSRSpeakerProfileEmbeddingServiceListener_listener_shouldAcceptNewConnection___block_invoke_2;
  v4[3] = &unk_278579350;
  v4[4] = WeakRetained;
  v5 = *(a1 + 32);
  dispatch_async(v3, v4);
}

void __80__SSRSpeakerProfileEmbeddingServiceListener_listener_shouldAcceptNewConnection___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained queue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __80__SSRSpeakerProfileEmbeddingServiceListener_listener_shouldAcceptNewConnection___block_invoke_4;
  v4[3] = &unk_278579350;
  v4[4] = WeakRetained;
  v5 = *(a1 + 32);
  dispatch_async(v3, v4);
}

void __80__SSRSpeakerProfileEmbeddingServiceListener_listener_shouldAcceptNewConnection___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) messageHandlers];
  [v2 addObject:*(a1 + 40)];
}

void __80__SSRSpeakerProfileEmbeddingServiceListener_listener_shouldAcceptNewConnection___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) messageHandlers];
  [v2 removeObject:*(a1 + 40)];
}

void __80__SSRSpeakerProfileEmbeddingServiceListener_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) messageHandlers];
  [v2 removeObject:*(a1 + 40)];
}

- (SSRSpeakerProfileEmbeddingServiceListener)init
{
  v15 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = SSRSpeakerProfileEmbeddingServiceListener;
  v2 = [(SSRSpeakerProfileEmbeddingServiceListener *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D018F8] getSerialQueue:@"SSRSpeakerProfileEmbeddingServiceListener Queue" qualityOfService:21];
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.siri.speakerprofile.embedding.service.xpc"];
    listener = v2->_listener;
    v2->_listener = v5;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    v7 = [MEMORY[0x277CBEB18] array];
    messageHandlers = v2->_messageHandlers;
    v2->_messageHandlers = v7;

    v9 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "[SSRSpeakerProfileEmbeddingServiceListener init]";
      _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s SSRSpeakerProfileEmbeddingServiceListener start listening", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v2;
}

@end