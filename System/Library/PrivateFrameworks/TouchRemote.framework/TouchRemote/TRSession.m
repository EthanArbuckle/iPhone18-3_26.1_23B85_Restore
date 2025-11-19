@interface TRSession
- (BOOL)isConnected;
- (TRConnection)connection;
- (TRSession)init;
- (TRSession)initWithNearbyDevice:(id)a3;
- (id)_messageHandlerForMessageClass:(Class)a3;
- (void)_handleEvent:(id)a3;
- (void)_handleHeartbeatWithResponseHandler:(id)a3;
- (void)_handleRequest:(id)a3;
- (void)_respondToRequest:(id)a3 withError:(id)a4;
- (void)_sendHeartbeats;
- (void)_sendResponse:(id)a3 forRequest:(id)a4;
- (void)_setMessageHandler:(id)a3 forMessageClass:(Class)a4;
- (void)disconnect;
- (void)sendEvent:(id)a3;
- (void)sendHeartbeatWithResponseHandler:(id)a3;
- (void)sendRequest:(id)a3 withResponseHandler:(id)a4;
- (void)setConnection:(id)a3;
- (void)setEventHandler:(id)a3 forEventClass:(Class)a4;
- (void)setRequestHandler:(id)a3 forRequestClass:(Class)a4;
@end

@implementation TRSession

- (TRSession)init
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"-init is not a valid initializer for the class %@", v4];

  v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:v5 userInfo:0];
  objc_exception_throw(v6);
}

- (TRSession)initWithNearbyDevice:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = TRSession;
  v6 = [(TRSession *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_nearbyDevice, a3);
    v8 = [MEMORY[0x277CBEB38] dictionary];
    messageHandlerMap = v7->_messageHandlerMap;
    v7->_messageHandlerMap = v8;

    v10 = MEMORY[0x277D85CD8];
    v11 = dispatch_queue_create("com.apple.TRSession.messageHandlerMapQ", MEMORY[0x277D85CD8]);
    messageHandlerMapQ = v7->_messageHandlerMapQ;
    v7->_messageHandlerMapQ = v11;

    v13 = dispatch_queue_create("com.apple.TRSession.connectionQ", v10);
    connectionQ = v7->_connectionQ;
    v7->_connectionQ = v13;

    v15 = objc_alloc_init(TRAnisetteDataHandler);
    anisetteDataHandler = v7->_anisetteDataHandler;
    v7->_anisetteDataHandler = v15;

    [(TRAnisetteDataHandler *)v7->_anisetteDataHandler registerForAnisetteDataRequestsFromSession:v7];
  }

  return v7;
}

- (void)setConnection:(id)a3
{
  v4 = a3;
  connectionQ = self->_connectionQ;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __27__TRSession_setConnection___block_invoke;
  v7[3] = &unk_279DCEC20;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_async(connectionQ, v7);
}

void __27__TRSession_setConnection___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 8), *(a1 + 40));
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(*(a1 + 32) + 8);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __27__TRSession_setConnection___block_invoke_2;
  v12[3] = &unk_279DCEF68;
  objc_copyWeak(&v13, &location);
  [v2 setInvalidationHandler:v12];
  v3 = *(*(a1 + 32) + 8);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __27__TRSession_setConnection___block_invoke_2_8;
  v10[3] = &unk_279DCEF68;
  objc_copyWeak(&v11, &location);
  [v3 setInterruptionHandler:v10];
  v4 = *(*(a1 + 32) + 8);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __27__TRSession_setConnection___block_invoke_9;
  v8[3] = &unk_279DCF528;
  objc_copyWeak(&v9, &location);
  [v4 setEventMessageHandler:v8];
  v5 = *(*(a1 + 32) + 8);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __27__TRSession_setConnection___block_invoke_2_11;
  v6[3] = &unk_279DCF550;
  objc_copyWeak(&v7, &location);
  [v5 setRequestMessageHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __27__TRSession_setConnection___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (_TRLogEnabled == 1)
  {
    v2 = TRLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[TRSession setConnection:]_block_invoke_2";
      _os_log_impl(&dword_26F2A2000, v2, OS_LOG_TYPE_DEFAULT, "%s Connection invalidated", buf, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[7];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __27__TRSession_setConnection___block_invoke_6;
    block[3] = &unk_279DCEBF8;
    block[4] = v4;
    dispatch_barrier_async(v5, block);
    v6 = [v4 heartbeatRequestTimer];
    v7 = v6;
    if (v6)
    {
      dispatch_source_cancel(v6);
      [v4 setHeartbeatRequestTimer:0];
    }

    v8 = [v4 disconnectHandler];
    v9 = v8;
    if (v8)
    {
      (*(v8 + 16))(v8);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __27__TRSession_setConnection___block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  *(v1 + 8) = 0;
}

void __27__TRSession_setConnection___block_invoke_2_8(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (_TRLogEnabled == 1)
  {
    v2 = TRLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[TRSession setConnection:]_block_invoke_2";
      _os_log_impl(&dword_26F2A2000, v2, OS_LOG_TYPE_DEFAULT, "%s Connection interrupted", &v5, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained disconnect];

  v4 = *MEMORY[0x277D85DE8];
}

void __27__TRSession_setConnection___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleEvent:v3];
}

void __27__TRSession_setConnection___block_invoke_2_11(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleRequest:v3];
}

- (TRConnection)connection
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  connectionQ = self->_connectionQ;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __23__TRSession_connection__block_invoke;
  v5[3] = &unk_279DCF578;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(connectionQ, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)isConnected
{
  v2 = [(TRSession *)self connection];
  v3 = v2 != 0;

  return v3;
}

- (void)disconnect
{
  v14 = *MEMORY[0x277D85DE8];
  if (_TRLogEnabled == 1)
  {
    v3 = TRLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(TRSession *)self nearbyDevice];
      v5 = [v4 identifier];
      *buf = 136315394;
      v11 = "[TRSession disconnect]";
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_26F2A2000, v3, OS_LOG_TYPE_DEFAULT, "%s Disconnect from device %@", buf, 0x16u);
    }
  }

  messageHandlerMapQ = self->_messageHandlerMapQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __23__TRSession_disconnect__block_invoke;
  block[3] = &unk_279DCEBF8;
  block[4] = self;
  dispatch_barrier_async(messageHandlerMapQ, block);
  v7 = [(TRSession *)self connection];
  [v7 invalidate];

  v8 = *MEMORY[0x277D85DE8];
}

void __23__TRSession_disconnect__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  *(v1 + 32) = 0;
}

- (void)sendEvent:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [TRMessageEncoder encodeMessage:v4];
  if (_TRLogEnabled == 1)
  {
    v6 = TRLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v14 = 136315650;
      v15 = "[TRSession sendEvent:]";
      v16 = 2112;
      v17 = v8;
      v18 = 2048;
      v19 = [v5 length];
      _os_log_impl(&dword_26F2A2000, v6, OS_LOG_TYPE_DEFAULT, "%s Sending event of class %@ (%lu bytes).", &v14, 0x20u);
    }
  }

  v9 = [(TRSession *)self connection];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277D54CA8]);
    [v10 setBodyData:v5];
    v11 = [(TRSession *)self nearbyDevice];
    v12 = [v11 representedDevice];
    [v10 setPeerDevice:v12];

    [v9 sendEvent:v10];
  }

  else
  {
    if (_TRLogEnabled != 1)
    {
      goto LABEL_8;
    }

    v10 = TRLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315138;
      v15 = "[TRSession sendEvent:]";
      _os_log_impl(&dword_26F2A2000, v10, OS_LOG_TYPE_DEFAULT, "%s Unable to send event message. Session not connected.", &v14, 0xCu);
    }
  }

LABEL_8:
  v13 = *MEMORY[0x277D85DE8];
}

- (void)sendRequest:(id)a3 withResponseHandler:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [TRMessageEncoder encodeMessage:v6];
  if (_TRLogEnabled == 1)
  {
    v9 = TRLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 136315650;
      v27 = "[TRSession sendRequest:withResponseHandler:]";
      v28 = 2112;
      v29 = v11;
      v30 = 2048;
      v31 = [v8 length];
      _os_log_impl(&dword_26F2A2000, v9, OS_LOG_TYPE_DEFAULT, "%s Sending request of class %@ (%lu bytes).", buf, 0x20u);
    }
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __45__TRSession_sendRequest_withResponseHandler___block_invoke;
  v22[3] = &unk_279DCF5A0;
  v12 = v7;
  v23 = v12;
  v13 = MEMORY[0x27438C490](v22);
  v14 = [(TRSession *)self connection];
  if (v14)
  {
    v15 = objc_alloc_init(MEMORY[0x277D54CD0]);
    [v15 setBodyData:v8];
    [v15 setResponseHandler:v13];
    v16 = [(TRSession *)self nearbyDevice];
    v17 = [v16 representedDevice];
    [v15 setPeerDevice:v17];

    [v14 sendRequest:v15];
  }

  else
  {
    if (_TRLogEnabled == 1)
    {
      v18 = TRLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v27 = "[TRSession sendRequest:withResponseHandler:]";
        _os_log_impl(&dword_26F2A2000, v18, OS_LOG_TYPE_DEFAULT, "%s Unable to send request message. Session not connected.", buf, 0xCu);
      }
    }

    v19 = *MEMORY[0x277CCA470];
    v24[0] = *MEMORY[0x277CCA450];
    v24[1] = v19;
    v25[0] = @"Unable to send request message.";
    v25[1] = @"The session must be connected before sending messages";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
    v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-9101 userInfo:v15];
    (*(v12 + 2))(v12, v20, 0);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __45__TRSession_sendRequest_withResponseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v47[3] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v14 = [v6 bodyData];
    v37 = 0;
    v15 = [TRMessageDecoder decodeMessage:v14 error:&v37];
    v9 = v37;

    if (v15)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (_TRLogEnabled == 1)
        {
          v24 = TRLogHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = objc_opt_class();
            v26 = NSStringFromClass(v25);
            *buf = 136315650;
            v41 = "[TRSession sendRequest:withResponseHandler:]_block_invoke";
            v42 = 2112;
            v43 = v26;
            v44 = 2112;
            v45 = v15;
            _os_log_impl(&dword_26F2A2000, v24, OS_LOG_TYPE_DEFAULT, "%s Decoded something other than a subclass of %@: %@", buf, 0x20u);
          }
        }

        v27 = *MEMORY[0x277CCA450];
        v39[0] = @"Invalid response message class.";
        v28 = *MEMORY[0x277CCA470];
        v38[0] = v27;
        v38[1] = v28;
        v29 = MEMORY[0x277CCACA8];
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v32 = objc_opt_class();
        v33 = NSStringFromClass(v32);
        v34 = [v29 stringWithFormat:@"Decoded class is not a subclass of %@: %@.", v31, v33];
        v39[1] = v34;
        v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];

        v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-9201 userInfo:v35];

        (*(*(a1 + 32) + 16))();
        goto LABEL_27;
      }

      if (_TRLogEnabled == 1)
      {
        v16 = TRLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = objc_opt_class();
          v18 = NSStringFromClass(v17);
          v19 = [v7 bodyData];
          v20 = [v19 length];
          *buf = 136315650;
          v41 = "[TRSession sendRequest:withResponseHandler:]_block_invoke";
          v42 = 2112;
          v43 = v18;
          v44 = 2048;
          v45 = v20;
          _os_log_impl(&dword_26F2A2000, v16, OS_LOG_TYPE_DEFAULT, "%s Received response message of class: %@ (%lu bytes).", buf, 0x20u);
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = [v15 error];

        (*(*(a1 + 32) + 16))();
LABEL_27:
        v9 = v21;
LABEL_30:

        goto LABEL_31;
      }

      v23 = *(*(a1 + 32) + 16);
    }

    else
    {
      if (_TRLogEnabled == 1)
      {
        v22 = TRLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v41 = "[TRSession sendRequest:withResponseHandler:]_block_invoke";
          v42 = 2112;
          v43 = v9;
          _os_log_impl(&dword_26F2A2000, v22, OS_LOG_TYPE_DEFAULT, "%s Failed to decode response message: %@", buf, 0x16u);
        }
      }

      v23 = *(*(a1 + 32) + 16);
    }

    v23();
    goto LABEL_30;
  }

  if (_TRLogEnabled == 1)
  {
    v8 = TRLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v41 = "[TRSession sendRequest:withResponseHandler:]_block_invoke";
      v42 = 2112;
      v43 = v5;
      _os_log_impl(&dword_26F2A2000, v8, OS_LOG_TYPE_DEFAULT, "%s Received empty response with error: %@", buf, 0x16u);
    }
  }

  v9 = v5;
  v10 = [v9 domain];

  if (v10 != @"TRNearbyDeviceErrorDomain")
  {
    v11 = *MEMORY[0x277CCA470];
    v46[0] = *MEMORY[0x277CCA450];
    v46[1] = v11;
    v47[0] = @"Communication failure.";
    v47[1] = @"Received an error in response to a request.";
    v46[2] = *MEMORY[0x277CCA7E8];
    v47[2] = v9;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:3];
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-9104 userInfo:v12];

    v9 = v13;
  }

  (*(*(a1 + 32) + 16))();
LABEL_31:

  v36 = *MEMORY[0x277D85DE8];
}

- (void)_sendResponse:(id)a3 forRequest:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [TRMessageEncoder encodeMessage:v6];
  if (_TRLogEnabled == 1)
  {
    v9 = TRLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v15 = 136315650;
      v16 = "[TRSession _sendResponse:forRequest:]";
      v17 = 2112;
      v18 = v11;
      v19 = 2048;
      v20 = [v8 length];
      _os_log_impl(&dword_26F2A2000, v9, OS_LOG_TYPE_DEFAULT, "%s Sending response of class %@ (%lu bytes).", &v15, 0x20u);
    }
  }

  v12 = [objc_alloc(MEMORY[0x277D54CD8]) initWithRequestMessage:v7];

  [v12 setBodyData:v8];
  v13 = [(TRSession *)self connection];
  [v13 sendResponse:v12];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_respondToRequest:(id)a3 withError:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(TRErrorResponse);
  [(TRErrorResponse *)v8 setError:v6];

  [(TRSession *)self _sendResponse:v8 forRequest:v7];
}

- (void)_handleEvent:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 bodyData];
  v20 = 0;
  v6 = [TRMessageDecoder decodeMessage:v5 error:&v20];
  v7 = v20;

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (_TRLogEnabled == 1)
      {
        v8 = TRLogHandle();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = objc_opt_class();
          v10 = NSStringFromClass(v9);
          v11 = [v4 bodyData];
          v12 = [v11 length];
          *buf = 136315650;
          v22 = "[TRSession _handleEvent:]";
          v23 = 2112;
          v24 = v10;
          v25 = 2048;
          v26 = v12;
          _os_log_impl(&dword_26F2A2000, v8, OS_LOG_TYPE_DEFAULT, "%s Received event message of class: %@ (%lu bytes).", buf, 0x20u);
        }
      }

      v13 = [(TRSession *)self _handlerForEventClass:objc_opt_class()];
      v14 = v13;
      if (v13)
      {
        (*(v13 + 16))(v13, v6);
LABEL_19:

        goto LABEL_20;
      }

      if (_TRLogEnabled != 1)
      {
        goto LABEL_19;
      }

      v16 = TRLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        *buf = 136315394;
        v22 = "[TRSession _handleEvent:]";
        v23 = 2112;
        v24 = v18;
        _os_log_impl(&dword_26F2A2000, v16, OS_LOG_TYPE_DEFAULT, "%s No handler registered for message class: %@", buf, 0x16u);
      }

LABEL_18:

      goto LABEL_19;
    }

    if (_TRLogEnabled == 1)
    {
      v14 = TRLogHandle();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 136315650;
      v22 = "[TRSession _handleEvent:]";
      v23 = 2112;
      v24 = v16;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&dword_26F2A2000, v14, OS_LOG_TYPE_DEFAULT, "%s Unarchived something other than a subclass of %@: %@", buf, 0x20u);
      goto LABEL_18;
    }
  }

  else if (_TRLogEnabled == 1)
  {
    v14 = TRLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v22 = "[TRSession _handleEvent:]";
      v23 = 2112;
      v24 = v7;
      _os_log_impl(&dword_26F2A2000, v14, OS_LOG_TYPE_DEFAULT, "%s Failed to decode event message: %@", buf, 0x16u);
    }

    goto LABEL_19;
  }

LABEL_20:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_handleRequest:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 bodyData];
  v39 = 0;
  v6 = [TRMessageDecoder decodeMessage:v5 error:&v39];
  v7 = v39;

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (_TRLogEnabled == 1)
      {
        v8 = TRLogHandle();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = objc_opt_class();
          v10 = NSStringFromClass(v9);
          v11 = [v4 bodyData];
          v12 = [v11 length];
          *buf = 136315650;
          v43 = "[TRSession _handleRequest:]";
          v44 = 2112;
          v45 = v10;
          v46 = 2048;
          v47 = v12;
          _os_log_impl(&dword_26F2A2000, v8, OS_LOG_TYPE_DEFAULT, "%s Received request message of class: %@ (%lu bytes).", buf, 0x20u);
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __28__TRSession__handleRequest___block_invoke;
        v37[3] = &unk_279DCF5C8;
        v37[4] = self;
        v38 = v4;
        [(TRSession *)self _handleHeartbeatWithResponseHandler:v37];
      }

      else
      {
        v29 = [(TRSession *)self _handlerForRequestClass:objc_opt_class()];
        if (v29)
        {
          v35[0] = MEMORY[0x277D85DD0];
          v35[1] = 3221225472;
          v35[2] = __28__TRSession__handleRequest___block_invoke_48;
          v35[3] = &unk_279DCF5C8;
          v35[4] = self;
          v36 = v4;
          (v29)[2](v29, v6, v35);
        }

        else
        {
          if (_TRLogEnabled == 1)
          {
            v30 = TRLogHandle();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v31 = objc_opt_class();
              v32 = NSStringFromClass(v31);
              *buf = 136315394;
              v43 = "[TRSession _handleRequest:]";
              v44 = 2112;
              v45 = v32;
              _os_log_impl(&dword_26F2A2000, v30, OS_LOG_TYPE_DEFAULT, "%s No handler registered for message class: %@", buf, 0x16u);
            }
          }

          v33 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-9001 userInfo:0];
          [(TRSession *)self _respondToRequest:v4 withError:v33];
        }
      }
    }

    else
    {
      if (_TRLogEnabled == 1)
      {
        v14 = TRLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = objc_opt_class();
          v16 = NSStringFromClass(v15);
          v17 = objc_opt_class();
          v18 = NSStringFromClass(v17);
          *buf = 136315650;
          v43 = "[TRSession _handleRequest:]";
          v44 = 2112;
          v45 = v16;
          v46 = 2112;
          v47 = v18;
          _os_log_impl(&dword_26F2A2000, v14, OS_LOG_TYPE_DEFAULT, "%s Decoded something other than a subclass of %@: %@", buf, 0x20u);
        }
      }

      v19 = *MEMORY[0x277CCA450];
      v41[0] = @"Unknown message decoded.";
      v20 = *MEMORY[0x277CCA470];
      v40[0] = v19;
      v40[1] = v20;
      v21 = MEMORY[0x277CCACA8];
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v26 = [v21 stringWithFormat:@"Decoded class is not a subclass of %@: %@.", v23, v25];
      v41[1] = v26;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];

      v28 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-9200 userInfo:v27];

      [(TRSession *)self _respondToRequest:v4 withError:v28];
      v7 = v28;
    }
  }

  else
  {
    if (_TRLogEnabled == 1)
    {
      v13 = TRLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v43 = "[TRSession _handleRequest:]";
        v44 = 2112;
        v45 = v7;
        _os_log_impl(&dword_26F2A2000, v13, OS_LOG_TYPE_DEFAULT, "%s Failed to decode request message: %@", buf, 0x16u);
      }
    }

    [(TRSession *)self _respondToRequest:v4 withError:v7];
  }

  v34 = *MEMORY[0x277D85DE8];
}

uint64_t __28__TRSession__handleRequest___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    return [v4 _sendResponse:a3 forRequest:*(a1 + 40)];
  }

  else
  {
    return [v4 _respondToRequest:*(a1 + 40) withError:a2];
  }
}

uint64_t __28__TRSession__handleRequest___block_invoke_48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    return [v4 _sendResponse:a3 forRequest:*(a1 + 40)];
  }

  else
  {
    return [v4 _respondToRequest:*(a1 + 40) withError:a2];
  }
}

- (void)setEventHandler:(id)a3 forEventClass:(Class)a4
{
  v12 = a3;
  if (([(objc_class *)a4 isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v7 stringWithFormat:@"msgClass must be a subclass of %@", v9];

    v11 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v10 userInfo:0];
    objc_exception_throw(v11);
  }

  v6 = MEMORY[0x27438C490](v12);
  [(TRSession *)self _setMessageHandler:v6 forMessageClass:a4];
}

- (void)setRequestHandler:(id)a3 forRequestClass:(Class)a4
{
  v12 = a3;
  if (([(objc_class *)a4 isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v7 stringWithFormat:@"msgClass must be a subclass of %@", v9];

    v11 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v10 userInfo:0];
    objc_exception_throw(v11);
  }

  v6 = MEMORY[0x27438C490](v12);
  [(TRSession *)self _setMessageHandler:v6 forMessageClass:a4];
}

- (void)_setMessageHandler:(id)a3 forMessageClass:(Class)a4
{
  v6 = a3;
  messageHandlerMapQ = self->_messageHandlerMapQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__TRSession__setMessageHandler_forMessageClass___block_invoke;
  block[3] = &unk_279DCF5F0;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_barrier_async(messageHandlerMapQ, block);
}

void __48__TRSession__setMessageHandler_forMessageClass___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v4 = [*(a1 + 40) copy];
  v3 = NSStringFromClass(*(a1 + 48));
  [v2 setObject:v4 forKey:v3];
}

- (id)_messageHandlerForMessageClass:(Class)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  messageHandlerMapQ = self->_messageHandlerMapQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__TRSession__messageHandlerForMessageClass___block_invoke;
  block[3] = &unk_279DCF618;
  block[4] = self;
  block[5] = &v7;
  block[6] = a3;
  dispatch_sync(messageHandlerMapQ, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __44__TRSession__messageHandlerForMessageClass___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v6 = NSStringFromClass(*(a1 + 48));
  v3 = [v2 objectForKey:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)_sendHeartbeats
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __28__TRSession__sendHeartbeats__block_invoke;
  v2[3] = &unk_279DCF640;
  v2[4] = self;
  [(TRSession *)self sendHeartbeatWithResponseHandler:v2];
}

void __28__TRSession__sendHeartbeats__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v8 = *(a1 + 32);
    goto LABEL_6;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = *(a1 + 32);
  if ((isKindOfClass & 1) == 0)
  {
LABEL_6:
    [v8 disconnect];
    goto LABEL_7;
  }

  if ([v8 isConnected])
  {
    objc_initWeak(&location, *(a1 + 32));
    v9 = dispatch_time(0, 5000000000);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __28__TRSession__sendHeartbeats__block_invoke_2;
    v10[3] = &unk_279DCEF68;
    objc_copyWeak(&v11, &location);
    dispatch_after(v9, MEMORY[0x277D85CD0], v10);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

LABEL_7:
}

void __28__TRSession__sendHeartbeats__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _sendHeartbeats];
}

- (void)sendHeartbeatWithResponseHandler:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(0, 0);
  v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v5);

  v7 = dispatch_time(0, 25000000000);
  dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  objc_initWeak(&location, self);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __46__TRSession_sendHeartbeatWithResponseHandler___block_invoke;
  handler[3] = &unk_279DCF668;
  v8 = v6;
  v17 = v8;
  objc_copyWeak(&v19, &location);
  v9 = v4;
  v18 = v9;
  dispatch_source_set_event_handler(v8, handler);
  dispatch_resume(v8);
  v10 = objc_alloc_init(TRHeartbeatRequest);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __46__TRSession_sendHeartbeatWithResponseHandler___block_invoke_54;
  v13[3] = &unk_279DCF368;
  v11 = v8;
  v14 = v11;
  v12 = v9;
  v15 = v12;
  [(TRSession *)self sendRequest:v10 withResponseHandler:v13];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __46__TRSession_sendHeartbeatWithResponseHandler___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  dispatch_source_cancel(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (_TRLogEnabled == 1)
    {
      v3 = TRLogHandle();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315394;
        v7 = "[TRSession sendHeartbeatWithResponseHandler:]_block_invoke";
        v8 = 2048;
        v9 = 0x4039000000000000;
        _os_log_impl(&dword_26F2A2000, v3, OS_LOG_TYPE_DEFAULT, "%s Failed to receive heartbeat response within %f seconds.", &v6, 0x16u);
      }
    }

    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-9103 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __46__TRSession_sendHeartbeatWithResponseHandler___block_invoke_54(uint64_t a1, void *a2, void *a3)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  dispatch_source_cancel(*(a1 + 32));
  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = *MEMORY[0x277CCA450];
      v19[0] = @"Invalid response message class.";
      v8 = *MEMORY[0x277CCA470];
      v18[0] = v7;
      v18[1] = v8;
      v9 = MEMORY[0x277CCACA8];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = [v9 stringWithFormat:@"Response class is not a subclass of %@: %@.", v11, v13];
      v19[1] = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-9201 userInfo:v15];

      v6 = 0;
      v5 = v16;
    }
  }

  (*(*(a1 + 40) + 16))();

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_handleHeartbeatWithResponseHandler:(id)a3
{
  v4 = a3;
  v5 = [(TRSession *)self heartbeatRequestTimer];
  v6 = v5;
  if (v5)
  {
    dispatch_source_cancel(v5);
    [(TRSession *)self setHeartbeatRequestTimer:0];
  }

  v7 = objc_alloc_init(TRHeartbeatResponse);
  v4[2](v4, 0, v7);
  v8 = dispatch_get_global_queue(0, 0);
  v9 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v8);

  v10 = dispatch_time(0, 30000000000);
  dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  objc_initWeak(&location, self);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __49__TRSession__handleHeartbeatWithResponseHandler___block_invoke;
  handler[3] = &unk_279DCF690;
  v11 = v9;
  v13 = v11;
  objc_copyWeak(&v14, &location);
  dispatch_source_set_event_handler(v11, handler);
  dispatch_resume(v11);
  [(TRSession *)self setHeartbeatRequestTimer:v11];
  objc_destroyWeak(&v14);

  objc_destroyWeak(&location);
}

void __49__TRSession__handleHeartbeatWithResponseHandler___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  dispatch_source_cancel(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (_TRLogEnabled == 1)
    {
      v3 = TRLogHandle();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315394;
        v6 = "[TRSession _handleHeartbeatWithResponseHandler:]_block_invoke";
        v7 = 2048;
        v8 = 0x403E000000000000;
        _os_log_impl(&dword_26F2A2000, v3, OS_LOG_TYPE_DEFAULT, "%s Failed to receive heartbeat request within %f seconds.", &v5, 0x16u);
      }
    }

    [WeakRetained setHeartbeatRequestTimer:0];
    [WeakRetained disconnect];
  }

  v4 = *MEMORY[0x277D85DE8];
}

@end