@interface RMConnectionEndpoint
- (BOOL)isValid;
- (BOOL)startServingStreamToEndpoint:(void *)a3 error:;
- (id)connection;
- (id)connectionDelegate;
- (id)dataDelegate;
- (id)initWithConnection:(void *)a3 queue:;
- (id)setConnectionDelegate:(id *)result;
- (id)setDataDelegate:(id *)result;
- (uint64_t)messagingConnection;
- (uint64_t)priorityBoostReplyMessage;
- (uint64_t)queue;
- (uint64_t)startServingStreamWithHandler:(uint64_t)a1;
- (uint64_t)streamingClientListener;
- (void)handleInterruption;
- (void)handleStreamXpcError:(void *)a3 withErrorHandler:;
- (void)handleStreamXpcReply:(void *)a3 withErrorHandler:;
- (void)handleXpcMessage:(void *)a3 replyBlock:;
- (void)invalidate;
- (void)pause;
- (void)requestStreamWithMessage:(void *)a3 data:(void *)a4 errorHandler:;
- (void)sendMessage:(void *)a3 withData:;
- (void)sendMessage:(void *)a3 withData:(void *)a4 reply:;
- (void)setMessagingConnection:(uint64_t)a1;
- (void)setPriorityBoostReplyMessage:(uint64_t)a1;
- (void)setQueue:(uint64_t)a1;
- (void)setStreamingClientListener:(uint64_t)a1;
- (void)setStreamingServerConnection:(uint64_t)a1;
- (void)start;
- (void)startReceivingStreamOnConnection:(void *)a3 errorHandler:;
- (void)stopReceivingStream;
- (void)stopServingStream;
- (void)wrapReplyToXpcMessage:(void *)a3 withName:(void *)a4 data:;
@end

@implementation RMConnectionEndpoint

- (void)handleXpcMessage:(void *)a3 replyBlock:
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 24));
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{xpc_dictionary_get_string(v5, "kRMConnectionMessageNameKey")}];
    v9 = xpc_dictionary_get_value(v5, "kRMConnectionMessageDataKey");
    v10 = v9;
    if (v9)
    {
      bytes_ptr = xpc_data_get_bytes_ptr(v9);
      if (bytes_ptr)
      {
        bytes_ptr = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:bytes_ptr length:xpc_data_get_length(v10)];
      }
    }

    else
    {
      bytes_ptr = 0;
    }

    v12 = xpc_dictionary_get_value(v5, "kRMConnectionRequestSteamingKey");
    v13 = v12;
    if (!v8)
    {
      if (onceToken_IPC_Default != -1)
      {
        _CLLogObjectForCategory_IPC_Default_cold_1();
      }

      v14 = logObject_IPC_Default;
      if (!os_log_type_enabled(logObject_IPC_Default, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      *buf = 136315138;
      v31 = "kRMConnectionMessageNameKey";
      v15 = "XPC message missing key %s";
      v16 = v14;
      v17 = OS_LOG_TYPE_ERROR;
      v18 = 12;
      goto LABEL_14;
    }

    if (!v12)
    {
      if (v6)
      {
        v6[2](v6, v8, bytes_ptr);
LABEL_24:

        goto LABEL_25;
      }

      if ([v8 isEqualToString:@"kRMConnectionMessagePriorityBoost"])
      {
        if (onceToken_IPC_Default != -1)
        {
          _CLLogObjectForCategory_IPC_Default_cold_1();
        }

        v19 = logObject_IPC_Default;
        if (os_log_type_enabled(logObject_IPC_Default, OS_LOG_TYPE_INFO))
        {
          *buf = 138477827;
          v31 = v8;
          _os_log_impl(&dword_261A9A000, v19, OS_LOG_TYPE_INFO, "Creating reply to hold onto priority boost: %{private}@", buf, 0xCu);
        }

        reply = xpc_dictionary_create_reply(v5);
        v21 = *(a1 + 64);
        *(a1 + 64) = reply;
        goto LABEL_23;
      }

      if (objc_opt_respondsToSelector())
      {
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __52__RMConnectionEndpoint_handleXpcMessage_replyBlock___block_invoke;
        v26[3] = &unk_279AF5388;
        v26[4] = a1;
        v27 = v5;
        [WeakRetained endpoint:a1 didReceiveMessage:v8 withData:bytes_ptr replyBlock:v26];
        v21 = v27;
LABEL_23:

        goto LABEL_24;
      }

      if (onceToken_IPC_Default != -1)
      {
        _CLLogObjectForCategory_IPC_Default_cold_1();
      }

      v23 = logObject_IPC_Default;
      if (!os_log_type_enabled(logObject_IPC_Default, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_24;
      }

      *buf = 0;
      v15 = "Message received but the handler doesn't implement the selector 'endpoint:didReceiveMessage:withData:replyBlock:'";
      v16 = v23;
      v17 = OS_LOG_TYPE_FAULT;
      v18 = 2;
LABEL_14:
      _os_log_impl(&dword_261A9A000, v16, v17, v15, buf, v18);
      goto LABEL_24;
    }

    if ([WeakRetained conformsToProtocol:&unk_287439AD0])
    {
      [WeakRetained endpoint:a1 didReceiveStreamingRequest:v8 withData:bytes_ptr];
      v29 = 0;
      [(RMConnectionEndpoint *)a1 startServingStreamToEndpoint:v13 error:&v29];
      v24 = v29;
      if (v24)
      {
        [(RMConnectionEndpoint *)v24 handleXpcMessage:a1 replyBlock:v5];
        goto LABEL_24;
      }

      if (onceToken_IPC_Default == -1)
      {
LABEL_33:
        v25 = logObject_IPC_Default;
        if (os_log_type_enabled(logObject_IPC_Default, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_261A9A000, v25, OS_LOG_TYPE_INFO, "Streaming session started, sending acknowledgement", buf, 2u);
        }

        [(RMConnectionEndpoint *)a1 wrapReplyToXpcMessage:v5 withName:@"kRMConnectionMessageSuccess" data:0];
        goto LABEL_24;
      }
    }

    else
    {
      [RMConnectionEndpoint handleXpcMessage:replyBlock:];
    }

    [RMConnectionEndpoint handleXpcMessage:replyBlock:];
    goto LABEL_33;
  }

LABEL_25:

  v22 = *MEMORY[0x277D85DE8];
}

void __49__RMConnectionEndpoint_initWithConnection_queue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x266717E30]();
  if (v4 == MEMORY[0x277D86480])
  {
    if (v3 == MEMORY[0x277D863F0])
    {
      if (onceToken_IPC_Default != -1)
      {
        _CLLogObjectForCategory_IPC_Default_cold_1();
      }

      if (os_log_type_enabled(logObject_IPC_Default, OS_LOG_TYPE_DEBUG))
      {
        __49__RMConnectionEndpoint_initWithConnection_queue___block_invoke_cold_5(a1);
      }

      [(RMConnectionEndpoint *)*(a1 + 32) handleInterruption];
    }

    else if (v3 == MEMORY[0x277D863F8])
    {
      if (onceToken_IPC_Default != -1)
      {
        _CLLogObjectForCategory_IPC_Default_cold_1();
      }

      if (os_log_type_enabled(logObject_IPC_Default, OS_LOG_TYPE_DEBUG))
      {
        __49__RMConnectionEndpoint_initWithConnection_queue___block_invoke_cold_3(a1);
      }

      [(RMConnectionEndpoint *)*(a1 + 32) invalidate];
    }
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    [(RMConnectionEndpoint *)*(a1 + 32) handleXpcMessage:v3 replyBlock:0];
  }

  else
  {
    if (onceToken_IPC_Default != -1)
    {
      _CLLogObjectForCategory_IPC_Default_cold_1();
    }

    v5 = logObject_IPC_Default;
    if (os_log_type_enabled(logObject_IPC_Default, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_261A9A000, v5, OS_LOG_TYPE_ERROR, "Got unexpected xpc event", v6, 2u);
    }
  }
}

- (void)sendMessage:(void *)a3 withData:
{
  v10 = a2;
  v5 = a3;
  if (a1)
  {
    v7 = *(a1 + 56);
    v6 = (a1 + 56);
    if (!v7)
    {
      v8 = [RMConnectionEndpoint sendMessage:v10 withData:?];
      CreateXpcMessage(v8, v9);
      return;
    }

    [(RMConnectionEndpoint *)v10 sendMessage:v5 withData:v6];
  }
}

- (void)sendMessage:(void *)a3 withData:(void *)a4 reply:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!a1)
  {
    goto LABEL_4;
  }

  if (*(a1 + 56))
  {
    v10 = CreateXpcMessage(v7, v8);
    v11 = *(a1 + 56);
    v12 = *(a1 + 8);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __51__RMConnectionEndpoint_sendMessage_withData_reply___block_invoke;
    handler[3] = &unk_279AF53D8;
    handler[4] = a1;
    v18 = v9;
    v17 = v7;
    v13 = v11;
    xpc_connection_send_message_with_reply(v13, v10, v12, handler);

LABEL_4:
    return;
  }

  v14 = [RMConnectionEndpoint sendMessage:withData:reply:];
  __51__RMConnectionEndpoint_sendMessage_withData_reply___block_invoke(v14, v15);
}

void __51__RMConnectionEndpoint_sendMessage_withData_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = MEMORY[0x266717E30](v3);
  if (v5 == MEMORY[0x277D86480])
  {
    if (v3 == MEMORY[0x277D863F0])
    {
      if (onceToken_IPC_Default != -1)
      {
        _CLLogObjectForCategory_IPC_Default_cold_1();
      }

      if (os_log_type_enabled(logObject_IPC_Default, OS_LOG_TYPE_DEBUG))
      {
        __51__RMConnectionEndpoint_sendMessage_withData_reply___block_invoke_cold_5(a1);
      }

      v9 = *(a1 + 40);
      (*(*(a1 + 48) + 16))();
      [(RMConnectionEndpoint *)*(a1 + 32) handleInterruption];
    }

    else if (v3 == MEMORY[0x277D863F8])
    {
      if (onceToken_IPC_Default != -1)
      {
        _CLLogObjectForCategory_IPC_Default_cold_1();
      }

      if (os_log_type_enabled(logObject_IPC_Default, OS_LOG_TYPE_DEBUG))
      {
        __49__RMConnectionEndpoint_initWithConnection_queue___block_invoke_cold_3(a1);
      }

      v8 = *(a1 + 40);
      (*(*(a1 + 48) + 16))();
      [(RMConnectionEndpoint *)*(a1 + 32) invalidate];
    }
  }

  else if (v5 == MEMORY[0x277D86468])
  {
    [(RMConnectionEndpoint *)*(a1 + 32) handleXpcMessage:v3 replyBlock:*(a1 + 48)];
  }

  else
  {
    if (onceToken_IPC_Default != -1)
    {
      _CLLogObjectForCategory_IPC_Default_cold_1();
    }

    v6 = logObject_IPC_Default;
    if (os_log_type_enabled(logObject_IPC_Default, OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_261A9A000, v6, OS_LOG_TYPE_FAULT, "Got unexpected xpc event", v10, 2u);
    }

    v7 = *(a1 + 40);
    (*(*(a1 + 48) + 16))();
  }

  objc_autoreleasePoolPop(v4);
}

void __54__RMConnectionEndpoint_startServingStreamWithHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x266717E30](a2) == MEMORY[0x277D86480])
  {
    if (a2 == MEMORY[0x277D863F0])
    {
      if (onceToken_IPC_Default != -1)
      {
        _CLLogObjectForCategory_IPC_Default_cold_1();
      }

      v5 = logObject_IPC_Default;
      if (os_log_type_enabled(logObject_IPC_Default, OS_LOG_TYPE_DEBUG))
      {
        __54__RMConnectionEndpoint_startServingStreamWithHandler___block_invoke_cold_4(a1, v5);
      }
    }

    else
    {
      if (a2 != MEMORY[0x277D863F8])
      {
        return;
      }

      if (onceToken_IPC_Default != -1)
      {
        _CLLogObjectForCategory_IPC_Default_cold_1();
      }

      v4 = logObject_IPC_Default;
      if (os_log_type_enabled(logObject_IPC_Default, OS_LOG_TYPE_DEBUG))
      {
        __54__RMConnectionEndpoint_startServingStreamWithHandler___block_invoke_cold_2(a1, v4);
      }
    }

    [(RMConnectionEndpoint *)*(a1 + 32) stopServingStream];
  }
}

- (void)stopServingStream
{
  xpc_connection_set_event_handler(*a1, &__block_literal_global_2);
  xpc_connection_cancel(*a1);
  v4 = *a1;
  *a1 = 0;

  WeakRetained = objc_loadWeakRetained((a2 + 24));
  [WeakRetained endpointShouldStopStreamingData:a2];
}

- (void)startReceivingStreamOnConnection:(void *)a3 errorHandler:
{
  v5 = a2;
  v6 = a3;
  if (!a1)
  {
    goto LABEL_4;
  }

  WeakRetained = objc_loadWeakRetained(a1 + 3);
  v8 = [WeakRetained conformsToProtocol:&unk_287439350];

  if (v8)
  {
    [(RMConnectionEndpoint *)a1 startReceivingStreamOnConnection:v5 errorHandler:&v11, v6];
LABEL_4:

    return;
  }

  v9 = [RMConnectionEndpoint startReceivingStreamOnConnection:errorHandler:];
  __70__RMConnectionEndpoint_startReceivingStreamOnConnection_errorHandler___block_invoke(v9, v10);
}

void __70__RMConnectionEndpoint_startReceivingStreamOnConnection_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x266717E30]();
  if (v4 == MEMORY[0x277D86480])
  {
    if (onceToken_IPC_Default != -1)
    {
      _CLLogObjectForCategory_IPC_Default_cold_1();
    }

    if (os_log_type_enabled(logObject_IPC_Default, OS_LOG_TYPE_DEBUG))
    {
      __70__RMConnectionEndpoint_startReceivingStreamOnConnection_errorHandler___block_invoke_cold_4(a1);
    }

    [(RMConnectionEndpoint *)*(a1 + 32) handleStreamXpcError:v3 withErrorHandler:*(a1 + 40)];
    [(RMConnectionEndpoint *)*(a1 + 32) stopReceivingStream];
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    v5 = xpc_dictionary_get_value(v3, "kRMConnectionMessageDataStreamKey");
    v6 = v5;
    if (v5 && MEMORY[0x266717E30](v5) == MEMORY[0x277D86458] && (bytes_ptr = xpc_data_get_bytes_ptr(v6)) != 0 && (v8 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:bytes_ptr length:xpc_data_get_length(v6)]) != 0)
    {
      __70__RMConnectionEndpoint_startReceivingStreamOnConnection_errorHandler___block_invoke_cold_1(a1, v8);
    }

    else
    {
      if (onceToken_IPC_Default != -1)
      {
        _CLLogObjectForCategory_IPC_Default_cold_1();
      }

      v9 = logObject_IPC_Default;
      if (os_log_type_enabled(logObject_IPC_Default, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_impl(&dword_261A9A000, v9, OS_LOG_TYPE_ERROR, "Message without a payload received from the stream connection", v10, 2u);
      }
    }
  }
}

- (void)requestStreamWithMessage:(void *)a3 data:(void *)a4 errorHandler:
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (!a1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 48))
  {
    [RMConnectionEndpoint requestStreamWithMessage:data:errorHandler:];
    goto LABEL_9;
  }

  v12 = *(a1 + 8);
  v13 = xpc_connection_create(0, v12);
  v14 = *(a1 + 48);
  *(a1 + 48) = v13;

  v15 = *(a1 + 48);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __67__RMConnectionEndpoint_requestStreamWithMessage_data_errorHandler___block_invoke;
  handler[3] = &unk_279AF5448;
  handler[4] = a1;
  v16 = v11;
  v29 = v16;
  xpc_connection_set_event_handler(v15, handler);
  v4 = CreateXpcMessage(v9, v10);
  xpc_connection_activate(*(a1 + 48));
  v5 = xpc_endpoint_create(*(a1 + 48));
  xpc_dictionary_set_value(v4, "kRMConnectionRequestSteamingKey", v5);
  v17 = *(a1 + 56);
  v18 = *(a1 + 8);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __67__RMConnectionEndpoint_requestStreamWithMessage_data_errorHandler___block_invoke_97;
  v26[3] = &unk_279AF5448;
  v26[4] = a1;
  v27 = v16;
  v19 = v17;
  xpc_connection_send_message_with_reply(v19, v4, v18, v26);

  if (onceToken_IPC_Default != -1)
  {
LABEL_9:
    [RMConnectionEndpoint handleXpcMessage:replyBlock:];
  }

  v20 = logObject_IPC_Default;
  if (os_log_type_enabled(logObject_IPC_Default, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(a1 + 48);
    v21 = *(a1 + 56);
    *buf = 134283777;
    v31 = v21;
    v32 = 2049;
    v33 = v22;
    v23 = v21;
    v24 = v20;
    _os_log_impl(&dword_261A9A000, v24, OS_LOG_TYPE_DEFAULT, "Streaming request sent on streaming listener %{private}p.%{private}p", buf, 0x16u);
  }

LABEL_7:
  v25 = *MEMORY[0x277D85DE8];
}

void __67__RMConnectionEndpoint_requestStreamWithMessage_data_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MEMORY[0x266717E30]() == MEMORY[0x277D86450])
  {
    if (onceToken_IPC_Default != -1)
    {
      _CLLogObjectForCategory_IPC_Default_cold_1();
    }

    v4 = logObject_IPC_Default;
    if (os_log_type_enabled(logObject_IPC_Default, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_261A9A000, v4, OS_LOG_TYPE_DEFAULT, "Peer connection detected", v8, 2u);
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(v5 + 8);
    }

    else
    {
      v6 = 0;
    }

    v7 = v3;
    xpc_connection_set_target_queue(v7, v6);
    [(RMConnectionEndpoint *)*(a1 + 32) startReceivingStreamOnConnection:v7 errorHandler:*(a1 + 40)];
  }
}

void __67__RMConnectionEndpoint_requestStreamWithMessage_data_errorHandler___block_invoke_97(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x266717E30]();
  if (v4 == MEMORY[0x277D86480])
  {
    if (onceToken_IPC_Default != -1)
    {
      _CLLogObjectForCategory_IPC_Default_cold_1();
    }

    v5 = logObject_IPC_Default;
    if (os_log_type_enabled(logObject_IPC_Default, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_261A9A000, v5, OS_LOG_TYPE_DEFAULT, "Error received while trying to start the streaming connection", v6, 2u);
    }

    [(RMConnectionEndpoint *)*(a1 + 32) handleStreamXpcError:v3 withErrorHandler:*(a1 + 40)];
    [(RMConnectionEndpoint *)*(a1 + 32) stopReceivingStream];
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    [(RMConnectionEndpoint *)*(a1 + 32) handleStreamXpcReply:v3 withErrorHandler:*(a1 + 40)];
  }
}

- (void)wrapReplyToXpcMessage:(void *)a3 withName:(void *)a4 data:
{
  v12 = a4;
  if (a1)
  {
    v7 = a3;
    reply = xpc_dictionary_create_reply(a2);
    v9 = [v7 UTF8String];

    xpc_dictionary_set_string(reply, "kRMConnectionMessageNameKey", v9);
    if (v12)
    {
      v10 = v12;
      v11 = xpc_data_create([v12 bytes], objc_msgSend(v12, "length"));
      xpc_dictionary_set_value(reply, "kRMConnectionMessageDataKey", v11);
    }

    xpc_connection_send_message(*(a1 + 56), reply);
  }
}

- (uint64_t)messagingConnection
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

- (BOOL)startServingStreamToEndpoint:(void *)a3 error:
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (!a1)
  {
    v8 = 0;
    goto LABEL_18;
  }

  if (MEMORY[0x266717E30](v5) == MEMORY[0x277D86478])
  {
    WeakRetained = objc_loadWeakRetained(a1 + 3);
    v10 = xpc_connection_create_from_endpoint(v6);
    if (v10)
    {
      objc_storeStrong(a1 + 4, v10);
      if (([(RMConnectionEndpoint *)a1 startServingStreamWithHandler:?]& 1) == 0)
      {
        v8 = a3 == 0;
        if (a3)
        {
          if (onceToken_IPC_Default != -1)
          {
            dispatch_once(&onceToken_IPC_Default, &__block_literal_global_118);
          }

          v15 = logObject_IPC_Default;
          if (os_log_type_enabled(logObject_IPC_Default, OS_LOG_TYPE_ERROR))
          {
            v22 = 138412290;
            v23 = WeakRetained;
            OUTLINED_FUNCTION_12(&dword_261A9A000, v15, v16, "Failed to start the streaming with handler %@", &v22);
          }

          *a3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RMConnectionStreaming" code:-2 userInfo:0];
        }

        if (onceToken_IPC_Default != -1)
        {
          dispatch_once(&onceToken_IPC_Default, &__block_literal_global_118);
        }

        v17 = logObject_IPC_Default;
        if (os_log_type_enabled(logObject_IPC_Default, OS_LOG_TYPE_DEFAULT))
        {
          v18 = a1[4];
          v19 = OUTLINED_FUNCTION_6_0(a1[7]);
          v20 = v17;
          _os_log_impl(&dword_261A9A000, v20, OS_LOG_TYPE_DEFAULT, "Cancelling the streaming server connection %{private}p.%{private}p", &v22, 0x16u);
        }

        xpc_connection_cancel(v10);
        v21 = a1[4];
        a1[4] = 0;

        goto LABEL_17;
      }
    }

    else
    {
      if (onceToken_IPC_Default != -1)
      {
        dispatch_once(&onceToken_IPC_Default, &__block_literal_global_118);
      }

      v11 = logObject_IPC_Default;
      if (os_log_type_enabled(logObject_IPC_Default, OS_LOG_TYPE_ERROR))
      {
        v22 = 138412290;
        v23 = v6;
        OUTLINED_FUNCTION_12(&dword_261A9A000, v11, v12, "Failed to create connection from endpoint %@", &v22);
      }

      if (a3)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:@"RMConnectionStreaming" code:-1 userInfo:0];
        *a3 = v8 = 0;
LABEL_17:

        goto LABEL_18;
      }
    }

    v8 = 1;
    goto LABEL_17;
  }

  if (onceToken_IPC_Default != -1)
  {
    dispatch_once(&onceToken_IPC_Default, &__block_literal_global_118);
  }

  v7 = logObject_IPC_Default;
  if (os_log_type_enabled(logObject_IPC_Default, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v22) = 0;
    _os_log_impl(&dword_261A9A000, v7, OS_LOG_TYPE_ERROR, "The client did not send streaming endpoint correctly", &v22, 2u);
  }

  v8 = 1;
LABEL_18:

  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)dataDelegate
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 3);
    v1 = vars8;
  }

  return WeakRetained;
}

- (void)setStreamingServerConnection:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 32), a2);
  }
}

- (uint64_t)startServingStreamWithHandler:(uint64_t)a1
{
  keys[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = *(a1 + 32);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __54__RMConnectionEndpoint_startServingStreamWithHandler___block_invoke;
    handler[3] = &unk_279AF53B0;
    handler[4] = a1;
    v4 = a2;
    xpc_connection_set_event_handler(v3, handler);
    v5 = *(a1 + 8);
    v6 = *(a1 + 32);
    xpc_connection_set_target_queue(v6, v5);

    xpc_connection_resume(*(a1 + 32));
    v7 = xpc_string_create("kRMConnectionMessageDataStream");
    keys[0] = "kRMConnectionMessageNameKey";
    v8 = v7;
    values = v8;
    xpc_dictionary_create(keys, &values, 1uLL);
    OUTLINED_FUNCTION_5_0();
    v21 = 3221225472;
    v22 = __54__RMConnectionEndpoint_startServingStreamWithHandler___block_invoke_80;
    v23 = &unk_279AF5400;
    v24 = a1;
    v10 = v9;
    v25 = v10;
    v11 = [v4 endpoint:a1 shouldStartStreamingDataToReceiver:v20];

    if (onceToken_IPC_Default != -1)
    {
      dispatch_once(&onceToken_IPC_Default, &__block_literal_global_118);
    }

    v12 = logObject_IPC_Default;
    if (os_log_type_enabled(logObject_IPC_Default, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 56);
      v14 = *(a1 + 32);
      v15 = "NO";
      if (v11)
      {
        v15 = "YES";
      }

      *buf = 134284035;
      v28 = v13;
      v29 = 2049;
      v30 = v14;
      v31 = 2080;
      v32 = v15;
      v16 = v13;
      v17 = v12;
      _os_log_impl(&dword_261A9A000, v17, OS_LOG_TYPE_DEBUG, "shouldStartStreamingDataToReceiver returned on streaming server connection %{private}p.%{private}p: %s", buf, 0x20u);
    }
  }

  else
  {
    v11 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)setPriorityBoostReplyMessage:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 64), a2);
  }
}

- (id)initWithConnection:(void *)a3 queue:
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v15.receiver = a1;
    v15.super_class = RMConnectionEndpoint;
    v8 = objc_msgSendSuper2(&v15, sel_init);
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 7, a2);
      objc_storeStrong(a1 + 1, a3);
      OUTLINED_FUNCTION_5_0();
      v11 = 3221225472;
      v12 = __49__RMConnectionEndpoint_initWithConnection_queue___block_invoke;
      v13 = &unk_279AF53B0;
      a1 = a1;
      v14 = a1;
      xpc_connection_set_event_handler(v6, handler);
      xpc_connection_set_target_queue(v6, v7);
    }
  }

  return a1;
}

- (void)setMessagingConnection:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 56), a2);
  }
}

- (void)setQueue:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

- (void)handleInterruption
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 16));
    [WeakRetained endpointWasInterrupted:a1];
  }
}

- (void)invalidate
{
  if (a1)
  {
    OUTLINED_FUNCTION_11(a1);
    v2 = *(v1 + 64);
    *(v1 + 64) = 0;

    if (*(v1 + 32))
    {
      [(RMConnectionEndpoint *)v1 stopServingStream];
    }

    if (*(v1 + 40))
    {
      [(RMConnectionEndpoint *)v1 stopReceivingStream];
    }

    if (*(v1 + 56))
    {
      xpc_connection_cancel(*(v1 + 56));
      v3 = *(v1 + 56);
      *(v1 + 56) = 0;
    }

    WeakRetained = objc_loadWeakRetained((v1 + 16));
    [WeakRetained endpointWasInvalidated:v1];
  }
}

- (void)start
{
  if (a1)
  {
    OUTLINED_FUNCTION_11(a1);
    v2 = *(v1 + 56);

    xpc_connection_resume(v2);
  }
}

- (uint64_t)queue
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (void)pause
{
  if (a1)
  {
    OUTLINED_FUNCTION_11(a1);
    v2 = *(v1 + 56);

    xpc_connection_suspend(v2);
  }
}

void __54__RMConnectionEndpoint_startServingStreamWithHandler___block_invoke_80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = *(v4 + 32);
  }

  if (v4)
  {
    v5 = *(a1 + 40);
    v9 = v3;
    v6 = v3;
    xpc_dictionary_set_data(v5, "kRMConnectionMessageDataStreamKey", [v9 bytes], objc_msgSend(v9, "length"));
    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = *(v7 + 32);
    }

    else
    {
      v8 = 0;
    }

    xpc_connection_send_message(v8, *(a1 + 40));
    v3 = v9;
  }
}

- (void)handleStreamXpcError:(void *)a3 withErrorHandler:
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!a1)
  {
    goto LABEL_22;
  }

  if (v5 == MEMORY[0x277D863F0])
  {
    if (onceToken_IPC_Default != -1)
    {
      dispatch_once(&onceToken_IPC_Default, &__block_literal_global_118);
    }

    v10 = logObject_IPC_Default;
    if (os_log_type_enabled(logObject_IPC_Default, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      v11 = "#Warning Streaming connection interrupted";
LABEL_19:
      _os_log_impl(&dword_261A9A000, v10, OS_LOG_TYPE_DEFAULT, v11, v14, 2u);
    }

LABEL_20:
    v9 = -3;
    if (!v6)
    {
      goto LABEL_22;
    }

LABEL_21:
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RMConnectionStreaming" code:v9 userInfo:{0, *v14}];
    v6[2](v6, v12);

    goto LABEL_22;
  }

  if (v5 == MEMORY[0x277D863F8])
  {
    if (onceToken_IPC_Default != -1)
    {
      dispatch_once(&onceToken_IPC_Default, &__block_literal_global_118);
    }

    v10 = logObject_IPC_Default;
    if (os_log_type_enabled(logObject_IPC_Default, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      v11 = "#Warning Streaming connection dropped";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (v5 != MEMORY[0x277D86420])
  {
    if (onceToken_IPC_Default != -1)
    {
      dispatch_once(&onceToken_IPC_Default, &__block_literal_global_118);
    }

    v7 = logObject_IPC_Default;
    if (os_log_type_enabled(logObject_IPC_Default, OS_LOG_TYPE_ERROR))
    {
      *v14 = 138412290;
      *&v14[4] = v5;
      OUTLINED_FUNCTION_12(&dword_261A9A000, v7, v8, "Unknown xpc error received %@", v14);
    }

    v9 = -4;
    if (v6)
    {
      goto LABEL_21;
    }
  }

LABEL_22:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)stopReceivingStream
{
  if (a1)
  {
    OUTLINED_FUNCTION_11(a1);
    if (*(v1 + 40))
    {
      xpc_connection_suspend(*(v1 + 40));
      xpc_connection_set_event_handler(*(v1 + 40), &__block_literal_global_92);
      xpc_connection_resume(*(v1 + 40));
      xpc_connection_cancel(*(v1 + 40));
      v2 = *(v1 + 40);
      *(v1 + 40) = 0;
    }

    if (*(v1 + 48))
    {
      xpc_connection_cancel(*(v1 + 48));
      v3 = *(v1 + 48);
      *(v1 + 48) = 0;
    }
  }
}

- (uint64_t)streamingClientListener
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

- (void)setStreamingClientListener:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 48), a2);
  }
}

- (void)handleStreamXpcReply:(void *)a3 withErrorHandler:
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a1)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = a2;
    v8 = [v6 stringWithUTF8String:{xpc_dictionary_get_string(v7, "kRMConnectionMessageNameKey")}];
    v9 = xpc_dictionary_get_value(v7, "kRMConnectionMessageError");

    if (v9 && MEMORY[0x266717E30](v9) == MEMORY[0x277D86458])
    {
      bytes_ptr = xpc_data_get_bytes_ptr(v9);
      if (bytes_ptr)
      {
        bytes_ptr = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:bytes_ptr length:xpc_data_get_length(v9)];
      }
    }

    else
    {
      bytes_ptr = 0;
    }

    if ([v8 isEqualToString:@"kRMConnectionMessageError"])
    {
      if (bytes_ptr)
      {
        v14 = MEMORY[0x277CCAAC8];
        v15 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
        v21 = 0;
        v16 = [v14 unarchivedObjectOfClasses:v15 fromData:bytes_ptr error:&v21];
        v17 = v21;

        if (v16)
        {
          if (onceToken_IPC_Default != -1)
          {
            dispatch_once(&onceToken_IPC_Default, &__block_literal_global_118);
          }

          v19 = logObject_IPC_Default;
          if (os_log_type_enabled(logObject_IPC_Default, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v23 = v16;
            OUTLINED_FUNCTION_12(&dword_261A9A000, v19, v20, "Error while receiving a stream : %@", buf);
          }

          if (v5)
          {
            v5[2](v5, v16);
          }
        }

        else
        {
          if (onceToken_IPC_Default != -1)
          {
            dispatch_once(&onceToken_IPC_Default, &__block_literal_global_118);
          }

          v18 = logObject_IPC_Default;
          if (os_log_type_enabled(logObject_IPC_Default, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v23 = v17;
            _os_log_impl(&dword_261A9A000, v18, OS_LOG_TYPE_FAULT, "Can't decode the error returned to the streaming request. Unarchiver error: %@", buf, 0xCu);
          }
        }
      }

      else
      {
        if (onceToken_IPC_Default != -1)
        {
          dispatch_once(&onceToken_IPC_Default, &__block_literal_global_118);
        }

        v13 = logObject_IPC_Default;
        if (os_log_type_enabled(logObject_IPC_Default, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v23 = v8;
          _os_log_impl(&dword_261A9A000, v13, OS_LOG_TYPE_FAULT, "No data in error message: %@", buf, 0xCu);
        }
      }

      [(RMConnectionEndpoint *)a1 stopReceivingStream];
    }

    else if ([v8 isEqualToString:@"kRMConnectionMessageSuccess"])
    {
      if (onceToken_IPC_Default != -1)
      {
        dispatch_once(&onceToken_IPC_Default, &__block_literal_global_118);
      }

      v11 = logObject_IPC_Default;
      if (os_log_type_enabled(logObject_IPC_Default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_261A9A000, v11, OS_LOG_TYPE_DEFAULT, "Streaming connection acknowledged from remote endpoint", buf, 2u);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)connectionDelegate
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 2);
    v1 = vars8;
  }

  return WeakRetained;
}

- (BOOL)isValid
{
  if (result)
  {
    OUTLINED_FUNCTION_11(result);
    return *(v1 + 56) != 0;
  }

  return result;
}

- (id)connection
{
  if (a1)
  {
    a1 = a1[7];
    v1 = vars8;
  }

  return a1;
}

- (id)setConnectionDelegate:(id *)result
{
  if (result)
  {
    return objc_storeWeak(result + 2, a2);
  }

  return result;
}

- (id)setDataDelegate:(id *)result
{
  if (result)
  {
    return objc_storeWeak(result + 3, a2);
  }

  return result;
}

- (uint64_t)priorityBoostReplyMessage
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

- (void)handleXpcMessage:(uint64_t)a3 replyBlock:(void *)a4 .cold.2(void *a1, id *a2, uint64_t a3, void *a4)
{
  v8 = MEMORY[0x277CCAAB0];
  *a2 = a1;
  v9 = [v8 archivedDataWithRootObject:a1 requiringSecureCoding:1 error:a2];
  v10 = *a2;

  [(RMConnectionEndpoint *)a3 wrapReplyToXpcMessage:a4 withName:@"kRMConnectionMessageError" data:v9];
}

void __49__RMConnectionEndpoint_initWithConnection_queue___block_invoke_cold_3(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8_0(a1);
  if (v2)
  {
    v3 = *(v2 + 56);
  }

  OUTLINED_FUNCTION_7_0();
  v5 = v4;
  OUTLINED_FUNCTION_2_0();
  _os_log_impl(v6, v7, v8, v9, v10, 0xCu);

  v11 = *MEMORY[0x277D85DE8];
}

void __49__RMConnectionEndpoint_initWithConnection_queue___block_invoke_cold_5(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8_0(a1);
  if (v2)
  {
    v3 = *(v2 + 56);
  }

  OUTLINED_FUNCTION_7_0();
  v5 = v4;
  OUTLINED_FUNCTION_2_0();
  _os_log_impl(v6, v7, v8, v9, v10, 0xCu);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)sendMessage:(xpc_connection_t *)a3 withData:.cold.2(void *a1, void *a2, xpc_connection_t *a3)
{
  v4 = CreateXpcMessage(a1, a2);
  xpc_connection_send_message(*a3, v4);
}

void __51__RMConnectionEndpoint_sendMessage_withData_reply___block_invoke_cold_5(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8_0(a1);
  if (v2)
  {
    v3 = *(v2 + 56);
  }

  OUTLINED_FUNCTION_7_0();
  v5 = v4;
  OUTLINED_FUNCTION_2_0();
  _os_log_impl(v6, v7, v8, v9, v10, 0xCu);

  v11 = *MEMORY[0x277D85DE8];
}

void __54__RMConnectionEndpoint_startServingStreamWithHandler___block_invoke_cold_2(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v4 = OUTLINED_FUNCTION_8_0(a1);
  if (v5)
  {
    v5 = v5[7];
  }

  v6 = *(v4 + 32);
  if (v6)
  {
    v7 = *(v6 + 32);
  }

  v8 = OUTLINED_FUNCTION_6_0(v5);
  v9 = a2;
  OUTLINED_FUNCTION_2_0();
  _os_log_impl(v10, v11, v12, v13, v14, 0x16u);

  v15 = *MEMORY[0x277D85DE8];
}

void __54__RMConnectionEndpoint_startServingStreamWithHandler___block_invoke_cold_4(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v4 = OUTLINED_FUNCTION_8_0(a1);
  if (v5)
  {
    v5 = v5[7];
  }

  v6 = *(v4 + 32);
  if (v6)
  {
    v7 = *(v6 + 32);
  }

  v8 = OUTLINED_FUNCTION_6_0(v5);
  v9 = a2;
  OUTLINED_FUNCTION_2_0();
  _os_log_impl(v10, v11, v12, v13, v14, 0x16u);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)startReceivingStreamOnConnection:(id *)a3 errorHandler:(void *)a4 .cold.2(id *a1, void *a2, id *a3, void *a4)
{
  objc_storeStrong(a1 + 5, a2);
  v7 = a1[5];
  *a3 = MEMORY[0x277D85DD0];
  a3[1] = 3221225472;
  a3[2] = __70__RMConnectionEndpoint_startReceivingStreamOnConnection_errorHandler___block_invoke;
  a3[3] = &unk_279AF5448;
  a3[4] = a1;
  a3[5] = a4;
  xpc_connection_set_event_handler(v7, a3);
  xpc_connection_activate(a1[5]);
}

void __70__RMConnectionEndpoint_startReceivingStreamOnConnection_errorHandler___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 24));
    v5 = *(a1 + 32);
  }

  else
  {
    v5 = 0;
    WeakRetained = 0;
  }

  [WeakRetained endpoint:v5 didReceiveStreamedData:a2];
}

void __70__RMConnectionEndpoint_startReceivingStreamOnConnection_errorHandler___block_invoke_cold_4(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8_0(a1);
  if (v2)
  {
    v3 = *(v2 + 40);
  }

  OUTLINED_FUNCTION_7_0();
  v5 = v4;
  OUTLINED_FUNCTION_2_0();
  _os_log_impl(v6, v7, v8, v9, v10, 0xCu);

  v11 = *MEMORY[0x277D85DE8];
}

@end