@interface SFBLEPipe
- (NSString)description;
- (SFBLEPipe)initWithPriority:(int64_t)priority;
- (id)_defaultPairedDeviceBluetoothIdentifier;
- (id)getPeerUUID;
- (int)_setupIfNeeded;
- (int64_t)connectionState;
- (uint64_t)_setupIfNeeded;
- (uint64_t)_writeHandler;
- (void)_activate;
- (void)_invalidate;
- (void)_readHandler;
- (void)_sendFrameType:(unsigned __int8)type payload:(id)payload completion:(id)completion;
- (void)_setupIfNeeded;
- (void)_setupPipe:(id)pipe;
- (void)_tearDownPipe;
- (void)_writeHandler;
- (void)activate;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManagerDidUpdateState:(id)state;
- (void)dealloc;
- (void)invalidate;
- (void)scalablePipeManager:(id)manager didRegisterEndpoint:(id)endpoint error:(id)error;
- (void)scalablePipeManager:(id)manager didUnregisterEndpoint:(id)endpoint;
- (void)scalablePipeManager:(id)manager pipeDidConnect:(id)connect;
- (void)scalablePipeManager:(id)manager pipeDidDisconnect:(id)disconnect error:(id)error;
- (void)scalablePipeManagerDidUpdateState:(id)state;
- (void)sendFrameType:(unsigned __int8)type payload:(id)payload completion:(id)completion;
- (void)setDispatchQueue:(id)queue;
- (void)setIdentifier:(id)identifier;
@end

@implementation SFBLEPipe

- (NSString)description
{
  self->_btEndpointRegistered;
  self->_btConnected;
  return NSPrintF();
}

- (SFBLEPipe)initWithPriority:(int64_t)priority
{
  v9.receiver = self;
  v9.super_class = SFBLEPipe;
  v4 = [(SFBLEPipe *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v6 = SFMainQueue(v4);
    dispatchQueue = v5->_dispatchQueue;
    v5->_dispatchQueue = v6;

    v5->_ucat = &gLogCategory_SFBLEPipe;
    v5->_btPipePriority = priority;
  }

  return v5;
}

- (void)dealloc
{
  if (self->_btPipe)
  {
    v4 = [SFBLEPipe dealloc];
    [(SFBLEPipe *)v4 connectionState];
  }

  else
  {
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
    v6.super_class = SFBLEPipe;
    [(SFBLEPipe *)&v6 dealloc];
  }
}

- (int64_t)connectionState
{
  if (self->_btConnected)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (id)getPeerUUID
{
  btPipe = self->_btPipe;
  if (btPipe)
  {
    peer = [(CBScalablePipe *)btPipe peer];
    identifier = [peer identifier];
  }

  else
  {
    identifier = 0;
  }

  return identifier;
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
  block[2] = __21__SFBLEPipe_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = selfCopy;
  dispatch_async(dispatchQueue, block);
  objc_sync_exit(selfCopy);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__SFBLEPipe_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  v43 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled)
  {
    goto LABEL_28;
  }

  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_4:
      LogPrintF();
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_4;
    }
  }

LABEL_6:
  self->_invalidateCalled = 1;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  selfCopy = self;
  v4 = self->_btWriteQueue;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v37;
    v8 = *MEMORY[0x1E696A768];
    v9 = *MEMORY[0x1E696A578];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v37 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v36 + 1) + 8 * i);
        completion = [v11 completion];

        if (completion)
        {
          completion2 = [v11 completion];
          v14 = MEMORY[0x1E696ABC0];
          v40 = v9;
          v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
          v16 = v15;
          v17 = @"?";
          if (v15)
          {
            v17 = v15;
          }

          v41 = v17;
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
          v19 = [v14 errorWithDomain:v8 code:-6723 userInfo:v18];
          (completion2)[2](completion2, v19);
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)selfCopy->_btWriteQueue removeAllObjects];
  btWriteQueue = selfCopy->_btWriteQueue;
  selfCopy->_btWriteQueue = 0;

  v21 = selfCopy->_identifier;
  [(SFBLEPipe *)selfCopy _tearDownPipe];
  if (v21 && (selfCopy->_btEndpointRegistered || selfCopy->_btEndpointRegistering))
  {
    [(CBScalablePipeManager *)selfCopy->_btPipeManager unregisterEndpoint:v21];
  }

  *&selfCopy->_btEndpointRegistering = 0;
  [(CBScalablePipeManager *)selfCopy->_btPipeManager setDelegate:0];
  btPipeManager = selfCopy->_btPipeManager;
  selfCopy->_btPipeManager = 0;

  btPipe = selfCopy->_btPipe;
  selfCopy->_btPipe = 0;

  btCentral = selfCopy->_btCentral;
  selfCopy->_btCentral = 0;

  [(NSMutableDictionary *)selfCopy->_frameHandlers removeAllObjects];
  frameHandlers = selfCopy->_frameHandlers;
  selfCopy->_frameHandlers = 0;

  v26 = selfCopy->_ucat->var0;
  if (v26 > 30)
  {
    goto LABEL_25;
  }

  if (v26 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_25;
    }

    v34 = selfCopy->_ucat;
  }

  LogPrintF();
LABEL_25:
  invalidationHandler = selfCopy->_invalidationHandler;
  if (invalidationHandler)
  {
    invalidationHandler[2]();
  }

  bluetoothStateChangedHandler = selfCopy->_bluetoothStateChangedHandler;
  selfCopy->_bluetoothStateChangedHandler = 0;

  connectionStateChangedHandler = selfCopy->_connectionStateChangedHandler;
  selfCopy->_connectionStateChangedHandler = 0;

  frameHandler = selfCopy->_frameHandler;
  selfCopy->_frameHandler = 0;

  v31 = selfCopy->_invalidationHandler;
  selfCopy->_invalidationHandler = 0;

LABEL_28:
  v32 = *MEMORY[0x1E69E9840];
}

- (void)sendFrameType:(unsigned __int8)type payload:(id)payload completion:(id)completion
{
  payloadCopy = payload;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __46__SFBLEPipe_sendFrameType_payload_completion___block_invoke;
  v13[3] = &unk_1E788E128;
  typeCopy = type;
  v13[4] = self;
  v14 = payloadCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = payloadCopy;
  dispatch_async(dispatchQueue, v13);
}

- (void)_sendFrameType:(unsigned __int8)type payload:(id)payload completion:(id)completion
{
  v36[1] = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  completionCopy = completion;
  v32 = 0;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled)
  {
    var0 = self->_ucat->var0;
    if (var0 > 60)
    {
      goto LABEL_11;
    }

    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_11:
        if (completionCopy)
        {
          v16 = MEMORY[0x1E696ABC0];
          v17 = *MEMORY[0x1E696A768];
          v35 = *MEMORY[0x1E696A578];
          v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
          v14 = v18;
          v19 = @"?";
          if (v18)
          {
            v19 = v18;
          }

          v36[0] = v19;
          v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
          v20 = v16;
          v21 = v17;
          v22 = -6709;
LABEL_20:
          v27 = [v20 errorWithDomain:v21 code:v22 userInfo:v15];
          completionCopy[2](completionCopy, v27);

          goto LABEL_21;
        }

        goto LABEL_22;
      }

      ucat = self->_ucat;
    }

    LogPrintF();
    goto LABEL_11;
  }

  v11 = [payloadCopy length];
  v12 = v11;
  if (v11 < 0x989681)
  {
    LOBYTE(v32) = type;
    BYTE1(v32) = BYTE2(v11);
    BYTE2(v32) = BYTE1(v11);
    HIBYTE(v32) = v11;
    v14 = [objc_alloc(MEMORY[0x1E695DF88]) initWithBytes:&v32 length:4];
    [v14 appendData:payloadCopy];
    v15 = objc_alloc_init(SFBLEData);
    [(SFBLEData *)v15 setData:v14];
    [(SFBLEData *)v15 setCompletion:completionCopy];
    [(NSMutableArray *)self->_btWriteQueue addObject:v15];
    [(SFBLEPipe *)self _writeHandler];
LABEL_21:

    goto LABEL_22;
  }

  v13 = self->_ucat->var0;
  if (v13 <= 50)
  {
    if (v13 != -1)
    {
LABEL_8:
      v31 = v12;
      LogPrintF();
      goto LABEL_16;
    }

    if (_LogCategory_Initialize())
    {
      v30 = self->_ucat;
      goto LABEL_8;
    }
  }

LABEL_16:
  if (completionCopy)
  {
    v23 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A768];
    v33 = *MEMORY[0x1E696A578];
    v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v14 = v25;
    v26 = @"?";
    if (v25)
    {
      v26 = v25;
    }

    v34 = v26;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:{1, v31}];
    v20 = v23;
    v21 = v24;
    v22 = -6743;
    goto LABEL_20;
  }

LABEL_22:

  v28 = *MEMORY[0x1E69E9840];
}

- (void)_setupIfNeeded
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (self->_btEndpointRegistered || self->_btEndpointRegistering || [(CBScalablePipeManager *)self->_btPipeManager state]!= 5)
  {
    goto LABEL_10;
  }

  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_8;
      }

      ucat = self->_ucat;
    }

    LogPrintF();
  }

LABEL_8:
  v4 = self->_identifier;
  if (!v4)
  {
    [(SFBLEPipe *)&self->_ucat _setupIfNeeded];
    goto LABEL_23;
  }

  v5 = v4;
  v6 = self->_btCentral == 0;
  v7 = getCBScalablePipeOptionTransport();
  v21 = v7;
  v22[0] = &unk_1F1D7CDD8;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];

  [(CBScalablePipeManager *)self->_btPipeManager registerEndpoint:v5 type:v6 priority:self->_btPipePriority options:v8];
  self->_btEndpointRegistering = 1;

LABEL_10:
  if (self->_manualConnect && self->_btEndpointRegistered && self->_btCentral && !self->_btConnected && !self->_btConnecting)
  {
    _defaultPairedDeviceBluetoothIdentifier = [(SFBLEPipe *)self _defaultPairedDeviceBluetoothIdentifier];
    v10 = _defaultPairedDeviceBluetoothIdentifier;
    if (!_defaultPairedDeviceBluetoothIdentifier)
    {
      [(SFBLEPipe *)self _setupIfNeeded];
      goto LABEL_22;
    }

    btCentral = self->_btCentral;
    v20 = _defaultPairedDeviceBluetoothIdentifier;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
    v13 = [(CBCentralManager *)btCentral retrievePeripheralsWithIdentifiers:v12];
    firstObject = [v13 firstObject];

    v15 = self->_ucat->var0;
    if (!firstObject)
    {
      [(SFBLEPipe *)v15 _setupIfNeeded];
      goto LABEL_22;
    }

    if (v15 <= 30)
    {
      if (v15 == -1)
      {
        v16 = self->_ucat;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_21;
        }

        v19 = self->_ucat;
      }

      LogPrintF();
    }

LABEL_21:
    kdebug_trace();
    [(CBCentralManager *)self->_btCentral connectPeripheral:firstObject options:0];
    self->_btConnecting = 1;

LABEL_22:
  }

LABEL_23:
  v17 = *MEMORY[0x1E69E9840];
}

- (void)_setupPipe:(id)pipe
{
  pipeCopy = pipe;
  [(SFBLEPipe *)self _tearDownPipe];
  objc_storeStrong(&self->_btPipe, pipe);
  channel = [pipeCopy channel];
  self->_btChannel = channel;
  if (!channel)
  {
    [SFBLEPipe _setupPipe:?];
LABEL_17:
    [SFBLEPipe _setupPipe:?];
    goto LABEL_12;
  }

  os_channel_ring_id();
  v7 = os_channel_rx_ring();
  self->_btReadRing = v7;
  if (!v7)
  {
    [SFBLEPipe _setupPipe:?];
    goto LABEL_17;
  }

  btChannel = self->_btChannel;
  os_channel_ring_id();
  v9 = os_channel_tx_ring();
  self->_btWriteRing = v9;
  if (!v9)
  {
    [SFBLEPipe _setupPipe:?];
    goto LABEL_17;
  }

  v10 = self->_btChannel;
  fd = os_channel_get_fd();
  self->_btFD = fd;
  if ((fd & 0x80000000) != 0)
  {
    [SFBLEPipe _setupPipe:?];
    goto LABEL_17;
  }

  v12 = dispatch_source_create(MEMORY[0x1E69E96F8], fd, 0, self->_dispatchQueue);
  btReadSource = self->_btReadSource;
  self->_btReadSource = v12;

  v14 = self->_btReadSource;
  if (!v14)
  {
    goto LABEL_17;
  }

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __24__SFBLEPipe__setupPipe___block_invoke;
  handler[3] = &unk_1E788B198;
  handler[4] = self;
  dispatch_source_set_event_handler(v14, handler);
  v15 = self->_btReadSource;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __24__SFBLEPipe__setupPipe___block_invoke_2;
  v30[3] = &unk_1E788B198;
  v16 = pipeCopy;
  v31 = v16;
  dispatch_source_set_cancel_handler(v15, v30);

  dispatch_resume(self->_btReadSource);
  *&self->_btReadLen = xmmword_1A998F1E0;
  btReadPayload = self->_btReadPayload;
  self->_btReadPayload = 0;

  v18 = dispatch_source_create(MEMORY[0x1E69E9730], self->_btFD, 0, self->_dispatchQueue);
  btWriteSource = self->_btWriteSource;
  self->_btWriteSource = v18;

  v20 = self->_btWriteSource;
  if (!v20)
  {
    goto LABEL_17;
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __24__SFBLEPipe__setupPipe___block_invoke_3;
  v29[3] = &unk_1E788B198;
  v29[4] = self;
  dispatch_source_set_event_handler(v20, v29);
  v21 = self->_btWriteSource;
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __24__SFBLEPipe__setupPipe___block_invoke_4;
  v27 = &unk_1E788B198;
  v28 = v16;
  dispatch_source_set_cancel_handler(v21, &v24);

  self->_btWriteSuspended = 1;
  var0 = self->_ucat->var0;
  if (var0 <= 50)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      ucat = self->_ucat;
    }

    LogPrintF();
  }

LABEL_11:
  [(SFBLEPipe *)self _writeHandler:v24];
LABEL_12:
}

- (void)_tearDownPipe
{
  v26[1] = *MEMORY[0x1E69E9840];
  if (self->_btPipe)
  {
    var0 = self->_ucat->var0;
    if (var0 <= 30)
    {
      if (var0 != -1)
      {
LABEL_4:
        LogPrintF();
        goto LABEL_6;
      }

      if (_LogCategory_Initialize())
      {
        ucat = self->_ucat;
        goto LABEL_4;
      }
    }
  }

LABEL_6:
  self->_btChannel = 0;
  self->_btFD = -1;
  btPipe = self->_btPipe;
  self->_btPipe = 0;

  btReadPayload = self->_btReadPayload;
  self->_btReadPayload = 0;

  self->_btReadRing = 0;
  btReadSource = self->_btReadSource;
  if (btReadSource)
  {
    v7 = btReadSource;
    dispatch_source_cancel(v7);
    v8 = self->_btReadSource;
    self->_btReadSource = 0;
  }

  btWriteData = self->_btWriteData;
  self->_btWriteData = 0;

  btWriteItem = self->_btWriteItem;
  if (btWriteItem)
  {
    completion = [(SFBLEData *)btWriteItem completion];

    if (completion)
    {
      completion2 = [(SFBLEData *)self->_btWriteItem completion];
      v13 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E696A768];
      v25 = *MEMORY[0x1E696A578];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
      v16 = v15;
      v17 = @"?";
      if (v15)
      {
        v17 = v15;
      }

      v26[0] = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      v19 = [v13 errorWithDomain:v14 code:-6723 userInfo:v18];
      (completion2)[2](completion2, v19);
    }

    v20 = self->_btWriteItem;
    self->_btWriteItem = 0;
  }

  self->_btWritePtr = 0;
  self->_btWriteRing = 0;
  btWriteSource = self->_btWriteSource;
  if (btWriteSource)
  {
    dispatch_source_cancel(btWriteSource);
    if (self->_btWriteSuspended)
    {
      dispatch_resume(self->_btWriteSource);
      self->_btWriteSuspended = 0;
    }

    v22 = self->_btWriteSource;
    self->_btWriteSource = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_readHandler
{
  btReadRing = self->_btReadRing;
  if (!os_channel_get_next_slot())
  {
    goto LABEL_13;
  }

  do
  {
    v4 = self->_btReadRing;
  }

  while (os_channel_get_next_slot());
  v5 = self->_btReadRing;
  if (os_channel_advance_slot())
  {
    var0 = self->_ucat->var0;
    if (var0 <= 60)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_8;
        }

        ucat = self->_ucat;
      }

      LogPrintF();
    }
  }

LABEL_8:
  btChannel = self->_btChannel;
  if (os_channel_sync())
  {
    v8 = self->_ucat->var0;
    if (v8 <= 60)
    {
      if (v8 != -1)
      {
LABEL_11:
        LogPrintF();
        goto LABEL_13;
      }

      if (_LogCategory_Initialize())
      {
        v12 = self->_ucat;
        goto LABEL_11;
      }
    }
  }

LABEL_13:
  v9 = self->_ucat->var0;
  if (v9 <= 10)
  {
    if (v9 != -1)
    {
LABEL_15:
      LogPrintF();
      return;
    }

    if (_LogCategory_Initialize())
    {
      v10 = self->_ucat;
      goto LABEL_15;
    }
  }
}

- (void)_writeHandler
{
  if (!self->_btWriteRing)
  {
    [(SFBLEPipe *)self _writeHandler];
    return;
  }

  v3 = 0;
  while (1)
  {
    v28 = 0;
    if (!self->_btWriteItem)
    {
      firstObject = [(NSMutableArray *)self->_btWriteQueue firstObject];
      btWriteItem = self->_btWriteItem;
      self->_btWriteItem = firstObject;

      if (!self->_btWriteItem)
      {
        goto LABEL_32;
      }

      [(NSMutableArray *)self->_btWriteQueue removeObjectAtIndex:0];
      data = [(SFBLEData *)self->_btWriteItem data];
      btWriteData = self->_btWriteData;
      self->_btWriteData = data;

      self->_btWritePtr = [(NSData *)self->_btWriteData bytes];
      self->_btWriteLen = [(NSData *)self->_btWriteData length];
      self->_btWriteOffset = 0;
      kdebug_trace();
    }

    btWriteLen = self->_btWriteLen;
    btWriteOffset = self->_btWriteOffset;
    v10 = btWriteLen - btWriteOffset;
    if (btWriteLen == btWriteOffset)
    {
      break;
    }

    btWriteRing = self->_btWriteRing;
    if (!os_channel_get_next_slot())
    {
      goto LABEL_29;
    }

    do
    {
      if (v10 >= v28)
      {
        v12 = v28;
      }

      else
      {
        v12 = v10;
      }

      memcpy(0, self->_btWritePtr, v12);
      v28 = v12;
      v13 = self->_btWriteRing;
      os_channel_set_slot_properties();
      v14 = &self->_btWritePtr[v12];
      self->_btWriteOffset += v12;
      self->_btWritePtr = v14;
      v3 += v12;
      v10 -= v12;
      if (!v10)
      {
        break;
      }

      v15 = self->_btWriteRing;
    }

    while (os_channel_get_next_slot());
    v16 = self->_btWriteRing;
    if (!os_channel_advance_slot())
    {
      goto LABEL_18;
    }

    var0 = self->_ucat->var0;
    if (var0 > 60)
    {
      goto LABEL_18;
    }

    if (var0 != -1)
    {
      goto LABEL_16;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
LABEL_16:
      LogPrintF();
    }

LABEL_18:
    btChannel = self->_btChannel;
    if (os_channel_sync())
    {
      v19 = self->_ucat->var0;
      if (v19 <= 60)
      {
        if (v19 != -1)
        {
          goto LABEL_21;
        }

        if (_LogCategory_Initialize())
        {
          v25 = self->_ucat;
LABEL_21:
          LogPrintF();
        }
      }
    }

    if (v10)
    {
LABEL_29:
      if (self->_btWriteSuspended)
      {
        self->_btWriteSuspended = 0;
        dispatch_resume(self->_btWriteSource);
      }

      break;
    }

    v20 = self->_btWriteLen;
    kdebug_trace();
    completion = [(SFBLEData *)self->_btWriteItem completion];

    if (completion)
    {
      completion2 = [(SFBLEData *)self->_btWriteItem completion];
      completion2[2](completion2, 0);
    }

    v23 = self->_btWriteItem;
    self->_btWriteItem = 0;
  }

  if (self->_btWriteItem)
  {
    goto LABEL_34;
  }

LABEL_32:
  if (!self->_btWriteSuspended)
  {
    self->_btWriteSuspended = 1;
    dispatch_suspend(self->_btWriteSource);
  }

LABEL_34:
  v26 = self->_ucat->var0;
  if (v26 <= 10)
  {
    if (v26 != -1)
    {
      goto LABEL_36;
    }

    if (_LogCategory_Initialize())
    {
      v27 = self->_ucat;
LABEL_36:
      LogPrintF();
    }
  }
}

- (id)_defaultPairedDeviceBluetoothIdentifier
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(getIDSServiceClass()) initWithService:@"com.apple.private.alloy.nearby"];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  devices = [v2 devices];
  v4 = [devices countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(devices);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 isDefaultPairedDevice])
        {
          nsuuid = [v8 nsuuid];
          if (nsuuid)
          {
            v10 = nsuuid;
            goto LABEL_12;
          }
        }
      }

      v5 = [devices countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)setIdentifier:(id)identifier
{
  v4 = [identifier copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  var4 = self->_ucat->var4;
  [(NSString *)self->_identifier UTF8String];
  ASPrintF();
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
  if (!self->_btWriteQueue)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    btWriteQueue = self->_btWriteQueue;
    self->_btWriteQueue = v4;
  }

  if (!self->_btCentral)
  {
    v6 = [objc_alloc(_MergedGlobals()) initWithDelegate:self queue:self->_dispatchQueue];
    btCentral = self->_btCentral;
    self->_btCentral = v6;
  }

  if (!self->_btPipeManager)
  {
    v8 = [objc_alloc(off_1EE741428()) initWithDelegate:self queue:self->_dispatchQueue];
    btPipeManager = self->_btPipeManager;
    self->_btPipeManager = v8;
  }

  [(SFBLEPipe *)self _setupIfNeeded];
}

- (void)centralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  btCentral = self->_btCentral;
  if (btCentral)
  {
    v5 = btCentral == stateCopy;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    goto LABEL_19;
  }

  switch([(CBCentralManager *)stateCopy state])
  {
    case 1:
      v6 = 0;
      v7 = 1;
      break;
    case 2:
      v6 = 0;
      v7 = 4;
      break;
    case 3:
      v6 = 0;
      v7 = 5;
      break;
    case 4:
      v6 = 0;
      v7 = 2;
      break;
    case 5:
      v6 = 1;
      v7 = 3;
      break;
    default:
      v6 = 0;
      v7 = 0;
      break;
  }

  var0 = self->_ucat->var0;
  if (var0 <= 40)
  {
    if (var0 != -1)
    {
LABEL_15:
      v10 = off_1E788E148[v7];
      LogPrintF();
      goto LABEL_17;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_15;
    }
  }

LABEL_17:
  if (v6)
  {
    [(SFBLEPipe *)self _setupIfNeeded];
  }

LABEL_19:
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  dispatchQueue = self->_dispatchQueue;
  managerCopy = manager;
  dispatch_assert_queue_V2(dispatchQueue);
  btCentral = self->_btCentral;

  if (btCentral)
  {
    v9 = btCentral == managerCopy;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    OUTLINED_FUNCTION_1_10();
    if (v11 ^ v12 | v9)
    {
      if (v10 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_11;
        }

        ucat = self->_ucat;
      }

      LogPrintF();
    }
  }

LABEL_11:
}

- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error
{
  peripheralCopy = peripheral;
  errorCopy = error;
  dispatchQueue = self->_dispatchQueue;
  managerCopy = manager;
  dispatch_assert_queue_V2(dispatchQueue);
  btCentral = self->_btCentral;

  if (btCentral && btCentral == managerCopy)
  {
    OUTLINED_FUNCTION_1_10();
    if (!(v14 ^ v15 | v13))
    {
      goto LABEL_8;
    }

    if (v12 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_8;
      }

      ucat = self->_ucat;
    }

    v17 = peripheralCopy;
    v18 = errorCopy;
    LogPrintF();
LABEL_8:
    *&self->_btConnected = 0;
    [(SFBLEPipe *)self _setupIfNeeded:v17];
  }
}

- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error
{
  peripheralCopy = peripheral;
  errorCopy = error;
  dispatchQueue = self->_dispatchQueue;
  managerCopy = manager;
  dispatch_assert_queue_V2(dispatchQueue);
  btCentral = self->_btCentral;

  if (btCentral && btCentral == managerCopy)
  {
    OUTLINED_FUNCTION_1_10();
    if (!(v14 ^ v15 | v13))
    {
      goto LABEL_10;
    }

    if (v12 == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_10:
        *&self->_btConnected = 0;
        [(SFBLEPipe *)self _setupIfNeeded:v18];
        goto LABEL_11;
      }

      ucat = self->_ucat;
    }

    v16 = @"success";
    if (errorCopy)
    {
      v16 = errorCopy;
    }

    v18 = peripheralCopy;
    v19 = v16;
    LogPrintF();
    goto LABEL_10;
  }

LABEL_11:
}

- (void)scalablePipeManagerDidUpdateState:(id)state
{
  v46[1] = *MEMORY[0x1E69E9840];
  stateCopy = state;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  btPipeManager = self->_btPipeManager;
  if (btPipeManager)
  {
    v6 = btPipeManager == stateCopy;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    goto LABEL_38;
  }

  state = [(CBScalablePipeManager *)stateCopy state];
  if ((state - 1) > 4)
  {
    v8 = 0;
  }

  else
  {
    v8 = qword_1A998F1F0[state - 1];
  }

  var0 = self->_ucat->var0;
  if (var0 <= 40)
  {
    if (var0 != -1)
    {
LABEL_11:
      v34 = off_1E788E148[v8];
      LogPrintF();
      goto LABEL_13;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_11;
    }
  }

LABEL_13:
  switch(v8)
  {
    case 1:
    case 4:
    case 5:
      goto LABEL_15;
    case 2:
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      v45 = @"SFNotificationKeyConnectionState";
      v46[0] = &unk_1F1D7CDF0;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:&v45 count:1];
      [defaultCenter postNotificationName:@"SFNotificationNameBTPoweredOff" object:self userInfo:v11];

LABEL_15:
      v12 = self->_ucat->var0;
      if (v12 > 50)
      {
        goto LABEL_20;
      }

      if (v12 != -1)
      {
        goto LABEL_17;
      }

      if (_LogCategory_Initialize())
      {
        v33 = self->_ucat;
LABEL_17:
        v34 = off_1E788E178[v8 - 1];
        LogPrintF();
      }

LABEL_20:
      v35 = v8;
      selfCopy = self;
      v37 = stateCopy;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v13 = self->_btWriteQueue;
      v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v38 objects:v44 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v39;
        v17 = *MEMORY[0x1E696A768];
        v18 = *MEMORY[0x1E696A578];
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v39 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v20 = *(*(&v38 + 1) + 8 * i);
            completion = [v20 completion];

            if (completion)
            {
              completion2 = [v20 completion];
              v23 = MEMORY[0x1E696ABC0];
              v42 = v18;
              v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
              v25 = v24;
              v26 = @"?";
              if (v24)
              {
                v26 = v24;
              }

              v43 = v26;
              v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
              v28 = [v23 errorWithDomain:v17 code:-6753 userInfo:v27];
              (completion2)[2](completion2, v28);
            }
          }

          v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v38 objects:v44 count:16];
        }

        while (v15);
      }

      self = selfCopy;
      [(NSMutableArray *)selfCopy->_btWriteQueue removeAllObjects];
      [(SFBLEPipe *)selfCopy _tearDownPipe];
      v29 = selfCopy->_identifier;
      if (v29 && (selfCopy->_btEndpointRegistered || selfCopy->_btEndpointRegistering))
      {
        [(CBScalablePipeManager *)selfCopy->_btPipeManager unregisterEndpoint:v29, v34];
      }

      *&selfCopy->_btConnected = 0;

      stateCopy = v37;
      v8 = v35;
LABEL_36:
      bluetoothStateChangedHandler = self->_bluetoothStateChangedHandler;
      if (bluetoothStateChangedHandler)
      {
        bluetoothStateChangedHandler[2](bluetoothStateChangedHandler, v8);
      }

      break;
    case 3:
      [(SFBLEPipe *)self _setupIfNeeded];
      goto LABEL_36;
    default:
      goto LABEL_36;
  }

LABEL_38:

  v31 = *MEMORY[0x1E69E9840];
}

- (void)scalablePipeManager:(id)manager didRegisterEndpoint:(id)endpoint error:(id)error
{
  managerCopy = manager;
  endpointCopy = endpoint;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!managerCopy || self->_btPipeManager != managerCopy || ![endpointCopy isEqual:self->_identifier])
  {
    goto LABEL_15;
  }

  self->_btEndpointRegistering = 0;
  var0 = self->_ucat->var0;
  if (!errorCopy)
  {
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_14;
        }

        ucat = self->_ucat;
      }

      LogPrintF();
    }

LABEL_14:
    self->_btEndpointRegistered = 1;
    [(SFBLEPipe *)self _setupIfNeeded];
    goto LABEL_15;
  }

  if (var0 > 60)
  {
    goto LABEL_15;
  }

  if (var0 != -1)
  {
    goto LABEL_7;
  }

  if (_LogCategory_Initialize())
  {
    v11 = self->_ucat;
LABEL_7:
    LogPrintF();
  }

LABEL_15:
}

- (void)scalablePipeManager:(id)manager didUnregisterEndpoint:(id)endpoint
{
  managerCopy = manager;
  endpointCopy = endpoint;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (managerCopy && self->_btPipeManager == managerCopy && [endpointCopy isEqual:self->_identifier])
  {
    OUTLINED_FUNCTION_1_10();
    if (!(v9 ^ v10 | v8))
    {
      goto LABEL_9;
    }

    if (v7 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_9;
      }

      ucat = self->_ucat;
    }

    LogPrintF();
LABEL_9:
    *&self->_btEndpointRegistering = 0;
  }
}

- (void)scalablePipeManager:(id)manager pipeDidConnect:(id)connect
{
  v15[1] = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  connectCopy = connect;
  var0 = self->_ucat->var0;
  if (var0 <= 50)
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
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (managerCopy && self->_btPipeManager == managerCopy)
  {
    kdebug_trace();
    *&self->_btConnected = 1;
    [(SFBLEPipe *)self _setupPipe:connectCopy];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v14 = @"SFNotificationKeyConnectionState";
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SFBLEPipe connectionState](self, "connectionState")}];
    v15[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    [defaultCenter postNotificationName:@"SFNotificationNamePipeConnectionStateChanged" object:self userInfo:v11];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)scalablePipeManager:(id)manager pipeDidDisconnect:(id)disconnect error:(id)error
{
  v23[1] = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  disconnectCopy = disconnect;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (managerCopy)
  {
    if (self->_btPipeManager == managerCopy)
    {
      name = [disconnectCopy name];
      v12 = [name isEqual:self->_identifier];

      if (v12)
      {
        var0 = self->_ucat->var0;
        if (var0 <= 50)
        {
          if (var0 != -1)
          {
LABEL_6:
            v14 = @"success";
            if (errorCopy)
            {
              v14 = errorCopy;
            }

            v20 = disconnectCopy;
            v21 = v14;
            LogPrintF();
            goto LABEL_10;
          }

          if (_LogCategory_Initialize())
          {
            ucat = self->_ucat;
            goto LABEL_6;
          }
        }

LABEL_10:
        [(SFBLEPipe *)self _tearDownPipe:v20];
        *&self->_btConnected = 0;
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        v22 = @"SFNotificationKeyConnectionState";
        v16 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SFBLEPipe connectionState](self, "connectionState")}];
        v23[0] = v16;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
        [defaultCenter postNotificationName:@"SFNotificationNamePipeConnectionStateChanged" object:self userInfo:v17];
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (int)_setupIfNeeded
{
  result = *(self + 208);
  if (*result <= 90)
  {
    if (*result != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v3 = *(self + 208);
      return LogPrintF();
    }
  }

  return result;
}

- (uint64_t)_setupIfNeeded
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v4 = *a3;
      return LogPrintF();
    }
  }

  return result;
}

- (uint64_t)_setupPipe:(uint64_t)a1 .cold.1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_0_12(a1);
  if (v5 ^ v6 | v4)
  {
    if (v3 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v7 = *(v1 + 208);
    }

    return LogPrintF();
  }

  return result;
}

- (uint64_t)_setupPipe:(uint64_t)a1 .cold.2(uint64_t a1)
{
  result = OUTLINED_FUNCTION_0_12(a1);
  if (v5 ^ v6 | v4)
  {
    if (v3 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v7 = *(v1 + 208);
    }

    return LogPrintF();
  }

  return result;
}

- (uint64_t)_setupPipe:(uint64_t)a1 .cold.3(uint64_t a1)
{
  result = OUTLINED_FUNCTION_0_12(a1);
  if (v5 ^ v6 | v4)
  {
    if (v3 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v7 = *(v1 + 208);
    }

    return LogPrintF();
  }

  return result;
}

- (uint64_t)_setupPipe:(uint64_t)a1 .cold.4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_0_12(a1);
  if (v5 ^ v6 | v4)
  {
    if (v3 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v7 = *(v1 + 208);
    }

    return LogPrintF();
  }

  return result;
}

- (uint64_t)_setupPipe:(uint64_t)a1 .cold.5(uint64_t a1)
{
  OUTLINED_FUNCTION_0_12(a1);
  if (v4 ^ v5 | v3)
  {
    if (v2 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return [v1 _tearDownPipe];
      }

      v7 = v1[26];
    }

    v8 = 4294960596;
    LogPrintF();
  }

  return [v1 _tearDownPipe];
}

- (uint64_t)_writeHandler
{
  result = OUTLINED_FUNCTION_0_12(self);
  if (v5 ^ v6 | v4)
  {
    if (v3 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v7 = *(v1 + 208);
    }

    return LogPrintF();
  }

  return result;
}

@end