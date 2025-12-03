@interface QLExtension
- (QLExtension)initWithExtension:(id)extension;
- (void)_callExtensionRequestHandlers;
- (void)_invalidate;
- (void)_invalidateAndCancelExtensionRequest;
- (void)_setupConnectionIfNeededWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)extensionContextWithCompletionHandler:(id)handler;
- (void)invalidateAndCancelExtensionRequest;
- (void)registerClient:(id)client;
- (void)unregisterClient:(id)client;
@end

@implementation QLExtension

- (QLExtension)initWithExtension:(id)extension
{
  extensionCopy = extension;
  v22.receiver = self;
  v22.super_class = QLExtension;
  v6 = [(QLExtension *)&v22 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.quicklook.qlextension.request", 0);
    queue = v6->_queue;
    v6->_queue = v7;

    v9 = dispatch_queue_create("com.apple.quicklook.qlextension.request", MEMORY[0x277D85CD8]);
    completionHandlersQueue = v6->_completionHandlersQueue;
    v6->_completionHandlersQueue = v9;

    objc_storeStrong(&v6->_extension, extension);
    v11 = objc_opt_new();
    observers = v6->_observers;
    v6->_observers = v11;

    v6->_externalResourcesPermission = 0;
    objc_initWeak(&location, v6);
    v13 = [QLGracePeriodTimer alloc];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __33__QLExtension_initWithExtension___block_invoke;
    v19[3] = &unk_279ADB5C8;
    objc_copyWeak(&v20, &location);
    v14 = [(QLGracePeriodTimer *)v13 initWithAction:v19 callbackQueue:v6->_queue delay:*&QLExtensionGracePeriodDelay];
    gracePeriodTimer = v6->_gracePeriodTimer;
    v6->_gracePeriodTimer = v14;

    v16 = objc_opt_new();
    extensionRequestHandlers = v6->_extensionRequestHandlers;
    v6->_extensionRequestHandlers = v16;

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __33__QLExtension_initWithExtension___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateAndCancelExtensionRequest];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = QLExtension;
  [(QLExtension *)&v2 dealloc];
}

- (void)_setupConnectionIfNeededWithCompletionHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_queue);
  extensionRequestHandlers = self->_extensionRequestHandlers;
  v6 = MEMORY[0x2667062A0](handlerCopy);
  [(NSMutableArray *)extensionRequestHandlers addObject:v6];

  if (self->_connection)
  {
    [(QLExtension *)self _callExtensionRequestHandlers];
  }

  else if (!self->_isRequestingExtension)
  {
    self->_isRequestingExtension = 1;
    extension = self->_extension;
    v21 = 0;
    v8 = [(NSExtension *)extension beginExtensionRequestWithOptions:1 inputItems:0 error:&v21];
    v9 = v21;
    self->_isRequestingExtension = 0;
    if (v8)
    {
      extension = [(QLExtension *)self extension];
      v11 = [extension _extensionContextForUUID:v8];
      [(QLExtension *)self setContext:v11];

      context = [(QLExtension *)self context];
      _auxiliaryConnection = [context _auxiliaryConnection];
      [(QLExtension *)self setConnection:_auxiliaryConnection];

      [(QLExtension *)self setRequestIdentifier:v8];
      objc_initWeak(location, self);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __61__QLExtension__setupConnectionIfNeededWithCompletionHandler___block_invoke;
      v19[3] = &unk_279ADB5C8;
      objc_copyWeak(&v20, location);
      connection = [(QLExtension *)self connection];
      [connection setInterruptionHandler:v19];

      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __61__QLExtension__setupConnectionIfNeededWithCompletionHandler___block_invoke_3;
      v17[3] = &unk_279ADB5C8;
      objc_copyWeak(&v18, location);
      connection2 = [(QLExtension *)self connection];
      [connection2 setInvalidationHandler:v17];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&v20);
      objc_destroyWeak(location);
    }

    else
    {
      v16 = _qlsLogHandle;
      if (!_qlsLogHandle)
      {
        QLSInitLogging();
        v16 = _qlsLogHandle;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        *location = 138412546;
        *&location[4] = self;
        v23 = 2112;
        v24 = v9;
        _os_log_impl(&dword_2615AE000, v16, OS_LOG_TYPE_FAULT, "%@: error while instantiating extension's object: %@ #Remote", location, 0x16u);
      }
    }

    [(QLExtension *)self _callExtensionRequestHandlers];
  }
}

void __61__QLExtension__setupConnectionIfNeededWithCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__QLExtension__setupConnectionIfNeededWithCompletionHandler___block_invoke_2;
    block[3] = &unk_279ADB5C8;
    objc_copyWeak(&v6, (a1 + 32));
    dispatch_async(v4, block);

    objc_destroyWeak(&v6);
  }
}

void __61__QLExtension__setupConnectionIfNeededWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidate];
}

void __61__QLExtension__setupConnectionIfNeededWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__QLExtension__setupConnectionIfNeededWithCompletionHandler___block_invoke_4;
    block[3] = &unk_279ADB5C8;
    objc_copyWeak(&v6, (a1 + 32));
    dispatch_async(v4, block);

    objc_destroyWeak(&v6);
  }
}

void __61__QLExtension__setupConnectionIfNeededWithCompletionHandler___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidate];
}

- (void)_callExtensionRequestHandlers
{
  v13 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_extensionRequestHandlers;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        dispatch_async(self->_completionHandlersQueue, *(*(&v8 + 1) + 8 * v7++));
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_extensionRequestHandlers removeAllObjects];
}

- (void)_invalidateAndCancelExtensionRequest
{
  v6 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (self->_connection)
  {
    v3 = _qlsLogHandle;
    if (!_qlsLogHandle)
    {
      QLSInitLogging();
      v3 = _qlsLogHandle;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_2615AE000, v3, OS_LOG_TYPE_DEBUG, "%@: cancelling extension request #Extensions", &v4, 0xCu);
    }

    if (self->_requestIdentifier)
    {
      [(NSExtension *)self->_extension cancelExtensionRequestWithIdentifier:?];
    }

    [(QLExtension *)self _invalidate];
  }
}

- (void)_invalidate
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _qlsLogHandle;
  if (!_qlsLogHandle)
  {
    QLSInitLogging();
    v3 = _qlsLogHandle;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_2615AE000, v3, OS_LOG_TYPE_DEBUG, "%@: invalidating extension connection #Extensions", &v7, 0xCu);
  }

  requestIdentifier = self->_requestIdentifier;
  self->_requestIdentifier = 0;

  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;

  context = self->_context;
  self->_context = 0;
}

- (void)registerClient:(id)client
{
  clientCopy = client;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __30__QLExtension_registerClient___block_invoke;
  v7[3] = &unk_279ADB358;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_sync(queue, v7);
}

void __30__QLExtension_registerClient___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) gracePeriodTimer];
  [v2 suppress];

  v3 = [*(a1 + 32) observers];
  [v3 addObject:*(a1 + 40)];
}

- (void)unregisterClient:(id)client
{
  clientCopy = client;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__QLExtension_unregisterClient___block_invoke;
  v7[3] = &unk_279ADB358;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_sync(queue, v7);
}

void __32__QLExtension_unregisterClient___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];

  v3 = [*(a1 + 32) observers];
  v4 = [v3 count];

  if (!v4)
  {
    v5 = _qlsLogHandle;
    if (!_qlsLogHandle)
    {
      QLSInitLogging();
      v5 = _qlsLogHandle;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 32);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_2615AE000, v5, OS_LOG_TYPE_DEBUG, "Arming timer to invalidate QLExtension %@ because there is no more active observer. #Extensions", &v8, 0xCu);
    }

    v7 = [*(a1 + 32) gracePeriodTimer];
    [v7 arm];
  }
}

- (void)extensionContextWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__QLExtension_extensionContextWithCompletionHandler___block_invoke;
  v7[3] = &unk_279ADB618;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __53__QLExtension_extensionContextWithCompletionHandler___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__QLExtension_extensionContextWithCompletionHandler___block_invoke_2;
  v4[3] = &unk_279ADB5F0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 _setupConnectionIfNeededWithCompletionHandler:v4];
}

void __53__QLExtension_extensionContextWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) context];
  (*(v1 + 16))(v1, v2);
}

- (void)invalidateAndCancelExtensionRequest
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__QLExtension_invalidateAndCancelExtensionRequest__block_invoke;
  block[3] = &unk_279ADB330;
  block[4] = self;
  dispatch_sync(queue, block);
}

@end