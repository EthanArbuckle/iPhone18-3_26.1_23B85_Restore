@interface SUControllerManager
- (SUControllerManager)initWithExclusiveControl:(BOOL)control communalUponDisconnect:(BOOL)disconnect withDelegate:(id)delegate;
- (SUControllerManagerDelegate)delegate;
- (id)_connectToServer;
- (id)_serverConnection;
- (id)_stateName;
- (id)getTrainName;
- (id)newDescriptorFromAsset:(id)asset;
- (id)paramsForOTAScans:(id)scans;
- (void)_addClient;
- (void)_daemonLaunched;
- (void)_forwardApplyProgress:(id)progress;
- (void)_forwardAutoScanPerformed:(id)performed;
- (void)_forwardConnectionError:(id)error;
- (void)_forwardConnectionRegained;
- (void)_forwardDownloadProgress:(id)progress;
- (void)_forwardInstallResult:(id)result;
- (void)_forwardScanPostponed:(id)postponed;
- (void)_forwardScanResult:(id)result;
- (void)_handleStateReport;
- (void)_handleXPCEvent:(id)event connection:(id)connection;
- (void)_indicateConnectionError:(id)error;
- (void)_indicateConnectionRegained;
- (void)_indicateMessageReceived:(id)received messageType:(const char *)type;
- (void)cancelCurrentConnection;
- (void)dealloc;
- (void)installUpdate:(id)update;
- (void)managerConfig:(id)config;
- (void)managerState:(id)state;
- (void)managerStatus:(id)status;
- (void)modifyConfig:(id)config modifying:(int64_t)modifying completion:(id)completion;
- (void)performMigration;
- (void)purgeUpdate:(id)update completion:(id)completion;
- (void)scanForUpdates;
- (void)scanForUpdates:(id)updates;
- (void)scanForUpdatesFromNonTVOSDevice:(id)device completion:(id)completion;
- (void)setDelegate:(id)delegate;
- (void)startDownload:(id)download;
- (void)updateAcceptingTermsAndConditions:(id)conditions;
- (void)updateAcceptingTermsAndConditions:(id)conditions usingPassword:(id)password;
- (void)useCredentialsToPersonalize:(id)personalize withAccountName:(id)name andPassword:(id)password;
- (void)useSSOTokenToPersonalize:(id)personalize withSSOToken:(id)token;
- (void)userDidAcceptTermsAndConditionsForUpdate:(id)update;
@end

@implementation SUControllerManager

- (SUControllerManager)initWithExclusiveControl:(BOOL)control communalUponDisconnect:(BOOL)disconnect withDelegate:(id)delegate
{
  delegateCopy = delegate;
  v31.receiver = self;
  v31.super_class = SUControllerManager;
  v9 = [(SUControllerManager *)&v31 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, delegateCopy);
    v11 = dispatch_queue_create("com.apple.SUControllerManager.server", 0);
    serverQueue = v10->_serverQueue;
    v10->_serverQueue = v11;

    v13 = dispatch_queue_create("com.apple.SUControllerManager.delegate", 0);
    delegateQueue = v10->_delegateQueue;
    v10->_delegateQueue = v13;

    v10->_exclusiveControl = control;
    v10->_communalUponDisconnect = disconnect;
    *&v10->_disconnected = 257;
    scanner = v10->_scanner;
    v10->_scanner = 0;

    v10->_needToAddClientForXPCMessages = 1;
    uTF8String = [@"com.apple.SoftwareUpdateController.Daemon.Launched" UTF8String];
    v17 = v10->_serverQueue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __84__SUControllerManager_initWithExclusiveControl_communalUponDisconnect_withDelegate___block_invoke;
    handler[3] = &unk_279CA8718;
    v18 = v10;
    v30 = v18;
    notify_register_dispatch(uTF8String, &v10->_notifyDaemonStartedToken, v17, handler);
    uTF8String2 = [@"com.apple.SoftwareUpdateController.State.change" UTF8String];
    v20 = v10->_serverQueue;
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __84__SUControllerManager_initWithExclusiveControl_communalUponDisconnect_withDelegate___block_invoke_2;
    v27 = &unk_279CA8718;
    v21 = v18;
    v28 = v21;
    notify_register_dispatch(uTF8String2, v18 + 4, v20, &v24);
    _serverConnection = [v21 _serverConnection];
  }

  return v10;
}

uint64_t __84__SUControllerManager_initWithExclusiveControl_communalUponDisconnect_withDelegate___block_invoke(uint64_t a1)
{
  v2 = +[SUControllerLogger sharedLogger];
  [v2 logAtLevel:1 label:"-[SUControllerManager initWithExclusiveControl:communalUponDisconnect:withDelegate:]_block_invoke" format:@"SUCManager - received notification that sucontrollerd is launched"];

  v3 = *(a1 + 32);

  return [v3 _daemonLaunched];
}

- (void)dealloc
{
  serverQueue = [(SUControllerManager *)self serverQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__SUControllerManager_dealloc__block_invoke;
  block[3] = &unk_279CA8740;
  block[4] = self;
  dispatch_sync(serverQueue, block);

  objc_storeWeak(&self->_delegate, 0);
  serverQueue = self->_serverQueue;
  self->_serverQueue = 0;

  delegateQueue = self->_delegateQueue;
  self->_delegateQueue = 0;

  scanner = self->_scanner;
  self->_scanner = 0;

  notify_cancel(self->_notifyStateReportToken);
  notify_cancel(self->_notifyDaemonStartedToken);
  v7.receiver = self;
  v7.super_class = SUControllerManager;
  [(SUControllerManager *)&v7 dealloc];
}

void __30__SUControllerManager_dealloc__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  if (v1)
  {
    xpc_connection_cancel(v1);
  }
}

- (void)cancelCurrentConnection
{
  serverQueue = [(SUControllerManager *)self serverQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SUControllerManager_cancelCurrentConnection__block_invoke;
  block[3] = &unk_279CA8740;
  block[4] = self;
  dispatch_sync(serverQueue, block);
}

void __46__SUControllerManager_cancelCurrentConnection__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (v2)
  {
    xpc_connection_cancel(v2);
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    *(v3 + 32) = 0;
  }
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  serverQueue = [(SUControllerManager *)self serverQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__SUControllerManager_setDelegate___block_invoke;
  v7[3] = &unk_279CA8768;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_sync(serverQueue, v7);
}

- (SUControllerManagerDelegate)delegate
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  serverQueue = [(SUControllerManager *)self serverQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__SUControllerManager_delegate__block_invoke;
  v6[3] = &unk_279CA8790;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serverQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __31__SUControllerManager_delegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x2821F96F8]();
}

- (id)_connectToServer
{
  serverQueue = [(SUControllerManager *)self serverQueue];
  dispatch_assert_queue_V2(serverQueue);

  serverXPCConnection = [(SUControllerManager *)self serverXPCConnection];
  if (!serverXPCConnection)
  {
    mach_service = xpc_connection_create_mach_service(SUControllerMachServiceName, 0, 2uLL);
    objc_initWeak(&location, self);
    handler = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __39__SUControllerManager__connectToServer__block_invoke;
    v11 = &unk_279CA87B8;
    objc_copyWeak(&v13, &location);
    serverXPCConnection = mach_service;
    v12 = serverXPCConnection;
    xpc_connection_set_event_handler(serverXPCConnection, &handler);
    [(SUControllerManager *)self setServerXPCConnection:serverXPCConnection];
    xpc_connection_resume(serverXPCConnection);
    v6 = +[SUControllerLogger sharedLogger];
    [v6 logAtLevel:1 label:"-[SUControllerManager _connectToServer]" format:{@"SUCManager[CONNECTING] resumed server connection: %@", serverXPCConnection, handler, v9, v10, v11}];

    if ([(SUControllerManager *)self initializing])
    {
      [(SUControllerManager *)self setInitializing:0];
    }

    [(SUControllerManager *)self setNeedToAddClientForXPCMessages:1];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  if ([(SUControllerManager *)self needToAddClientForXPCMessages])
  {
    [(SUControllerManager *)self _addClient];
  }

  return serverXPCConnection;
}

void __39__SUControllerManager__connectToServer__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleXPCEvent:v6 connection:*(a1 + 32)];
  }

  else
  {
    v5 = +[SUControllerLogger sharedLogger];
    [v5 logAtLevel:0 label:"-[SUControllerManager _connectToServer]_block_invoke" format:@"SUCManager[GONE] XPC event when no strong self"];
  }
}

- (id)_serverConnection
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  serverQueue = [(SUControllerManager *)self serverQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__SUControllerManager__serverConnection__block_invoke;
  v6[3] = &unk_279CA8790;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serverQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __40__SUControllerManager__serverConnection__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _connectToServer];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)_handleXPCEvent:(id)event connection:(id)connection
{
  eventCopy = event;
  connectionCopy = connection;
  serverQueue = [(SUControllerManager *)self serverQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SUControllerManager__handleXPCEvent_connection___block_invoke;
  block[3] = &unk_279CA87E0;
  v12 = eventCopy;
  selfCopy = self;
  v14 = connectionCopy;
  v9 = connectionCopy;
  v10 = eventCopy;
  dispatch_async(serverQueue, block);
}

void __50__SUControllerManager__handleXPCEvent_connection___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x26D667FF0](*(a1 + 32));
  if (v2 == MEMORY[0x277D86480])
  {
    v9 = +[SUControllerLogger sharedLogger];
    v10 = [*(a1 + 40) _stateName];
    [v9 logAtLevel:0 label:"-[SUControllerManager _handleXPCEvent:connection:]_block_invoke" format:{@"%@ XPC error on server connection: %s", v10, xpc_dictionary_get_string(*(a1 + 32), *MEMORY[0x277D86400])}];

    v11 = *(a1 + 32);
    if (v11 == MEMORY[0x277D863F0])
    {
      v19 = +[SUControllerLogger sharedLogger];
      [v19 logAtLevel:0 label:"-[SUControllerManager _handleXPCEvent:connection:]_block_invoke" format:@"Received XPC_ERROR_CONNECTION_INTERRUPTED. sucontrollerd disconnected"];

      [*(a1 + 40) setDisconnected:1];
      [*(a1 + 40) setNeedToAddClientForXPCMessages:1];
    }

    else if (v11 == MEMORY[0x277D863F8])
    {
      v12 = *(a1 + 48);
      v13 = xpc_connection_copy_invalidation_reason();
      if (v13)
      {
        v14 = v13;
        v15 = +[SUControllerLogger sharedLogger];
        [v15 logAtLevel:0 label:"-[SUControllerManager _handleXPCEvent:connection:]_block_invoke" format:{@"Received XPC_ERROR_CONNECTION_INVALID. sucontrollerd disconnected.  Invalidation reason: %s", v14}];

        free(v14);
      }

      [*(a1 + 40) setServerXPCConnection:0];
      [*(a1 + 40) setDisconnected:1];
    }

    v21 = *(a1 + 32);
    v20 = *(a1 + 40);

    [v20 _indicateConnectionError:v21];
  }

  else
  {
    v3 = v2;
    v4 = *(a1 + 32);
    if (v3 == MEMORY[0x277D86468])
    {
      string = xpc_dictionary_get_string(v4, SUControllerMessageTypeKey);
      if (!strcmp(string, SUControllerMessageTypeClientHasBeenAdded))
      {
        v22 = +[SUControllerLogger sharedLogger];
        v23 = [*(a1 + 40) _stateName];
        [v22 logAtLevel:1 label:"-[SUControllerManager _handleXPCEvent:connection:]_block_invoke" format:{@"%@ XPC connection has been added", v23}];

        v24 = *(a1 + 40);

        [v24 setNeedToAddClientForXPCMessages:0];
      }

      else
      {
        v18 = *(a1 + 32);
        v17 = *(a1 + 40);

        [v17 _indicateMessageReceived:v18 messageType:string];
      }
    }

    else
    {
      v5 = MEMORY[0x26D667F00](v4);
      if (v5)
      {
        v6 = v5;
        v7 = +[SUControllerLogger sharedLogger];
        v8 = [*(a1 + 40) _stateName];
        [v7 logAtLevel:0 label:"-[SUControllerManager _handleXPCEvent:connection:]_block_invoke" format:{@"%@ unexpected message %s on connection %p", v8, v6, *(a1 + 48)}];

        free(v6);
      }
    }
  }
}

- (void)_handleStateReport
{
  v2 = +[SUControllerLogger sharedLogger];
  [v2 logAtLevel:1 label:"-[SUControllerManager _handleStateReport]" format:@"sucontrollerd state changed"];
}

- (void)_daemonLaunched
{
  serverQueue = [(SUControllerManager *)self serverQueue];
  dispatch_assert_queue_V2(serverQueue);

  if ([(SUControllerManager *)self disconnected])
  {
    if ([(SUControllerManager *)self initializing])
    {
      v4 = +[SUControllerLogger sharedLogger];
      [v4 logAtLevel:1 label:"-[SUControllerManager _daemonLaunched]" format:@"sucontrollerd is launched - initial launch after boot"];

      [(SUControllerManager *)self setInitializing:0];
    }

    else
    {
      [(SUControllerManager *)self _indicateConnectionRegained];
      v5 = +[SUControllerLogger sharedLogger];
      [v5 logAtLevel:1 label:"-[SUControllerManager _daemonLaunched]" format:{@"sucontrollerd is relaunched.  Connecting %s to get deletegate callback again.", getprogname()}];

      _connectToServer = [(SUControllerManager *)self _connectToServer];
    }

    [(SUControllerManager *)self setDisconnected:0];
  }
}

- (void)_addClient
{
  serverQueue = [(SUControllerManager *)self serverQueue];
  dispatch_assert_queue_V2(serverQueue);

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%s", getprogname()];
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, SUControllerMessageTypeKey, SUControllerMessageTypeAddClient);
  v5 = SUControllerMessageClientNameKey;
  v6 = v9;
  xpc_dictionary_set_string(v4, v5, [v9 UTF8String]);
  xpc_dictionary_set_BOOL(v4, SUControllerMessageExclusiveControlKey, [(SUControllerManager *)self exclusiveControl]);
  xpc_dictionary_set_BOOL(v4, SUControllerMessageCommunalUponDisconnectKey, [(SUControllerManager *)self communalUponDisconnect]);
  v7 = +[SUControllerLogger sharedLogger];
  [v7 logAtLevel:1 label:"-[SUControllerManager _addClient]" format:{@"Sending add client message for client name %@", v9}];

  serverXPCConnection = [(SUControllerManager *)self serverXPCConnection];
  xpc_connection_send_message(serverXPCConnection, v4);
}

- (id)_stateName
{
  serverQueue = [(SUControllerManager *)self serverQueue];
  dispatch_assert_queue_V2(serverQueue);

  if ([(SUControllerManager *)self disconnected])
  {
    return @"SUCManager[DISCONNECTED]";
  }

  else
  {
    return @"SUCManager[CONNECTED]";
  }
}

- (void)_indicateConnectionError:(id)error
{
  errorCopy = error;
  delegateQueue = [(SUControllerManager *)self delegateQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__SUControllerManager__indicateConnectionError___block_invoke;
  v7[3] = &unk_279CA8768;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(delegateQueue, v7);
}

- (void)_indicateConnectionRegained
{
  delegateQueue = [(SUControllerManager *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SUControllerManager__indicateConnectionRegained__block_invoke;
  block[3] = &unk_279CA8740;
  block[4] = self;
  dispatch_async(delegateQueue, block);
}

- (void)_indicateMessageReceived:(id)received messageType:(const char *)type
{
  receivedCopy = received;
  delegateQueue = [(SUControllerManager *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__SUControllerManager__indicateMessageReceived_messageType___block_invoke;
  block[3] = &unk_279CA8808;
  v10 = receivedCopy;
  typeCopy = type;
  block[4] = self;
  v8 = receivedCopy;
  dispatch_async(delegateQueue, block);
}

void __60__SUControllerManager__indicateMessageReceived_messageType___block_invoke(void *a1)
{
  v2 = a1[6];
  if (!strcmp(v2, SUControllerMessageTypeDownloadProgress))
  {
    v6 = a1[4];
    v7 = a1[5];

    [v6 _forwardDownloadProgress:v7];
  }

  else if (!strcmp(v2, SUControllerMessageTypeScanResult))
  {
    v8 = a1[4];
    v9 = a1[5];

    [v8 _forwardScanResult:v9];
  }

  else if (!strcmp(v2, SUControllerMessageTypeScanPostponed))
  {
    v10 = a1[4];
    v11 = a1[5];

    [v10 _forwardScanPostponed:v11];
  }

  else if (!strcmp(v2, SUControllerMessageTypeApplyProgress))
  {
    v12 = a1[4];
    v13 = a1[5];

    [v12 _forwardApplyProgress:v13];
  }

  else if (!strcmp(v2, SUControllerMessageTypeInstallResult))
  {
    v14 = a1[4];
    v15 = a1[5];

    [v14 _forwardInstallResult:v15];
  }

  else if (!strcmp(v2, SUControllerMessageTypeAutoScanPerformed))
  {
    v16 = a1[4];
    v17 = a1[5];

    [v16 _forwardAutoScanPerformed:v17];
  }

  else
  {
    if (!strcmp(v2, SUControllerMessageTypeInstallationCanProceed))
    {
      v18 = +[SUControllerLogger sharedLogger];
      [v18 logAtLevel:0 label:"-[SUControllerManager _indicateMessageReceived:messageType:]_block_invoke" format:{@"[DELEGATE] deprecated message type %s - not reporting whether installation can proceed", a1[6]}];
    }

    else
    {
      v3 = strcmp(v2, SUControllerMessageTypeInstallationWillProceed);
      v4 = +[SUControllerLogger sharedLogger];
      v5 = a1[6];
      v18 = v4;
      if (v3)
      {
        [v4 logAtLevel:0 label:"-[SUControllerManager _indicateMessageReceived:messageType:]_block_invoke" format:{@"unhandled message type %s - not reported to client", v5}];
      }

      else
      {
        [v4 logAtLevel:0 label:"-[SUControllerManager _indicateMessageReceived:messageType:]_block_invoke" format:{@"[DELEGATE] deprecated message type %s - not reporting whether installation will proceed", v5}];
      }
    }
  }
}

- (void)_forwardConnectionError:(id)error
{
  errorCopy = error;
  delegate = [(SUControllerManager *)self delegate];
  if (errorCopy == MEMORY[0x277D863F8] || errorCopy == MEMORY[0x277D863F0])
  {
    v10 = 34;
  }

  else
  {
    v10 = 35;
  }

  v11 = SUControllerError(@"SUControllerError", v10, 0, @"server connection error %@", v5, v6, v7, v8, errorCopy);

  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate manager:self connectionError:v11];
  }

  else
  {
    v12 = +[SUControllerLogger sharedLogger];
    [v12 logAtLevel:1 label:"-[SUControllerManager _forwardConnectionError:]" format:{@"[DELEGATE] delegate does not respond to connectionError - not reporting connection error: %@", v11}];
  }
}

- (void)_forwardConnectionRegained
{
  delegate = [(SUControllerManager *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate connectionRegained:self];
  }

  else
  {
    v3 = +[SUControllerLogger sharedLogger];
    [v3 logAtLevel:1 label:"-[SUControllerManager _forwardConnectionRegained]" format:@"[DELEGATE] delegate does not respond to connectionRegained - not reporting connection regained"];
  }
}

- (void)_forwardScanResult:(id)result
{
  v4 = SUControllerMessageTypeScanForUpdates;
  v5 = SUControllerMessageDescriptorKey;
  resultCopy = result;
  v7 = objc_opt_class();
  v14 = SUControllerIPCDecodeOptionalObjectForKey(v4, resultCopy, v5, v7);
  v8 = SUControllerMessageTypeScanForUpdates;
  v9 = SUControllerMessageErrorKey;
  v10 = objc_opt_class();
  v11 = SUControllerIPCDecodeOptionalObjectForKey(v8, resultCopy, v9, v10);

  delegate = [(SUControllerManager *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate manager:self scanRequestDidLocateUpdate:v14 error:v11];
  }

  else
  {
    v13 = +[SUControllerLogger sharedLogger];
    [v13 logAtLevel:1 label:"-[SUControllerManager _forwardScanResult:]" format:@"[DELEGATE] delegate does not respond to scanRequestDidLocateUpdate - not reporting scan result"];
  }
}

- (void)_forwardScanPostponed:(id)postponed
{
  v4 = SUControllerMessageTypeScanPostponed;
  v5 = SUControllerMessageDescriptorKey;
  postponedCopy = postponed;
  v7 = objc_opt_class();
  v14 = SUControllerIPCDecodeOptionalObjectForKey(v4, postponedCopy, v5, v7);
  v8 = SUControllerMessageTypeScanPostponed;
  v9 = SUControllerMessageErrorKey;
  v10 = objc_opt_class();
  v11 = SUControllerIPCDecodeOptionalObjectForKey(v8, postponedCopy, v9, v10);

  delegate = [(SUControllerManager *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate manager:self scanRequestPostponed:v14 error:v11];
  }

  else
  {
    v13 = +[SUControllerLogger sharedLogger];
    [v13 logAtLevel:1 label:"-[SUControllerManager _forwardScanPostponed:]" format:@"[DELEGATE] delegate does not respond to scanRequestPostponed - not reporting scan postponed"];
  }
}

- (void)_forwardDownloadProgress:(id)progress
{
  v4 = SUControllerMessageTypeDownloadProgress;
  v5 = SUControllerMessageDownloadKey;
  progressCopy = progress;
  v7 = objc_opt_class();
  v28 = SUControllerIPCDecodeOptionalObjectForKey(v4, progressCopy, v5, v7);
  v8 = SUControllerMessageTypeDownloadProgress;
  v9 = SUControllerMessageErrorKey;
  v10 = objc_opt_class();
  v11 = SUControllerIPCDecodeOptionalObjectForKey(v8, progressCopy, v9, v10);

  delegate = [(SUControllerManager *)self delegate];
  v13 = delegate;
  if (v11)
  {
    if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v13 manager:self didFailDownload:v28 withError:v11];
      goto LABEL_15;
    }

    v14 = +[SUControllerLogger sharedLogger];
    v15 = v14;
    v16 = @"[DELEGATE] delegate does not respond to didFailDownload - not reporting download-and-prepare failure";
    goto LABEL_14;
  }

  progress = [v28 progress];
  isDone = [progress isDone];

  if (!isDone)
  {
    if (v13 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v13 manager:self didChangeProgressOnDownload:v28];
      goto LABEL_15;
    }

    v14 = +[SUControllerLogger sharedLogger];
    v15 = v14;
    v16 = @"[DELEGATE] delegate does not respond to didChangeProgressOnDownload - not reporting download-and-prepare progress";
    goto LABEL_14;
  }

  if (!v13)
  {
    goto LABEL_15;
  }

  if (objc_opt_respondsToSelector())
  {
    descriptor = [v28 descriptor];
    willProceedWithInstallation = [descriptor willProceedWithInstallation];
    descriptor2 = [v28 descriptor];
    isAwaitingAdmissionControlForInstallation = [descriptor2 isAwaitingAdmissionControlForInstallation];
    v23 = MEMORY[0x277CCABB0];
    descriptor3 = [v28 descriptor];
    denialReasons = [descriptor3 denialReasons];
    v26 = [v23 numberWithInteger:{objc_msgSend(denialReasons, "code")}];
    [v13 manager:self didFinishDownload:v28 willProceedWithInstallation:willProceedWithInstallation waitingForAdmissionControl:isAwaitingAdmissionControlForInstallation denialReasons:v26];

LABEL_20:
    goto LABEL_15;
  }

  if (objc_opt_respondsToSelector())
  {
    descriptor = [v28 descriptor];
    willProceedWithInstallation2 = [descriptor willProceedWithInstallation];
    descriptor2 = [v28 descriptor];
    [v13 manager:self didFinishDownload:v28 willProceedWithInstallation:willProceedWithInstallation2 waitingForAdmissionControl:{objc_msgSend(descriptor2, "isAwaitingAdmissionControlForInstallation")}];
    goto LABEL_20;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v14 = +[SUControllerLogger sharedLogger];
    v15 = v14;
    v16 = @"[DELEGATE] delegate does not respond to didFinishDownload - not reporting download-and-prepare done";
LABEL_14:
    [v14 logAtLevel:1 label:"-[SUControllerManager _forwardDownloadProgress:]" format:v16];

    goto LABEL_15;
  }

  [v13 manager:self didFinishDownload:v28];
LABEL_15:
}

- (void)_forwardApplyProgress:(id)progress
{
  v4 = SUControllerMessageTypeApplyProgress;
  v5 = SUControllerMessageApplyKey;
  progressCopy = progress;
  v7 = objc_opt_class();
  v13 = SUControllerIPCDecodeOptionalObjectForKey(v4, progressCopy, v5, v7);

  delegate = [(SUControllerManager *)self delegate];
  progress = [v13 progress];
  isDone = [progress isDone];

  if ((isDone & 1) == 0)
  {
    if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      descriptor = [v13 descriptor];
      progress2 = [v13 progress];
      [delegate manager:self didChangeProgressOnApply:descriptor progress:progress2];
    }

    else
    {
      descriptor = +[SUControllerLogger sharedLogger];
      [descriptor logAtLevel:1 label:"-[SUControllerManager _forwardApplyProgress:]" format:@"[DELEGATE] delegate does not respond to didChangeProgressOnApply - not reporting apply progress"];
    }
  }
}

- (void)_forwardInstallResult:(id)result
{
  v4 = SUControllerMessageTypeInstallResult;
  v5 = SUControllerMessageDescriptorKey;
  resultCopy = result;
  v7 = objc_opt_class();
  v17 = SUControllerIPCDecodeOptionalObjectForKey(v4, resultCopy, v5, v7);
  v8 = SUControllerMessageTypeInstallResult;
  v9 = SUControllerMessageErrorKey;
  v10 = objc_opt_class();
  v11 = SUControllerIPCDecodeOptionalObjectForKey(v8, resultCopy, v9, v10);

  delegate = [(SUControllerManager *)self delegate];
  v13 = delegate;
  if (v11)
  {
    if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v13 manager:self didFailInstallation:v17 withError:v11];
      goto LABEL_11;
    }

    v14 = +[SUControllerLogger sharedLogger];
    v15 = v14;
    v16 = @"[DELEGATE] delegate does not respond to didFailInstallation - not reporting install failure";
  }

  else
  {
    if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v13 manager:self didFinishInstallation:v17];
      goto LABEL_11;
    }

    v14 = +[SUControllerLogger sharedLogger];
    v15 = v14;
    v16 = @"[DELEGATE] delegate does not respond to didFinishInstallation - not reporting install success";
  }

  [v14 logAtLevel:1 label:"-[SUControllerManager _forwardInstallResult:]" format:v16];

LABEL_11:
}

- (void)_forwardAutoScanPerformed:(id)performed
{
  delegate = [(SUControllerManager *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate autoScanPerformed:self];
  }

  else
  {
    v4 = +[SUControllerLogger sharedLogger];
    [v4 logAtLevel:1 label:"-[SUControllerManager _forwardAutoScanPerformed:]" format:@"[DELEGATE] delegate does not respond to autoScanPerformed - not reporting auto scan performed"];
  }
}

- (void)managerStatus:(id)status
{
  statusCopy = status;
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, SUControllerMessageTypeKey, SUControllerMessageTypeQueryManagerStatus);
  _serverConnection = [(SUControllerManager *)self _serverConnection];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __37__SUControllerManager_managerStatus___block_invoke;
  handler[3] = &unk_279CA8830;
  v9 = statusCopy;
  v7 = statusCopy;
  xpc_connection_send_message_with_reply(_serverConnection, v5, 0, handler);
}

void __37__SUControllerManager_managerStatus___block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  v3 = MEMORY[0x26D667FF0]();
  if (v3 == MEMORY[0x277D86480])
  {
    v11 = +[SUControllerLogger sharedLogger];
    [v11 logAtLevel:0 label:"-[SUControllerManager managerStatus:]_block_invoke" format:@"Got XPC error querying manager status"];

    v9 = *(a1 + 32);
    string = xpc_dictionary_get_string(xdict, *MEMORY[0x277D86400]);
    v10 = @"Error from XPC: %s";
    goto LABEL_5;
  }

  if (v3 != MEMORY[0x277D86468])
  {
    v4 = +[SUControllerLogger sharedLogger];
    [v4 logAtLevel:0 label:"-[SUControllerManager managerStatus:]_block_invoke" format:@"unexpected XPC type querying manager status"];

    v9 = *(a1 + 32);
    v10 = @"Unexpected XPC type";
LABEL_5:
    v12 = SUControllerError(@"SUControllerError", 2, 0, v10, v5, v6, v7, v8, string);
    (*(v9 + 16))(v9, 0, 0, v12);
    goto LABEL_7;
  }

  v13 = SUControllerMessageTypeQueryManagerStatus;
  v14 = SUControllerMessageDescriptorKey;
  v15 = objc_opt_class();
  v12 = SUControllerIPCDecodeOptionalObjectForKey(v13, xdict, v14, v15);
  v16 = SUControllerMessageTypeQueryManagerStatus;
  v17 = SUControllerMessageStatusKey;
  v18 = objc_opt_class();
  v19 = SUControllerIPCDecodeOptionalObjectForKey(v16, xdict, v17, v18);
  v20 = SUControllerMessageTypeQueryManagerStatus;
  v21 = SUControllerMessageErrorKey;
  v22 = objc_opt_class();
  v23 = SUControllerIPCDecodeOptionalObjectForKey(v20, xdict, v21, v22);
  (*(*(a1 + 32) + 16))();

LABEL_7:
}

- (void)managerState:(id)state
{
  stateCopy = state;
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, SUControllerMessageTypeKey, SUControllerMessageTypeQueryManagerState);
  _serverConnection = [(SUControllerManager *)self _serverConnection];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __36__SUControllerManager_managerState___block_invoke;
  handler[3] = &unk_279CA8830;
  v9 = stateCopy;
  v7 = stateCopy;
  xpc_connection_send_message_with_reply(_serverConnection, v5, 0, handler);
}

void __36__SUControllerManager_managerState___block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  v3 = MEMORY[0x26D667FF0]();
  if (v3 == MEMORY[0x277D86480])
  {
    v11 = +[SUControllerLogger sharedLogger];
    [v11 logAtLevel:0 label:"-[SUControllerManager managerState:]_block_invoke" format:@"Got XPC error querying manager state"];

    v9 = *(a1 + 32);
    string = xpc_dictionary_get_string(xdict, *MEMORY[0x277D86400]);
    v10 = @"Error from XPC: %s";
    goto LABEL_5;
  }

  if (v3 != MEMORY[0x277D86468])
  {
    v4 = +[SUControllerLogger sharedLogger];
    [v4 logAtLevel:0 label:"-[SUControllerManager managerState:]_block_invoke" format:@"unexpected XPC type querying manager state"];

    v9 = *(a1 + 32);
    v10 = @"Unexpected XPC type";
LABEL_5:
    v12 = SUControllerError(@"SUControllerError", 2, 0, v10, v5, v6, v7, v8, string);
    (*(v9 + 16))(v9, 0, 0, v12);
    goto LABEL_7;
  }

  v13 = SUControllerMessageTypeQueryManagerState;
  v14 = SUControllerMessageDescriptorKey;
  v15 = objc_opt_class();
  v12 = SUControllerIPCDecodeOptionalObjectForKey(v13, xdict, v14, v15);
  xpc_dictionary_get_int64(xdict, SUControllerMessageManagerStateKey);
  v16 = SUControllerMessageTypeQueryManagerState;
  v17 = SUControllerMessageErrorKey;
  v18 = objc_opt_class();
  v19 = SUControllerIPCDecodeOptionalObjectForKey(v16, xdict, v17, v18);
  (*(*(a1 + 32) + 16))();

LABEL_7:
}

- (void)managerConfig:(id)config
{
  configCopy = config;
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, SUControllerMessageTypeKey, SUControllerMessageTypeQueryManagerConfig);
  _serverConnection = [(SUControllerManager *)self _serverConnection];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __37__SUControllerManager_managerConfig___block_invoke;
  handler[3] = &unk_279CA8830;
  v9 = configCopy;
  v7 = configCopy;
  xpc_connection_send_message_with_reply(_serverConnection, v5, 0, handler);
}

void __37__SUControllerManager_managerConfig___block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  v3 = MEMORY[0x26D667FF0]();
  if (v3 == MEMORY[0x277D86480])
  {
    v11 = +[SUControllerLogger sharedLogger];
    [v11 logAtLevel:0 label:"-[SUControllerManager managerConfig:]_block_invoke" format:@"Got XPC error querying manager config"];

    v9 = *(a1 + 32);
    string = xpc_dictionary_get_string(xdict, *MEMORY[0x277D86400]);
    v10 = @"Error from XPC: %s";
    goto LABEL_5;
  }

  if (v3 != MEMORY[0x277D86468])
  {
    v4 = +[SUControllerLogger sharedLogger];
    [v4 logAtLevel:0 label:"-[SUControllerManager managerConfig:]_block_invoke" format:@"unexpected XPC type querying manager config"];

    v9 = *(a1 + 32);
    v10 = @"Unexpected XPC type";
LABEL_5:
    v12 = SUControllerError(@"SUControllerError", 2, 0, v10, v5, v6, v7, v8, string);
    (*(v9 + 16))(v9, 0, v12);
    goto LABEL_7;
  }

  v13 = SUControllerMessageTypeQueryManagerConfig;
  v14 = SUControllerMessageManagerConfigKey;
  v15 = objc_opt_class();
  v12 = SUControllerIPCDecodeObjectForKey(v13, xdict, v14, v15);
  v16 = SUControllerMessageTypeQueryManagerConfig;
  v17 = SUControllerMessageErrorKey;
  v18 = objc_opt_class();
  v19 = SUControllerIPCDecodeOptionalObjectForKey(v16, xdict, v17, v18);
  (*(*(a1 + 32) + 16))();

LABEL_7:
}

- (void)modifyConfig:(id)config modifying:(int64_t)modifying completion:(id)completion
{
  completionCopy = completion;
  configCopy = config;
  v10 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v10, SUControllerMessageTypeKey, SUControllerMessageTypeModifyManagerConfig);
  SUControllerIPCEncodeObject(SUControllerMessageTypeModifyManagerConfig, v10, SUControllerMessageManagerConfigKey, configCopy);

  xpc_dictionary_set_int64(v10, SUControllerMessageManagerConfigChangeMaskKey, modifying);
  _serverConnection = [(SUControllerManager *)self _serverConnection];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __57__SUControllerManager_modifyConfig_modifying_completion___block_invoke;
  handler[3] = &unk_279CA8830;
  v14 = completionCopy;
  v12 = completionCopy;
  xpc_connection_send_message_with_reply(_serverConnection, v10, 0, handler);
}

void __57__SUControllerManager_modifyConfig_modifying_completion___block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  v3 = MEMORY[0x26D667FF0]();
  if (v3 == MEMORY[0x277D86480])
  {
    v11 = +[SUControllerLogger sharedLogger];
    [v11 logAtLevel:0 label:"-[SUControllerManager modifyConfig:modifying:completion:]_block_invoke" format:@"Got XPC error modifying manager config"];

    v9 = *(a1 + 32);
    string = xpc_dictionary_get_string(xdict, *MEMORY[0x277D86400]);
    v10 = @"Error from XPC: %s";
    goto LABEL_5;
  }

  if (v3 != MEMORY[0x277D86468])
  {
    v4 = +[SUControllerLogger sharedLogger];
    [v4 logAtLevel:0 label:"-[SUControllerManager modifyConfig:modifying:completion:]_block_invoke" format:@"unexpected XPC type modifying manager config"];

    v9 = *(a1 + 32);
    v10 = @"Unexpected XPC type";
LABEL_5:
    v12 = SUControllerError(@"SUControllerError", 2, 0, v10, v5, v6, v7, v8, string);
    (*(v9 + 16))(v9, 0, v12);
    goto LABEL_7;
  }

  v13 = SUControllerMessageTypeModifyManagerConfig;
  v14 = SUControllerMessageManagerConfigKey;
  v15 = objc_opt_class();
  v12 = SUControllerIPCDecodeObjectForKey(v13, xdict, v14, v15);
  v16 = SUControllerMessageTypeModifyManagerConfig;
  v17 = SUControllerMessageErrorKey;
  v18 = objc_opt_class();
  v19 = SUControllerIPCDecodeOptionalObjectForKey(v16, xdict, v17, v18);
  (*(*(a1 + 32) + 16))();

LABEL_7:
}

- (void)scanForUpdates
{
  message = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(message, SUControllerMessageTypeKey, SUControllerMessageTypeScanForUpdates);
  _serverConnection = [(SUControllerManager *)self _serverConnection];
  xpc_connection_send_message(_serverConnection, message);
}

- (void)scanForUpdates:(id)updates
{
  updatesCopy = updates;
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, SUControllerMessageTypeKey, SUControllerMessageTypeScanForUpdates);
  if (updatesCopy)
  {
    SUControllerIPCEncodeObject(SUControllerMessageTypeScanForUpdates, v4, SUControllerMessageScanOptionsKey, updatesCopy);
  }

  _serverConnection = [(SUControllerManager *)self _serverConnection];
  xpc_connection_send_message(_serverConnection, v4);
}

- (void)startDownload:(id)download
{
  downloadCopy = download;
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, SUControllerMessageTypeKey, SUControllerMessageTypeStartDownload);
  if (downloadCopy)
  {
    SUControllerIPCEncodeObject(SUControllerMessageTypeStartDownload, v4, SUControllerMessageDescriptorKey, downloadCopy);
  }

  _serverConnection = [(SUControllerManager *)self _serverConnection];
  xpc_connection_send_message(_serverConnection, v4);
}

- (void)installUpdate:(id)update
{
  updateCopy = update;
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, SUControllerMessageTypeKey, SUControllerMessageTypeInstallUpdate);
  if (updateCopy)
  {
    SUControllerIPCEncodeObject(SUControllerMessageTypeInstallUpdate, v4, SUControllerMessageDescriptorKey, updateCopy);
  }

  _serverConnection = [(SUControllerManager *)self _serverConnection];
  xpc_connection_send_message(_serverConnection, v4);
}

- (void)userDidAcceptTermsAndConditionsForUpdate:(id)update
{
  updateCopy = update;
  [updateCopy setUserDidAcceptTermsAndConditions:1];
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, SUControllerMessageTypeKey, SUControllerMessageTypeUserDidAcceptTermsAndConditions);
  if (updateCopy)
  {
    SUControllerIPCEncodeObject(SUControllerMessageTypeUserDidAcceptTermsAndConditions, v4, SUControllerMessageDescriptorKey, updateCopy);
  }

  _serverConnection = [(SUControllerManager *)self _serverConnection];
  xpc_connection_send_message(_serverConnection, v4);
}

- (void)updateAcceptingTermsAndConditions:(id)conditions
{
  conditionsCopy = conditions;
  message = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(message, SUControllerMessageTypeKey, SUControllerMessageTypeUpdateAcceptingTermsAndConditions);
  SUControllerIPCEncodeObject(SUControllerMessageTypeUpdateAcceptingTermsAndConditions, message, SUControllerMessageSSOTokenKey, conditionsCopy);

  _serverConnection = [(SUControllerManager *)self _serverConnection];
  xpc_connection_send_message(_serverConnection, message);
}

- (void)updateAcceptingTermsAndConditions:(id)conditions usingPassword:(id)password
{
  passwordCopy = password;
  conditionsCopy = conditions;
  message = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(message, SUControllerMessageTypeKey, SUControllerMessageTypeUpdateAcceptingTermsAndConditions);
  SUControllerIPCEncodeObject(SUControllerMessageTypeUpdateAcceptingTermsAndConditions, message, SUControllerMessageAccountNameKey, conditionsCopy);

  SUControllerIPCEncodeObject(SUControllerMessageTypeUpdateAcceptingTermsAndConditions, message, SUControllerMessagePasswordKey, passwordCopy);
  _serverConnection = [(SUControllerManager *)self _serverConnection];
  xpc_connection_send_message(_serverConnection, message);
}

- (void)purgeUpdate:(id)update completion:(id)completion
{
  updateCopy = update;
  completionCopy = completion;
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v8, SUControllerMessageTypeKey, SUControllerMessageTypePurgeUpdate);
  if (updateCopy)
  {
    SUControllerIPCEncodeObject(SUControllerMessageTypePurgeUpdate, v8, SUControllerMessageDescriptorKey, updateCopy);
  }

  _serverConnection = [(SUControllerManager *)self _serverConnection];
  v10 = dispatch_get_global_queue(0, 0);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __46__SUControllerManager_purgeUpdate_completion___block_invoke;
  handler[3] = &unk_279CA8830;
  v13 = completionCopy;
  v11 = completionCopy;
  xpc_connection_send_message_with_reply(_serverConnection, v8, v10, handler);
}

void __46__SUControllerManager_purgeUpdate_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = SUControllerMessageTypePurgeUpdate;
  v4 = SUControllerMessageErrorKey;
  v5 = a2;
  v6 = objc_opt_class();
  v8 = SUControllerIPCDecodeOptionalObjectForKey(v3, v5, v4, v6);

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v8);
  }
}

- (void)performMigration
{
  message = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(message, SUControllerMessageTypeKey, SUControllerMessageTypePerformMigration);
  _serverConnection = [(SUControllerManager *)self _serverConnection];
  xpc_connection_send_message(_serverConnection, message);
}

- (void)useSSOTokenToPersonalize:(id)personalize withSSOToken:(id)token
{
  personalizeCopy = personalize;
  tokenCopy = token;
  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v7, SUControllerMessageTypeKey, SUControllerMessageTypeUseSSOTokenToPersonalize);
  if (personalizeCopy)
  {
    SUControllerIPCEncodeObject(SUControllerMessageTypeUseSSOTokenToPersonalize, v7, SUControllerMessageDescriptorKey, personalizeCopy);
  }

  SUControllerIPCEncodeObject(SUControllerMessageTypeUseSSOTokenToPersonalize, v7, SUControllerMessageSSOTokenKey, tokenCopy);
  _serverConnection = [(SUControllerManager *)self _serverConnection];
  xpc_connection_send_message(_serverConnection, v7);
}

- (void)useCredentialsToPersonalize:(id)personalize withAccountName:(id)name andPassword:(id)password
{
  personalizeCopy = personalize;
  nameCopy = name;
  passwordCopy = password;
  v10 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v10, SUControllerMessageTypeKey, SUControllerMessageTypeUseCredentialsToPersonalize);
  if (personalizeCopy)
  {
    SUControllerIPCEncodeObject(SUControllerMessageTypeUseCredentialsToPersonalize, v10, SUControllerMessageDescriptorKey, personalizeCopy);
  }

  SUControllerIPCEncodeObject(SUControllerMessageTypeUseCredentialsToPersonalize, v10, SUControllerMessageAccountNameKey, nameCopy);
  SUControllerIPCEncodeObject(SUControllerMessageTypeUseCredentialsToPersonalize, v10, SUControllerMessagePasswordKey, passwordCopy);

  _serverConnection = [(SUControllerManager *)self _serverConnection];
  xpc_connection_send_message(_serverConnection, v10);
}

- (id)paramsForOTAScans:(id)scans
{
  scansCopy = scans;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = MEMORY[0x26D6679E0](@"com.apple.MobileAsset.SoftwareUpdate");
  [v5 setSafeObject:v6 forKey:@"AssetAudienceUUID"];

  v7 = +[SUControllerLogger sharedLogger];
  v8 = [v5 objectForKeyedSubscript:@"AssetAudienceUUID"];
  if (v8)
  {
    v9 = [v5 objectForKeyedSubscript:@"AssetAudienceUUID"];
    [v7 logAtLevel:2 label:"-[SUControllerManager paramsForOTAScans:]" format:{@"MA audience: %@", v9}];
  }

  else
  {
    [v7 logAtLevel:2 label:"-[SUControllerManager paramsForOTAScans:]" format:{@"MA audience: %@", @"None"}];
  }

  mEMORY[0x277D64418] = [MEMORY[0x277D64418] sharedDevice];
  buildVersion = [mEMORY[0x277D64418] buildVersion];
  [v5 setSafeObject:buildVersion forKey:@"PrerequisiteBuildVersion"];

  mEMORY[0x277D64418]2 = [MEMORY[0x277D64418] sharedDevice];
  productVersion = [mEMORY[0x277D64418]2 productVersion];
  [v5 setSafeObject:productVersion forKey:@"PrerequisiteProductVersion"];

  mEMORY[0x277D64418]3 = [MEMORY[0x277D64418] sharedDevice];
  restoreVersion = [mEMORY[0x277D64418]3 restoreVersion];
  [v5 setSafeObject:restoreVersion forKey:@"PrerequisiteRestoreVersion"];

  mEMORY[0x277D64418]4 = [MEMORY[0x277D64418] sharedDevice];
  deviceClass = [mEMORY[0x277D64418]4 deviceClass];
  [v5 setSafeObject:deviceClass forKey:@"DeviceClass"];

  mEMORY[0x277D64418]5 = [MEMORY[0x277D64418] sharedDevice];
  hwModelString = [mEMORY[0x277D64418]5 hwModelString];
  [v5 setSafeObject:hwModelString forKey:@"HWModelStr"];

  mEMORY[0x277D64418]6 = [MEMORY[0x277D64418] sharedDevice];
  productType = [mEMORY[0x277D64418]6 productType];
  [v5 setSafeObject:productType forKey:@"ProductType"];

  mEMORY[0x277D64418]7 = [MEMORY[0x277D64418] sharedDevice];
  releaseType = [mEMORY[0x277D64418]7 releaseType];
  [v5 setSafeObject:releaseType forKey:@"ReleaseType"];

  v24 = MEMORY[0x277CCABB0];
  mEMORY[0x277D64418]8 = [MEMORY[0x277D64418] sharedDevice];
  v26 = [v24 numberWithBool:{objc_msgSend(mEMORY[0x277D64418]8, "isInternal")}];
  [v5 setSafeObject:v26 forKey:@"IsInternal"];

  getTrainName = [(SUControllerManager *)self getTrainName];
  if (getTrainName)
  {
    [v5 setSafeObject:getTrainName forKey:@"TrainName"];
    if (!scansCopy)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v28 = +[SUControllerLogger sharedLogger];
    [v28 logAtLevel:2 label:"-[SUControllerManager paramsForOTAScans:]" format:@"paramsForOTAScans: Failed to get trainName"];

    if (!scansCopy)
    {
      goto LABEL_15;
    }
  }

  v29 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(scansCopy, "restrictToFullReplacement")}];
  [v5 setSafeObject:v29 forKey:@"RestrictToFull"];

  v30 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(scansCopy, "allowSameVersionUpdates")}];
  [v5 setSafeObject:v30 forKey:@"AllowSameVersion"];

  mEMORY[0x277D64418]9 = [MEMORY[0x277D64418] sharedDevice];
  isBootedOSSecureInternal = [mEMORY[0x277D64418]9 isBootedOSSecureInternal];

  if (isBootedOSSecureInternal)
  {
    prerequisiteBuildVersion = [scansCopy prerequisiteBuildVersion];

    if (prerequisiteBuildVersion)
    {
      prerequisiteBuildVersion2 = [scansCopy prerequisiteBuildVersion];
      [v5 setSafeObject:prerequisiteBuildVersion2 forKey:@"PrerequisiteBuildVersion"];
    }

    prerequisiteProductVersion = [scansCopy prerequisiteProductVersion];

    if (prerequisiteProductVersion)
    {
      prerequisiteProductVersion2 = [scansCopy prerequisiteProductVersion];
      [v5 setSafeObject:prerequisiteProductVersion2 forKey:@"PrerequisiteProductVersion"];
    }

    asReleaseType = [scansCopy asReleaseType];

    if (asReleaseType)
    {
      asReleaseType2 = [scansCopy asReleaseType];
      [v5 setSafeObject:asReleaseType2 forKey:@"ReleaseType"];
    }
  }

LABEL_15:
  v39 = +[SUControllerLogger sharedLogger];
  [v39 logAtLevel:2 label:"-[SUControllerManager paramsForOTAScans:]" format:{@"created scan params: %@", v5}];

  return v5;
}

- (void)scanForUpdatesFromNonTVOSDevice:(id)device completion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  v10 = +[SUControllerLogger sharedLogger];
  v11 = v10;
  v12 = @"NONE";
  if (deviceCopy)
  {
    v12 = deviceCopy;
  }

  [v10 logAtLevel:2 label:"-[SUControllerManager scanForUpdatesFromNonTVOSDevice:completion:]" format:{@"Requesting a scan with the following params: %@", v12}];

  v13 = objc_alloc(MEMORY[0x277D641A8]);
  v14 = [v13 initWithSoftwareUpdateAssetType:*MEMORY[0x277D64310] documentationAssetType:*MEMORY[0x277D64320] usingPolicies:127 usingExtensions:0];
  v15 = @"AssetAudienceUUID";
  v16 = [(__CFString *)deviceCopy objectForKey:@"AssetAudienceUUID"];
  [v14 setAssetAudienceUUID:v16];

  assetAudienceUUID = [v14 assetAudienceUUID];

  if (!assetAudienceUUID)
  {
    goto LABEL_13;
  }

  v15 = @"PrerequisiteBuildVersion";
  v22 = [(__CFString *)deviceCopy objectForKey:@"PrerequisiteBuildVersion"];
  [v14 setPrerequisiteBuildVersion:v22];

  prerequisiteBuildVersion = [v14 prerequisiteBuildVersion];

  if (!prerequisiteBuildVersion)
  {
    goto LABEL_13;
  }

  v15 = @"PrerequisiteProductVersion";
  v24 = [(__CFString *)deviceCopy objectForKey:@"PrerequisiteProductVersion"];
  [v14 setPrerequisiteProductVersion:v24];

  prerequisiteProductVersion = [v14 prerequisiteProductVersion];

  if (!prerequisiteProductVersion)
  {
    goto LABEL_13;
  }

  v15 = @"PrerequisiteRestoreVersion";
  v26 = [(__CFString *)deviceCopy objectForKey:@"PrerequisiteRestoreVersion"];
  [v14 setPrerequisiteRestoreVersion:v26];

  prerequisiteRestoreVersion = [v14 prerequisiteRestoreVersion];

  if (!prerequisiteRestoreVersion)
  {
    goto LABEL_13;
  }

  v15 = @"DeviceClass";
  v28 = [(__CFString *)deviceCopy objectForKey:@"DeviceClass"];
  [v14 setDeviceClass:v28];

  deviceClass = [v14 deviceClass];

  if (!deviceClass)
  {
    goto LABEL_13;
  }

  v15 = @"HWModelStr";
  v30 = [(__CFString *)deviceCopy objectForKey:@"HWModelStr"];
  [v14 setHwModelStr:v30];

  hwModelStr = [v14 hwModelStr];

  if (!hwModelStr)
  {
    goto LABEL_13;
  }

  v15 = @"ProductType";
  v32 = [(__CFString *)deviceCopy objectForKey:@"ProductType"];
  [v14 setProductType:v32];

  productType = [v14 productType];

  if (productType)
  {
    v34 = [(__CFString *)deviceCopy objectForKey:@"ReleaseType"];
    [v14 setReleaseType:v34];

    v39 = [(__CFString *)deviceCopy objectForKey:@"IsInternal"];
    if (v39)
    {
      [v14 setIsInternal:{-[SUControllerManager numToBool:](self, "numToBool:", v39)}];
      v40 = objc_alloc(MEMORY[0x277CCACA8]);
      deviceClass2 = [v14 deviceClass];
      assetAudienceUUID2 = [v14 assetAudienceUUID];
      v43 = [v40 initWithFormat:@"tvOS-%@-%@", deviceClass2, assetAudienceUUID2];
      [v14 setMobileAssetPurposeOverride:v43];

      [v14 setEnablePreSUStaging:0];
      [v14 setEnablePreSUStagingForOptionalAssets:0];
      softwareUpdateScanPolicy = [v14 softwareUpdateScanPolicy];
      [softwareUpdateScanPolicy setAllowsCellular:1];

      softwareUpdateScanPolicy2 = [v14 softwareUpdateScanPolicy];
      [softwareUpdateScanPolicy2 setDiscretionary:0];

      softwareUpdateScanPolicy3 = [v14 softwareUpdateScanPolicy];
      [softwareUpdateScanPolicy3 setRequiresPowerPluggedIn:0];

      softwareUpdateScanPolicy4 = [v14 softwareUpdateScanPolicy];
      [softwareUpdateScanPolicy4 setRestrictToIncremental:0];

      v48 = [(__CFString *)deviceCopy objectForKey:@"RestrictToFull"];
      v66 = v48;
      if (v48)
      {
        v49 = [(SUControllerManager *)self numToBool:v48];
      }

      else
      {
        v49 = 0;
      }

      softwareUpdateScanPolicy5 = [v14 softwareUpdateScanPolicy];
      [softwareUpdateScanPolicy5 setRestrictToFull:v49];

      v53 = [(__CFString *)deviceCopy objectForKey:@"AllowSameVersion"];
      if (v53)
      {
        v54 = [(SUControllerManager *)self numToBool:v53];
      }

      else
      {
        v54 = 0;
      }

      softwareUpdateScanPolicy6 = [v14 softwareUpdateScanPolicy];
      [softwareUpdateScanPolicy6 setAllowSameVersion:v54];

      softwareUpdateScanPolicy7 = [v14 softwareUpdateScanPolicy];
      [softwareUpdateScanPolicy7 setDownloadTimeoutSecs:60];

      softwareUpdateScanPolicy8 = [v14 softwareUpdateScanPolicy];
      [softwareUpdateScanPolicy8 setSessionId:uUIDString];

      softwareUpdateScanPolicy9 = [v14 softwareUpdateScanPolicy];
      [softwareUpdateScanPolicy9 setRampingScanType:0];

      v59 = [(__CFString *)deviceCopy objectForKey:@"TrainName"];
      if (v59)
      {
        softwareUpdateScanPolicy11 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [softwareUpdateScanPolicy11 setSafeObject:v59 forKey:@"TrainName"];
        softwareUpdateScanPolicy10 = [v14 softwareUpdateScanPolicy];
        [softwareUpdateScanPolicy10 setAdditionalServerParams:softwareUpdateScanPolicy11];
      }

      else
      {
        softwareUpdateScanPolicy11 = [v14 softwareUpdateScanPolicy];
        [softwareUpdateScanPolicy11 setAdditionalServerParams:0];
      }

      softwareUpdateScanPolicy12 = [v14 softwareUpdateScanPolicy];
      [softwareUpdateScanPolicy12 setAdditionalOptions:0];

      scanner = [(SUControllerManager *)self scanner];

      if (!scanner)
      {
        v64 = [objc_alloc(MEMORY[0x277D641E0]) initWithUUID:uUIDString];
        [(SUControllerManager *)self setScanner:v64];
      }

      scanner2 = [(SUControllerManager *)self scanner];
      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = __66__SUControllerManager_scanForUpdatesFromNonTVOSDevice_completion___block_invoke;
      v67[3] = &unk_279CA8880;
      v67[4] = self;
      v68 = v14;
      v69 = completionCopy;
      [scanner2 locateAvailableUpdateWithPolicy:v68 completion:v67];
    }

    else
    {
      v51 = SUControllerError(@"SUControllerError", 60, 0, @"Provided scan parameter dictionary is missing required parameter for scanning: %@", v35, v36, v37, v38, @"IsInternal");
      (*(completionCopy + 2))(completionCopy, 0, v51);
    }
  }

  else
  {
LABEL_13:
    v50 = SUControllerError(@"SUControllerError", 60, 0, @"Provided scan parameter dictionary is missing required parameter for scanning: %@", v18, v19, v20, v21, v15);
    (*(completionCopy + 2))(completionCopy, 0, v50);
  }
}

void __66__SUControllerManager_scanForUpdatesFromNonTVOSDevice_completion___block_invoke(id *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v17 = v12;
  if (!v12)
  {
    if (v10)
    {
      v29 = [a1[4] newDescriptorFromAsset:v10];
      v26 = +[SUControllerLogger sharedLogger];
      v30 = [v29 summary];
      [v26 logAtLevel:2 label:"-[SUControllerManager scanForUpdatesFromNonTVOSDevice:completion:]_block_invoke" format:{@"scan completed successfully. Descriptor: %@", v30}];

      v24 = 0;
LABEL_11:

      v33 = [a1[5] mobileAssetPurposeOverride];
      v36 = a1[6];
      v31 = v24;
      v34 = v29;
      MAPurgeCatalogsWithPurpose();

      goto LABEL_12;
    }

    v24 = SUControllerError(@"SUControllerError", 48, 0, @"Scan completed without errors, but primaryUpdateAsset is nil", v13, v14, v15, v16, v35);
    v25 = +[SUControllerLogger sharedLogger];
    v26 = v25;
    v27 = @"scan completed without errors, but primaryUpdateAsset is nil";
    v28 = 0;
LABEL_10:
    [v25 logAtLevel:v28 label:"-[SUControllerManager scanForUpdatesFromNonTVOSDevice:completion:]_block_invoke" format:v27];
    v29 = 0;
    goto LABEL_11;
  }

  v18 = [v12 domain];
  if ([v18 isEqualToString:*MEMORY[0x277D646E8]])
  {
    v19 = [v17 code];

    if (v19 == 8406)
    {
      v24 = SUControllerError(@"SUControllerError", 4, 0, @"Device is update to date.  No update found.", v20, v21, v22, v23, v35);
      v25 = +[SUControllerLogger sharedLogger];
      v26 = v25;
      v27 = @"scan completed. Device is update to date";
      v28 = 2;
      goto LABEL_10;
    }
  }

  else
  {
  }

  v31 = SUControllerError(@"SUControllerError", 3, v17, @"Failed to scan for update", v20, v21, v22, v23, v35);
  v32 = +[SUControllerLogger sharedLogger];
  [v32 logAtLevel:0 label:"-[SUControllerManager scanForUpdatesFromNonTVOSDevice:completion:]_block_invoke" format:{@"scan failed. error: %@", v17}];

  (*(a1[6] + 2))();
LABEL_12:
}

void __66__SUControllerManager_scanForUpdatesFromNonTVOSDevice_completion___block_invoke_2(void *a1, void *a2)
{
  v7 = a2;
  v3 = +[SUControllerLogger sharedLogger];
  if (v7)
  {
    [v3 logAtLevel:0 label:"-[SUControllerManager scanForUpdatesFromNonTVOSDevice:completion:]_block_invoke_2" format:{@"Failed to purged catalog for %@.  Error: %@", a1[4], v7}];
  }

  else
  {
    [v3 logAtLevel:2 label:"-[SUControllerManager scanForUpdatesFromNonTVOSDevice:completion:]_block_invoke_2" format:{@"Successfully purged catalog for %@", a1[4], v6}];
  }

  v4 = a1[6];
  v5 = a1[5];
  (*(a1[7] + 16))();
}

- (id)getTrainName
{
  v2 = "";
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", ""];
  if ([v3 isEqualToString:&stru_287B3F250])
  {
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", ""];
    v5 = [v4 isEqualToString:@"$SIDEBUILD_PARENT_TRAIN"];

    if (!v5)
    {
      goto LABEL_8;
    }
  }

  v2 = "LuckB";
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "LuckB"];
  if ([v6 isEqualToString:&stru_287B3F250])
  {

LABEL_7:
    v9 = +[SUControllerLogger sharedLogger];
    [v9 logAtLevel:2 label:"-[SUControllerManager getTrainName]" format:@"Unable to get train name"];

    v10 = 0;
    goto LABEL_9;
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "LuckB"];
  v8 = [v7 isEqualToString:@"$RC_RELEASE"];

  if (v8)
  {
    goto LABEL_7;
  }

LABEL_8:
  v11 = +[SUControllerLogger sharedLogger];
  [v11 logAtLevel:2 label:"-[SUControllerManager getTrainName]" format:{@"Got trainName=%s", v2}];

  v10 = [MEMORY[0x277CCACA8] stringWithCString:v2 encoding:4];
LABEL_9:

  return v10;
}

- (id)newDescriptorFromAsset:(id)asset
{
  assetCopy = asset;
  attributes = [assetCopy attributes];
  if (attributes)
  {
    v5 = objc_alloc_init(SUControllerDescriptor);
    [(SUControllerDescriptor *)v5 setSoftwareUpdateAsset:assetCopy];
    v6 = [attributes safeStringForKey:@"OSVersion"];
    v7 = [MEMORY[0x277D64180] cleanProductVersion:v6];
    [(SUControllerDescriptor *)v5 setProductVersion:v7];

    v8 = [attributes safeStringForKey:@"Build"];
    [(SUControllerDescriptor *)v5 setProductBuildVersion:v8];

    [(SUControllerDescriptor *)v5 setDocumentationID:0];
    v9 = [attributes safeStringForKey:@"SUPublisher"];
    [(SUControllerDescriptor *)v5 setPublisher:v9];

    v10 = [attributes safeStringForKey:@"SUProductSystemName"];
    [(SUControllerDescriptor *)v5 setProductSystemName:v10];

    -[SUControllerDescriptor setDownloadSize:](v5, "setDownloadSize:", [attributes safeULLForKey:*MEMORY[0x277D28908]]);
    -[SUControllerDescriptor setUnarchivedSize:](v5, "setUnarchivedSize:", [attributes safeULLForKey:*MEMORY[0x277D28920]]);
    [(SUControllerDescriptor *)v5 setMsuPrepareSize:0];
    [(SUControllerDescriptor *)v5 setInstallationSize:0];
    [(SUControllerDescriptor *)v5 setTotalRequiredFreeSpace:0];
    v11 = [attributes safeStringForKey:@"PrerequisiteBuild"];
    v12 = [attributes safeStringForKey:@"PrerequisiteOSVersion"];
    [(SUControllerDescriptor *)v5 setFullReplacement:(v11 | v12) == 0];
    -[SUControllerDescriptor setRampEnabled:](v5, "setRampEnabled:", [attributes safeBooleanForKey:*MEMORY[0x277D642E8]]);
    [(SUControllerDescriptor *)v5 setReleaseDate:0];
    v13 = [attributes safeStringForKey:@"ReleaseType"];
    [(SUControllerDescriptor *)v5 setReleaseType:v13];

    v14 = [attributes safeObjectForKey:*MEMORY[0x277D642B8] ofClass:objc_opt_class()];
    if (v14)
    {
      [(SUControllerDescriptor *)v5 setMandatoryUpdateEligible:1];
      v15 = [v14 safeStringForKey:*MEMORY[0x277D642D8]];
      [(SUControllerDescriptor *)v5 setMandatoryUpdateVersionMin:v15];

      v16 = [v14 safeStringForKey:*MEMORY[0x277D642D0]];
      [(SUControllerDescriptor *)v5 setMandatoryUpdateVersionMax:v16];

      -[SUControllerDescriptor setMandatoryUpdateOptional:](v5, "setMandatoryUpdateOptional:", [v14 safeBooleanForKey:*MEMORY[0x277D642C0]]);
      v17 = [v14 safeBooleanForKey:*MEMORY[0x277D642C8]];
    }

    else
    {
      [(SUControllerDescriptor *)v5 setMandatoryUpdateEligible:0];
      [(SUControllerDescriptor *)v5 setMandatoryUpdateVersionMin:0];
      [(SUControllerDescriptor *)v5 setMandatoryUpdateVersionMax:0];
      [(SUControllerDescriptor *)v5 setMandatoryUpdateOptional:0];
      v17 = 0;
    }

    [(SUControllerDescriptor *)v5 setMandatoryUpdateRestrictedToOutOfTheBox:v17];
    v18 = v5;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end