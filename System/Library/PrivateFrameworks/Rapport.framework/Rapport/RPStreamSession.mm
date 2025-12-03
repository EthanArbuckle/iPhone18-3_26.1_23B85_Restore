@interface RPStreamSession
- (BOOL)_startServerConnectionAndReturnError:(id *)error;
- (RPStreamSession)init;
- (RPStreamSession)initWithCoder:(id)coder;
- (id)_lowLatencySelfAddressString:(id *)string;
- (id)descriptionWithLevel:(int)level;
- (int)flowControlWriteState;
- (uint64_t)_invalidate;
- (uint64_t)_invalidated;
- (unsigned)_getSockAddrInterfaceType:(const void *)type;
- (void)_clientRPConnectionPrepareResponse:(id)response options:(id)options completion:(id)completion;
- (void)_clientRPConnectionPrepareWithCompletion:(id)completion;
- (void)_clientRPConnectionStartWithCompletion:(id)completion;
- (void)_clientUDPNWPathNextWithEndpoint:(id)endpoint nwInterface:(id)interface selfMACData:(id)data usb:(BOOL)usb completion:(id)completion;
- (void)_clientUDPNWPathStartResponse:(id)response options:(id)options localEndpoint:(id)endpoint nwInterface:(id)interface selfIPString:(id)string usb:(BOOL)usb completion:(id)completion;
- (void)_clientUDPNWPathStartWithCompletion:(id)completion;
- (void)_clientUDPSocketStartResponse:(id)response options:(id)options completion:(id)completion;
- (void)_clientUDPSocketStartWithCompletion:(id)completion;
- (void)_invalidate;
- (void)_invalidated;
- (void)_serverRPConnectionHandleConnectionStarted:(id)started;
- (void)_serverRPConnectionStartRequest:(id)request options:(id)options responseHandler:(id)handler;
- (void)_serverUDPNWPathNextWithEndpoint:(id)endpoint nwInterface:(id)interface selfMACData:(id)data peerIP:(id *)p peerMACData:(id)cData usb:(BOOL)usb responseHandler:(id)handler;
- (void)_serverUDPNWPathStartRequest:(id)request options:(id)options responseHandler:(id)handler;
- (void)_serverUDPSocketStartRequest:(id)request options:(id)options responseHandler:(id)handler;
- (void)_updateTrafficRegistration;
- (void)_updateTrafficRegistrationForDestination:(id)destination;
- (void)_updateTrafficRegistrationForIP:(id *)p;
- (void)acceptedByServer;
- (void)activateForServerRequest:(id)request options:(id)options responseHandler:(id)handler;
- (void)activateWithCompletion:(id)completion;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)prepareWithCompletion:(id)completion;
- (void)sendEventID:(id)d event:(id)event options:(id)options completion:(id)completion;
- (void)sendRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler;
- (void)setStreamQoS:(int)s;
- (void)setTrafficFlags:(unsigned int)flags;
- (void)startServerConnectionWithCompletion:(id)completion;
@end

@implementation RPStreamSession

- (RPStreamSession)init
{
  v6.receiver = self;
  v6.super_class = RPStreamSession;
  v2 = [(RPStreamSession *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v3->_streamSocket = -1;
    v4 = v3;
  }

  return v3;
}

- (RPStreamSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = RPStreamSession;
  v5 = [(RPStreamSession *)&v20 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v6->_streamSocket = -1;
    v7 = coderCopy;
    if ([v7 containsValueForKey:@"dpUPID"])
    {
      v6->_delegatedProcessUPID = [v7 decodeInt64ForKey:@"dpUPID"];
    }

    v8 = v7;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v9 = v8;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v10 = v9;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v11 = v10;
    if ([v11 containsValueForKey:@"serverMode"])
    {
      v6->_serverMode = [v11 decodeBoolForKey:@"serverMode"];
    }

    v12 = v11;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v21 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      LOBYTE(streamFlags) = v21;
    }

    else
    {
      streamFlags = v6->_streamFlags;
    }

    v6->_streamFlags = streamFlags & 2;
    v14 = v12;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v15 = v14;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v21 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v6->_streamType = v21;
    }

    v21 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v6->_streamQoS = v21;
    }

    if ([v15 containsValueForKey:@"streamSocket"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [v15 decodeXPCObjectOfType:MEMORY[0x1E69E9EA0] forKey:@"streamSocket"];
        v17 = v16;
        if (v16)
        {
          v6->_streamSocket = xpc_fd_dup(v16);
        }
      }
    }

    v18 = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = coderCopy;
  delegatedProcessUPID = self->_delegatedProcessUPID;
  v18 = coderCopy;
  if (delegatedProcessUPID)
  {
    [coderCopy encodeInt64:delegatedProcessUPID forKey:@"dpUPID"];
    v5 = v18;
  }

  destinationString = self->_destinationString;
  if (destinationString)
  {
    [v5 encodeObject:destinationString forKey:@"dstS"];
    v5 = v18;
  }

  nwClientID = self->_nwClientID;
  if (nwClientID)
  {
    [v5 encodeObject:nwClientID forKey:@"nwClientID"];
    v5 = v18;
  }

  pskData = self->_pskData;
  if (pskData)
  {
    [v5 encodeObject:pskData forKey:@"pskD"];
    v5 = v18;
  }

  if (self->_serverMode)
  {
    [v5 encodeBool:1 forKey:@"serverMode"];
    v5 = v18;
  }

  serviceType = self->_serviceType;
  if (serviceType)
  {
    [v5 encodeObject:serviceType forKey:@"streamSrv"];
    v5 = v18;
  }

  if ((self->_streamFlags & 2) != 0)
  {
    [v5 encodeInt64:? forKey:?];
    v5 = v18;
  }

  streamID = self->_streamID;
  if (streamID)
  {
    [v5 encodeObject:streamID forKey:@"streamID"];
    v5 = v18;
  }

  streamKey = self->_streamKey;
  if (streamKey)
  {
    [v5 encodeObject:streamKey forKey:@"streamKey"];
    v5 = v18;
  }

  streamType = self->_streamType;
  if (streamType)
  {
    [v5 encodeInteger:streamType forKey:@"streamType"];
    v5 = v18;
  }

  streamQoS = self->_streamQoS;
  if (streamQoS)
  {
    [v5 encodeInteger:streamQoS forKey:@"streamQoS"];
    v5 = v18;
  }

  streamSocket = self->_streamSocket;
  if ((streamSocket & 0x80000000) == 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v5 = v18;
    if (isKindOfClass)
    {
      v17 = xpc_fd_create(streamSocket);
      [v18 encodeXPCObject:v17 forKey:@"streamSocket"];

      v5 = v18;
    }
  }
}

- (void)dealloc
{
  memset_s(self->_ourCurveSK, 0x20uLL, 0, 0x20uLL);
  streamSocket = self->_streamSocket;
  if ((streamSocket & 0x80000000) == 0)
  {
    if (close(streamSocket) && *__error())
    {
      __error();
    }

    self->_streamSocket = -1;
  }

  [(RPStreamSession *)self _invalidate];
  v4.receiver = self;
  v4.super_class = RPStreamSession;
  [(RPStreamSession *)&v4 dealloc];
}

- (id)descriptionWithLevel:(int)level
{
  streamID = self->_streamID;
  NSAppendPrintF();
  v4 = 0;
  v5 = v4;
  streamType = self->_streamType;
  if (streamType)
  {
    v20 = v4;
    if (streamType <= 3)
    {
      v7 = off_1E7C95228[streamType - 1];
    }

    NSAppendPrintF();
    v8 = v20;

    v5 = v8;
  }

  serviceType = self->_serviceType;
  if (serviceType)
  {
    v17 = serviceType;
    NSAppendPrintF();
    v10 = v5;

    v5 = v10;
  }

  if (self->_streamQoS)
  {
    NSAppendPrintF();
    v12 = v5;

    v5 = v12;
  }

  if (self->_statusFlags)
  {
    statusFlags = self->_statusFlags;
    NSAppendPrintF();
    v13 = v5;

    v5 = v13;
  }

  if (self->_trafficFlags)
  {
    trafficFlags = self->_trafficFlags;
    NSAppendPrintF();
    v14 = v5;

    v5 = v14;
  }

  return v5;
}

- (void)setTrafficFlags:(unsigned int)flags
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_trafficFlags != flags)
  {
    self->_trafficFlags = flags;
    if (self->_trafficRegistrationCalled)
    {
      if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
      {
        [RPStreamSession setTrafficFlags:];
      }

      dispatchQueue = self->_dispatchQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __35__RPStreamSession_setTrafficFlags___block_invoke;
      block[3] = &unk_1E7C92CE8;
      block[4] = self;
      dispatch_async(dispatchQueue, block);
    }
  }
}

- (void)setStreamQoS:(int)s
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  streamQoS = self->_streamQoS;
  if (streamQoS == s)
  {
    return;
  }

  if (gLogCategory_RPStreamSession <= 30)
  {
    if (gLogCategory_RPStreamSession != -1)
    {
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      streamQoS = self->_streamQoS;
LABEL_5:
      if (streamQoS > 9)
      {
        if (streamQoS <= 11)
        {
          if (streamQoS == 10)
          {
            v6 = "AirPlayAudio";
          }

          else
          {
            v6 = "AirPlayScreenAudio";
          }

LABEL_26:
          if (s > 9)
          {
            if (s <= 11)
            {
              if (s == 10)
              {
                v7 = "AirPlayAudio";
              }

              else
              {
                v7 = "AirPlayScreenAudio";
              }

              goto LABEL_45;
            }

            if (s == 12)
            {
              v7 = "AirPlayScreenVideo";
              goto LABEL_45;
            }

            if (s == 20)
            {
              v7 = "NTP";
              goto LABEL_45;
            }
          }

          else if (s > 1)
          {
            if (s == 2)
            {
              v7 = "Video";
              goto LABEL_45;
            }

            if (s == 3)
            {
              v7 = "Voice";
              goto LABEL_45;
            }
          }

          else
          {
            if (!s)
            {
              v7 = "Default";
              goto LABEL_45;
            }

            if (s == 1)
            {
              v7 = "Background";
LABEL_45:
              v12 = v6;
              v13 = v7;
              LogPrintF();
              goto LABEL_46;
            }
          }

          v7 = "?";
          goto LABEL_45;
        }

        if (streamQoS == 12)
        {
          v6 = "AirPlayScreenVideo";
          goto LABEL_26;
        }

        if (streamQoS == 20)
        {
          v6 = "NTP";
          goto LABEL_26;
        }
      }

      else if (streamQoS > 1)
      {
        if (streamQoS == 2)
        {
          v6 = "Video";
          goto LABEL_26;
        }

        if (streamQoS == 3)
        {
          v6 = "Voice";
          goto LABEL_26;
        }
      }

      else
      {
        if (!streamQoS)
        {
          v6 = "Default";
          goto LABEL_26;
        }

        if (streamQoS == 1)
        {
          v6 = "Background";
          goto LABEL_26;
        }
      }

      v6 = "?";
      goto LABEL_26;
    }
  }

LABEL_46:
  self->_streamQoS = s;
  v8 = [(RPConnection *)self->_rpCnx tcpConnection:v12];
  socketFD = [v8 socketFD];

  if (socketFD < 0)
  {
    streamSocket = self->_streamSocket;
    if ((streamSocket & 0x80000000) != 0)
    {
      return;
    }
  }

  else
  {
    tcpConnection = [(RPConnection *)self->_rpCnx tcpConnection];
    streamSocket = [tcpConnection socketFD];

    if ((streamSocket & 0x80000000) != 0)
    {
      return;
    }
  }

  [(RPStreamSession *)self setStreamQoSOnSocket:streamSocket];
}

- (void)acceptedByServer
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__RPStreamSession_acceptedByServer__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = [(RPMessageable *)self->_messenger dispatchQueue];
  dispatchQueue = dispatchQueue;
  if (!dispatchQueue)
  {
    dispatchQueue = self->_dispatchQueue;
  }

  objc_storeStrong(&self->_dispatchQueue, dispatchQueue);

  v7 = self->_dispatchQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__RPStreamSession_activateWithCompletion___block_invoke;
  v9[3] = &unk_1E7C92E20;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(v7, v9);
}

void __42__RPStreamSession_activateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 144) & 0x80000000) == 0 || *(v2 + 288) && *(v2 + 296) || *(v2 + 208))
  {
    v3 = 1;
  }

  else
  {
    if (!*(v2 + 200))
    {
      v11 = RPErrorF();
      if (gLogCategory_RPStreamSession > 90 || gLogCategory_RPStreamSession == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_29;
      }

      goto LABEL_45;
    }

    v3 = 0;
  }

  if (!*(v2 + 264))
  {
    v11 = RPErrorF();
    if (gLogCategory_RPStreamSession > 90 || gLogCategory_RPStreamSession == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_29;
    }

    goto LABEL_45;
  }

  [*(v2 + 200) setServiceType:*(v2 + 240)];
  v4 = *(a1 + 32);
  v5 = *(v4 + 148);
  switch(v5)
  {
    case 3:
      v6 = *(a1 + 40);
      if (v3)
      {
LABEL_23:
        v8 = *(v6 + 16);

        v8(v6, 0);
        return;
      }

      [v4 _clientUDPNWPathStartWithCompletion:v6];
      break;
    case 2:
      if (*(v4 + 136) == 1)
      {
        v12 = 0;
        [v4 _startServerConnectionAndReturnError:&v12];
        v7 = v12;
        (*(*(a1 + 40) + 16))();
      }

      else
      {
        v9 = *(a1 + 40);
        if (v3)
        {

          [v4 _clientRPConnectionStartWithCompletion:v9];
        }

        else
        {

          [v4 _clientRPConnectionPrepareWithCompletion:v9];
        }
      }

      break;
    case 1:
      v6 = *(a1 + 40);
      if (!v3)
      {

        [v4 _clientUDPSocketStartWithCompletion:v6];
        return;
      }

      goto LABEL_23;
    default:
      v10 = *(v4 + 148);
      v11 = RPErrorF();
      if (gLogCategory_RPStreamSession > 90 || gLogCategory_RPStreamSession == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_29;
      }

LABEL_45:
      __42__RPStreamSession_activateWithCompletion___block_invoke_cold_1();
LABEL_29:
      (*(*(a1 + 40) + 16))(*(a1 + 40));

      return;
  }
}

- (void)activateForServerRequest:(id)request options:(id)options responseHandler:(id)handler
{
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  dispatchQueue = [(RPMessageable *)self->_messenger dispatchQueue];
  dispatchQueue = dispatchQueue;
  if (!dispatchQueue)
  {
    dispatchQueue = self->_dispatchQueue;
  }

  objc_storeStrong(&self->_dispatchQueue, dispatchQueue);

  v13 = self->_dispatchQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __68__RPStreamSession_activateForServerRequest_options_responseHandler___block_invoke;
  v17[3] = &unk_1E7C92F38;
  v17[4] = self;
  v18 = requestCopy;
  v19 = optionsCopy;
  v20 = handlerCopy;
  v14 = handlerCopy;
  v15 = optionsCopy;
  v16 = requestCopy;
  dispatch_async(v13, v17);
}

void __68__RPStreamSession_activateForServerRequest_options_responseHandler___block_invoke(void *a1)
{
  *(a1[4] + 136) = 1;
  [*(a1[4] + 200) setServiceType:*(a1[4] + 240)];
  v2 = a1[4];
  v3 = v2[37];
  switch(v3)
  {
    case 3:
      v10 = a1[5];
      v11 = a1[6];
      v12 = a1[7];

      [v2 _serverUDPNWPathStartRequest:v10 options:v11 responseHandler:v12];
      break;
    case 2:
      v7 = a1[5];
      v8 = a1[6];
      v9 = a1[7];

      [v2 _serverRPConnectionStartRequest:v7 options:v8 responseHandler:v9];
      break;
    case 1:
      v4 = a1[5];
      v5 = a1[6];
      v6 = a1[7];

      [v2 _serverUDPSocketStartRequest:v4 options:v5 responseHandler:v6];
      break;
    default:
      v13 = v2[37];
      v14 = RPErrorF();
      if (gLogCategory_RPStreamSession <= 90 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
      {
        __68__RPStreamSession_activateForServerRequest_options_responseHandler___block_invoke_cold_1();
      }

      (*(a1[7] + 16))(a1[7]);

      break;
  }
}

- (void)prepareWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__RPStreamSession_prepareWithCompletion___block_invoke;
  v7[3] = &unk_1E7C92E20;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __41__RPStreamSession_prepareWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 200))
  {
    v9 = RPErrorF();
    if (gLogCategory_RPStreamSession > 90 || gLogCategory_RPStreamSession == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (!*(v2 + 264))
  {
    v9 = RPErrorF();
    if (gLogCategory_RPStreamSession > 90 || gLogCategory_RPStreamSession == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v3 = *(v2 + 148);
  switch(v3)
  {
    case 3:
      v7 = *(a1 + 40);

      [v2 _clientUDPNWPathStartWithCompletion:v7];
      break;
    case 2:
      *(v2 + 96) = 1;
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);

      [v5 _clientRPConnectionPrepareWithCompletion:v6];
      break;
    case 1:
      v4 = *(a1 + 40);

      [v2 _clientUDPSocketStartWithCompletion:v4];
      return;
    default:
      v8 = *(v2 + 148);
      v9 = RPErrorF();
      if (gLogCategory_RPStreamSession > 90 || gLogCategory_RPStreamSession == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_27;
      }

LABEL_26:
      __41__RPStreamSession_prepareWithCompletion___block_invoke_cold_1();
LABEL_27:
      (*(*(a1 + 40) + 16))(*(a1 + 40));

      return;
  }
}

- (void)startServerConnectionWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__RPStreamSession_startServerConnectionWithCompletion___block_invoke;
  v7[3] = &unk_1E7C92E20;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __55__RPStreamSession_startServerConnectionWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = 0;
  [v2 _startServerConnectionAndReturnError:&v4];
  v3 = v4;
  (*(*(a1 + 40) + 16))();
}

- (BOOL)_startServerConnectionAndReturnError:(id *)error
{
  if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
  {
    [RPStreamSession _startServerConnectionAndReturnError:?];
  }

  streamSocket = self->_streamSocket;
  if ((streamSocket & 0x80000000) != 0)
  {
    v13 = RPErrorF();
    if (gLogCategory_RPStreamSession <= 90 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
    {
      [RPStreamSession _startServerConnectionAndReturnError:];
      if (!error)
      {
        goto LABEL_18;
      }
    }

    else if (!error)
    {
LABEL_18:

      return 0;
    }

    v14 = v13;
    *error = v13;
    goto LABEL_18;
  }

  *&v28.sa_len = 0;
  *&v28.sa_data[6] = 0;
  v30 = 0;
  v29 = 0;
  v27 = 28;
  getsockname(streamSocket, &v28, &v27);
  v6 = objc_alloc_init(MEMORY[0x1E6999548]);
  [v6 setDispatchQueue:self->_dispatchQueue];
  [v6 setFlags:137];
  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Stream-%u", SockAddrGetPort()];
  [v6 setLabel:v7];

  [v6 setSocketFD:streamSocket];
  self->_streamSocket = -1;
  if (self->_streamQoS >= 1)
  {
    [(RPStreamSession *)self setStreamQoSOnSocket:streamSocket];
  }

  v26 = 0;
  [v6 activateDirectAndReturnError:&v26];
  v8 = v26;
  v9 = v8 == 0;
  if (v8)
  {
    v10 = v8;
    v11 = RPErrorF();

    if (gLogCategory_RPStreamSession <= 90 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
    {
      [RPStreamSession _startServerConnectionAndReturnError:];
    }

    [v6 invalidate];
    if (error)
    {
      v12 = v11;
      *error = v11;
    }
  }

  else
  {
    v15 = objc_alloc_init(RPConnection);
    [(RPConnection *)v15 setDispatchQueue:self->_dispatchQueue];
    [(RPConnection *)v15 setFlags:[(RPConnection *)v15 flags]| 0x80000];
    label = [v6 label];
    [(RPConnection *)v15 setLabel:label];

    [(RPConnection *)v15 setPskData:self->_pskData];
    pskData = self->_pskData;
    self->_pskData = 0;

    [(RPConnection *)v15 setTcpConnection:v6];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __56__RPStreamSession__startServerConnectionAndReturnError___block_invoke;
    v25[3] = &unk_1E7C92CE8;
    v25[4] = self;
    [(RPConnection *)v15 setInvalidationHandler:v25];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __56__RPStreamSession__startServerConnectionAndReturnError___block_invoke_2;
    v24[3] = &unk_1E7C94408;
    v24[4] = self;
    [(RPConnection *)v15 setReceivedEventHandler:v24];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __56__RPStreamSession__startServerConnectionAndReturnError___block_invoke_3;
    v23[3] = &unk_1E7C94430;
    v23[4] = self;
    [(RPConnection *)v15 setReceivedRequestHandler:v23];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __56__RPStreamSession__startServerConnectionAndReturnError___block_invoke_4;
    v22[3] = &unk_1E7C942A8;
    v22[4] = self;
    [(RPConnection *)v15 setStateChangedHandler:v22];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __56__RPStreamSession__startServerConnectionAndReturnError___block_invoke_5;
    v21[3] = &unk_1E7C92D58;
    v21[4] = self;
    [(RPConnection *)v15 setReadErrorHandler:v21];
    rpCnx = self->_rpCnx;
    self->_rpCnx = v15;
    v19 = v15;

    [(RPConnection *)v19 activate];
    v11 = 0;
  }

  return v9;
}

uint64_t __56__RPStreamSession__startServerConnectionAndReturnError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  *(v2 + 104) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

void __56__RPStreamSession__startServerConnectionAndReturnError___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  v9 = _Block_copy(*(*(a1 + 32) + 216));
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9, v11, v7, v8);
  }
}

void __56__RPStreamSession__startServerConnectionAndReturnError___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v14 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = _Block_copy(*(*(a1 + 32) + 224));
  v13 = v12;
  if (v12)
  {
    (*(v12 + 2))(v12, v14, v9, v10, v11);
  }
}

void __56__RPStreamSession__startServerConnectionAndReturnError___block_invoke_4(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    v3 = [*(a1 + 32) connectionReadyHandler];
    if (v3)
    {
      v4 = v3;
      v3[2]();
      v3 = v4;
    }
  }
}

void __56__RPStreamSession__startServerConnectionAndReturnError___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 code] == -6723 || objc_msgSend(v3, "code") == -6753)
  {
    v4 = _Block_copy(*(*(a1 + 32) + 168));
    if (v4)
    {
      v5 = *(*(a1 + 32) + 176);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __56__RPStreamSession__startServerConnectionAndReturnError___block_invoke_6;
      block[3] = &unk_1E7C950D8;
      block[4] = v4;
      dispatch_async(v5, block);
    }
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__RPStreamSession_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (!self->_invalidateCalled)
  {
    v15 = v3;
    v16 = v2;
    self->_invalidateCalled = 1;
    if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
    {
      [(RPStreamSession *)self _invalidate];
    }

    nwPathEvaluator = self->_nwPathEvaluator;
    if (nwPathEvaluator)
    {
      v8 = nwPathEvaluator;
      nw_path_evaluator_cancel();
      v9 = self->_nwPathEvaluator;
      self->_nwPathEvaluator = 0;
    }

    nwListener = self->_nwListener;
    if (nwListener)
    {
      v11 = nwListener;
      nw_listener_cancel(v11);
      v12 = self->_nwListener;
      self->_nwListener = 0;
    }

    [(RPConnection *)self->_rpCnx invalidate:v15];
    streamSocket = self->_streamSocket;
    if ((streamSocket & 0x80000000) == 0)
    {
      if (close(streamSocket) && *__error())
      {
        __error();
      }

      self->_streamSocket = -1;
    }

    [(CUTCPServer *)self->_tcpServer invalidate];
    [(CUWiFiManager *)self->_wifiManager invalidate];
    wifiManager = self->_wifiManager;
    self->_wifiManager = 0;

    [(RPStreamSession *)self _invalidated];
  }
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled && !self->_invalidateDone && !self->_rpCnx && !self->_tcpServer)
  {
    v3 = _Block_copy(self->_invalidationHandler);
    v4 = v3;
    if (v3)
    {
      (*(v3 + 2))(v3);
    }

    disconnectHandler = self->_disconnectHandler;
    self->_disconnectHandler = 0;

    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    messenger = self->_messenger;
    self->_messenger = 0;

    receivedEventHandler = self->_receivedEventHandler;
    self->_receivedEventHandler = 0;

    receivedRequestHandler = self->_receivedRequestHandler;
    self->_receivedRequestHandler = 0;

    statusChangedHandler = self->_statusChangedHandler;
    self->_statusChangedHandler = 0;

    streamAcceptHandler = self->_streamAcceptHandler;
    self->_streamAcceptHandler = 0;

    self->_invalidateDone = 1;
    if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
    {
      [(RPStreamSession *)self _invalidated];
    }
  }
}

- (void)_clientUDPNWPathStartWithCompletion:(id)completion
{
  completionCopy = completion;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__7;
  v42 = __Block_byref_object_dispose__7;
  v43 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__RPStreamSession__clientUDPNWPathStartWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7C94FA8;
  v37 = &v38;
  v5 = completionCopy;
  v36 = v5;
  v6 = _Block_copy(aBlock);
  if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
  {
    streamID = self->_streamID;
    streamType = self->_streamType;
    if (streamType <= 3)
    {
      v9 = off_1E7C95240[streamType];
    }

    trafficFlags = self->_trafficFlags;
    streamFlags = self->_streamFlags;
    LogPrintF();
  }

  messenger = self->_messenger;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = self->_messenger;
    v12 = [(RPMessageable *)v11 linkType]== 4;
  }

  else
  {
    v12 = 0;
  }

  secure_udp = nw_parameters_create_secure_udp(*MEMORY[0x1E6977EC0], *MEMORY[0x1E6977EB8]);
  if (!secure_udp)
  {
    v22 = RPErrorF();
    v14 = v39[5];
    v39[5] = v22;
    goto LABEL_30;
  }

  nw_parameters_set_allow_duplicate_state_updates();
  v34 = 0;
  if (!v12 || (self->_streamFlags & 2) == 0)
  {
    goto LABEL_14;
  }

  v15 = [(RPStreamSession *)self _lowLatencySelfAddressString:&v34];
  if (!v15)
  {
    if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

LABEL_14:
    v14 = 0;
    v15 = 0;
LABEL_15:
    v16 = self->_nwListener;
    v17 = v16;
    if (v16)
    {
      nw_listener_cancel(v16);
    }

    v18 = nw_listener_create(secure_udp);
    objc_storeStrong(&self->_nwListener, v18);
    if (v18)
    {
      nw_listener_set_queue(v18, self->_dispatchQueue);
      v32[0] = 0;
      v32[1] = v32;
      v32[2] = 0x3032000000;
      v32[3] = __Block_byref_object_copy__84;
      v32[4] = __Block_byref_object_dispose__85;
      v33 = _Block_copy(v5);
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __55__RPStreamSession__clientUDPNWPathStartWithCompletion___block_invoke_86;
      v28[3] = &unk_1E7C95100;
      v28[4] = v18;
      v28[5] = self;
      v31 = v32;
      v14 = v14;
      v29 = v14;
      v30 = v34;
      MEMORY[0x1B8C9E950](v18, v28);
      nw_listener_set_new_connection_handler(v18, &__block_literal_global_18);
      if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
      {
        v19 = self->_streamID;
        v20 = self->_streamType;
        if (v20 <= 3)
        {
          v21 = off_1E7C95240[v20];
        }

        LogPrintF();
      }

      nw_listener_start(v18);

      _Block_object_dispose(v32, 8);
    }

    else
    {
      v23 = RPErrorF();
      v24 = v39[5];
      v39[5] = v23;
    }

    goto LABEL_29;
  }

  v14 = nw_interface_create_with_name();
  if (v14)
  {
    nw_parameters_require_interface(secure_udp, v14);
    goto LABEL_15;
  }

  v25 = RPErrorF();
  v14 = 0;
  v18 = v39[5];
  v39[5] = v25;
LABEL_29:

LABEL_30:
  v6[2](v6);

  _Block_object_dispose(&v38, 8);
}

uint64_t __55__RPStreamSession__clientUDPNWPathStartWithCompletion___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_RPStreamSession <= 90)
  {
    if (gLogCategory_RPStreamSession == -1)
    {
      v3 = _LogCategory_Initialize();
      v1 = *(v2 + 40);
      if (!v3)
      {
        goto LABEL_7;
      }

      v6 = *(*(v1 + 8) + 40);
    }

    LogPrintF();
    v1 = *(v2 + 40);
  }

LABEL_7:
  v4 = *(*(v1 + 8) + 40);
  v5 = *(*(v2 + 32) + 16);

  return v5();
}

void __55__RPStreamSession__clientUDPNWPathStartWithCompletion___block_invoke_86(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (gLogCategory_RPStreamSession <= 30)
  {
    v13 = v5;
    if (gLogCategory_RPStreamSession != -1 || (v7 = _LogCategory_Initialize(), v6 = v13, v7))
    {
      __55__RPStreamSession__clientUDPNWPathStartWithCompletion___block_invoke_86_cold_1();
      v6 = v13;
    }
  }

  if (*(a1 + 32) == *(*(a1 + 40) + 16))
  {
    if (a2 == 3 || v6)
    {
      v14 = v6;
      if (v6)
      {
        v8 = nw_error_copy_cf_error(v6);
      }

      else
      {
        v8 = 0;
      }

      if (gLogCategory_RPStreamSession <= 90 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
      {
        __55__RPStreamSession__clientUDPNWPathStartWithCompletion___block_invoke_86_cold_3();
      }

      v9 = *(*(a1 + 64) + 8);
      v10 = *(v9 + 40);
      if (!v10)
      {
        v12 = 0;
        goto LABEL_21;
      }

      v11 = RPNestedErrorF();
      (*(v10 + 16))(v10, v11);

LABEL_19:
      v9 = *(*(a1 + 64) + 8);
      v12 = *(v9 + 40);
LABEL_21:
      *(v9 + 40) = 0;

LABEL_22:
      v6 = v14;
      goto LABEL_23;
    }

    if ((a2 - 1) <= 1 && *(*(*(a1 + 64) + 8) + 40))
    {
      v14 = 0;
      v8 = nw_listener_copy_local_endpoint();
      if (!v8)
      {
        __55__RPStreamSession__clientUDPNWPathStartWithCompletion___block_invoke_86_cold_2(0, &v15);
        v8 = v15;
        goto LABEL_22;
      }

      [*(a1 + 40) _clientUDPNWPathNextWithEndpoint:v8 nwInterface:*(a1 + 48) selfMACData:*(a1 + 56) usb:0 completion:*(*(*(a1 + 64) + 8) + 40)];
      goto LABEL_19;
    }
  }

LABEL_23:
}

void __55__RPStreamSession__clientUDPNWPathStartWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = v2;
  if (gLogCategory_RPStreamSession <= 30)
  {
    if (gLogCategory_RPStreamSession != -1 || (v3 = _LogCategory_Initialize(), v2 = v4, v3))
    {
      __55__RPStreamSession__clientUDPNWPathStartWithCompletion___block_invoke_2_cold_1();
      v2 = v4;
    }
  }

  nw_connection_cancel(v2);
}

- (void)_clientUDPNWPathNextWithEndpoint:(id)endpoint nwInterface:(id)interface selfMACData:(id)data usb:(BOOL)usb completion:(id)completion
{
  v49 = *MEMORY[0x1E69E9840];
  endpointCopy = endpoint;
  interfaceCopy = interface;
  dataCopy = data;
  completionCopy = completion;
  address = nw_endpoint_get_address(endpointCopy);
  if (address)
  {
    sa_family = address->sa_family;
    if (sa_family == 30)
    {
      if (!*&address->sa_data[6] && !*&address->sa_data[10] && !*&address[1].sa_len && !*&address[1].sa_data[2])
      {
        goto LABEL_5;
      }
    }

    else if (sa_family == 2 && !*&address->sa_data[2])
    {
LABEL_5:
      v17 = 0;
      goto LABEL_15;
    }

    v48[0] = 0;
    SockAddrToString();
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v48];
LABEL_15:
    Port = SockAddrGetPort();
    if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
    {
      streamType = self->_streamType;
      if (streamType > 3)
      {
        v22 = "?";
      }

      else
      {
        v22 = off_1E7C95240[streamType];
      }

      v39 = endpointCopy;
      v40 = Port;
      v37 = v17;
      v38 = dataCopy;
      streamFlags = self->_streamFlags;
      v36 = &unk_1B6F2F36D;
      streamID = self->_streamID;
      v34 = v22;
      LogPrintF();
    }

    v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v24 = v23;
    if (v17)
    {
      [v23 setObject:v17 forKeyedSubscript:@"_streamAddr"];
    }

    if (dataCopy)
    {
      [v24 setObject:dataCopy forKeyedSubscript:@"_streamMACAddr"];
    }

    if (self->_streamFlags)
    {
      v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
      [v24 setObject:v25 forKeyedSubscript:@"_streamFlags"];
    }

    [v24 setObject:self->_streamID forKeyedSubscript:{@"_streamID", streamID, v34, streamFlags, v36, v37, v38, v39, v40}];
    v26 = [MEMORY[0x1E696AD98] numberWithInt:Port];
    [v24 setObject:v26 forKeyedSubscript:@"_streamPort"];

    v27 = [MEMORY[0x1E696AD98] numberWithInt:self->_streamType];
    [v24 setObject:v27 forKeyedSubscript:@"_streamType"];

    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_trafficFlags];
    [v24 setObject:v28 forKeyedSubscript:@"_tf"];

    serviceType = self->_serviceType;
    if (serviceType)
    {
      [v24 setObject:serviceType forKeyedSubscript:@"_streamSrv"];
    }

    messenger = self->_messenger;
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __91__RPStreamSession__clientUDPNWPathNextWithEndpoint_nwInterface_selfMACData_usb_completion___block_invoke;
    v42[3] = &unk_1E7C95148;
    v46 = completionCopy;
    v42[4] = self;
    v43 = endpointCopy;
    v19 = interfaceCopy;
    v44 = interfaceCopy;
    v45 = v17;
    usbCopy = usb;
    v31 = v17;
    [(RPMessageable *)messenger sendRequestID:@"_streamStart" request:v24 destinationID:@"rapport:rdid:DirectPeer" options:0 responseHandler:v42];

    goto LABEL_32;
  }

  v18 = RPErrorF();
  if (gLogCategory_RPStreamSession <= 90 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
  {
    [RPStreamSession _clientUDPNWPathNextWithEndpoint:nwInterface:selfMACData:usb:completion:];
  }

  (*(completionCopy + 2))(completionCopy, v18);

  v19 = interfaceCopy;
LABEL_32:

  v32 = *MEMORY[0x1E69E9840];
}

void __91__RPStreamSession__clientUDPNWPathNextWithEndpoint_nwInterface_selfMACData_usb_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v7;
  v13 = v10;
  if (!v10 || v9)
  {
    if (gLogCategory_RPStreamSession <= 90 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
    {
      __91__RPStreamSession__clientUDPNWPathNextWithEndpoint_nwInterface_selfMACData_usb_completion___block_invoke_cold_1();
    }

    v11 = *(a1 + 64);
    if (v9)
    {
      (*(v11 + 16))(v11, v9);
    }

    else
    {
      v12 = RPErrorF();
      (*(v11 + 16))(v11, v12);
    }
  }

  else
  {
    [*(a1 + 32) _clientUDPNWPathStartResponse:v10 options:v8 localEndpoint:*(a1 + 40) nwInterface:*(a1 + 48) selfIPString:*(a1 + 56) usb:*(a1 + 72) completion:*(a1 + 64)];
  }
}

- (void)_clientUDPNWPathStartResponse:(id)response options:(id)options localEndpoint:(id)endpoint nwInterface:(id)interface selfIPString:(id)string usb:(BOOL)usb completion:(id)completion
{
  usbCopy = usb;
  v73[2] = *MEMORY[0x1E69E9840];
  responseCopy = response;
  optionsCopy = options;
  local_endpoint = endpoint;
  interface = interface;
  stringCopy = string;
  completionCopy = completion;
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__7;
  v71 = __Block_byref_object_dispose__7;
  v72 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __111__RPStreamSession__clientUDPNWPathStartResponse_options_localEndpoint_nwInterface_selfIPString_usb_completion___block_invoke;
  aBlock[3] = &unk_1E7C94FA8;
  v66 = &v67;
  v17 = completionCopy;
  v65 = v17;
  v18 = _Block_copy(aBlock);
  CFStringGetTypeID();
  if (![CFDictionaryGetTypedValue() UTF8String])
  {
    v47 = RPErrorF();
    v20 = v68[5];
    v68[5] = v47;
    goto LABEL_43;
  }

  if (stristr() || stristr())
  {
    StringToSockAddr();
    CFStringGetTypeID();
    v19 = CFDictionaryGetTypedValue();
    v20 = v19;
    if (v19)
    {
      if (stringCopy)
      {
        v21 = @"%llw0";
      }

      else
      {
        v21 = @"%awdl0";
      }

      v22 = [v19 stringByAppendingString:v21];
      v23 = v22;
      uTF8String = [v22 UTF8String];

      if (!uTF8String)
      {
        v50 = RPErrorF();
        v51 = v68[5];
        v68[5] = v50;

        goto LABEL_43;
      }
    }

    else if (stringCopy && gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  CFDataGetTypeID();
  v20 = CFDictionaryGetTypedValue();
  if ([v20 length] >= 0x20)
  {
    objc_storeStrong(&self->_streamKey, v20);
  }

  v25 = CFDictionaryGetCFDataOfLength();
  if (!CFDictionaryGetInt64Ranged())
  {
    v48 = RPErrorF();
    v49 = v68[5];
    v68[5] = v48;

    goto LABEL_42;
  }

  *&address.sa_len = 0;
  *&address.sa_data[6] = 0;
  v63 = 0;
  v62 = 0;
  if (!StringToSockAddr())
  {
    SockAddrSetPort();
    if (!SockAddrConvertToIPv6())
    {
      if (v25)
      {
        WORD2(v73[0]) = 0;
        LODWORD(v73[0]) = 0;
        v28 = v25;
        bytes = [v25 bytes];
        v30 = *bytes;
        WORD2(v73[0]) = *(bytes + 4);
        LODWORD(v73[0]) = v30;
        address_with_ethernet = nw_endpoint_create_address_with_ethernet();
      }

      else
      {
        address_with_ethernet = nw_endpoint_create_address(&address);
      }

      v27 = address_with_ethernet;
      if (address_with_ethernet)
      {
        [(RPStreamSession *)self _updateTrafficRegistrationForIP:&address];
        if (usbCopy)
        {
          v32 = *MEMORY[0x1E6977EB8];
          legacy_tcp_socket = nw_parameters_create_legacy_tcp_socket();
          secure_udp = legacy_tcp_socket;
          if (legacy_tcp_socket)
          {
            v35 = nw_parameters_copy_default_protocol_stack(legacy_tcp_socket);
            v36 = v35;
            if (!v35)
            {
LABEL_50:
              v52 = RPErrorF();
              v53 = v68[5];
              v68[5] = v52;

LABEL_40:
              goto LABEL_41;
            }

            v37 = MEMORY[0x1B8C9EA50](v35);
            MEMORY[0x1B8C9EA60](v37, 1);
            nw_protocol_stack_set_transport_protocol(v36, v37);

LABEL_29:
            delegatedProcessUPID = self->_delegatedProcessUPID;
            nw_parameters_set_delegated_unique_pid();
            nw_parameters_set_reuse_local_address(secure_udp, 1);
            if (interface)
            {
              nw_parameters_require_interface(secure_udp, interface);
            }

            nw_parameters_set_local_endpoint(secure_udp, local_endpoint);
            evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
            nwPathEvaluator = self->_nwPathEvaluator;
            self->_nwPathEvaluator = evaluator_for_endpoint;

            if (self->_nwPathEvaluator)
            {
              v73[0] = 0;
              v73[1] = 0;
              nw_path_evaluator_get_client_id();
              v41 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v73];
              nwClientID = self->_nwClientID;
              self->_nwClientID = v41;

              if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
              {
                streamID = self->_streamID;
                streamType = self->_streamType;
                if (streamType <= 3)
                {
                  v45 = off_1E7C95240[streamType];
                }

                v56 = self->_nwClientID;
                streamFlags = self->_streamFlags;
                LogPrintF();
              }

              (*(v17 + 2))(v17, 0);
              goto LABEL_40;
            }

            goto LABEL_50;
          }
        }

        else
        {
          secure_udp = nw_parameters_create_secure_udp(*MEMORY[0x1E6977EC0], &__block_literal_global_152);
          if (secure_udp)
          {
            goto LABEL_29;
          }
        }
      }

      v54 = RPErrorF();
      secure_udp = v68[5];
      v68[5] = v54;
      goto LABEL_40;
    }
  }

  v26 = RPErrorF();
  v27 = v68[5];
  v68[5] = v26;
LABEL_41:

LABEL_42:
LABEL_43:

  v18[2](v18);
  _Block_object_dispose(&v67, 8);

  v46 = *MEMORY[0x1E69E9840];
}

uint64_t __111__RPStreamSession__clientUDPNWPathStartResponse_options_localEndpoint_nwInterface_selfIPString_usb_completion___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_RPStreamSession <= 90)
  {
    if (gLogCategory_RPStreamSession == -1)
    {
      v3 = _LogCategory_Initialize();
      v1 = *(v2 + 40);
      if (!v3)
      {
        goto LABEL_7;
      }

      v6 = *(*(v1 + 8) + 40);
    }

    LogPrintF();
    v1 = *(v2 + 40);
  }

LABEL_7:
  v4 = *(*(v1 + 8) + 40);
  v5 = *(*(v2 + 32) + 16);

  return v5();
}

- (void)_serverUDPNWPathStartRequest:(id)request options:(id)options responseHandler:(id)handler
{
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  v71 = 0;
  v72 = &v71;
  v73 = 0x3032000000;
  v74 = __Block_byref_object_copy__7;
  v75 = __Block_byref_object_dispose__7;
  v76 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__RPStreamSession__serverUDPNWPathStartRequest_options_responseHandler___block_invoke;
  aBlock[3] = &unk_1E7C94FA8;
  v70 = &v71;
  v51 = handlerCopy;
  v69 = v51;
  v11 = _Block_copy(aBlock);
  if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
  {
    streamType = self->_streamType;
    if (streamType > 3)
    {
      v13 = "?";
    }

    else
    {
      v13 = off_1E7C95240[streamType];
    }

    trafficFlags = self->_trafficFlags;
    v48 = &unk_1B6F2F2E7;
    streamFlags = self->_streamFlags;
    v46 = &unk_1B6F2F36D;
    streamID = self->_streamID;
    v43 = v13;
    LogPrintF();
  }

  v67 = 0;
  CFStringGetTypeID();
  if (![CFDictionaryGetTypedValue() UTF8String])
  {
    v32 = RPErrorF();
    v14 = v72[5];
    v72[5] = v32;
    goto LABEL_56;
  }

  if (!stristr() && !stristr())
  {
    v14 = 0;
    goto LABEL_21;
  }

  StringToSockAddr();
  if ((self->_streamFlags & 2) != 0)
  {
    v14 = [(RPStreamSession *)self _lowLatencySelfAddressString:&v67];
    if (v14)
    {
      goto LABEL_15;
    }

    if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  v14 = 0;
LABEL_15:
  CFStringGetTypeID();
  v15 = CFDictionaryGetTypedValue();
  v16 = v15;
  if (v15)
  {
    if (v14)
    {
      v17 = @"%llw0";
    }

    else
    {
      v17 = @"%awdl0";
    }

    v18 = [v15 stringByAppendingString:{v17, streamID, v43, streamFlags, v46, trafficFlags, v48}];
    uTF8String = [v18 UTF8String];

    if (!uTF8String)
    {
      v39 = RPErrorF();
      v40 = v72[5];
      v72[5] = v39;

      goto LABEL_56;
    }
  }

  else if (v14 && gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
  {
    streamID = v14;
    LogPrintF();
  }

LABEL_21:
  memset(v66, 0, 28);
  v65 = 0;
  v64 = StringToSockAddr();
  if (v64)
  {
    v33 = RPErrorF();
    v50 = v72[5];
    v72[5] = v33;

    goto LABEL_56;
  }

  v49 = CFDictionaryGetCFDataOfLength();
  if (!CFDictionaryGetInt64Ranged())
  {
    goto LABEL_64;
  }

  SockAddrSetPort();
  Int64Ranged = CFDictionaryGetInt64Ranged();
  self->_trafficFlags = Int64Ranged;
  if (v14)
  {
    streamID = [(NSString *)v14 stringByAppendingString:@"%llw0", streamID];
    uTF8String2 = [streamID UTF8String];

    if (!uTF8String2)
    {
LABEL_64:
      v34 = RPErrorF();
      v35 = v72[5];
      v72[5] = v34;

      goto LABEL_55;
    }
  }

  else
  {
    CFStringGetTypeID();
    if (![CFDictionaryGetTypedValue() UTF8String])
    {
      goto LABEL_64;
    }
  }

  v60 = 0;
  v61 = 0;
  v63 = 0;
  v62 = 0;
  LODWORD(v64) = StringToSockAddr();
  if (v64)
  {
    v36 = RPErrorF();
    secure_udp = v72[5];
    v72[5] = v36;
    goto LABEL_54;
  }

  secure_udp = nw_parameters_create_secure_udp(*MEMORY[0x1E6977EC0], *MEMORY[0x1E6977EB8]);
  if (secure_udp)
  {
    nw_parameters_set_allow_duplicate_state_updates();
    v24 = 0;
    if (!v14 || (self->_streamFlags & 2) == 0)
    {
      goto LABEL_31;
    }

    v24 = nw_interface_create_with_name();
    if (v24)
    {
      nw_parameters_require_interface(secure_udp, v24);
LABEL_31:
      v25 = self->_nwListener;
      v26 = v25;
      if (v25)
      {
        nw_listener_cancel(v25);
      }

      v27 = nw_listener_create(secure_udp);
      objc_storeStrong(&self->_nwListener, v27);
      if (v27)
      {
        nw_listener_set_queue(v27, self->_dispatchQueue);
        v58[0] = 0;
        v58[1] = v58;
        v58[2] = 0x3032000000;
        v58[3] = __Block_byref_object_copy__84;
        v58[4] = __Block_byref_object_dispose__85;
        v59 = _Block_copy(v51);
        v52[0] = MEMORY[0x1E69E9820];
        v52[1] = 3221225472;
        v52[2] = __72__RPStreamSession__serverUDPNWPathStartRequest_options_responseHandler___block_invoke_2;
        v52[3] = &unk_1E7C95190;
        v52[4] = v27;
        v52[5] = self;
        v56 = v58;
        v53 = v24;
        v28 = v67;
        v57[0] = v66[0];
        *(v57 + 12) = *(v66 + 12);
        v54 = v28;
        v55 = v49;
        MEMORY[0x1B8C9E950](v27, v52);
        nw_listener_set_new_connection_handler(v27, &__block_literal_global_167);
        if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
        {
          v29 = self->_streamID;
          v30 = self->_streamType;
          if (v30 <= 3)
          {
            v31 = off_1E7C95240[v30];
          }

          v45 = self->_streamFlags;
          LogPrintF();
        }

        nw_listener_start(v27);

        _Block_object_dispose(v58, 8);
      }

      else
      {
        v37 = RPErrorF();
        v38 = v72[5];
        v72[5] = v37;
      }

      goto LABEL_53;
    }
  }

  v41 = RPErrorF();
  v24 = v72[5];
  v72[5] = v41;
LABEL_53:

LABEL_54:
LABEL_55:

LABEL_56:
  v11[2](v11);

  _Block_object_dispose(&v71, 8);
}

uint64_t __72__RPStreamSession__serverUDPNWPathStartRequest_options_responseHandler___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_RPStreamSession <= 90)
  {
    if (gLogCategory_RPStreamSession == -1)
    {
      v3 = _LogCategory_Initialize();
      v1 = *(v2 + 40);
      if (!v3)
      {
        goto LABEL_7;
      }

      v6 = *(*(v1 + 8) + 40);
    }

    LogPrintF();
    v1 = *(v2 + 40);
  }

LABEL_7:
  v4 = *(*(v1 + 8) + 40);
  v5 = *(*(v2 + 32) + 16);

  return v5();
}

void __72__RPStreamSession__serverUDPNWPathStartRequest_options_responseHandler___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
  {
    __72__RPStreamSession__serverUDPNWPathStartRequest_options_responseHandler___block_invoke_2_cold_1();
  }

  if (*(a1 + 32) == *(*(a1 + 40) + 16))
  {
    if (a2 == 3 || v5)
    {
      if (v5)
      {
        v6 = nw_error_copy_cf_error(v5);
      }

      else
      {
        v6 = 0;
      }

      if (gLogCategory_RPStreamSession <= 90 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
      {
        __72__RPStreamSession__serverUDPNWPathStartRequest_options_responseHandler___block_invoke_2_cold_3();
      }

      v12 = *(*(a1 + 72) + 8);
      v13 = *(v12 + 40);
      if (!v13)
      {
        v15 = 0;
        goto LABEL_21;
      }

      v14 = RPNestedErrorF();
      (*(v13 + 16))(v13, 0, 0, v14);

LABEL_19:
      v12 = *(*(a1 + 72) + 8);
      v15 = *(v12 + 40);
LABEL_21:
      *(v12 + 40) = 0;

LABEL_22:
      goto LABEL_23;
    }

    if ((a2 - 1) <= 1 && *(*(*(a1 + 72) + 8) + 40))
    {
      v6 = nw_listener_copy_local_endpoint();
      if (!v6)
      {
        __72__RPStreamSession__serverUDPNWPathStartRequest_options_responseHandler___block_invoke_2_cold_2();
        goto LABEL_22;
      }

      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      v10 = *(a1 + 64);
      v11 = *(*(*(a1 + 72) + 8) + 40);
      v16[0] = *(a1 + 80);
      *(v16 + 12) = *(a1 + 92);
      [v7 _serverUDPNWPathNextWithEndpoint:v6 nwInterface:v8 selfMACData:v9 peerIP:v16 peerMACData:v10 usb:0 responseHandler:v11];
      goto LABEL_19;
    }
  }

LABEL_23:
}

void __72__RPStreamSession__serverUDPNWPathStartRequest_options_responseHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = v2;
  if (gLogCategory_RPStreamSession <= 30)
  {
    if (gLogCategory_RPStreamSession != -1 || (v3 = _LogCategory_Initialize(), v2 = v4, v3))
    {
      __72__RPStreamSession__serverUDPNWPathStartRequest_options_responseHandler___block_invoke_3_cold_1();
      v2 = v4;
    }
  }

  nw_connection_cancel(v2);
}

- (void)_serverUDPNWPathNextWithEndpoint:(id)endpoint nwInterface:(id)interface selfMACData:(id)data peerIP:(id *)p peerMACData:(id)cData usb:(BOOL)usb responseHandler:(id)handler
{
  usbCopy = usb;
  v73[16] = *MEMORY[0x1E69E9840];
  endpointCopy = endpoint;
  interface = interface;
  dataCopy = data;
  cDataCopy = cData;
  handlerCopy = handler;
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__7;
  v71 = __Block_byref_object_dispose__7;
  v72 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __115__RPStreamSession__serverUDPNWPathNextWithEndpoint_nwInterface_selfMACData_peerIP_peerMACData_usb_responseHandler___block_invoke;
  aBlock[3] = &unk_1E7C94FA8;
  v66 = &v67;
  v17 = handlerCopy;
  v65 = v17;
  v18 = _Block_copy(aBlock);
  v19 = nw_endpoint_get_address(endpointCopy);
  if (!v19)
  {
    v45 = RPErrorF();
    v22 = v68[5];
    v68[5] = v45;
    goto LABEL_36;
  }

  Port = SockAddrGetPort();
  sa_family = v19->sa_family;
  v60 = Port;
  if (sa_family != 30)
  {
    if (sa_family == 2 && !*&v19->sa_data[2])
    {
      goto LABEL_5;
    }

LABEL_11:
    LOBYTE(v73[0]) = 0;
    SockAddrToString();
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v73];
    if (!cDataCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  if (*&v19->sa_data[6] || *&v19->sa_data[10] || *&v19[1].sa_len || *&v19[1].sa_data[2])
  {
    goto LABEL_11;
  }

LABEL_5:
  v22 = 0;
  if (!cDataCopy)
  {
LABEL_6:
    address_with_ethernet = nw_endpoint_create_address(&p->var0);
    goto LABEL_13;
  }

LABEL_12:
  WORD2(v73[0]) = 0;
  LODWORD(v73[0]) = 0;
  v24 = cDataCopy;
  bytes = [cDataCopy bytes];
  v26 = *bytes;
  WORD2(v73[0]) = *(bytes + 4);
  LODWORD(v73[0]) = v26;
  address_with_ethernet = nw_endpoint_create_address_with_ethernet();
LABEL_13:
  v27 = address_with_ethernet;
  if (!address_with_ethernet)
  {
    goto LABEL_40;
  }

  if (!usbCopy)
  {
    secure_udp = nw_parameters_create_secure_udp(*MEMORY[0x1E6977EC0], &__block_literal_global_172);
    if (secure_udp)
    {
LABEL_19:
      delegatedProcessUPID = self->_delegatedProcessUPID;
      nw_parameters_set_delegated_unique_pid();
      nw_parameters_set_reuse_local_address(secure_udp, 1);
      if (interface)
      {
        nw_parameters_require_interface(secure_udp, interface);
      }

      nw_parameters_set_local_endpoint(secure_udp, endpointCopy);
      evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
      nwPathEvaluator = self->_nwPathEvaluator;
      self->_nwPathEvaluator = evaluator_for_endpoint;

      if (self->_nwPathEvaluator)
      {
        v73[0] = 0;
        v73[1] = 0;
        nw_path_evaluator_get_client_id();
        v36 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v73];
        nwClientID = self->_nwClientID;
        self->_nwClientID = v36;

        v38 = NSRandomData();
        objc_storeStrong(&self->_streamKey, v38);
        if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
        {
          streamType = self->_streamType;
          if (streamType > 3)
          {
            v40 = "?";
          }

          else
          {
            v40 = off_1E7C95240[streamType];
          }

          pCopy = p;
          v59 = cDataCopy;
          v56 = endpointCopy;
          v57 = v22;
          v55 = self->_nwClientID;
          trafficFlags = self->_trafficFlags;
          v54 = &unk_1B6F2F2E7;
          streamFlags = self->_streamFlags;
          v52 = &unk_1B6F2F36D;
          streamID = self->_streamID;
          v50 = v40;
          LogPrintF();
        }

        v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v42 = v41;
        if (v22)
        {
          [v41 setObject:v22 forKeyedSubscript:@"_streamAddr"];
        }

        if (dataCopy)
        {
          [v42 setObject:dataCopy forKeyedSubscript:@"_streamMACAddr"];
        }

        [v42 setObject:v38 forKeyedSubscript:{@"_streamKey", streamID, v50, streamFlags, v52, trafficFlags, v54, v55, v56, v57, pCopy, v59}];
        v43 = [MEMORY[0x1E696AD98] numberWithInt:v60];
        [v42 setObject:v43 forKeyedSubscript:@"_streamPort"];

        (*(v17 + 2))(v17, v42, 0, 0);
        goto LABEL_35;
      }

      goto LABEL_39;
    }

LABEL_40:
    v48 = RPErrorF();
    secure_udp = v68[5];
    v68[5] = v48;
    goto LABEL_35;
  }

  v28 = *MEMORY[0x1E6977EB8];
  legacy_tcp_socket = nw_parameters_create_legacy_tcp_socket();
  secure_udp = legacy_tcp_socket;
  if (!legacy_tcp_socket)
  {
    goto LABEL_40;
  }

  v31 = nw_parameters_copy_default_protocol_stack(legacy_tcp_socket);
  if (v31)
  {
    v32 = MEMORY[0x1B8C9EA50]();
    MEMORY[0x1B8C9EA60](v32, 1);
    nw_protocol_stack_set_transport_protocol(v31, v32);

    goto LABEL_19;
  }

LABEL_39:
  v46 = RPErrorF();
  v47 = v68[5];
  v68[5] = v46;

LABEL_35:
LABEL_36:

  v18[2](v18);
  _Block_object_dispose(&v67, 8);

  v44 = *MEMORY[0x1E69E9840];
}

uint64_t __115__RPStreamSession__serverUDPNWPathNextWithEndpoint_nwInterface_selfMACData_peerIP_peerMACData_usb_responseHandler___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_RPStreamSession <= 90)
  {
    if (gLogCategory_RPStreamSession == -1)
    {
      v3 = _LogCategory_Initialize();
      v1 = *(v2 + 40);
      if (!v3)
      {
        goto LABEL_7;
      }

      v6 = *(*(v1 + 8) + 40);
    }

    LogPrintF();
    v1 = *(v2 + 40);
  }

LABEL_7:
  v4 = *(*(v1 + 8) + 40);
  v5 = *(*(v2 + 32) + 16);

  return v5();
}

- (void)_clientUDPSocketStartWithCompletion:(id)completion
{
  completionCopy = completion;
  streamSocket = self->_streamSocket;
  if ((streamSocket & 0x80000000) == 0)
  {
    if (close(streamSocket) && *__error())
    {
      __error();
    }

    self->_streamSocket = -1;
  }

  v15 = 0;
  LODWORD(v12) = 3;
  if (ServerSocketOpenEx2())
  {
    v6 = RPErrorF();
    if (gLogCategory_RPStreamSession <= 90 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
    {
      [RPStreamSession _clientUDPSocketStartWithCompletion:];
    }

    completionCopy[2](completionCopy, v6);
  }

  else
  {
    if (self->_streamQoS >= 1)
    {
      [(RPStreamSession *)self setStreamQoSOnSocket:self->_streamSocket, v12, &self->_streamSocket];
    }

    if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
    {
      [(RPStreamSession *)self _clientUDPSocketStartWithCompletion:&self->_streamQoS];
    }

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v6 setObject:self->_streamID forKeyedSubscript:@"_streamID"];
    v7 = [MEMORY[0x1E696AD98] numberWithInt:v15];
    [v6 setObject:v7 forKeyedSubscript:@"_streamPort"];

    v8 = [MEMORY[0x1E696AD98] numberWithInt:self->_streamType];
    [v6 setObject:v8 forKeyedSubscript:@"_streamType"];

    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_trafficFlags];
    [v6 setObject:v9 forKeyedSubscript:@"_tf"];

    serviceType = self->_serviceType;
    if (serviceType)
    {
      [v6 setObject:serviceType forKeyedSubscript:@"_streamSrv"];
    }

    messenger = self->_messenger;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __55__RPStreamSession__clientUDPSocketStartWithCompletion___block_invoke;
    v13[3] = &unk_1E7C94750;
    v13[4] = self;
    v14 = completionCopy;
    [(RPMessageable *)messenger sendRequestID:@"_streamStart" request:v6 destinationID:@"rapport:rdid:DirectPeer" options:0 responseHandler:v13];
  }
}

void __55__RPStreamSession__clientUDPSocketStartWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v7;
  v13 = v10;
  if (!v10 || v9)
  {
    if (gLogCategory_RPStreamSession <= 90 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
    {
      __55__RPStreamSession__clientUDPSocketStartWithCompletion___block_invoke_cold_1();
    }

    v11 = *(a1 + 40);
    if (v9)
    {
      (*(v11 + 16))(v11, v9);
    }

    else
    {
      v12 = RPErrorF();
      (*(v11 + 16))(v11, v12);
    }
  }

  else
  {
    [*(a1 + 32) _clientUDPSocketStartResponse:v10 options:v8 completion:*(a1 + 40)];
  }
}

- (void)_clientUDPSocketStartResponse:(id)response options:(id)options completion:(id)completion
{
  responseCopy = response;
  optionsCopy = options;
  completionCopy = completion;
  CFDataGetTypeID();
  v11 = CFDictionaryGetTypedValue();
  if ([v11 length] >= 0x20)
  {
    objc_storeStrong(&self->_streamKey, v11);
  }

  if (!CFDictionaryGetInt64Ranged())
  {
    v12 = RPErrorF();
    if (gLogCategory_RPStreamSession > 90 || gLogCategory_RPStreamSession == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_18;
    }

LABEL_10:
    [RPStreamSession _clientUDPSocketStartResponse:options:completion:];
LABEL_18:
    completionCopy[2](completionCopy, v12);

    goto LABEL_19;
  }

  CFStringGetTypeID();
  if (![CFDictionaryGetTypedValue() UTF8String])
  {
    v12 = RPErrorF();
    if (gLogCategory_RPStreamSession > 90 || gLogCategory_RPStreamSession == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  *&v19.sa_len = 0;
  *&v19.sa_data[6] = 0;
  v21 = 0;
  v20 = 0;
  if (StringToSockAddr() || (SockAddrSetPort(), SockAddrConvertToIPv6()))
  {
    v12 = RPErrorF();
    if (gLogCategory_RPStreamSession > 90 || gLogCategory_RPStreamSession == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  streamSocket = self->_streamSocket;
  Size = SockAddrGetSize();
  if (connect(streamSocket, &v19, Size) && (!*__error() || *__error()))
  {
    v12 = RPErrorF();
    if (gLogCategory_RPStreamSession <= 90 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
    {
      [RPStreamSession _clientUDPSocketStartResponse:options:completion:];
    }

    goto LABEL_18;
  }

  *&v16.sa_len = 0;
  *&v16.sa_data[6] = 0;
  v18 = 0;
  v17 = 0;
  v15 = 28;
  getsockname(self->_streamSocket, &v16, &v15);
  if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
  {
    [RPStreamSession _clientUDPSocketStartResponse:? options:? completion:?];
  }

  completionCopy[2](completionCopy, 0);
LABEL_19:
}

- (void)_serverUDPSocketStartRequest:(id)request options:(id)options responseHandler:(id)handler
{
  v24[2] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  CFStringGetTypeID();
  if ([CFDictionaryGetTypedValue() UTF8String])
  {
    *&v20.sa_len = 0;
    *&v20.sa_data[6] = 0;
    v22 = 0;
    v21 = 0;
    v19 = StringToSockAddr();
    if (v19)
    {
      v11 = RPErrorF();
      if (gLogCategory_RPStreamSession > 90 || gLogCategory_RPStreamSession == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_10;
      }

      goto LABEL_26;
    }

    if (CFDictionaryGetInt64Ranged())
    {
      SockAddrSetPort();
      self->_trafficFlags = CFDictionaryGetInt64Ranged();
      CFStringGetTypeID();
      if ([CFDictionaryGetTypedValue() UTF8String])
      {
        if (StringToSockAddr())
        {
          v11 = RPErrorF();
          if (gLogCategory_RPStreamSession > 90 || gLogCategory_RPStreamSession == -1 && !_LogCategory_Initialize())
          {
            goto LABEL_10;
          }

          goto LABEL_26;
        }

        p_streamSocket = &self->_streamSocket;
        if ((self->_streamSocket & 0x80000000) == 0)
        {
          if (close(self->_streamSocket) && *__error())
          {
            __error();
          }

          *p_streamSocket = -1;
        }

        LODWORD(v18) = 1;
        if (ServerSocketOpenEx2())
        {
          v15 = RPErrorF();
          if (gLogCategory_RPStreamSession <= 90 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
          {
            [RPStreamSession _serverUDPSocketStartRequest:options:responseHandler:];
          }
        }

        else
        {
          SockAddrSetPort();
          if (self->_streamQoS >= 1)
          {
            [(RPStreamSession *)self setStreamQoSOnSocket:self->_streamSocket, v18, &self->_streamSocket];
          }

          if (!connect(*p_streamSocket, &v20, HIDWORD(v19)) || *__error() && !*__error())
          {
            v15 = NSRandomData();
            objc_storeStrong(&self->_streamKey, v15);
            if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
            {
              [RPStreamSession _serverUDPSocketStartRequest:? options:? responseHandler:?];
            }

            v24[0] = v15;
            v23[0] = @"_streamKey";
            v23[1] = @"_streamPort";
            v16 = [MEMORY[0x1E696AD98] numberWithInt:{0, v18}];
            v24[1] = v16;
            v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];

            (*(handlerCopy + 2))(handlerCopy, v17, 0, 0);
            goto LABEL_52;
          }

          v15 = RPErrorF();
          if (gLogCategory_RPStreamSession <= 90 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
          {
            [RPStreamSession _serverUDPSocketStartRequest:options:responseHandler:];
          }
        }

        (*(handlerCopy + 2))(handlerCopy, 0, 0, v15);
LABEL_52:

        goto LABEL_11;
      }

      v11 = RPErrorF();
      if (gLogCategory_RPStreamSession > 90 || gLogCategory_RPStreamSession == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_10;
      }
    }

    else
    {
      v11 = RPErrorF();
      if (gLogCategory_RPStreamSession > 90 || gLogCategory_RPStreamSession == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v11 = RPErrorF();
    if (gLogCategory_RPStreamSession > 90 || gLogCategory_RPStreamSession == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_10;
    }
  }

LABEL_26:
  [RPStreamSession _serverUDPSocketStartRequest:options:responseHandler:];
LABEL_10:
  (*(handlerCopy + 2))(handlerCopy, 0, 0, v11);

LABEL_11:
  v12 = *MEMORY[0x1E69E9840];
}

- (void)_clientRPConnectionPrepareWithCompletion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
  {
    [RPStreamSession _clientRPConnectionPrepareWithCompletion:?];
  }

  v5 = RPStreamSessionLog();
  v6 = RPStreamSessionLog();
  v7 = os_signpost_id_make_with_pointer(v6, self->_streamID);

  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    streamID = self->_streamID;
    *buf = 138412290;
    v20 = streamID;
    _os_signpost_emit_with_name_impl(&dword_1B6E85000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "RPStreamBringUpTime", " enableTelemetry=YES {streamID:%@, signpost.description:begin_time}", buf, 0xCu);
  }

  Curve25519MakeKeyPair();
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v9 setObject:self->_streamID forKeyedSubscript:@"_streamID"];
  v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:buf length:32];
  [v9 setObject:v10 forKeyedSubscript:@"_streamKey"];

  v11 = [MEMORY[0x1E696AD98] numberWithInt:self->_streamType];
  [v9 setObject:v11 forKeyedSubscript:@"_streamType"];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_trafficFlags];
  [v9 setObject:v12 forKeyedSubscript:@"_tf"];

  serviceType = self->_serviceType;
  if (serviceType)
  {
    [v9 setObject:serviceType forKeyedSubscript:@"_streamSrv"];
  }

  messenger = self->_messenger;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __60__RPStreamSession__clientRPConnectionPrepareWithCompletion___block_invoke;
  v17[3] = &unk_1E7C94750;
  v17[4] = self;
  v18 = completionCopy;
  v15 = completionCopy;
  [(RPMessageable *)messenger sendRequestID:@"_streamStart" request:v9 destinationID:@"rapport:rdid:DirectPeer" options:0 responseHandler:v17];

  v16 = *MEMORY[0x1E69E9840];
}

void __60__RPStreamSession__clientRPConnectionPrepareWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v7;
  v13 = v10;
  if (!v10 || v9)
  {
    if (gLogCategory_RPStreamSession <= 90 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
    {
      __60__RPStreamSession__clientRPConnectionPrepareWithCompletion___block_invoke_cold_1();
    }

    v11 = *(a1 + 40);
    if (v9)
    {
      (*(v11 + 16))(v11, v9);
    }

    else
    {
      v12 = RPErrorF();
      (*(v11 + 16))(v11, v12);
    }
  }

  else
  {
    [*(a1 + 32) _clientRPConnectionPrepareResponse:v10 options:v8 completion:*(a1 + 40)];
  }
}

- (void)_clientRPConnectionPrepareResponse:(id)response options:(id)options completion:(id)completion
{
  v49 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  optionsCopy = options;
  completionCopy = completion;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__7;
  v46 = __Block_byref_object_dispose__7;
  v47 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__RPStreamSession__clientRPConnectionPrepareResponse_options_completion___block_invoke;
  aBlock[3] = &unk_1E7C94FA8;
  v41 = &v42;
  v11 = completionCopy;
  v40 = v11;
  v12 = _Block_copy(aBlock);
  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (Int64Ranged && (self->_peerPort = Int64Ranged, CFStringGetTypeID(), [CFDictionaryGetTypedValue() UTF8String]))
  {
    v35 = 0;
    v36 = 0;
    v38 = 0;
    v37 = 0;
    v34 = StringToSockAddr();
    if (v34)
    {
      v30 = RPErrorF();
      v17 = v43[5];
      v43[5] = v30;
    }

    else
    {
      SockAddrSetPort();
      v14 = NSPrintF();
      destinationString = self->_destinationString;
      self->_destinationString = v14;

      v16 = CFDictionaryGetCFDataOfLength();
      v17 = v16;
      if (!v16)
      {
        goto LABEL_24;
      }

      v18 = v16;
      if ([v17 bytes])
      {
        v19 = v17;
        [v17 bytes];
        cccurve25519();
      }

      else
      {
        cccurve25519_make_pub();
      }

      memset_s(self->_ourCurveSK, 0x20uLL, 0, 0x20uLL);
      v20 = vorrq_s8(__s[1], __s[0]);
      if (vorr_s8(*v20.i8, *&vextq_s8(v20, v20, 8uLL)))
      {
        v21 = *MEMORY[0x1E69995A8];
        CryptoHKDF();
        v22 = [MEMORY[0x1E695DEF0] _newZeroingDataWithBytes:__s length:{32, __s}];
        pskData = self->_pskData;
        self->_pskData = v22;

        memset_s(__s, 0x20uLL, 0, 0x20uLL);
        if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
        {
          streamID = self->_streamID;
          streamType = self->_streamType;
          if (streamType <= 3)
          {
            v26 = off_1E7C95240[streamType];
          }

          v33 = self->_streamID;
          LogPrintF();
        }

        if (self->_prepareOnly)
        {
          (*(v11 + 2))(v11, 0);
        }

        else
        {
          [(RPStreamSession *)self _clientRPConnectionStartWithCompletion:v11];
        }
      }

      else
      {
LABEL_24:
        v31 = RPErrorF();
        v32 = v43[5];
        v43[5] = v31;
      }
    }
  }

  else
  {
    v28 = RPErrorF();
    v29 = v43[5];
    v43[5] = v28;
  }

  v12[2](v12);

  _Block_object_dispose(&v42, 8);
  v27 = *MEMORY[0x1E69E9840];
}

uint64_t __73__RPStreamSession__clientRPConnectionPrepareResponse_options_completion___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_RPStreamSession <= 90)
  {
    if (gLogCategory_RPStreamSession == -1)
    {
      v3 = _LogCategory_Initialize();
      v1 = *(v2 + 40);
      if (!v3)
      {
        goto LABEL_7;
      }

      v6 = *(*(v1 + 8) + 40);
    }

    LogPrintF();
    v1 = *(v2 + 40);
  }

LABEL_7:
  v4 = *(*(v1 + 8) + 40);
  v5 = *(*(v2 + 32) + 16);

  return v5();
}

- (void)_clientRPConnectionStartWithCompletion:(id)completion
{
  completionCopy = completion;
  if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
  {
    [RPStreamSession _clientRPConnectionStartWithCompletion:?];
  }

  [(RPStreamSession *)self _updateTrafficRegistrationForDestination:self->_destinationString];
  v5 = objc_alloc_init(RPConnection);
  [(RPConnection *)v5 setDestinationString:self->_destinationString];
  [(RPConnection *)v5 setDispatchQueue:self->_dispatchQueue];
  [(RPConnection *)v5 setFlags:[(RPConnection *)v5 flags]| 0x80000];
  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Stream-%u", self->_peerPort];
  [(RPConnection *)v5 setLabel:v6];

  [(RPConnection *)v5 setPskData:self->_pskData];
  pskData = self->_pskData;
  self->_pskData = 0;

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __58__RPStreamSession__clientRPConnectionStartWithCompletion___block_invoke;
  v15[3] = &unk_1E7C92CE8;
  v15[4] = self;
  [(RPConnection *)v5 setInvalidationHandler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58__RPStreamSession__clientRPConnectionStartWithCompletion___block_invoke_2;
  v14[3] = &unk_1E7C94408;
  v14[4] = self;
  [(RPConnection *)v5 setReceivedEventHandler:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__RPStreamSession__clientRPConnectionStartWithCompletion___block_invoke_3;
  v13[3] = &unk_1E7C94430;
  v13[4] = self;
  [(RPConnection *)v5 setReceivedRequestHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__RPStreamSession__clientRPConnectionStartWithCompletion___block_invoke_4;
  v12[3] = &unk_1E7C92CE8;
  v12[4] = self;
  [(RPConnection *)v5 setFlowControlWriteChangedHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__RPStreamSession__clientRPConnectionStartWithCompletion___block_invoke_5;
  v11[3] = &unk_1E7C94398;
  v11[4] = self;
  v11[5] = v5;
  [(RPConnection *)v5 setStateChangedHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__RPStreamSession__clientRPConnectionStartWithCompletion___block_invoke_201;
  v10[3] = &unk_1E7C92D58;
  v10[4] = self;
  [(RPConnection *)v5 setReadErrorHandler:v10];
  rpCnx = self->_rpCnx;
  self->_rpCnx = v5;
  v9 = v5;

  [(RPConnection *)v9 activate];
  completionCopy[2](completionCopy, 0);
}

uint64_t __58__RPStreamSession__clientRPConnectionStartWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  *(v2 + 104) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

void __58__RPStreamSession__clientRPConnectionStartWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  v9 = _Block_copy(*(*(a1 + 32) + 216));
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9, v11, v7, v8);
  }
}

void __58__RPStreamSession__clientRPConnectionStartWithCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v14 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = _Block_copy(*(*(a1 + 32) + 224));
  v13 = v12;
  if (v12)
  {
    (*(v12 + 2))(v12, v14, v9, v10, v11);
  }
}

void __58__RPStreamSession__clientRPConnectionStartWithCompletion___block_invoke_4(uint64_t a1)
{
  v1 = _Block_copy(*(*(a1 + 32) + 184));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void __58__RPStreamSession__clientRPConnectionStartWithCompletion___block_invoke_5(uint64_t a1, int a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a2 == 1)
  {
    v3 = [MEMORY[0x1E696AE30] processInfo];
    v4 = [v3 processName];

    v5 = RPStreamSessionLog();
    v6 = RPStreamSessionLog();
    v7 = os_signpost_id_make_with_pointer(v6, *(*(a1 + 32) + 264));

    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      v8 = *(*(a1 + 32) + 264);
      v9 = [*(a1 + 40) linkType];
      if (v9 > 0xB)
      {
        v10 = "?";
      }

      else
      {
        v10 = off_1E7C95260[v9];
      }

      v16 = 138412802;
      v17 = v8;
      v18 = 2080;
      v19 = v10;
      v20 = 2080;
      v21 = [v4 UTF8String];
      _os_signpost_emit_with_name_impl(&dword_1B6E85000, v5, OS_SIGNPOST_INTERVAL_END, v7, "RPStreamBringUpTime", " enableTelemetry=YES {streamID:%@, linkType=%{signpost.telemetry:string1}s, process=%{signpost.telemetry:string2}s, signpost.description:end_time}", &v16, 0x20u);
    }

    v11 = *(a1 + 32);
    if (v11[38] >= 1)
    {
      v12 = [*(a1 + 40) tcpConnection];
      [v11 setStreamQoSOnSocket:{objc_msgSend(v12, "socketFD")}];

      v11 = *(a1 + 32);
    }

    v13 = [v11 connectionReadyHandler];
    v14 = v13;
    if (v13)
    {
      (*(v13 + 16))(v13);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __58__RPStreamSession__clientRPConnectionStartWithCompletion___block_invoke_201(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 code] == -6723 || objc_msgSend(v3, "code") == -6753)
  {
    v4 = _Block_copy(*(*(a1 + 32) + 168));
    if (v4)
    {
      v5 = *(*(a1 + 32) + 176);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __58__RPStreamSession__clientRPConnectionStartWithCompletion___block_invoke_2_202;
      block[3] = &unk_1E7C950D8;
      block[4] = v4;
      dispatch_async(v5, block);
    }
  }
}

- (void)_serverRPConnectionStartRequest:(id)request options:(id)options responseHandler:(id)handler
{
  v54 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__7;
  v47 = __Block_byref_object_dispose__7;
  v48 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__RPStreamSession__serverRPConnectionStartRequest_options_responseHandler___block_invoke;
  aBlock[3] = &unk_1E7C951B8;
  v42 = &v43;
  aBlock[4] = self;
  v11 = handlerCopy;
  v41 = v11;
  v12 = _Block_copy(aBlock);
  v39 = 0;
  v13 = CFDictionaryGetCFDataOfLength();
  if (v13 && (self->_trafficFlags = CFDictionaryGetInt64Ranged(), CFStringGetTypeID(), [CFDictionaryGetTypedValue() UTF8String]) && (memset(&v38[10], 0, 28), (v39 = StringToSockAddr()) == 0))
  {
    v14 = objc_alloc_init(MEMORY[0x1E6999550]);
    tcpServer = self->_tcpServer;
    self->_tcpServer = v14;

    [(CUTCPServer *)self->_tcpServer setDispatchQueue:self->_dispatchQueue];
    [(CUTCPServer *)self->_tcpServer setFlags:201];
    *v53 = *&v38[10];
    *&v53[12] = *&v38[13];
    [(CUTCPServer *)self->_tcpServer setInterfaceAddress:v53];
    if ((self->_streamFlags & 5) != 0)
    {
      *v38 = MEMORY[0x1E69E9820];
      *&v38[2] = 3221225472;
      *&v38[4] = __75__RPStreamSession__serverRPConnectionStartRequest_options_responseHandler___block_invoke_2;
      *&v38[6] = &unk_1E7C942A8;
      *&v38[8] = self;
      [(CUTCPServer *)self->_tcpServer setConnectionAcceptHandler:v38];
    }

    else
    {
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __75__RPStreamSession__serverRPConnectionStartRequest_options_responseHandler___block_invoke_3;
      v37[3] = &unk_1E7C951E0;
      v37[4] = self;
      [(CUTCPServer *)self->_tcpServer setConnectionStartedHandler:v37];
    }

    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __75__RPStreamSession__serverRPConnectionStartRequest_options_responseHandler___block_invoke_4;
    v36[3] = &unk_1E7C92CE8;
    v36[4] = self;
    [(CUTCPServer *)self->_tcpServer setInvalidationHandler:v36];
    v16 = self->_tcpServer;
    v17 = (v44 + 5);
    obj = v44[5];
    [(CUTCPServer *)v16 activateDirectAndReturnError:&obj];
    objc_storeStrong(v17, obj);
    if (v44[5])
    {
      v31 = RPNestedErrorF();
      v32 = v44[5];
      v44[5] = v31;
    }

    else
    {
      tcpListeningPort = [(CUTCPServer *)self->_tcpServer tcpListeningPort];
      SockAddrSetPort();
      Curve25519MakeKeyPair();
      v19 = v13;
      if ([v13 bytes])
      {
        v20 = v13;
        [v13 bytes];
        cccurve25519();
      }

      else
      {
        cccurve25519_make_pub();
      }

      memset_s(__s, 0x20uLL, 0, 0x20uLL);
      v21 = vorrq_s8(v51[1], v51[0]);
      if (vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL)))
      {
        v22 = *MEMORY[0x1E69995A8];
        CryptoHKDF();
        v23 = [MEMORY[0x1E695DEF0] _newZeroingDataWithBytes:v51 length:{32, v51}];
        pskData = self->_pskData;
        self->_pskData = v23;

        memset_s(v51, 0x20uLL, 0, 0x20uLL);
        if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
        {
          streamID = self->_streamID;
          LogPrintF();
        }

        v49[0] = @"_streamKey";
        v25 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v53 length:32];
        v49[1] = @"_streamPort";
        v50[0] = v25;
        v26 = [MEMORY[0x1E696AD98] numberWithInt:tcpListeningPort];
        v50[1] = v26;
        v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:2];

        (*(v11 + 2))(v11, v27, 0, 0);
      }

      else
      {
        v33 = RPErrorF();
        v27 = v44[5];
        v44[5] = v33;
      }
    }
  }

  else
  {
    v29 = RPErrorF();
    v30 = v44[5];
    v44[5] = v29;
  }

  v12[2](v12);
  _Block_object_dispose(&v43, 8);

  v28 = *MEMORY[0x1E69E9840];
}

uint64_t __75__RPStreamSession__serverRPConnectionStartRequest_options_responseHandler___block_invoke(uint64_t result)
{
  v1 = *(*(*(result + 48) + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_RPStreamSession <= 90)
  {
    if (gLogCategory_RPStreamSession == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v1 = *(*(v2[6] + 8) + 40);
    }

    v7 = v1;
    LogPrintF();
  }

LABEL_7:
  [*(v2[4] + 112) invalidate];
  v3 = v2[4];
  v4 = *(v3 + 112);
  *(v3 + 112) = 0;

  v5 = *(*(v2[6] + 8) + 40);
  v6 = *(v2[5] + 16);

  return v6();
}

void __75__RPStreamSession__serverRPConnectionStartRequest_options_responseHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if ((v3[8] & 1) == 0)
  {
    [v3 _serverRPConnectionHandleConnectionAccepted:a2];
    [*(*(a1 + 32) + 112) invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 112);
    *(v4 + 112) = 0;
  }
}

void __75__RPStreamSession__serverRPConnectionStartRequest_options_responseHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if ((v3[8] & 1) == 0)
  {
    [v3 _serverRPConnectionHandleConnectionStarted:a2];
    [*(*(a1 + 32) + 112) invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 112);
    *(v4 + 112) = 0;
  }
}

uint64_t __75__RPStreamSession__serverRPConnectionStartRequest_options_responseHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 112);
  *(v2 + 112) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (void)_serverRPConnectionHandleConnectionStarted:(id)started
{
  startedCopy = started;
  if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
  {
    streamID = self->_streamID;
    LogPrintF();
  }

  v5 = objc_alloc_init(RPConnection);
  [(RPConnection *)v5 setDispatchQueue:self->_dispatchQueue];
  [(RPConnection *)v5 setFlags:[(RPConnection *)v5 flags]| 0x80000];
  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Stream-%u", -[CUTCPServer tcpListeningPort](self->_tcpServer, "tcpListeningPort")];
  [(RPConnection *)v5 setLabel:v6];

  label = [(RPConnection *)v5 label];
  [startedCopy setLabel:label];

  [(RPConnection *)v5 setPskData:self->_pskData];
  pskData = self->_pskData;
  self->_pskData = 0;

  [(RPConnection *)v5 setTcpConnection:startedCopy];
  if (self->_streamQoS >= 1)
  {
    -[RPStreamSession setStreamQoSOnSocket:](self, "setStreamQoSOnSocket:", [startedCopy socketFD]);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __62__RPStreamSession__serverRPConnectionHandleConnectionStarted___block_invoke;
  v17[3] = &unk_1E7C92CE8;
  v17[4] = self;
  [(RPConnection *)v5 setInvalidationHandler:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __62__RPStreamSession__serverRPConnectionHandleConnectionStarted___block_invoke_2;
  v16[3] = &unk_1E7C94408;
  v16[4] = self;
  [(RPConnection *)v5 setReceivedEventHandler:v16];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __62__RPStreamSession__serverRPConnectionHandleConnectionStarted___block_invoke_3;
  v15[3] = &unk_1E7C94430;
  v15[4] = self;
  [(RPConnection *)v5 setReceivedRequestHandler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __62__RPStreamSession__serverRPConnectionHandleConnectionStarted___block_invoke_4;
  v14[3] = &unk_1E7C92CE8;
  v14[4] = self;
  [(RPConnection *)v5 setFlowControlWriteChangedHandler:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__RPStreamSession__serverRPConnectionHandleConnectionStarted___block_invoke_5;
  v13[3] = &unk_1E7C942A8;
  v13[4] = self;
  [(RPConnection *)v5 setStateChangedHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__RPStreamSession__serverRPConnectionHandleConnectionStarted___block_invoke_6;
  v12[3] = &unk_1E7C92D58;
  v12[4] = self;
  [(RPConnection *)v5 setReadErrorHandler:v12];
  rpCnx = self->_rpCnx;
  self->_rpCnx = v5;
  v10 = v5;

  [(RPConnection *)v10 activate];
}

uint64_t __62__RPStreamSession__serverRPConnectionHandleConnectionStarted___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  *(v2 + 104) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

void __62__RPStreamSession__serverRPConnectionHandleConnectionStarted___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  v9 = _Block_copy(*(*(a1 + 32) + 216));
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9, v11, v7, v8);
  }
}

void __62__RPStreamSession__serverRPConnectionHandleConnectionStarted___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v14 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = _Block_copy(*(*(a1 + 32) + 224));
  v13 = v12;
  if (v12)
  {
    (*(v12 + 2))(v12, v14, v9, v10, v11);
  }
}

void __62__RPStreamSession__serverRPConnectionHandleConnectionStarted___block_invoke_4(uint64_t a1)
{
  v1 = _Block_copy(*(*(a1 + 32) + 184));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void __62__RPStreamSession__serverRPConnectionHandleConnectionStarted___block_invoke_5(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    v3 = [*(a1 + 32) connectionReadyHandler];
    if (v3)
    {
      v4 = v3;
      v3[2]();
      v3 = v4;
    }
  }
}

void __62__RPStreamSession__serverRPConnectionHandleConnectionStarted___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 code] == -6723 || objc_msgSend(v3, "code") == -6753)
  {
    v4 = _Block_copy(*(*(a1 + 32) + 168));
    if (v4)
    {
      v5 = *(*(a1 + 32) + 176);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __62__RPStreamSession__serverRPConnectionHandleConnectionStarted___block_invoke_7;
      block[3] = &unk_1E7C950D8;
      block[4] = v4;
      dispatch_async(v5, block);
    }
  }
}

- (unsigned)_getSockAddrInterfaceType:(const void *)type
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v9 = 0;
  if (!SockAddrSimplify())
  {
    if (getifaddrs(&v9) && *__error())
    {
      v4 = *__error();
    }

    v5 = v9;
    if (v9)
    {
      v11 = 0;
      while (!v5->ifa_addr || !v5->ifa_name || SockAddrCompareAddr())
      {
        v5 = v5->ifa_next;
        if (!v5)
        {
          goto LABEL_13;
        }
      }

      ifa_name = v5->ifa_name;
      __strlcpy_chk();
LABEL_13:
      if (v11)
      {
        if (SocketGetInterfaceInfo())
        {
          [RPStreamSession _getSockAddrInterfaceType:];
        }

        else if (!v10)
        {
          [RPStreamSession _getSockAddrInterfaceType:];
        }
      }

      else
      {
        [RPStreamSession _getSockAddrInterfaceType:];
      }
    }

    else if (([RPStreamSession _getSockAddrInterfaceType:]& 1) != 0)
    {
      goto LABEL_19;
    }
  }

  if (v9)
  {
    MEMORY[0x1B8C9E660](v9, v3);
  }

LABEL_19:
  result = v10;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)_lowLatencySelfAddressString:(id *)string
{
  v5 = *MEMORY[0x1E69E9840];
  CUGetInterfaceAddresses();
  v3 = *MEMORY[0x1E69E9840];

  return 0;
}

- (void)sendEventID:(id)d event:(id)event options:(id)options completion:(id)completion
{
  dCopy = d;
  eventCopy = event;
  optionsCopy = options;
  completionCopy = completion;
  if (self->_rpCnx)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__RPStreamSession_sendEventID_event_options_completion___block_invoke;
    block[3] = &unk_1E7C95208;
    block[4] = self;
    v17 = dCopy;
    v18 = eventCopy;
    v19 = optionsCopy;
    v20 = completionCopy;
    dispatch_async(dispatchQueue, block);
  }

  else
  {
    v15 = RPErrorF();
    if (gLogCategory_RPStreamSession <= 90 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    (*(completionCopy + 2))(completionCopy, v15);
  }
}

- (void)sendRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler
{
  dCopy = d;
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  if (self->_rpCnx)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__RPStreamSession_sendRequestID_request_options_responseHandler___block_invoke;
    block[3] = &unk_1E7C95208;
    block[4] = self;
    v17 = dCopy;
    v18 = requestCopy;
    v19 = optionsCopy;
    v20 = handlerCopy;
    dispatch_async(dispatchQueue, block);
  }

  else
  {
    v15 = RPErrorF();
    if (gLogCategory_RPStreamSession <= 90 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0, v15);
  }
}

- (void)_updateTrafficRegistration
{
  if (self->_peerIP.sa.sa_family)
  {

    [(RPStreamSession *)self _updateTrafficRegistrationForIP:&self->_peerIP];
  }

  else if (self->_trafficFlags)
  {
    streamSocket = self->_streamSocket;
    if ((streamSocket & 0x80000000) == 0)
    {
      *&v6.sa_len = 0;
      *&v6.sa_data[6] = 0;
      v8 = 0;
      v7 = 0;
      v5 = 28;
      getpeername(streamSocket, &v6, &v5);
      if (v6.sa_family == 30 && v6.sa_data[6] == 254 && (v6.sa_data[7] & 0xC0) == 0x80)
      {
        v4 = v8;
        if (v8)
        {
          if (v4 == if_nametoindex("awdl0"))
          {
            [(RPStreamSession *)self _updateTrafficRegistrationForIP:&v6];
          }
        }
      }
    }
  }
}

- (void)_updateTrafficRegistrationForIP:(id *)p
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (!self->_trafficSessionID)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    trafficSessionID = self->_trafficSessionID;
    self->_trafficSessionID = uUIDString;
  }

  if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
  {
    v18 = &unk_1B6F2F2E7;
    v19 = self->_trafficSessionID;
    pCopy = p;
    trafficFlags = self->_trafficFlags;
    LogPrintF();
  }

  self->_trafficRegistrationCalled = 1;
  if (!self->_wifiManager)
  {
    v8 = objc_alloc_init(MEMORY[0x1E6999558]);
    wifiManager = self->_wifiManager;
    self->_wifiManager = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.rapport.traffic_registration", v10);
    [(CUWiFiManager *)self->_wifiManager setDispatchQueue:v11];

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __51__RPStreamSession__updateTrafficRegistrationForIP___block_invoke;
    v21[3] = &unk_1E7C92CE8;
    v21[4] = self;
    [(CUWiFiManager *)self->_wifiManager setWifiStateChangedHandler:v21];
    v12 = self->_wifiManager;
    if (objc_opt_respondsToSelector())
    {
      [(CUWiFiManager *)self->_wifiManager setValue:MEMORY[0x1E695E118] forKey:@"degradeOnAnyTrafficUnavailable"];
    }

    [(CUWiFiManager *)self->_wifiManager activateWithCompletion:0, pCopy, trafficFlags, v18, v19];
  }

  v13 = objc_alloc_init(MEMORY[0x1E6999568]);
  v20[0] = p->var0;
  *(v20 + 12) = *(&p->var2.sin6_addr + 4);
  [v13 setPeerIP:v20];
  [v13 setSessionID:self->_trafficSessionID];
  [v13 setTrafficFlags:self->_trafficFlags];
  v22[0] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  [(CUWiFiManager *)self->_wifiManager setTrafficPeers:v14];

  v15 = *MEMORY[0x1E69E9840];
}

void __51__RPStreamSession__updateTrafficRegistrationForIP___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 176);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__RPStreamSession__updateTrafficRegistrationForIP___block_invoke_2;
  block[3] = &unk_1E7C92CE8;
  block[4] = v1;
  dispatch_async(v2, block);
}

void __51__RPStreamSession__updateTrafficRegistrationForIP___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 256);
  v4 = [*(v2 + 128) wifiFlags];
  v5 = v3 & 0xFFFFFFFFF9FFFFFFLL | (v4 << 19) & 0x2000000 | (v4 << 19) & 0x4000000;
  if (v5 != v3)
  {
    *(*(a1 + 32) + 256) = v5;
    if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v6 = _Block_copy(*(*(a1 + 32) + 248));
    if (v6)
    {
      v10 = v6;
      (*(v6 + 2))(v6, v7, v8, v9);
      v6 = v10;
    }
  }
}

- (void)_updateTrafficRegistrationForDestination:(id)destination
{
  destinationCopy = destination;
  memset(v5, 0, 28);
  [destinationCopy UTF8String];
  if (StringToSockAddr())
  {
    if (gLogCategory_RPStreamSession <= 90 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {
    self->_peerIP.sa = v5[0];
    *(&self->_peerIP.v6.sin6_addr + 4) = *(v5 + 12);
    [(RPStreamSession *)self _updateTrafficRegistration];
  }
}

- (int)flowControlWriteState
{
  rpCnx = self->_rpCnx;
  if (rpCnx)
  {
    flowControlWriteState = [(RPConnection *)rpCnx flowControlWriteState];
    if (flowControlWriteState == 10)
    {
      LODWORD(rpCnx) = 1;
    }

    else
    {
      LODWORD(rpCnx) = 2 * (flowControlWriteState == 20);
    }
  }

  return rpCnx;
}

- (uint64_t)_startServerConnectionAndReturnError:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = *(a1 + 148);
  if (v1 <= 3)
  {
    v2 = off_1E7C95240[v1];
  }

  *(a1 + 296);
  v5 = *(a1 + 144);
  v4 = *(a1 + 264);
  return LogPrintF();
}

- (uint64_t)_invalidate
{
  v1 = *(self + 148);
  if (v1 <= 3)
  {
    v2 = off_1E7C95240[v1];
  }

  v4 = *(self + 264);
  return LogPrintF();
}

- (uint64_t)_invalidated
{
  v1 = *(self + 148);
  if (v1 <= 3)
  {
    v2 = off_1E7C95240[v1];
  }

  v4 = *(self + 264);
  return LogPrintF();
}

uint64_t __55__RPStreamSession__clientUDPNWPathStartWithCompletion___block_invoke_86_cold_2(uint64_t result, uint64_t *a2)
{
  v3 = result;
  if (gLogCategory_RPStreamSession <= 90)
  {
    if (gLogCategory_RPStreamSession != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *a2 = v3;
  return result;
}

void __72__RPStreamSession__serverUDPNWPathStartRequest_options_responseHandler___block_invoke_2_cold_2()
{
  if (gLogCategory_RPStreamSession <= 90 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
  {

    LogPrintF();
  }
}

- (uint64_t)_clientUDPSocketStartWithCompletion:(_DWORD *)a3 .cold.2(uint64_t a1, unsigned int *a2, _DWORD *a3)
{
  v3 = *(a1 + 148);
  if (v3 <= 3)
  {
    v4 = off_1E7C95240[v3];
  }

  switch(*a3)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
      break;
    default:
      *a3;
      break;
  }

  v7 = *a2;
  v6 = *(a1 + 264);
  return LogPrintF();
}

- (uint64_t)_clientUDPSocketStartResponse:(uint64_t)a1 options:completion:.cold.3(uint64_t a1)
{
  v1 = *(a1 + 148);
  if (v1 <= 3)
  {
    v2 = off_1E7C95240[v1];
  }

  v4 = *(a1 + 264);
  return LogPrintF();
}

- (uint64_t)_serverUDPSocketStartRequest:(uint64_t)a1 options:responseHandler:.cold.5(uint64_t a1)
{
  v1 = *(a1 + 148);
  if (v1 <= 3)
  {
    v2 = off_1E7C95240[v1];
  }

  v5 = *(a1 + 240);
  v4 = *(a1 + 264);
  return LogPrintF();
}

- (uint64_t)_clientRPConnectionPrepareWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = *(a1 + 148);
  if (v1 <= 3)
  {
    v2 = off_1E7C95240[v1];
  }

  v4 = *(a1 + 264);
  return LogPrintF();
}

- (uint64_t)_clientRPConnectionStartWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = *(a1 + 148);
  if (v1 <= 3)
  {
    v2 = off_1E7C95240[v1];
  }

  v5 = *(a1 + 288);
  v6 = *(a1 + 92);
  v4 = *(a1 + 264);
  return LogPrintF();
}

- (uint64_t)_getSockAddrInterfaceType:.cold.1()
{
  if (gLogCategory_RPStreamSession <= 90)
  {
    if (gLogCategory_RPStreamSession != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

- (uint64_t)_getSockAddrInterfaceType:.cold.2()
{
  if (gLogCategory_RPStreamSession <= 90)
  {
    if (gLogCategory_RPStreamSession != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

- (uint64_t)_getSockAddrInterfaceType:.cold.3()
{
  if (gLogCategory_RPStreamSession <= 90)
  {
    if (gLogCategory_RPStreamSession != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

- (uint64_t)_getSockAddrInterfaceType:.cold.4()
{
  if (gLogCategory_RPStreamSession > 90)
  {
    return 1;
  }

  if (gLogCategory_RPStreamSession != -1 || (result = _LogCategory_Initialize(), result))
  {
    LogPrintF();
    return 0;
  }

  return result;
}

@end