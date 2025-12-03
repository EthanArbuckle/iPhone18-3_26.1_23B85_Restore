@interface SFBonjourEndpoint
+ (id)createConnectionParameters;
- (SFBonjourEndpoint)initWithConnection:(id)connection isAdvToBrowserConnection:(BOOL)browserConnection localUniqueID:(id)d withQueue:(id)queue;
- (id)_getServerRemoteUUIDFromConnectionMetadata:(id)metadata isAdvToBrowserConnection:(BOOL)connection;
- (void)_handleUUIDHeaders;
- (void)_startConnection;
- (void)cancel;
- (void)receiveNextMessage;
- (void)sendDataMessage:(id)message completion:(id)completion;
@end

@implementation SFBonjourEndpoint

- (SFBonjourEndpoint)initWithConnection:(id)connection isAdvToBrowserConnection:(BOOL)browserConnection localUniqueID:(id)d withQueue:(id)queue
{
  connectionCopy = connection;
  dCopy = d;
  queueCopy = queue;
  v25.receiver = self;
  v25.super_class = SFBonjourEndpoint;
  v14 = [(SFBonjourEndpoint *)&v25 init];
  v15 = v14;
  if (v14)
  {
    if (dCopy && connectionCopy && queueCopy)
    {
      objc_storeStrong(&v14->_queue, queue);
      objc_storeStrong(&v15->_connection, connection);
      v16 = nw_connection_copy_endpoint(v15->_connection);
      remoteEndpoint = v15->_remoteEndpoint;
      v15->_remoteEndpoint = v16;

      if (v15->_remoteEndpoint)
      {
        v15->_isAdvToBrowserConnection = browserConnection;
        objc_storeStrong(&v15->_localUniqueIDString, d);
        [(SFBonjourEndpoint *)v15 _startConnection];
        if (!v15->_isAdvToBrowserConnection)
        {
          v18 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          remoteAdvDataSet = v15->_remoteAdvDataSet;
          v15->_remoteAdvDataSet = v18;
        }

        goto LABEL_8;
      }

      v21 = daemon_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v24[0] = 0;
        v22 = "Invalid remoteEndpoint ";
        goto LABEL_13;
      }
    }

    else
    {
      v21 = daemon_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v24[0] = 0;
        v22 = "Invalid arguments to SFBonjourEndpoint";
LABEL_13:
        _os_log_impl(&dword_1A9662000, v21, OS_LOG_TYPE_DEFAULT, v22, v24, 2u);
      }
    }

    v20 = 0;
    goto LABEL_15;
  }

LABEL_8:
  v20 = v15;
LABEL_15:

  return v20;
}

- (void)_startConnection
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    connection = self->_connection;
    LODWORD(buf) = 138412290;
    *(&buf + 4) = connection;
    _os_log_impl(&dword_1A9662000, v3, OS_LOG_TYPE_DEFAULT, "Started connecting to %@", &buf, 0xCu);
  }

  nw_connection_set_queue(self->_connection, self->_queue);
  objc_initWeak(&location, self);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__17;
  v18 = __Block_byref_object_dispose__17;
  v19 = 0;
  v5 = self->_connection;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __37__SFBonjourEndpoint__startConnection__block_invoke;
  v10 = &unk_1E7890B50;
  objc_copyWeak(&v13, &location);
  selfCopy = self;
  p_buf = &buf;
  nw_connection_set_state_changed_handler(v5, &v7);
  [(SFBonjourEndpoint *)self _handleUUIDHeaders:v7];
  nw_connection_start(self->_connection);
  objc_destroyWeak(&v13);
  _Block_object_dispose(&buf, 8);

  objc_destroyWeak(&location);
  v6 = *MEMORY[0x1E69E9840];
}

void __37__SFBonjourEndpoint__startConnection__block_invoke(uint64_t a1, int a2, void *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained connection];
    v10 = nw_connection_copy_endpoint(v9);

    if (v6)
    {
      error_code = nw_error_get_error_code(v6);
    }

    else
    {
      error_code = 0;
    }

    *__error() = error_code;
    v12 = daemon_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      hostname = nw_endpoint_get_hostname(v10);
      port = nw_endpoint_get_port(v10);
      v15 = *__error();
      v39 = 67109890;
      *v40 = a2;
      *&v40[4] = 2080;
      *&v40[6] = hostname;
      *&v40[14] = 1024;
      *&v40[16] = port;
      LOWORD(v41[0]) = 1024;
      *(v41 + 2) = v15;
      _os_log_impl(&dword_1A9662000, v12, OS_LOG_TYPE_DEFAULT, "Connection state changed to %d (host %s port %u error %d)", &v39, 0x1Eu);
    }

    switch(a2)
    {
      case 5:
        v25 = daemon_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = *(v8 + 6);
          v27 = nw_endpoint_get_hostname(v10);
          v28 = nw_endpoint_get_port(v10);
          v39 = 138412802;
          *v40 = v26;
          *&v40[8] = 2080;
          *&v40[10] = v27;
          *&v40[18] = 1024;
          v41[0] = v28;
          _os_log_impl(&dword_1A9662000, v25, OS_LOG_TYPE_DEFAULT, "Connection (%@) to %s port %u cancelled", &v39, 0x1Cu);
        }

        v29 = [v8 didDisconnectHandler];

        if (v29)
        {
          v30 = *(*(*(a1 + 40) + 8) + 40);
          if (v30)
          {
            v31 = nw_error_copy_cf_error(v30);
          }

          else
          {
            v31 = 0;
          }

          v33 = [v8 didDisconnectHandler];
          (v33)[2](v33, v31);
        }

        v34 = *(v8 + 6);
        *(v8 + 6) = 0;

        v35 = *(v8 + 5);
        *(v8 + 5) = 0;

        v36 = *(*(a1 + 40) + 8);
        v37 = *(v36 + 40);
        *(v36 + 40) = 0;

        break;
      case 4:
        objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
        v24 = [v8 connection];
        nw_connection_cancel(v24);

        break;
      case 3:
        v16 = daemon_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(v8 + 6);
          v18 = nw_endpoint_get_hostname(v10);
          v19 = nw_endpoint_get_port(v10);
          v39 = 138412802;
          *v40 = v17;
          *&v40[8] = 2080;
          *&v40[10] = v18;
          *&v40[18] = 1024;
          v41[0] = v19;
          _os_log_impl(&dword_1A9662000, v16, OS_LOG_TYPE_DEFAULT, "Connection (%@) to %s port %u succeeded! begin receiving messages", &v39, 0x1Cu);
        }

        if (([v8 isAdvToBrowserConnection] & 1) == 0)
        {
          v20 = [v8 _getServerRemoteUUIDFromConnectionMetadata:*(*(a1 + 32) + 48) isAdvToBrowserConnection:{objc_msgSend(*(a1 + 32), "isAdvToBrowserConnection")}];
          [v8 setRemoteUniqueIDString:v20];
        }

        v21 = [v8 remoteUniqueIDString];

        if (v21)
        {
          v22 = [v8 didConnectHandler];

          if (v22)
          {
            v23 = [v8 didConnectHandler];
            v23[2]();
          }

          [v8 receiveNextMessage];
        }

        else
        {
          v32 = daemon_log();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            __37__SFBonjourEndpoint__startConnection__block_invoke_cold_1();
          }

          nw_connection_cancel(*(v8 + 6));
        }

        break;
    }
  }

  v38 = *MEMORY[0x1E69E9840];
}

- (id)_getServerRemoteUUIDFromConnectionMetadata:(id)metadata isAdvToBrowserConnection:(BOOL)connection
{
  metadataCopy = metadata;
  dispatch_assert_queue_V2(self->_queue);
  if (connection)
  {
    v7 = 0;
  }

  else
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__17;
    v20 = __Block_byref_object_dispose__17;
    v21 = 0;
    v8 = nw_protocol_copy_ws_definition();
    v9 = nw_connection_copy_protocol_metadata(metadataCopy, v8);

    v10 = nw_ws_metadata_copy_server_response(v9);
    v11 = v10;
    if (v10)
    {
      enumerator[0] = MEMORY[0x1E69E9820];
      enumerator[1] = 3221225472;
      enumerator[2] = __89__SFBonjourEndpoint__getServerRemoteUUIDFromConnectionMetadata_isAdvToBrowserConnection___block_invoke;
      enumerator[3] = &unk_1E7890B78;
      enumerator[4] = &v16;
      nw_ws_response_enumerate_additional_headers(v10, enumerator);
    }

    v12 = v17[5];
    if (!v12)
    {
      v13 = daemon_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [SFBonjourEndpoint _getServerRemoteUUIDFromConnectionMetadata:isAdvToBrowserConnection:];
      }

      v12 = v17[5];
    }

    v7 = v12;

    _Block_object_dispose(&v16, 8);
  }

  return v7;
}

uint64_t __89__SFBonjourEndpoint__getServerRemoteUUIDFromConnectionMetadata_isAdvToBrowserConnection___block_invoke(uint64_t a1, char *__s1, uint64_t a3)
{
  if (!strcmp(__s1, "SFBonjourEndpointServerUUIDHeader"))
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  return 1;
}

- (void)_handleUUIDHeaders
{
  v3 = nw_connection_copy_parameters(self->_connection);
  v4 = nw_parameters_copy_default_protocol_stack(v3);
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__17;
  v17 = __Block_byref_object_dispose__17;
  v18 = 0;
  iterate_block[0] = MEMORY[0x1E69E9820];
  iterate_block[1] = 3221225472;
  iterate_block[2] = __39__SFBonjourEndpoint__handleUUIDHeaders__block_invoke;
  iterate_block[3] = &unk_1E7890BA0;
  iterate_block[4] = &v13;
  nw_protocol_stack_iterate_application_protocols(v4, iterate_block);
  v5 = v14[5];
  if (v5)
  {
    if (self->_isAdvToBrowserConnection)
    {
      objc_initWeak(&location, self);
      v6 = v14[5];
      queue = self->_queue;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __39__SFBonjourEndpoint__handleUUIDHeaders__block_invoke_127;
      handler[3] = &unk_1E7890BF0;
      objc_copyWeak(&v10, &location);
      nw_ws_options_set_client_request_handler(v6, queue, handler);
      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }

    else
    {
      nw_ws_options_add_additional_header(v5, "SFBonjourEndpointClientUUIDHeader", [(NSString *)self->_localUniqueIDString UTF8String]);
    }
  }

  else
  {
    v8 = daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SFBonjourEndpoint _handleUUIDHeaders];
    }
  }

  _Block_object_dispose(&v13, 8);
}

void __39__SFBonjourEndpoint__handleUUIDHeaders__block_invoke(uint64_t a1, void *a2)
{
  options = a2;
  v4 = nw_protocol_copy_ws_definition();
  v5 = nw_protocol_options_copy_definition(options);
  v6 = MEMORY[0x1AC58C530](v4, v5);

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

NSObject *__39__SFBonjourEndpoint__handleUUIDHeaders__block_invoke_127(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    enumerator[0] = MEMORY[0x1E69E9820];
    enumerator[1] = 3221225472;
    enumerator[2] = __39__SFBonjourEndpoint__handleUUIDHeaders__block_invoke_2;
    enumerator[3] = &unk_1E7890BC8;
    enumerator[4] = WeakRetained;
    nw_ws_request_enumerate_additional_headers(v3, enumerator);
    v6 = nw_ws_response_create(nw_ws_response_status_accept, 0);
    nw_ws_response_add_additional_header(v6, "SFBonjourEndpointServerUUIDHeader", [v5[7] UTF8String]);
  }

  else
  {
    v6 = nw_ws_response_create(nw_ws_response_status_reject, 0);
  }

  return v6;
}

uint64_t __39__SFBonjourEndpoint__handleUUIDHeaders__block_invoke_2(uint64_t a1, char *__s1, uint64_t a3)
{
  if (!strcmp(__s1, "SFBonjourEndpointClientUUIDHeader"))
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3];
    v6 = *(a1 + 32);
    v7 = *(v6 + 64);
    *(v6 + 64) = v5;
  }

  return 1;
}

- (void)cancel
{
  dispatch_assert_queue_V2(self->_queue);
  connection = self->_connection;
  if (connection)
  {

    nw_connection_cancel(connection);
  }

  else
  {
    v4 = daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SFBonjourEndpoint cancel];
    }
  }
}

- (void)receiveNextMessage
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_connection)
  {
    objc_initWeak(&location, self);
    connection = self->_connection;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __39__SFBonjourEndpoint_receiveNextMessage__block_invoke;
    v5[3] = &unk_1E7890C18;
    objc_copyWeak(&v6, &location);
    nw_connection_receive_message(connection, v5);
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  else
  {
    v4 = daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SFBonjourEndpoint receiveNextMessage];
    }
  }
}

void __39__SFBonjourEndpoint_receiveNextMessage__block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v12 = daemon_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412546;
      v20 = v8;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&dword_1A9662000, v12, OS_LOG_TYPE_DEFAULT, "receiveNextMessage data %@ error:%@", &v19, 0x16u);
    }

    v13 = v8;
    if (v9 && nw_content_context_get_is_final(v9))
    {
      v14 = daemon_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = WeakRetained[6];
        v19 = 138412290;
        v20 = v15;
        _os_log_impl(&dword_1A9662000, v14, OS_LOG_TYPE_DEFAULT, "receiveNextMessage got connection closed %@", &v19, 0xCu);
      }

      nw_connection_cancel(WeakRetained[6]);
    }

    else if (!v10)
    {
      v16 = [(nw_connection_t *)WeakRetained didReceiveDataHandler];

      if (v13 && v16)
      {
        v17 = [(nw_connection_t *)WeakRetained didReceiveDataHandler];
        (v17)[2](v17, v13);
      }

      [(nw_connection_t *)WeakRetained receiveNextMessage];
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)sendDataMessage:(id)message completion:(id)completion
{
  v20[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_connection)
  {
    v8 = dispatch_data_create([messageCopy bytes], objc_msgSend(messageCopy, "length"), 0, 0);
    metadata = nw_ws_create_metadata(nw_ws_opcode_binary);
    v10 = nw_content_context_create("send");
    nw_content_context_set_metadata_for_protocol(v10, metadata);
    connection = self->_connection;
    completion[0] = MEMORY[0x1E69E9820];
    completion[1] = 3221225472;
    completion[2] = __48__SFBonjourEndpoint_sendDataMessage_completion___block_invoke;
    completion[3] = &unk_1E7890C40;
    v17 = messageCopy;
    v18 = completionCopy;
    nw_connection_send(connection, v8, v10, 1, completion);

LABEL_5:
    goto LABEL_6;
  }

  if (completionCopy)
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A768];
    v19 = *MEMORY[0x1E696A578];
    v20[0] = @"Unable to send message, nil connection";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v8 = [v12 errorWithDomain:v13 code:-6700 userInfo:v14];

    (*(completionCopy + 2))(completionCopy, v8);
    goto LABEL_5;
  }

LABEL_6:

  v15 = *MEMORY[0x1E69E9840];
}

void __48__SFBonjourEndpoint_sendDataMessage_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = daemon_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) length];
    v9 = 138412546;
    v10 = v3;
    v11 = 2048;
    v12 = v5;
    _os_log_impl(&dword_1A9662000, v4, OS_LOG_TYPE_DEFAULT, "nw_connection_send completed with error: %@, bytes :%lu", &v9, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    if (v3)
    {
      v7 = nw_error_copy_cf_error(v3);
      v6 = *(a1 + 40);
    }

    else
    {
      v7 = 0;
    }

    (*(v6 + 16))(v6, v7);
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (id)createConnectionParameters
{
  secure_tcp = nw_parameters_create_secure_tcp(*MEMORY[0x1E6977EC0], &__block_literal_global_66);
  v3 = nw_parameters_copy_default_protocol_stack(secure_tcp);
  options = nw_ws_create_options(nw_ws_version_13);
  nw_ws_options_set_auto_reply_ping(options, 1);
  nw_protocol_stack_prepend_application_protocol(v3, options);
  v5 = nw_interface_create_with_name();
  nw_parameters_require_interface(secure_tcp, v5);

  v6 = nw_interface_create_with_name();
  nw_parameters_prohibit_interface(secure_tcp, v6);

  return secure_tcp;
}

void __47__SFBonjourEndpoint_createConnectionParameters__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x1AC58C580]();
  MEMORY[0x1AC58C590](v2, 2);
  MEMORY[0x1AC58C5A0](v2, 1);
  MEMORY[0x1AC58C570](v2, 1);
}

@end