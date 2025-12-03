@interface SSRVTUITrainingListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (SSRVTUITrainingListener)initWithMessageHandler:(id)handler;
- (void)listen;
@end

@implementation SSRVTUITrainingListener

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v32 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = MEMORY[0x277D015D8];
  v9 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v29 = "[SSRVTUITrainingListener listener:shouldAcceptNewConnection:]";
    v30 = 2112;
    v31 = connectionCopy;
    _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s Got new connection on attending service: %@", buf, 0x16u);
  }

  listener = self->_listener;
  if (listener == listenerCopy)
  {
    v12 = SSRVTUITrainingServiceGetXPCInterface();
    [(NSXPCListener *)connectionCopy setExportedInterface:v12];

    v13 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283937040];
    [(NSXPCListener *)connectionCopy setRemoteObjectInterface:v13];

    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__SSRVTUITrainingListener_listener_shouldAcceptNewConnection___block_invoke;
    block[3] = &unk_278579350;
    v15 = connectionCopy;
    v26 = v15;
    selfCopy = self;
    dispatch_sync(queue, block);
    objc_initWeak(buf, self);
    objc_initWeak(&location, v15);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __62__SSRVTUITrainingListener_listener_shouldAcceptNewConnection___block_invoke_2;
    v21[3] = &unk_2785785C0;
    objc_copyWeak(&v22, buf);
    objc_copyWeak(&v23, &location);
    [(NSXPCListener *)v15 setInterruptionHandler:v21];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __62__SSRVTUITrainingListener_listener_shouldAcceptNewConnection___block_invoke_2_4;
    v18[3] = &unk_2785785C0;
    objc_copyWeak(&v19, buf);
    objc_copyWeak(&v20, &location);
    [(NSXPCListener *)v15 setInvalidationHandler:v18];
    [(NSXPCListener *)v15 resume];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  else
  {
    v11 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v29 = "[SSRVTUITrainingListener listener:shouldAcceptNewConnection:]";
      v30 = 2114;
      v31 = listenerCopy;
      _os_log_error_impl(&dword_225E12000, v11, OS_LOG_TYPE_ERROR, "%s Invalid listener - %{public}@", buf, 0x16u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return listener == listenerCopy;
}

uint64_t __62__SSRVTUITrainingListener_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setExportedObject:*(*(a1 + 40) + 32)];
  v2 = *(*(a1 + 40) + 32);
  v3 = [*(a1 + 32) remoteObjectProxy];
  [v2 setRemoteObjectProxy:v3];

  v4 = [*(a1 + 40) activeConnection];

  if (v4)
  {
    v5 = [*(a1 + 40) activeConnection];
    [v5 setInvalidationHandler:0];

    v6 = [*(a1 + 40) activeConnection];
    [v6 invalidate];
  }

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  return [v7 setActiveConnection:v8];
}

void __62__SSRVTUITrainingListener_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = objc_loadWeakRetained((a1 + 40));
    v6 = v5;
    *buf = 136315906;
    v15 = "[SSRVTUITrainingListener listener:shouldAcceptNewConnection:]_block_invoke_2";
    v16 = 2114;
    v17 = @"com.apple.siri.ssrvtuitrainingservice.xpc";
    v18 = 2114;
    v19 = v5;
    v20 = 1026;
    v21 = [v6 processIdentifier];
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s [Service:%{public}@] Listener Interruption Handler: %{public}@, client PID: %{public}d)", buf, 0x26u);
  }

  v7 = objc_loadWeakRetained((a1 + 40));
  v8 = v7;
  if (WeakRetained && v7)
  {
    v9 = [WeakRetained queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __62__SSRVTUITrainingListener_listener_shouldAcceptNewConnection___block_invoke_3;
    v11[3] = &unk_278579350;
    v12 = v8;
    v13 = WeakRetained;
    dispatch_async(v9, v11);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __62__SSRVTUITrainingListener_listener_shouldAcceptNewConnection___block_invoke_2_4(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = objc_loadWeakRetained((a1 + 40));
    v6 = v5;
    *buf = 136315906;
    v13 = "[SSRVTUITrainingListener listener:shouldAcceptNewConnection:]_block_invoke_2";
    v14 = 2114;
    v15 = @"com.apple.siri.ssrvtuitrainingservice.xpc";
    v16 = 2114;
    v17 = v5;
    v18 = 1026;
    v19 = [v6 processIdentifier];
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s [Service:%{public}@] Listener Invalidation Handler: %{public}@, client PID: %{public}d exited", buf, 0x26u);
  }

  v7 = objc_loadWeakRetained((a1 + 40));
  v8 = v7;
  if (WeakRetained && v7)
  {
    v9 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__SSRVTUITrainingListener_listener_shouldAcceptNewConnection___block_invoke_5;
    block[3] = &unk_2785797A8;
    block[4] = WeakRetained;
    dispatch_async(v9, block);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __62__SSRVTUITrainingListener_listener_shouldAcceptNewConnection___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) setActiveConnection:0];
  v2 = [*(a1 + 32) messageHandler];
  [v2 setRemoteObjectProxy:0];

  v3 = [*(a1 + 32) messageHandler];
  [v3 vtuiTrainingXPCDisconnected];
}

void __62__SSRVTUITrainingListener_listener_shouldAcceptNewConnection___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setInvalidationHandler:0];
  [*(a1 + 32) invalidate];
  [*(a1 + 40) setActiveConnection:0];
  v2 = [*(a1 + 40) messageHandler];
  [v2 setRemoteObjectProxy:0];

  v3 = [*(a1 + 40) messageHandler];
  [v3 vtuiTrainingXPCDisconnected];
}

- (void)listen
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.siri.ssrvtuitrainingservice.xpc"];
  listener = self->_listener;
  self->_listener = v3;

  [(NSXPCListener *)self->_listener setDelegate:self];
  [(NSXPCListener *)self->_listener resume];
  v5 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[SSRVTUITrainingListener listen]";
    _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s SSRVTUITrainingListener start listening", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (SSRVTUITrainingListener)initWithMessageHandler:(id)handler
{
  handlerCopy = handler;
  v10.receiver = self;
  v10.super_class = SSRVTUITrainingListener;
  v6 = [(SSRVTUITrainingListener *)&v10 init];
  if (v6)
  {
    v7 = [MEMORY[0x277D018F8] getSerialQueue:@"SSRVTUITrainingListener Queue" qualityOfService:33];
    queue = v6->_queue;
    v6->_queue = v7;

    objc_storeStrong(&v6->_messageHandler, handler);
  }

  return v6;
}

@end