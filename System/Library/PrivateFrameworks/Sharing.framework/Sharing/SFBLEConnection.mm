@interface SFBLEConnection
- (BOOL)removeClient:(id)client;
- (NSString)description;
- (SFBLEConnection)initWithDevice:(id)device acceptor:(BOOL)acceptor;
- (int64_t)connectionState;
- (void)_activate;
- (void)_cleanupQueuedData:(int)data;
- (void)_connectIfNeeded;
- (void)_invalidate;
- (void)_processQueuedData;
- (void)activate;
- (void)activateDirect;
- (void)addClient:(id)client;
- (void)dealloc;
- (void)invalidate;
- (void)nearby:(id)nearby didConnectToPeer:(id)peer transport:(int64_t)transport error:(id)error;
- (void)nearby:(id)nearby didDisconnectFromPeer:(id)peer error:(id)error;
- (void)nearby:(id)nearby didReceiveData:(id)data fromPeer:(id)peer;
- (void)nearby:(id)nearby didSendData:(id)data toPeer:(id)peer error:(id)error;
- (void)nearbyDidChangeBluetoothBandwidthState:(id)state;
- (void)nearbyDidUpdateState:(id)state;
- (void)sendData:(id)data completion:(id)completion;
- (void)sendDataDirect:(id)direct completion:(id)completion;
- (void)setAcceptor:(BOOL)acceptor;
- (void)setDispatchQueue:(id)queue;
@end

@implementation SFBLEConnection

- (void)dealloc
{
  if (self->_connectRetrier)
  {
    [SFBLEConnection dealloc];
    goto LABEL_8;
  }

  if (self->_wpNearby)
  {
LABEL_8:
    v4 = [SFBLEAdvertiser dealloc];
    [(SFBLEConnection *)v4 description];
    return;
  }

  ucat = self->_ucat;
  if (ucat)
  {
    if ((ucat->var3 & 0x40000) != 0)
    {
      LogCategory_Remove();
      self->_ucat = 0;
    }
  }

  v6.receiver = self;
  v6.super_class = SFBLEConnection;
  [(SFBLEConnection *)&v6 dealloc];
}

- (NSString)description
{
  identifier = [(SFBLEDevice *)self->_peerDevice identifier];
  self->_connected;
  [(NSMutableSet *)self->_clients count];
  v4 = NSPrintF();

  return v4;
}

- (void)setAcceptor:(BOOL)acceptor
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __31__SFBLEConnection_setAcceptor___block_invoke;
  v4[3] = &unk_1E788B700;
  v4[4] = self;
  acceptorCopy = acceptor;
  dispatch_async(dispatchQueue, v4);
}

void __31__SFBLEConnection_setAcceptor___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = **(v2 + 80);
  if (v3 <= 30)
  {
    if (v3 == -1)
    {
      v6 = _LogCategory_Initialize();
      v2 = *(a1 + 32);
      if (!v6)
      {
        goto LABEL_10;
      }

      v14 = *(v2 + 80);
    }

    v4 = "no";
    if (*(v2 + 8))
    {
      v5 = "yes";
    }

    else
    {
      v5 = "no";
    }

    if (*(a1 + 40))
    {
      v4 = "yes";
    }

    v15 = v5;
    v16 = v4;
    LogPrintF();
    v2 = *(a1 + 32);
  }

LABEL_10:
  v7 = *(a1 + 40);
  *(v2 + 8) = v7;
  v8 = *(a1 + 32);
  if (*(v8 + 9) == 1)
  {
    if (v7)
    {
      [*(v8 + 40) invalidate];
      v9 = *(a1 + 32);
      v10 = *(v9 + 40);
      *(v9 + 40) = 0;
    }

    else
    {
      if (!*(v8 + 40))
      {
        v11 = objc_alloc_init(MEMORY[0x1E6999520]);
        v12 = *(a1 + 32);
        v13 = *(v12 + 40);
        *(v12 + 40) = v11;

        [*(*(a1 + 32) + 40) setDispatchQueue:*(*(a1 + 32) + 136)];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __31__SFBLEConnection_setAcceptor___block_invoke_2;
        v17[3] = &unk_1E788B198;
        v18 = *(a1 + 32);
        [*(v18 + 40) setActionHandler:v17];
        [*(*(a1 + 32) + 40) setInterval:3.0];
        [*(*(a1 + 32) + 40) startDirect];
        v8 = *(a1 + 32);
      }

      [v8 _processQueuedData];
    }
  }
}

- (int64_t)connectionState
{
  if (self->_connected)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)setDispatchQueue:(id)queue
{
  queueCopy = queue;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_activateCalled)
  {
    FatalErrorF();
    __break(1u);
  }

  else
  {
    dispatchQueue = obj->_dispatchQueue;
    obj->_dispatchQueue = queueCopy;

    objc_sync_exit(obj);
  }
}

- (void)activate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_activateCalled = 1;
  dispatchQueue = selfCopy->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__SFBLEConnection_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = selfCopy;
  dispatch_async(dispatchQueue, block);
  objc_sync_exit(selfCopy);
}

- (void)activateDirect
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_activateCalled = 1;
  objc_sync_exit(selfCopy);

  [(SFBLEConnection *)selfCopy _activate];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__SFBLEConnection_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled)
  {
    return;
  }

  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      ucat = self->_ucat;
    }

    LogPrintF();
  }

LABEL_6:
  self->_invalidateCalled = 1;
  [(CURetrier *)self->_connectRetrier invalidateDirect];
  connectRetrier = self->_connectRetrier;
  self->_connectRetrier = 0;

  [(SFBLEConnection *)self _cleanupQueuedData:4294960573];
  dataSendQueue = self->_dataSendQueue;
  self->_dataSendQueue = 0;

  if (self->_connected || self->_connecting)
  {
    *&self->_connected = 0;
    v6 = self->_ucat->var0;
    if (v6 <= 30)
    {
      if (v6 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_12;
        }

        v21 = self->_ucat;
      }

      LogPrintF();
    }

LABEL_12:
    wpNearby = self->_wpNearby;
    identifier = [(SFBLEDevice *)self->_peerDevice identifier];
    [(WPNearby *)wpNearby disconnectFromPeer:identifier];
  }

  v9 = self->_wpNearby;
  if (v9)
  {
    v10 = +[SFBLEClient sharedClient];
    [v10 removeNearbyDelegate:self];

    v9 = self->_wpNearby;
  }

  self->_wpNearby = 0;

  v11 = self->_ucat->var0;
  if (v11 > 30)
  {
    goto LABEL_19;
  }

  if (v11 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_19;
    }

    v20 = self->_ucat;
  }

  LogPrintF();
LABEL_19:
  invalidationHandler = self->_invalidationHandler;
  if (invalidationHandler)
  {
    invalidationHandler[2]();
  }

  bluetoothBandwidthChangedHandler = self->_bluetoothBandwidthChangedHandler;
  self->_bluetoothBandwidthChangedHandler = 0;

  bluetoothStateChangedHandler = self->_bluetoothStateChangedHandler;
  self->_bluetoothStateChangedHandler = 0;

  clients = self->_clients;
  self->_clients = 0;

  connectionStateChangedHandler = self->_connectionStateChangedHandler;
  self->_connectionStateChangedHandler = 0;

  dataHandler = self->_dataHandler;
  self->_dataHandler = 0;

  v18 = self->_invalidationHandler;
  self->_invalidationHandler = 0;
}

- (void)sendData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__SFBLEConnection_sendData_completion___block_invoke;
  block[3] = &unk_1E788A570;
  block[4] = self;
  v12 = dataCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dataCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_connectIfNeeded
{
  v17[1] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  var0 = self->_ucat->var0;
  if (var0 <= 10)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_5;
      }

      ucat = self->_ucat;
    }

    LogPrintF();
  }

LABEL_5:
  [(CURetrier *)self->_connectRetrier succeededDirect];
  if (!self->_connected && !self->_connecting && [(WPNearby *)self->_wpNearby state]== 3)
  {
    self->_connecting = 1;
    kdebug_trace();
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_bleEncrypted];
    [v4 setObject:v5 forKeyedSubscript:@"kCBConnectOptionEncryptionEnabled"];

    if ((self->_sessionFlags & 0x1000) != 0)
    {
      [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"kCBConnectOptionDoNoDisconnectOnEncryptionFailure"];
    }

    if (self->_latencyCritical)
    {
      v6 = getWPNearbyKeyConnectLatencyCritical();
      [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v6];
    }

    if (self->_lePipeCapable)
    {
      v7 = getWPNearbyLEPipeCapable();
      [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v7];
    }

    if (self->_useCase)
    {
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
      v17[0] = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
      v10 = getWPNearbyKeyUseCaseList();
      [v4 setObject:v9 forKeyedSubscript:v10];
    }

    v11 = self->_ucat->var0;
    if (v11 > 30)
    {
      goto LABEL_20;
    }

    if (v11 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_20;
      }

      v16 = self->_ucat;
    }

    LogPrintF();
LABEL_20:
    self->_connectStartTime = CFAbsoluteTimeGetCurrent();
    wpNearby = self->_wpNearby;
    identifier = [(SFBLEDevice *)self->_peerDevice identifier];
    [(WPNearby *)wpNearby connectToPeer:identifier withOptions:v4];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_cleanupQueuedData:(int)data
{
  selfCopy = self;
  v46[1] = *MEMORY[0x1E69E9840];
  currentData = self->_currentData;
  if (currentData)
  {
    completion = [(SFBLEData *)currentData completion];

    if (completion)
    {
      completion2 = [(SFBLEData *)selfCopy->_currentData completion];
      v8 = completion2;
      if (data)
      {
        v9 = MEMORY[0x1E696ABC0];
        v10 = selfCopy;
        v11 = *MEMORY[0x1E696A768];
        v45 = *MEMORY[0x1E696A578];
        v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
        v13 = v12;
        v14 = @"?";
        if (v12)
        {
          v14 = v12;
        }

        v46[0] = v14;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:&v45 count:1];
        v16 = v11;
        selfCopy = v10;
        v17 = [v9 errorWithDomain:v16 code:data userInfo:v15];
        (v8)[2](v8, v17);
      }

      else
      {
        (*(completion2 + 16))(completion2, 0);
      }
    }

    v18 = selfCopy->_currentData;
    selfCopy->_currentData = 0;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v35 = selfCopy;
  v19 = selfCopy->_dataSendQueue;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v39;
    v37 = *MEMORY[0x1E696A768];
    v36 = *MEMORY[0x1E696A578];
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v39 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v38 + 1) + 8 * i);
        completion3 = [v24 completion];

        if (completion3)
        {
          completion4 = [v24 completion];
          v27 = completion4;
          if (data)
          {
            v28 = MEMORY[0x1E696ABC0];
            v42 = v36;
            v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
            v30 = v29;
            v31 = @"?";
            if (v29)
            {
              v31 = v29;
            }

            v43 = v31;
            v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
            v33 = [v28 errorWithDomain:v37 code:data userInfo:v32];
            (v27)[2](v27, v33);
          }

          else
          {
            (*(completion4 + 16))(completion4, 0);
          }
        }
      }

      v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v21);
  }

  [(NSMutableArray *)v35->_dataSendQueue removeAllObjects];
  v34 = *MEMORY[0x1E69E9840];
}

- (void)addClient:(id)client
{
  clientCopy = client;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  clients = selfCopy->_clients;
  if (!clients)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = selfCopy->_clients;
    selfCopy->_clients = v6;

    clients = selfCopy->_clients;
  }

  [(NSMutableSet *)clients addObject:clientCopy];
  objc_sync_exit(selfCopy);
}

- (BOOL)removeClient:(id)client
{
  clientCopy = client;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableSet *)selfCopy->_clients removeObject:clientCopy];
  v6 = [(NSMutableSet *)selfCopy->_clients count]!= 0;
  objc_sync_exit(selfCopy);

  return v6;
}

- (SFBLEConnection)initWithDevice:(id)device acceptor:(BOOL)acceptor
{
  v19[2] = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  v18 = 0;
  v19[0] = 0;
  v19[1] = 0;
  v17 = 0;
  v16.receiver = self;
  v16.super_class = SFBLEConnection;
  v8 = [(SFBLEConnection *)&v16 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_4;
  }

  v8->_acceptor = acceptor;
  v8->_bleEncrypted = 1;
  v10 = SFMainQueue(v8);
  dispatchQueue = v9->_dispatchQueue;
  v9->_dispatchQueue = v10;

  objc_storeStrong(&v9->_peerDevice, device);
  identifier = [deviceCopy identifier];
  [identifier getUUIDBytes:v19];

  ASPrintF();
  if (!v18)
  {
    goto LABEL_4;
  }

  v9->_ucat = LogCategoryCreateEx();
  free(v18);
  if (!v17)
  {
    v13 = v9;
  }

  else
  {
LABEL_4:
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)_activate
{
  if (self->_invalidateCalled)
  {
    return;
  }

  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      ucat = self->_ucat;
    }

    LogPrintF();
  }

LABEL_6:
  if (!self->_wpNearby)
  {
    v4 = +[SFBLEClient sharedClient];
    v5 = [v4 addNearbyDelegate:self];
    wpNearby = self->_wpNearby;
    self->_wpNearby = v5;
  }

  if (!self->_dataSendQueue)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    dataSendQueue = self->_dataSendQueue;
    self->_dataSendQueue = v7;
  }

  if (self->_acceptor)
  {
    self->_connected = 1;
    connectionStateChangedHandler = self->_connectionStateChangedHandler;
    if (connectionStateChangedHandler)
    {
      v10 = OUTLINED_FUNCTION_2_2(connectionStateChangedHandler);
      v11(v10, 1);
    }
  }

  else if (!self->_connectRetrier)
  {
    v12 = objc_alloc_init(MEMORY[0x1E6999520]);
    connectRetrier = self->_connectRetrier;
    self->_connectRetrier = v12;

    [(CURetrier *)self->_connectRetrier setDispatchQueue:self->_dispatchQueue];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __28__SFBLEConnection__activate__block_invoke;
    v15[3] = &unk_1E788B198;
    v15[4] = self;
    [(CURetrier *)self->_connectRetrier setActionHandler:v15];
    [(CURetrier *)self->_connectRetrier setInterval:3.0];
    [(CURetrier *)self->_connectRetrier startDirect];
  }

  [(SFBLEConnection *)self _processQueuedData];
}

- (void)sendDataDirect:(id)direct completion:(id)completion
{
  directCopy = direct;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    v7 = objc_alloc_init(SFBLEData);
    [(SFBLEData *)v7 setData:directCopy];
    [(SFBLEData *)v7 setCompletion:completionCopy];
    [(NSMutableArray *)self->_dataSendQueue addObject:v7];
    [(SFBLEConnection *)self _processQueuedData];
  }
}

- (void)_processQueuedData
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_connected)
  {
    return;
  }

  if (self->_currentData)
  {
    return;
  }

  firstObject = [(NSMutableArray *)self->_dataSendQueue firstObject];
  currentData = self->_currentData;
  self->_currentData = firstObject;

  if (!self->_currentData)
  {
    return;
  }

  [(NSMutableArray *)self->_dataSendQueue removeObjectAtIndex:0];
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      ucat = self->_ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_8;
      }

      v12 = self->_ucat;
    }

    data = [(SFBLEData *)self->_currentData data];
    data2 = [(SFBLEData *)self->_currentData data];
    v13 = data;
    v14 = [data2 length];
    LogPrintF();
  }

LABEL_8:
  v9 = [(SFBLEData *)self->_currentData data:v13];
  [v9 length];
  OUTLINED_FUNCTION_1_9();

  wpNearby = self->_wpNearby;
  data3 = [(SFBLEData *)self->_currentData data];
  identifier = [(SFBLEDevice *)self->_peerDevice identifier];
  [(WPNearby *)wpNearby sendData:data3 toPeer:identifier];
}

- (void)nearbyDidChangeBluetoothBandwidthState:(id)state
{
  stateCopy = state;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  wpNearby = self->_wpNearby;
  if (wpNearby)
  {
    v6 = wpNearby == stateCopy;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    goto LABEL_16;
  }

  [(WPNearby *)stateCopy btBandwidthState];
  OUTLINED_FUNCTION_2_7();
  if (v8 ^ v9 | v6)
  {
    if (v7 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_14;
      }

      ucat = self->_ucat;
    }

    if ((v3 + 1) <= 2)
    {
      v10 = off_1E788DCC8[v3 + 1];
    }

    LogPrintF();
  }

LABEL_14:
  bluetoothBandwidthChangedHandler = self->_bluetoothBandwidthChangedHandler;
  if (bluetoothBandwidthChangedHandler)
  {
    v13 = OUTLINED_FUNCTION_2_2(bluetoothBandwidthChangedHandler);
    v14(v13);
  }

LABEL_16:
}

- (void)nearbyDidUpdateState:(id)state
{
  stateCopy = state;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  wpNearby = self->_wpNearby;
  if (wpNearby)
  {
    v6 = wpNearby == stateCopy;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    goto LABEL_27;
  }

  [(WPNearby *)stateCopy state];
  OUTLINED_FUNCTION_2_7();
  if (!(v8 ^ v9 | v6))
  {
    goto LABEL_14;
  }

  if (v7 != -1)
  {
    goto LABEL_9;
  }

  if (_LogCategory_Initialize())
  {
    ucat = self->_ucat;
LABEL_9:
    if (v3 <= 5)
    {
      v10 = off_1E788DCE0[v3];
    }

    LogPrintF();
  }

LABEL_14:
  if (v3 <= 5)
  {
    if (((1 << v3) & 0x36) == 0)
    {
      if (v3 == 3 && !self->_acceptor)
      {
        [(SFBLEConnection *)self _connectIfNeeded];
      }

      goto LABEL_25;
    }

    if (self->_connecting || self->_connected)
    {
      *&self->_connected = 0;
      var0 = self->_ucat->var0;
      if (var0 <= 60)
      {
        if (var0 != -1)
        {
LABEL_20:
          v17 = off_1E788DD10[v3 - 1];
          LogPrintF();
          goto LABEL_25;
        }

        if (_LogCategory_Initialize())
        {
          v16 = self->_ucat;
          goto LABEL_20;
        }
      }
    }
  }

LABEL_25:
  bluetoothStateChangedHandler = self->_bluetoothStateChangedHandler;
  if (bluetoothStateChangedHandler)
  {
    v14 = OUTLINED_FUNCTION_2_2(bluetoothStateChangedHandler);
    v15(v14);
  }

LABEL_27:
}

- (void)nearby:(id)nearby didConnectToPeer:(id)peer transport:(int64_t)transport error:(id)error
{
  v43[3] = *MEMORY[0x1E69E9840];
  peerCopy = peer;
  errorCopy = error;
  dispatchQueue = self->_dispatchQueue;
  nearbyCopy = nearby;
  dispatch_assert_queue_V2(dispatchQueue);
  v13 = self->_peerDevice;
  wpNearby = self->_wpNearby;

  if (!wpNearby)
  {
    goto LABEL_34;
  }

  if (wpNearby != nearbyCopy)
  {
    goto LABEL_34;
  }

  identifier = [(SFBLEDevice *)v13 identifier];
  v16 = [identifier isEqual:peerCopy];

  if (!v16)
  {
    goto LABEL_34;
  }

  self->_connecting = 0;
  if (!self->_acceptor)
  {
    v18 = CFAbsoluteTimeGetCurrent() - self->_connectStartTime;
    self->_connected = errorCopy == 0;
    if (errorCopy)
    {
      OUTLINED_FUNCTION_3_7();
      if (v19 <= 50)
      {
        if (v19 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_23;
          }

          ucat = self->_ucat;
        }

        v41 = errorCopy;
        v40 = v18;
        LogPrintF();
      }

LABEL_23:
      connectionStateChangedHandler = self->_connectionStateChangedHandler;
      if (connectionStateChangedHandler)
      {
        v24 = OUTLINED_FUNCTION_2_2(connectionStateChangedHandler);
        v25(v24, 2);
      }

      [(CURetrier *)self->_connectRetrier failedDirect:*&v40];
      goto LABEL_34;
    }

    OUTLINED_FUNCTION_1_9();
    OUTLINED_FUNCTION_3_7();
    if (v21 <= 30)
    {
      if (v21 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_27;
        }

        v38 = self->_ucat;
      }

      v40 = v18;
      LogPrintF();
    }

LABEL_27:
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v42[0] = @"SFBluetoothNotificationKeyConnectStart";
    v27 = [MEMORY[0x1E696AD98] numberWithDouble:self->_connectStartTime];
    v43[0] = v27;
    v42[1] = @"SFBluetoothNotificationKeyConnectTime";
    v28 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
    v42[2] = @"SFBluetoothNotificationKeyPeerDevice";
    v43[1] = v28;
    v43[2] = v13;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:3];
    [defaultCenter postNotificationName:@"SFBluetoothNotificationNameConnected" object:self userInfo:v29];

    [(CURetrier *)self->_connectRetrier succeededDirect];
    v30 = self->_connectionStateChangedHandler;
    if (v30)
    {
      v31 = OUTLINED_FUNCTION_2_2(v30);
      v32(v31, 1);
    }

    [(SFBLEConnection *)self _processQueuedData];

    goto LABEL_34;
  }

  if (!errorCopy)
  {
    if (self->_connected)
    {
      goto LABEL_31;
    }

    self->_connected = 1;
    OUTLINED_FUNCTION_3_7();
    if (v20 > 30)
    {
      goto LABEL_31;
    }

    if (v20 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_31;
      }

      v39 = self->_ucat;
    }

    LogPrintF();
LABEL_31:
    v33 = self->_connectionStateChangedHandler;
    if (v33)
    {
      v34 = OUTLINED_FUNCTION_2_2(v33);
      v35(v34, 1);
    }

    [(SFBLEConnection *)self _processQueuedData];
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_3_7();
  if (v17 <= 50)
  {
    if (v17 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_34;
      }

      v22 = self->_ucat;
    }

    LogPrintF();
  }

LABEL_34:

  v36 = *MEMORY[0x1E69E9840];
}

- (void)nearby:(id)nearby didDisconnectFromPeer:(id)peer error:(id)error
{
  v27[1] = *MEMORY[0x1E69E9840];
  peerCopy = peer;
  errorCopy = error;
  dispatchQueue = self->_dispatchQueue;
  nearbyCopy = nearby;
  dispatch_assert_queue_V2(dispatchQueue);
  wpNearby = self->_wpNearby;

  v13 = 0;
  if (!wpNearby)
  {
    goto LABEL_17;
  }

  if (wpNearby != nearbyCopy)
  {
    goto LABEL_17;
  }

  v13 = self->_peerDevice;
  identifier = [(SFBLEDevice *)v13 identifier];
  v15 = [identifier isEqual:peerCopy];

  if (!v15)
  {
    goto LABEL_17;
  }

  *&self->_connected = 0;
  var0 = self->_ucat->var0;
  if (errorCopy)
  {
    if (var0 <= 50)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_14;
        }

        ucat = self->_ucat;
      }

      v25 = errorCopy;
      goto LABEL_10;
    }
  }

  else if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_14;
      }

      v24 = self->_ucat;
    }

LABEL_10:
    LogPrintF();
  }

LABEL_14:
  [(SFBLEConnection *)self _cleanupQueuedData:4294960543, v25];
  connectionStateChangedHandler = self->_connectionStateChangedHandler;
  if (connectionStateChangedHandler)
  {
    v19 = OUTLINED_FUNCTION_2_2(connectionStateChangedHandler);
    v20(v19, 2);
  }

  [(CURetrier *)self->_connectRetrier failedDirect];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v26 = @"SFBluetoothNotificationKeyPeerDevice";
  v27[0] = v13;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  [defaultCenter postNotificationName:@"SFBluetoothNotificationNameDisconnected" object:self userInfo:v22];

LABEL_17:
  v23 = *MEMORY[0x1E69E9840];
}

- (void)nearby:(id)nearby didSendData:(id)data toPeer:(id)peer error:(id)error
{
  dataCopy = data;
  peerCopy = peer;
  errorCopy = error;
  dispatchQueue = self->_dispatchQueue;
  nearbyCopy = nearby;
  dispatch_assert_queue_V2(dispatchQueue);
  wpNearby = self->_wpNearby;

  if (!wpNearby)
  {
    goto LABEL_24;
  }

  if (wpNearby != nearbyCopy)
  {
    goto LABEL_24;
  }

  identifier = [(SFBLEDevice *)self->_peerDevice identifier];
  v16 = [identifier isEqual:peerCopy];

  if (!v16)
  {
    goto LABEL_24;
  }

  if (!self->_currentData)
  {
    var0 = self->_ucat->var0;
    if (var0 > 50)
    {
      goto LABEL_24;
    }

    if (var0 == -1)
    {
      ucat = self->_ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_24;
      }

      v22 = self->_ucat;
    }

    v31 = [dataCopy length];
    v32 = errorCopy;
    v30 = dataCopy;
    LogPrintF();
    goto LABEL_24;
  }

  [dataCopy length];
  OUTLINED_FUNCTION_1_9();
  v17 = self->_ucat->var0;
  if (errorCopy)
  {
    if (v17 <= 60)
    {
      if (v17 == -1)
      {
        v19 = self->_ucat;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_21;
        }

        v20 = self->_ucat;
      }

      v31 = [dataCopy length];
      v32 = errorCopy;
      v30 = dataCopy;
      goto LABEL_15;
    }
  }

  else if (v17 <= 30)
  {
    if (v17 == -1)
    {
      v23 = self->_ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_21;
      }

      v29 = self->_ucat;
    }

    v31 = [dataCopy length];
    v30 = dataCopy;
LABEL_15:
    LogPrintF();
  }

LABEL_21:
  v24 = [(SFBLEData *)self->_currentData completion:v30];

  if (v24)
  {
    completion = [(SFBLEData *)self->_currentData completion];
    v26 = OUTLINED_FUNCTION_2_2(completion);
    v27(v26, errorCopy);
  }

  currentData = self->_currentData;
  self->_currentData = 0;

LABEL_24:
  [(SFBLEConnection *)self _processQueuedData:v30];
}

- (void)nearby:(id)nearby didReceiveData:(id)data fromPeer:(id)peer
{
  dataCopy = data;
  peerCopy = peer;
  dispatchQueue = self->_dispatchQueue;
  nearbyCopy = nearby;
  dispatch_assert_queue_V2(dispatchQueue);
  wpNearby = self->_wpNearby;

  if (wpNearby)
  {
    if (wpNearby == nearbyCopy)
    {
      identifier = [(SFBLEDevice *)self->_peerDevice identifier];
      v13 = [identifier isEqual:peerCopy];

      if (v13)
      {
        dataHandler = self->_dataHandler;
        if (dataHandler)
        {
          v15 = OUTLINED_FUNCTION_2_2(dataHandler);
          v16(v15, dataCopy);
        }
      }
    }
  }

  [(SFBLEConnection *)self _processQueuedData];
}

@end