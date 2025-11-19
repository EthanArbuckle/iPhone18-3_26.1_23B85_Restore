@interface _STSpeechTranslatorManager
+ (id)_keyForProxy:(id)a3;
+ (id)sharedInstance;
- (_STSpeechTranslatorManager)init;
- (id)_addToClientListWithIdentifier:(id)a3 clientPeer:(id)a4 xpcConnection:(id)a5;
- (id)_makeClientListWithConfiguration:(id)a3 clientPeer:(id)a4;
- (id)_remoteObjectProxyForConnection:(id)a3 isPrimary:(BOOL)a4;
- (void)_cleanUpPrimaryClientPeerWithKey:(id)a3;
- (void)makePeerWithConfiguration:(id)a3 inReply:(id)a4;
- (void)makePeerWithIdentifier:(id)a3 inReply:(id)a4;
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

- (void)makePeerWithConfiguration:(id)a3 inReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCAE80] currentConnection];
  if (v8)
  {
    v9 = [(_STSpeechTranslatorManager *)self _remoteObjectProxyForConnection:v8 isPrimary:1];
    if (v9)
    {
      v10 = [(_STSpeechTranslatorManager *)self _makeClientListWithConfiguration:v6 clientPeer:v9];
      [(_STSELFLoggingClient *)self->_selfClient registerClientList:v10 configuration:v6];
      v7[2](v7, v10);
    }

    else
    {
      v12 = _LTOSLogSTMultiprocess();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [_STSpeechTranslatorManager makePeerWithConfiguration:inReply:];
      }

      v7[2](v7, 0);
    }
  }

  else
  {
    v11 = _LTOSLogSTMultiprocess();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_STSpeechTranslatorManager makePeerWithConfiguration:inReply:];
    }

    v7[2](v7, 0);
  }
}

- (void)makePeerWithIdentifier:(id)a3 inReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCAE80] currentConnection];
  if (v8)
  {
    v9 = [(_STSpeechTranslatorManager *)self _remoteObjectProxyForConnection:v8 isPrimary:0];
    if (v9)
    {
      v10 = [(_STSpeechTranslatorManager *)self _addToClientListWithIdentifier:v6 clientPeer:v9 xpcConnection:v8];
      v7[2](v7, v10);
    }

    else
    {
      v12 = _LTOSLogSTMultiprocess();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [_STSpeechTranslatorManager makePeerWithIdentifier:inReply:];
      }

      v7[2](v7, 0);
    }
  }

  else
  {
    v11 = _LTOSLogSTMultiprocess();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_STSpeechTranslatorManager makePeerWithIdentifier:inReply:];
    }

    v7[2](v7, 0);
  }
}

+ (id)_keyForProxy:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [a3 hash];

  return [v3 numberWithUnsignedInteger:v4];
}

- (id)_remoteObjectProxyForConnection:(id)a3 isPrimary:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = +[_STSpeechTranslatorClientXPCInterface interface];
  [v6 setRemoteObjectInterface:v7];

  v8 = [v6 remoteObjectProxy];
  v9 = v8;
  if (v8 && ([v8 conformsToProtocol:&unk_287C1DBE0] & 1) != 0)
  {
    if (v4)
    {
      v10 = [_STSpeechTranslatorManager _keyForProxy:v9];
      objc_initWeak(&location, self);
      objc_initWeak(&from, v6);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __72___STSpeechTranslatorManager__remoteObjectProxyForConnection_isPrimary___block_invoke;
      v15[3] = &unk_279CF7EA0;
      objc_copyWeak(&v17, &location);
      objc_copyWeak(&v18, &from);
      v11 = v10;
      v16 = v11;
      [v6 setInterruptionHandler:v15];
      v12 = [v6 interruptionHandler];
      [v6 setInvalidationHandler:v12];

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

- (id)_makeClientListWithConfiguration:(id)a3 clientPeer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[_STSpeechTranslatorClientList alloc] initWithConfiguration:v7 clientPeer:v6];

  v9 = [(_STSpeechTranslatorClientList *)v8 identifier];
  v10 = [_STSpeechTranslatorManager _keyForProxy:v6];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __74___STSpeechTranslatorManager__makeClientListWithConfiguration_clientPeer___block_invoke;
  v17[3] = &unk_279CF7E28;
  v17[4] = self;
  v18 = v9;
  v11 = v8;
  v19 = v11;
  v20 = v10;
  v12 = v10;
  v13 = v9;
  os_unfair_lock_assert_not_owner(&self->_stateLock);
  os_unfair_lock_lock(&self->_stateLock);
  __74___STSpeechTranslatorManager__makeClientListWithConfiguration_clientPeer___block_invoke(v17);
  os_unfair_lock_unlock(&self->_stateLock);
  v14 = v20;
  v15 = v11;

  return v11;
}

- (id)_addToClientListWithIdentifier:(id)a3 clientPeer:(id)a4 xpcConnection:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
  v18 = self;
  v11 = v8;
  v19 = v11;
  v12 = v15;
  os_unfair_lock_assert_not_owner(&self->_stateLock);
  os_unfair_lock_lock(&self->_stateLock);
  v16(v12);

  os_unfair_lock_unlock(&self->_stateLock);
  [v22[5] addSecondaryClientPeer:v9 withXPCConnection:v10];
  v13 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v13;
}

- (void)_cleanUpPrimaryClientPeerWithKey:(id)a3
{
  v4 = a3;
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
  v10 = self;
  v5 = v4;
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