@interface RMConnectionClient
- (id)initWithQueue:(void *)queue serviceName:(void *)name messageHandler:;
- (uint64_t)connectionTimerDelay;
- (uint64_t)setConnectionTimerDelay:(uint64_t)result;
- (void)connect;
- (void)endpoint:(id)endpoint didReceiveMessage:(id)message withData:(id)data replyBlock:(id)block;
- (void)endpoint:(id)endpoint didReceiveStreamedData:(id)data;
- (void)endpointWasInterrupted:(id)interrupted;
- (void)endpointWasInvalidated:(id)invalidated;
- (void)handleDaemonStart;
- (void)invalidate;
- (void)replayCache;
- (void)requestStreamingWithMessage:(void *)message data:(void *)data callback:;
- (void)sendCachedMessage:(void *)message withData:;
- (void)sendMessage:(void *)message withData:(void *)data reply:;
- (void)setEndpoint:(uint64_t)endpoint;
- (void)setMessageHandler:(void *)handler;
- (void)setStreamingDataCallback:(void *)callback;
- (void)stopStreaming;
- (void)stopStreamingInternal;
@end

@implementation RMConnectionClient

- (void)requestStreamingWithMessage:(void *)message data:(void *)data callback:
{
  v7 = a2;
  messageCopy = message;
  dataCopy = data;
  if (!self)
  {
    goto LABEL_4;
  }

  dispatch_assert_queue_V2(*(self + 32));
  if (!*(self + 40))
  {
    objc_setProperty_nonatomic_copy(self, v10, dataCopy, 40);
    v11 = *(self + 16);
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __64__RMConnectionClient_requestStreamingWithMessage_data_callback___block_invoke;
    v20 = &unk_279AF5480;
    selfCopy = self;
    v12 = dataCopy;
    v22 = v12;
    [(RMConnectionEndpoint *)v11 requestStreamWithMessage:v7 data:messageCopy errorHandler:&v17];
    v13 = *(self + 56);
    v14 = [[RMConnectionClientCachedMessage alloc] initWithName:v7 data:messageCopy streamingCallback:v12];
    [v13 addObject:{v14, v17, v18, v19, v20, selfCopy}];

LABEL_4:
    return;
  }

  v15 = [RMConnectionClient requestStreamingWithMessage:data:callback:];
  __64__RMConnectionClient_requestStreamingWithMessage_data_callback___block_invoke(v15, v16);
}

void __64__RMConnectionClient_requestStreamingWithMessage_data_callback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [(RMConnectionClient *)*(a1 + 32) stopStreamingInternal];
  if ([v3 code] != -3 || (__64__RMConnectionClient_requestStreamingWithMessage_data_callback___block_invoke_cold_1(a1 + 32) & 1) != 0)
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)endpointWasInterrupted:(id)interrupted
{
  interruptedCopy = interrupted;
  if (!self)
  {
    goto LABEL_8;
  }

  dispatch_assert_queue_V2(self->_queue);
  for (i = self->_endpoint; i != interruptedCopy; i = 0)
  {
    [RMConnectionClient endpointWasInterrupted:];
LABEL_8:
    [RMConnectionClient endpointWasInterrupted:];
  }

  [(RMConnectionClient *)self stopStreamingInternal];
  [(RMConnectionClient *)self replayCache];
}

- (void)endpointWasInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  if (self)
  {
    dispatch_assert_queue_V2(self->_queue);
    endpoint = self->_endpoint;
  }

  else
  {
    [RMConnectionClient endpointWasInterrupted:];
    endpoint = 0;
  }

  if (endpoint != invalidatedCopy)
  {
    [RMConnectionClient endpointWasInvalidated:];
LABEL_13:
    _CLLogObjectForCategory_ConnectionClient_Default_cold_1();
    goto LABEL_9;
  }

  [(RMConnectionClient *)self stopStreamingInternal];
  [(RMConnectionEndpoint *)invalidatedCopy setDataDelegate:?];
  [(RMConnectionEndpoint *)invalidatedCopy setConnectionDelegate:?];
  [(RMConnectionClient *)self setEndpoint:?];
  if (!self || !self->_valid || self->_connectionTimer)
  {
    goto LABEL_7;
  }

  if (onceToken_ConnectionClient_Default != -1)
  {
    goto LABEL_13;
  }

LABEL_9:
  v6 = logObject_ConnectionClient_Default;
  if (os_log_type_enabled(logObject_ConnectionClient_Default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_261A9A000, v6, OS_LOG_TYPE_DEBUG, "Connection invalidated, setting up the reconnection timer", buf, 2u);
  }

  v7 = self->_queue;
  v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v7);
  [(RMConnectionEndpoint *)self setPriorityBoostReplyMessage:v8];

  self->_connectionTimerDelay = 4;
  v9 = self->_connectionTimer;
  v10 = dispatch_time(0, 4000000000);
  dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0);

  connectionTimer = self->_connectionTimer;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __45__RMConnectionClient_endpointWasInvalidated___block_invoke;
  handler[3] = &unk_279AF5258;
  handler[4] = self;
  dispatch_source_set_event_handler(connectionTimer, handler);
  dispatch_resume(self->_connectionTimer);
LABEL_7:
}

- (id)initWithQueue:(void *)queue serviceName:(void *)name messageHandler:
{
  v8 = a2;
  queueCopy = queue;
  nameCopy = name;
  if (self)
  {
    v16.receiver = self;
    v16.super_class = RMConnectionClient;
    v11 = objc_msgSendSuper2(&v16, sel_init);
    self = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 4, a2);
      objc_storeStrong(self + 3, queue);
      objc_setProperty_nonatomic_copy(self, v12, nameCopy, 48);
      v13 = objc_opt_new();
      v14 = self[7];
      self[7] = v13;

      *(self + 8) = 1;
    }
  }

  return self;
}

- (void)setMessageHandler:(void *)handler
{
  if (handler)
  {
    objc_setProperty_nonatomic_copy(handler, newValue, newValue, 48);
  }
}

- (void)replayCache
{
  v31 = *MEMORY[0x277D85DE8];
  if (self)
  {
    OUTLINED_FUNCTION_5_1(self);
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v2 = *(v1 + 56);
    v3 = [v2 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (!v3)
    {
      v5 = v2;
LABEL_31:

      goto LABEL_32;
    }

    v4 = v3;
    v5 = 0;
    v6 = *v25;
    do
    {
      v7 = 0;
      do
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v24 + 1) + 8 * v7);
        if (v8 && *(v8 + 24))
        {
          v9 = v8;
          v10 = v5;
          v5 = v9;
        }

        else
        {
          if (onceToken_ConnectionClient_Default != -1)
          {
            dispatch_once(&onceToken_ConnectionClient_Default, &__block_literal_global_3);
          }

          v11 = logObject_ConnectionClient_Default;
          if (os_log_type_enabled(logObject_ConnectionClient_Default, OS_LOG_TYPE_DEFAULT))
          {
            if (v8)
            {
              v12 = *(v8 + 8);
            }

            else
            {
              v12 = 0;
            }

            *buf = 138412290;
            v29 = v12;
            v13 = v11;
            _os_log_impl(&dword_261A9A000, v13, OS_LOG_TYPE_DEFAULT, "Sending cached message %@", buf, 0xCu);
          }

          v14 = *(v1 + 16);
          if (v8)
          {
            v15 = *(v8 + 8);
            v16 = *(v8 + 16);
          }

          else
          {
            v15 = 0;
            v16 = 0;
          }

          v10 = v14;
          [(RMConnectionEndpoint *)v10 sendMessage:v15 withData:v16];
        }

        ++v7;
      }

      while (v4 != v7);
      v17 = [v2 countByEnumeratingWithState:&v24 objects:v30 count:16];
      v4 = v17;
    }

    while (v17);

    if (v5)
    {
      if (onceToken_ConnectionClient_Default != -1)
      {
        dispatch_once(&onceToken_ConnectionClient_Default, &__block_literal_global_3);
      }

      v18 = logObject_ConnectionClient_Default;
      if (os_log_type_enabled(logObject_ConnectionClient_Default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_261A9A000, v18, OS_LOG_TYPE_DEFAULT, "Restoring the streaming channel", buf, 2u);
      }

      v19 = v5[1];
      v20 = v5[3];
      v21 = v5[2];
      v22 = v19;
      [(RMConnectionClient *)v1 requestStreamingWithMessage:v22 data:v21 callback:v20];

      goto LABEL_31;
    }
  }

LABEL_32:
  v23 = *MEMORY[0x277D85DE8];
}

- (void)connect
{
  if (self)
  {
    OUTLINED_FUNCTION_5_1(self);
    if (*(v1 + 8))
    {
      if (*(v1 + 16))
      {
        [(RMConnectionEndpoint *)*(v1 + 16) setDataDelegate:?];
        [(RMConnectionEndpoint *)*(v1 + 16) setConnectionDelegate:?];
        [(RMConnectionEndpoint *)*(v1 + 16) invalidate];
        v2 = *(v1 + 16);
        *(v1 + 16) = 0;
      }

      v3 = *(v1 + 24);
      mach_service = xpc_connection_create_mach_service([v3 UTF8String], *(v1 + 32), 0);

      v4 = [RMConnectionEndpoint alloc];
      v5 = *(v1 + 32);
      v6 = [(RMConnectionEndpoint *)&v4->super.isa initWithConnection:v5 queue:?];
      v7 = *(v1 + 16);
      *(v1 + 16) = v6;

      [(RMConnectionEndpoint *)*(v1 + 16) setConnectionDelegate:v1];
      [(RMConnectionEndpoint *)*(v1 + 16) setDataDelegate:v1];
      [(RMConnectionEndpoint *)*(v1 + 16) start];
    }

    else
    {
      if (onceToken_ConnectionClient_Default != -1)
      {
        dispatch_once(&onceToken_ConnectionClient_Default, &__block_literal_global_3);
      }

      v8 = logObject_ConnectionClient_Default;
      if (os_log_type_enabled(logObject_ConnectionClient_Default, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_261A9A000, v8, OS_LOG_TYPE_FAULT, "Trying to connect after invalidation", buf, 2u);
      }
    }
  }
}

- (void)setEndpoint:(uint64_t)endpoint
{
  if (endpoint)
  {
    objc_storeStrong((endpoint + 16), a2);
  }
}

- (void)sendMessage:(void *)message withData:(void *)data reply:
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a2;
  messageCopy = message;
  dataCopy = data;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 32));
    v10 = *(self + 16);
    if (dataCopy)
    {
      [(RMConnectionEndpoint *)v10 sendMessage:v7 withData:messageCopy reply:dataCopy];
    }

    else
    {
      [(RMConnectionEndpoint *)v10 sendMessage:v7 withData:messageCopy];
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = *(self + 56);
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v23;
      do
      {
        v16 = 0;
        v17 = v14;
        v14 += v13;
        do
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v18 = *(*(&v22 + 1) + 8 * v16);
          if (v18)
          {
            v19 = *(v18 + 8);
          }

          else
          {
            v19 = 0;
          }

          if ([v19 isEqualToString:{v7, v22}])
          {

            [*(self + 56) removeObjectAtIndex:v17];
            goto LABEL_19;
          }

          ++v17;
          ++v16;
        }

        while (v13 != v16);
        v20 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
        v13 = v20;
      }

      while (v20);
    }
  }

LABEL_19:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)sendCachedMessage:(void *)message withData:
{
  if (self)
  {
    messageCopy = message;
    v6 = a2;
    [(RMConnectionClient *)self sendMessage:v6 withData:messageCopy reply:0];
    v7 = *(self + 56);
    v8 = [[RMConnectionClientCachedMessage alloc] initWithName:v6 data:messageCopy];

    [v7 addObject:v8];
  }
}

- (void)setStreamingDataCallback:(void *)callback
{
  if (callback)
  {
    objc_setProperty_nonatomic_copy(callback, newValue, newValue, 40);
  }
}

- (void)stopStreamingInternal
{
  if (self)
  {
    OUTLINED_FUNCTION_5_1(self);
    if (onceToken_ConnectionClient_Default != -1)
    {
      dispatch_once(&onceToken_ConnectionClient_Default, &__block_literal_global_3);
    }

    v2 = logObject_ConnectionClient_Default;
    if (os_log_type_enabled(logObject_ConnectionClient_Default, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_impl(&dword_261A9A000, v2, OS_LOG_TYPE_DEBUG, "Stopping the streaming session", v4, 2u);
    }

    [(RMConnectionEndpoint *)v1[2] stopReceivingStream];
    objc_setProperty_nonatomic_copy(v1, v3, 0, 40);
  }
}

- (void)stopStreaming
{
  v16 = *MEMORY[0x277D85DE8];
  if (self)
  {
    [(RMConnectionClient *)self stopStreamingInternal];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v2 = *(self + 56);
    v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      v6 = *v12;
      while (2)
      {
        v7 = 0;
        v8 = v5;
        v5 += v4;
        do
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v9 = *(*(&v11 + 1) + 8 * v7);
          if (v9)
          {
            v9 = *(v9 + 24);
          }

          if (v9)
          {

            [*(self + 56) removeObjectAtIndex:{v8, v11}];
            goto LABEL_14;
          }

          ++v8;
          ++v7;
        }

        while (v4 != v7);
        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_14:
  v10 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  if (self)
  {
    OUTLINED_FUNCTION_5_1(self);
    *(v1 + 8) = 0;
    if (*(v1 + 64))
    {
      dispatch_source_cancel(*(v1 + 64));
      v2 = *(v1 + 64);
      *(v1 + 64) = 0;
    }

    [*(v1 + 56) removeAllObjects];
    objc_setProperty_nonatomic_copy(v1, v3, 0, 48);
    [(RMConnectionClient *)v1 stopStreaming];
    [(RMConnectionEndpoint *)*(v1 + 16) invalidate];
    v4 = *(v1 + 16);
    *(v1 + 16) = 0;
  }
}

- (void)handleDaemonStart
{
  if (self)
  {
    if (onceToken_ConnectionClient_Default != -1)
    {
      dispatch_once(&onceToken_ConnectionClient_Default, &__block_literal_global_3);
    }

    v2 = logObject_ConnectionClient_Default;
    if (os_log_type_enabled(logObject_ConnectionClient_Default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_261A9A000, v2, OS_LOG_TYPE_DEBUG, "Reconnection attempt", buf, 2u);
    }

    if (!*(self + 16))
    {
      [(RMConnectionClient *)self connect];
      [(RMConnectionClient *)self replayCache];
      connection = [(RMConnectionEndpoint *)*(self + 16) connection];
      barrier[0] = MEMORY[0x277D85DD0];
      barrier[1] = 3221225472;
      barrier[2] = __39__RMConnectionClient_handleDaemonStart__block_invoke;
      barrier[3] = &unk_279AF5258;
      barrier[4] = self;
      xpc_connection_send_barrier(connection, barrier);
    }
  }
}

void __39__RMConnectionClient_handleDaemonStart__block_invoke(uint64_t a1)
{
  isa = *(a1 + 32);
  if (isa)
  {
    isa = isa[4].isa;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__RMConnectionClient_handleDaemonStart__block_invoke_2;
  block[3] = &unk_279AF5258;
  block[4] = *(a1 + 32);
  dispatch_async(isa, block);
}

void __39__RMConnectionClient_handleDaemonStart__block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = *(v2 + 16);
  }

  v3 = *(a1 + 32);
  if (v2)
  {
    v16 = *MEMORY[0x277D85DE8];

    [(RMConnectionEndpoint *)v3 setPriorityBoostReplyMessage:?];
  }

  else
  {
    if (v3 && *(v3 + 64))
    {
      v4 = *(a1 + 32);
      if (v4)
      {
        *(v4 + 72) *= 2;
        v5 = *(a1 + 32);
        if (v5)
        {
          if (*(v5 + 72) >= 0x81uLL)
          {
            *(v5 + 72) = 128;
          }
        }
      }

      if (onceToken_ConnectionClient_Default != -1)
      {
        dispatch_once(&onceToken_ConnectionClient_Default, &__block_literal_global_3);
      }

      v6 = logObject_ConnectionClient_Default;
      if (os_log_type_enabled(logObject_ConnectionClient_Default, OS_LOG_TYPE_DEBUG))
      {
        v8 = *(a1 + 32);
        if (v8)
        {
          v8 = *(v8 + 72);
        }

        v17 = 134217984;
        v18 = v8;
        _os_log_impl(&dword_261A9A000, v6, OS_LOG_TYPE_DEBUG, "Connection still invalid, next reconnection attempt will be in %lu seconds", &v17, 0xCu);
      }

      v9 = *(a1 + 32);
      if (v9)
      {
        objc_setProperty_nonatomic_copy(v9, v7, 0, 40);
        v10 = *(a1 + 32);
        if (v10)
        {
          v10 = v10[8];
        }
      }

      else
      {
        v10 = 0;
      }

      v11 = *(a1 + 32);
      if (v11)
      {
        v12 = 1000000000 * *(v11 + 72);
      }

      else
      {
        v12 = 0;
      }

      v13 = v10;
      v14 = dispatch_time(0, v12);
      dispatch_source_set_timer(v13, v14, 0xFFFFFFFFFFFFFFFFLL, 0);
    }

    v15 = *MEMORY[0x277D85DE8];
  }
}

- (uint64_t)connectionTimerDelay
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

- (uint64_t)setConnectionTimerDelay:(uint64_t)result
{
  if (result)
  {
    *(result + 72) = a2;
  }

  return result;
}

- (void)endpoint:(id)endpoint didReceiveStreamedData:(id)data
{
  dataCopy = data;
  v6 = dataCopy;
  if (self && self->_streamingDataCallback)
  {
    v7 = dataCopy;
    dataCopy = (*(self->_streamingDataCallback + 2))();
    v6 = v7;
  }

  MEMORY[0x2821F96F8](dataCopy, v6);
}

- (void)endpoint:(id)endpoint didReceiveMessage:(id)message withData:(id)data replyBlock:(id)block
{
  messageCopy = message;
  dataCopy = data;
  blockCopy = block;
  if (self && self->_messageHandler)
  {
    (*(self->_messageHandler + 2))(self->_messageHandler, messageCopy, dataCopy, blockCopy);
  }
}

- (uint64_t)requestStreamingWithMessage:data:callback:.cold.1()
{
  v27 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_ConnectionClient_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_261A9A000, v1, v2, "{msg%{public}.0s:Stream requested while one is already present, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v22, v23, v24, v25, v26);
  }

  v7 = _CLLogObjectForCategory_ConnectionClient_Default();
  if (os_signpost_enabled(v7))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_261A9A000, v8, v9, v10, "Stream requested while one is already present", "{msg%{public}.0s:Stream requested while one is already present, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v22, v23, v24, v25, v26);
  }

  v13 = _CLLogObjectForCategory_ConnectionClient_Default();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3(&dword_261A9A000, v14, v15, "{msg%{public}.0s:Stream requested while one is already present, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v18, v19, v22, v23, v24, v25, v26);
  }

  v20 = abort_report_np();
  return __64__RMConnectionClient_requestStreamingWithMessage_data_callback___block_invoke_cold_1(v20);
}

uint64_t __64__RMConnectionClient_requestStreamingWithMessage_data_callback___block_invoke_cold_1(uint64_t a1)
{
  if (*a1)
  {
    v1 = *(*a1 + 16);
  }

  else
  {
    v1 = 0;
  }

  if (![(RMConnectionEndpoint *)v1 isValid])
  {
    return 1;
  }

  if (onceToken_ConnectionClient_Default != -1)
  {
    dispatch_once(&onceToken_ConnectionClient_Default, &__block_literal_global_3);
  }

  v2 = logObject_ConnectionClient_Default;
  v3 = os_log_type_enabled(logObject_ConnectionClient_Default, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v3)
  {
    *v5 = 0;
    _os_log_impl(&dword_261A9A000, v2, OS_LOG_TYPE_DEFAULT, "#Warning The streaming connection has been interrupted", v5, 2u);
    return 0;
  }

  return result;
}

- (uint64_t)endpointWasInterrupted:.cold.2()
{
  v27 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_ConnectionClient_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_261A9A000, v1, v2, "{msg%{public}.0s:Received interruption event for an unmanaged endpoint, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v22, v23, v24, v25, v26);
  }

  v7 = _CLLogObjectForCategory_ConnectionClient_Default();
  if (os_signpost_enabled(v7))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_261A9A000, v8, v9, v10, "Received interruption event for an unmanaged endpoint", "{msg%{public}.0s:Received interruption event for an unmanaged endpoint, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v22, v23, v24, v25, v26);
  }

  v13 = _CLLogObjectForCategory_ConnectionClient_Default();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3(&dword_261A9A000, v14, v15, "{msg%{public}.0s:Received interruption event for an unmanaged endpoint, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v18, v19, v22, v23, v24, v25, v26);
  }

  v20 = abort_report_np();
  return [RMConnectionClient endpointWasInvalidated:v20];
}

- (uint64_t)endpointWasInvalidated:.cold.2()
{
  v27 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_ConnectionClient_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_261A9A000, v1, v2, "{msg%{public}.0s:Received invalidation event for an unmanaged endpoint, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v22, v23, v24, v25, v26);
  }

  v7 = _CLLogObjectForCategory_ConnectionClient_Default();
  if (os_signpost_enabled(v7))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_261A9A000, v8, v9, v10, "Received invalidation event for an unmanaged endpoint", "{msg%{public}.0s:Received invalidation event for an unmanaged endpoint, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v22, v23, v24, v25, v26);
  }

  v13 = _CLLogObjectForCategory_ConnectionClient_Default();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3(&dword_261A9A000, v14, v15, "{msg%{public}.0s:Received invalidation event for an unmanaged endpoint, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v18, v19, v22, v23, v24, v25, v26);
  }

  v20 = abort_report_np();
  return [RMInternalServiceClient parseSpiErrorReply:v20 forMessage:?];
}

@end