@interface SVXSystemObserver
- (SVXSystemObserver)initWithModule:(id)module;
- (void)_logSnapshot;
- (void)_startObservingInfo;
- (void)addDeviceContextListener:(id)listener;
- (void)dealloc;
- (void)deviceContextConnection:(id)connection didUpdateLocalDeviceContext:(id)context;
- (void)deviceContextConnectionDidInvalidate:(id)invalidate;
- (void)getLocalDeviceContextWithCompletion:(id)completion;
- (void)removeDeviceContextListener:(id)listener;
- (void)sessionDidChangeFromState:(int64_t)state toState:(int64_t)toState;
- (void)startWithModuleInstanceProvider:(id)provider platformDependencies:(id)dependencies;
- (void)stopWithModuleInstanceProvider:(id)provider;
@end

@implementation SVXSystemObserver

- (void)deviceContextConnection:(id)connection didUpdateLocalDeviceContext:(id)context
{
  v24 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  contextCopy = context;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    v13 = v8;
    identifier = [contextCopy identifier];
    *buf = 136315650;
    v19 = "[SVXSystemObserver deviceContextConnection:didUpdateLocalDeviceContext:]";
    v20 = 2112;
    v21 = connectionCopy;
    v22 = 2112;
    v23 = identifier;
    _os_log_debug_impl(&dword_2695B9000, v13, OS_LOG_TYPE_DEBUG, "%s deviceContextConnection = %@, localDeviceContext = %@", buf, 0x20u);
  }

  performer = [(SVXModule *)self->_module performer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __73__SVXSystemObserver_deviceContextConnection_didUpdateLocalDeviceContext___block_invoke;
  v15[3] = &unk_279C68ED0;
  v15[4] = self;
  v16 = connectionCopy;
  v17 = contextCopy;
  v10 = contextCopy;
  v11 = connectionCopy;
  [performer performBlock:v15];

  v12 = *MEMORY[0x277D85DE8];
}

void __73__SVXSystemObserver_deviceContextConnection_didUpdateLocalDeviceContext___block_invoke(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v1 = a1[5];
  if (*(v2 + 24) == v1)
  {
    v5 = a1[6];
    v6 = *MEMORY[0x277D85DE8];
    v7 = *(v2 + 16);

    [v7 localDeviceContextDidUpdate:v5];
  }

  else
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      v8 = *(v2 + 16);
      v9 = 136315650;
      v10 = "[SVXSystemObserver deviceContextConnection:didUpdateLocalDeviceContext:]_block_invoke";
      v11 = 2112;
      v12 = v8;
      v13 = 2112;
      v14 = v1;
      _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s Ignored because the device context connection is %@, not %@.", &v9, 0x20u);
    }

    v4 = *MEMORY[0x277D85DE8];
  }
}

- (void)deviceContextConnectionDidInvalidate:(id)invalidate
{
  v15 = *MEMORY[0x277D85DE8];
  invalidateCopy = invalidate;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v12 = "[SVXSystemObserver deviceContextConnectionDidInvalidate:]";
    v13 = 2112;
    v14 = invalidateCopy;
    _os_log_debug_impl(&dword_2695B9000, v5, OS_LOG_TYPE_DEBUG, "%s deviceContextConnection = %@", buf, 0x16u);
  }

  performer = [(SVXModule *)self->_module performer];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__SVXSystemObserver_deviceContextConnectionDidInvalidate___block_invoke;
  v9[3] = &unk_279C68FE8;
  v9[4] = self;
  v10 = invalidateCopy;
  v7 = invalidateCopy;
  [performer performBlock:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __58__SVXSystemObserver_deviceContextConnectionDidInvalidate___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 24);
  if (v4 != v2)
  {
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      v6 = *(v3 + 16);
      v18 = 136315650;
      v19 = "[SVXSystemObserver deviceContextConnectionDidInvalidate:]_block_invoke";
      v20 = 2112;
      v21 = v6;
      v22 = 2112;
      v23 = v2;
      _os_log_error_impl(&dword_2695B9000, v5, OS_LOG_TYPE_ERROR, "%s Ignored because the device context connection is %@, not %@.", &v18, 0x20u);
    }

LABEL_11:
    v17 = *MEMORY[0x277D85DE8];
    return;
  }

  [v4 invalidate];
  v7 = objc_alloc(MEMORY[0x277CEF248]);
  v8 = [*(*(a1 + 32) + 8) performer];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 queue];
  v11 = [*(*(a1 + 32) + 8) instanceContext];
  v12 = [v7 initWithQueue:v10 instanceContext:v11 delegate:*(a1 + 32)];
  v13 = *(a1 + 32);
  v14 = *(v13 + 24);
  *(v13 + 24) = v12;

  if (![*(*(a1 + 32) + 8) isActive])
  {
    goto LABEL_11;
  }

  v15 = *(a1 + 32);
  v16 = *MEMORY[0x277D85DE8];

  [v15 _startObservingDeviceContext];
}

- (void)_logSnapshot
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if ([v4 count])
  {
    analytics = [(SVXModule *)self->_module analytics];
    [analytics logEventWithType:3101 context:v4 contextNoCopy:1];
  }
}

- (void)_startObservingInfo
{
  v6 = *MEMORY[0x277D85DE8];
  [(SVXSystemObserver *)self _stopObservingInfo];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[SVXSystemObserver _startObservingInfo]";
    _os_log_error_impl(&dword_2695B9000, v2, OS_LOG_TYPE_ERROR, "%s SoundAutoConfig is not available on this platform.", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)sessionDidChangeFromState:(int64_t)state toState:(int64_t)toState
{
  if (toState == 2)
  {
    v8[7] = v4;
    v8[8] = v5;
    performer = [(SVXModule *)self->_module performer];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__SVXSystemObserver_sessionDidChangeFromState_toState___block_invoke;
    v8[3] = &unk_279C68FC0;
    v8[4] = self;
    [performer performBlock:v8];
  }
}

- (void)stopWithModuleInstanceProvider:(id)provider
{
  providerCopy = provider;
  [(SVXSystemObserver *)self _stopObservingInfo];
  [(SVXSystemObserver *)self _stopObservingDeviceContext];
  sessionManager = [providerCopy sessionManager];

  [sessionManager removeActivityListener:self];
}

- (void)startWithModuleInstanceProvider:(id)provider platformDependencies:(id)dependencies
{
  providerCopy = provider;
  [(SVXSystemObserver *)self _startObservingInfo];
  [(SVXSystemObserver *)self _startObservingDeviceContext];
  sessionManager = [providerCopy sessionManager];

  [sessionManager addActivityListener:self];
}

- (void)dealloc
{
  [(AFDeviceContextConnection *)self->_deviceContextConnection invalidate];
  deviceContextAnnouncer = self->_deviceContextAnnouncer;
  self->_deviceContextAnnouncer = 0;

  v4.receiver = self;
  v4.super_class = SVXSystemObserver;
  [(SVXSystemObserver *)&v4 dealloc];
}

- (SVXSystemObserver)initWithModule:(id)module
{
  moduleCopy = module;
  v16.receiver = self;
  v16.super_class = SVXSystemObserver;
  v6 = [(SVXSystemObserver *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_module, module);
    v8 = objc_alloc(MEMORY[0x277CEF248]);
    performer = [moduleCopy performer];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = performer;
    }

    else
    {
      v10 = 0;
    }

    queue = [v10 queue];
    instanceContext = [moduleCopy instanceContext];
    v13 = [v8 initWithQueue:queue instanceContext:instanceContext delegate:v7];
    deviceContextConnection = v7->_deviceContextConnection;
    v7->_deviceContextConnection = v13;
  }

  return v7;
}

- (void)getLocalDeviceContextWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    performer = [(SVXModule *)self->_module performer];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __57__SVXSystemObserver_getLocalDeviceContextWithCompletion___block_invoke;
    v6[3] = &unk_279C68EF8;
    v6[4] = self;
    v7 = completionCopy;
    [performer performBlock:v6];
  }
}

- (void)removeDeviceContextListener:(id)listener
{
  listenerCopy = listener;
  performer = [(SVXModule *)self->_module performer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__SVXSystemObserver_removeDeviceContextListener___block_invoke;
  v7[3] = &unk_279C68FE8;
  v7[4] = self;
  v8 = listenerCopy;
  v6 = listenerCopy;
  [performer performBlock:v7];
}

- (void)addDeviceContextListener:(id)listener
{
  listenerCopy = listener;
  performer = [(SVXModule *)self->_module performer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__SVXSystemObserver_addDeviceContextListener___block_invoke;
  v7[3] = &unk_279C68FE8;
  v7[4] = self;
  v8 = listenerCopy;
  v6 = listenerCopy;
  [performer performBlock:v7];
}

uint64_t __46__SVXSystemObserver_addDeviceContextListener___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    v3 = objc_alloc_init(SVXDeviceContextAnnouncer);
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    v2 = *(*(a1 + 32) + 16);
  }

  v6 = *(a1 + 40);

  return [v2 addListener:v6];
}

@end