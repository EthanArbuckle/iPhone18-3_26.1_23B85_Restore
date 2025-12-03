@interface WFRemoteWidgetAdvertiseConnection
+ (id)startListeningForIncomingConfigurationsWithConnectionType:(int64_t)type;
- (WFRemoteWidgetAdvertiseConnection)init;
- (WFRemoteWidgetAdvertiseConnection)initWithConnectionType:(int64_t)type;
- (WFRemoteWidgetAdvertiseConnectionDelegate)delegate;
- (id)setupAdvertiseConnectionType:(int64_t)type;
- (void)_handleNewConnection:(id)connection;
- (void)_receiveRequestOnConnection:(id)connection;
- (void)_tearDownConnection:(id)connection;
- (void)dealloc;
- (void)invalidate;
@end

@implementation WFRemoteWidgetAdvertiseConnection

- (WFRemoteWidgetAdvertiseConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_receiveRequestOnConnection:(id)connection
{
  connectionCopy = connection;
  objc_initWeak(&location, self);
  completion[0] = MEMORY[0x1E69E9820];
  completion[1] = 3221225472;
  completion[2] = __65__WFRemoteWidgetAdvertiseConnection__receiveRequestOnConnection___block_invoke;
  completion[3] = &unk_1E837A818;
  objc_copyWeak(&v8, &location);
  v5 = connectionCopy;
  v7 = v5;
  nw_connection_receive_message(v5, completion);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __65__WFRemoteWidgetAdvertiseConnection__receiveRequestOnConnection___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v12 = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v31 = "[WFRemoteWidgetAdvertiseConnection _receiveRequestOnConnection:]_block_invoke";
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_INFO, "%s Remote widget outgoing connection received message", buf, 0xCu);
    }

    if (v10)
    {
      v13 = getWFWidgetConfigurationLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v31 = "[WFRemoteWidgetAdvertiseConnection _receiveRequestOnConnection:]_block_invoke";
        v32 = 2112;
        v33 = v10;
        _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_ERROR, "%s Remote widget outgoing connection got error receiving data %@", buf, 0x16u);
      }

      [WeakRetained _tearDownConnection:*(a1 + 32)];
    }

    else
    {
      if (!v8)
      {
        v14 = getWFWidgetConfigurationLogObject();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v31 = "[WFRemoteWidgetAdvertiseConnection _receiveRequestOnConnection:]_block_invoke";
          _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_ERROR, "%s Remote widget outgoing connection received message; no data", buf, 0xCu);
        }
      }

      v15 = [WeakRetained delegate];
      v16 = v15 == 0;

      if (v16)
      {
        v17 = getWFWidgetConfigurationLogObject();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v31 = "[WFRemoteWidgetAdvertiseConnection _receiveRequestOnConnection:]_block_invoke";
          _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_ERROR, "%s Remote widget outgoing connection received message; no listener delegate", buf, 0xCu);
        }
      }

      if (v8)
      {
        v18 = [WeakRetained delegate];
        v19 = v18 == 0;

        if (!v19)
        {
          v20 = v8;
          v21 = getWFWidgetConfigurationLogObject();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v31 = "[WFRemoteWidgetAdvertiseConnection _receiveRequestOnConnection:]_block_invoke";
            _os_log_impl(&dword_1CA256000, v21, OS_LOG_TYPE_INFO, "%s Remote widget outgoing connection received message; informing listener delegate", buf, 0xCu);
          }

          v22 = [WeakRetained delegate];
          v24 = MEMORY[0x1E69E9820];
          v25 = 3221225472;
          v26 = __65__WFRemoteWidgetAdvertiseConnection__receiveRequestOnConnection___block_invoke_266;
          v27 = &unk_1E837A7F0;
          v28 = *(a1 + 32);
          objc_copyWeak(&v29, (a1 + 40));
          [v22 remoteWidgetConnection:WeakRetained didReceiveData:v20 responseHandler:&v24];

          objc_destroyWeak(&v29);
        }
      }

      [WeakRetained _receiveRequestOnConnection:{*(a1 + 32), v24, v25, v26, v27}];
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __65__WFRemoteWidgetAdvertiseConnection__receiveRequestOnConnection___block_invoke_266(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getWFWidgetConfigurationLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v21 = "[WFRemoteWidgetAdvertiseConnection _receiveRequestOnConnection:]_block_invoke";
    _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_INFO, "%s Received a response from the listener delegate", buf, 0xCu);
  }

  v5 = getWFWidgetConfigurationLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v3 length];
    *buf = 136315394;
    v21 = "[WFRemoteWidgetAdvertiseConnection _receiveRequestOnConnection:]_block_invoke";
    v22 = 2050;
    v23 = v6;
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_INFO, "%s Sending response data received from the listener delegate; data is of size %{public}ld", buf, 0x16u);
  }

  v7 = v3;
  v8 = [v3 bytes];
  v9 = [v3 length];
  v10 = dispatch_data_create(v8, v9, MEMORY[0x1E69E96A0], 0);
  v11 = WFRemoteWidgetFramer();
  message = nw_framer_protocol_create_message(v11);

  v13 = nw_content_context_create("Response");
  nw_content_context_set_metadata_for_protocol(v13, message);
  v15 = *(a1 + 32);
  v14 = (a1 + 32);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __65__WFRemoteWidgetAdvertiseConnection__receiveRequestOnConnection___block_invoke_268;
  v17[3] = &unk_1E837A7C8;
  objc_copyWeak(&v19, v14 + 1);
  v18 = *v14;
  nw_connection_send(v15, v10, v13, 1, v17);

  objc_destroyWeak(&v19);
  v16 = *MEMORY[0x1E69E9840];
}

void __65__WFRemoteWidgetAdvertiseConnection__receiveRequestOnConnection___block_invoke_268(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = getWFWidgetConfigurationLogObject();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "[WFRemoteWidgetAdvertiseConnection _receiveRequestOnConnection:]_block_invoke";
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_ERROR, "%s Error when sending response data %@", &v8, 0x16u);
    }

    [WeakRetained _tearDownConnection:*(a1 + 32)];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "[WFRemoteWidgetAdvertiseConnection _receiveRequestOnConnection:]_block_invoke";
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_INFO, "%s Sent response data received from the listener delegate", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_handleNewConnection:(id)connection
{
  v18 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  objc_initWeak(&location, self);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __58__WFRemoteWidgetAdvertiseConnection__handleNewConnection___block_invoke;
  handler[3] = &unk_1E837A728;
  objc_copyWeak(&v12, &location);
  v5 = connectionCopy;
  v11 = v5;
  nw_connection_set_state_changed_handler(v5, handler);
  v6 = getWFWidgetConfigurationLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "[WFRemoteWidgetAdvertiseConnection _handleNewConnection:]";
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_DEFAULT, "%s WFRemoteWidgetConnection incoming connection %@", buf, 0x16u);
  }

  queue = [(WFRemoteWidgetAdvertiseConnection *)self queue];
  nw_connection_set_queue(v5, queue);

  nw_connection_start(v5);
  connections = [(WFRemoteWidgetAdvertiseConnection *)self connections];
  [connections addObject:v5];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  v9 = *MEMORY[0x1E69E9840];
}

void __58__WFRemoteWidgetAdvertiseConnection__handleNewConnection___block_invoke(uint64_t a1, int a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ((a2 - 4) < 2)
  {
    v7 = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v21 = 136315650;
      v22 = "[WFRemoteWidgetAdvertiseConnection _handleNewConnection:]_block_invoke";
      v23 = 2112;
      v24 = v8;
      v25 = 2112;
      v26 = v5;
      v9 = "%s Incoming connection failed or was canceled. Connection=%@ Error=%@";
      v10 = v7;
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 32;
LABEL_11:
      _os_log_impl(&dword_1CA256000, v10, v11, v9, &v21, v12);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  if (a2 == 3)
  {
    v13 = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v21 = 136315394;
      v22 = "[WFRemoteWidgetAdvertiseConnection _handleNewConnection:]_block_invoke";
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_DEFAULT, "%s Incoming connection entered the ready state.  Connection=%@", &v21, 0x16u);
    }

    [WeakRetained _receiveRequestOnConnection:*(a1 + 32)];
  }

  else
  {
    v15 = getWFWidgetConfigurationLogObject();
    v7 = v15;
    if (v5)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = nw_connection_state_to_string();
        v17 = *(a1 + 32);
        v21 = 136315906;
        v22 = "[WFRemoteWidgetAdvertiseConnection _handleNewConnection:]_block_invoke";
        v23 = 2080;
        v24 = v16;
        v25 = 2112;
        v26 = v17;
        v27 = 2112;
        v28 = v5;
        v9 = "%s Incoming connection entered state %s.  Connection=%@, Error=%@";
        v10 = v7;
        v11 = OS_LOG_TYPE_ERROR;
        v12 = 42;
        goto LABEL_11;
      }

LABEL_12:

      [WeakRetained _tearDownConnection:*(a1 + 32)];
      goto LABEL_13;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v19 = nw_connection_state_to_string();
      v20 = *(a1 + 32);
      v21 = 136315650;
      v22 = "[WFRemoteWidgetAdvertiseConnection _handleNewConnection:]_block_invoke";
      v23 = 2080;
      v24 = v19;
      v25 = 2112;
      v26 = v20;
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_DEFAULT, "%s Incoming connection entered state %s.  Connection=%@", &v21, 0x20u);
    }
  }

LABEL_13:

  v18 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = getWFWidgetConfigurationLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[WFRemoteWidgetAdvertiseConnection invalidate]";
    _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_DEFAULT, "%s Invalidating WFRemoteWidgetConnection", buf, 0xCu);
  }

  if ([(WFRemoteWidgetAdvertiseConnection *)self invalidated])
  {
    v4 = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v20 = "[WFRemoteWidgetAdvertiseConnection invalidate]";
      _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_DEFAULT, "%s WFRemoteWidgetConnection already invalidated", buf, 0xCu);
    }
  }

  else
  {
    nwListener = [(WFRemoteWidgetAdvertiseConnection *)self nwListener];

    if (nwListener)
    {
      nwListener2 = [(WFRemoteWidgetAdvertiseConnection *)self nwListener];
      nw_listener_cancel(nwListener2);

      [(WFRemoteWidgetAdvertiseConnection *)self setNwListener:0];
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    connections = [(WFRemoteWidgetAdvertiseConnection *)self connections];
    v8 = [connections countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(connections);
          }

          nw_connection_cancel(*(*(&v14 + 1) + 8 * v11++));
        }

        while (v9 != v11);
        v9 = [connections countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    connections2 = [(WFRemoteWidgetAdvertiseConnection *)self connections];
    [connections2 removeAllObjects];

    [(WFRemoteWidgetAdvertiseConnection *)self setInvalidated:1];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_tearDownConnection:(id)connection
{
  connection = connection;
  connections = [(WFRemoteWidgetAdvertiseConnection *)self connections];
  [connections removeObject:connection];

  nw_connection_cancel(connection);
}

- (void)dealloc
{
  v11 = *MEMORY[0x1E69E9840];
  nwListener = [(WFRemoteWidgetAdvertiseConnection *)self nwListener];
  if (nwListener)
  {
  }

  else
  {
    connections = [(WFRemoteWidgetAdvertiseConnection *)self connections];
    v5 = [connections count];

    if (!v5)
    {
      goto LABEL_7;
    }
  }

  v6 = getWFWidgetConfigurationLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v10 = "[WFRemoteWidgetAdvertiseConnection dealloc]";
    _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_FAULT, "%s WFRemoteWidgetAdvertiseConnection deallocated without [invalidate] being called...", buf, 0xCu);
  }

LABEL_7:
  [(WFRemoteWidgetAdvertiseConnection *)self invalidate];
  v8.receiver = self;
  v8.super_class = WFRemoteWidgetAdvertiseConnection;
  [(WFRemoteWidgetAdvertiseConnection *)&v8 dealloc];
  v7 = *MEMORY[0x1E69E9840];
}

- (id)setupAdvertiseConnectionType:(int64_t)type
{
  v23 = *MEMORY[0x1E69E9840];
  self->_connectionType = type;
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_USER_INITIATED, 0);
  v7 = dispatch_queue_create("com.apple.shortcuts.WFRemoteWidgetConnection", v6);
  queue = self->_queue;
  self->_queue = v7;

  v9 = objc_opt_new();
  connections = self->_connections;
  self->_connections = v9;

  v11 = WFCreateAdvertiseParametersForConnectionType(type);
  application_service = nw_advertise_descriptor_create_application_service("com.apple.workflow.remotewidgets");
  v13 = nw_listener_create(v11);
  nw_listener_set_advertise_descriptor(v13, application_service);
  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __66__WFRemoteWidgetAdvertiseConnection_setupAdvertiseConnectionType___block_invoke;
  v18[3] = &unk_1E837A7A0;
  objc_copyWeak(&v19, &location);
  nw_listener_set_new_connection_handler(v13, v18);
  MEMORY[0x1CCAA3D40](v13, &__block_literal_global_263);
  nw_listener_set_queue(v13, self->_queue);
  nw_listener_start(v13);
  v14 = getWFWidgetConfigurationLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "[WFRemoteWidgetAdvertiseConnection setupAdvertiseConnectionType:]";
    _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_DEFAULT, "%s Listener started!", buf, 0xCu);
  }

  nwListener = self->_nwListener;
  self->_nwListener = v13;

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  v16 = *MEMORY[0x1E69E9840];
  return self;
}

void __66__WFRemoteWidgetAdvertiseConnection_setupAdvertiseConnectionType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleNewConnection:v3];
}

void __66__WFRemoteWidgetAdvertiseConnection_setupAdvertiseConnectionType___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (a2 == 2)
  {
    v5 = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[WFRemoteWidgetAdvertiseConnection setupAdvertiseConnectionType:]_block_invoke_2";
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEFAULT, "%s Listener entered the ready state", &v8, 0xCu);
    }
  }

  if (v4)
  {
    v6 = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "[WFRemoteWidgetAdvertiseConnection setupAdvertiseConnectionType:]_block_invoke";
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_ERROR, "%s Listener threw error %@", &v8, 0x16u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (WFRemoteWidgetAdvertiseConnection)initWithConnectionType:(int64_t)type
{
  v8.receiver = self;
  v8.super_class = WFRemoteWidgetAdvertiseConnection;
  v4 = [(WFRemoteWidgetAdvertiseConnection *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(WFRemoteWidgetAdvertiseConnection *)v4 setupAdvertiseConnectionType:type];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (WFRemoteWidgetAdvertiseConnection)init
{
  v6.receiver = self;
  v6.super_class = WFRemoteWidgetAdvertiseConnection;
  v2 = [(WFRemoteWidgetAdvertiseConnection *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(WFRemoteWidgetAdvertiseConnection *)v2 setupAdvertiseConnectionType:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)startListeningForIncomingConfigurationsWithConnectionType:(int64_t)type
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = getWFWidgetConfigurationLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "+[WFRemoteWidgetAdvertiseConnection startListeningForIncomingConfigurationsWithConnectionType:]";
    _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_DEFAULT, "%s Start listening for incoming connections...", &v8, 0xCu);
  }

  v5 = [[WFRemoteWidgetAdvertiseConnection alloc] initWithConnectionType:type];
  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

@end