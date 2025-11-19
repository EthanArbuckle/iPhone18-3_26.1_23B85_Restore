@interface _RWIRelayClientConnection
- (_RWIRelayClientConnection)initWithDelegate:(id)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)_closeAndNotifyDelegate:(BOOL)a3;
- (void)dealloc;
- (void)dispatchRelayMessage:(id)a3;
- (void)forwardInvocation:(id)a3;
@end

@implementation _RWIRelayClientConnection

- (_RWIRelayClientConnection)initWithDelegate:(id)a3
{
  v5.receiver = self;
  v5.super_class = _RWIRelayClientConnection;
  result = [(_RWIRelayClientConnection *)&v5 init];
  if (result)
  {
    result->_delegate = a3;
  }

  return result;
}

- (void)dealloc
{
  [(_RWIRelayClientConnection *)self close];

  v3.receiver = self;
  v3.super_class = _RWIRelayClientConnection;
  [(_RWIRelayClientConnection *)&v3 dealloc];
}

- (void)_closeAndNotifyDelegate:(BOOL)a3
{
  if (!self->_closed)
  {
    v3 = a3;
    [(_RWIRelayClientConnection *)self closeInternal];
    self->_closed = 1;
    if (v3)
    {
      [(_RWIRelayClientConnectionDelegate *)self->_delegate clientConnectionDidClose:self];
    }

    self->_delegate = 0;
  }
}

- (void)dispatchRelayMessage:(id)a3
{
  v5 = RWIMessageTraceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [_RWIRelayClientConnection dispatchRelayMessage:?];
  }

  traceMessagePayloadIfKeyExists(@"WIRSocketDataKey", a3);
  v6 = [a3 objectForKey:@"__selector"];
  if (v6)
  {
    v7 = v6;
    if ([(NSString *)v6 hasPrefix:@"_rpc_"])
    {
      v8 = NSSelectorFromString(v7);
      [(_RWIRelayClientConnection *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v9 = [objc_msgSend(a3 objectForKey:{@"__argument", "mutableCopy"}];
        [v9 setValue:self forKey:@"RWIServiceConnectionKey"];
        [(_RWIRelayClientConnectionDelegate *)[(_RWIRelayClientConnection *)self delegate] performSelector:v8 withObject:v9];
      }
    }
  }
}

- (void)forwardInvocation:(id)a3
{
  v5 = NSStringFromSelector([a3 selector]);
  v9 = 0;
  [a3 getArgument:&v9 atIndex:2];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = v6;
  [v6 setObject:v5 forKey:@"__selector"];
  if (v9)
  {
    [v6 setObject:v9 forKey:@"__argument"];
  }

  v7 = RWIMessageTraceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [_RWIRelayClientConnection forwardInvocation:?];
  }

  traceMessagePayloadIfKeyExists(@"WIRMessageDataKey", v6);
  [a3 setArgument:&v8 atIndex:2];
  [a3 retainArguments];
  [a3 setTarget:self];
  [a3 setSelector:sel_sendMessage_];
  [a3 invoke];
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v4.receiver = self;
  v4.super_class = _RWIRelayClientConnection;
  result = [(_RWIRelayClientConnection *)&v4 methodSignatureForSelector:a3];
  if (!result)
  {
    return [objc_opt_class() instanceMethodSignatureForSelector:sel_sendMessage_];
  }

  return result;
}

- (void)dispatchRelayMessage:(void *)a1 .cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 tag];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_273C9C000, v1, v2, "IPC client[%{private}@]->relay: %{private}@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)forwardInvocation:(void *)a1 .cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 tag];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_273C9C000, v1, v2, "IPC relay->client[%{private}@]: %{private}@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

@end