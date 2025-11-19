@interface WFSingleConnectionXPCListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (NSXPCListenerEndpoint)endpoint;
- (WFSingleConnectionXPCListener)initWithExportedObject:(id)a3 exportedInterface:(id)a4;
@end

@implementation WFSingleConnectionXPCListener

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(WFSingleConnectionXPCListener *)self activeConnection];

  v9 = getWFVoiceShortcutClientLogObject();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v23 = "[WFSingleConnectionXPCListener listener:shouldAcceptNewConnection:]";
      _os_log_impl(&dword_1B1DE3000, v10, OS_LOG_TYPE_ERROR, "%s Not accepting new connection since there is already an active one.", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v23 = "[WFSingleConnectionXPCListener listener:shouldAcceptNewConnection:]";
      v24 = 2112;
      v25 = self;
      _os_log_impl(&dword_1B1DE3000, v10, OS_LOG_TYPE_DEFAULT, "%s Received incoming XPC connection for listener: %@", buf, 0x16u);
    }

    [(WFSingleConnectionXPCListener *)self setActiveConnection:v7];
    objc_initWeak(buf, self);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __68__WFSingleConnectionXPCListener_listener_shouldAcceptNewConnection___block_invoke;
    v20[3] = &unk_1E7B02828;
    objc_copyWeak(&v21, buf);
    [v7 setInvalidationHandler:v20];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __68__WFSingleConnectionXPCListener_listener_shouldAcceptNewConnection___block_invoke_63;
    v18 = &unk_1E7B02828;
    objc_copyWeak(&v19, buf);
    [v7 setInterruptionHandler:&v15];
    v11 = [(WFSingleConnectionXPCListener *)self exportedInterface:v15];
    [v7 setExportedInterface:v11];

    v12 = [(WFSingleConnectionXPCListener *)self exportedObject];
    [v7 setExportedObject:v12];

    [v7 resume];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v8 == 0;
}

void __68__WFSingleConnectionXPCListener_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[WFSingleConnectionXPCListener listener:shouldAcceptNewConnection:]_block_invoke";
    _os_log_impl(&dword_1B1DE3000, v2, OS_LOG_TYPE_ERROR, "%s Connection to dialog was invalidated.", &v4, 0xCu);
  }

  [WeakRetained setActiveConnection:0];
  v3 = *MEMORY[0x1E69E9840];
}

void __68__WFSingleConnectionXPCListener_listener_shouldAcceptNewConnection___block_invoke_63(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[WFSingleConnectionXPCListener listener:shouldAcceptNewConnection:]_block_invoke";
    _os_log_impl(&dword_1B1DE3000, v2, OS_LOG_TYPE_ERROR, "%s Connection to dialog was interrupted", &v4, 0xCu);
  }

  [WeakRetained setActiveConnection:0];
  v3 = *MEMORY[0x1E69E9840];
}

- (NSXPCListenerEndpoint)endpoint
{
  v2 = [(WFSingleConnectionXPCListener *)self listener];
  v3 = [v2 endpoint];

  return v3;
}

- (WFSingleConnectionXPCListener)initWithExportedObject:(id)a3 exportedInterface:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"WFSingleConnectionXPCListener.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"exportedObject"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"WFSingleConnectionXPCListener.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"exportedInterface"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = WFSingleConnectionXPCListener;
  v11 = [(WFSingleConnectionXPCListener *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_exportedObject, a3);
    objc_storeStrong(&v12->_exportedInterface, a4);
    v13 = [MEMORY[0x1E696B0D8] anonymousListener];
    listener = v12->_listener;
    v12->_listener = v13;

    [(NSXPCListener *)v12->_listener setDelegate:v12];
    [(NSXPCListener *)v12->_listener resume];
    v15 = v12;
  }

  return v12;
}

@end