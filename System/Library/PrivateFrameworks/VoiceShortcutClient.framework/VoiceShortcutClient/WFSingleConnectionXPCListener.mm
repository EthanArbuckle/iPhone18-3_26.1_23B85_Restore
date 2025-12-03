@interface WFSingleConnectionXPCListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NSXPCListenerEndpoint)endpoint;
- (WFSingleConnectionXPCListener)initWithExportedObject:(id)object exportedInterface:(id)interface;
@end

@implementation WFSingleConnectionXPCListener

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v26 = *MEMORY[0x1E69E9840];
  listenerCopy = listener;
  connectionCopy = connection;
  activeConnection = [(WFSingleConnectionXPCListener *)self activeConnection];

  v9 = getWFVoiceShortcutClientLogObject();
  v10 = v9;
  if (activeConnection)
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
      selfCopy = self;
      _os_log_impl(&dword_1B1DE3000, v10, OS_LOG_TYPE_DEFAULT, "%s Received incoming XPC connection for listener: %@", buf, 0x16u);
    }

    [(WFSingleConnectionXPCListener *)self setActiveConnection:connectionCopy];
    objc_initWeak(buf, self);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __68__WFSingleConnectionXPCListener_listener_shouldAcceptNewConnection___block_invoke;
    v20[3] = &unk_1E7B02828;
    objc_copyWeak(&v21, buf);
    [connectionCopy setInvalidationHandler:v20];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __68__WFSingleConnectionXPCListener_listener_shouldAcceptNewConnection___block_invoke_63;
    v18 = &unk_1E7B02828;
    objc_copyWeak(&v19, buf);
    [connectionCopy setInterruptionHandler:&v15];
    v11 = [(WFSingleConnectionXPCListener *)self exportedInterface:v15];
    [connectionCopy setExportedInterface:v11];

    exportedObject = [(WFSingleConnectionXPCListener *)self exportedObject];
    [connectionCopy setExportedObject:exportedObject];

    [connectionCopy resume];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }

  v13 = *MEMORY[0x1E69E9840];
  return activeConnection == 0;
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
  listener = [(WFSingleConnectionXPCListener *)self listener];
  endpoint = [listener endpoint];

  return endpoint;
}

- (WFSingleConnectionXPCListener)initWithExportedObject:(id)object exportedInterface:(id)interface
{
  objectCopy = object;
  interfaceCopy = interface;
  v10 = interfaceCopy;
  if (objectCopy)
  {
    if (interfaceCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSingleConnectionXPCListener.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"exportedObject"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFSingleConnectionXPCListener.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"exportedInterface"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = WFSingleConnectionXPCListener;
  v11 = [(WFSingleConnectionXPCListener *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_exportedObject, object);
    objc_storeStrong(&v12->_exportedInterface, interface);
    anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
    listener = v12->_listener;
    v12->_listener = anonymousListener;

    [(NSXPCListener *)v12->_listener setDelegate:v12];
    [(NSXPCListener *)v12->_listener resume];
    v15 = v12;
  }

  return v12;
}

@end