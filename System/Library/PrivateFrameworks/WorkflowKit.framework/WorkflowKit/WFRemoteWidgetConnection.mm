@interface WFRemoteWidgetConnection
+ (id)connectionToDevice:(id)device;
+ (id)connectionToDevice:(id)device connectionType:(int64_t)type;
- (WFRemoteWidgetConnection)initWithConnectionType:(int64_t)type deviceIdentifier:(id)identifier;
- (WFRemoteWidgetConnection)initWithDeviceIdentifier:(id)identifier;
- (id)setupBrowseConnectionType:(int64_t)type deviceIdentifier:(id)identifier;
- (void)_browserDiscoveredDeviceEndpoint:(id)endpoint;
- (void)_receiveResponseOnConnection;
- (void)_sendPendingData;
- (void)_tearDownConnection;
- (void)dealloc;
- (void)invalidate;
- (void)sendData:(id)data completionHandler:(id)handler;
- (void)sendRemoteConfigurationRequest:(id)request completion:(id)completion;
@end

@implementation WFRemoteWidgetConnection

- (void)sendRemoteConfigurationRequest:(id)request completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  v8 = getWFWidgetConfigurationLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[WFRemoteWidgetConnection(ConfigurationRequest) sendRemoteConfigurationRequest:completion:]";
    v18 = 2114;
    v19 = requestCopy;
    _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_DEFAULT, "%s Sending remote widget configuration request: %{public}@", buf, 0x16u);
  }

  secureData = [requestCopy secureData];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __92__WFRemoteWidgetConnection_ConfigurationRequest__sendRemoteConfigurationRequest_completion___block_invoke;
  v13[3] = &unk_1E8378908;
  v14 = requestCopy;
  v15 = completionCopy;
  v10 = requestCopy;
  v11 = completionCopy;
  [(WFRemoteWidgetConnection *)self sendData:secureData completionHandler:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __92__WFRemoteWidgetConnection_ConfigurationRequest__sendRemoteConfigurationRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) responseClass];
    v5 = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = NSStringFromClass(v4);
      v11 = 136315650;
      v12 = "[WFRemoteWidgetConnection(ConfigurationRequest) sendRemoteConfigurationRequest:completion:]_block_invoke";
      v13 = 2114;
      v14 = v6;
      v15 = 2114;
      v16 = v3;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEFAULT, "%s Received response class: %{public}@, with data: %{public}@", &v11, 0x20u);
    }

    v7 = [(objc_class *)v4 fromSecureData:v3];
    v8 = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "[WFRemoteWidgetConnection(ConfigurationRequest) sendRemoteConfigurationRequest:completion:]_block_invoke";
      v13 = 2114;
      v14 = v7;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_DEFAULT, "%s Turned data into response: %{public}@", &v11, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "[WFRemoteWidgetConnection(ConfigurationRequest) sendRemoteConfigurationRequest:completion:]_block_invoke";
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_ERROR, "%s Recevied nil data. Completing with a nil response", &v11, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_receiveResponseOnConnection
{
  objc_initWeak(&location, self);
  connection = [(WFRemoteWidgetConnection *)self connection];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__WFRemoteWidgetConnection__receiveResponseOnConnection__block_invoke;
  v4[3] = &unk_1E837A778;
  objc_copyWeak(&v5, &location);
  nw_connection_receive_message(connection, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __56__WFRemoteWidgetConnection__receiveResponseOnConnection__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v10 = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v20 = 136315138;
      v21 = "[WFRemoteWidgetConnection _receiveResponseOnConnection]_block_invoke";
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_INFO, "%s Remote widget incoming connection received message", &v20, 0xCu);
    }

    if (v8)
    {
      v11 = getWFWidgetConfigurationLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        v20 = 136315394;
        v21 = "[WFRemoteWidgetConnection _receiveResponseOnConnection]_block_invoke";
        v22 = 2112;
        v23 = v8;
        _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_FAULT, "%s Remote widget incoming connection got error receiving data %@", &v20, 0x16u);
      }

      [WeakRetained _tearDownConnection];
    }

    else
    {
      if (v7)
      {
        v12 = v7;
        v13 = getWFWidgetConfigurationLogObject();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = [v12 length];
          v20 = 136315394;
          v21 = "[WFRemoteWidgetConnection _receiveResponseOnConnection]_block_invoke";
          v22 = 2048;
          v23 = v14;
          _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_INFO, "%s Remote widget incoming connection received message; sending data via completion handler. Data is of size: %lu", &v20, 0x16u);
        }

        v15 = [WeakRetained completionHandlers];
        v16 = [v15 objectAtIndex:0];

        v17 = getWFWidgetConfigurationLogObject();
        v18 = v17;
        if (v16)
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v20 = 136315138;
            v21 = "[WFRemoteWidgetConnection _receiveResponseOnConnection]_block_invoke";
            _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_INFO, "%s Calling the completion handler with data", &v20, 0xCu);
          }

          (v16)[2](v16, v12, 0);
          v18 = [WeakRetained completionHandlers];
          [v18 removeObjectAtIndex:0];
        }

        else if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          v20 = 136315138;
          v21 = "[WFRemoteWidgetConnection _receiveResponseOnConnection]_block_invoke";
          _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_FAULT, "%s Could not find completion handler for incoming response. Dropping data...", &v20, 0xCu);
        }
      }

      else
      {
        v12 = getWFWidgetConfigurationLogObject();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v20 = 136315394;
          v21 = "[WFRemoteWidgetConnection _receiveResponseOnConnection]_block_invoke";
          v22 = 2112;
          v23 = 0;
          _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_ERROR, "%s Remote widget incoming connection got error receiving data %@", &v20, 0x16u);
        }
      }

      [WeakRetained _receiveResponseOnConnection];
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)sendData:(id)data completionHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  handlerCopy = handler;
  if ([(WFRemoteWidgetConnection *)self invalidated])
  {
    v8 = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v28 = "[WFRemoteWidgetConnection sendData:completionHandler:]";
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_ERROR, "%s Trying to send on a remote widget connection that's invalidated", buf, 0xCu);
    }

    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFRemoteWidgetConnectionErrorDomain" code:1 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v9);
  }

  else if ([(WFRemoteWidgetConnection *)self isConnectedToDevice]&& ([(WFRemoteWidgetConnection *)self connection], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    v24 = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v28 = "[WFRemoteWidgetConnection sendData:completionHandler:]";
      _os_log_impl(&dword_1CA256000, v24, OS_LOG_TYPE_ERROR, "%s Trying to send on a remote widget connection that is disconnected", buf, 0xCu);
    }

    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFRemoteWidgetConnectionErrorDomain" code:0 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v9);
  }

  else
  {
    completionHandlers = [(WFRemoteWidgetConnection *)self completionHandlers];
    v12 = _Block_copy(handlerCopy);
    [completionHandlers addObject:v12];

    bytes = [dataCopy bytes];
    v14 = [dataCopy length];
    v9 = dispatch_data_create(bytes, v14, MEMORY[0x1E69E96A0], 0);
    connection = [(WFRemoteWidgetConnection *)self connection];
    v16 = connection == 0;

    v17 = getWFWidgetConfigurationLogObject();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (v18)
      {
        *buf = 136315138;
        v28 = "[WFRemoteWidgetConnection sendData:completionHandler:]";
        _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_DEFAULT, "%s Device not connected, waiting to send data...", buf, 0xCu);
      }

      message = [(WFRemoteWidgetConnection *)self dataToSend];
      [message addObject:v9];
    }

    else
    {
      if (v18)
      {
        *buf = 136315138;
        v28 = "[WFRemoteWidgetConnection sendData:completionHandler:]";
        _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_DEFAULT, "%s Device connected; sending data right away", buf, 0xCu);
      }

      v19 = WFRemoteWidgetFramer();
      message = nw_framer_protocol_create_message(v19);

      v21 = nw_content_context_create("Request");
      nw_content_context_set_metadata_for_protocol(v21, message);
      objc_initWeak(buf, self);
      connection2 = [(WFRemoteWidgetConnection *)self connection];
      completion[0] = MEMORY[0x1E69E9820];
      completion[1] = 3221225472;
      completion[2] = __55__WFRemoteWidgetConnection_sendData_completionHandler___block_invoke;
      completion[3] = &unk_1E837A750;
      objc_copyWeak(&v26, buf);
      nw_connection_send(connection2, v9, v21, 1, completion);

      objc_destroyWeak(&v26);
      objc_destroyWeak(buf);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __55__WFRemoteWidgetConnection_sendData_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = getWFWidgetConfigurationLogObject();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[WFRemoteWidgetConnection sendData:completionHandler:]_block_invoke";
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_ERROR, "%s There was an error sending the data.  Killing connection...", &v7, 0xCu);
    }

    [WeakRetained _tearDownConnection];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "[WFRemoteWidgetConnection sendData:completionHandler:]_block_invoke";
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_INFO, "%s Successfully sent data", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_sendPendingData
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = getWFWidgetConfigurationLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v22 = "[WFRemoteWidgetConnection _sendPendingData]";
    _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_INFO, "%s Sending pending data...", buf, 0xCu);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [(WFRemoteWidgetConnection *)self dataToSend];
  v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        objc_initWeak(buf, self);
        v8 = WFRemoteWidgetFramer();
        message = nw_framer_protocol_create_message(v8);

        v10 = nw_content_context_create("Request");
        nw_content_context_set_metadata_for_protocol(v10, message);
        connection = [(WFRemoteWidgetConnection *)self connection];
        completion[0] = MEMORY[0x1E69E9820];
        completion[1] = 3221225472;
        completion[2] = __44__WFRemoteWidgetConnection__sendPendingData__block_invoke;
        completion[3] = &unk_1E837A750;
        objc_copyWeak(&v15, buf);
        nw_connection_send(connection, v7, v10, 1, completion);

        objc_destroyWeak(&v15);
        objc_destroyWeak(buf);
        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __44__WFRemoteWidgetConnection__sendPendingData__block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = getWFWidgetConfigurationLogObject();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[WFRemoteWidgetConnection _sendPendingData]_block_invoke";
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_ERROR, "%s There was an error sending the data. Killing connection...", &v7, 0xCu);
    }

    [WeakRetained _tearDownConnection];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "[WFRemoteWidgetConnection _sendPendingData]_block_invoke";
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_INFO, "%s Successfully sent data", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_browserDiscoveredDeviceEndpoint:(id)endpoint
{
  v22 = *MEMORY[0x1E69E9840];
  endpointCopy = endpoint;
  connection = [(WFRemoteWidgetConnection *)self connection];

  if (connection)
  {
    v6 = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v21 = "[WFRemoteWidgetConnection _browserDiscoveredDeviceEndpoint:]";
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_DEFAULT, "%s Already connected to endpoint, ignoring...", buf, 0xCu);
    }
  }

  else
  {
    nwBrowser = [(WFRemoteWidgetConnection *)self nwBrowser];
    nw_browser_cancel(nwBrowser);

    connectionType = self->_connectionType;
    if (connectionType)
    {
      WFCreateBrowseParametersForConnectionType(connectionType);
    }

    else
    {
      WFCreateAdvertiseParametersForConnectionType(0);
    }
    v6 = ;
    v9 = nw_connection_create(endpointCopy, v6);
    [(WFRemoteWidgetConnection *)self setConnection:v9];

    connection2 = [(WFRemoteWidgetConnection *)self connection];
    queue = [(WFRemoteWidgetConnection *)self queue];
    nw_connection_set_queue(connection2, queue);

    objc_initWeak(&location, self);
    connection3 = [(WFRemoteWidgetConnection *)self connection];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __61__WFRemoteWidgetConnection__browserDiscoveredDeviceEndpoint___block_invoke;
    handler[3] = &unk_1E837A728;
    objc_copyWeak(&v18, &location);
    v17 = endpointCopy;
    nw_connection_set_state_changed_handler(connection3, handler);

    connection4 = [(WFRemoteWidgetConnection *)self connection];
    nw_connection_start(connection4);

    v14 = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v21 = "[WFRemoteWidgetConnection _browserDiscoveredDeviceEndpoint:]";
      _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_DEFAULT, "%s Remote widget outgoing connection created", buf, 0xCu);
    }

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __61__WFRemoteWidgetConnection__browserDiscoveredDeviceEndpoint___block_invoke(uint64_t a1, int a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if ((a2 - 4) >= 2)
    {
      if (a2 == 3)
      {
        v9 = getWFWidgetConfigurationLogObject();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 136315138;
          v14 = "[WFRemoteWidgetConnection _browserDiscoveredDeviceEndpoint:]_block_invoke";
          _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_DEFAULT, "%s Remote widget outgoing connection entered ready state.", &v13, 0xCu);
        }

        [WeakRetained setConnectedToDevice:1];
        [WeakRetained _receiveResponseOnConnection];
        [WeakRetained _sendPendingData];
      }

      else if (v5)
      {
        v10 = getWFWidgetConfigurationLogObject();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(a1 + 32);
          v13 = 136315906;
          v14 = "[WFRemoteWidgetConnection _browserDiscoveredDeviceEndpoint:]_block_invoke";
          v15 = 2112;
          v16 = v11;
          v17 = 2080;
          v18 = nw_connection_state_to_string();
          v19 = 2112;
          v20 = v5;
          _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_DEFAULT, "%s Remote widget outgoing connection to endpoint %@ entered state %s, error=%@", &v13, 0x2Au);
        }
      }
    }

    else
    {
      v7 = getWFWidgetConfigurationLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v13 = 136315906;
        v14 = "[WFRemoteWidgetConnection _browserDiscoveredDeviceEndpoint:]_block_invoke";
        v15 = 2112;
        v16 = v8;
        v17 = 2080;
        v18 = nw_connection_state_to_string();
        v19 = 2112;
        v20 = v5;
        _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_DEFAULT, "%s Remote widget outgoing connection to endpoint %@ disconnected, state=%s, error=%@", &v13, 0x2Au);
      }

      [WeakRetained _tearDownConnection];
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = getWFWidgetConfigurationLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "[WFRemoteWidgetConnection invalidate]";
    _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_DEFAULT, "%s Invalidating WFRemoteWidgetConnection", buf, 0xCu);
  }

  if ([(WFRemoteWidgetConnection *)self invalidated])
  {
    v4 = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v24 = "[WFRemoteWidgetConnection invalidate]";
      _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_DEFAULT, "%s WFRemoteWidgetConnection already invalidated", buf, 0xCu);
    }
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    completionHandlers = [(WFRemoteWidgetConnection *)self completionHandlers];
    v6 = [completionHandlers countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        v9 = 0;
        do
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(completionHandlers);
          }

          v10 = *(*(&v18 + 1) + 8 * v9);
          v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFRemoteWidgetConnectionErrorDomain" code:1 userInfo:0];
          (*(v10 + 16))(v10, 0, v11);

          ++v9;
        }

        while (v7 != v9);
        v7 = [completionHandlers countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }

    completionHandlers2 = [(WFRemoteWidgetConnection *)self completionHandlers];
    [completionHandlers2 removeAllObjects];

    nwBrowser = [(WFRemoteWidgetConnection *)self nwBrowser];

    if (nwBrowser)
    {
      nwBrowser2 = [(WFRemoteWidgetConnection *)self nwBrowser];
      nw_browser_cancel(nwBrowser2);

      [(WFRemoteWidgetConnection *)self setNwBrowser:0];
    }

    connection = [(WFRemoteWidgetConnection *)self connection];

    if (connection)
    {
      connection2 = [(WFRemoteWidgetConnection *)self connection];
      nw_connection_cancel(connection2);

      [(WFRemoteWidgetConnection *)self setConnection:0];
    }

    [(WFRemoteWidgetConnection *)self setConnectedToDevice:0];
    [(WFRemoteWidgetConnection *)self setInvalidated:1];
    [(WFRemoteWidgetConnection *)self setDataToSend:0];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_tearDownConnection
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  completionHandlers = [(WFRemoteWidgetConnection *)self completionHandlers];
  v4 = [completionHandlers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(completionHandlers);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFRemoteWidgetConnectionErrorDomain" code:0 userInfo:0];
        (*(v8 + 16))(v8, 0, v9);

        ++v7;
      }

      while (v5 != v7);
      v5 = [completionHandlers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  completionHandlers2 = [(WFRemoteWidgetConnection *)self completionHandlers];
  [completionHandlers2 removeAllObjects];

  [(WFRemoteWidgetConnection *)self invalidate];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  nwBrowser = [(WFRemoteWidgetConnection *)self nwBrowser];
  if (nwBrowser)
  {
  }

  else
  {
    connection = [(WFRemoteWidgetConnection *)self connection];

    if (!connection)
    {
      goto LABEL_7;
    }
  }

  v5 = getWFWidgetConfigurationLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v9 = "[WFRemoteWidgetConnection dealloc]";
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s WFRemoteWidgetBrowseConnection deallocated without [invalidate] being called...", buf, 0xCu);
  }

LABEL_7:
  [(WFRemoteWidgetConnection *)self invalidate];
  v7.receiver = self;
  v7.super_class = WFRemoteWidgetConnection;
  [(WFRemoteWidgetConnection *)&v7 dealloc];
  v6 = *MEMORY[0x1E69E9840];
}

- (id)setupBrowseConnectionType:(int64_t)type deviceIdentifier:(id)identifier
{
  v35 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  self->_connectionType = type;
  array = [MEMORY[0x1E695DF70] array];
  completionHandlers = self->_completionHandlers;
  self->_completionHandlers = array;

  array2 = [MEMORY[0x1E695DF70] array];
  dataToSend = self->_dataToSend;
  self->_dataToSend = array2;

  objc_storeStrong(&self->_deviceIdentifier, identifier);
  v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v13 = dispatch_queue_attr_make_with_qos_class(v12, QOS_CLASS_USER_INITIATED, 0);
  v14 = dispatch_queue_create("com.apple.shortcuts.WFRemoteWidgetConnection", v13);
  queue = self->_queue;
  self->_queue = v14;

  v16 = WFCreateBrowseParametersForConnectionType(type);
  application_service = nw_browse_descriptor_create_application_service("com.apple.workflow.remotewidgets");
  nw_browse_descriptor_set_device_types();
  nw_browse_descriptor_set_browse_scope();
  v18 = nw_browser_create(application_service, v16);
  nw_browser_set_state_changed_handler(v18, &__block_literal_global_45956);
  objc_initWeak(&location, self);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __71__WFRemoteWidgetConnection_setupBrowseConnectionType_deviceIdentifier___block_invoke_165;
  handler[3] = &unk_1E837A700;
  objc_copyWeak(&v29, &location);
  v19 = identifierCopy;
  v28 = v19;
  nw_browser_set_browse_results_changed_handler(v18, handler);
  v20 = getWFWidgetConfigurationLogObject();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v32 = "[WFRemoteWidgetConnection setupBrowseConnectionType:deviceIdentifier:]";
    v33 = 2112;
    v34 = v19;
    _os_log_impl(&dword_1CA256000, v20, OS_LOG_TYPE_DEFAULT, "%s Starting NWBrowser. Looking for device with id %@", buf, 0x16u);
  }

  nw_browser_set_queue(v18, self->_queue);
  nw_browser_start(v18);
  nwBrowser = self->_nwBrowser;
  self->_nwBrowser = v18;
  v22 = v18;

  v23 = dispatch_time(0, 20000000000);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __71__WFRemoteWidgetConnection_setupBrowseConnectionType_deviceIdentifier___block_invoke_168;
  v26[3] = &unk_1E837FA70;
  v26[4] = self;
  dispatch_after(v23, MEMORY[0x1E69E96A0], v26);

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);

  v24 = *MEMORY[0x1E69E9840];
  return self;
}

void __71__WFRemoteWidgetConnection_setupBrowseConnectionType_deviceIdentifier___block_invoke_165(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (v4 && WeakRetained)
  {
    v7 = nw_browse_result_copy_endpoint(v4);
    if (v7)
    {
      device_id = nw_endpoint_get_device_id();
      if (device_id)
      {
        v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:device_id encoding:4];
        v10 = getWFWidgetConfigurationLogObject();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136315394;
          v13 = "[WFRemoteWidgetConnection setupBrowseConnectionType:deviceIdentifier:]_block_invoke";
          v14 = 2112;
          v15 = v9;
          _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_DEFAULT, "%s Discovered device with id %@", &v12, 0x16u);
        }

        if ([v9 isEqualToString:*(a1 + 32)])
        {
          [v6 _browserDiscoveredDeviceEndpoint:v7];
        }
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __71__WFRemoteWidgetConnection_setupBrowseConnectionType_deviceIdentifier___block_invoke_168(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) connectionTimeoutHandler];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) isConnectedToDevice];

    if ((v4 & 1) == 0)
    {
      v5 = getWFWidgetConfigurationLogObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v22 = "[WFRemoteWidgetConnection setupBrowseConnectionType:deviceIdentifier:]_block_invoke";
        _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_ERROR, "%s Timed out establishing connection to the target remote device", buf, 0xCu);
      }

      v6 = [*(a1 + 32) connectionTimeoutHandler];
      v6[2]();

      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v7 = [*(a1 + 32) completionHandlers];
      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v17;
        do
        {
          v11 = 0;
          do
          {
            if (*v17 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v16 + 1) + 8 * v11);
            v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFRemoteWidgetConnectionErrorDomain" code:3 userInfo:0];
            (*(v12 + 16))(v12, 0, v13);

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v9);
      }

      v14 = [*(a1 + 32) completionHandlers];
      [v14 removeAllObjects];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __71__WFRemoteWidgetConnection_setupBrowseConnectionType_deviceIdentifier___block_invoke(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "[WFRemoteWidgetConnection setupBrowseConnectionType:deviceIdentifier:]_block_invoke";
      v6 = "%s Browser state change returned an error!";
      v7 = v5;
      v8 = OS_LOG_TYPE_ERROR;
LABEL_7:
      _os_log_impl(&dword_1CA256000, v7, v8, v6, &v10, 0xCu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (a2 == 1)
  {
    v5 = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "[WFRemoteWidgetConnection setupBrowseConnectionType:deviceIdentifier:]_block_invoke";
      v6 = "%s Remote Widget browser entered the ready state.";
      v7 = v5;
      v8 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_7;
    }

LABEL_8:
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (WFRemoteWidgetConnection)initWithDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = WFRemoteWidgetConnection;
  v5 = [(WFRemoteWidgetConnection *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(WFRemoteWidgetConnection *)v5 setupBrowseConnectionType:0 deviceIdentifier:identifierCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (WFRemoteWidgetConnection)initWithConnectionType:(int64_t)type deviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = WFRemoteWidgetConnection;
  v7 = [(WFRemoteWidgetConnection *)&v11 init];
  v8 = v7;
  if (v7)
  {
    v9 = [(WFRemoteWidgetConnection *)v7 setupBrowseConnectionType:type deviceIdentifier:identifierCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)connectionToDevice:(id)device connectionType:(int64_t)type
{
  deviceCopy = device;
  v6 = [[WFRemoteWidgetConnection alloc] initWithConnectionType:type deviceIdentifier:deviceCopy];

  return v6;
}

+ (id)connectionToDevice:(id)device
{
  deviceCopy = device;
  v4 = [[WFRemoteWidgetConnection alloc] initWithConnectionType:0 deviceIdentifier:deviceCopy];

  return v4;
}

@end