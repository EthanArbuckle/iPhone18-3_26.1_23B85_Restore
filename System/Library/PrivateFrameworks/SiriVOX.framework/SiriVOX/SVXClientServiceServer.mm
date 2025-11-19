@interface SVXClientServiceServer
- (SVXClientServiceServer)initWithModule:(id)a3;
- (void)_addConnection:(id)a3;
- (void)_removeAllConnections;
- (void)_removeConnection:(id)a3;
- (void)addConnection:(id)a3;
- (void)dealloc;
- (void)removeConnection:(id)a3;
- (void)startWithModuleInstanceProvider:(id)a3 platformDependencies:(id)a4;
- (void)stopWithModuleInstanceProvider:(id)a3;
@end

@implementation SVXClientServiceServer

- (void)_removeAllConnections
{
  connectionsByUUID = self->_connectionsByUUID;
  self->_connectionsByUUID = 0;
  v3 = connectionsByUUID;

  [(NSMutableDictionary *)v3 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_5522];
}

void __47__SVXClientServiceServer__removeAllConnections__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[SVXClientServiceServer _removeAllConnections]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_debug_impl(&dword_2695B9000, v4, OS_LOG_TYPE_DEBUG, "%s connection = %@", &v6, 0x16u);
  }

  [v3 invalidate];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_removeConnection:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 uuid];
  v6 = [(NSMutableDictionary *)self->_connectionsByUUID objectForKey:v5];

  if (v6)
  {
    v7 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
    {
      v9 = 136315394;
      v10 = "[SVXClientServiceServer _removeConnection:]";
      v11 = 2112;
      v12 = v4;
      _os_log_debug_impl(&dword_2695B9000, v7, OS_LOG_TYPE_DEBUG, "%s connection = %@", &v9, 0x16u);
    }

    [(NSMutableDictionary *)self->_connectionsByUUID removeObjectForKey:v5];
    [v4 invalidate];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_addConnection:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 uuid];
  v6 = [(NSMutableDictionary *)self->_connectionsByUUID objectForKey:v5];

  if (!v6)
  {
    v7 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315394;
      v13 = "[SVXClientServiceServer _addConnection:]";
      v14 = 2112;
      v15 = v4;
      _os_log_debug_impl(&dword_2695B9000, v7, OS_LOG_TYPE_DEBUG, "%s connection = %@", &v12, 0x16u);
    }

    connectionsByUUID = self->_connectionsByUUID;
    if (!connectionsByUUID)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v10 = self->_connectionsByUUID;
      self->_connectionsByUUID = v9;

      connectionsByUUID = self->_connectionsByUUID;
    }

    [(NSMutableDictionary *)connectionsByUUID setObject:v4 forKey:v5];
    [v4 configureWithDeviceSetupManager:self->_deviceSetupManager sessionManager:self->_sessionManager speechSynthesizer:self->_speechSynthesizer synthesisManager:self->_synthesisManager];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)stopWithModuleInstanceProvider:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[SVXClientServiceServer stopWithModuleInstanceProvider:]";
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s ", &v10, 0xCu);
  }

  [(SVXClientServiceServer *)self _removeAllConnections];
  speechSynthesizer = self->_speechSynthesizer;
  self->_speechSynthesizer = 0;

  sessionManager = self->_sessionManager;
  self->_sessionManager = 0;

  deviceSetupManager = self->_deviceSetupManager;
  self->_deviceSetupManager = 0;

  synthesisManager = self->_synthesisManager;
  self->_synthesisManager = 0;

  v9 = *MEMORY[0x277D85DE8];
}

- (void)startWithModuleInstanceProvider:(id)a3 platformDependencies:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v16 = 136315138;
    v17 = "[SVXClientServiceServer startWithModuleInstanceProvider:platformDependencies:]";
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s ", &v16, 0xCu);
  }

  [(SVXClientServiceServer *)self _removeAllConnections];
  v7 = [v5 sessionManager];
  sessionManager = self->_sessionManager;
  self->_sessionManager = v7;

  v9 = [v5 speechSynthesizer];
  speechSynthesizer = self->_speechSynthesizer;
  self->_speechSynthesizer = v9;

  v11 = [v5 deviceSetupManager];
  deviceSetupManager = self->_deviceSetupManager;
  self->_deviceSetupManager = v11;

  v13 = [v5 synthesisManager];
  synthesisManager = self->_synthesisManager;
  self->_synthesisManager = v13;

  v15 = *MEMORY[0x277D85DE8];
}

- (SVXClientServiceServer)initWithModule:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SVXClientServiceServer;
  v6 = [(SVXClientServiceServer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_module, a3);
  }

  return v7;
}

- (void)removeConnection:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[SVXClientServiceServer removeConnection:]";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s connection = %@", buf, 0x16u);
  }

  v6 = [(SVXModule *)self->_module performer];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__SVXClientServiceServer_removeConnection___block_invoke;
  v9[3] = &unk_279C68FE8;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  [v6 performBlock:v9];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)addConnection:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[SVXClientServiceServer addConnection:]";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s connection = %@", buf, 0x16u);
  }

  v6 = [(SVXModule *)self->_module performer];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__SVXClientServiceServer_addConnection___block_invoke;
  v9[3] = &unk_279C68FE8;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  [v6 performBlock:v9];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(SVXClientServiceServer *)self _removeAllConnections];
  v3.receiver = self;
  v3.super_class = SVXClientServiceServer;
  [(SVXClientServiceServer *)&v3 dealloc];
}

@end