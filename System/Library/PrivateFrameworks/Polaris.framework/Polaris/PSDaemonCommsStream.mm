@interface PSDaemonCommsStream
- (BOOL)isAck:(id *)ack;
- (BOOL)sendMessageWithType:(int)type;
- (PSDaemonCommsStream)initWithKey:(id)key;
- (uint64_t)start;
- (uint64_t)stop;
- (void)dealloc;
- (void)start;
- (void)stop;
@end

@implementation PSDaemonCommsStream

- (PSDaemonCommsStream)initWithKey:(id)key
{
  keyCopy = key;
  v12.receiver = self;
  v12.super_class = PSDaemonCommsStream;
  v6 = [(PSDaemonCommsStream *)&v12 init];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_key, key), v7->_comms = ps_create_comms_client(), ![(PSDaemonCommsStream *)v7 sendMessageWithType:0]))
  {
    v9 = [(PSDaemonCommsStream *)&v11 initWithKey:?];
    [(PSDaemonCommsStream *)v9 start];
  }

  else
  {

    return v7;
  }

  return result;
}

- (void)start
{
  if (![(PSDaemonCommsStream *)self sendMessageWithType:2])
  {
    start = [(PSDaemonCommsStream *)&v5 start];
    [(PSDaemonCommsStream *)start stop];
  }
}

- (void)stop
{
  if (![(PSDaemonCommsStream *)self sendMessageWithType:3])
  {
    [(PSDaemonCommsStream *)&v6 stop];
    goto LABEL_5;
  }

  if (![(PSDaemonCommsStream *)self sendMessageWithType:1])
  {
LABEL_5:
    stop = [(PSDaemonCommsStream *)&v6 stop];
    [(PSDaemonCommsStream *)stop isAck:v4, v5];
  }
}

- (BOOL)isAck:(id *)ack
{
  if (MEMORY[0x25F8C8EC0](ack, a2))
  {
    var5 = ack->var0.var0.var2.var1.var5;
    if (var5 != 1)
    {
      v5 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_ERROR, "Could not create shared source node.", v10, 2u);
      }
    }

    return var5 == 1;
  }

  else
  {
    v7 = [PSDaemonCommsStream isAck:?];
    return [(PSDaemonCommsStream *)v7 sendMessageWithType:v8, v9];
  }
}

- (BOOL)sendMessageWithType:(int)type
{
  v10 = *MEMORY[0x277D85DE8];
  bzero(v8, 0x430uLL);
  [(NSString *)self->_key cStringUsingEncoding:4, 0, 0, 0, 0, 0, 0, 0];
  __strlcpy_chk();
  typeCopy = type;
  MEMORY[0x25F8C8EE0](self->_comms, v8, 1072, &v7, 56, 2);
  result = [(PSDaemonCommsStream *)self isAck:&v7];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    key = self->_key;
    *buf = 138412290;
    v9 = key;
    _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_DEBUG, "PSDaemonCommsStream dealloc for key (%@)", buf, 0xCu);
  }

  if (self->_comms)
  {
    ps_delete_comms_client();
  }

  v5 = self->_key;
  self->_key = 0;

  v7.receiver = self;
  v7.super_class = PSDaemonCommsStream;
  [(PSDaemonCommsStream *)&v7 dealloc];
  v6 = *MEMORY[0x277D85DE8];
}

- (uint64_t)initWithKey:(char *)a1 .cold.1(char **a1, id *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Could not create stream for key %s. Check polarisd logs for more info.", [*a2 UTF8String]);
  v4 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v4))
  {
    [*a2 UTF8String];
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Could not create stream for key %s. Check polarisd logs for more info.", v7, v8, v9, v10, v20, v21, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v11 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17, v20, v21, buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return [(PSDaemonCommsStream *)v18 start];
}

- (uint64_t)start
{
  v5 = OUTLINED_FUNCTION_3_2(self, a2, *MEMORY[0x277D85DE8]);
  asprintf(self, "Could not start source node for key (%s). Check polarisd logs for more info", v5);
  v6 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v6))
  {
    [*(a2 + 8) UTF8String];
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Could not start source node for key (%s). Check polarisd logs for more info", v9, v10, v11, v12, v22, v23, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [(PSDaemonCommsStream *)v20 stop];
}

- (uint64_t)stop
{
  v5 = OUTLINED_FUNCTION_3_2(self, a2, *MEMORY[0x277D85DE8]);
  asprintf(self, "Could not close source node for key (%s). Check polarisd logs for more info", v5);
  v6 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v6))
  {
    [*(a2 + 8) UTF8String];
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Could not close source node for key (%s). Check polarisd logs for more info", v9, v10, v11, v12, v22, v23, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSDaemonCommsStream isAck:v20];
}

- (uint64_t)isAck:(char *)a1 .cold.1(char **a1)
{
  v12 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Invalid message received. Received a complex message when expecting a simple message");
  v2 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    v8 = 136315394;
    v9 = "[PSDaemonCommsStream isAck:]";
    v10 = 1024;
    v11 = 56;
    _os_log_impl(&dword_25EA3A000, v1, OS_LOG_TYPE_FAULT, "%s:%d Invalid message received. Received a complex message when expecting a simple message", &v8, 0x12u);
  }

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v4 = v3;
    v5 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v5))
    {
      v8 = 136315394;
      v9 = "[PSDaemonCommsStream isAck:]";
      v10 = 1024;
      v11 = v4;
      _os_log_impl(&dword_25EA3A000, v1, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v8, 0x12u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v6 = OUTLINED_FUNCTION_0();
  return [PSHIDStream initWithKey:v6 rate:? queue:? writerInstance:? execSessionName:?];
}

@end