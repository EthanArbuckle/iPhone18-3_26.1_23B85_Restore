@interface _STXPCClient
- (BOOL)_setUpXPCConnectionWithDelegate:(id)delegate;
- (BOOL)setUpPeerForDelegate:(id)delegate context:(id)context;
- (_STSpeechTranslatorService)synchronousTranslatorPeer;
- (_STXPCClient)init;
- (_STXPCClient)initWithXPCConnection:(id)connection;
- (id)_fetchRemoteTranslatorPeer;
- (void)_fetchRemoteTranslatorPeer;
- (void)dealloc;
- (void)invalidate;
- (void)synchronousTranslatorPeer;
@end

@implementation _STXPCClient

- (_STXPCClient)init
{
  v3 = +[_STXPCServerInterface machService];
  v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:v3 options:0];
  v5 = [(_STXPCClient *)self initWithXPCConnection:v4];

  return v5;
}

- (_STXPCClient)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  v10.receiver = self;
  v10.super_class = _STXPCClient;
  v5 = [(_STXPCClient *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(_STXPCClient *)v5 setXpcConnection:connectionCopy];
    v7 = v6;
  }

  else
  {
    v8 = _LTOSLogSTMultiprocess();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [_STXPCClient initWithXPCConnection:];
    }
  }

  return v6;
}

- (void)invalidate
{
  xpcConnection = [(_STXPCClient *)self xpcConnection];
  [xpcConnection invalidate];

  [(_STXPCClient *)self setXpcConnection:0];
}

- (BOOL)setUpPeerForDelegate:(id)delegate context:(id)context
{
  delegateCopy = delegate;
  [(_STXPCClient *)self setPeerProviderContext:context];
  LODWORD(context) = [(_STXPCClient *)self _setUpXPCConnectionWithDelegate:delegateCopy];

  if (!context)
  {
    return 0;
  }

  _fetchRemoteTranslatorPeer = [(_STXPCClient *)self _fetchRemoteTranslatorPeer];
  [(_STXPCClient *)self setTranslatorPeer:_fetchRemoteTranslatorPeer];

  translatorPeer = [(_STXPCClient *)self translatorPeer];
  v9 = translatorPeer != 0;

  return v9;
}

- (_STSpeechTranslatorService)synchronousTranslatorPeer
{
  translatorPeer = [(_STXPCClient *)self translatorPeer];
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __41___STXPCClient_synchronousTranslatorPeer__block_invoke;
    v7[3] = &unk_279CF7C48;
    objc_copyWeak(&v8, &location);
    v4 = [translatorPeer synchronousRemoteObjectProxyWithErrorHandler:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  else
  {
    v5 = _LTOSLogSTMultiprocess();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [_STXPCClient synchronousTranslatorPeer];
    }

    v4 = 0;
  }

  return v4;
}

- (BOOL)_setUpXPCConnectionWithDelegate:(id)delegate
{
  v31 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  _exportedInterface = [(_STXPCClient *)self _exportedInterface];
  protocol = [_exportedInterface protocol];
  v7 = [delegateCopy conformsToProtocol:protocol];

  if (v7)
  {
    v8 = +[_STXPCServerInterface interface];
    xpcConnection = [(_STXPCClient *)self xpcConnection];
    [xpcConnection setRemoteObjectInterface:v8];

    xpcConnection2 = [(_STXPCClient *)self xpcConnection];
    [xpcConnection2 setExportedInterface:_exportedInterface];

    xpcConnection3 = [(_STXPCClient *)self xpcConnection];
    [xpcConnection3 setExportedObject:delegateCopy];

    objc_initWeak(location, self);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __48___STXPCClient__setUpXPCConnectionWithDelegate___block_invoke;
    v24[3] = &unk_279CF7FC0;
    objc_copyWeak(&v25, location);
    xpcConnection4 = [(_STXPCClient *)self xpcConnection];
    [xpcConnection4 setInterruptionHandler:v24];

    v22 = MEMORY[0x277D85DD0];
    objc_copyWeak(&v23, location);
    v13 = [(_STXPCClient *)self xpcConnection:v22];
    [v13 setInvalidationHandler:&v22];

    xpcConnection5 = [(_STXPCClient *)self xpcConnection];
    [xpcConnection5 activate];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v25);
    objc_destroyWeak(location);
  }

  else
  {
    v15 = _LTOSLogSTMultiprocess();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = v15;
      protocol2 = [_exportedInterface protocol];
      v20 = NSStringFromProtocol(protocol2);
      peerProviderContext = [(_STXPCClient *)self peerProviderContext];
      *location = 134218498;
      *&location[4] = delegateCopy;
      v27 = 2114;
      v28 = v20;
      v29 = 2114;
      v30 = peerProviderContext;
      _os_log_error_impl(&dword_26B5BC000, v18, OS_LOG_TYPE_ERROR, "delegate: %p does NOT conform to exportedInterface protocol: %{public}@ with peerProviderContext: %{public}@", location, 0x20u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)_fetchRemoteTranslatorPeer
{
  v27 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  xpcConnection = [(_STXPCClient *)self xpcConnection];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __42___STXPCClient__fetchRemoteTranslatorPeer__block_invoke;
  v18[3] = &unk_279CF7C48;
  objc_copyWeak(&v19, &location);
  v4 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v18];

  v5 = v4;
  v6 = v5;
  if (v5 && ([v5 conformsToProtocol:&unk_287C1F0D0]& 1) != 0)
  {
    *buf = 0;
    v22 = buf;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__1;
    v25 = __Block_byref_object_dispose__1;
    v26 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __42___STXPCClient__fetchRemoteTranslatorPeer__block_invoke_54;
    aBlock[3] = &unk_279CF7FE8;
    aBlock[4] = buf;
    v7 = _Block_copy(aBlock);
    peerProviderContext = [(_STXPCClient *)self peerProviderContext];
    type = [peerProviderContext type];

    if (type == 2)
    {
      peerProviderContext2 = [(_STXPCClient *)self peerProviderContext];
      identifier = [peerProviderContext2 identifier];
      [v6 makePeerWithIdentifier:identifier inReply:v7];
    }

    else
    {
      if (type != 1)
      {
LABEL_11:
        v14 = *(v22 + 5);

        _Block_object_dispose(buf, 8);
        v12 = v6;
        goto LABEL_12;
      }

      peerProviderContext2 = [(_STXPCClient *)self peerProviderContext];
      identifier = [peerProviderContext2 configuration];
      [v6 makePeerWithConfiguration:identifier inReply:v7];
    }

    goto LABEL_11;
  }

  v12 = _LTOSLogSTMultiprocess();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    xpcConnection2 = [(_STXPCClient *)self xpcConnection];
    [(_STXPCClient *)xpcConnection2 _fetchRemoteTranslatorPeer:v6];
  }

  v14 = 0;
LABEL_12:

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)dealloc
{
  [(_STXPCClient *)self invalidate];
  v3.receiver = self;
  v3.super_class = _STXPCClient;
  [(_STXPCClient *)&v3 dealloc];
}

- (void)initWithXPCConnection:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1(&dword_26B5BC000, v0, v1, "Failed to super init _STXPCClient with xpcConnection: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)synchronousTranslatorPeer
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1(&dword_26B5BC000, v0, v1, "Synchronous peer cannot be derived from asynchronous peer: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_fetchRemoteTranslatorPeer
{
  *buf = 138543874;
  *(buf + 4) = 0;
  *(buf + 6) = 2114;
  *(buf + 14) = self;
  *(buf + 11) = 2114;
  *(buf + 3) = a2;
  _os_log_error_impl(&dword_26B5BC000, log, OS_LOG_TYPE_ERROR, "xpcService: %{public}@ for connection: %{public}@, serverProxy: %{public}@", buf, 0x20u);
}

@end