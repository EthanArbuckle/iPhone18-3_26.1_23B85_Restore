@interface TUCallServicesInterface
- (BOOL)hasServerLaunched;
- (BOOL)isServerLocal;
- (BOOL)isUnknownAddress:(id)address normalizedAddress:(id)normalizedAddress forBundleIdentifier:(id)identifier;
- (BOOL)validateIMAVPush:(id)push;
- (BOOL)willRestrictAddresses:(id)addresses forBundleIdentifier:(id)identifier;
- (NSArray)currentCalls;
- (NSString)debugDescription;
- (NSXPCConnection)xpcConnection;
- (TUCallCenter)callCenter;
- (TUCallContainerPrivate)callContainer;
- (TUCallServicesXPCServer)asynchronousServer;
- (TUCallServicesXPCServer)server;
- (id)_proxyCallWithCall:(id)call;
- (id)_proxyCallWithUniqueProxyIdentifier:(id)identifier;
- (id)asynchronousServerWithErrorHandler:(id)handler;
- (id)customGreetingForAccountUUID:(id)d;
- (id)defaultGreeting;
- (id)dialWithRequest:(id)request completion:(id)completion;
- (id)fetchCurrentCallUpdates;
- (id)joinConversationWithRequest:(id)request;
- (id)policyForAddresses:(id)addresses forBundleIdentifier:(id)identifier;
- (id)routesByUniqueIdentifierForRouteController:(id)controller;
- (id)synchronousServerWithErrorHandler:(id)handler;
- (unint64_t)filterStatusForAddresses:(id)addresses forBundleIdentifier:(id)identifier;
- (void)_handleCurrentCallsChanged:(id)changed callsDisconnected:(id)disconnected;
- (void)_ignorePendingServerDisconnectionHandlers;
- (void)_performSmartHoldingRequest:(id)request completion:(id)completion;
- (void)_registerCall:(id)call;
- (void)_setUpXPCConnection;
- (void)_tearDownXPCConnection;
- (void)_updateCurrentCalls:(id)calls;
- (void)_updateCurrentCalls:(id)calls withNotificationsUsingUpdatedCalls:(id)updatedCalls;
- (void)_updateCurrentCallsWithoutNotifications:(id)notifications;
- (void)activateInCallUIWithActivityContinuationIdentifier:(id)identifier;
- (void)addScreenSharingType:(unint64_t)type forCallWithUniqueProxyIdentifier:(id)identifier;
- (void)answerCallWithRequest:(id)request;
- (void)dealloc;
- (void)deleteCustomGreetingForAccountUUID:(id)d;
- (void)disconnectAllCalls;
- (void)disconnectCallWithUniqueProxyIdentifier:(id)identifier;
- (void)disconnectCurrentCall;
- (void)disconnectCurrentCallAndActivateHeld;
- (void)enteredBackgroundForAllCalls;
- (void)enteredForegroundForCallWithUniqueProxyIdentifier:(id)identifier;
- (void)fetchAnonymousXPCEndpoint:(id)endpoint;
- (void)fetchCurrentCalls;
- (void)groupCallWithUniqueProxyIdentifier:(id)identifier withOtherCallWithUniqueProxyIdentifier:(id)proxyIdentifier;
- (void)handleCurrentCallsChanged:(id)changed callDisconnected:(id)disconnected;
- (void)handleFrequencyChangedTo:(id)to inDirection:(int)direction forCallsWithUniqueProxyIdentifiers:(id)identifiers;
- (void)handleLocalRoutesByUniqueIdentifierUpdated:(id)updated;
- (void)handleMeterLevelChangedTo:(float)to inDirection:(int)direction forCallsWithUniqueProxyIdentifiers:(id)identifiers;
- (void)handleNewCaptionsResult:(id)result;
- (void)handleNotificationName:(id)name forCallWithUniqueProxyIdentifier:(id)identifier userInfo:(id)info;
- (void)handlePairedHostDeviceRoutesByUniqueIdentifierUpdated:(id)updated;
- (void)handlePairedHostVolumeChanged:(float)changed;
- (void)handleReceivedCallDTMFUpdate:(id)update forCallWithUniqueProxyIdentifier:(id)identifier;
- (void)handleServerDisconnect;
- (void)handleServerDisconnectIfNecessary;
- (void)handleServerReconnect;
- (void)handleUIXPCEndpointChanged:(id)changed;
- (void)holdCallWithUniqueProxyIdentifier:(id)identifier;
- (void)performBlockOnQueue:(id)queue andWait:(BOOL)wait;
- (void)performRecordingRequest:(id)request completion:(id)completion;
- (void)performSmartHoldingRequest:(id)request completion:(id)completion;
- (void)performTranslationRequest:(id)request completion:(id)completion;
- (void)pullCallFromClientUsingHandoffActivityUserInfo:(id)info completion:(id)completion;
- (void)pullHostedCallsFromPairedHostDevice;
- (void)pullPersistedChannel:(id)channel;
- (void)pullRelayingCallsFromClient;
- (void)pullRelayingGFTCallsFromClientIfNecessary;
- (void)pushHostedCallsToDestination:(id)destination;
- (void)pushRelayingCallsToHostWithSourceIdentifier:(id)identifier;
- (void)registerAnonymousXPCEndpoint:(id)endpoint;
- (void)registerCall:(id)call;
- (void)reportLocalPreviewStoppedForCallWithUniqueProxyIdentifier:(id)identifier;
- (void)requestCurrentStateWithCompletionHandler:(id)handler;
- (void)requestCurrentStateWithCompletionHandler:(id)handler handleInitialState:(id)state;
- (void)requestVideoUpgradeForCallWithUniqueProxyIdentifier:(id)identifier;
- (void)resetCallProvisionalStates;
- (void)routesByUniqueIdentifierForRouteController:(id)controller completionHandler:(id)handler;
- (void)saveCustomGreeting:(id)greeting forAccountUUID:(id)d;
- (void)screenWithRequest:(id)request;
- (void)sendHardPauseDigitsForCallWithUniqueProxyIdentifier:(id)identifier;
- (void)sendMMIOrUSSDCodeWithRequest:(id)request;
- (void)sendReceptionistReply:(id)reply;
- (void)setBluetoothAudioFormatForCallWithUniqueProxyIdentifier:(id)identifier bluetoothAudioFormat:(int64_t)format;
- (void)setClientCapabilities:(id)capabilities;
- (void)setCurrentAudioInputDeviceToDeviceWithUID:(id)d;
- (void)setCurrentAudioOutputDeviceToDeviceWithUID:(id)d;
- (void)setEmergencyMediaItems:(id)items forCallWithUniqueProxyIdentifier:(id)identifier;
- (void)setLiveVoicemailUnavailableReason:(int64_t)reason forCallWithUniqueProxyIdentifier:(id)identifier;
- (void)setRemoteVideoPresentationSizeForCallWithUniqueProxyIdentifier:(id)identifier size:(CGSize)size;
- (void)setScreenShareAttributesForCallWithUniqueProxyIdentifier:(id)identifier attributes:(id)attributes;
- (void)setVolume:(float)volume forRouteController:(id)controller;
- (void)startReceptionistReply;
- (void)swapCalls;
- (void)tearDownXPCConnection;
- (void)ungroupCallWithUniqueProxyIdentifier:(id)identifier;
- (void)unholdCallWithUniqueProxyIdentifier:(id)identifier;
- (void)updateCallWithProxy:(id)proxy;
- (void)waitForInitialStateIfNecessary;
- (void)willEnterBackgroundForAllCalls;
@end

@implementation TUCallServicesInterface

- (TUCallContainerPrivate)callContainer
{
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = [TUCallContainer alloc];
  currentCalls = [(TUCallServicesInterface *)self currentCalls];
  v6 = [(TUCallContainer *)v4 initWithCalls:currentCalls];

  return v6;
}

- (NSArray)currentCalls
{
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  [(TUCallServicesInterface *)self waitForInitialStateIfNecessary];
  currentCalls = self->_currentCalls;

  return currentCalls;
}

- (void)waitForInitialStateIfNecessary
{
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  if (!self->_currentCalls)
  {
    if (![(TUCallServicesInterface *)self hasRequestedInitialState])
    {
      [(TUCallServicesInterface *)self requestCurrentStateWithCompletionHandler:0];
    }

    v4 = TUDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Waiting for initial state", v5, 2u);
    }

    [(TUCallServicesInterface *)self fetchCurrentCalls];
  }
}

- (NSXPCConnection)xpcConnection
{
  xpcConnection = self->_xpcConnection;
  if (!xpcConnection)
  {
    [(TUCallServicesInterface *)self _setUpXPCConnection];
    xpcConnection = self->_xpcConnection;
  }

  return xpcConnection;
}

- (TUCallServicesXPCServer)asynchronousServer
{
  server = [(TUCallServicesInterface *)self server];
  v4 = server;
  if (server)
  {
    remoteObjectProxy = server;
  }

  else
  {
    xpcConnection = [(TUCallServicesInterface *)self xpcConnection];
    remoteObjectProxy = [xpcConnection remoteObjectProxy];
  }

  return remoteObjectProxy;
}

- (void)_setUpXPCConnection
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "%@: Setting up XPC connection", buf, 0xCu);
  }

  v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.telephonyutilities.callservicesdaemon.callstatecontroller" options:0];
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = v4;

  callServicesServerXPCInterface = [MEMORY[0x1E696B0B8] callServicesServerXPCInterface];
  [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:callServicesServerXPCInterface];

  callServicesClientXPCInterface = [MEMORY[0x1E696B0B8] callServicesClientXPCInterface];
  [(NSXPCConnection *)self->_xpcConnection setExportedInterface:callServicesClientXPCInterface];

  [(NSXPCConnection *)self->_xpcConnection setExportedObject:self];
  objc_initWeak(buf, self);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __46__TUCallServicesInterface__setUpXPCConnection__block_invoke;
  v14[3] = &unk_1E7424998;
  objc_copyWeak(&v15, buf);
  [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:v14];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __46__TUCallServicesInterface__setUpXPCConnection__block_invoke_20;
  v12 = &unk_1E7424998;
  objc_copyWeak(&v13, buf);
  [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:&v9];
  [(NSXPCConnection *)self->_xpcConnection resume:v9];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasServerLaunched
{
  v12 = *MEMORY[0x1E69E9840];
  hasServerLaunched = self->_hasServerLaunched;
  if (!hasServerLaunched)
  {
    if ([(TUCallServicesInterface *)self isServerLocal])
    {
      hasServerLaunched = 1;
LABEL_9:
      self->_hasServerLaunched = hasServerLaunched;
      goto LABEL_10;
    }

    state64 = 0;
    state = notify_get_state([(TUCallServicesInterface *)self connectionRequestNotificationToken], &state64);
    if (!state)
    {
      hasServerLaunched = state64 != 0;
      goto LABEL_9;
    }

    v5 = state;
    v6 = TUDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v11 = v5;
      _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "[WARN] Bad status received attempting to get server launched state: %d", buf, 8u);
    }

    hasServerLaunched = self->_hasServerLaunched;
  }

LABEL_10:
  v7 = *MEMORY[0x1E69E9840];
  return hasServerLaunched;
}

- (BOOL)isServerLocal
{
  server = [(TUCallServicesInterface *)self server];
  v3 = server != 0;

  return v3;
}

- (TUCallServicesXPCServer)server
{
  WeakRetained = objc_loadWeakRetained(&self->_server);

  return WeakRetained;
}

- (void)fetchCurrentCalls
{
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Proxying fetch current calls", buf, 2u);
  }

  [(TUCallServicesInterface *)self _ignorePendingServerDisconnectionHandlers];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__TUCallServicesInterface_fetchCurrentCalls__block_invoke;
  v7[3] = &unk_1E7425828;
  v7[4] = self;
  v5 = [(TUCallServicesInterface *)self synchronousServerWithErrorHandler:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__TUCallServicesInterface_fetchCurrentCalls__block_invoke_26;
  v6[3] = &unk_1E74264A8;
  v6[4] = self;
  [v5 requestInitialState:v6];
}

- (void)_ignorePendingServerDisconnectionHandlers
{
  xpcConnection = [(TUCallServicesInterface *)self xpcConnection];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__TUCallServicesInterface__ignorePendingServerDisconnectionHandlers__block_invoke;
  v4[3] = &unk_1E7424950;
  v4[4] = self;
  [xpcConnection performBlockOnQueue:v4];
}

void __44__TUCallServicesInterface_fetchCurrentCalls__block_invoke_27(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [*(a1 + 40) _proxyCallWithCall:v7];
        [v7 setComparativeCall:v8];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  [*(a1 + 40) _updateCurrentCalls:*(a1 + 32) withNotificationsUsingUpdatedCalls:v2];

  v9 = *MEMORY[0x1E69E9840];
}

void __44__TUCallServicesInterface_fetchCurrentCalls__block_invoke_26(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Received current state with calls for synchronousServer: %@", buf, 0xCu);
  }

  [*(a1 + 32) setHasReceivedInitialState:1];
  v5 = [*(a1 + 32) callNotificationManager];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__TUCallServicesInterface_fetchCurrentCalls__block_invoke_27;
  v9[3] = &unk_1E7424898;
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v7 = v3;
  [v5 deferNotificationsUntilAfterPerformingBlock:v9];

  v8 = *MEMORY[0x1E69E9840];
}

- (TUCallCenter)callCenter
{
  WeakRetained = objc_loadWeakRetained(&self->_callCenter);

  return WeakRetained;
}

void __88__TUCallServicesInterface_initWithQueue_callCenter_wantsCallNotifications_featureFlags___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "com.apple.telephonyutilities.callservicesdaemon.connectionrequest";
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Handling %s by requesting current state", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setHasReceivedInitialState:0];
  v4 = [MEMORY[0x1E695DF00] now];
  [WeakRetained setLastDaemonConnectTime:v4];

  [WeakRetained _tearDownXPCConnection];
  [WeakRetained handleServerReconnect];

  v5 = *MEMORY[0x1E69E9840];
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  currentCalls = [(TUCallServicesInterface *)self currentCalls];
  v6 = [v3 stringWithFormat:@"<%@ %p calls=%@>", v4, self, currentCalls];

  return v6;
}

- (void)dealloc
{
  notify_cancel(self->_connectionRequestNotificationToken);
  [(TUCallServicesInterface *)self _tearDownXPCConnection];
  dispatch_queue_set_specific(self->_queue, [(TUCallServicesInterface *)self queueContext], 0, 0);
  v3.receiver = self;
  v3.super_class = TUCallServicesInterface;
  [(TUCallServicesInterface *)&v3 dealloc];
}

- (id)asynchronousServerWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  server = [(TUCallServicesInterface *)self server];
  v6 = server;
  if (server)
  {
    v7 = server;
  }

  else
  {
    xpcConnection = [(TUCallServicesInterface *)self xpcConnection];
    v7 = [xpcConnection remoteObjectProxyWithErrorHandler:handlerCopy];
  }

  return v7;
}

- (id)synchronousServerWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  server = [(TUCallServicesInterface *)self server];
  v6 = server;
  if (server)
  {
    v7 = server;
  }

  else
  {
    xpcConnection = [(TUCallServicesInterface *)self xpcConnection];
    v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];
  }

  return v7;
}

void __46__TUCallServicesInterface__setUpXPCConnection__block_invoke(uint64_t a1)
{
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "XPC connection invalidated", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setShouldHandleServerDisconnect:1];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__TUCallServicesInterface__setUpXPCConnection__block_invoke_18;
  v4[3] = &unk_1E7424950;
  v4[4] = WeakRetained;
  [WeakRetained performBlockOnQueue:v4];
}

uint64_t __46__TUCallServicesInterface__setUpXPCConnection__block_invoke_18(uint64_t a1)
{
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Handling XPC connection invalidation", v4, 2u);
  }

  [*(a1 + 32) handleServerDisconnectIfNecessary];
  return [*(a1 + 32) _tearDownXPCConnection];
}

void __46__TUCallServicesInterface__setUpXPCConnection__block_invoke_20(uint64_t a1)
{
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "XPC connection interrupted", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setShouldHandleServerDisconnect:1];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__TUCallServicesInterface__setUpXPCConnection__block_invoke_21;
  v4[3] = &unk_1E7424950;
  v4[4] = WeakRetained;
  [WeakRetained performBlockOnQueue:v4];
}

uint64_t __46__TUCallServicesInterface__setUpXPCConnection__block_invoke_21(uint64_t a1)
{
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Handling XPC connection interruption", v4, 2u);
  }

  return [*(a1 + 32) handleServerDisconnectIfNecessary];
}

- (void)_tearDownXPCConnection
{
  [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:0];
  [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:0];
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = 0;
}

- (void)_registerCall:(id)call
{
  callCopy = call;
  queue = [(TUCallServicesInterface *)self queue];
  [callCopy setQueue:queue];

  [callCopy setCallServicesInterface:self];
}

- (void)_updateCurrentCalls:(id)calls
{
  v35 = *MEMORY[0x1E69E9840];
  callsCopy = calls;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    currentCalls = self->_currentCalls;
    *buf = 138412546;
    v32 = currentCalls;
    v33 = 2112;
    v34 = callsCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "_currentCalls: %@ currentCalls: %@", buf, 0x16u);
  }

  if (![(NSArray *)self->_currentCalls isEqualToArray:callsCopy]&& self->_currentCalls != callsCopy)
  {
    array = [MEMORY[0x1E695DF70] array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v8 = callsCopy;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      do
      {
        v12 = 0;
        do
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [(TUCallServicesInterface *)self _proxyCallWithCall:*(*(&v25 + 1) + 8 * v12)];
          [(NSArray *)array addObject:v13];

          ++v12;
        }

        while (v10 != v12);
        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v10);
    }

    [(TUCallServicesInterface *)self setLocalProxyCalls:array];
    if ([(TUCallServicesInterface *)self isServerLocal])
    {
      v14 = v8;
    }

    else
    {
      v14 = array;
    }

    [(TUCallServicesInterface *)self setCurrentCalls:v14];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v15 = self->_currentCalls;
    v16 = [(NSArray *)v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v22;
      do
      {
        v19 = 0;
        do
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [(TUCallServicesInterface *)self _registerCall:*(*(&v21 + 1) + 8 * v19++), v21];
        }

        while (v17 != v19);
        v17 = [(NSArray *)v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v17);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_updateCurrentCallsWithoutNotifications:(id)notifications
{
  v18 = *MEMORY[0x1E69E9840];
  notificationsCopy = notifications;
  [(TUCallServicesInterface *)self _updateCurrentCalls:notificationsCopy];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = notificationsCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [(TUCallServicesInterface *)self _proxyCallWithCall:v10, v13];
        [v11 updateWithCall:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_updateCurrentCalls:(id)calls withNotificationsUsingUpdatedCalls:(id)updatedCalls
{
  v25 = *MEMORY[0x1E69E9840];
  updatedCallsCopy = updatedCalls;
  [(TUCallServicesInterface *)self _updateCurrentCalls:calls];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = updatedCallsCopy;
  v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v20 + 1) + 8 * v10);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __82__TUCallServicesInterface__updateCurrentCalls_withNotificationsUsingUpdatedCalls___block_invoke;
        aBlock[3] = &unk_1E7424950;
        aBlock[4] = v11;
        v12 = _Block_copy(aBlock);
        if ([(TUCallServicesInterface *)self isServerLocal])
        {
          comparativeCall = v11;
        }

        else
        {
          comparativeCall = [v11 comparativeCall];
        }

        v14 = comparativeCall;
        [(TUCallServicesInterface *)self _registerCall:comparativeCall];
        callNotificationManager = [(TUCallServicesInterface *)self callNotificationManager];
        comparativeCall2 = [v11 comparativeCall];
        [callNotificationManager postNotificationsForCall:v14 usingComparisonCall:comparativeCall2 afterUpdatesInBlock:v12];

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)_proxyCallWithCall:(id)call
{
  v19 = *MEMORY[0x1E69E9840];
  callCopy = call;
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
  v6 = [(TUCallServicesInterface *)self _proxyCallWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (!v6)
  {
    v7 = [TUProxyCall alloc];
    uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
    v6 = [(TUCall *)v7 initWithUniqueProxyIdentifier:uniqueProxyIdentifier2];

    -[TUProxyCall setIsVideo:](v6, "setIsVideo:", [callCopy isVideo]);
    -[TUProxyCall setLaunchInBackground:](v6, "setLaunchInBackground:", [callCopy launchInBackground]);
    [(TUProxyCall *)v6 setProxyCallActionsDelegate:self];
    v9 = TUDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier3 = [callCopy uniqueProxyIdentifier];
      v15 = 138412546;
      v16 = uniqueProxyIdentifier3;
      v17 = 2048;
      v18 = v6;
      _os_log_impl(&dword_1956FD000, v9, OS_LOG_TYPE_DEFAULT, "No cached call found for %@. Initialized new proxy call %p", &v15, 0x16u);
    }

    uniqueProxyIdentifierToProxyCall = [(TUCallServicesInterface *)self uniqueProxyIdentifierToProxyCall];
    uniqueProxyIdentifier4 = [callCopy uniqueProxyIdentifier];
    [uniqueProxyIdentifierToProxyCall setObject:v6 forKey:uniqueProxyIdentifier4];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_proxyCallWithUniqueProxyIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    uniqueProxyIdentifierToProxyCall = [(TUCallServicesInterface *)self uniqueProxyIdentifierToProxyCall];
    v6 = [uniqueProxyIdentifierToProxyCall objectForKey:identifierCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)performBlockOnQueue:(id)queue andWait:(BOOL)wait
{
  waitCopy = wait;
  block = queue;
  specific = dispatch_get_specific([(TUCallServicesInterface *)self queueContext]);
  if (specific == [(TUCallServicesInterface *)self queueContext])
  {
    block[2]();
  }

  else
  {
    queue = [(TUCallServicesInterface *)self queue];
    v8 = queue;
    if (waitCopy)
    {
      dispatch_sync(queue, block);
    }

    else
    {
      dispatch_async(queue, block);
    }
  }
}

- (void)registerCall:(id)call
{
  callCopy = call;
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  [(TUCallServicesInterface *)self _registerCall:callCopy];
}

- (void)tearDownXPCConnection
{
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Asked to tear down XPC connection", v5, 2u);
  }

  [(TUCallServicesInterface *)self _tearDownXPCConnection];
}

- (void)requestCurrentStateWithCompletionHandler:(id)handler handleInitialState:(id)state
{
  stateCopy = state;
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  [(TUCallServicesInterface *)self setHasRequestedInitialState:1];
  v7 = TUDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "Requesting current state", buf, 2u);
  }

  callServicesClientCapabilities = [(TUCallServicesInterface *)self callServicesClientCapabilities];
  [callServicesClientCapabilities save];

  if ([(TUCallServicesInterface *)self isServerLocal])
  {
    asynchronousServer = [(TUCallServicesInterface *)self asynchronousServer];
    [asynchronousServer requestInitialState:stateCopy];
  }

  else if ([(TUCallServicesInterface *)self hasServerLaunched])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __87__TUCallServicesInterface_requestCurrentStateWithCompletionHandler_handleInitialState___block_invoke;
    v13[3] = &unk_1E7424A10;
    v10 = stateCopy;
    v14 = v10;
    v11 = [(TUCallServicesInterface *)self asynchronousServerWithErrorHandler:v13];
    [v11 requestInitialState:v10];
  }

  else
  {
    v12 = TUDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1956FD000, v12, OS_LOG_TYPE_DEFAULT, "CSD hasn't launched since boot so assuming no current calls exist", buf, 2u);
    }

    (*(stateCopy + 2))(stateCopy, MEMORY[0x1E695E0F0]);
  }
}

void __87__TUCallServicesInterface_requestCurrentStateWithCompletionHandler_handleInitialState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __87__TUCallServicesInterface_requestCurrentStateWithCompletionHandler_handleInitialState___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)requestCurrentStateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __68__TUCallServicesInterface_requestCurrentStateWithCompletionHandler___block_invoke;
  v10 = &unk_1E7426480;
  selfCopy = self;
  v12 = handlerCopy;
  v5 = handlerCopy;
  v6 = _Block_copy(&v7);
  [(TUCallServicesInterface *)self requestCurrentStateWithCompletionHandler:v5 handleInitialState:v6, v7, v8, v9, v10, selfCopy];
}

void __68__TUCallServicesInterface_requestCurrentStateWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__TUCallServicesInterface_requestCurrentStateWithCompletionHandler___block_invoke_2;
  v7[3] = &unk_1E7426458;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v10 = v4;
  v6 = v3;
  [v5 performBlockOnQueue:v7];
}

uint64_t __68__TUCallServicesInterface_requestCurrentStateWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Received current state with calls for asynchronousServer: %@", &v9, 0xCu);
  }

  if ([*(a1 + 40) hasReceivedInitialState])
  {
    v4 = TUDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Dropping asynchronous response for current state, since we already have received initial state", &v9, 2u);
    }
  }

  else
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    if (v5[10])
    {
      [v5 _handleCurrentCallsChanged:v6 callsDisconnected:MEMORY[0x1E695E0F0]];
    }

    else
    {
      [v5 _updateCurrentCallsWithoutNotifications:v6];
    }

    [*(a1 + 40) setHasReceivedInitialState:1];
  }

  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))();
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void __44__TUCallServicesInterface_fetchCurrentCalls__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __87__TUCallServicesInterface_requestCurrentStateWithCompletionHandler_handleInitialState___block_invoke_cold_1();
  }

  [*(a1 + 32) handleServerDisconnect];
}

- (void)handleServerReconnect
{
  [(TUCallServicesInterface *)self setHasServerLaunched:1];
  [(TUCallServicesInterface *)self requestCurrentStateWithCompletionHandler:0];
  anonymousXPCEndpoint = [(TUCallServicesInterface *)self anonymousXPCEndpoint];

  if (anonymousXPCEndpoint)
  {
    anonymousXPCEndpoint2 = [(TUCallServicesInterface *)self anonymousXPCEndpoint];
    [(TUCallServicesInterface *)self registerAnonymousXPCEndpoint:anonymousXPCEndpoint2];
  }

  localRouteController = [(TUCallServicesInterface *)self localRouteController];
  [localRouteController handleServerReconnect];

  pairedHostDeviceRouteController = [(TUCallServicesInterface *)self pairedHostDeviceRouteController];
  [pairedHostDeviceRouteController handleServerReconnect];
}

- (void)handleServerDisconnectIfNecessary
{
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(TUCallServicesInterface *)self shouldHandleServerDisconnect])
  {

    [(TUCallServicesInterface *)self handleServerDisconnect];
  }

  else
  {
    v4 = TUDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Ignoring server disconnect", v5, 2u);
    }
  }
}

- (void)handleServerDisconnect
{
  v26 = *MEMORY[0x1E69E9840];
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(TUCallServicesInterface *)self hasReceivedInitialState])
  {
    [(TUCallServicesInterface *)self _ignorePendingServerDisconnectionHandlers];
    v4 = MEMORY[0x1E695DF70];
    currentCalls = [(TUCallServicesInterface *)self currentCalls];
    v6 = [v4 arrayWithCapacity:{objc_msgSend(currentCalls, "count")}];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    selfCopy = self;
    currentCalls2 = [(TUCallServicesInterface *)self currentCalls];
    v8 = [currentCalls2 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        v11 = 0;
        do
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(currentCalls2);
          }

          v12 = *(*(&v19 + 1) + 8 * v11);
          v13 = TUDefaultLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v24 = v12;
            _os_log_error_impl(&dword_1956FD000, v13, OS_LOG_TYPE_ERROR, "Disconnecting call with TUCallDisconnectedReasonComponentCrashed: %@", buf, 0xCu);
          }

          v14 = [TUProxyCall proxyCallWithCall:v12];
          [v14 setCallDisconnectedDueToComponentCrash];
          [v6 addObject:v14];

          ++v11;
        }

        while (v9 != v11);
        v9 = [currentCalls2 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v9);
    }

    [(TUCallServicesInterface *)selfCopy _handleCurrentCallsChanged:MEMORY[0x1E695E0F0] callsDisconnected:v6];
    [(TUCallServicesInterface *)selfCopy resetCallProvisionalStates];
    localRouteController = [(TUCallServicesInterface *)selfCopy localRouteController];
    [localRouteController handleServerDisconnect];

    pairedHostDeviceRouteController = [(TUCallServicesInterface *)selfCopy pairedHostDeviceRouteController];
    [pairedHostDeviceRouteController handleServerDisconnect];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)dialWithRequest:(id)request completion:(id)completion
{
  v43 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = TUDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v42 = requestCopy;
    _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "Proxying dial through CSD for %@", buf, 0xCu);
  }

  if (completionCopy)
  {
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __54__TUCallServicesInterface_dialWithRequest_completion___block_invoke;
    v39[3] = &unk_1E74264D0;
    v39[4] = self;
    v11 = completionCopy;
    v40 = v11;
    v12 = [(TUCallServicesInterface *)self asynchronousServerWithErrorHandler:v39];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __54__TUCallServicesInterface_dialWithRequest_completion___block_invoke_29;
    v37[3] = &unk_1E7426520;
    v37[4] = self;
    v38 = v11;
    [v12 dialWithRequest:requestCopy reply:v37];

    v13 = 0;
  }

  else
  {
    if ([(TUCallServicesInterface *)self isServerLocal])
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Local daemon delegate must pass in a completion block"];
      NSLog(&cfstr_TuassertionFai.isa, v14);

      if (_TUAssertShouldCrashApplication())
      {
        if ([(TUCallServicesInterface *)self isServerLocal])
        {
          [TUCallServicesInterface dialWithRequest:a2 completion:self];
        }
      }
    }

    v15 = [TUProxyCall alloc];
    uniqueProxyIdentifier = [requestCopy uniqueProxyIdentifier];
    v17 = [(TUCall *)v15 initWithUniqueProxyIdentifier:uniqueProxyIdentifier];

    [(TUCallServicesInterface *)self registerCall:v17];
    [(TUProxyCall *)v17 setProxyCallActionsDelegate:self];
    provider = [requestCopy provider];
    [(TUProxyCall *)v17 setProvider:provider];

    handle = [requestCopy handle];
    [(TUProxyCall *)v17 setHandle:handle];

    handle2 = [(TUProxyCall *)v17 handle];
    v21 = MEMORY[0x1E695DFD8];
    if (handle2)
    {
      handle3 = [(TUProxyCall *)v17 handle];
      v23 = [v21 setWithObject:handle3];
      [(TUProxyCall *)v17 setRemoteParticipantHandles:v23];
    }

    else
    {
      handle3 = [MEMORY[0x1E695DFD8] set];
      [(TUProxyCall *)v17 setRemoteParticipantHandles:handle3];
    }

    [(TUProxyCall *)v17 setCallStatus:3];
    audioSourceIdentifier = [requestCopy audioSourceIdentifier];
    [(TUCall *)v17 setSourceIdentifier:audioSourceIdentifier];

    localSenderIdentityUUID = [requestCopy localSenderIdentityUUID];
    [(TUProxyCall *)v17 setLocalSenderIdentityUUID:localSenderIdentityUUID];

    localSenderIdentityAccountUUID = [requestCopy localSenderIdentityAccountUUID];
    [(TUProxyCall *)v17 setLocalSenderIdentityAccountUUID:localSenderIdentityAccountUUID];

    [(TUProxyCall *)v17 setOutgoing:1];
    -[TUProxyCall setVoicemail:](v17, "setVoicemail:", [requestCopy dialType] == 2);
    -[TUProxyCall setHostedOnCurrentDevice:](v17, "setHostedOnCurrentDevice:", [requestCopy hostOnCurrentDevice]);
    -[TUProxyCall setEndpointOnCurrentDevice:](v17, "setEndpointOnCurrentDevice:", [requestCopy endpointOnCurrentDevice]);
    -[TUProxyCall setIsVideo:](v17, "setIsVideo:", [requestCopy isVideo]);
    -[TUProxyCall setIsSendingVideo:](v17, "setIsSendingVideo:", [requestCopy isVideo]);
    -[TUProxyCall setEmergency:](v17, "setEmergency:", [requestCopy dialType] == 1);
    -[TUProxyCall setSOS:](v17, "setSOS:", [requestCopy isSOS]);
    -[TUProxyCall setTtyType:](v17, "setTtyType:", TUCallTTYTypeForTUDialRequestTTYType([requestCopy ttyType]));
    -[TUProxyCall setShouldSuppressInCallUI:](v17, "setShouldSuppressInCallUI:", [requestCopy shouldSuppressInCallUI]);
    -[TUProxyCall setLaunchInBackground:](v17, "setLaunchInBackground:", [requestCopy launchInBackground]);
    -[TUProxyCall setOriginatingUIType:](v17, "setOriginatingUIType:", [requestCopy originatingUIType]);
    -[TUProxyCall setUplinkMuted:](v17, "setUplinkMuted:", [requestCopy shouldStartWithUplinkMuted]);
    v27 = [TUDynamicCallDisplayContext alloc];
    contactIdentifier = [requestCopy contactIdentifier];
    queue2 = [(TUCallServicesInterface *)self queue];
    v30 = [(TUDynamicCallDisplayContext *)v27 initWithCall:v17 contactIdentifier:contactIdentifier serialQueue:queue2];

    [(TUProxyCall *)v17 setDisplayContext:v30];
    asynchronousServer = [(TUCallServicesInterface *)self asynchronousServer];
    v32 = [(TUDynamicCallDisplayContext *)v30 copy];
    [asynchronousServer dialWithRequest:requestCopy displayContext:v32];

    v13 = [(TUCallServicesInterface *)self _proxyCallWithCall:v17];
    currentCalls = [(TUCallServicesInterface *)self currentCalls];
    v34 = [currentCalls arrayByAddingObject:v17];
    [(TUCallServicesInterface *)self _handleCurrentCallsChanged:v34 callsDisconnected:MEMORY[0x1E695E0F0]];
  }

  v35 = *MEMORY[0x1E69E9840];

  return v13;
}

void __54__TUCallServicesInterface_dialWithRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__TUCallServicesInterface_dialWithRequest_completion___block_invoke_2;
  v6[3] = &unk_1E7424E20;
  v7 = v3;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v5 = v3;
  [v4 performBlockOnQueue:v6];
}

uint64_t __54__TUCallServicesInterface_dialWithRequest_completion___block_invoke_2(uint64_t a1)
{
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __54__TUCallServicesInterface_dialWithRequest_completion___block_invoke_2_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  return (*(*(a1 + 40) + 16))();
}

void __54__TUCallServicesInterface_dialWithRequest_completion___block_invoke_29(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__TUCallServicesInterface_dialWithRequest_completion___block_invoke_2_30;
  v11[3] = &unk_1E74264F8;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12 = v5;
  v13 = v8;
  v14 = v6;
  v15 = v7;
  v9 = v6;
  v10 = v5;
  [v8 performBlockOnQueue:v11];
}

uint64_t __54__TUCallServicesInterface_dialWithRequest_completion___block_invoke_2_30(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2 && [v2 status] == 6)
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v11[0] = *(a1 + 32);
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [v4 _handleCurrentCallsChanged:v3 callsDisconnected:v5];
  }

  else
  {
    [*(a1 + 40) _handleCurrentCallsChanged:*(a1 + 48) callsDisconnected:MEMORY[0x1E695E0F0]];
  }

  if (!*(a1 + 32))
  {
    v6 = TUDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "[WARN] Passing nil call to dialWithRequest completion block", v10, 2u);
    }

    v7 = *(a1 + 32);
  }

  result = (*(*(a1 + 56) + 16))();
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)joinConversationWithRequest:(id)request
{
  v64 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v63 = requestCopy;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Proxying joinConversationWithRequest request: %@", buf, 0xCu);
  }

  uUID = [requestCopy UUID];
  uUIDString = [uUID UUIDString];
  v9 = [(TUCallServicesInterface *)self _proxyCallWithUniqueProxyIdentifier:uUIDString];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v11 = [TUProxyCall alloc];
    uUID2 = [requestCopy UUID];
    uUIDString2 = [uUID2 UUIDString];
    v10 = [(TUCall *)v11 initWithUniqueProxyIdentifier:uUIDString2];
  }

  [(TUCallServicesInterface *)self registerCall:v10];
  [(TUProxyCall *)v10 setProxyCallActionsDelegate:self];
  callCenter = [(TUCallServicesInterface *)self callCenter];
  providerManager = [callCenter providerManager];

  featureFlags = [(TUCallServicesInterface *)self featureFlags];
  if ([featureFlags groupFacetimeAsAServiceEnabled])
  {
    provider = [requestCopy provider];
    identifier = [provider identifier];
    faceTimeProvider = [providerManager providerWithIdentifier:identifier];
  }

  else
  {
    faceTimeProvider = [providerManager faceTimeProvider];
  }

  [(TUProxyCall *)v10 setProvider:faceTimeProvider];
  [(TUProxyCall *)v10 setCallStatus:3];
  [(TUProxyCall *)v10 setOutgoing:1];
  [(TUProxyCall *)v10 setHostedOnCurrentDevice:1];
  [(TUProxyCall *)v10 setEndpointOnCurrentDevice:1];
  if ([requestCopy isVideo])
  {
    provider2 = [requestCopy provider];
    -[TUProxyCall setIsVideo:](v10, "setIsVideo:", [provider2 supportsVideo]);
  }

  else
  {
    [(TUProxyCall *)v10 setIsVideo:0];
  }

  -[TUProxyCall setShouldSuppressInCallUI:](v10, "setShouldSuppressInCallUI:", [requestCopy shouldSuppressInCallUI]);
  -[TUProxyCall setLaunchInBackground:](v10, "setLaunchInBackground:", [requestCopy launchInBackground]);
  -[TUProxyCall setWantsStagingArea:](v10, "setWantsStagingArea:", [requestCopy wantsStagingArea]);
  callerID = [requestCopy callerID];
  v22 = [faceTimeProvider senderIdentityForHandle:callerID];
  uUID3 = [v22 UUID];
  [(TUProxyCall *)v10 setLocalSenderIdentityUUID:uUID3];

  -[TUProxyCall setOriginatingUIType:](v10, "setOriginatingUIType:", [requestCopy originatingUIType]);
  featureFlags2 = [(TUCallServicesInterface *)self featureFlags];
  nearbyFaceTimeEnabled = [featureFlags2 nearbyFaceTimeEnabled];
  if (v9 || (nearbyFaceTimeEnabled & 1) == 0)
  {
  }

  else
  {
    invitationPreferences = [requestCopy invitationPreferences];
    v27 = +[TUConversationInvitationPreference nearbyInvitationPreferences];
    v28 = [invitationPreferences isEqualToSet:v27];

    if (v28)
    {
      [(TUProxyCall *)v10 setNearbyMode:2];
    }
  }

  if ([requestCopy requestToShareScreen])
  {
    requestToShareMyScreen = 2;
  }

  else
  {
    requestToShareMyScreen = [requestCopy requestToShareMyScreen];
  }

  [(TUProxyCall *)v10 setScreenSharingIntention:requestToShareMyScreen];
  remoteMembers = [requestCopy remoteMembers];
  v55 = faceTimeProvider;
  v56 = providerManager;
  if ([remoteMembers count] == 1)
  {
    conversationLink = [requestCopy conversationLink];
    if (conversationLink)
    {
      [(TUProxyCall *)v10 setConversation:1];
    }

    else
    {
      otherInvitedHandles = [requestCopy otherInvitedHandles];
      if ([otherInvitedHandles count])
      {
        [(TUProxyCall *)v10 setConversation:1];
      }

      else
      {
        provider3 = [requestCopy provider];
        if ([provider3 isDefaultProvider])
        {
          participantAssociation = [requestCopy participantAssociation];
          [(TUProxyCall *)v10 setConversation:participantAssociation != 0];
        }

        else
        {
          [(TUProxyCall *)v10 setConversation:1];
        }
      }
    }
  }

  else
  {
    [(TUProxyCall *)v10 setConversation:1];
  }

  if (v9)
  {
    [requestCopy setVideoEnabled:{-[TUProxyCall isSendingVideo](v10, "isSendingVideo")}];
    [requestCopy setUplinkMuted:{-[TUProxyCall isUplinkMuted](v10, "isUplinkMuted")}];
    v34 = TUDefaultLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      isVideoEnabled = [requestCopy isVideoEnabled];
      isUplinkMuted = [requestCopy isUplinkMuted];
      *buf = 67109376;
      *v63 = isVideoEnabled;
      *&v63[4] = 1024;
      *&v63[6] = isUplinkMuted;
      _os_log_impl(&dword_1956FD000, v34, OS_LOG_TYPE_DEFAULT, "Updated joinConversationWithRequest videoEnable=%d uplinkMuted=%d", buf, 0xEu);
    }
  }

  -[TUProxyCall setIsSendingVideo:](v10, "setIsSendingVideo:", [requestCopy isVideoEnabled]);
  -[TUProxyCall setUplinkMuted:](v10, "setUplinkMuted:", [requestCopy isUplinkMuted]);
  v37 = [MEMORY[0x1E695DFA8] set];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  remoteMembers2 = [requestCopy remoteMembers];
  v39 = [remoteMembers2 countByEnumeratingWithState:&v57 objects:v61 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v58;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v58 != v41)
        {
          objc_enumerationMutation(remoteMembers2);
        }

        handle = [*(*(&v57 + 1) + 8 * i) handle];
        [v37 addObject:handle];
      }

      v40 = [remoteMembers2 countByEnumeratingWithState:&v57 objects:v61 count:16];
    }

    while (v40);
  }

  [(TUProxyCall *)v10 setRemoteParticipantHandles:v37];
  remoteParticipantHandles = [(TUProxyCall *)v10 remoteParticipantHandles];
  anyObject = [remoteParticipantHandles anyObject];
  [(TUProxyCall *)v10 setHandle:anyObject];

  v46 = [TUDynamicCallDisplayContext alloc];
  queue2 = [(TUCallServicesInterface *)self queue];
  v48 = [(TUDynamicCallDisplayContext *)v46 initWithCall:v10 contactIdentifier:0 serialQueue:queue2];

  [(TUProxyCall *)v10 setDisplayContext:v48];
  currentCalls = [(TUCallServicesInterface *)self currentCalls];
  v50 = [currentCalls arrayByAddingObject:v10];
  [(TUCallServicesInterface *)self _handleCurrentCallsChanged:v50 callsDisconnected:MEMORY[0x1E695E0F0]];

  asynchronousServer = [(TUCallServicesInterface *)self asynchronousServer];
  [asynchronousServer joinConversationWithRequest:requestCopy];

  v52 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)reportLocalPreviewStoppedForCallWithUniqueProxyIdentifier:(id)identifier
{
  v11 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = identifierCopy;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Proxying reportLocalPreviewStopped for %@", &v9, 0xCu);
  }

  asynchronousServer = [(TUCallServicesInterface *)self asynchronousServer];
  [asynchronousServer reportLocalPreviewStoppedForCallWithUniqueProxyIdentifier:identifierCopy];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)saveCustomGreeting:(id)greeting forAccountUUID:(id)d
{
  dCopy = d;
  greetingCopy = greeting;
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = TUDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_1956FD000, v9, OS_LOG_TYPE_DEFAULT, "Proxying saveCustomGreeting", v11, 2u);
  }

  v10 = [(TUCallServicesInterface *)self asynchronousServerWithErrorHandler:&__block_literal_global_34];
  [v10 saveCustomSandboxedURLGreeting:greetingCopy forAccountUUID:dCopy];
}

void __61__TUCallServicesInterface_saveCustomGreeting_forAccountUUID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __61__TUCallServicesInterface_saveCustomGreeting_forAccountUUID___block_invoke_cold_1();
  }
}

- (id)customGreetingForAccountUUID:(id)d
{
  dCopy = d;
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Proxying defaultGreetingForAccountUUID:", buf, 2u);
  }

  *buf = 0;
  v12 = buf;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__9;
  v15 = __Block_byref_object_dispose__9;
  v16 = 0;
  v7 = [(TUCallServicesInterface *)self synchronousServerWithErrorHandler:&__block_literal_global_48_0];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__TUCallServicesInterface_customGreetingForAccountUUID___block_invoke_49;
  v10[3] = &unk_1E7426548;
  v10[4] = buf;
  [v7 customSandboxedURLGreetingForAccountUUID:dCopy withCompletion:v10];

  v8 = *(v12 + 5);
  _Block_object_dispose(buf, 8);

  return v8;
}

void __56__TUCallServicesInterface_customGreetingForAccountUUID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __56__TUCallServicesInterface_customGreetingForAccountUUID___block_invoke_cold_1();
  }
}

uint64_t __56__TUCallServicesInterface_customGreetingForAccountUUID___block_invoke_49(uint64_t a1, void *a2)
{
  v3 = [a2 URL];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

- (void)deleteCustomGreetingForAccountUUID:(id)d
{
  dCopy = d;
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Proxying deleteCustomGreetingForAccountUUID", v8, 2u);
  }

  v7 = [(TUCallServicesInterface *)self asynchronousServerWithErrorHandler:&__block_literal_global_52_0];
  [v7 deleteCustomGreetingForAccountUUID:dCopy];
}

void __62__TUCallServicesInterface_deleteCustomGreetingForAccountUUID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __61__TUCallServicesInterface_saveCustomGreeting_forAccountUUID___block_invoke_cold_1();
  }
}

- (id)defaultGreeting
{
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Proxying defaultGreeting", buf, 2u);
  }

  *buf = 0;
  v10 = buf;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__9;
  v13 = __Block_byref_object_dispose__9;
  v14 = 0;
  v5 = [(TUCallServicesInterface *)self synchronousServerWithErrorHandler:&__block_literal_global_54_0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__TUCallServicesInterface_defaultGreeting__block_invoke_55;
  v8[3] = &unk_1E7426548;
  v8[4] = buf;
  [v5 defaultGreeting:v8];

  v6 = *(v10 + 5);
  _Block_object_dispose(buf, 8);

  return v6;
}

void __42__TUCallServicesInterface_defaultGreeting__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __42__TUCallServicesInterface_defaultGreeting__block_invoke_cold_1();
  }
}

uint64_t __42__TUCallServicesInterface_defaultGreeting__block_invoke_55(uint64_t a1, void *a2)
{
  v3 = [a2 URL];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

- (id)fetchCurrentCallUpdates
{
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Proxying fetchCurrentCallUpdates", buf, 2u);
  }

  *buf = 0;
  v10 = buf;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__9;
  v13 = __Block_byref_object_dispose__9;
  v14 = 0;
  v5 = [(TUCallServicesInterface *)self synchronousServerWithErrorHandler:&__block_literal_global_57_0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__TUCallServicesInterface_fetchCurrentCallUpdates__block_invoke_58;
  v8[3] = &unk_1E7425BC8;
  v8[4] = buf;
  [v5 fetchCurrentCallUpdates:v8];

  v6 = [*(v10 + 5) copy];
  _Block_object_dispose(buf, 8);

  return v6;
}

void __50__TUCallServicesInterface_fetchCurrentCallUpdates__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __50__TUCallServicesInterface_fetchCurrentCallUpdates__block_invoke_cold_1();
  }
}

uint64_t __50__TUCallServicesInterface_fetchCurrentCallUpdates__block_invoke_58(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

- (void)screenWithRequest:(id)request
{
  requestCopy = request;
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Proxying screenWithRequest", v8, 2u);
  }

  v7 = [(TUCallServicesInterface *)self asynchronousServerWithErrorHandler:&__block_literal_global_60_0];
  [v7 screenWithRequest:requestCopy];
}

void __45__TUCallServicesInterface_screenWithRequest___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __45__TUCallServicesInterface_screenWithRequest___block_invoke_cold_1();
  }
}

- (void)startReceptionistReply
{
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Proxying startReceptionistReply", v6, 2u);
  }

  v5 = [(TUCallServicesInterface *)self asynchronousServerWithErrorHandler:&__block_literal_global_62_0];
  [v5 startReceptionistReply];
}

void __49__TUCallServicesInterface_startReceptionistReply__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __49__TUCallServicesInterface_startReceptionistReply__block_invoke_cold_1();
  }
}

- (void)sendReceptionistReply:(id)reply
{
  replyCopy = reply;
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Proxying sendReceptionistReply", v8, 2u);
  }

  v7 = [(TUCallServicesInterface *)self asynchronousServerWithErrorHandler:&__block_literal_global_64];
  [v7 sendReceptionistReply:replyCopy];
}

void __49__TUCallServicesInterface_sendReceptionistReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __49__TUCallServicesInterface_sendReceptionistReply___block_invoke_cold_1();
  }
}

- (void)performRecordingRequest:(id)request completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = requestCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Proxying perform recording request %@", buf, 0xCu);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__TUCallServicesInterface_performRecordingRequest_completion___block_invoke;
  v12[3] = &unk_1E7424A10;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = [(TUCallServicesInterface *)self asynchronousServerWithErrorHandler:v12];
  [v10 performRecordingRequest:requestCopy completion:v9];

  v11 = *MEMORY[0x1E69E9840];
}

void __62__TUCallServicesInterface_performRecordingRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __62__TUCallServicesInterface_performRecordingRequest_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)performTranslationRequest:(id)request completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = requestCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Proxying perform translation request %@", buf, 0xCu);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__TUCallServicesInterface_performTranslationRequest_completion___block_invoke;
  v12[3] = &unk_1E7424A10;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = [(TUCallServicesInterface *)self asynchronousServerWithErrorHandler:v12];
  [v10 performTranslationRequest:requestCopy completion:v9];

  v11 = *MEMORY[0x1E69E9840];
}

void __64__TUCallServicesInterface_performTranslationRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __64__TUCallServicesInterface_performTranslationRequest_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_performSmartHoldingRequest:(id)request completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = requestCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Proxying perform smart holding session request %@", buf, 0xCu);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__TUCallServicesInterface__performSmartHoldingRequest_completion___block_invoke;
  v12[3] = &unk_1E7424A10;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = [(TUCallServicesInterface *)self asynchronousServerWithErrorHandler:v12];
  [v10 _performSmartHoldingRequest:requestCopy completion:v9];

  v11 = *MEMORY[0x1E69E9840];
}

void __66__TUCallServicesInterface__performSmartHoldingRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __66__TUCallServicesInterface__performSmartHoldingRequest_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)performSmartHoldingRequest:(id)request completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = requestCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Proxying TUSmartHoldingRequest %@", buf, 0xCu);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__TUCallServicesInterface_performSmartHoldingRequest_completion___block_invoke;
  v12[3] = &unk_1E7424A10;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = [(TUCallServicesInterface *)self asynchronousServerWithErrorHandler:v12];
  [v10 performSmartHoldingRequest:requestCopy completion:v9];

  v11 = *MEMORY[0x1E69E9840];
}

void __65__TUCallServicesInterface_performSmartHoldingRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __66__TUCallServicesInterface__performSmartHoldingRequest_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)registerAnonymousXPCEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  [(TUCallServicesInterface *)self setAnonymousXPCEndpoint:endpointCopy];
  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Proxying registerAnonymousXPCEndpoint", v8, 2u);
  }

  v7 = [(TUCallServicesInterface *)self asynchronousServerWithErrorHandler:&__block_literal_global_66];
  [v7 registerAnonymousXPCEndpoint:endpointCopy];
}

void __56__TUCallServicesInterface_registerAnonymousXPCEndpoint___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __56__TUCallServicesInterface_registerAnonymousXPCEndpoint___block_invoke_cold_1();
  }
}

- (void)fetchAnonymousXPCEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Proxying fetchAnonymousXPCEndpoint", v8, 2u);
  }

  v7 = [(TUCallServicesInterface *)self asynchronousServerWithErrorHandler:&__block_literal_global_68];
  [v7 fetchAnonymousXPCEndpoint:endpointCopy];
}

void __53__TUCallServicesInterface_fetchAnonymousXPCEndpoint___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __53__TUCallServicesInterface_fetchAnonymousXPCEndpoint___block_invoke_cold_1();
  }
}

- (void)answerCallWithRequest:(id)request
{
  v11 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = requestCopy;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Proxying answer through CSD for %@", &v9, 0xCu);
  }

  asynchronousServer = [(TUCallServicesInterface *)self asynchronousServer];
  [asynchronousServer answerCallWithRequest:requestCopy];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)holdCallWithUniqueProxyIdentifier:(id)identifier
{
  v11 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = identifierCopy;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Proxying hold through CSD for %@", &v9, 0xCu);
  }

  asynchronousServer = [(TUCallServicesInterface *)self asynchronousServer];
  [asynchronousServer holdCallWithUniqueProxyIdentifier:identifierCopy];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)unholdCallWithUniqueProxyIdentifier:(id)identifier
{
  v11 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = identifierCopy;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Proxying unhold through CSD for %@", &v9, 0xCu);
  }

  asynchronousServer = [(TUCallServicesInterface *)self asynchronousServer];
  [asynchronousServer unholdCallWithUniqueProxyIdentifier:identifierCopy];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)requestVideoUpgradeForCallWithUniqueProxyIdentifier:(id)identifier
{
  v11 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = identifierCopy;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Proxying upgrade video call through CSD for %@", &v9, 0xCu);
  }

  asynchronousServer = [(TUCallServicesInterface *)self asynchronousServer];
  [asynchronousServer requestVideoUpgradeForCallWithUniqueProxyIdentifier:identifierCopy];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)disconnectCallWithUniqueProxyIdentifier:(id)identifier
{
  v11 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = identifierCopy;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Proxying disconnect through CSD for %@", &v9, 0xCu);
  }

  asynchronousServer = [(TUCallServicesInterface *)self asynchronousServer];
  [asynchronousServer disconnectCallWithUniqueProxyIdentifier:identifierCopy];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)groupCallWithUniqueProxyIdentifier:(id)identifier withOtherCallWithUniqueProxyIdentifier:(id)proxyIdentifier
{
  v16 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  proxyIdentifierCopy = proxyIdentifier;
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = TUDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = identifierCopy;
    v14 = 2112;
    v15 = proxyIdentifierCopy;
    _os_log_impl(&dword_1956FD000, v9, OS_LOG_TYPE_DEFAULT, "Proxying groupCall through CSD for %@ and %@", &v12, 0x16u);
  }

  asynchronousServer = [(TUCallServicesInterface *)self asynchronousServer];
  [asynchronousServer groupCallWithUniqueProxyIdentifier:identifierCopy withOtherCallWithUniqueProxyIdentifier:proxyIdentifierCopy];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)ungroupCallWithUniqueProxyIdentifier:(id)identifier
{
  v11 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = identifierCopy;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Proxying ungroupCall through CSD for %@", &v9, 0xCu);
  }

  asynchronousServer = [(TUCallServicesInterface *)self asynchronousServer];
  [asynchronousServer ungroupCallWithUniqueProxyIdentifier:identifierCopy];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)swapCalls
{
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Proxying swapCalls through CSD", v6, 2u);
  }

  asynchronousServer = [(TUCallServicesInterface *)self asynchronousServer];
  [asynchronousServer swapCalls];
}

- (void)disconnectCurrentCall
{
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Proxying disconnectCurrentCall through CSD", v6, 2u);
  }

  asynchronousServer = [(TUCallServicesInterface *)self asynchronousServer];
  [asynchronousServer disconnectCurrentCall];
}

- (void)disconnectCurrentCallAndActivateHeld
{
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Proxying disconnectCurrentCallAndActivateHeld through CSD", v6, 2u);
  }

  asynchronousServer = [(TUCallServicesInterface *)self asynchronousServer];
  [asynchronousServer disconnectCurrentCallAndActivateHeld];
}

- (void)disconnectAllCalls
{
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Proxying disconnectAllCalls through CSD", v6, 2u);
  }

  asynchronousServer = [(TUCallServicesInterface *)self asynchronousServer];
  [asynchronousServer disconnectAllCalls];
}

- (void)setLiveVoicemailUnavailableReason:(int64_t)reason forCallWithUniqueProxyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Proxying setLiveVoicemailUnavailableReason:forCall: through CSD", v10, 2u);
  }

  asynchronousServer = [(TUCallServicesInterface *)self asynchronousServer];
  [asynchronousServer setLiveVoicemailUnavailableReason:reason forCallWithUniqueProxyIdentifier:identifierCopy];
}

- (void)pullRelayingCallsFromClient
{
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Proxying pullRelayingCallsFromClient through CSD", v6, 2u);
  }

  asynchronousServer = [(TUCallServicesInterface *)self asynchronousServer];
  [asynchronousServer pullRelayingCallsFromClient];
}

- (void)pullRelayingGFTCallsFromClientIfNecessary
{
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Proxying pullRelayingGFTCallsFromClientIfNecessary through CSD", v6, 2u);
  }

  asynchronousServer = [(TUCallServicesInterface *)self asynchronousServer];
  [asynchronousServer pullRelayingGFTCallsFromClientIfNecessary];
}

- (void)pushRelayingCallsToHostWithSourceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Proxying pushRelayingCallsToHost through CSD", v8, 2u);
  }

  asynchronousServer = [(TUCallServicesInterface *)self asynchronousServer];
  [asynchronousServer pushRelayingCallsToHostWithSourceIdentifier:identifierCopy];
}

- (void)pullCallFromClientUsingHandoffActivityUserInfo:(id)info completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  infoCopy = info;
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = TUDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"non-nil";
    if (!completionCopy)
    {
      v10 = @"nil";
    }

    *buf = 138412290;
    v21 = v10;
    _os_log_impl(&dword_1956FD000, v9, OS_LOG_TYPE_DEFAULT, "Proxying pullCallFromClientUsingHandoffActivityUserInfo through CSD with completion block (%@)", buf, 0xCu);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__TUCallServicesInterface_pullCallFromClientUsingHandoffActivityUserInfo_completion___block_invoke;
  aBlock[3] = &unk_1E7426520;
  aBlock[4] = self;
  v19 = completionCopy;
  v11 = completionCopy;
  v12 = _Block_copy(aBlock);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __85__TUCallServicesInterface_pullCallFromClientUsingHandoffActivityUserInfo_completion___block_invoke_3;
  v16[3] = &unk_1E7424A10;
  v17 = v12;
  v13 = v12;
  v14 = [(TUCallServicesInterface *)self asynchronousServerWithErrorHandler:v16];
  [v14 pullCallFromClientUsingHandoffActivityUserInfo:infoCopy reply:v13];

  v15 = *MEMORY[0x1E69E9840];
}

void __85__TUCallServicesInterface_pullCallFromClientUsingHandoffActivityUserInfo_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__TUCallServicesInterface_pullCallFromClientUsingHandoffActivityUserInfo_completion___block_invoke_2;
  v11[3] = &unk_1E7425680;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12 = v6;
  v13 = v8;
  v14 = v5;
  v15 = v7;
  v9 = v5;
  v10 = v6;
  [v8 performBlockOnQueue:v11];
}

uint64_t __85__TUCallServicesInterface_pullCallFromClientUsingHandoffActivityUserInfo_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [*(a1 + 40) _handleCurrentCallsChanged:v2 callsDisconnected:MEMORY[0x1E695E0F0]];
  }

  result = *(a1 + 56);
  if (result)
  {
    v4 = *(a1 + 48) != 0;
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __85__TUCallServicesInterface_pullCallFromClientUsingHandoffActivityUserInfo_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __85__TUCallServicesInterface_pullCallFromClientUsingHandoffActivityUserInfo_completion___block_invoke_3_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)pullPersistedChannel:(id)channel
{
  channelCopy = channel;
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Proxying pullPersistedChannel through CSD", v8, 2u);
  }

  v7 = [(TUCallServicesInterface *)self synchronousServerWithErrorHandler:&__block_literal_global_76_0];
  [v7 pullPersistedChannel:channelCopy];
}

void __48__TUCallServicesInterface_pullPersistedChannel___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __85__TUCallServicesInterface_pullCallFromClientUsingHandoffActivityUserInfo_completion___block_invoke_3_cold_1();
  }
}

void __84__TUCallServicesInterface_startTransmissionForBargeCall_sourceIsHandsfreeAccessory___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __85__TUCallServicesInterface_pullCallFromClientUsingHandoffActivityUserInfo_completion___block_invoke_3_cold_1();
  }
}

void __83__TUCallServicesInterface_stopTransmissionForBargeCall_sourceIsHandsfreeAccessory___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __85__TUCallServicesInterface_pullCallFromClientUsingHandoffActivityUserInfo_completion___block_invoke_3_cold_1();
  }
}

- (void)pushHostedCallsToDestination:(id)destination
{
  v11 = *MEMORY[0x1E69E9840];
  destinationCopy = destination;
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = destinationCopy;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Proxying pushHostedCallsToDestination through CSD for destination %@", &v9, 0xCu);
  }

  asynchronousServer = [(TUCallServicesInterface *)self asynchronousServer];
  [asynchronousServer pushHostedCallsToDestination:destinationCopy];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)pullHostedCallsFromPairedHostDevice
{
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Proxying pullHostedCallsFromPairedHostDevice through CSD", v6, 2u);
  }

  asynchronousServer = [(TUCallServicesInterface *)self asynchronousServer];
  [asynchronousServer pullHostedCallsFromPairedHostDevice];
}

- (void)sendHardPauseDigitsForCallWithUniqueProxyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Proxying sendHardPauseDigits through CSD", v8, 2u);
  }

  asynchronousServer = [(TUCallServicesInterface *)self asynchronousServer];
  [asynchronousServer sendHardPauseDigitsForCallWithUniqueProxyIdentifier:identifierCopy];
}

- (void)updateCallWithProxy:(id)proxy
{
  v11 = *MEMORY[0x1E69E9840];
  proxyCopy = proxy;
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = proxyCopy;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Proxying updateCallWithProxy through CSD for proxy call %@", &v9, 0xCu);
  }

  asynchronousServer = [(TUCallServicesInterface *)self asynchronousServer];
  [asynchronousServer updateCallWithProxy:proxyCopy];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)enteredForegroundForCallWithUniqueProxyIdentifier:(id)identifier
{
  v11 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = identifierCopy;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Proxying enteredForegroundForCallWithUniqueProxyIdentifier through CSD for uniqueProxyIdentifier %@", &v9, 0xCu);
  }

  asynchronousServer = [(TUCallServicesInterface *)self asynchronousServer];
  [asynchronousServer enteredForegroundForCallWithUniqueProxyIdentifier:identifierCopy];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)willEnterBackgroundForAllCalls
{
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Proxying willEnterBackgroundForAllCalls through CSD", v6, 2u);
  }

  asynchronousServer = [(TUCallServicesInterface *)self asynchronousServer];
  [asynchronousServer willEnterBackgroundForAllCalls];
}

- (void)enteredBackgroundForAllCalls
{
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Proxying enteredBackgroundForAllCalls through CSD", v6, 2u);
  }

  asynchronousServer = [(TUCallServicesInterface *)self asynchronousServer];
  [asynchronousServer enteredBackgroundForAllCalls];
}

- (void)setRemoteVideoPresentationSizeForCallWithUniqueProxyIdentifier:(id)identifier size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v17 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = TUDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v18.width = width;
    v18.height = height;
    v10 = NSStringFromSize(v18);
    v13 = 138412546;
    v14 = identifierCopy;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_1956FD000, v9, OS_LOG_TYPE_DEFAULT, "Proxying setRemoteVideoPresentationSizeForCallWithUniqueProxyIdentifier through CSD for uniqueProxyIdentifier %@, size %@", &v13, 0x16u);
  }

  asynchronousServer = [(TUCallServicesInterface *)self asynchronousServer];
  [asynchronousServer setRemoteVideoPresentationSizeForCallWithUniqueProxyIdentifier:identifierCopy size:{width, height}];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setScreenShareAttributesForCallWithUniqueProxyIdentifier:(id)identifier attributes:(id)attributes
{
  v16 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  attributesCopy = attributes;
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = TUDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = identifierCopy;
    v14 = 2112;
    v15 = attributesCopy;
    _os_log_impl(&dword_1956FD000, v9, OS_LOG_TYPE_DEFAULT, "Proxying setScreenShareAttributesForCallWithUniqueProxyIdentifier through CSD for uniqueProxyIdentifier %@, screenShareAttributes %@", &v12, 0x16u);
  }

  asynchronousServer = [(TUCallServicesInterface *)self asynchronousServer];
  [asynchronousServer setScreenShareAttributesForCallWithUniqueProxyIdentifier:identifierCopy attributes:attributesCopy];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setBluetoothAudioFormatForCallWithUniqueProxyIdentifier:(id)identifier bluetoothAudioFormat:(int64_t)format
{
  v15 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = identifierCopy;
    v13 = 2048;
    formatCopy = format;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Proxying setBluetoothAudioFormatForCallWithUniqueProxyIdentifier through CSD for uniqueProxyIdentifier %@, bluetoothAudioFormat %ld", &v11, 0x16u);
  }

  asynchronousServer = [(TUCallServicesInterface *)self asynchronousServer];
  [asynchronousServer setBluetoothAudioFormatForCallWithUniqueProxyIdentifier:identifierCopy bluetoothAudioFormat:format];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)sendMMIOrUSSDCodeWithRequest:(id)request
{
  v11 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = requestCopy;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Sending MMI/USSD code through CSD for %@", &v9, 0xCu);
  }

  asynchronousServer = [(TUCallServicesInterface *)self asynchronousServer];
  [asynchronousServer sendMMIOrUSSDCodeWithRequest:requestCopy];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)addScreenSharingType:(unint64_t)type forCallWithUniqueProxyIdentifier:(id)identifier
{
  v15 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218242;
    typeCopy = type;
    v13 = 2112;
    v14 = identifierCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Proxying addScreenSharingType=%lu for %@", &v11, 0x16u);
  }

  asynchronousServer = [(TUCallServicesInterface *)self asynchronousServer];
  [asynchronousServer addScreenSharingType:type forCallWithUniqueProxyIdentifier:identifierCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setEmergencyMediaItems:(id)items forCallWithUniqueProxyIdentifier:(id)identifier
{
  v16 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  identifierCopy = identifier;
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = TUDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = itemsCopy;
    v14 = 2112;
    v15 = identifierCopy;
    _os_log_impl(&dword_1956FD000, v9, OS_LOG_TYPE_DEFAULT, "Proxying setEmergencyMediaItems=%@ for %@", &v12, 0x16u);
  }

  asynchronousServer = [(TUCallServicesInterface *)self asynchronousServer];
  [asynchronousServer setEmergencyMediaItems:itemsCopy forCallWithUniqueProxyIdentifier:identifierCopy];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)activateInCallUIWithActivityContinuationIdentifier:(id)identifier
{
  v11 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = identifierCopy;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Proying activateInCallUIWithActivityContinuationIdentifier=%@", &v9, 0xCu);
  }

  asynchronousServer = [(TUCallServicesInterface *)self asynchronousServer];
  [asynchronousServer activateInCallUIWithActivityContinuationIdentifier:identifierCopy];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setCurrentAudioInputDeviceToDeviceWithUID:(id)d
{
  v11 = *MEMORY[0x1E69E9840];
  dCopy = d;
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  if (![(TUCallServicesInterface *)self isServerLocal])
  {
    v6 = TUDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = dCopy;
      _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Proxying setCurrentAudioInputDeviceToDeviceWithUID through CSD for UID %@", &v9, 0xCu);
    }

    asynchronousServer = [(TUCallServicesInterface *)self asynchronousServer];
    [asynchronousServer setCurrentAudioInputDeviceToDeviceWithUID:dCopy];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setCurrentAudioOutputDeviceToDeviceWithUID:(id)d
{
  v11 = *MEMORY[0x1E69E9840];
  dCopy = d;
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  if (![(TUCallServicesInterface *)self isServerLocal])
  {
    v6 = TUDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = dCopy;
      _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Proxying setCurrentOutputDeviceToDeviceWithUID through CSD for deviceUID %@", &v9, 0xCu);
    }

    asynchronousServer = [(TUCallServicesInterface *)self asynchronousServer];
    [asynchronousServer setCurrentAudioOutputDeviceToDeviceWithUID:dCopy];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)routesByUniqueIdentifierForRouteController:(id)controller
{
  controllerCopy = controller;
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__9;
  v20 = __Block_byref_object_dispose__9;
  v21 = MEMORY[0x1E695E0F8];
  localRouteController = [(TUCallServicesInterface *)self localRouteController];

  if (localRouteController == controllerCopy)
  {
    v10 = TUDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "Proxying localRoutesByUniqueIdentifier synchronously", buf, 2u);
    }

    v9 = [(TUCallServicesInterface *)self synchronousServerWithErrorHandler:&__block_literal_global_82];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __70__TUCallServicesInterface_routesByUniqueIdentifierForRouteController___block_invoke_83;
    v14[3] = &unk_1E7426570;
    v14[4] = &v16;
    [v9 localRoutesByUniqueIdentifier:v14];
  }

  else
  {
    pairedHostDeviceRouteController = [(TUCallServicesInterface *)self pairedHostDeviceRouteController];

    if (pairedHostDeviceRouteController != controllerCopy)
    {
      goto LABEL_10;
    }

    v8 = TUDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Proxying pairedHostDeviceRoutesByUniqueIdentifier synchronously", buf, 2u);
    }

    v9 = [(TUCallServicesInterface *)self synchronousServerWithErrorHandler:&__block_literal_global_87];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __70__TUCallServicesInterface_routesByUniqueIdentifierForRouteController___block_invoke_88;
    v13[3] = &unk_1E7426570;
    v13[4] = &v16;
    [v9 pairedHostDeviceRoutesByUniqueIdentifier:v13];
  }

LABEL_10:
  v11 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v11;
}

void __70__TUCallServicesInterface_routesByUniqueIdentifierForRouteController___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __70__TUCallServicesInterface_routesByUniqueIdentifierForRouteController___block_invoke_cold_1();
  }
}

void __70__TUCallServicesInterface_routesByUniqueIdentifierForRouteController___block_invoke_85(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __70__TUCallServicesInterface_routesByUniqueIdentifierForRouteController___block_invoke_85_cold_1();
  }
}

- (void)routesByUniqueIdentifierForRouteController:(id)controller completionHandler:(id)handler
{
  controllerCopy = controller;
  handlerCopy = handler;
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  localRouteController = [(TUCallServicesInterface *)self localRouteController];

  if (localRouteController == controllerCopy)
  {
    v13 = TUDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1956FD000, v13, OS_LOG_TYPE_DEFAULT, "Proxying localRouteController routes asynchronously", buf, 2u);
    }

    v12 = [(TUCallServicesInterface *)self asynchronousServerWithErrorHandler:&__block_literal_global_90_0];
    [v12 localRoutesByUniqueIdentifier:handlerCopy];
    goto LABEL_9;
  }

  pairedHostDeviceRouteController = [(TUCallServicesInterface *)self pairedHostDeviceRouteController];

  if (pairedHostDeviceRouteController == controllerCopy)
  {
    v11 = TUDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_1956FD000, v11, OS_LOG_TYPE_DEFAULT, "Proxying pairedHostDeviceRouteController routes asynchronously", v14, 2u);
    }

    v12 = [(TUCallServicesInterface *)self asynchronousServerWithErrorHandler:&__block_literal_global_93];
    [v12 pairedHostDeviceRoutesByUniqueIdentifier:handlerCopy];
LABEL_9:
  }
}

void __88__TUCallServicesInterface_routesByUniqueIdentifierForRouteController_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __88__TUCallServicesInterface_routesByUniqueIdentifierForRouteController_completionHandler___block_invoke_cold_1();
  }
}

void __88__TUCallServicesInterface_routesByUniqueIdentifierForRouteController_completionHandler___block_invoke_91(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __88__TUCallServicesInterface_routesByUniqueIdentifierForRouteController_completionHandler___block_invoke_91_cold_1();
  }
}

- (void)setVolume:(float)volume forRouteController:(id)controller
{
  v18 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  localRouteController = [(TUCallServicesInterface *)self localRouteController];

  if (localRouteController == controllerCopy)
  {
    v13 = TUDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134217984;
      volumeCopy2 = volume;
      _os_log_impl(&dword_1956FD000, v13, OS_LOG_TYPE_DEFAULT, "Proxying setting localDevice for %f", &v16, 0xCu);
    }

    asynchronousServer = [(TUCallServicesInterface *)self asynchronousServer];
    *&v14 = volume;
    [asynchronousServer setLocalDeviceVolume:v14];
    goto LABEL_9;
  }

  pairedHostDeviceRouteController = [(TUCallServicesInterface *)self pairedHostDeviceRouteController];

  if (pairedHostDeviceRouteController == controllerCopy)
  {
    v10 = TUDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134217984;
      volumeCopy2 = volume;
      _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "Proxying setPairedHostDeviceVolume for %f", &v16, 0xCu);
    }

    asynchronousServer = [(TUCallServicesInterface *)self asynchronousServer];
    *&v12 = volume;
    [asynchronousServer setPairedHostDeviceVolume:v12];
LABEL_9:
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)validateIMAVPush:(id)push
{
  pushCopy = push;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v5 = [(TUCallServicesInterface *)self synchronousServerWithErrorHandler:&__block_literal_global_95];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__TUCallServicesInterface_validateIMAVPush___block_invoke_96;
  v7[3] = &unk_1E7426598;
  v7[4] = &v8;
  [v5 validateIMAVPush:pushCopy reply:v7];

  LOBYTE(v5) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __44__TUCallServicesInterface_validateIMAVPush___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __44__TUCallServicesInterface_validateIMAVPush___block_invoke_cold_1();
  }
}

void __93__TUCallServicesInterface_containsRestrictedHandle_forBundleIdentifier_performSynchronously___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __93__TUCallServicesInterface_containsRestrictedHandle_forBundleIdentifier_performSynchronously___block_invoke_cold_1();
  }
}

- (id)policyForAddresses:(id)addresses forBundleIdentifier:(id)identifier
{
  addressesCopy = addresses;
  identifierCopy = identifier;
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__9;
  v17 = __Block_byref_object_dispose__9;
  v18 = 0;
  v9 = [(TUCallServicesInterface *)self synchronousServerWithErrorHandler:&__block_literal_global_102_1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__TUCallServicesInterface_policyForAddresses_forBundleIdentifier___block_invoke_103;
  v12[3] = &unk_1E7426570;
  v12[4] = &v13;
  [v9 policyForAddresses:addressesCopy forBundleIdentifier:identifierCopy reply:v12];

  v10 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v10;
}

void __66__TUCallServicesInterface_policyForAddresses_forBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __66__TUCallServicesInterface_policyForAddresses_forBundleIdentifier___block_invoke_cold_1();
  }
}

- (BOOL)willRestrictAddresses:(id)addresses forBundleIdentifier:(id)identifier
{
  addressesCopy = addresses;
  identifierCopy = identifier;
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v9 = [(TUCallServicesInterface *)self synchronousServerWithErrorHandler:&__block_literal_global_105];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__TUCallServicesInterface_willRestrictAddresses_forBundleIdentifier___block_invoke_106;
  v11[3] = &unk_1E7426598;
  v11[4] = &v12;
  [v9 willRestrictAddresses:addressesCopy forBundleIdentifier:identifierCopy reply:v11];

  LOBYTE(v9) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return v9;
}

void __69__TUCallServicesInterface_willRestrictAddresses_forBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __93__TUCallServicesInterface_containsRestrictedHandle_forBundleIdentifier_performSynchronously___block_invoke_cold_1();
  }
}

void __92__TUCallServicesInterface_shouldRestrictAddresses_forBundleIdentifier_performSynchronously___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __92__TUCallServicesInterface_shouldRestrictAddresses_forBundleIdentifier_performSynchronously___block_invoke_cold_1();
  }
}

- (unint64_t)filterStatusForAddresses:(id)addresses forBundleIdentifier:(id)identifier
{
  addressesCopy = addresses;
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = [(TUCallServicesInterface *)self synchronousServerWithErrorHandler:&__block_literal_global_111_1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__TUCallServicesInterface_filterStatusForAddresses_forBundleIdentifier___block_invoke_112;
  v11[3] = &unk_1E74265C0;
  v11[4] = &v12;
  [v8 filterStatusForAddresses:addressesCopy forBundleIdentifier:identifierCopy reply:v11];

  v9 = v13[3];
  _Block_object_dispose(&v12, 8);

  return v9;
}

void __72__TUCallServicesInterface_filterStatusForAddresses_forBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __92__TUCallServicesInterface_shouldRestrictAddresses_forBundleIdentifier_performSynchronously___block_invoke_cold_1();
  }
}

- (BOOL)isUnknownAddress:(id)address normalizedAddress:(id)normalizedAddress forBundleIdentifier:(id)identifier
{
  addressCopy = address;
  normalizedAddressCopy = normalizedAddress;
  identifierCopy = identifier;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v11 = [(TUCallServicesInterface *)self synchronousServerWithErrorHandler:&__block_literal_global_115];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __82__TUCallServicesInterface_isUnknownAddress_normalizedAddress_forBundleIdentifier___block_invoke_116;
  v13[3] = &unk_1E7426598;
  v13[4] = &v14;
  [v11 isUnknownAddress:addressCopy normalizedAddress:normalizedAddressCopy forBundleIdentifier:identifierCopy reply:v13];

  LOBYTE(v11) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);

  return v11;
}

void __82__TUCallServicesInterface_isUnknownAddress_normalizedAddress_forBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __82__TUCallServicesInterface_isUnknownAddress_normalizedAddress_forBundleIdentifier___block_invoke_cold_1();
  }
}

void __104__TUCallServicesInterface_isRestrictedExclusivelyByScreenTime_forBundleIdentifier_performSynchronously___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __104__TUCallServicesInterface_isRestrictedExclusivelyByScreenTime_forBundleIdentifier_performSynchronously___block_invoke_cold_1();
  }
}

- (void)setClientCapabilities:(id)capabilities
{
  v11 = *MEMORY[0x1E69E9840];
  capabilitiesCopy = capabilities;
  queue = [(TUCallServicesInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = capabilitiesCopy;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Proxying setClientCapabilities through CSD for capabilities %@", &v9, 0xCu);
  }

  asynchronousServer = [(TUCallServicesInterface *)self asynchronousServer];
  [asynchronousServer setClientCapabilities:capabilitiesCopy];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)handleLocalRoutesByUniqueIdentifierUpdated:(id)updated
{
  updatedCopy = updated;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__TUCallServicesInterface_handleLocalRoutesByUniqueIdentifierUpdated___block_invoke;
  v6[3] = &unk_1E7424898;
  v6[4] = self;
  v7 = updatedCopy;
  v5 = updatedCopy;
  [(TUCallServicesInterface *)self performBlockOnQueue:v6];
}

void __70__TUCallServicesInterface_handleLocalRoutesByUniqueIdentifierUpdated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) localRouteController];
  [v2 handleRoutesByUniqueIdentifierUpdated:*(a1 + 40)];
}

- (void)handlePairedHostDeviceRoutesByUniqueIdentifierUpdated:(id)updated
{
  updatedCopy = updated;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __81__TUCallServicesInterface_handlePairedHostDeviceRoutesByUniqueIdentifierUpdated___block_invoke;
  v6[3] = &unk_1E7424898;
  v6[4] = self;
  v7 = updatedCopy;
  v5 = updatedCopy;
  [(TUCallServicesInterface *)self performBlockOnQueue:v6];
}

void __81__TUCallServicesInterface_handlePairedHostDeviceRoutesByUniqueIdentifierUpdated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pairedHostDeviceRouteController];
  [v2 handleRoutesByUniqueIdentifierUpdated:*(a1 + 40)];
}

- (void)handlePairedHostVolumeChanged:(float)changed
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __57__TUCallServicesInterface_handlePairedHostVolumeChanged___block_invoke;
  v3[3] = &unk_1E74256D0;
  v3[4] = self;
  changedCopy = changed;
  [(TUCallServicesInterface *)self performBlockOnQueue:v3];
}

void __57__TUCallServicesInterface_handlePairedHostVolumeChanged___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) pairedHostDeviceRouteController];
  LODWORD(v2) = *(a1 + 40);
  [v3 handleVolumeUpdateFromHost:v2];
}

- (void)handleNewCaptionsResult:(id)result
{
  resultCopy = result;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__TUCallServicesInterface_handleNewCaptionsResult___block_invoke;
  v6[3] = &unk_1E7424898;
  v6[4] = self;
  v7 = resultCopy;
  v5 = resultCopy;
  [(TUCallServicesInterface *)self performBlockOnQueue:v6];
}

void __51__TUCallServicesInterface_handleNewCaptionsResult___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) callCenter];
  [v2 _handleReceivedCaptionUpdate:*(a1 + 40)];
}

- (void)handleFrequencyChangedTo:(id)to inDirection:(int)direction forCallsWithUniqueProxyIdentifiers:(id)identifiers
{
  toCopy = to;
  identifiersCopy = identifiers;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __99__TUCallServicesInterface_handleFrequencyChangedTo_inDirection_forCallsWithUniqueProxyIdentifiers___block_invoke;
  v12[3] = &unk_1E74265E8;
  v13 = identifiersCopy;
  selfCopy = self;
  directionCopy = direction;
  v15 = toCopy;
  v10 = toCopy;
  v11 = identifiersCopy;
  [(TUCallServicesInterface *)self performBlockOnQueue:v12];
}

void __99__TUCallServicesInterface_handleFrequencyChangedTo_inDirection_forCallsWithUniqueProxyIdentifiers___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(a1 + 40) _proxyCallWithUniqueProxyIdentifier:{*(*(&v11 + 1) + 8 * i), v11}];
        v8 = v7;
        v9 = *(a1 + 56);
        if (v9 == 2)
        {
          [v7 setLocalFrequency:*(a1 + 48)];
        }

        else if (v9 == 1)
        {
          [v7 setRemoteFrequency:*(a1 + 48)];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)handleCurrentCallsChanged:(id)changed callDisconnected:(id)disconnected
{
  v13 = *MEMORY[0x1E69E9840];
  disconnectedCopy = disconnected;
  v7 = disconnectedCopy;
  if (disconnectedCopy)
  {
    v12 = disconnectedCopy;
    v8 = MEMORY[0x1E695DEC8];
    changedCopy = changed;
    changedCopy2 = [v8 arrayWithObjects:&v12 count:1];
    [(TUCallServicesInterface *)self _handleCurrentCallsChanged:changedCopy callsDisconnected:changedCopy2, v12, v13];
  }

  else
  {
    changedCopy2 = changed;
    [(TUCallServicesInterface *)self _handleCurrentCallsChanged:changedCopy2 callsDisconnected:MEMORY[0x1E695E0F0]];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)handleMeterLevelChangedTo:(float)to inDirection:(int)direction forCallsWithUniqueProxyIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __100__TUCallServicesInterface_handleMeterLevelChangedTo_inDirection_forCallsWithUniqueProxyIdentifiers___block_invoke;
  v10[3] = &unk_1E7425028;
  v11 = identifiersCopy;
  selfCopy = self;
  directionCopy = direction;
  toCopy = to;
  v9 = identifiersCopy;
  [(TUCallServicesInterface *)self performBlockOnQueue:v10];
}

void __100__TUCallServicesInterface_handleMeterLevelChangedTo_inDirection_forCallsWithUniqueProxyIdentifiers___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(a1 + 40) _proxyCallWithUniqueProxyIdentifier:{*(*(&v12 + 1) + 8 * i), v12}];
        v9 = v7;
        v10 = *(a1 + 48);
        if (v10 == 2)
        {
          LODWORD(v8) = *(a1 + 52);
          [v7 setLocalMeterLevel:v8];
        }

        else if (v10 == 1)
        {
          LODWORD(v8) = *(a1 + 52);
          [v7 setRemoteMeterLevel:v8];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)handleUIXPCEndpointChanged:(id)changed
{
  changedCopy = changed;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__TUCallServicesInterface_handleUIXPCEndpointChanged___block_invoke;
  v6[3] = &unk_1E7424898;
  v6[4] = self;
  v7 = changedCopy;
  v5 = changedCopy;
  [(TUCallServicesInterface *)self performBlockOnQueue:v6];
}

void __54__TUCallServicesInterface_handleUIXPCEndpointChanged___block_invoke(uint64_t a1)
{
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "HandlingUIXPCEndpointChanged", v8, 2u);
  }

  v3 = [TUUIXPCClientConnection alloc];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) callCenter];
  v6 = [(TUUIXPCClientConnection *)v3 initWithListenerEndpoint:v4 callCenter:v5];
  v7 = [*(a1 + 32) callCenter];
  [v7 setUiDataSource:v6];
}

- (void)handleReceivedCallDTMFUpdate:(id)update forCallWithUniqueProxyIdentifier:(id)identifier
{
  updateCopy = update;
  identifierCopy = identifier;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __89__TUCallServicesInterface_handleReceivedCallDTMFUpdate_forCallWithUniqueProxyIdentifier___block_invoke;
  v10[3] = &unk_1E7424FD8;
  v11 = updateCopy;
  v12 = identifierCopy;
  selfCopy = self;
  v8 = identifierCopy;
  v9 = updateCopy;
  [(TUCallServicesInterface *)self performBlockOnQueue:v10];
}

void __89__TUCallServicesInterface_handleReceivedCallDTMFUpdate_forCallWithUniqueProxyIdentifier___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v14 = 138412546;
    v15 = v3;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "handleReceivedCallDTMFUpdate %@ for call with unique proxy identifier %@", &v14, 0x16u);
  }

  v5 = [*(a1 + 48) _proxyCallWithUniqueProxyIdentifier:*(a1 + 40)];
  if (v5)
  {
    v6 = [*(a1 + 48) callCenter];
    [v6 _handleReceivedCallDTMFUpdate:*(a1 + 32) forCall:v5];
  }

  else
  {
    v6 = TUDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __89__TUCallServicesInterface_handleReceivedCallDTMFUpdate_forCallWithUniqueProxyIdentifier___block_invoke_cold_1((a1 + 40), v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_handleCurrentCallsChanged:(id)changed callsDisconnected:(id)disconnected
{
  changedCopy = changed;
  disconnectedCopy = disconnected;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__TUCallServicesInterface__handleCurrentCallsChanged_callsDisconnected___block_invoke;
  v10[3] = &unk_1E7424FD8;
  v11 = changedCopy;
  selfCopy = self;
  v13 = disconnectedCopy;
  v8 = disconnectedCopy;
  v9 = changedCopy;
  [(TUCallServicesInterface *)self performBlockOnQueue:v10];
}

void __72__TUCallServicesInterface__handleCurrentCallsChanged_callsDisconnected___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Handling current calls changed: %@", buf, 0xCu);
  }

  v4 = [*(a1 + 40) callNotificationManager];
  v5 = [*(a1 + 40) callCenter];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__TUCallServicesInterface__handleCurrentCallsChanged_callsDisconnected___block_invoke_121;
  v8[3] = &unk_1E7424FD8;
  v6 = *(a1 + 48);
  v8[4] = *(a1 + 40);
  v9 = v6;
  v10 = *(a1 + 32);
  [v4 postNotificationsForCallContainer:v5 afterUpdatesInBlock:v8];

  v7 = *MEMORY[0x1E69E9840];
}

void __72__TUCallServicesInterface__handleCurrentCallsChanged_callsDisconnected___block_invoke_121(id *a1)
{
  v2 = [a1[4] callNotificationManager];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__TUCallServicesInterface__handleCurrentCallsChanged_callsDisconnected___block_invoke_2;
  v5[3] = &unk_1E7424FD8;
  v6 = a1[5];
  v3 = a1[6];
  v4 = a1[4];
  v7 = v3;
  v8 = v4;
  [v2 deferNotificationsUntilAfterPerformingBlock:v5];
}

void __72__TUCallServicesInterface__handleCurrentCallsChanged_callsDisconnected___block_invoke_2(id *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if ([a1[4] count])
  {
    v2 = TUDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = a1[4];
      *buf = 138412290;
      v19 = v3;
      _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Handling call changed for disconnected calls: %@", buf, 0xCu);
    }

    v4 = [a1[5] arrayByAddingObjectsFromArray:a1[4]];
  }

  else
  {
    v4 = a1[5];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [a1[6] _proxyCallWithCall:{v10, v13}];
        [v10 setComparativeCall:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [a1[6] _updateCurrentCalls:a1[5] withNotificationsUsingUpdatedCalls:v5];
  v12 = *MEMORY[0x1E69E9840];
}

- (void)resetCallProvisionalStates
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __53__TUCallServicesInterface_resetCallProvisionalStates__block_invoke;
  v2[3] = &unk_1E7424950;
  v2[4] = self;
  [(TUCallServicesInterface *)self performBlockOnQueue:v2];
}

void __53__TUCallServicesInterface_resetCallProvisionalStates__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = @"TUCallCenterResetCallStateNotification";
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Resetting call transition states and posting %@", buf, 0xCu);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [*(a1 + 32) currentCalls];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = [*(a1 + 32) callNotificationManager];
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __53__TUCallServicesInterface_resetCallProvisionalStates__block_invoke_122;
        v12[3] = &unk_1E7424950;
        v12[4] = v8;
        [v9 postNotificationsForCall:v8 afterUpdatesInBlock:v12];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v10 = [MEMORY[0x1E696AD88] defaultCenter];
  [v10 postNotificationName:@"TUCallCenterResetCallStateNotification" object:0];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)handleNotificationName:(id)name forCallWithUniqueProxyIdentifier:(id)identifier userInfo:(id)info
{
  nameCopy = name;
  identifierCopy = identifier;
  infoCopy = info;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __92__TUCallServicesInterface_handleNotificationName_forCallWithUniqueProxyIdentifier_userInfo___block_invoke;
  v14[3] = &unk_1E7425188;
  v15 = nameCopy;
  v16 = identifierCopy;
  v17 = infoCopy;
  selfCopy = self;
  v11 = infoCopy;
  v12 = identifierCopy;
  v13 = nameCopy;
  [(TUCallServicesInterface *)self performBlockOnQueue:v14];
}

void __92__TUCallServicesInterface_handleNotificationName_forCallWithUniqueProxyIdentifier_userInfo___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v9 = 138412802;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Handling notification %@ for call with unique proxy identifier %@ userInfo %@", &v9, 0x20u);
  }

  v6 = [*(a1 + 56) _proxyCallWithUniqueProxyIdentifier:*(a1 + 40)];
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 postNotificationName:*(a1 + 32) object:v6 userInfo:*(a1 + 48)];

  v8 = *MEMORY[0x1E69E9840];
}

void __87__TUCallServicesInterface_requestCurrentStateWithCompletionHandler_handleInitialState___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error using remote object proxy: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)dialWithRequest:(uint64_t)a1 completion:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"TUCallServicesInterface.m" lineNumber:543 description:@"Local daemon delegate must pass in a completion block"];
}

void __54__TUCallServicesInterface_dialWithRequest_completion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_0(&dword_1956FD000, a2, a3, "Error using remote object proxy for dial: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __61__TUCallServicesInterface_saveCustomGreeting_forAccountUUID___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error using remote object proxy when requesting answering machine availability: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __56__TUCallServicesInterface_customGreetingForAccountUUID___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error using remote object proxy when requesting custom greeting: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __42__TUCallServicesInterface_defaultGreeting__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error using remote object proxy when requesting default greeting: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __50__TUCallServicesInterface_fetchCurrentCallUpdates__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error using remote object proxy when fetching TUCallUpdates: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __45__TUCallServicesInterface_screenWithRequest___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error using remote object proxy when screenWithRequest: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __49__TUCallServicesInterface_startReceptionistReply__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error using remote object proxy when startReceptionistReply: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __49__TUCallServicesInterface_sendReceptionistReply___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error using remote object proxy when sendReceptionistReply: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __62__TUCallServicesInterface_performRecordingRequest_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error using remote object proxy when perform audio recording request: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __64__TUCallServicesInterface_performTranslationRequest_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error using remote object proxy when perform translation request: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __66__TUCallServicesInterface__performSmartHoldingRequest_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error using remote object proxy when performing TUSmartHoldingSessionRequest: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __56__TUCallServicesInterface_registerAnonymousXPCEndpoint___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error using remote object proxy when registerAnonymousXPCEndpoint: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __53__TUCallServicesInterface_fetchAnonymousXPCEndpoint___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error using remote object proxy when fetchAnonymousXPCEndpoint: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __85__TUCallServicesInterface_pullCallFromClientUsingHandoffActivityUserInfo_completion___block_invoke_3_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error using remote object proxy for %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __70__TUCallServicesInterface_routesByUniqueIdentifierForRouteController___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error using remote object proxy when requesting synchronous local routes: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __70__TUCallServicesInterface_routesByUniqueIdentifierForRouteController___block_invoke_85_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error using remote object proxy when requesting synchronous paired host device routes: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __88__TUCallServicesInterface_routesByUniqueIdentifierForRouteController_completionHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error using remote object proxy when requesting local routes asynchronously: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __88__TUCallServicesInterface_routesByUniqueIdentifierForRouteController_completionHandler___block_invoke_91_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error using remote object proxy when requesting paired host device routes asynchronously: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __44__TUCallServicesInterface_validateIMAVPush___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error when requesting synchronous push validation: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __93__TUCallServicesInterface_containsRestrictedHandle_forBundleIdentifier_performSynchronously___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error using remote object proxy when requesting synchronous restricted handle check: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __66__TUCallServicesInterface_policyForAddresses_forBundleIdentifier___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error using remote object proxy when requesting synchronous policy check for addresses: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __92__TUCallServicesInterface_shouldRestrictAddresses_forBundleIdentifier_performSynchronously___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error using remote object proxy when requesting synchronous restricted addresses check: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __82__TUCallServicesInterface_isUnknownAddress_normalizedAddress_forBundleIdentifier___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error using remote object proxy when requesting synchronous unknown address check: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __104__TUCallServicesInterface_isRestrictedExclusivelyByScreenTime_forBundleIdentifier_performSynchronously___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error using remote object proxy when requesting synchronous exclusive Screen Time check: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __89__TUCallServicesInterface_handleReceivedCallDTMFUpdate_forCallWithUniqueProxyIdentifier___block_invoke_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0(&dword_1956FD000, a2, a3, "handleReceivedCallDTMFUpdate: No call found for unique proxy identifier %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end