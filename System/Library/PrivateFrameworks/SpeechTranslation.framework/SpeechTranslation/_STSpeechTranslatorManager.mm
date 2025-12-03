@interface _STSpeechTranslatorManager
+ (id)_keyForProxy:(id)proxy;
+ (id)sharedInstance;
- (_STSpeechTranslatorManager)init;
- (id)_addToClientListWithIdentifier:(id)identifier clientPeer:(id)peer xpcConnection:(id)connection;
- (id)_makeClientListWithConfiguration:(id)configuration clientPeer:(id)peer;
- (id)_remoteObjectProxyForConnection:(id)connection isPrimary:(BOOL)primary;
- (void)_cleanUpPrimaryClientPeerWithKey:(id)key;
- (void)makePeerWithConfiguration:(id)configuration inReply:(id)reply;
- (void)makePeerWithIdentifier:(id)identifier inReply:(id)reply;
@end

@implementation _STSpeechTranslatorManager

- (_STSpeechTranslatorManager)init
{
  v12.receiver = self;
  v12.super_class = _STSpeechTranslatorManager;
  v2 = [(_STSpeechTranslatorManager *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    clientLists = v2->_clientLists;
    v2->_clientLists = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    clientPeerToClientListIDMap = v2->_clientPeerToClientListIDMap;
    v2->_clientPeerToClientListIDMap = v5;

    v7 = objc_alloc_init(_STSELFLoggingClient);
    selfClient = v2->_selfClient;
    v2->_selfClient = v7;

    v2->_stateLock._os_unfair_lock_opaque = 0;
    v9 = v2;
  }

  else
  {
    v10 = _LTOSLogSTMultiprocess();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(_STSpeechTranslatorManager *)v10 init];
    }
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken[0] != -1)
  {
    +[_STSpeechTranslatorManager sharedInstance];
  }

  v3 = sharedInstance__instance;

  return v3;
}

- (void)makePeerWithConfiguration:(id)configuration inReply:(id)reply
{
  configurationCopy = configuration;
  replyCopy = reply;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  if (currentConnection)
  {
    v9 = [(_STSpeechTranslatorManager *)self _remoteObjectProxyForConnection:currentConnection isPrimary:1];
    if (v9)
    {
      v10 = [(_STSpeechTranslatorManager *)self _makeClientListWithConfiguration:configurationCopy clientPeer:v9];
      [(_STSELFLoggingClient *)self->_selfClient registerClientList:v10 configuration:configurationCopy];
      replyCopy[2](replyCopy, v10);
    }

    else
    {
      v12 = _LTOSLogSTMultiprocess();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [_STSpeechTranslatorManager makePeerWithConfiguration:inReply:];
      }

      replyCopy[2](replyCopy, 0);
    }
  }

  else
  {
    v11 = _LTOSLogSTMultiprocess();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_STSpeechTranslatorManager makePeerWithConfiguration:inReply:];
    }

    replyCopy[2](replyCopy, 0);
  }
}

- (void)makePeerWithIdentifier:(id)identifier inReply:(id)reply
{
  identifierCopy = identifier;
  replyCopy = reply;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  if (currentConnection)
  {
    v9 = [(_STSpeechTranslatorManager *)self _remoteObjectProxyForConnection:currentConnection isPrimary:0];
    if (v9)
    {
      v10 = [(_STSpeechTranslatorManager *)self _addToClientListWithIdentifier:identifierCopy clientPeer:v9 xpcConnection:currentConnection];
      replyCopy[2](replyCopy, v10);
    }

    else
    {
      v12 = _LTOSLogSTMultiprocess();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [_STSpeechTranslatorManager makePeerWithIdentifier:inReply:];
      }

      replyCopy[2](replyCopy, 0);
    }
  }

  else
  {
    v11 = _LTOSLogSTMultiprocess();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_STSpeechTranslatorManager makePeerWithIdentifier:inReply:];
    }

    replyCopy[2](replyCopy, 0);
  }
}

+ (id)_keyForProxy:(id)proxy
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [proxy hash];

  return [v3 numberWithUnsignedInteger:v4];
}

- (id)_remoteObjectProxyForConnection:(id)connection isPrimary:(BOOL)primary
{
  primaryCopy = primary;
  connectionCopy = connection;
  v7 = +[_STSpeechTranslatorClientXPCInterface interface];
  [connectionCopy setRemoteObjectInterface:v7];

  remoteObjectProxy = [connectionCopy remoteObjectProxy];
  v9 = remoteObjectProxy;
  if (remoteObjectProxy && ([remoteObjectProxy conformsToProtocol:&unk_287C1DBE0] & 1) != 0)
  {
    if (primaryCopy)
    {
      v10 = [_STSpeechTranslatorManager _keyForProxy:v9];
      objc_initWeak(&location, self);
      objc_initWeak(&from, connectionCopy);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __72___STSpeechTranslatorManager__remoteObjectProxyForConnection_isPrimary___block_invoke;
      v15[3] = &unk_279CF7EA0;
      objc_copyWeak(&v17, &location);
      objc_copyWeak(&v18, &from);
      v11 = v10;
      v16 = v11;
      [connectionCopy setInterruptionHandler:v15];
      interruptionHandler = [connectionCopy interruptionHandler];
      [connectionCopy setInvalidationHandler:interruptionHandler];

      v9 = v9;
      objc_destroyWeak(&v18);
      objc_destroyWeak(&v17);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }
  }

  else
  {

    v13 = _LTOSLogSTMultiprocess();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [_STSpeechTranslatorManager _remoteObjectProxyForConnection:isPrimary:];
    }

    v9 = 0;
  }

  return v9;
}

- (id)_makeClientListWithConfiguration:(id)configuration clientPeer:(id)peer
{
  peerCopy = peer;
  configurationCopy = configuration;
  v8 = [[_STSpeechTranslatorClientList alloc] initWithConfiguration:configurationCopy clientPeer:peerCopy];

  identifier = [(_STSpeechTranslatorClientList *)v8 identifier];
  v10 = [_STSpeechTranslatorManager _keyForProxy:peerCopy];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __74___STSpeechTranslatorManager__makeClientListWithConfiguration_clientPeer___block_invoke;
  v17[3] = &unk_279CF7E28;
  v17[4] = self;
  v18 = identifier;
  v11 = v8;
  v19 = v11;
  v20 = v10;
  v12 = v10;
  v13 = identifier;
  os_unfair_lock_assert_not_owner(&self->_stateLock);
  os_unfair_lock_lock(&self->_stateLock);
  __74___STSpeechTranslatorManager__makeClientListWithConfiguration_clientPeer___block_invoke(v17);
  os_unfair_lock_unlock(&self->_stateLock);
  v14 = v20;
  v15 = v11;

  return v11;
}

- (id)_addToClientListWithIdentifier:(id)identifier clientPeer:(id)peer xpcConnection:(id)connection
{
  identifierCopy = identifier;
  peerCopy = peer;
  connectionCopy = connection;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v26 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v16 = __86___STSpeechTranslatorManager__addToClientListWithIdentifier_clientPeer_xpcConnection___block_invoke;
  v17 = &unk_279CF7F70;
  v20 = &v21;
  selfCopy = self;
  v11 = identifierCopy;
  v19 = v11;
  v12 = v15;
  os_unfair_lock_assert_not_owner(&self->_stateLock);
  os_unfair_lock_lock(&self->_stateLock);
  v16(v12);

  os_unfair_lock_unlock(&self->_stateLock);
  [v22[5] addSecondaryClientPeer:peerCopy withXPCConnection:connectionCopy];
  v13 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v13;
}

- (void)_cleanUpPrimaryClientPeerWithKey:(id)key
{
  keyCopy = key;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v8 = __63___STSpeechTranslatorManager__cleanUpPrimaryClientPeerWithKey___block_invoke;
  v9 = &unk_279CF7F98;
  selfCopy = self;
  v5 = keyCopy;
  v11 = v5;
  v12 = &v13;
  v6 = v7;
  os_unfair_lock_assert_not_owner(&self->_stateLock);
  os_unfair_lock_lock(&self->_stateLock);
  v8(v6);

  os_unfair_lock_unlock(&self->_stateLock);
  [v14[5] invalidate];

  _Block_object_dispose(&v13, 8);
}

- (void)makePeerWithConfiguration:inReply:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0(&dword_26B5BC000, v0, v1, "Failed to get clientPeer with configuration: %{public}@ connection: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)makePeerWithConfiguration:inReply:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1(&dword_26B5BC000, v0, v1, "Failed to get currentConnection with configuration: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)makePeerWithIdentifier:inReply:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0(&dword_26B5BC000, v0, v1, "Failed to get clientPeer with identifier: %{public}@ connection: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)makePeerWithIdentifier:inReply:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1(&dword_26B5BC000, v0, v1, "Failed to get currentConnection with identifier: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_remoteObjectProxyForConnection:isPrimary:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1(&dword_26B5BC000, v0, v1, "No async proxy from connection: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end